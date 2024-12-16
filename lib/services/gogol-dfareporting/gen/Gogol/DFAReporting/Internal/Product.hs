{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DFAReporting.Internal.Product
  (

    -- * Account
    Account (..),
    newAccount,

    -- * AccountActiveAdSummary
    AccountActiveAdSummary (..),
    newAccountActiveAdSummary,

    -- * AccountPermission
    AccountPermission (..),
    newAccountPermission,

    -- * AccountPermissionGroup
    AccountPermissionGroup (..),
    newAccountPermissionGroup,

    -- * AccountPermissionGroupsListResponse
    AccountPermissionGroupsListResponse (..),
    newAccountPermissionGroupsListResponse,

    -- * AccountPermissionsListResponse
    AccountPermissionsListResponse (..),
    newAccountPermissionsListResponse,

    -- * AccountUserProfile
    AccountUserProfile (..),
    newAccountUserProfile,

    -- * AccountUserProfilesListResponse
    AccountUserProfilesListResponse (..),
    newAccountUserProfilesListResponse,

    -- * AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- * Activities
    Activities (..),
    newActivities,

    -- * Ad
    Ad (..),
    newAd,

    -- * AdBlockingConfiguration
    AdBlockingConfiguration (..),
    newAdBlockingConfiguration,

    -- * AdSlot
    AdSlot (..),
    newAdSlot,

    -- * AdsListResponse
    AdsListResponse (..),
    newAdsListResponse,

    -- * Advertiser
    Advertiser (..),
    newAdvertiser,

    -- * AdvertiserGroup
    AdvertiserGroup (..),
    newAdvertiserGroup,

    -- * AdvertiserGroupsListResponse
    AdvertiserGroupsListResponse (..),
    newAdvertiserGroupsListResponse,

    -- * AdvertiserInvoicesListResponse
    AdvertiserInvoicesListResponse (..),
    newAdvertiserInvoicesListResponse,

    -- * AdvertiserLandingPagesListResponse
    AdvertiserLandingPagesListResponse (..),
    newAdvertiserLandingPagesListResponse,

    -- * AdvertisersListResponse
    AdvertisersListResponse (..),
    newAdvertisersListResponse,

    -- * AudienceSegment
    AudienceSegment (..),
    newAudienceSegment,

    -- * AudienceSegmentGroup
    AudienceSegmentGroup (..),
    newAudienceSegmentGroup,

    -- * BillingAssignment
    BillingAssignment (..),
    newBillingAssignment,

    -- * BillingAssignmentsListResponse
    BillingAssignmentsListResponse (..),
    newBillingAssignmentsListResponse,

    -- * BillingProfile
    BillingProfile (..),
    newBillingProfile,

    -- * BillingProfilesListResponse
    BillingProfilesListResponse (..),
    newBillingProfilesListResponse,

    -- * BillingRate
    BillingRate (..),
    newBillingRate,

    -- * BillingRateTieredRate
    BillingRateTieredRate (..),
    newBillingRateTieredRate,

    -- * BillingRatesListResponse
    BillingRatesListResponse (..),
    newBillingRatesListResponse,

    -- * Browser
    Browser (..),
    newBrowser,

    -- * BrowsersListResponse
    BrowsersListResponse (..),
    newBrowsersListResponse,

    -- * Campaign
    Campaign (..),
    newCampaign,

    -- * CampaignCreativeAssociation
    CampaignCreativeAssociation (..),
    newCampaignCreativeAssociation,

    -- * CampaignCreativeAssociationsListResponse
    CampaignCreativeAssociationsListResponse (..),
    newCampaignCreativeAssociationsListResponse,

    -- * CampaignSummary
    CampaignSummary (..),
    newCampaignSummary,

    -- * CampaignsListResponse
    CampaignsListResponse (..),
    newCampaignsListResponse,

    -- * CartData
    CartData (..),
    newCartData,

    -- * CartDataItem
    CartDataItem (..),
    newCartDataItem,

    -- * ChangeLog
    ChangeLog (..),
    newChangeLog,

    -- * ChangeLogsListResponse
    ChangeLogsListResponse (..),
    newChangeLogsListResponse,

    -- * CitiesListResponse
    CitiesListResponse (..),
    newCitiesListResponse,

    -- * City
    City (..),
    newCity,

    -- * ClickTag
    ClickTag (..),
    newClickTag,

    -- * ClickThroughUrl
    ClickThroughUrl (..),
    newClickThroughUrl,

    -- * ClickThroughUrlSuffixProperties
    ClickThroughUrlSuffixProperties (..),
    newClickThroughUrlSuffixProperties,

    -- * CompanionClickThroughOverride
    CompanionClickThroughOverride (..),
    newCompanionClickThroughOverride,

    -- * CompanionSetting
    CompanionSetting (..),
    newCompanionSetting,

    -- * CompatibleFields
    CompatibleFields (..),
    newCompatibleFields,

    -- * ConnectionType
    ConnectionType (..),
    newConnectionType,

    -- * ConnectionTypesListResponse
    ConnectionTypesListResponse (..),
    newConnectionTypesListResponse,

    -- * ContentCategoriesListResponse
    ContentCategoriesListResponse (..),
    newContentCategoriesListResponse,

    -- * ContentCategory
    ContentCategory (..),
    newContentCategory,

    -- * Conversion
    Conversion (..),
    newConversion,

    -- * ConversionError
    ConversionError (..),
    newConversionError,

    -- * ConversionStatus
    ConversionStatus (..),
    newConversionStatus,

    -- * ConversionsBatchInsertRequest
    ConversionsBatchInsertRequest (..),
    newConversionsBatchInsertRequest,

    -- * ConversionsBatchInsertResponse
    ConversionsBatchInsertResponse (..),
    newConversionsBatchInsertResponse,

    -- * ConversionsBatchUpdateRequest
    ConversionsBatchUpdateRequest (..),
    newConversionsBatchUpdateRequest,

    -- * ConversionsBatchUpdateResponse
    ConversionsBatchUpdateResponse (..),
    newConversionsBatchUpdateResponse,

    -- * CountriesListResponse
    CountriesListResponse (..),
    newCountriesListResponse,

    -- * Country
    Country (..),
    newCountry,

    -- * Creative
    Creative (..),
    newCreative,

    -- * CreativeAsset
    CreativeAsset (..),
    newCreativeAsset,

    -- * CreativeAssetId
    CreativeAssetId (..),
    newCreativeAssetId,

    -- * CreativeAssetMetadata
    CreativeAssetMetadata (..),
    newCreativeAssetMetadata,

    -- * CreativeAssetSelection
    CreativeAssetSelection (..),
    newCreativeAssetSelection,

    -- * CreativeAssignment
    CreativeAssignment (..),
    newCreativeAssignment,

    -- * CreativeClickThroughUrl
    CreativeClickThroughUrl (..),
    newCreativeClickThroughUrl,

    -- * CreativeCustomEvent
    CreativeCustomEvent (..),
    newCreativeCustomEvent,

    -- * CreativeField
    CreativeField (..),
    newCreativeField,

    -- * CreativeFieldAssignment
    CreativeFieldAssignment (..),
    newCreativeFieldAssignment,

    -- * CreativeFieldValue
    CreativeFieldValue (..),
    newCreativeFieldValue,

    -- * CreativeFieldValuesListResponse
    CreativeFieldValuesListResponse (..),
    newCreativeFieldValuesListResponse,

    -- * CreativeFieldsListResponse
    CreativeFieldsListResponse (..),
    newCreativeFieldsListResponse,

    -- * CreativeGroup
    CreativeGroup (..),
    newCreativeGroup,

    -- * CreativeGroupAssignment
    CreativeGroupAssignment (..),
    newCreativeGroupAssignment,

    -- * CreativeGroupsListResponse
    CreativeGroupsListResponse (..),
    newCreativeGroupsListResponse,

    -- * CreativeOptimizationConfiguration
    CreativeOptimizationConfiguration (..),
    newCreativeOptimizationConfiguration,

    -- * CreativeRotation
    CreativeRotation (..),
    newCreativeRotation,

    -- * CreativesListResponse
    CreativesListResponse (..),
    newCreativesListResponse,

    -- * CrossDimensionReachReportCompatibleFields
    CrossDimensionReachReportCompatibleFields (..),
    newCrossDimensionReachReportCompatibleFields,

    -- * CrossMediaReachReportCompatibleFields
    CrossMediaReachReportCompatibleFields (..),
    newCrossMediaReachReportCompatibleFields,

    -- * CustomFloodlightVariable
    CustomFloodlightVariable (..),
    newCustomFloodlightVariable,

    -- * CustomRichMediaEvents
    CustomRichMediaEvents (..),
    newCustomRichMediaEvents,

    -- * CustomViewabilityMetric
    CustomViewabilityMetric (..),
    newCustomViewabilityMetric,

    -- * CustomViewabilityMetricConfiguration
    CustomViewabilityMetricConfiguration (..),
    newCustomViewabilityMetricConfiguration,

    -- * DateRange
    DateRange (..),
    newDateRange,

    -- * DayPartTargeting
    DayPartTargeting (..),
    newDayPartTargeting,

    -- * DeepLink
    DeepLink (..),
    newDeepLink,

    -- * DefaultClickThroughEventTagProperties
    DefaultClickThroughEventTagProperties (..),
    newDefaultClickThroughEventTagProperties,

    -- * DeliverySchedule
    DeliverySchedule (..),
    newDeliverySchedule,

    -- * DfpSettings
    DfpSettings (..),
    newDfpSettings,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- * DimensionValue
    DimensionValue (..),
    newDimensionValue,

    -- * DimensionValueList
    DimensionValueList (..),
    newDimensionValueList,

    -- * DimensionValueRequest
    DimensionValueRequest (..),
    newDimensionValueRequest,

    -- * DirectorySite
    DirectorySite (..),
    newDirectorySite,

    -- * DirectorySiteSettings
    DirectorySiteSettings (..),
    newDirectorySiteSettings,

    -- * DirectorySitesListResponse
    DirectorySitesListResponse (..),
    newDirectorySitesListResponse,

    -- * DynamicTargetingKey
    DynamicTargetingKey (..),
    newDynamicTargetingKey,

    -- * DynamicTargetingKeysListResponse
    DynamicTargetingKeysListResponse (..),
    newDynamicTargetingKeysListResponse,

    -- * EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- * EventTag
    EventTag (..),
    newEventTag,

    -- * EventTagOverride
    EventTagOverride (..),
    newEventTagOverride,

    -- * EventTagsListResponse
    EventTagsListResponse (..),
    newEventTagsListResponse,

    -- * File
    File (..),
    newFile,

    -- * File_Urls
    File_Urls (..),
    newFile_Urls,

    -- * FileList
    FileList (..),
    newFileList,

    -- * Flight
    Flight (..),
    newFlight,

    -- * FloodlightActivitiesGenerateTagResponse
    FloodlightActivitiesGenerateTagResponse (..),
    newFloodlightActivitiesGenerateTagResponse,

    -- * FloodlightActivitiesListResponse
    FloodlightActivitiesListResponse (..),
    newFloodlightActivitiesListResponse,

    -- * FloodlightActivity
    FloodlightActivity (..),
    newFloodlightActivity,

    -- * FloodlightActivityDynamicTag
    FloodlightActivityDynamicTag (..),
    newFloodlightActivityDynamicTag,

    -- * FloodlightActivityGroup
    FloodlightActivityGroup (..),
    newFloodlightActivityGroup,

    -- * FloodlightActivityGroupsListResponse
    FloodlightActivityGroupsListResponse (..),
    newFloodlightActivityGroupsListResponse,

    -- * FloodlightActivityPublisherDynamicTag
    FloodlightActivityPublisherDynamicTag (..),
    newFloodlightActivityPublisherDynamicTag,

    -- * FloodlightConfiguration
    FloodlightConfiguration (..),
    newFloodlightConfiguration,

    -- * FloodlightConfigurationsListResponse
    FloodlightConfigurationsListResponse (..),
    newFloodlightConfigurationsListResponse,

    -- * FloodlightReportCompatibleFields
    FloodlightReportCompatibleFields (..),
    newFloodlightReportCompatibleFields,

    -- * FrequencyCap
    FrequencyCap (..),
    newFrequencyCap,

    -- * FsCommand
    FsCommand (..),
    newFsCommand,

    -- * GeoTargeting
    GeoTargeting (..),
    newGeoTargeting,

    -- * InventoryItem
    InventoryItem (..),
    newInventoryItem,

    -- * InventoryItemsListResponse
    InventoryItemsListResponse (..),
    newInventoryItemsListResponse,

    -- * Invoice
    Invoice (..),
    newInvoice,

    -- * KeyValueTargetingExpression
    KeyValueTargetingExpression (..),
    newKeyValueTargetingExpression,

    -- * LandingPage
    LandingPage (..),
    newLandingPage,

    -- * Language
    Language (..),
    newLanguage,

    -- * LanguageTargeting
    LanguageTargeting (..),
    newLanguageTargeting,

    -- * LanguagesListResponse
    LanguagesListResponse (..),
    newLanguagesListResponse,

    -- * LastModifiedInfo
    LastModifiedInfo (..),
    newLastModifiedInfo,

    -- * ListPopulationClause
    ListPopulationClause (..),
    newListPopulationClause,

    -- * ListPopulationRule
    ListPopulationRule (..),
    newListPopulationRule,

    -- * ListPopulationTerm
    ListPopulationTerm (..),
    newListPopulationTerm,

    -- * ListTargetingExpression
    ListTargetingExpression (..),
    newListTargetingExpression,

    -- * LookbackConfiguration
    LookbackConfiguration (..),
    newLookbackConfiguration,

    -- * MeasurementPartnerAdvertiserLink
    MeasurementPartnerAdvertiserLink (..),
    newMeasurementPartnerAdvertiserLink,

    -- * MeasurementPartnerCampaignLink
    MeasurementPartnerCampaignLink (..),
    newMeasurementPartnerCampaignLink,

    -- * MeasurementPartnerWrappingData
    MeasurementPartnerWrappingData (..),
    newMeasurementPartnerWrappingData,

    -- * Metric
    Metric (..),
    newMetric,

    -- * Metro
    Metro (..),
    newMetro,

    -- * MetrosListResponse
    MetrosListResponse (..),
    newMetrosListResponse,

    -- * MobileApp
    MobileApp (..),
    newMobileApp,

    -- * MobileAppsListResponse
    MobileAppsListResponse (..),
    newMobileAppsListResponse,

    -- * MobileCarrier
    MobileCarrier (..),
    newMobileCarrier,

    -- * MobileCarriersListResponse
    MobileCarriersListResponse (..),
    newMobileCarriersListResponse,

    -- * ObaIcon
    ObaIcon (..),
    newObaIcon,

    -- * ObjectFilter
    ObjectFilter (..),
    newObjectFilter,

    -- * OfflineUserAddressInfo
    OfflineUserAddressInfo (..),
    newOfflineUserAddressInfo,

    -- * OffsetPosition
    OffsetPosition (..),
    newOffsetPosition,

    -- * OmnitureSettings
    OmnitureSettings (..),
    newOmnitureSettings,

    -- * OperatingSystem
    OperatingSystem (..),
    newOperatingSystem,

    -- * OperatingSystemVersion
    OperatingSystemVersion (..),
    newOperatingSystemVersion,

    -- * OperatingSystemVersionsListResponse
    OperatingSystemVersionsListResponse (..),
    newOperatingSystemVersionsListResponse,

    -- * OperatingSystemsListResponse
    OperatingSystemsListResponse (..),
    newOperatingSystemsListResponse,

    -- * OptimizationActivity
    OptimizationActivity (..),
    newOptimizationActivity,

    -- * Order
    Order (..),
    newOrder,

    -- * OrderContact
    OrderContact (..),
    newOrderContact,

    -- * OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- * PathToConversionReportCompatibleFields
    PathToConversionReportCompatibleFields (..),
    newPathToConversionReportCompatibleFields,

    -- * Placement
    Placement (..),
    newPlacement,

    -- * PlacementAssignment
    PlacementAssignment (..),
    newPlacementAssignment,

    -- * PlacementConversionDomainOverride
    PlacementConversionDomainOverride (..),
    newPlacementConversionDomainOverride,

    -- * PlacementGroup
    PlacementGroup (..),
    newPlacementGroup,

    -- * PlacementGroupsListResponse
    PlacementGroupsListResponse (..),
    newPlacementGroupsListResponse,

    -- * PlacementSingleConversionDomain
    PlacementSingleConversionDomain (..),
    newPlacementSingleConversionDomain,

    -- * PlacementStrategiesListResponse
    PlacementStrategiesListResponse (..),
    newPlacementStrategiesListResponse,

    -- * PlacementStrategy
    PlacementStrategy (..),
    newPlacementStrategy,

    -- * PlacementTag
    PlacementTag (..),
    newPlacementTag,

    -- * PlacementsGenerateTagsResponse
    PlacementsGenerateTagsResponse (..),
    newPlacementsGenerateTagsResponse,

    -- * PlacementsListResponse
    PlacementsListResponse (..),
    newPlacementsListResponse,

    -- * PlatformType
    PlatformType (..),
    newPlatformType,

    -- * PlatformTypesListResponse
    PlatformTypesListResponse (..),
    newPlatformTypesListResponse,

    -- * PopupWindowProperties
    PopupWindowProperties (..),
    newPopupWindowProperties,

    -- * PostalCode
    PostalCode (..),
    newPostalCode,

    -- * PostalCodesListResponse
    PostalCodesListResponse (..),
    newPostalCodesListResponse,

    -- * Pricing
    Pricing (..),
    newPricing,

    -- * PricingSchedule
    PricingSchedule (..),
    newPricingSchedule,

    -- * PricingSchedulePricingPeriod
    PricingSchedulePricingPeriod (..),
    newPricingSchedulePricingPeriod,

    -- * Project
    Project (..),
    newProject,

    -- * ProjectsListResponse
    ProjectsListResponse (..),
    newProjectsListResponse,

    -- * ReachReportCompatibleFields
    ReachReportCompatibleFields (..),
    newReachReportCompatibleFields,

    -- * Recipient
    Recipient (..),
    newRecipient,

    -- * Region
    Region (..),
    newRegion,

    -- * RegionsListResponse
    RegionsListResponse (..),
    newRegionsListResponse,

    -- * RemarketingList
    RemarketingList (..),
    newRemarketingList,

    -- * RemarketingListShare
    RemarketingListShare (..),
    newRemarketingListShare,

    -- * RemarketingListsListResponse
    RemarketingListsListResponse (..),
    newRemarketingListsListResponse,

    -- * Report
    Report (..),
    newReport,

    -- * Report_Criteria
    Report_Criteria (..),
    newReport_Criteria,

    -- * Report_CrossDimensionReachCriteria
    Report_CrossDimensionReachCriteria (..),
    newReport_CrossDimensionReachCriteria,

    -- * Report_CrossMediaReachCriteria
    Report_CrossMediaReachCriteria (..),
    newReport_CrossMediaReachCriteria,

    -- * Report_Delivery
    Report_Delivery (..),
    newReport_Delivery,

    -- * Report_FloodlightCriteria
    Report_FloodlightCriteria (..),
    newReport_FloodlightCriteria,

    -- * Report_FloodlightCriteria_ReportProperties
    Report_FloodlightCriteria_ReportProperties (..),
    newReport_FloodlightCriteria_ReportProperties,

    -- * Report_PathToConversionCriteria
    Report_PathToConversionCriteria (..),
    newReport_PathToConversionCriteria,

    -- * Report_PathToConversionCriteria_ReportProperties
    Report_PathToConversionCriteria_ReportProperties (..),
    newReport_PathToConversionCriteria_ReportProperties,

    -- * Report_ReachCriteria
    Report_ReachCriteria (..),
    newReport_ReachCriteria,

    -- * Report_Schedule
    Report_Schedule (..),
    newReport_Schedule,

    -- * ReportCompatibleFields
    ReportCompatibleFields (..),
    newReportCompatibleFields,

    -- * ReportList
    ReportList (..),
    newReportList,

    -- * ReportsConfiguration
    ReportsConfiguration (..),
    newReportsConfiguration,

    -- * RichMediaExitOverride
    RichMediaExitOverride (..),
    newRichMediaExitOverride,

    -- * Rule
    Rule (..),
    newRule,

    -- * Site
    Site (..),
    newSite,

    -- * SiteCompanionSetting
    SiteCompanionSetting (..),
    newSiteCompanionSetting,

    -- * SiteContact
    SiteContact (..),
    newSiteContact,

    -- * SiteSettings
    SiteSettings (..),
    newSiteSettings,

    -- * SiteSkippableSetting
    SiteSkippableSetting (..),
    newSiteSkippableSetting,

    -- * SiteTranscodeSetting
    SiteTranscodeSetting (..),
    newSiteTranscodeSetting,

    -- * SiteVideoSettings
    SiteVideoSettings (..),
    newSiteVideoSettings,

    -- * SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- * Size
    Size (..),
    newSize,

    -- * SizesListResponse
    SizesListResponse (..),
    newSizesListResponse,

    -- * SkippableSetting
    SkippableSetting (..),
    newSkippableSetting,

    -- * SortedDimension
    SortedDimension (..),
    newSortedDimension,

    -- * Subaccount
    Subaccount (..),
    newSubaccount,

    -- * SubaccountsListResponse
    SubaccountsListResponse (..),
    newSubaccountsListResponse,

    -- * TagData
    TagData (..),
    newTagData,

    -- * TagSetting
    TagSetting (..),
    newTagSetting,

    -- * TagSettings
    TagSettings (..),
    newTagSettings,

    -- * TargetWindow
    TargetWindow (..),
    newTargetWindow,

    -- * TargetableRemarketingList
    TargetableRemarketingList (..),
    newTargetableRemarketingList,

    -- * TargetableRemarketingListsListResponse
    TargetableRemarketingListsListResponse (..),
    newTargetableRemarketingListsListResponse,

    -- * TargetingTemplate
    TargetingTemplate (..),
    newTargetingTemplate,

    -- * TargetingTemplatesListResponse
    TargetingTemplatesListResponse (..),
    newTargetingTemplatesListResponse,

    -- * TechnologyTargeting
    TechnologyTargeting (..),
    newTechnologyTargeting,

    -- * ThirdPartyAuthenticationToken
    ThirdPartyAuthenticationToken (..),
    newThirdPartyAuthenticationToken,

    -- * ThirdPartyTrackingUrl
    ThirdPartyTrackingUrl (..),
    newThirdPartyTrackingUrl,

    -- * TranscodeSetting
    TranscodeSetting (..),
    newTranscodeSetting,

    -- * TvCampaignDetail
    TvCampaignDetail (..),
    newTvCampaignDetail,

    -- * TvCampaignSummariesListResponse
    TvCampaignSummariesListResponse (..),
    newTvCampaignSummariesListResponse,

    -- * TvCampaignSummary
    TvCampaignSummary (..),
    newTvCampaignSummary,

    -- * TvCampaignTimepoint
    TvCampaignTimepoint (..),
    newTvCampaignTimepoint,

    -- * UniversalAdId
    UniversalAdId (..),
    newUniversalAdId,

    -- * UserDefinedVariableConfiguration
    UserDefinedVariableConfiguration (..),
    newUserDefinedVariableConfiguration,

    -- * UserIdentifier
    UserIdentifier (..),
    newUserIdentifier,

    -- * UserProfile
    UserProfile (..),
    newUserProfile,

    -- * UserProfileList
    UserProfileList (..),
    newUserProfileList,

    -- * UserRole
    UserRole (..),
    newUserRole,

    -- * UserRolePermission
    UserRolePermission (..),
    newUserRolePermission,

    -- * UserRolePermissionGroup
    UserRolePermissionGroup (..),
    newUserRolePermissionGroup,

    -- * UserRolePermissionGroupsListResponse
    UserRolePermissionGroupsListResponse (..),
    newUserRolePermissionGroupsListResponse,

    -- * UserRolePermissionsListResponse
    UserRolePermissionsListResponse (..),
    newUserRolePermissionsListResponse,

    -- * UserRolesListResponse
    UserRolesListResponse (..),
    newUserRolesListResponse,

    -- * VideoFormat
    VideoFormat (..),
    newVideoFormat,

    -- * VideoFormatsListResponse
    VideoFormatsListResponse (..),
    newVideoFormatsListResponse,

    -- * VideoOffset
    VideoOffset (..),
    newVideoOffset,

    -- * VideoSettings
    VideoSettings (..),
    newVideoSettings,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Internal.Sum

-- | Contains properties of a Campaign Manager account.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
    {
      -- | Account permissions assigned to this account.
      accountPermissionIds :: (Core.Maybe [Core.Int64])
      -- | Profile for this account. This is a read-only field that can be left blank.
    , accountProfile :: (Core.Maybe Account_AccountProfile)
      -- | Whether this account is active.
    , active :: (Core.Maybe Core.Bool)
      -- | Maximum number of active ads allowed for this account.
    , activeAdsLimitTier :: (Core.Maybe Account_ActiveAdsLimitTier)
      -- | Whether to serve creatives with Active View tags. If disabled, viewability data will not be available for any impressions.
    , activeViewOptOut :: (Core.Maybe Core.Bool)
      -- | User role permissions available to the user roles of this account.
    , availablePermissionIds :: (Core.Maybe [Core.Int64])
      -- | ID of the country associated with this account.
    , countryId :: (Core.Maybe Core.Int64)
      -- | ID of currency associated with this account. This is a required field. Acceptable values are: - \"1\" for USD - \"2\" for GBP - \"3\" for ESP - \"4\" for SEK - \"5\" for CAD - \"6\" for JPY - \"7\" for DEM - \"8\" for AUD - \"9\" for FRF - \"10\" for ITL - \"11\" for DKK - \"12\" for NOK - \"13\" for FIM - \"14\" for ZAR - \"15\" for IEP - \"16\" for NLG - \"17\" for EUR - \"18\" for KRW - \"19\" for TWD - \"20\" for SGD - \"21\" for CNY - \"22\" for HKD - \"23\" for NZD - \"24\" for MYR - \"25\" for BRL - \"26\" for PTE - \"28\" for CLP - \"29\" for TRY - \"30\" for ARS - \"31\" for PEN - \"32\" for ILS - \"33\" for CHF - \"34\" for VEF - \"35\" for COP - \"36\" for GTQ - \"37\" for PLN - \"39\" for INR - \"40\" for THB - \"41\" for IDR - \"42\" for CZK - \"43\" for RON - \"44\" for HUF - \"45\" for RUB - \"46\" for AED - \"47\" for BGN - \"48\" for HRK - \"49\" for MXN - \"50\" for NGN - \"51\" for EGP
    , currencyId :: (Core.Maybe Core.Int64)
      -- | Default placement dimensions for this account.
    , defaultCreativeSizeId :: (Core.Maybe Core.Int64)
      -- | Description of this account.
    , description :: (Core.Maybe Core.Text)
      -- | ID of this account. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#account\".
    , kind :: (Core.Maybe Core.Text)
      -- | Locale of this account. Acceptable values are: - \"cs\" (Czech) - \"de\" (German) - \"en\" (English) - \"en-GB\" (English United Kingdom) - \"es\" (Spanish) - \"fr\" (French) - \"it\" (Italian) - \"ja\" (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) - \"pt-BR\" (Portuguese Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) - \"tr\" (Turkish) - \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese Traditional)
    , locale :: (Core.Maybe Core.Text)
      -- | Maximum image size allowed for this account, in kilobytes. Value must be greater than or equal to 1.
    , maximumImageSize :: (Core.Maybe Core.Int64)
      -- | Name of this account. This is a required field, and must be less than 128 characters long and be globally unique.
    , name :: (Core.Maybe Core.Text)
      -- | Whether campaigns created in this account will be enabled for Nielsen OCR reach ratings by default.
    , nielsenOcrEnabled :: (Core.Maybe Core.Bool)
      -- | Reporting configuration of this account.
    , reportsConfiguration :: (Core.Maybe ReportsConfiguration)
      -- | Share Path to Conversion reports with Twitter.
    , shareReportsWithTwitter :: (Core.Maybe Core.Bool)
      -- | File size limit in kilobytes of Rich Media teaser creatives. Acceptable values are 1 to 10240, inclusive.
    , teaserSizeLimit :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount 
    ::  Account
newAccount =
  Account
    { accountPermissionIds = Core.Nothing
    , accountProfile = Core.Nothing
    , active = Core.Nothing
    , activeAdsLimitTier = Core.Nothing
    , activeViewOptOut = Core.Nothing
    , availablePermissionIds = Core.Nothing
    , countryId = Core.Nothing
    , currencyId = Core.Nothing
    , defaultCreativeSizeId = Core.Nothing
    , description = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , locale = Core.Nothing
    , maximumImageSize = Core.Nothing
    , name = Core.Nothing
    , nielsenOcrEnabled = Core.Nothing
    , reportsConfiguration = Core.Nothing
    , shareReportsWithTwitter = Core.Nothing
    , teaserSizeLimit = Core.Nothing
    }

instance Core.FromJSON Account where
        parseJSON
          = Core.withObject "Account"
              (\ o ->
                 Account Core.<$>
                   (o Core..:? "accountPermissionIds" Core.<&>
                      Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "accountProfile")
                     Core.<*> (o Core..:? "active")
                     Core.<*> (o Core..:? "activeAdsLimitTier")
                     Core.<*> (o Core..:? "activeViewOptOut")
                     Core.<*>
                     (o Core..:? "availablePermissionIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*>
                     (o Core..:? "countryId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "currencyId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "defaultCreativeSizeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "description")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "locale")
                     Core.<*>
                     (o Core..:? "maximumImageSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nielsenOcrEnabled")
                     Core.<*> (o Core..:? "reportsConfiguration")
                     Core.<*> (o Core..:? "shareReportsWithTwitter")
                     Core.<*>
                     (o Core..:? "teaserSizeLimit" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Account where
        toJSON Account{..}
          = Core.object
              (Core.catMaybes
                 [("accountPermissionIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> accountPermissionIds,
                  ("accountProfile" Core..=) Core.<$> accountProfile,
                  ("active" Core..=) Core.<$> active,
                  ("activeAdsLimitTier" Core..=) Core.<$>
                    activeAdsLimitTier,
                  ("activeViewOptOut" Core..=) Core.<$>
                    activeViewOptOut,
                  ("availablePermissionIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> availablePermissionIds,
                  ("countryId" Core..=) Core.. Core.AsText Core.<$>
                    countryId,
                  ("currencyId" Core..=) Core.. Core.AsText Core.<$>
                    currencyId,
                  ("defaultCreativeSizeId" Core..=) Core.. Core.AsText
                    Core.<$> defaultCreativeSizeId,
                  ("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("locale" Core..=) Core.<$> locale,
                  ("maximumImageSize" Core..=) Core.. Core.AsText
                    Core.<$> maximumImageSize,
                  ("name" Core..=) Core.<$> name,
                  ("nielsenOcrEnabled" Core..=) Core.<$>
                    nielsenOcrEnabled,
                  ("reportsConfiguration" Core..=) Core.<$>
                    reportsConfiguration,
                  ("shareReportsWithTwitter" Core..=) Core.<$>
                    shareReportsWithTwitter,
                  ("teaserSizeLimit" Core..=) Core.. Core.AsText
                    Core.<$> teaserSizeLimit])


-- | Gets a summary of active ads in an account.
--
-- /See:/ 'newAccountActiveAdSummary' smart constructor.
data AccountActiveAdSummary = AccountActiveAdSummary
    {
      -- | ID of the account.
      accountId :: (Core.Maybe Core.Int64)
      -- | Ads that have been activated for the account
    , activeAds :: (Core.Maybe Core.Int64)
      -- | Maximum number of active ads allowed for the account.
    , activeAdsLimitTier :: (Core.Maybe AccountActiveAdSummary_ActiveAdsLimitTier)
      -- | Ads that can be activated for the account.
    , availableAds :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountActiveAdSummary\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountActiveAdSummary' with the minimum fields required to make a request.
newAccountActiveAdSummary 
    ::  AccountActiveAdSummary
newAccountActiveAdSummary =
  AccountActiveAdSummary
    { accountId = Core.Nothing
    , activeAds = Core.Nothing
    , activeAdsLimitTier = Core.Nothing
    , availableAds = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON AccountActiveAdSummary where
        parseJSON
          = Core.withObject "AccountActiveAdSummary"
              (\ o ->
                 AccountActiveAdSummary Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "activeAds" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "activeAdsLimitTier")
                     Core.<*>
                     (o Core..:? "availableAds" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON AccountActiveAdSummary where
        toJSON AccountActiveAdSummary{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("activeAds" Core..=) Core.. Core.AsText Core.<$>
                    activeAds,
                  ("activeAdsLimitTier" Core..=) Core.<$>
                    activeAdsLimitTier,
                  ("availableAds" Core..=) Core.. Core.AsText Core.<$>
                    availableAds,
                  ("kind" Core..=) Core.<$> kind])


-- | AccountPermissions contains information about a particular account permission. Some features of Campaign Manager require an account permission to be present in the account.
--
-- /See:/ 'newAccountPermission' smart constructor.
data AccountPermission = AccountPermission
    {
      -- | Account profiles associated with this account permission. Possible values are: - \"ACCOUNT/PROFILE/BASIC\" - \"ACCOUNT/PROFILE/STANDARD\"
      accountProfiles :: (Core.Maybe [AccountPermission_AccountProfilesItem])
      -- | ID of this account permission.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermission\".
    , kind :: (Core.Maybe Core.Text)
      -- | Administrative level required to enable this account permission.
    , level :: (Core.Maybe AccountPermission_Level)
      -- | Name of this account permission.
    , name :: (Core.Maybe Core.Text)
      -- | Permission group of this account permission.
    , permissionGroupId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountPermission' with the minimum fields required to make a request.
newAccountPermission 
    ::  AccountPermission
newAccountPermission =
  AccountPermission
    { accountProfiles = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , level = Core.Nothing
    , name = Core.Nothing
    , permissionGroupId = Core.Nothing
    }

instance Core.FromJSON AccountPermission where
        parseJSON
          = Core.withObject "AccountPermission"
              (\ o ->
                 AccountPermission Core.<$>
                   (o Core..:? "accountProfiles") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "level")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "permissionGroupId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON AccountPermission where
        toJSON AccountPermission{..}
          = Core.object
              (Core.catMaybes
                 [("accountProfiles" Core..=) Core.<$>
                    accountProfiles,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("level" Core..=) Core.<$> level,
                  ("name" Core..=) Core.<$> name,
                  ("permissionGroupId" Core..=) Core.. Core.AsText
                    Core.<$> permissionGroupId])


-- | AccountPermissionGroups contains a mapping of permission group IDs to names. A permission group is a grouping of account permissions.
--
-- /See:/ 'newAccountPermissionGroup' smart constructor.
data AccountPermissionGroup = AccountPermissionGroup
    {
      -- | ID of this account permission group.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this account permission group.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountPermissionGroup' with the minimum fields required to make a request.
newAccountPermissionGroup 
    ::  AccountPermissionGroup
newAccountPermissionGroup =
  AccountPermissionGroup
    {id = Core.Nothing, kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AccountPermissionGroup where
        parseJSON
          = Core.withObject "AccountPermissionGroup"
              (\ o ->
                 AccountPermissionGroup Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON AccountPermissionGroup where
        toJSON AccountPermissionGroup{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Account Permission Group List Response
--
-- /See:/ 'newAccountPermissionGroupsListResponse' smart constructor.
data AccountPermissionGroupsListResponse = AccountPermissionGroupsListResponse
    {
      -- | Account permission group collection.
      accountPermissionGroups :: (Core.Maybe [AccountPermissionGroup])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionGroupGroupsListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountPermissionGroupsListResponse' with the minimum fields required to make a request.
newAccountPermissionGroupsListResponse 
    ::  AccountPermissionGroupsListResponse
newAccountPermissionGroupsListResponse =
  AccountPermissionGroupsListResponse
    {accountPermissionGroups = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON
           AccountPermissionGroupsListResponse
         where
        parseJSON
          = Core.withObject
              "AccountPermissionGroupsListResponse"
              (\ o ->
                 AccountPermissionGroupsListResponse Core.<$>
                   (o Core..:? "accountPermissionGroups") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON
           AccountPermissionGroupsListResponse
         where
        toJSON AccountPermissionGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accountPermissionGroups" Core..=) Core.<$>
                    accountPermissionGroups,
                  ("kind" Core..=) Core.<$> kind])


-- | Account Permission List Response
--
-- /See:/ 'newAccountPermissionsListResponse' smart constructor.
data AccountPermissionsListResponse = AccountPermissionsListResponse
    {
      -- | Account permission collection.
      accountPermissions :: (Core.Maybe [AccountPermission])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionsListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountPermissionsListResponse' with the minimum fields required to make a request.
newAccountPermissionsListResponse 
    ::  AccountPermissionsListResponse
newAccountPermissionsListResponse =
  AccountPermissionsListResponse
    {accountPermissions = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON AccountPermissionsListResponse
         where
        parseJSON
          = Core.withObject "AccountPermissionsListResponse"
              (\ o ->
                 AccountPermissionsListResponse Core.<$>
                   (o Core..:? "accountPermissions") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON AccountPermissionsListResponse
         where
        toJSON AccountPermissionsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accountPermissions" Core..=) Core.<$>
                    accountPermissions,
                  ("kind" Core..=) Core.<$> kind])


-- | AccountUserProfiles contains properties of a Campaign Manager user profile. This resource is specifically for managing user profiles, whereas UserProfiles is for accessing the API.
--
-- /See:/ 'newAccountUserProfile' smart constructor.
data AccountUserProfile = AccountUserProfile
    {
      -- | Account ID of the user profile. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this user profile is active. This defaults to false, and must be set true on insert for the user profile to be usable.
    , active :: (Core.Maybe Core.Bool)
      -- | Filter that describes which advertisers are visible to the user profile.
    , advertiserFilter :: (Core.Maybe ObjectFilter)
      -- | Filter that describes which campaigns are visible to the user profile.
    , campaignFilter :: (Core.Maybe ObjectFilter)
      -- | Comments for this user profile.
    , comments :: (Core.Maybe Core.Text)
      -- | Email of the user profile. The email address must be linked to a Google Account. This field is required on insertion and is read-only after insertion.
    , email :: (Core.Maybe Core.Text)
      -- | ID of the user profile. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountUserProfile\".
    , kind :: (Core.Maybe Core.Text)
      -- | Locale of the user profile. This is a required field. Acceptable values are: - \"cs\" (Czech) - \"de\" (German) - \"en\" (English) - \"en-GB\" (English United Kingdom) - \"es\" (Spanish) - \"fr\" (French) - \"it\" (Italian) - \"ja\" (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) - \"pt-BR\" (Portuguese Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) - \"tr\" (Turkish) - \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese Traditional)
    , locale :: (Core.Maybe Core.Text)
      -- | Name of the user profile. This is a required field. Must be less than 64 characters long, must be globally unique, and cannot contain whitespace or any of the following characters: \"&;\<>\"#%,\".
    , name :: (Core.Maybe Core.Text)
      -- | Filter that describes which sites are visible to the user profile.
    , siteFilter :: (Core.Maybe ObjectFilter)
      -- | Subaccount ID of the user profile. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Trafficker type of this user profile. This is a read-only field.
    , traffickerType :: (Core.Maybe AccountUserProfile_TraffickerType)
      -- | User type of the user profile. This is a read-only field that can be left blank.
    , userAccessType :: (Core.Maybe AccountUserProfile_UserAccessType)
      -- | Filter that describes which user roles are visible to the user profile.
    , userRoleFilter :: (Core.Maybe ObjectFilter)
      -- | User role ID of the user profile. This is a required field.
    , userRoleId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountUserProfile' with the minimum fields required to make a request.
newAccountUserProfile 
    ::  AccountUserProfile
newAccountUserProfile =
  AccountUserProfile
    { accountId = Core.Nothing
    , active = Core.Nothing
    , advertiserFilter = Core.Nothing
    , campaignFilter = Core.Nothing
    , comments = Core.Nothing
    , email = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , locale = Core.Nothing
    , name = Core.Nothing
    , siteFilter = Core.Nothing
    , subaccountId = Core.Nothing
    , traffickerType = Core.Nothing
    , userAccessType = Core.Nothing
    , userRoleFilter = Core.Nothing
    , userRoleId = Core.Nothing
    }

instance Core.FromJSON AccountUserProfile where
        parseJSON
          = Core.withObject "AccountUserProfile"
              (\ o ->
                 AccountUserProfile Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "active")
                     Core.<*> (o Core..:? "advertiserFilter")
                     Core.<*> (o Core..:? "campaignFilter")
                     Core.<*> (o Core..:? "comments")
                     Core.<*> (o Core..:? "email")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "locale")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "siteFilter")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "traffickerType")
                     Core.<*> (o Core..:? "userAccessType")
                     Core.<*> (o Core..:? "userRoleFilter")
                     Core.<*>
                     (o Core..:? "userRoleId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON AccountUserProfile where
        toJSON AccountUserProfile{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("active" Core..=) Core.<$> active,
                  ("advertiserFilter" Core..=) Core.<$>
                    advertiserFilter,
                  ("campaignFilter" Core..=) Core.<$> campaignFilter,
                  ("comments" Core..=) Core.<$> comments,
                  ("email" Core..=) Core.<$> email,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("locale" Core..=) Core.<$> locale,
                  ("name" Core..=) Core.<$> name,
                  ("siteFilter" Core..=) Core.<$> siteFilter,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("traffickerType" Core..=) Core.<$> traffickerType,
                  ("userAccessType" Core..=) Core.<$> userAccessType,
                  ("userRoleFilter" Core..=) Core.<$> userRoleFilter,
                  ("userRoleId" Core..=) Core.. Core.AsText Core.<$>
                    userRoleId])


-- | Account User Profile List Response
--
-- /See:/ 'newAccountUserProfilesListResponse' smart constructor.
data AccountUserProfilesListResponse = AccountUserProfilesListResponse
    {
      -- | Account user profile collection.
      accountUserProfiles :: (Core.Maybe [AccountUserProfile])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountUserProfilesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountUserProfilesListResponse' with the minimum fields required to make a request.
newAccountUserProfilesListResponse 
    ::  AccountUserProfilesListResponse
newAccountUserProfilesListResponse =
  AccountUserProfilesListResponse
    { accountUserProfiles = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           AccountUserProfilesListResponse
         where
        parseJSON
          = Core.withObject "AccountUserProfilesListResponse"
              (\ o ->
                 AccountUserProfilesListResponse Core.<$>
                   (o Core..:? "accountUserProfiles") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AccountUserProfilesListResponse
         where
        toJSON AccountUserProfilesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accountUserProfiles" Core..=) Core.<$>
                    accountUserProfiles,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Account List Response
--
-- /See:/ 'newAccountsListResponse' smart constructor.
data AccountsListResponse = AccountsListResponse
    {
      -- | Account collection.
      accounts :: (Core.Maybe [Account])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountsListResponse' with the minimum fields required to make a request.
newAccountsListResponse 
    ::  AccountsListResponse
newAccountsListResponse =
  AccountsListResponse
    {accounts = Core.Nothing, kind = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON AccountsListResponse where
        parseJSON
          = Core.withObject "AccountsListResponse"
              (\ o ->
                 AccountsListResponse Core.<$>
                   (o Core..:? "accounts") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AccountsListResponse where
        toJSON AccountsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accounts" Core..=) Core.<$> accounts,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Represents an activity group.
--
-- /See:/ 'newActivities' smart constructor.
data Activities = Activities
    {
      -- | List of activity filters. The dimension values need to be all either of type \"dfa:activity\" or \"dfa:activityGroup\".
      filters :: (Core.Maybe [DimensionValue])
      -- | The kind of resource this is, in this case dfareporting#activities.
    , kind :: (Core.Maybe Core.Text)
      -- | List of names of floodlight activity metrics.
    , metricNames :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
newActivities 
    ::  Activities
newActivities =
  Activities
    {filters = Core.Nothing, kind = Core.Nothing, metricNames = Core.Nothing}

instance Core.FromJSON Activities where
        parseJSON
          = Core.withObject "Activities"
              (\ o ->
                 Activities Core.<$>
                   (o Core..:? "filters") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metricNames"))

instance Core.ToJSON Activities where
        toJSON Activities{..}
          = Core.object
              (Core.catMaybes
                 [("filters" Core..=) Core.<$> filters,
                  ("kind" Core..=) Core.<$> kind,
                  ("metricNames" Core..=) Core.<$> metricNames])


-- | Contains properties of a Campaign Manager ad.
--
-- /See:/ 'newAd' smart constructor.
data Ad = Ad
    {
      -- | Account ID of this ad. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this ad is active. When true, archived must be false.
    , active :: (Core.Maybe Core.Bool)
      -- | Advertiser ID of this ad. This is a required field on insertion.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether this ad is archived. When true, active must be false.
    , archived :: (Core.Maybe Core.Bool)
      -- | Audience segment ID that is being targeted for this ad. Applicable when type is AD/SERVING/STANDARD_AD.
    , audienceSegmentId :: (Core.Maybe Core.Int64)
      -- | Campaign ID of this ad. This is a required field on insertion.
    , campaignId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
    , campaignIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Click-through URL for this ad. This is a required field on insertion. Applicable when type is AD/SERVING/CLICK_TRACKER.
    , clickThroughUrl :: (Core.Maybe ClickThroughUrl)
      -- | Click-through URL suffix properties for this ad. Applies to the URL in the ad or (if overriding ad properties) the URL in the creative.
    , clickThroughUrlSuffixProperties :: (Core.Maybe ClickThroughUrlSuffixProperties)
      -- | Comments for this ad.
    , comments :: (Core.Maybe Core.Text)
      -- | Compatibility of this ad. Applicable when type is AD/SERVING/DEFAULT/AD. DISPLAY and DISPLAY/INTERSTITIAL refer to either rendering on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP/INTERSTITIAL are only used for existing default ads. New mobile placements must be assigned DISPLAY or DISPLAY/INTERSTITIAL and default ads created for those placements will be limited to those compatibility types. IN/STREAM/VIDEO refers to rendering in-stream video ads developed with the VAST standard.
    , compatibility :: (Core.Maybe Ad_Compatibility)
      -- | Information about the creation of this ad. This is a read-only field.
    , createInfo :: (Core.Maybe LastModifiedInfo)
      -- | Creative group assignments for this ad. Applicable when type is AD/SERVING/CLICK_TRACKER. Only one assignment per creative group number is allowed for a maximum of two assignments.
    , creativeGroupAssignments :: (Core.Maybe [CreativeGroupAssignment])
      -- | Creative rotation for this ad. Applicable when type is AD/SERVING/DEFAULT/AD, AD/SERVING/STANDARD/AD, or AD/SERVING/TRACKING. When type is AD/SERVING/DEFAULT_AD, this field should have exactly one creativeAssignment .
    , creativeRotation :: (Core.Maybe CreativeRotation)
      -- | Time and day targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , dayPartTargeting :: (Core.Maybe DayPartTargeting)
      -- | Default click-through event tag properties for this ad.
    , defaultClickThroughEventTagProperties :: (Core.Maybe DefaultClickThroughEventTagProperties)
      -- | Delivery schedule information for this ad. Applicable when type is AD/SERVING/STANDARD/AD or AD/SERVING/TRACKING. This field along with subfields priority and impressionRatio are required on insertion when type is AD/SERVING/STANDARD/AD.
    , deliverySchedule :: (Core.Maybe DeliverySchedule)
      -- | Whether this ad is a dynamic click tracker. Applicable when type is AD/SERVING/CLICK_TRACKER. This is a required field on insert, and is read-only after insert.
    , dynamicClickTracker :: (Core.Maybe Core.Bool)
      -- | 
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Event tag overrides for this ad.
    , eventTagOverrides :: (Core.Maybe [EventTagOverride])
      -- | Geographical targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , geoTargeting :: (Core.Maybe GeoTargeting)
      -- | ID of this ad. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this ad. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Key-value targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , keyValueTargetingExpression :: (Core.Maybe KeyValueTargetingExpression)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#ad\".
    , kind :: (Core.Maybe Core.Text)
      -- | Language targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , languageTargeting :: (Core.Maybe LanguageTargeting)
      -- | Information about the most recent modification of this ad. This is a read-only field.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Name of this ad. This is a required field and must be less than 256 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Placement assignments for this ad.
    , placementAssignments :: (Core.Maybe [PlacementAssignment])
      -- | Remarketing list targeting expression for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , remarketingListExpression :: (Core.Maybe ListTargetingExpression)
      -- | Size of this ad. Applicable when type is AD/SERVING/DEFAULT_AD.
    , size :: (Core.Maybe Size)
      -- | Whether this ad is ssl compliant. This is a read-only field that is auto-generated when the ad is inserted or updated.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | Whether this ad requires ssl. This is a read-only field that is auto-generated when the ad is inserted or updated.
    , sslRequired :: (Core.Maybe Core.Bool)
      -- | 
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Subaccount ID of this ad. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Targeting template ID, used to apply preconfigured targeting information to this ad. This cannot be set while any of dayPartTargeting, geoTargeting, keyValueTargetingExpression, languageTargeting, remarketingListExpression, or technologyTargeting are set. Applicable when type is AD/SERVING/STANDARD_AD.
    , targetingTemplateId :: (Core.Maybe Core.Int64)
      -- | Technology platform targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD/SERVING/STANDARD_AD.
    , technologyTargeting :: (Core.Maybe TechnologyTargeting)
      -- | Type of ad. This is a required field on insertion. Note that default ads ( AD/SERVING/DEFAULT_AD) cannot be created directly (see Creative resource).
    , type' :: (Core.Maybe Ad_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Ad' with the minimum fields required to make a request.
newAd 
    ::  Ad
newAd =
  Ad
    { accountId = Core.Nothing
    , active = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , archived = Core.Nothing
    , audienceSegmentId = Core.Nothing
    , campaignId = Core.Nothing
    , campaignIdDimensionValue = Core.Nothing
    , clickThroughUrl = Core.Nothing
    , clickThroughUrlSuffixProperties = Core.Nothing
    , comments = Core.Nothing
    , compatibility = Core.Nothing
    , createInfo = Core.Nothing
    , creativeGroupAssignments = Core.Nothing
    , creativeRotation = Core.Nothing
    , dayPartTargeting = Core.Nothing
    , defaultClickThroughEventTagProperties = Core.Nothing
    , deliverySchedule = Core.Nothing
    , dynamicClickTracker = Core.Nothing
    , endTime = Core.Nothing
    , eventTagOverrides = Core.Nothing
    , geoTargeting = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , keyValueTargetingExpression = Core.Nothing
    , kind = Core.Nothing
    , languageTargeting = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , name = Core.Nothing
    , placementAssignments = Core.Nothing
    , remarketingListExpression = Core.Nothing
    , size = Core.Nothing
    , sslCompliant = Core.Nothing
    , sslRequired = Core.Nothing
    , startTime = Core.Nothing
    , subaccountId = Core.Nothing
    , targetingTemplateId = Core.Nothing
    , technologyTargeting = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Ad where
        parseJSON
          = Core.withObject "Ad"
              (\ o ->
                 Ad Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "active")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "archived")
                     Core.<*>
                     (o Core..:? "audienceSegmentId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "campaignId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "campaignIdDimensionValue")
                     Core.<*> (o Core..:? "clickThroughUrl")
                     Core.<*>
                     (o Core..:? "clickThroughUrlSuffixProperties")
                     Core.<*> (o Core..:? "comments")
                     Core.<*> (o Core..:? "compatibility")
                     Core.<*> (o Core..:? "createInfo")
                     Core.<*> (o Core..:? "creativeGroupAssignments")
                     Core.<*> (o Core..:? "creativeRotation")
                     Core.<*> (o Core..:? "dayPartTargeting")
                     Core.<*>
                     (o Core..:? "defaultClickThroughEventTagProperties")
                     Core.<*> (o Core..:? "deliverySchedule")
                     Core.<*> (o Core..:? "dynamicClickTracker")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "eventTagOverrides")
                     Core.<*> (o Core..:? "geoTargeting")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "keyValueTargetingExpression")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "languageTargeting")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "placementAssignments")
                     Core.<*> (o Core..:? "remarketingListExpression")
                     Core.<*> (o Core..:? "size")
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "sslRequired")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetingTemplateId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "technologyTargeting")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Ad where
        toJSON Ad{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("active" Core..=) Core.<$> active,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("archived" Core..=) Core.<$> archived,
                  ("audienceSegmentId" Core..=) Core.. Core.AsText
                    Core.<$> audienceSegmentId,
                  ("campaignId" Core..=) Core.. Core.AsText Core.<$>
                    campaignId,
                  ("campaignIdDimensionValue" Core..=) Core.<$>
                    campaignIdDimensionValue,
                  ("clickThroughUrl" Core..=) Core.<$> clickThroughUrl,
                  ("clickThroughUrlSuffixProperties" Core..=) Core.<$>
                    clickThroughUrlSuffixProperties,
                  ("comments" Core..=) Core.<$> comments,
                  ("compatibility" Core..=) Core.<$> compatibility,
                  ("createInfo" Core..=) Core.<$> createInfo,
                  ("creativeGroupAssignments" Core..=) Core.<$>
                    creativeGroupAssignments,
                  ("creativeRotation" Core..=) Core.<$>
                    creativeRotation,
                  ("dayPartTargeting" Core..=) Core.<$>
                    dayPartTargeting,
                  ("defaultClickThroughEventTagProperties" Core..=)
                    Core.<$> defaultClickThroughEventTagProperties,
                  ("deliverySchedule" Core..=) Core.<$>
                    deliverySchedule,
                  ("dynamicClickTracker" Core..=) Core.<$>
                    dynamicClickTracker,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("eventTagOverrides" Core..=) Core.<$>
                    eventTagOverrides,
                  ("geoTargeting" Core..=) Core.<$> geoTargeting,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("keyValueTargetingExpression" Core..=) Core.<$>
                    keyValueTargetingExpression,
                  ("kind" Core..=) Core.<$> kind,
                  ("languageTargeting" Core..=) Core.<$>
                    languageTargeting,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("name" Core..=) Core.<$> name,
                  ("placementAssignments" Core..=) Core.<$>
                    placementAssignments,
                  ("remarketingListExpression" Core..=) Core.<$>
                    remarketingListExpression,
                  ("size" Core..=) Core.<$> size,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("sslRequired" Core..=) Core.<$> sslRequired,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("targetingTemplateId" Core..=) Core.. Core.AsText
                    Core.<$> targetingTemplateId,
                  ("technologyTargeting" Core..=) Core.<$>
                    technologyTargeting,
                  ("type" Core..=) Core.<$> type'])


-- | Campaign ad blocking settings.
--
-- /See:/ 'newAdBlockingConfiguration' smart constructor.
newtype AdBlockingConfiguration = AdBlockingConfiguration
    {
      -- | Whether this campaign has enabled ad blocking. When true, ad blocking is enabled for placements in the campaign, but this may be overridden by site and placement settings. When false, ad blocking is disabled for all placements under the campaign, regardless of site and placement settings.
      enabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdBlockingConfiguration' with the minimum fields required to make a request.
newAdBlockingConfiguration 
    ::  AdBlockingConfiguration
newAdBlockingConfiguration = AdBlockingConfiguration {enabled = Core.Nothing}

instance Core.FromJSON AdBlockingConfiguration where
        parseJSON
          = Core.withObject "AdBlockingConfiguration"
              (\ o ->
                 AdBlockingConfiguration Core.<$>
                   (o Core..:? "enabled"))

instance Core.ToJSON AdBlockingConfiguration where
        toJSON AdBlockingConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("enabled" Core..=) Core.<$> enabled])


-- | Ad Slot
--
-- /See:/ 'newAdSlot' smart constructor.
data AdSlot = AdSlot
    {
      -- | Comment for this ad slot.
      comment :: (Core.Maybe Core.Text)
      -- | Ad slot compatibility. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop, mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM/VIDEO refers to rendering in in-stream video ads developed with the VAST standard.
    , compatibility :: (Core.Maybe AdSlot_Compatibility)
      -- | Height of this ad slot.
    , height :: (Core.Maybe Core.Int64)
      -- | ID of the placement from an external platform that is linked to this ad slot.
    , linkedPlacementId :: (Core.Maybe Core.Int64)
      -- | Name of this ad slot.
    , name :: (Core.Maybe Core.Text)
      -- | Payment source type of this ad slot.
    , paymentSourceType :: (Core.Maybe AdSlot_PaymentSourceType)
      -- | Primary ad slot of a roadblock inventory item.
    , primary :: (Core.Maybe Core.Bool)
      -- | Width of this ad slot.
    , width :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSlot' with the minimum fields required to make a request.
newAdSlot 
    ::  AdSlot
newAdSlot =
  AdSlot
    { comment = Core.Nothing
    , compatibility = Core.Nothing
    , height = Core.Nothing
    , linkedPlacementId = Core.Nothing
    , name = Core.Nothing
    , paymentSourceType = Core.Nothing
    , primary = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON AdSlot where
        parseJSON
          = Core.withObject "AdSlot"
              (\ o ->
                 AdSlot Core.<$>
                   (o Core..:? "comment") Core.<*>
                     (o Core..:? "compatibility")
                     Core.<*>
                     (o Core..:? "height" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "linkedPlacementId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "paymentSourceType")
                     Core.<*> (o Core..:? "primary")
                     Core.<*>
                     (o Core..:? "width" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON AdSlot where
        toJSON AdSlot{..}
          = Core.object
              (Core.catMaybes
                 [("comment" Core..=) Core.<$> comment,
                  ("compatibility" Core..=) Core.<$> compatibility,
                  ("height" Core..=) Core.. Core.AsText Core.<$>
                    height,
                  ("linkedPlacementId" Core..=) Core.. Core.AsText
                    Core.<$> linkedPlacementId,
                  ("name" Core..=) Core.<$> name,
                  ("paymentSourceType" Core..=) Core.<$>
                    paymentSourceType,
                  ("primary" Core..=) Core.<$> primary,
                  ("width" Core..=) Core.. Core.AsText Core.<$> width])


-- | Ad List Response
--
-- /See:/ 'newAdsListResponse' smart constructor.
data AdsListResponse = AdsListResponse
    {
      -- | Ad collection.
      ads :: (Core.Maybe [Ad])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#adsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdsListResponse' with the minimum fields required to make a request.
newAdsListResponse 
    ::  AdsListResponse
newAdsListResponse =
  AdsListResponse
    {ads = Core.Nothing, kind = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON AdsListResponse where
        parseJSON
          = Core.withObject "AdsListResponse"
              (\ o ->
                 AdsListResponse Core.<$>
                   (o Core..:? "ads") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AdsListResponse where
        toJSON AdsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("ads" Core..=) Core.<$> ads,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains properties of a Campaign Manager advertiser.
--
-- /See:/ 'newAdvertiser' smart constructor.
data Advertiser = Advertiser
    {
      -- | Account ID of this advertiser.This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | ID of the advertiser group this advertiser belongs to. You can group advertisers for reporting purposes, allowing you to see aggregated information for all advertisers in each group.
    , advertiserGroupId :: (Core.Maybe Core.Int64)
      -- | Suffix added to click-through URL of ad creative associations under this advertiser. Must be less than 129 characters long.
    , clickThroughUrlSuffix :: (Core.Maybe Core.Text)
      -- | ID of the click-through event tag to apply by default to the landing pages of this advertiser\'s campaigns.
    , defaultClickThroughEventTagId :: (Core.Maybe Core.Int64)
      -- | Default email address used in sender field for tag emails.
    , defaultEmail :: (Core.Maybe Core.Text)
      -- | Floodlight configuration ID of this advertiser. The floodlight configuration ID will be created automatically, so on insert this field should be left blank. This field can be set to another advertiser\'s floodlight configuration ID in order to share that advertiser\'s floodlight configuration with this advertiser, so long as: - This advertiser\'s original floodlight configuration is not already associated with floodlight activities or floodlight activity groups. - This advertiser\'s original floodlight configuration is not already shared with another advertiser.
    , floodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.
    , floodlightConfigurationIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | ID of this advertiser. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this advertiser. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiser\".
    , kind :: (Core.Maybe Core.Text)
      -- | Measurement partner advertiser link for tag wrapping.
    , measurementPartnerLink :: (Core.Maybe MeasurementPartnerAdvertiserLink)
      -- | Name of this advertiser. This is a required field and must be less than 256 characters long and unique among advertisers of the same account.
    , name :: (Core.Maybe Core.Text)
      -- | Original floodlight configuration before any sharing occurred. Set the floodlightConfigurationId of this advertiser to originalFloodlightConfigurationId to unshare the advertiser\'s current floodlight configuration. You cannot unshare an advertiser\'s floodlight configuration if the shared configuration has activities associated with any campaign or placement.
    , originalFloodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | Status of this advertiser.
    , status :: (Core.Maybe Advertiser_Status)
      -- | Subaccount ID of this advertiser.This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Suspension status of this advertiser.
    , suspended :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Advertiser' with the minimum fields required to make a request.
newAdvertiser 
    ::  Advertiser
newAdvertiser =
  Advertiser
    { accountId = Core.Nothing
    , advertiserGroupId = Core.Nothing
    , clickThroughUrlSuffix = Core.Nothing
    , defaultClickThroughEventTagId = Core.Nothing
    , defaultEmail = Core.Nothing
    , floodlightConfigurationId = Core.Nothing
    , floodlightConfigurationIdDimensionValue = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , measurementPartnerLink = Core.Nothing
    , name = Core.Nothing
    , originalFloodlightConfigurationId = Core.Nothing
    , status = Core.Nothing
    , subaccountId = Core.Nothing
    , suspended = Core.Nothing
    }

instance Core.FromJSON Advertiser where
        parseJSON
          = Core.withObject "Advertiser"
              (\ o ->
                 Advertiser Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserGroupId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "clickThroughUrlSuffix")
                     Core.<*>
                     (o Core..:? "defaultClickThroughEventTagId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "defaultEmail")
                     Core.<*>
                     (o Core..:? "floodlightConfigurationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:?
                        "floodlightConfigurationIdDimensionValue")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "measurementPartnerLink")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "originalFloodlightConfigurationId"
                        Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "status")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "suspended"))

instance Core.ToJSON Advertiser where
        toJSON Advertiser{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserGroupId" Core..=) Core.. Core.AsText
                    Core.<$> advertiserGroupId,
                  ("clickThroughUrlSuffix" Core..=) Core.<$>
                    clickThroughUrlSuffix,
                  ("defaultClickThroughEventTagId" Core..=) Core..
                    Core.AsText
                    Core.<$> defaultClickThroughEventTagId,
                  ("defaultEmail" Core..=) Core.<$> defaultEmail,
                  ("floodlightConfigurationId" Core..=) Core..
                    Core.AsText
                    Core.<$> floodlightConfigurationId,
                  ("floodlightConfigurationIdDimensionValue" Core..=)
                    Core.<$> floodlightConfigurationIdDimensionValue,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("measurementPartnerLink" Core..=) Core.<$>
                    measurementPartnerLink,
                  ("name" Core..=) Core.<$> name,
                  ("originalFloodlightConfigurationId" Core..=) Core..
                    Core.AsText
                    Core.<$> originalFloodlightConfigurationId,
                  ("status" Core..=) Core.<$> status,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("suspended" Core..=) Core.<$> suspended])


-- | Groups advertisers together so that reports can be generated for the entire group at once.
--
-- /See:/ 'newAdvertiserGroup' smart constructor.
data AdvertiserGroup = AdvertiserGroup
    {
      -- | Account ID of this advertiser group. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | ID of this advertiser group. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this advertiser group. This is a required field and must be less than 256 characters long and unique among advertiser groups of the same account.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertiserGroup' with the minimum fields required to make a request.
newAdvertiserGroup 
    ::  AdvertiserGroup
newAdvertiserGroup =
  AdvertiserGroup
    { accountId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON AdvertiserGroup where
        parseJSON
          = Core.withObject "AdvertiserGroup"
              (\ o ->
                 AdvertiserGroup Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON AdvertiserGroup where
        toJSON AdvertiserGroup{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Advertiser Group List Response
--
-- /See:/ 'newAdvertiserGroupsListResponse' smart constructor.
data AdvertiserGroupsListResponse = AdvertiserGroupsListResponse
    {
      -- | Advertiser group collection.
      advertiserGroups :: (Core.Maybe [AdvertiserGroup])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserGroupsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertiserGroupsListResponse' with the minimum fields required to make a request.
newAdvertiserGroupsListResponse 
    ::  AdvertiserGroupsListResponse
newAdvertiserGroupsListResponse =
  AdvertiserGroupsListResponse
    { advertiserGroups = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON AdvertiserGroupsListResponse
         where
        parseJSON
          = Core.withObject "AdvertiserGroupsListResponse"
              (\ o ->
                 AdvertiserGroupsListResponse Core.<$>
                   (o Core..:? "advertiserGroups") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AdvertiserGroupsListResponse
         where
        toJSON AdvertiserGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("advertiserGroups" Core..=) Core.<$>
                    advertiserGroups,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Invoice List Response
--
-- /See:/ 'newAdvertiserInvoicesListResponse' smart constructor.
data AdvertiserInvoicesListResponse = AdvertiserInvoicesListResponse
    {
      -- | Invoice collection
      invoices :: (Core.Maybe [Invoice])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserInvoicesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertiserInvoicesListResponse' with the minimum fields required to make a request.
newAdvertiserInvoicesListResponse 
    ::  AdvertiserInvoicesListResponse
newAdvertiserInvoicesListResponse =
  AdvertiserInvoicesListResponse
    {invoices = Core.Nothing, kind = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON AdvertiserInvoicesListResponse
         where
        parseJSON
          = Core.withObject "AdvertiserInvoicesListResponse"
              (\ o ->
                 AdvertiserInvoicesListResponse Core.<$>
                   (o Core..:? "invoices") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AdvertiserInvoicesListResponse
         where
        toJSON AdvertiserInvoicesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("invoices" Core..=) Core.<$> invoices,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Landing Page List Response
--
-- /See:/ 'newAdvertiserLandingPagesListResponse' smart constructor.
data AdvertiserLandingPagesListResponse = AdvertiserLandingPagesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserLandingPagesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Landing page collection
    , landingPages :: (Core.Maybe [LandingPage])
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertiserLandingPagesListResponse' with the minimum fields required to make a request.
newAdvertiserLandingPagesListResponse 
    ::  AdvertiserLandingPagesListResponse
newAdvertiserLandingPagesListResponse =
  AdvertiserLandingPagesListResponse
    { kind = Core.Nothing
    , landingPages = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           AdvertiserLandingPagesListResponse
         where
        parseJSON
          = Core.withObject
              "AdvertiserLandingPagesListResponse"
              (\ o ->
                 AdvertiserLandingPagesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "landingPages")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           AdvertiserLandingPagesListResponse
         where
        toJSON AdvertiserLandingPagesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("landingPages" Core..=) Core.<$> landingPages,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Advertiser List Response
--
-- /See:/ 'newAdvertisersListResponse' smart constructor.
data AdvertisersListResponse = AdvertisersListResponse
    {
      -- | Advertiser collection.
      advertisers :: (Core.Maybe [Advertiser])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertisersListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertisersListResponse' with the minimum fields required to make a request.
newAdvertisersListResponse 
    ::  AdvertisersListResponse
newAdvertisersListResponse =
  AdvertisersListResponse
    { advertisers = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON AdvertisersListResponse where
        parseJSON
          = Core.withObject "AdvertisersListResponse"
              (\ o ->
                 AdvertisersListResponse Core.<$>
                   (o Core..:? "advertisers") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON AdvertisersListResponse where
        toJSON AdvertisersListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("advertisers" Core..=) Core.<$> advertisers,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Audience Segment.
--
-- /See:/ 'newAudienceSegment' smart constructor.
data AudienceSegment = AudienceSegment
    {
      -- | Weight allocated to this segment. The weight assigned will be understood in proportion to the weights assigned to other segments in the same segment group. Acceptable values are 1 to 1000, inclusive.
      allocation :: (Core.Maybe Core.Int32)
      -- | ID of this audience segment. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Name of this audience segment. This is a required field and must be less than 65 characters long.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AudienceSegment' with the minimum fields required to make a request.
newAudienceSegment 
    ::  AudienceSegment
newAudienceSegment =
  AudienceSegment
    {allocation = Core.Nothing, id = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AudienceSegment where
        parseJSON
          = Core.withObject "AudienceSegment"
              (\ o ->
                 AudienceSegment Core.<$>
                   (o Core..:? "allocation") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON AudienceSegment where
        toJSON AudienceSegment{..}
          = Core.object
              (Core.catMaybes
                 [("allocation" Core..=) Core.<$> allocation,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name])


-- | Audience Segment Group.
--
-- /See:/ 'newAudienceSegmentGroup' smart constructor.
data AudienceSegmentGroup = AudienceSegmentGroup
    {
      -- | Audience segments assigned to this group. The number of segments must be between 2 and 100.
      audienceSegments :: (Core.Maybe [AudienceSegment])
      -- | ID of this audience segment group. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Name of this audience segment group. This is a required field and must be less than 65 characters long.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AudienceSegmentGroup' with the minimum fields required to make a request.
newAudienceSegmentGroup 
    ::  AudienceSegmentGroup
newAudienceSegmentGroup =
  AudienceSegmentGroup
    {audienceSegments = Core.Nothing, id = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AudienceSegmentGroup where
        parseJSON
          = Core.withObject "AudienceSegmentGroup"
              (\ o ->
                 AudienceSegmentGroup Core.<$>
                   (o Core..:? "audienceSegments") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON AudienceSegmentGroup where
        toJSON AudienceSegmentGroup{..}
          = Core.object
              (Core.catMaybes
                 [("audienceSegments" Core..=) Core.<$>
                    audienceSegments,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name])


-- | List account, subaccount, advertiser, and campaign associated with a given Billing Profile.
--
-- /See:/ 'newBillingAssignment' smart constructor.
data BillingAssignment = BillingAssignment
    {
      -- | ID of the account associated with the billing assignment.This is a read-only, auto-generated field.
      accountId :: (Core.Maybe Core.Text)
      -- | ID of the advertiser associated with the billing assignment.Wildcard (*) means this assignment is not limited to a single advertiser
    , advertiserId :: (Core.Maybe Core.Text)
      -- | ID of the campaign associated with the billing assignment. Wildcard (*) means this assignment is not limited to a single campaign
    , campaignId :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#billingAssignment\".
    , kind :: (Core.Maybe Core.Text)
      -- | ID of the subaccount associated with the billing assignment.Wildcard (*) means this assignment is not limited to a single subaccountThis is a read-only, auto-generated field.
    , subaccountId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingAssignment' with the minimum fields required to make a request.
newBillingAssignment 
    ::  BillingAssignment
newBillingAssignment =
  BillingAssignment
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , campaignId = Core.Nothing
    , kind = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON BillingAssignment where
        parseJSON
          = Core.withObject "BillingAssignment"
              (\ o ->
                 BillingAssignment Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "advertiserId")
                     Core.<*> (o Core..:? "campaignId")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "subaccountId"))

instance Core.ToJSON BillingAssignment where
        toJSON BillingAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("advertiserId" Core..=) Core.<$> advertiserId,
                  ("campaignId" Core..=) Core.<$> campaignId,
                  ("kind" Core..=) Core.<$> kind,
                  ("subaccountId" Core..=) Core.<$> subaccountId])


-- | Billing assignment List Response
--
-- /See:/ 'newBillingAssignmentsListResponse' smart constructor.
data BillingAssignmentsListResponse = BillingAssignmentsListResponse
    {
      -- | Billing assignments collection.
      billingAssignments :: (Core.Maybe [BillingAssignment])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#billingAssignmentsListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingAssignmentsListResponse' with the minimum fields required to make a request.
newBillingAssignmentsListResponse 
    ::  BillingAssignmentsListResponse
newBillingAssignmentsListResponse =
  BillingAssignmentsListResponse
    {billingAssignments = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON BillingAssignmentsListResponse
         where
        parseJSON
          = Core.withObject "BillingAssignmentsListResponse"
              (\ o ->
                 BillingAssignmentsListResponse Core.<$>
                   (o Core..:? "billingAssignments") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON BillingAssignmentsListResponse
         where
        toJSON BillingAssignmentsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("billingAssignments" Core..=) Core.<$>
                    billingAssignments,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains properties of a Campaign Manager Billing Profile.
--
-- /See:/ 'newBillingProfile' smart constructor.
data BillingProfile = BillingProfile
    {
      -- | Consolidated invoice option for this billing profile. Used to get a single, consolidated invoice across the chosen invoice level.
      consolidatedInvoice :: (Core.Maybe Core.Bool)
      -- | Country code of this billing profile.This is a read-only field.
    , countryCode :: (Core.Maybe Core.Text)
      -- | Billing currency code in ISO 4217 format.This is a read-only field.
    , currencyCode :: (Core.Maybe Core.Text)
      -- | ID of this billing profile. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Invoice level for this billing profile. Used to group fees into separate invoices by account, advertiser, or campaign.
    , invoiceLevel :: (Core.Maybe BillingProfile_InvoiceLevel)
      -- | True if the billing profile is the account default profile. This is a read-only field.
    , isDefault :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#billingProfile\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this billing profile. This is a required field and must be less than 256 characters long and must be unique among billing profile in the same account.
    , name :: (Core.Maybe Core.Text)
      -- | The ID of the payment account the billing profile belongs to. This is a read-only field.
    , paymentsAccountId :: (Core.Maybe Core.Text)
      -- | The ID of the payment customer the billing profile belongs to. This is a read-only field.
    , paymentsCustomerId :: (Core.Maybe Core.Text)
      -- | Purchase order (PO) for this billing profile. This PO number is used in the invoices for all of the advertisers in this billing profile.
    , purchaseOrder :: (Core.Maybe Core.Text)
      -- | The ID of the secondary payment customer the billing profile belongs to. This is a read-only field.
    , secondaryPaymentsCustomerId :: (Core.Maybe Core.Text)
      -- | Status of this billing profile.This is a read-only field.
    , status :: (Core.Maybe BillingProfile_Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingProfile' with the minimum fields required to make a request.
newBillingProfile 
    ::  BillingProfile
newBillingProfile =
  BillingProfile
    { consolidatedInvoice = Core.Nothing
    , countryCode = Core.Nothing
    , currencyCode = Core.Nothing
    , id = Core.Nothing
    , invoiceLevel = Core.Nothing
    , isDefault = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , paymentsAccountId = Core.Nothing
    , paymentsCustomerId = Core.Nothing
    , purchaseOrder = Core.Nothing
    , secondaryPaymentsCustomerId = Core.Nothing
    , status = Core.Nothing
    }

instance Core.FromJSON BillingProfile where
        parseJSON
          = Core.withObject "BillingProfile"
              (\ o ->
                 BillingProfile Core.<$>
                   (o Core..:? "consolidatedInvoice") Core.<*>
                     (o Core..:? "countryCode")
                     Core.<*> (o Core..:? "currencyCode")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "invoiceLevel")
                     Core.<*> (o Core..:? "isDefault")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "paymentsAccountId")
                     Core.<*> (o Core..:? "paymentsCustomerId")
                     Core.<*> (o Core..:? "purchaseOrder")
                     Core.<*> (o Core..:? "secondaryPaymentsCustomerId")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON BillingProfile where
        toJSON BillingProfile{..}
          = Core.object
              (Core.catMaybes
                 [("consolidatedInvoice" Core..=) Core.<$>
                    consolidatedInvoice,
                  ("countryCode" Core..=) Core.<$> countryCode,
                  ("currencyCode" Core..=) Core.<$> currencyCode,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("invoiceLevel" Core..=) Core.<$> invoiceLevel,
                  ("isDefault" Core..=) Core.<$> isDefault,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("paymentsAccountId" Core..=) Core.<$>
                    paymentsAccountId,
                  ("paymentsCustomerId" Core..=) Core.<$>
                    paymentsCustomerId,
                  ("purchaseOrder" Core..=) Core.<$> purchaseOrder,
                  ("secondaryPaymentsCustomerId" Core..=) Core.<$>
                    secondaryPaymentsCustomerId,
                  ("status" Core..=) Core.<$> status])


-- | Billing profile List Response
--
-- /See:/ 'newBillingProfilesListResponse' smart constructor.
data BillingProfilesListResponse = BillingProfilesListResponse
    {
      -- | Billing profiles collection.
      billingProfiles :: (Core.Maybe [BillingProfile])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#billingProfilesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingProfilesListResponse' with the minimum fields required to make a request.
newBillingProfilesListResponse 
    ::  BillingProfilesListResponse
newBillingProfilesListResponse =
  BillingProfilesListResponse
    { billingProfiles = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON BillingProfilesListResponse
         where
        parseJSON
          = Core.withObject "BillingProfilesListResponse"
              (\ o ->
                 BillingProfilesListResponse Core.<$>
                   (o Core..:? "billingProfiles") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON BillingProfilesListResponse
         where
        toJSON BillingProfilesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("billingProfiles" Core..=) Core.<$>
                    billingProfiles,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newBillingRate' smart constructor.
data BillingRate = BillingRate
    {
      -- | Billing currency code in ISO 4217 format.
      currencyCode :: (Core.Maybe Core.Text)
      -- | End date of this billing rate.
    , endDate :: (Core.Maybe Core.Text)
      -- | ID of this billing rate.
    , id :: (Core.Maybe Core.Int64)
      -- | Name of this billing rate. This must be less than 256 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Flat rate in micros of this billing rate. This cannot co-exist with tiered rate.
    , rateInMicros :: (Core.Maybe Core.Int64)
      -- | Start date of this billing rate.
    , startDate :: (Core.Maybe Core.Text)
      -- | Tiered rate of this billing rate. This cannot co-exist with flat rate.
    , tieredRates :: (Core.Maybe [BillingRateTieredRate])
      -- | Type of this billing rate.
    , type' :: (Core.Maybe BillingRate_Type)
      -- | Unit of measure for this billing rate.
    , unitOfMeasure :: (Core.Maybe BillingRate_UnitOfMeasure)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingRate' with the minimum fields required to make a request.
newBillingRate 
    ::  BillingRate
newBillingRate =
  BillingRate
    { currencyCode = Core.Nothing
    , endDate = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , rateInMicros = Core.Nothing
    , startDate = Core.Nothing
    , tieredRates = Core.Nothing
    , type' = Core.Nothing
    , unitOfMeasure = Core.Nothing
    }

instance Core.FromJSON BillingRate where
        parseJSON
          = Core.withObject "BillingRate"
              (\ o ->
                 BillingRate Core.<$>
                   (o Core..:? "currencyCode") Core.<*>
                     (o Core..:? "endDate")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "rateInMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "tieredRates")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "unitOfMeasure"))

instance Core.ToJSON BillingRate where
        toJSON BillingRate{..}
          = Core.object
              (Core.catMaybes
                 [("currencyCode" Core..=) Core.<$> currencyCode,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("rateInMicros" Core..=) Core.. Core.AsText Core.<$>
                    rateInMicros,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("tieredRates" Core..=) Core.<$> tieredRates,
                  ("type" Core..=) Core.<$> type',
                  ("unitOfMeasure" Core..=) Core.<$> unitOfMeasure])


--
-- /See:/ 'newBillingRateTieredRate' smart constructor.
data BillingRateTieredRate = BillingRateTieredRate
    {
      -- | The maximum for this tier range.
      highValue :: (Core.Maybe Core.Int64)
      -- | The minimum for this tier range.
    , lowValue :: (Core.Maybe Core.Int64)
      -- | Rate in micros for this tier.
    , rateInMicros :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingRateTieredRate' with the minimum fields required to make a request.
newBillingRateTieredRate 
    ::  BillingRateTieredRate
newBillingRateTieredRate =
  BillingRateTieredRate
    { highValue = Core.Nothing
    , lowValue = Core.Nothing
    , rateInMicros = Core.Nothing
    }

instance Core.FromJSON BillingRateTieredRate where
        parseJSON
          = Core.withObject "BillingRateTieredRate"
              (\ o ->
                 BillingRateTieredRate Core.<$>
                   (o Core..:? "highValue" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "lowValue" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "rateInMicros" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON BillingRateTieredRate where
        toJSON BillingRateTieredRate{..}
          = Core.object
              (Core.catMaybes
                 [("highValue" Core..=) Core.. Core.AsText Core.<$>
                    highValue,
                  ("lowValue" Core..=) Core.. Core.AsText Core.<$>
                    lowValue,
                  ("rateInMicros" Core..=) Core.. Core.AsText Core.<$>
                    rateInMicros])


-- | Billing Rate List Response
--
-- /See:/ 'newBillingRatesListResponse' smart constructor.
data BillingRatesListResponse = BillingRatesListResponse
    {
      -- | Billing rates collection.
      billingRates :: (Core.Maybe [BillingRate])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#billingRatesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingRatesListResponse' with the minimum fields required to make a request.
newBillingRatesListResponse 
    ::  BillingRatesListResponse
newBillingRatesListResponse =
  BillingRatesListResponse
    { billingRates = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON BillingRatesListResponse where
        parseJSON
          = Core.withObject "BillingRatesListResponse"
              (\ o ->
                 BillingRatesListResponse Core.<$>
                   (o Core..:? "billingRates") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON BillingRatesListResponse where
        toJSON BillingRatesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("billingRates" Core..=) Core.<$> billingRates,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains information about a browser that can be targeted by ads.
--
-- /See:/ 'newBrowser' smart constructor.
data Browser = Browser
    {
      -- | ID referring to this grouping of browser and version numbers. This is the ID used for targeting.
      browserVersionId :: (Core.Maybe Core.Int64)
      -- | DART ID of this browser. This is the ID used when generating reports.
    , dartId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#browser\".
    , kind :: (Core.Maybe Core.Text)
      -- | Major version number (leftmost number) of this browser. For example, for Chrome 5.0.376.86 beta, this field should be set to 5. An asterisk (/) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome /.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can\'t tell which version it is.
    , majorVersion :: (Core.Maybe Core.Text)
      -- | Minor version number (number after first dot on left) of this browser. For example, for Chrome 5.0.375.86 beta, this field should be set to 0. An asterisk (/) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome /.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can\'t tell which version it is.
    , minorVersion :: (Core.Maybe Core.Text)
      -- | Name of this browser.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Browser' with the minimum fields required to make a request.
newBrowser 
    ::  Browser
newBrowser =
  Browser
    { browserVersionId = Core.Nothing
    , dartId = Core.Nothing
    , kind = Core.Nothing
    , majorVersion = Core.Nothing
    , minorVersion = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Browser where
        parseJSON
          = Core.withObject "Browser"
              (\ o ->
                 Browser Core.<$>
                   (o Core..:? "browserVersionId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "dartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "majorVersion")
                     Core.<*> (o Core..:? "minorVersion")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Browser where
        toJSON Browser{..}
          = Core.object
              (Core.catMaybes
                 [("browserVersionId" Core..=) Core.. Core.AsText
                    Core.<$> browserVersionId,
                  ("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("kind" Core..=) Core.<$> kind,
                  ("majorVersion" Core..=) Core.<$> majorVersion,
                  ("minorVersion" Core..=) Core.<$> minorVersion,
                  ("name" Core..=) Core.<$> name])


-- | Browser List Response
--
-- /See:/ 'newBrowsersListResponse' smart constructor.
data BrowsersListResponse = BrowsersListResponse
    {
      -- | Browser collection.
      browsers :: (Core.Maybe [Browser])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#browsersListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BrowsersListResponse' with the minimum fields required to make a request.
newBrowsersListResponse 
    ::  BrowsersListResponse
newBrowsersListResponse =
  BrowsersListResponse {browsers = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON BrowsersListResponse where
        parseJSON
          = Core.withObject "BrowsersListResponse"
              (\ o ->
                 BrowsersListResponse Core.<$>
                   (o Core..:? "browsers") Core.<*> (o Core..:? "kind"))

instance Core.ToJSON BrowsersListResponse where
        toJSON BrowsersListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("browsers" Core..=) Core.<$> browsers,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains properties of a Campaign Manager campaign.
--
-- /See:/ 'newCampaign' smart constructor.
data Campaign = Campaign
    {
      -- | Account ID of this campaign. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Ad blocking settings for this campaign.
    , adBlockingConfiguration :: (Core.Maybe AdBlockingConfiguration)
      -- | Additional creative optimization configurations for the campaign.
    , additionalCreativeOptimizationConfigurations :: (Core.Maybe [CreativeOptimizationConfiguration])
      -- | Advertiser group ID of the associated advertiser.
    , advertiserGroupId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this campaign. This is a required field.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the advertiser ID of this campaign. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether this campaign has been archived.
    , archived :: (Core.Maybe Core.Bool)
      -- | Audience segment groups assigned to this campaign. Cannot have more than 300 segment groups.
    , audienceSegmentGroups :: (Core.Maybe [AudienceSegmentGroup])
      -- | Billing invoice code included in the Campaign Manager client billing invoices associated with the campaign.
    , billingInvoiceCode :: (Core.Maybe Core.Text)
      -- | Click-through URL suffix override properties for this campaign.
    , clickThroughUrlSuffixProperties :: (Core.Maybe ClickThroughUrlSuffixProperties)
      -- | Arbitrary comments about this campaign. Must be less than 256 characters long.
    , comment :: (Core.Maybe Core.Text)
      -- | Information about the creation of this campaign. This is a read-only field.
    , createInfo :: (Core.Maybe LastModifiedInfo)
      -- | List of creative group IDs that are assigned to the campaign.
    , creativeGroupIds :: (Core.Maybe [Core.Int64])
      -- | Creative optimization configuration for the campaign.
    , creativeOptimizationConfiguration :: (Core.Maybe CreativeOptimizationConfiguration)
      -- | Click-through event tag ID override properties for this campaign.
    , defaultClickThroughEventTagProperties :: (Core.Maybe DefaultClickThroughEventTagProperties)
      -- | The default landing page ID for this campaign.
    , defaultLandingPageId :: (Core.Maybe Core.Int64)
      -- | 
    , endDate :: (Core.Maybe Core.Date)
      -- | Overrides that can be used to activate or deactivate advertiser event tags.
    , eventTagOverrides :: (Core.Maybe [EventTagOverride])
      -- | External ID for this campaign.
    , externalId :: (Core.Maybe Core.Text)
      -- | ID of this campaign. This is a read-only auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this campaign. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaign\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this campaign. This is a read-only field.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Measurement partner campaign link for tag wrapping.
    , measurementPartnerLink :: (Core.Maybe MeasurementPartnerCampaignLink)
      -- | Name of this campaign. This is a required field and must be less than 512 characters long and unique among campaigns of the same advertiser.
    , name :: (Core.Maybe Core.Text)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | Subaccount ID of this campaign. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Campaign' with the minimum fields required to make a request.
newCampaign 
    ::  Campaign
newCampaign =
  Campaign
    { accountId = Core.Nothing
    , adBlockingConfiguration = Core.Nothing
    , additionalCreativeOptimizationConfigurations = Core.Nothing
    , advertiserGroupId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , archived = Core.Nothing
    , audienceSegmentGroups = Core.Nothing
    , billingInvoiceCode = Core.Nothing
    , clickThroughUrlSuffixProperties = Core.Nothing
    , comment = Core.Nothing
    , createInfo = Core.Nothing
    , creativeGroupIds = Core.Nothing
    , creativeOptimizationConfiguration = Core.Nothing
    , defaultClickThroughEventTagProperties = Core.Nothing
    , defaultLandingPageId = Core.Nothing
    , endDate = Core.Nothing
    , eventTagOverrides = Core.Nothing
    , externalId = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , measurementPartnerLink = Core.Nothing
    , name = Core.Nothing
    , startDate = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON Campaign where
        parseJSON
          = Core.withObject "Campaign"
              (\ o ->
                 Campaign Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "adBlockingConfiguration")
                     Core.<*>
                     (o Core..:?
                        "additionalCreativeOptimizationConfigurations")
                     Core.<*>
                     (o Core..:? "advertiserGroupId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "archived")
                     Core.<*> (o Core..:? "audienceSegmentGroups")
                     Core.<*> (o Core..:? "billingInvoiceCode")
                     Core.<*>
                     (o Core..:? "clickThroughUrlSuffixProperties")
                     Core.<*> (o Core..:? "comment")
                     Core.<*> (o Core..:? "createInfo")
                     Core.<*>
                     (o Core..:? "creativeGroupIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*>
                     (o Core..:? "creativeOptimizationConfiguration")
                     Core.<*>
                     (o Core..:? "defaultClickThroughEventTagProperties")
                     Core.<*>
                     (o Core..:? "defaultLandingPageId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "endDate")
                     Core.<*> (o Core..:? "eventTagOverrides")
                     Core.<*> (o Core..:? "externalId")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "measurementPartnerLink")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Campaign where
        toJSON Campaign{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("adBlockingConfiguration" Core..=) Core.<$>
                    adBlockingConfiguration,
                  ("additionalCreativeOptimizationConfigurations"
                     Core..=)
                    Core.<$>
                    additionalCreativeOptimizationConfigurations,
                  ("advertiserGroupId" Core..=) Core.. Core.AsText
                    Core.<$> advertiserGroupId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("archived" Core..=) Core.<$> archived,
                  ("audienceSegmentGroups" Core..=) Core.<$>
                    audienceSegmentGroups,
                  ("billingInvoiceCode" Core..=) Core.<$>
                    billingInvoiceCode,
                  ("clickThroughUrlSuffixProperties" Core..=) Core.<$>
                    clickThroughUrlSuffixProperties,
                  ("comment" Core..=) Core.<$> comment,
                  ("createInfo" Core..=) Core.<$> createInfo,
                  ("creativeGroupIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> creativeGroupIds,
                  ("creativeOptimizationConfiguration" Core..=)
                    Core.<$> creativeOptimizationConfiguration,
                  ("defaultClickThroughEventTagProperties" Core..=)
                    Core.<$> defaultClickThroughEventTagProperties,
                  ("defaultLandingPageId" Core..=) Core.. Core.AsText
                    Core.<$> defaultLandingPageId,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("eventTagOverrides" Core..=) Core.<$>
                    eventTagOverrides,
                  ("externalId" Core..=) Core.<$> externalId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("measurementPartnerLink" Core..=) Core.<$>
                    measurementPartnerLink,
                  ("name" Core..=) Core.<$> name,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Identifies a creative which has been associated with a given campaign.
--
-- /See:/ 'newCampaignCreativeAssociation' smart constructor.
data CampaignCreativeAssociation = CampaignCreativeAssociation
    {
      -- | ID of the creative associated with the campaign. This is a required field.
      creativeId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignCreativeAssociation\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CampaignCreativeAssociation' with the minimum fields required to make a request.
newCampaignCreativeAssociation 
    ::  CampaignCreativeAssociation
newCampaignCreativeAssociation =
  CampaignCreativeAssociation {creativeId = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON CampaignCreativeAssociation
         where
        parseJSON
          = Core.withObject "CampaignCreativeAssociation"
              (\ o ->
                 CampaignCreativeAssociation Core.<$>
                   (o Core..:? "creativeId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON CampaignCreativeAssociation
         where
        toJSON CampaignCreativeAssociation{..}
          = Core.object
              (Core.catMaybes
                 [("creativeId" Core..=) Core.. Core.AsText Core.<$>
                    creativeId,
                  ("kind" Core..=) Core.<$> kind])


-- | Campaign Creative Association List Response
--
-- /See:/ 'newCampaignCreativeAssociationsListResponse' smart constructor.
data CampaignCreativeAssociationsListResponse = CampaignCreativeAssociationsListResponse
    {
      -- | Campaign creative association collection
      campaignCreativeAssociations :: (Core.Maybe [CampaignCreativeAssociation])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignCreativeAssociationsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CampaignCreativeAssociationsListResponse' with the minimum fields required to make a request.
newCampaignCreativeAssociationsListResponse 
    ::  CampaignCreativeAssociationsListResponse
newCampaignCreativeAssociationsListResponse =
  CampaignCreativeAssociationsListResponse
    { campaignCreativeAssociations = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           CampaignCreativeAssociationsListResponse
         where
        parseJSON
          = Core.withObject
              "CampaignCreativeAssociationsListResponse"
              (\ o ->
                 CampaignCreativeAssociationsListResponse Core.<$>
                   (o Core..:? "campaignCreativeAssociations") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           CampaignCreativeAssociationsListResponse
         where
        toJSON CampaignCreativeAssociationsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("campaignCreativeAssociations" Core..=) Core.<$>
                    campaignCreativeAssociations,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Represents a summarized campaign information associated with this invoice.
--
-- /See:/ 'newCampaignSummary' smart constructor.
data CampaignSummary = CampaignSummary
    {
      -- | Campaign billing invoice code.
      billingInvoiceCode :: (Core.Maybe Core.Text)
      -- | Campaign ID.
    , campaignId :: (Core.Maybe Core.Int64)
      -- | The pre-tax amount for this campaign, in micros of the invoice\'s currency.
    , preTaxAmountMicros :: (Core.Maybe Core.Int64)
      -- | The tax amount for this campaign, in micros of the invoice\'s currency.
    , taxAmountMicros :: (Core.Maybe Core.Int64)
      -- | The total amount of charges for this campaign, in micros of the invoice\'s currency.
    , totalAmountMicros :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CampaignSummary' with the minimum fields required to make a request.
newCampaignSummary 
    ::  CampaignSummary
newCampaignSummary =
  CampaignSummary
    { billingInvoiceCode = Core.Nothing
    , campaignId = Core.Nothing
    , preTaxAmountMicros = Core.Nothing
    , taxAmountMicros = Core.Nothing
    , totalAmountMicros = Core.Nothing
    }

instance Core.FromJSON CampaignSummary where
        parseJSON
          = Core.withObject "CampaignSummary"
              (\ o ->
                 CampaignSummary Core.<$>
                   (o Core..:? "billingInvoiceCode") Core.<*>
                     (o Core..:? "campaignId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "preTaxAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "taxAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "totalAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CampaignSummary where
        toJSON CampaignSummary{..}
          = Core.object
              (Core.catMaybes
                 [("billingInvoiceCode" Core..=) Core.<$>
                    billingInvoiceCode,
                  ("campaignId" Core..=) Core.. Core.AsText Core.<$>
                    campaignId,
                  ("preTaxAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> preTaxAmountMicros,
                  ("taxAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> taxAmountMicros,
                  ("totalAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> totalAmountMicros])


-- | Campaign List Response
--
-- /See:/ 'newCampaignsListResponse' smart constructor.
data CampaignsListResponse = CampaignsListResponse
    {
      -- | Campaign collection.
      campaigns :: (Core.Maybe [Campaign])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CampaignsListResponse' with the minimum fields required to make a request.
newCampaignsListResponse 
    ::  CampaignsListResponse
newCampaignsListResponse =
  CampaignsListResponse
    { campaigns = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON CampaignsListResponse where
        parseJSON
          = Core.withObject "CampaignsListResponse"
              (\ o ->
                 CampaignsListResponse Core.<$>
                   (o Core..:? "campaigns") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CampaignsListResponse where
        toJSON CampaignsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("campaigns" Core..=) Core.<$> campaigns,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains additional information about cart data. This field may only be used when calling batchinsert; it is not supported by batchupdate.
--
-- /See:/ 'newCartData' smart constructor.
data CartData = CartData
    {
      -- | Data of the items purchased.
      items :: (Core.Maybe [CartDataItem])
      -- | The feed labels associated with the feed where your items are uploaded. For more information, please refer to ​​ https:\/\/support.google.com\/merchants\/answer\/12453549. This is a required field.
    , merchantFeedLabel :: (Core.Maybe Core.Text)
      -- | The language associated with the feed where your items are uploaded. Use ISO 639-1 language codes. This field is needed only when item IDs are not unique across multiple Merchant Center feeds.
    , merchantFeedLanguage :: (Core.Maybe Core.Text)
      -- | The Merchant Center ID where the items are uploaded. This is a required field.
    , merchantId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CartData' with the minimum fields required to make a request.
newCartData 
    ::  CartData
newCartData =
  CartData
    { items = Core.Nothing
    , merchantFeedLabel = Core.Nothing
    , merchantFeedLanguage = Core.Nothing
    , merchantId = Core.Nothing
    }

instance Core.FromJSON CartData where
        parseJSON
          = Core.withObject "CartData"
              (\ o ->
                 CartData Core.<$>
                   (o Core..:? "items") Core.<*>
                     (o Core..:? "merchantFeedLabel")
                     Core.<*> (o Core..:? "merchantFeedLanguage")
                     Core.<*>
                     (o Core..:? "merchantId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CartData where
        toJSON CartData{..}
          = Core.object
              (Core.catMaybes
                 [("items" Core..=) Core.<$> items,
                  ("merchantFeedLabel" Core..=) Core.<$>
                    merchantFeedLabel,
                  ("merchantFeedLanguage" Core..=) Core.<$>
                    merchantFeedLanguage,
                  ("merchantId" Core..=) Core.. Core.AsText Core.<$>
                    merchantId])


-- | Contains data of the items purchased.
--
-- /See:/ 'newCartDataItem' smart constructor.
data CartDataItem = CartDataItem
    {
      -- | The shopping id of the item. Must be equal to the Merchant Center product identifier. This is a required field.
      itemId :: (Core.Maybe Core.Text)
      -- | Number of items sold. This is a required field.
    , quantity :: (Core.Maybe Core.Int32)
      -- | Unit price excluding tax, shipping, and any transaction level discounts. Interpreted in CM360 Floodlight config parent advertiser\'s currency code. This is a required field.
    , unitPrice :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CartDataItem' with the minimum fields required to make a request.
newCartDataItem 
    ::  CartDataItem
newCartDataItem =
  CartDataItem
    {itemId = Core.Nothing, quantity = Core.Nothing, unitPrice = Core.Nothing}

instance Core.FromJSON CartDataItem where
        parseJSON
          = Core.withObject "CartDataItem"
              (\ o ->
                 CartDataItem Core.<$>
                   (o Core..:? "itemId") Core.<*>
                     (o Core..:? "quantity")
                     Core.<*> (o Core..:? "unitPrice"))

instance Core.ToJSON CartDataItem where
        toJSON CartDataItem{..}
          = Core.object
              (Core.catMaybes
                 [("itemId" Core..=) Core.<$> itemId,
                  ("quantity" Core..=) Core.<$> quantity,
                  ("unitPrice" Core..=) Core.<$> unitPrice])


-- | Describes a change that a user has made to a resource.
--
-- /See:/ 'newChangeLog' smart constructor.
data ChangeLog = ChangeLog
    {
      -- | Account ID of the modified object.
      accountId :: (Core.Maybe Core.Int64)
      -- | Action which caused the change.
    , action :: (Core.Maybe Core.Text)
      -- | 
    , changeTime :: (Core.Maybe Core.DateTime)
      -- | Field name of the object which changed.
    , fieldName :: (Core.Maybe Core.Text)
      -- | ID of this change log.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#changeLog\".
    , kind :: (Core.Maybe Core.Text)
      -- | New value of the object field.
    , newValue' :: (Core.Maybe Core.Text)
      -- | ID of the object of this change log. The object could be a campaign, placement, ad, or other type.
    , objectId :: (Core.Maybe Core.Int64)
      -- | Object type of the change log.
    , objectType :: (Core.Maybe Core.Text)
      -- | Old value of the object field.
    , oldValue :: (Core.Maybe Core.Text)
      -- | Subaccount ID of the modified object.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Transaction ID of this change log. When a single API call results in many changes, each change will have a separate ID in the change log but will share the same transactionId.
    , transactionId :: (Core.Maybe Core.Int64)
      -- | ID of the user who modified the object.
    , userProfileId :: (Core.Maybe Core.Int64)
      -- | User profile name of the user who modified the object.
    , userProfileName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeLog' with the minimum fields required to make a request.
newChangeLog 
    ::  ChangeLog
newChangeLog =
  ChangeLog
    { accountId = Core.Nothing
    , action = Core.Nothing
    , changeTime = Core.Nothing
    , fieldName = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , newValue' = Core.Nothing
    , objectId = Core.Nothing
    , objectType = Core.Nothing
    , oldValue = Core.Nothing
    , subaccountId = Core.Nothing
    , transactionId = Core.Nothing
    , userProfileId = Core.Nothing
    , userProfileName = Core.Nothing
    }

instance Core.FromJSON ChangeLog where
        parseJSON
          = Core.withObject "ChangeLog"
              (\ o ->
                 ChangeLog Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "action")
                     Core.<*> (o Core..:? "changeTime")
                     Core.<*> (o Core..:? "fieldName")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "newValue")
                     Core.<*>
                     (o Core..:? "objectId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectType")
                     Core.<*> (o Core..:? "oldValue")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "transactionId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "userProfileId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "userProfileName"))

instance Core.ToJSON ChangeLog where
        toJSON ChangeLog{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("action" Core..=) Core.<$> action,
                  ("changeTime" Core..=) Core.<$> changeTime,
                  ("fieldName" Core..=) Core.<$> fieldName,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("newValue" Core..=) Core.<$> newValue',
                  ("objectId" Core..=) Core.. Core.AsText Core.<$>
                    objectId,
                  ("objectType" Core..=) Core.<$> objectType,
                  ("oldValue" Core..=) Core.<$> oldValue,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("transactionId" Core..=) Core.. Core.AsText Core.<$>
                    transactionId,
                  ("userProfileId" Core..=) Core.. Core.AsText Core.<$>
                    userProfileId,
                  ("userProfileName" Core..=) Core.<$>
                    userProfileName])


-- | Change Log List Response
--
-- /See:/ 'newChangeLogsListResponse' smart constructor.
data ChangeLogsListResponse = ChangeLogsListResponse
    {
      -- | Change log collection.
      changeLogs :: (Core.Maybe [ChangeLog])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#changeLogsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeLogsListResponse' with the minimum fields required to make a request.
newChangeLogsListResponse 
    ::  ChangeLogsListResponse
newChangeLogsListResponse =
  ChangeLogsListResponse
    { changeLogs = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ChangeLogsListResponse where
        parseJSON
          = Core.withObject "ChangeLogsListResponse"
              (\ o ->
                 ChangeLogsListResponse Core.<$>
                   (o Core..:? "changeLogs") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ChangeLogsListResponse where
        toJSON ChangeLogsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("changeLogs" Core..=) Core.<$> changeLogs,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | City List Response
--
-- /See:/ 'newCitiesListResponse' smart constructor.
data CitiesListResponse = CitiesListResponse
    {
      -- | City collection.
      cities :: (Core.Maybe [City])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#citiesListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CitiesListResponse' with the minimum fields required to make a request.
newCitiesListResponse 
    ::  CitiesListResponse
newCitiesListResponse =
  CitiesListResponse {cities = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON CitiesListResponse where
        parseJSON
          = Core.withObject "CitiesListResponse"
              (\ o ->
                 CitiesListResponse Core.<$>
                   (o Core..:? "cities") Core.<*> (o Core..:? "kind"))

instance Core.ToJSON CitiesListResponse where
        toJSON CitiesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("cities" Core..=) Core.<$> cities,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains information about a city that can be targeted by ads.
--
-- /See:/ 'newCity' smart constructor.
data City = City
    {
      -- | Country code of the country to which this city belongs.
      countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of the country to which this city belongs.
    , countryDartId :: (Core.Maybe Core.Int64)
      -- | DART ID of this city. This is the ID used for targeting and generating reports.
    , dartId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#city\".
    , kind :: (Core.Maybe Core.Text)
      -- | Metro region code of the metro region (DMA) to which this city belongs.
    , metroCode :: (Core.Maybe Core.Text)
      -- | ID of the metro region (DMA) to which this city belongs.
    , metroDmaId :: (Core.Maybe Core.Int64)
      -- | Name of this city.
    , name :: (Core.Maybe Core.Text)
      -- | Region code of the region to which this city belongs.
    , regionCode :: (Core.Maybe Core.Text)
      -- | DART ID of the region to which this city belongs.
    , regionDartId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'City' with the minimum fields required to make a request.
newCity 
    ::  City
newCity =
  City
    { countryCode = Core.Nothing
    , countryDartId = Core.Nothing
    , dartId = Core.Nothing
    , kind = Core.Nothing
    , metroCode = Core.Nothing
    , metroDmaId = Core.Nothing
    , name = Core.Nothing
    , regionCode = Core.Nothing
    , regionDartId = Core.Nothing
    }

instance Core.FromJSON City where
        parseJSON
          = Core.withObject "City"
              (\ o ->
                 City Core.<$>
                   (o Core..:? "countryCode") Core.<*>
                     (o Core..:? "countryDartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "dartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metroCode")
                     Core.<*>
                     (o Core..:? "metroDmaId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "regionCode")
                     Core.<*>
                     (o Core..:? "regionDartId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON City where
        toJSON City{..}
          = Core.object
              (Core.catMaybes
                 [("countryCode" Core..=) Core.<$> countryCode,
                  ("countryDartId" Core..=) Core.. Core.AsText Core.<$>
                    countryDartId,
                  ("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("kind" Core..=) Core.<$> kind,
                  ("metroCode" Core..=) Core.<$> metroCode,
                  ("metroDmaId" Core..=) Core.. Core.AsText Core.<$>
                    metroDmaId,
                  ("name" Core..=) Core.<$> name,
                  ("regionCode" Core..=) Core.<$> regionCode,
                  ("regionDartId" Core..=) Core.. Core.AsText Core.<$>
                    regionDartId])


-- | Creative Click Tag.
--
-- /See:/ 'newClickTag' smart constructor.
data ClickTag = ClickTag
    {
      -- | Parameter value for the specified click tag. This field contains a click-through url.
      clickThroughUrl :: (Core.Maybe CreativeClickThroughUrl)
      -- | Advertiser event name associated with the click tag. This field is used by DISPLAY/IMAGE/GALLERY and HTML5/BANNER creatives. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
    , eventName :: (Core.Maybe Core.Text)
      -- | Parameter name for the specified click tag. For DISPLAY/IMAGE/GALLERY creative assets, this field must match the value of the creative asset\'s creativeAssetId.name field.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClickTag' with the minimum fields required to make a request.
newClickTag 
    ::  ClickTag
newClickTag =
  ClickTag
    { clickThroughUrl = Core.Nothing
    , eventName = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON ClickTag where
        parseJSON
          = Core.withObject "ClickTag"
              (\ o ->
                 ClickTag Core.<$>
                   (o Core..:? "clickThroughUrl") Core.<*>
                     (o Core..:? "eventName")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON ClickTag where
        toJSON ClickTag{..}
          = Core.object
              (Core.catMaybes
                 [("clickThroughUrl" Core..=) Core.<$>
                    clickThroughUrl,
                  ("eventName" Core..=) Core.<$> eventName,
                  ("name" Core..=) Core.<$> name])


-- | Click-through URL
--
-- /See:/ 'newClickThroughUrl' smart constructor.
data ClickThroughUrl = ClickThroughUrl
    {
      -- | Read-only convenience field representing the actual URL that will be used for this click-through. The URL is computed as follows: - If defaultLandingPage is enabled then the campaign\'s default landing page URL is assigned to this field. - If defaultLandingPage is not enabled and a landingPageId is specified then that landing page\'s URL is assigned to this field. - If neither of the above cases apply, then the customClickThroughUrl is assigned to this field.
      computedClickThroughUrl :: (Core.Maybe Core.Text)
      -- | Custom click-through URL. Applicable if the defaultLandingPage field is set to false and the landingPageId field is left unset.
    , customClickThroughUrl :: (Core.Maybe Core.Text)
      -- | Whether the campaign default landing page is used.
    , defaultLandingPage :: (Core.Maybe Core.Bool)
      -- | ID of the landing page for the click-through URL. Applicable if the defaultLandingPage field is set to false.
    , landingPageId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClickThroughUrl' with the minimum fields required to make a request.
newClickThroughUrl 
    ::  ClickThroughUrl
newClickThroughUrl =
  ClickThroughUrl
    { computedClickThroughUrl = Core.Nothing
    , customClickThroughUrl = Core.Nothing
    , defaultLandingPage = Core.Nothing
    , landingPageId = Core.Nothing
    }

instance Core.FromJSON ClickThroughUrl where
        parseJSON
          = Core.withObject "ClickThroughUrl"
              (\ o ->
                 ClickThroughUrl Core.<$>
                   (o Core..:? "computedClickThroughUrl") Core.<*>
                     (o Core..:? "customClickThroughUrl")
                     Core.<*> (o Core..:? "defaultLandingPage")
                     Core.<*>
                     (o Core..:? "landingPageId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON ClickThroughUrl where
        toJSON ClickThroughUrl{..}
          = Core.object
              (Core.catMaybes
                 [("computedClickThroughUrl" Core..=) Core.<$>
                    computedClickThroughUrl,
                  ("customClickThroughUrl" Core..=) Core.<$>
                    customClickThroughUrl,
                  ("defaultLandingPage" Core..=) Core.<$>
                    defaultLandingPage,
                  ("landingPageId" Core..=) Core.. Core.AsText Core.<$>
                    landingPageId])


-- | Click Through URL Suffix settings.
--
-- /See:/ 'newClickThroughUrlSuffixProperties' smart constructor.
data ClickThroughUrlSuffixProperties = ClickThroughUrlSuffixProperties
    {
      -- | Click-through URL suffix to apply to all ads in this entity\'s scope. Must be less than 128 characters long.
      clickThroughUrlSuffix :: (Core.Maybe Core.Text)
      -- | Whether this entity should override the inherited click-through URL suffix with its own defined value.
    , overrideInheritedSuffix :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClickThroughUrlSuffixProperties' with the minimum fields required to make a request.
newClickThroughUrlSuffixProperties 
    ::  ClickThroughUrlSuffixProperties
newClickThroughUrlSuffixProperties =
  ClickThroughUrlSuffixProperties
    { clickThroughUrlSuffix = Core.Nothing
    , overrideInheritedSuffix = Core.Nothing
    }

instance Core.FromJSON
           ClickThroughUrlSuffixProperties
         where
        parseJSON
          = Core.withObject "ClickThroughUrlSuffixProperties"
              (\ o ->
                 ClickThroughUrlSuffixProperties Core.<$>
                   (o Core..:? "clickThroughUrlSuffix") Core.<*>
                     (o Core..:? "overrideInheritedSuffix"))

instance Core.ToJSON ClickThroughUrlSuffixProperties
         where
        toJSON ClickThroughUrlSuffixProperties{..}
          = Core.object
              (Core.catMaybes
                 [("clickThroughUrlSuffix" Core..=) Core.<$>
                    clickThroughUrlSuffix,
                  ("overrideInheritedSuffix" Core..=) Core.<$>
                    overrideInheritedSuffix])


-- | Companion Click-through override.
--
-- /See:/ 'newCompanionClickThroughOverride' smart constructor.
data CompanionClickThroughOverride = CompanionClickThroughOverride
    {
      -- | Click-through URL of this companion click-through override.
      clickThroughUrl :: (Core.Maybe ClickThroughUrl)
      -- | ID of the creative for this companion click-through override.
    , creativeId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompanionClickThroughOverride' with the minimum fields required to make a request.
newCompanionClickThroughOverride 
    ::  CompanionClickThroughOverride
newCompanionClickThroughOverride =
  CompanionClickThroughOverride
    {clickThroughUrl = Core.Nothing, creativeId = Core.Nothing}

instance Core.FromJSON CompanionClickThroughOverride
         where
        parseJSON
          = Core.withObject "CompanionClickThroughOverride"
              (\ o ->
                 CompanionClickThroughOverride Core.<$>
                   (o Core..:? "clickThroughUrl") Core.<*>
                     (o Core..:? "creativeId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CompanionClickThroughOverride
         where
        toJSON CompanionClickThroughOverride{..}
          = Core.object
              (Core.catMaybes
                 [("clickThroughUrl" Core..=) Core.<$>
                    clickThroughUrl,
                  ("creativeId" Core..=) Core.. Core.AsText Core.<$>
                    creativeId])


-- | Companion Settings
--
-- /See:/ 'newCompanionSetting' smart constructor.
data CompanionSetting = CompanionSetting
    {
      -- | Whether companions are disabled for this placement.
      companionsDisabled :: (Core.Maybe Core.Bool)
      -- | Allowlist of companion sizes to be served to this placement. Set this list to null or empty to serve all companion sizes.
    , enabledSizes :: (Core.Maybe [Size])
      -- | Whether to serve only static images as companions.
    , imageOnly :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#companionSetting\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompanionSetting' with the minimum fields required to make a request.
newCompanionSetting 
    ::  CompanionSetting
newCompanionSetting =
  CompanionSetting
    { companionsDisabled = Core.Nothing
    , enabledSizes = Core.Nothing
    , imageOnly = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON CompanionSetting where
        parseJSON
          = Core.withObject "CompanionSetting"
              (\ o ->
                 CompanionSetting Core.<$>
                   (o Core..:? "companionsDisabled") Core.<*>
                     (o Core..:? "enabledSizes")
                     Core.<*> (o Core..:? "imageOnly")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON CompanionSetting where
        toJSON CompanionSetting{..}
          = Core.object
              (Core.catMaybes
                 [("companionsDisabled" Core..=) Core.<$>
                    companionsDisabled,
                  ("enabledSizes" Core..=) Core.<$> enabledSizes,
                  ("imageOnly" Core..=) Core.<$> imageOnly,
                  ("kind" Core..=) Core.<$> kind])


-- | Represents a response to the queryCompatibleFields method. Next ID: 10
--
-- /See:/ 'newCompatibleFields' smart constructor.
data CompatibleFields = CompatibleFields
    {
      -- | Contains items that are compatible to be selected for a report of type \"CROSS/DIMENSION/REACH\".
      crossDimensionReachReportCompatibleFields :: (Core.Maybe CrossDimensionReachReportCompatibleFields)
      -- | Contains items that are compatible to be selected for a report of type \"CROSS/MEDIA/REACH\".
    , crossMediaReachReportCompatibleFields :: (Core.Maybe CrossMediaReachReportCompatibleFields)
      -- | Contains items that are compatible to be selected for a report of type \"FLOODLIGHT\".
    , floodlightReportCompatibleFields :: (Core.Maybe FloodlightReportCompatibleFields)
      -- | The kind of resource this is, in this case dfareporting#compatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Contains items that are compatible to be selected for a report of type \"PATH/TO/CONVERSION\".
    , pathToConversionReportCompatibleFields :: (Core.Maybe PathToConversionReportCompatibleFields)
      -- | Contains items that are compatible to be selected for a report of type \"REACH\".
    , reachReportCompatibleFields :: (Core.Maybe ReachReportCompatibleFields)
      -- | Contains items that are compatible to be selected for a report of type \"STANDARD\".
    , reportCompatibleFields :: (Core.Maybe ReportCompatibleFields)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompatibleFields' with the minimum fields required to make a request.
newCompatibleFields 
    ::  CompatibleFields
newCompatibleFields =
  CompatibleFields
    { crossDimensionReachReportCompatibleFields = Core.Nothing
    , crossMediaReachReportCompatibleFields = Core.Nothing
    , floodlightReportCompatibleFields = Core.Nothing
    , kind = Core.Nothing
    , pathToConversionReportCompatibleFields = Core.Nothing
    , reachReportCompatibleFields = Core.Nothing
    , reportCompatibleFields = Core.Nothing
    }

instance Core.FromJSON CompatibleFields where
        parseJSON
          = Core.withObject "CompatibleFields"
              (\ o ->
                 CompatibleFields Core.<$>
                   (o Core..:?
                      "crossDimensionReachReportCompatibleFields")
                     Core.<*>
                     (o Core..:? "crossMediaReachReportCompatibleFields")
                     Core.<*>
                     (o Core..:? "floodlightReportCompatibleFields")
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "pathToConversionReportCompatibleFields")
                     Core.<*> (o Core..:? "reachReportCompatibleFields")
                     Core.<*> (o Core..:? "reportCompatibleFields"))

instance Core.ToJSON CompatibleFields where
        toJSON CompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("crossDimensionReachReportCompatibleFields"
                     Core..=)
                    Core.<$> crossDimensionReachReportCompatibleFields,
                  ("crossMediaReachReportCompatibleFields" Core..=)
                    Core.<$> crossMediaReachReportCompatibleFields,
                  ("floodlightReportCompatibleFields" Core..=) Core.<$>
                    floodlightReportCompatibleFields,
                  ("kind" Core..=) Core.<$> kind,
                  ("pathToConversionReportCompatibleFields" Core..=)
                    Core.<$> pathToConversionReportCompatibleFields,
                  ("reachReportCompatibleFields" Core..=) Core.<$>
                    reachReportCompatibleFields,
                  ("reportCompatibleFields" Core..=) Core.<$>
                    reportCompatibleFields])


-- | Contains information about an internet connection type that can be targeted by ads. Clients can use the connection type to target mobile vs. broadband users.
--
-- /See:/ 'newConnectionType' smart constructor.
data ConnectionType = ConnectionType
    {
      -- | ID of this connection type.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#connectionType\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this connection type.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConnectionType' with the minimum fields required to make a request.
newConnectionType 
    ::  ConnectionType
newConnectionType =
  ConnectionType {id = Core.Nothing, kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ConnectionType where
        parseJSON
          = Core.withObject "ConnectionType"
              (\ o ->
                 ConnectionType Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON ConnectionType where
        toJSON ConnectionType{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Connection Type List Response
--
-- /See:/ 'newConnectionTypesListResponse' smart constructor.
data ConnectionTypesListResponse = ConnectionTypesListResponse
    {
      -- | Collection of connection types such as broadband and mobile.
      connectionTypes :: (Core.Maybe [ConnectionType])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#connectionTypesListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConnectionTypesListResponse' with the minimum fields required to make a request.
newConnectionTypesListResponse 
    ::  ConnectionTypesListResponse
newConnectionTypesListResponse =
  ConnectionTypesListResponse
    {connectionTypes = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON ConnectionTypesListResponse
         where
        parseJSON
          = Core.withObject "ConnectionTypesListResponse"
              (\ o ->
                 ConnectionTypesListResponse Core.<$>
                   (o Core..:? "connectionTypes") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON ConnectionTypesListResponse
         where
        toJSON ConnectionTypesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("connectionTypes" Core..=) Core.<$>
                    connectionTypes,
                  ("kind" Core..=) Core.<$> kind])


-- | Content Category List Response
--
-- /See:/ 'newContentCategoriesListResponse' smart constructor.
data ContentCategoriesListResponse = ContentCategoriesListResponse
    {
      -- | Content category collection.
      contentCategories :: (Core.Maybe [ContentCategory])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#contentCategoriesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCategoriesListResponse' with the minimum fields required to make a request.
newContentCategoriesListResponse 
    ::  ContentCategoriesListResponse
newContentCategoriesListResponse =
  ContentCategoriesListResponse
    { contentCategories = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ContentCategoriesListResponse
         where
        parseJSON
          = Core.withObject "ContentCategoriesListResponse"
              (\ o ->
                 ContentCategoriesListResponse Core.<$>
                   (o Core..:? "contentCategories") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ContentCategoriesListResponse
         where
        toJSON ContentCategoriesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("contentCategories" Core..=) Core.<$>
                    contentCategories,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newContentCategory' smart constructor.
data ContentCategory = ContentCategory
    {
      -- | Account ID of this content category. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | ID of this content category. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#contentCategory\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this content category. This is a required field and must be less than 256 characters long and unique among content categories of the same account.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentCategory' with the minimum fields required to make a request.
newContentCategory 
    ::  ContentCategory
newContentCategory =
  ContentCategory
    { accountId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON ContentCategory where
        parseJSON
          = Core.withObject "ContentCategory"
              (\ o ->
                 ContentCategory Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON ContentCategory where
        toJSON ContentCategory{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | A Conversion represents when a user successfully performs a desired action after seeing an ad.
--
-- /See:/ 'newConversion' smart constructor.
data Conversion = Conversion
    {
      -- | This represents consent for ad user data.
      adUserDataConsent :: (Core.Maybe Conversion_AdUserDataConsent)
      -- | The cart data associated with this conversion.
    , cartData :: (Core.Maybe CartData)
      -- | Whether this particular request may come from a user under the age of 13, under COPPA compliance.
    , childDirectedTreatment :: (Core.Maybe Core.Bool)
      -- | Custom floodlight variables.
    , customVariables :: (Core.Maybe [CustomFloodlightVariable])
      -- | The display click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, mobileDeviceId, gclid, and impressionId. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or mobileDeviceId or gclid or impressionId is a required field.
    , dclid :: (Core.Maybe Core.Text)
      -- | The alphanumeric encrypted user ID. When set, encryptionInfo should also be specified. This field is mutually exclusive with encryptedUserIdCandidates[], matchId, mobileDeviceId, gclid, dclid, and impressionId. This or encryptedUserIdCandidates[] or matchId or mobileDeviceId or gclid or dclid or impressionId is a required field.
    , encryptedUserId :: (Core.Maybe Core.Text)
      -- | A list of the alphanumeric encrypted user IDs. Any user ID with exposure prior to the conversion timestamp will be used in the inserted conversion. If no such user ID is found then the conversion will be rejected with INVALID_ARGUMENT error. When set, encryptionInfo should also be specified. This field may only be used when calling batchinsert; it is not supported by batchupdate. This field is mutually exclusive with encryptedUserId, matchId, mobileDeviceId, gclid dclid, and impressionId. This or encryptedUserId or matchId or mobileDeviceId or gclid or dclid or impressionId is a required field.
    , encryptedUserIdCandidates :: (Core.Maybe [Core.Text])
      -- | Floodlight Activity ID of this conversion. This is a required field.
    , floodlightActivityId :: (Core.Maybe Core.Int64)
      -- | Floodlight Configuration ID of this conversion. This is a required field.
    , floodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | The Google click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, mobileDeviceId, dclid, and impressionId. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or mobileDeviceId or dclid or impressionId is a required field.
    , gclid :: (Core.Maybe Core.Text)
      -- | The impression ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, mobileDeviceId, and gclid. One of these identifiers must be set.
    , impressionId :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversion\".
    , kind :: (Core.Maybe Core.Text)
      -- | Whether Limit Ad Tracking is enabled. When set to true, the conversion will be used for reporting but not targeting. This will prevent remarketing.
    , limitAdTracking :: (Core.Maybe Core.Bool)
      -- | The match ID field. A match ID is your own first-party identifier that has been synced with Google using the match ID feature in Floodlight. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[],mobileDeviceId, gclid, dclid, and impressionId. This or encryptedUserId orencryptedUserIdCandidates[] or mobileDeviceId or gclid or dclid or impressionIdis a required field.
    , matchId :: (Core.Maybe Core.Text)
      -- | The mobile device ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, gclid, dclid, and impressionId. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or gclid or dclid or impressionId is a required field.
    , mobileDeviceId :: (Core.Maybe Core.Text)
      -- | Whether the conversion was for a non personalized ad.
    , nonPersonalizedAd :: (Core.Maybe Core.Bool)
      -- | The ordinal of the conversion. Use this field to control how conversions of the same user and day are de-duplicated. This is a required field.
    , ordinal :: (Core.Maybe Core.Text)
      -- | The quantity of the conversion. This is a required field.
    , quantity :: (Core.Maybe Core.Int64)
      -- | The timestamp of conversion, in Unix epoch micros. This is a required field.
    , timestampMicros :: (Core.Maybe Core.Int64)
      -- | Whether this particular request may come from a user under the age of 16 (may differ by country), under compliance with the European Union\'s General Data Protection Regulation (GDPR).
    , treatmentForUnderage :: (Core.Maybe Core.Bool)
      -- | The user identifiers to enhance the conversion. The maximum number of user identifiers for each conversion is 5.
    , userIdentifiers :: (Core.Maybe [UserIdentifier])
      -- | The value of the conversion. This is a required field.
    , value :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Conversion' with the minimum fields required to make a request.
newConversion 
    ::  Conversion
newConversion =
  Conversion
    { adUserDataConsent = Core.Nothing
    , cartData = Core.Nothing
    , childDirectedTreatment = Core.Nothing
    , customVariables = Core.Nothing
    , dclid = Core.Nothing
    , encryptedUserId = Core.Nothing
    , encryptedUserIdCandidates = Core.Nothing
    , floodlightActivityId = Core.Nothing
    , floodlightConfigurationId = Core.Nothing
    , gclid = Core.Nothing
    , impressionId = Core.Nothing
    , kind = Core.Nothing
    , limitAdTracking = Core.Nothing
    , matchId = Core.Nothing
    , mobileDeviceId = Core.Nothing
    , nonPersonalizedAd = Core.Nothing
    , ordinal = Core.Nothing
    , quantity = Core.Nothing
    , timestampMicros = Core.Nothing
    , treatmentForUnderage = Core.Nothing
    , userIdentifiers = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON Conversion where
        parseJSON
          = Core.withObject "Conversion"
              (\ o ->
                 Conversion Core.<$>
                   (o Core..:? "adUserDataConsent") Core.<*>
                     (o Core..:? "cartData")
                     Core.<*> (o Core..:? "childDirectedTreatment")
                     Core.<*> (o Core..:? "customVariables")
                     Core.<*> (o Core..:? "dclid")
                     Core.<*> (o Core..:? "encryptedUserId")
                     Core.<*> (o Core..:? "encryptedUserIdCandidates")
                     Core.<*>
                     (o Core..:? "floodlightActivityId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "floodlightConfigurationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "gclid")
                     Core.<*> (o Core..:? "impressionId")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "limitAdTracking")
                     Core.<*> (o Core..:? "matchId")
                     Core.<*> (o Core..:? "mobileDeviceId")
                     Core.<*> (o Core..:? "nonPersonalizedAd")
                     Core.<*> (o Core..:? "ordinal")
                     Core.<*>
                     (o Core..:? "quantity" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "timestampMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "treatmentForUnderage")
                     Core.<*> (o Core..:? "userIdentifiers")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON Conversion where
        toJSON Conversion{..}
          = Core.object
              (Core.catMaybes
                 [("adUserDataConsent" Core..=) Core.<$>
                    adUserDataConsent,
                  ("cartData" Core..=) Core.<$> cartData,
                  ("childDirectedTreatment" Core..=) Core.<$>
                    childDirectedTreatment,
                  ("customVariables" Core..=) Core.<$> customVariables,
                  ("dclid" Core..=) Core.<$> dclid,
                  ("encryptedUserId" Core..=) Core.<$> encryptedUserId,
                  ("encryptedUserIdCandidates" Core..=) Core.<$>
                    encryptedUserIdCandidates,
                  ("floodlightActivityId" Core..=) Core.. Core.AsText
                    Core.<$> floodlightActivityId,
                  ("floodlightConfigurationId" Core..=) Core..
                    Core.AsText
                    Core.<$> floodlightConfigurationId,
                  ("gclid" Core..=) Core.<$> gclid,
                  ("impressionId" Core..=) Core.<$> impressionId,
                  ("kind" Core..=) Core.<$> kind,
                  ("limitAdTracking" Core..=) Core.<$> limitAdTracking,
                  ("matchId" Core..=) Core.<$> matchId,
                  ("mobileDeviceId" Core..=) Core.<$> mobileDeviceId,
                  ("nonPersonalizedAd" Core..=) Core.<$>
                    nonPersonalizedAd,
                  ("ordinal" Core..=) Core.<$> ordinal,
                  ("quantity" Core..=) Core.. Core.AsText Core.<$>
                    quantity,
                  ("timestampMicros" Core..=) Core.. Core.AsText
                    Core.<$> timestampMicros,
                  ("treatmentForUnderage" Core..=) Core.<$>
                    treatmentForUnderage,
                  ("userIdentifiers" Core..=) Core.<$> userIdentifiers,
                  ("value" Core..=) Core.<$> value])


-- | The error code and description for a conversion that failed to insert or update.
--
-- /See:/ 'newConversionError' smart constructor.
data ConversionError = ConversionError
    {
      -- | The error code.
      code :: (Core.Maybe ConversionError_Code)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionError\".
    , kind :: (Core.Maybe Core.Text)
      -- | A description of the error.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionError' with the minimum fields required to make a request.
newConversionError 
    ::  ConversionError
newConversionError =
  ConversionError
    {code = Core.Nothing, kind = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON ConversionError where
        parseJSON
          = Core.withObject "ConversionError"
              (\ o ->
                 ConversionError Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON ConversionError where
        toJSON ConversionError{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("kind" Core..=) Core.<$> kind,
                  ("message" Core..=) Core.<$> message])


-- | The original conversion that was inserted or updated and whether there were any errors.
--
-- /See:/ 'newConversionStatus' smart constructor.
data ConversionStatus = ConversionStatus
    {
      -- | The original conversion that was inserted or updated.
      conversion :: (Core.Maybe Conversion)
      -- | A list of errors related to this conversion.
    , errors :: (Core.Maybe [ConversionError])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionStatus\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionStatus' with the minimum fields required to make a request.
newConversionStatus 
    ::  ConversionStatus
newConversionStatus =
  ConversionStatus
    {conversion = Core.Nothing, errors = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON ConversionStatus where
        parseJSON
          = Core.withObject "ConversionStatus"
              (\ o ->
                 ConversionStatus Core.<$>
                   (o Core..:? "conversion") Core.<*>
                     (o Core..:? "errors")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON ConversionStatus where
        toJSON ConversionStatus{..}
          = Core.object
              (Core.catMaybes
                 [("conversion" Core..=) Core.<$> conversion,
                  ("errors" Core..=) Core.<$> errors,
                  ("kind" Core..=) Core.<$> kind])


-- | Insert Conversions Request.
--
-- /See:/ 'newConversionsBatchInsertRequest' smart constructor.
data ConversionsBatchInsertRequest = ConversionsBatchInsertRequest
    {
      -- | The set of conversions to insert.
      conversions :: (Core.Maybe [Conversion])
      -- | Describes how encryptedUserId or encryptedUserIdCandidates[] is encrypted. This is a required field if encryptedUserId or encryptedUserIdCandidates[] is used.
    , encryptionInfo :: (Core.Maybe EncryptionInfo)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchInsertRequest\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionsBatchInsertRequest' with the minimum fields required to make a request.
newConversionsBatchInsertRequest 
    ::  ConversionsBatchInsertRequest
newConversionsBatchInsertRequest =
  ConversionsBatchInsertRequest
    { conversions = Core.Nothing
    , encryptionInfo = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON ConversionsBatchInsertRequest
         where
        parseJSON
          = Core.withObject "ConversionsBatchInsertRequest"
              (\ o ->
                 ConversionsBatchInsertRequest Core.<$>
                   (o Core..:? "conversions") Core.<*>
                     (o Core..:? "encryptionInfo")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON ConversionsBatchInsertRequest
         where
        toJSON ConversionsBatchInsertRequest{..}
          = Core.object
              (Core.catMaybes
                 [("conversions" Core..=) Core.<$> conversions,
                  ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
                  ("kind" Core..=) Core.<$> kind])


-- | Insert Conversions Response.
--
-- /See:/ 'newConversionsBatchInsertResponse' smart constructor.
data ConversionsBatchInsertResponse = ConversionsBatchInsertResponse
    {
      -- | Indicates that some or all conversions failed to insert.
      hasFailures :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchInsertResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | The insert status of each conversion. Statuses are returned in the same order that conversions are inserted.
    , status :: (Core.Maybe [ConversionStatus])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionsBatchInsertResponse' with the minimum fields required to make a request.
newConversionsBatchInsertResponse 
    ::  ConversionsBatchInsertResponse
newConversionsBatchInsertResponse =
  ConversionsBatchInsertResponse
    {hasFailures = Core.Nothing, kind = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON ConversionsBatchInsertResponse
         where
        parseJSON
          = Core.withObject "ConversionsBatchInsertResponse"
              (\ o ->
                 ConversionsBatchInsertResponse Core.<$>
                   (o Core..:? "hasFailures") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON ConversionsBatchInsertResponse
         where
        toJSON ConversionsBatchInsertResponse{..}
          = Core.object
              (Core.catMaybes
                 [("hasFailures" Core..=) Core.<$> hasFailures,
                  ("kind" Core..=) Core.<$> kind,
                  ("status" Core..=) Core.<$> status])


-- | Update Conversions Request.
--
-- /See:/ 'newConversionsBatchUpdateRequest' smart constructor.
data ConversionsBatchUpdateRequest = ConversionsBatchUpdateRequest
    {
      -- | The set of conversions to update.
      conversions :: (Core.Maybe [Conversion])
      -- | Describes how encryptedUserId is encrypted. This is a required field if encryptedUserId is used.
    , encryptionInfo :: (Core.Maybe EncryptionInfo)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchUpdateRequest\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionsBatchUpdateRequest' with the minimum fields required to make a request.
newConversionsBatchUpdateRequest 
    ::  ConversionsBatchUpdateRequest
newConversionsBatchUpdateRequest =
  ConversionsBatchUpdateRequest
    { conversions = Core.Nothing
    , encryptionInfo = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON ConversionsBatchUpdateRequest
         where
        parseJSON
          = Core.withObject "ConversionsBatchUpdateRequest"
              (\ o ->
                 ConversionsBatchUpdateRequest Core.<$>
                   (o Core..:? "conversions") Core.<*>
                     (o Core..:? "encryptionInfo")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON ConversionsBatchUpdateRequest
         where
        toJSON ConversionsBatchUpdateRequest{..}
          = Core.object
              (Core.catMaybes
                 [("conversions" Core..=) Core.<$> conversions,
                  ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
                  ("kind" Core..=) Core.<$> kind])


-- | Update Conversions Response.
--
-- /See:/ 'newConversionsBatchUpdateResponse' smart constructor.
data ConversionsBatchUpdateResponse = ConversionsBatchUpdateResponse
    {
      -- | Indicates that some or all conversions failed to update.
      hasFailures :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchUpdateResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | The update status of each conversion. Statuses are returned in the same order that conversions are updated.
    , status :: (Core.Maybe [ConversionStatus])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionsBatchUpdateResponse' with the minimum fields required to make a request.
newConversionsBatchUpdateResponse 
    ::  ConversionsBatchUpdateResponse
newConversionsBatchUpdateResponse =
  ConversionsBatchUpdateResponse
    {hasFailures = Core.Nothing, kind = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON ConversionsBatchUpdateResponse
         where
        parseJSON
          = Core.withObject "ConversionsBatchUpdateResponse"
              (\ o ->
                 ConversionsBatchUpdateResponse Core.<$>
                   (o Core..:? "hasFailures") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON ConversionsBatchUpdateResponse
         where
        toJSON ConversionsBatchUpdateResponse{..}
          = Core.object
              (Core.catMaybes
                 [("hasFailures" Core..=) Core.<$> hasFailures,
                  ("kind" Core..=) Core.<$> kind,
                  ("status" Core..=) Core.<$> status])


-- | Country List Response
--
-- /See:/ 'newCountriesListResponse' smart constructor.
data CountriesListResponse = CountriesListResponse
    {
      -- | Country collection.
      countries :: (Core.Maybe [Country])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#countriesListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountriesListResponse' with the minimum fields required to make a request.
newCountriesListResponse 
    ::  CountriesListResponse
newCountriesListResponse =
  CountriesListResponse {countries = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON CountriesListResponse where
        parseJSON
          = Core.withObject "CountriesListResponse"
              (\ o ->
                 CountriesListResponse Core.<$>
                   (o Core..:? "countries") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON CountriesListResponse where
        toJSON CountriesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("countries" Core..=) Core.<$> countries,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains information about a country that can be targeted by ads.
--
-- /See:/ 'newCountry' smart constructor.
data Country = Country
    {
      -- | Country code.
      countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of this country. This is the ID used for targeting and generating reports.
    , dartId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#country\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this country.
    , name :: (Core.Maybe Core.Text)
      -- | Whether ad serving supports secure servers in this country.
    , sslEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Country' with the minimum fields required to make a request.
newCountry 
    ::  Country
newCountry =
  Country
    { countryCode = Core.Nothing
    , dartId = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , sslEnabled = Core.Nothing
    }

instance Core.FromJSON Country where
        parseJSON
          = Core.withObject "Country"
              (\ o ->
                 Country Core.<$>
                   (o Core..:? "countryCode") Core.<*>
                     (o Core..:? "dartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sslEnabled"))

instance Core.ToJSON Country where
        toJSON Country{..}
          = Core.object
              (Core.catMaybes
                 [("countryCode" Core..=) Core.<$> countryCode,
                  ("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("sslEnabled" Core..=) Core.<$> sslEnabled])


-- | Contains properties of a Creative.
--
-- /See:/ 'newCreative' smart constructor.
data Creative = Creative
    {
      -- | Account ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether the creative is active. Applicable to all creative types.
    , active :: (Core.Maybe Core.Bool)
      -- | Ad parameters user for VPAID creative. This is a read-only field. Applicable to the following creative types: all VPAID.
    , adParameters :: (Core.Maybe Core.Text)
      -- | Keywords for a Rich Media creative. Keywords let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use keywords to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , adTagKeys :: (Core.Maybe [Core.Text])
      -- | Additional sizes associated with a responsive creative. When inserting or updating a creative either the size ID field or size width and height fields can be used. Applicable to DISPLAY creatives when the primary asset type is HTML_IMAGE.
    , additionalSizes :: (Core.Maybe [Size])
      -- | Required. Advertiser ID of this creative. This is a required field. Applicable to all creative types.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Whether script access is allowed for this creative. This is a read-only and deprecated field which will automatically be set to true on update. Applicable to the following creative types: FLASH_INPAGE.
    , allowScriptAccess :: (Core.Maybe Core.Bool)
      -- | Whether the creative is archived. Applicable to all creative types.
    , archived :: (Core.Maybe Core.Bool)
      -- | Type of artwork used for the creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , artworkType :: (Core.Maybe Creative_ArtworkType)
      -- | Source application where creative was authored. Presently, only DBM authored creatives will have this field set. Applicable to all creative types.
    , authoringSource :: (Core.Maybe Creative_AuthoringSource)
      -- | Authoring tool for HTML5 banner creatives. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.
    , authoringTool :: (Core.Maybe Creative_AuthoringTool)
      -- | Whether images are automatically advanced for image gallery creatives. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY.
    , autoAdvanceImages :: (Core.Maybe Core.Bool)
      -- | The 6-character HTML color code, beginning with #, for the background of the window area where the Flash file is displayed. Default is white. Applicable to the following creative types: FLASH_INPAGE.
    , backgroundColor :: (Core.Maybe Core.Text)
      -- | Click-through URL for backup image. Applicable to ENHANCED/BANNER when the primary asset type is not HTML/IMAGE.
    , backupImageClickThroughUrl :: (Core.Maybe CreativeClickThroughUrl)
      -- | List of feature dependencies that will cause a backup image to be served if the browser that serves the ad does not support them. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative asset correctly. This field is initially auto-generated to contain all features detected by Campaign Manager for all the assets of this creative and can then be modified by the client. To reset this field, copy over all the creativeAssets\' detected features. Applicable to the following creative types: HTML5/BANNER. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
    , backupImageFeatures :: (Core.Maybe [Creative_BackupImageFeaturesItem])
      -- | Reporting label used for HTML5 banner backup image. Applicable to the following creative types: DISPLAY when the primary asset type is not HTML_IMAGE.
    , backupImageReportingLabel :: (Core.Maybe Core.Text)
      -- | Target window for backup image. Applicable to the following creative types: FLASH/INPAGE and HTML5/BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
    , backupImageTargetWindow :: (Core.Maybe TargetWindow)
      -- | Click tags of the creative. For DISPLAY, FLASH/INPAGE, and HTML5/BANNER creatives, this is a subset of detected click tags for the assets associated with this creative. After creating a flash asset, detected click tags will be returned in the creativeAssetMetadata. When inserting the creative, populate the creative clickTags field using the creativeAssetMetadata.clickTags field. For DISPLAY/IMAGE/GALLERY creatives, there should be exactly one entry in this list for each image creative asset. A click tag is matched with a corresponding creative asset by matching the clickTag.name field with the creativeAsset.assetIdentifier.name field. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY, FLASH/INPAGE, HTML5/BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
    , clickTags :: (Core.Maybe [ClickTag])
      -- | Industry standard ID assigned to creative for reach and frequency. Applicable to INSTREAM/VIDEO/REDIRECT creatives.
    , commercialId :: (Core.Maybe Core.Text)
      -- | List of companion creatives assigned to an in-Stream video creative. Acceptable values include IDs of existing flash and image creatives. Applicable to the following creative types: all VPAID, all INSTREAM/AUDIO and all INSTREAM/VIDEO with dynamicAssetSelection set to false.
    , companionCreatives :: (Core.Maybe [Core.Int64])
      -- | Compatibilities associated with this creative. This is a read-only field. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. Only pre-existing creatives may have these compatibilities since new creatives will either be assigned DISPLAY or DISPLAY/INTERSTITIAL instead. IN/STREAM/VIDEO refers to rendering in in-stream video ads developed with the VAST standard. IN/STREAM/AUDIO refers to rendering in in-stream audio ads developed with the VAST standard. Applicable to all creative types. Acceptable values are: - \"APP\" - \"APP/INTERSTITIAL\" - \"IN/STREAM/VIDEO\" - \"IN/STREAM/AUDIO\" - \"DISPLAY\" - \"DISPLAY_INTERSTITIAL\"
    , compatibility :: (Core.Maybe [Creative_CompatibilityItem])
      -- | Whether Flash assets associated with the creative need to be automatically converted to HTML5. This flag is enabled by default and users can choose to disable it if they don\'t want the system to generate and use HTML5 asset for this creative. Applicable to the following creative type: FLASH/INPAGE. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
    , convertFlashToHtml5 :: (Core.Maybe Core.Bool)
      -- | List of counter events configured for the creative. For DISPLAY/IMAGE/GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY, all RICH_MEDIA, and all VPAID.
    , counterCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | Required if dynamicAssetSelection is true.
    , creativeAssetSelection :: (Core.Maybe CreativeAssetSelection)
      -- | Assets associated with a creative. Applicable to all but the following creative types: INTERNAL/REDIRECT, INTERSTITIAL/INTERNAL_REDIRECT, and REDIRECT
    , creativeAssets :: (Core.Maybe [CreativeAsset])
      -- | Creative field assignments for this creative. Applicable to all creative types.
    , creativeFieldAssignments :: (Core.Maybe [CreativeFieldAssignment])
      -- | Custom key-values for a Rich Media creative. Key-values let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use key-values to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , customKeyValues :: (Core.Maybe [Core.Text])
      -- | Set this to true to enable the use of rules to target individual assets in this creative. When set to true creativeAssetSelection must be set. This also controls asset-level companions. When this is true, companion creatives should be assigned to creative assets. Learn more. Applicable to INSTREAM_VIDEO creatives.
    , dynamicAssetSelection :: (Core.Maybe Core.Bool)
      -- | List of exit events configured for the creative. For DISPLAY and DISPLAY/IMAGE/GALLERY creatives, these are read-only and auto-generated from clickTags, For DISPLAY, an event is also created from the backupImageReportingLabel. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY, all RICH/MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
    , exitCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | OpenWindow FSCommand of this creative. This lets the SWF file communicate with either Flash Player or the program hosting Flash Player, such as a web browser. This is only triggered if allowScriptAccess field is true. Applicable to the following creative types: FLASH_INPAGE.
    , fsCommand :: (Core.Maybe FsCommand)
      -- | HTML code for the creative. This is a required field when applicable. This field is ignored if htmlCodeLocked is true. Applicable to the following creative types: all CUSTOM, FLASH/INPAGE, and HTML5/BANNER, and all RICH_MEDIA.
    , htmlCode :: (Core.Maybe Core.Text)
      -- | Whether HTML code is generated by Campaign Manager or manually entered. Set to true to ignore changes to htmlCode. Applicable to the following creative types: FLASH/INPAGE and HTML5/BANNER.
    , htmlCodeLocked :: (Core.Maybe Core.Bool)
      -- | ID of this creative. This is a read-only, auto-generated field. Applicable to all creative types.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this creative. This is a read-only field. Applicable to all creative types.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creative\".
    , kind :: (Core.Maybe Core.Text)
      -- | Creative last modification information. This is a read-only field. Applicable to all creative types.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Latest Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , latestTraffickedCreativeId :: (Core.Maybe Core.Int64)
      -- | Description of the audio or video ad. Applicable to the following creative types: all INSTREAM/VIDEO, INSTREAM/AUDIO, and all VPAID.
    , mediaDescription :: (Core.Maybe Core.Text)
      -- | Creative audio or video duration in seconds. This is a read-only field. Applicable to the following creative types: INSTREAM/VIDEO, INSTREAM/AUDIO, all RICH_MEDIA, and all VPAID.
    , mediaDuration :: (Core.Maybe Core.Double)
      -- | Required. Name of the creative. This must be less than 256 characters long. Applicable to all creative types.
    , name :: (Core.Maybe Core.Text)
      -- | Online behavioral advertising icon to be added to the creative. Applicable to the following creative types: all INSTREAM_VIDEO.
    , obaIcon :: (Core.Maybe ObaIcon)
      -- | Override CSS value for rich media creatives. Applicable to the following creative types: all RICH_MEDIA.
    , overrideCss :: (Core.Maybe Core.Text)
      -- | Amount of time to play the video before counting a view. Applicable to the following creative types: all INSTREAM_VIDEO.
    , progressOffset :: (Core.Maybe VideoOffset)
      -- | URL of hosted image or hosted video or another ad tag. For INSTREAM/VIDEO/REDIRECT creatives this is the in-stream video redirect URL. The standard for a VAST (Video Ad Serving Template) ad response allows for a redirect link to another VAST 2.0 or 3.0 call. This is a required field when applicable. Applicable to the following creative types: DISPLAY/REDIRECT, INTERNAL/REDIRECT, INTERSTITIAL/INTERNAL/REDIRECT, and INSTREAM/VIDEO/REDIRECT
    , redirectUrl :: (Core.Maybe Core.Text)
      -- | ID of current rendering version. This is a read-only field. Applicable to all creative types.
    , renderingId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the rendering ID of this creative. This is a read-only field. Applicable to all creative types.
    , renderingIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | The minimum required Flash plugin version for this creative. For example, 11.2.202.235. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , requiredFlashPluginVersion :: (Core.Maybe Core.Text)
      -- | The internal Flash version for this creative as calculated by Studio. This is a read-only field. Applicable to the following creative types: FLASH/INPAGE all RICH/MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
    , requiredFlashVersion :: (Core.Maybe Core.Int32)
      -- | Size associated with this creative. When inserting or updating a creative either the size ID field or size width and height fields can be used. This is a required field when applicable; however for IMAGE, FLASH/INPAGE creatives, and for DISPLAY creatives with a primary asset of type HTML/IMAGE, if left blank, this field will be automatically set using the actual size of the associated image assets. Applicable to the following creative types: DISPLAY, DISPLAY/IMAGE/GALLERY, FLASH/INPAGE, HTML5/BANNER, IMAGE, and all RICH_MEDIA.
    , size :: (Core.Maybe Size)
      -- | Amount of time to play the video before the skip button appears. Applicable to the following creative types: all INSTREAM_VIDEO.
    , skipOffset :: (Core.Maybe VideoOffset)
      -- | Whether the user can choose to skip the creative. Applicable to the following creative types: all INSTREAM_VIDEO and all VPAID.
    , skippable :: (Core.Maybe Core.Bool)
      -- | Whether the creative is SSL-compliant. This is a read-only field. Applicable to all creative types.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | Whether creative should be treated as SSL compliant even if the system scan shows it\'s not. Applicable to all creative types.
    , sslOverride :: (Core.Maybe Core.Bool)
      -- | Studio advertiser ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , studioAdvertiserId :: (Core.Maybe Core.Int64)
      -- | Studio creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , studioCreativeId :: (Core.Maybe Core.Int64)
      -- | Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , studioTraffickedCreativeId :: (Core.Maybe Core.Int64)
      -- | Subaccount ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Third-party URL used to record backup image impressions. Applicable to the following creative types: all RICH_MEDIA.
    , thirdPartyBackupImageImpressionsUrl :: (Core.Maybe Core.Text)
      -- | Third-party URL used to record rich media impressions. Applicable to the following creative types: all RICH_MEDIA.
    , thirdPartyRichMediaImpressionsUrl :: (Core.Maybe Core.Text)
      -- | Third-party URLs for tracking in-stream creative events. Applicable to the following creative types: all INSTREAM/VIDEO, all INSTREAM/AUDIO, and all VPAID.
    , thirdPartyUrls :: (Core.Maybe [ThirdPartyTrackingUrl])
      -- | List of timer events configured for the creative. For DISPLAY/IMAGE/GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY, all RICH/MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset is not HTML/IMAGE.
    , timerCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | Combined size of all creative assets. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
    , totalFileSize :: (Core.Maybe Core.Int64)
      -- | Required. Type of this creative. Applicable to all creative types. /Note:/ FLASH/INPAGE, HTML5/BANNER, and IMAGE are only used for existing creatives. New creatives should use DISPLAY as a replacement for these types.
    , type' :: (Core.Maybe Creative_Type)
      -- | A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM/AUDIO and INSTREAM/VIDEO and VPAID.
    , universalAdId :: (Core.Maybe UniversalAdId)
      -- | The version number helps you keep track of multiple versions of your creative in your reports. The version number will always be auto-generated during insert operations to start at 1. For tracking creatives the version cannot be incremented and will always remain at 1. For all other creative types the version can be incremented only by 1 during update operations. In addition, the version will be automatically incremented by 1 when undergoing Rich Media creative merging. Applicable to all creative types.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
newCreative 
    ::  Creative
newCreative =
  Creative
    { accountId = Core.Nothing
    , active = Core.Nothing
    , adParameters = Core.Nothing
    , adTagKeys = Core.Nothing
    , additionalSizes = Core.Nothing
    , advertiserId = Core.Nothing
    , allowScriptAccess = Core.Nothing
    , archived = Core.Nothing
    , artworkType = Core.Nothing
    , authoringSource = Core.Nothing
    , authoringTool = Core.Nothing
    , autoAdvanceImages = Core.Nothing
    , backgroundColor = Core.Nothing
    , backupImageClickThroughUrl = Core.Nothing
    , backupImageFeatures = Core.Nothing
    , backupImageReportingLabel = Core.Nothing
    , backupImageTargetWindow = Core.Nothing
    , clickTags = Core.Nothing
    , commercialId = Core.Nothing
    , companionCreatives = Core.Nothing
    , compatibility = Core.Nothing
    , convertFlashToHtml5 = Core.Nothing
    , counterCustomEvents = Core.Nothing
    , creativeAssetSelection = Core.Nothing
    , creativeAssets = Core.Nothing
    , creativeFieldAssignments = Core.Nothing
    , customKeyValues = Core.Nothing
    , dynamicAssetSelection = Core.Nothing
    , exitCustomEvents = Core.Nothing
    , fsCommand = Core.Nothing
    , htmlCode = Core.Nothing
    , htmlCodeLocked = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , latestTraffickedCreativeId = Core.Nothing
    , mediaDescription = Core.Nothing
    , mediaDuration = Core.Nothing
    , name = Core.Nothing
    , obaIcon = Core.Nothing
    , overrideCss = Core.Nothing
    , progressOffset = Core.Nothing
    , redirectUrl = Core.Nothing
    , renderingId = Core.Nothing
    , renderingIdDimensionValue = Core.Nothing
    , requiredFlashPluginVersion = Core.Nothing
    , requiredFlashVersion = Core.Nothing
    , size = Core.Nothing
    , skipOffset = Core.Nothing
    , skippable = Core.Nothing
    , sslCompliant = Core.Nothing
    , sslOverride = Core.Nothing
    , studioAdvertiserId = Core.Nothing
    , studioCreativeId = Core.Nothing
    , studioTraffickedCreativeId = Core.Nothing
    , subaccountId = Core.Nothing
    , thirdPartyBackupImageImpressionsUrl = Core.Nothing
    , thirdPartyRichMediaImpressionsUrl = Core.Nothing
    , thirdPartyUrls = Core.Nothing
    , timerCustomEvents = Core.Nothing
    , totalFileSize = Core.Nothing
    , type' = Core.Nothing
    , universalAdId = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON Creative where
        parseJSON
          = Core.withObject "Creative"
              (\ o ->
                 Creative Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "active")
                     Core.<*> (o Core..:? "adParameters")
                     Core.<*> (o Core..:? "adTagKeys")
                     Core.<*> (o Core..:? "additionalSizes")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "allowScriptAccess")
                     Core.<*> (o Core..:? "archived")
                     Core.<*> (o Core..:? "artworkType")
                     Core.<*> (o Core..:? "authoringSource")
                     Core.<*> (o Core..:? "authoringTool")
                     Core.<*> (o Core..:? "autoAdvanceImages")
                     Core.<*> (o Core..:? "backgroundColor")
                     Core.<*> (o Core..:? "backupImageClickThroughUrl")
                     Core.<*> (o Core..:? "backupImageFeatures")
                     Core.<*> (o Core..:? "backupImageReportingLabel")
                     Core.<*> (o Core..:? "backupImageTargetWindow")
                     Core.<*> (o Core..:? "clickTags")
                     Core.<*> (o Core..:? "commercialId")
                     Core.<*>
                     (o Core..:? "companionCreatives" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "compatibility")
                     Core.<*> (o Core..:? "convertFlashToHtml5")
                     Core.<*> (o Core..:? "counterCustomEvents")
                     Core.<*> (o Core..:? "creativeAssetSelection")
                     Core.<*> (o Core..:? "creativeAssets")
                     Core.<*> (o Core..:? "creativeFieldAssignments")
                     Core.<*> (o Core..:? "customKeyValues")
                     Core.<*> (o Core..:? "dynamicAssetSelection")
                     Core.<*> (o Core..:? "exitCustomEvents")
                     Core.<*> (o Core..:? "fsCommand")
                     Core.<*> (o Core..:? "htmlCode")
                     Core.<*> (o Core..:? "htmlCodeLocked")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*>
                     (o Core..:? "latestTraffickedCreativeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "mediaDescription")
                     Core.<*> (o Core..:? "mediaDuration")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "obaIcon")
                     Core.<*> (o Core..:? "overrideCss")
                     Core.<*> (o Core..:? "progressOffset")
                     Core.<*> (o Core..:? "redirectUrl")
                     Core.<*>
                     (o Core..:? "renderingId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "renderingIdDimensionValue")
                     Core.<*> (o Core..:? "requiredFlashPluginVersion")
                     Core.<*> (o Core..:? "requiredFlashVersion")
                     Core.<*> (o Core..:? "size")
                     Core.<*> (o Core..:? "skipOffset")
                     Core.<*> (o Core..:? "skippable")
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "sslOverride")
                     Core.<*>
                     (o Core..:? "studioAdvertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "studioCreativeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "studioTraffickedCreativeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "thirdPartyBackupImageImpressionsUrl")
                     Core.<*>
                     (o Core..:? "thirdPartyRichMediaImpressionsUrl")
                     Core.<*> (o Core..:? "thirdPartyUrls")
                     Core.<*> (o Core..:? "timerCustomEvents")
                     Core.<*>
                     (o Core..:? "totalFileSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "universalAdId")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Creative where
        toJSON Creative{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("active" Core..=) Core.<$> active,
                  ("adParameters" Core..=) Core.<$> adParameters,
                  ("adTagKeys" Core..=) Core.<$> adTagKeys,
                  ("additionalSizes" Core..=) Core.<$> additionalSizes,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("allowScriptAccess" Core..=) Core.<$>
                    allowScriptAccess,
                  ("archived" Core..=) Core.<$> archived,
                  ("artworkType" Core..=) Core.<$> artworkType,
                  ("authoringSource" Core..=) Core.<$> authoringSource,
                  ("authoringTool" Core..=) Core.<$> authoringTool,
                  ("autoAdvanceImages" Core..=) Core.<$>
                    autoAdvanceImages,
                  ("backgroundColor" Core..=) Core.<$> backgroundColor,
                  ("backupImageClickThroughUrl" Core..=) Core.<$>
                    backupImageClickThroughUrl,
                  ("backupImageFeatures" Core..=) Core.<$>
                    backupImageFeatures,
                  ("backupImageReportingLabel" Core..=) Core.<$>
                    backupImageReportingLabel,
                  ("backupImageTargetWindow" Core..=) Core.<$>
                    backupImageTargetWindow,
                  ("clickTags" Core..=) Core.<$> clickTags,
                  ("commercialId" Core..=) Core.<$> commercialId,
                  ("companionCreatives" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> companionCreatives,
                  ("compatibility" Core..=) Core.<$> compatibility,
                  ("convertFlashToHtml5" Core..=) Core.<$>
                    convertFlashToHtml5,
                  ("counterCustomEvents" Core..=) Core.<$>
                    counterCustomEvents,
                  ("creativeAssetSelection" Core..=) Core.<$>
                    creativeAssetSelection,
                  ("creativeAssets" Core..=) Core.<$> creativeAssets,
                  ("creativeFieldAssignments" Core..=) Core.<$>
                    creativeFieldAssignments,
                  ("customKeyValues" Core..=) Core.<$> customKeyValues,
                  ("dynamicAssetSelection" Core..=) Core.<$>
                    dynamicAssetSelection,
                  ("exitCustomEvents" Core..=) Core.<$>
                    exitCustomEvents,
                  ("fsCommand" Core..=) Core.<$> fsCommand,
                  ("htmlCode" Core..=) Core.<$> htmlCode,
                  ("htmlCodeLocked" Core..=) Core.<$> htmlCodeLocked,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("latestTraffickedCreativeId" Core..=) Core..
                    Core.AsText
                    Core.<$> latestTraffickedCreativeId,
                  ("mediaDescription" Core..=) Core.<$>
                    mediaDescription,
                  ("mediaDuration" Core..=) Core.<$> mediaDuration,
                  ("name" Core..=) Core.<$> name,
                  ("obaIcon" Core..=) Core.<$> obaIcon,
                  ("overrideCss" Core..=) Core.<$> overrideCss,
                  ("progressOffset" Core..=) Core.<$> progressOffset,
                  ("redirectUrl" Core..=) Core.<$> redirectUrl,
                  ("renderingId" Core..=) Core.. Core.AsText Core.<$>
                    renderingId,
                  ("renderingIdDimensionValue" Core..=) Core.<$>
                    renderingIdDimensionValue,
                  ("requiredFlashPluginVersion" Core..=) Core.<$>
                    requiredFlashPluginVersion,
                  ("requiredFlashVersion" Core..=) Core.<$>
                    requiredFlashVersion,
                  ("size" Core..=) Core.<$> size,
                  ("skipOffset" Core..=) Core.<$> skipOffset,
                  ("skippable" Core..=) Core.<$> skippable,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("sslOverride" Core..=) Core.<$> sslOverride,
                  ("studioAdvertiserId" Core..=) Core.. Core.AsText
                    Core.<$> studioAdvertiserId,
                  ("studioCreativeId" Core..=) Core.. Core.AsText
                    Core.<$> studioCreativeId,
                  ("studioTraffickedCreativeId" Core..=) Core..
                    Core.AsText
                    Core.<$> studioTraffickedCreativeId,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("thirdPartyBackupImageImpressionsUrl" Core..=)
                    Core.<$> thirdPartyBackupImageImpressionsUrl,
                  ("thirdPartyRichMediaImpressionsUrl" Core..=)
                    Core.<$> thirdPartyRichMediaImpressionsUrl,
                  ("thirdPartyUrls" Core..=) Core.<$> thirdPartyUrls,
                  ("timerCustomEvents" Core..=) Core.<$>
                    timerCustomEvents,
                  ("totalFileSize" Core..=) Core.. Core.AsText Core.<$>
                    totalFileSize,
                  ("type" Core..=) Core.<$> type',
                  ("universalAdId" Core..=) Core.<$> universalAdId,
                  ("version" Core..=) Core.<$> version])


-- | Creative Asset.
--
-- /See:/ 'newCreativeAsset' smart constructor.
data CreativeAsset = CreativeAsset
    {
      -- | Whether ActionScript3 is enabled for the flash asset. This is a read-only field. Applicable to the following creative type: FLASH/INPAGE. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
      actionScript3 :: (Core.Maybe Core.Bool)
      -- | Whether the video or audio asset is active. This is a read-only field for VPAID/NON/LINEAR/VIDEO assets. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM_VIDEO and all VPAID.
    , active :: (Core.Maybe Core.Bool)
      -- | Additional sizes associated with this creative asset. HTML5 asset generated by compatible software such as GWD will be able to support more sizes this creative asset can render.
    , additionalSizes :: (Core.Maybe [Size])
      -- | Possible alignments for an asset. This is a read-only field. Applicable to the following creative types: RICH/MEDIA/DISPLAY/MULTI/FLOATING_INTERSTITIAL .
    , alignment :: (Core.Maybe CreativeAsset_Alignment)
      -- | Artwork type of rich media creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
    , artworkType :: (Core.Maybe CreativeAsset_ArtworkType)
      -- | Identifier of this asset. This is the same identifier returned during creative asset insert operation. This is a required field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.
    , assetIdentifier :: (Core.Maybe CreativeAssetId)
      -- | Audio stream bit rate in kbps. This is a read-only field. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and all VPAID.
    , audioBitRate :: (Core.Maybe Core.Int32)
      -- | Audio sample bit rate in hertz. This is a read-only field. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and all VPAID.
    , audioSampleRate :: (Core.Maybe Core.Int32)
      -- | Exit event configured for the backup image. Applicable to the following creative types: all RICH_MEDIA.
    , backupImageExit :: (Core.Maybe CreativeCustomEvent)
      -- | Detected bit-rate for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and all VPAID.
    , bitRate :: (Core.Maybe Core.Int32)
      -- | Rich media child asset type. This is a read-only field. Applicable to the following creative types: all VPAID.
    , childAssetType :: (Core.Maybe CreativeAsset_ChildAssetType)
      -- | Size of an asset when collapsed. This is a read-only field. Applicable to the following creative types: all RICH/MEDIA and all VPAID. Additionally, applicable to assets whose displayType is ASSET/DISPLAY/TYPE/EXPANDING or ASSET/DISPLAY/TYPE/PEEL/DOWN.
    , collapsedSize :: (Core.Maybe Size)
      -- | List of companion creatives assigned to an in-stream video creative asset. Acceptable values include IDs of existing flash and image creatives. Applicable to INSTREAM_VIDEO creative type with dynamicAssetSelection set to true.
    , companionCreativeIds :: (Core.Maybe [Core.Int64])
      -- | Custom start time in seconds for making the asset visible. Applicable to the following creative types: all RICH_MEDIA. Value must be greater than or equal to 0.
    , customStartTimeValue :: (Core.Maybe Core.Int32)
      -- | List of feature dependencies for the creative asset that are detected by Campaign Manager. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative correctly. This is a read-only, auto-generated field. Applicable to the following creative types: HTML5/BANNER. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE.
    , detectedFeatures :: (Core.Maybe [CreativeAsset_DetectedFeaturesItem])
      -- | Type of rich media asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
    , displayType :: (Core.Maybe CreativeAsset_DisplayType)
      -- | Duration in seconds for which an asset will be displayed. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and VPAID/LINEAR/VIDEO. Value must be greater than or equal to 1.
    , duration :: (Core.Maybe Core.Int32)
      -- | Duration type for which an asset will be displayed. Applicable to the following creative types: all RICH_MEDIA.
    , durationType :: (Core.Maybe CreativeAsset_DurationType)
      -- | Detected expanded dimension for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.
    , expandedDimension :: (Core.Maybe Size)
      -- | File size associated with this creative asset. This is a read-only field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.
    , fileSize :: (Core.Maybe Core.Int64)
      -- | Flash version of the asset. This is a read-only field. Applicable to the following creative types: FLASH/INPAGE, all RICH/MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
    , flashVersion :: (Core.Maybe Core.Int32)
      -- | Video frame rate for video asset in frames per second. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.
    , frameRate :: (Core.Maybe Core.Double)
      -- | Whether to hide Flash objects flag for an asset. Applicable to the following creative types: all RICH_MEDIA.
    , hideFlashObjects :: (Core.Maybe Core.Bool)
      -- | Whether to hide selection boxes flag for an asset. Applicable to the following creative types: all RICH_MEDIA.
    , hideSelectionBoxes :: (Core.Maybe Core.Bool)
      -- | Whether the asset is horizontally locked. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
    , horizontallyLocked :: (Core.Maybe Core.Bool)
      -- | Numeric ID of this creative asset. This is a required field and should not be modified. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the asset. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Detected duration for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and all VPAID.
    , mediaDuration :: (Core.Maybe Core.Double)
      -- | Detected MIME type for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and all VPAID.
    , mimeType :: (Core.Maybe Core.Text)
      -- | Offset position for an asset in collapsed mode. This is a read-only field. Applicable to the following creative types: all RICH/MEDIA and all VPAID. Additionally, only applicable to assets whose displayType is ASSET/DISPLAY/TYPE/EXPANDING or ASSET/DISPLAY/TYPE/PEEL/DOWN.
    , offset :: (Core.Maybe OffsetPosition)
      -- | Orientation of video asset. This is a read-only, auto-generated field.
    , orientation :: (Core.Maybe CreativeAsset_Orientation)
      -- | Whether the backup asset is original or changed by the user in Campaign Manager. Applicable to the following creative types: all RICH_MEDIA.
    , originalBackup :: (Core.Maybe Core.Bool)
      -- | Whether this asset is used as a polite load asset.
    , politeLoad :: (Core.Maybe Core.Bool)
      -- | Offset position for an asset. Applicable to the following creative types: all RICH_MEDIA.
    , position :: (Core.Maybe OffsetPosition)
      -- | Offset left unit for an asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
    , positionLeftUnit :: (Core.Maybe CreativeAsset_PositionLeftUnit)
      -- | Offset top unit for an asset. This is a read-only field if the asset displayType is ASSET/DISPLAY/TYPE/OVERLAY. Applicable to the following creative types: all RICH/MEDIA.
    , positionTopUnit :: (Core.Maybe CreativeAsset_PositionTopUnit)
      -- | Progressive URL for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.
    , progressiveServingUrl :: (Core.Maybe Core.Text)
      -- | Whether the asset pushes down other content. Applicable to the following creative types: all RICH_MEDIA. Additionally, only applicable when the asset offsets are 0, the collapsedSize.width matches size.width, and the collapsedSize.height is less than size.height.
    , pushdown :: (Core.Maybe Core.Bool)
      -- | Pushdown duration in seconds for an asset. Applicable to the following creative types: all RICH_MEDIA.Additionally, only applicable when the asset pushdown field is true, the offsets are 0, the collapsedSize.width matches size.width, and the collapsedSize.height is less than size.height. Acceptable values are 0 to 9.99, inclusive.
    , pushdownDuration :: (Core.Maybe Core.Double)
      -- | Role of the asset in relation to creative. Applicable to all but the following creative types: all REDIRECT and TRACKING/TEXT. This is a required field. PRIMARY applies to DISPLAY, FLASH/INPAGE, HTML5/BANNER, IMAGE, DISPLAY/IMAGE/GALLERY, all RICH/MEDIA (which may contain multiple primary assets), and all VPAID creatives. BACKUP/IMAGE applies to FLASH/INPAGE, HTML5/BANNER, all RICH/MEDIA, and all VPAID creatives. Applicable to DISPLAY when the primary asset type is not HTML/IMAGE. ADDITIONAL/IMAGE and ADDITIONAL/FLASH apply to FLASH/INPAGE creatives. OTHER refers to assets from sources other than Campaign Manager, such as Studio uploaded assets, applicable to all RICH/MEDIA and all VPAID creatives. PARENT/VIDEO refers to videos uploaded by the user in Campaign Manager and is applicable to INSTREAM/VIDEO and VPAID/LINEAR/VIDEO creatives. TRANSCODED/VIDEO refers to videos transcoded by Campaign Manager from PARENT/VIDEO assets and is applicable to INSTREAM/VIDEO and VPAID/LINEAR/VIDEO creatives. ALTERNATE/VIDEO
      -- refers to the Campaign Manager representation of child asset videos from Studio, and is applicable to VPAID/LINEAR/VIDEO creatives. These cannot be added or removed within Campaign Manager. For VPAID/LINEAR/VIDEO creatives, PARENT/VIDEO, TRANSCODED/VIDEO and ALTERNATE/VIDEO assets that are marked active serve as backup in case the VPAID creative cannot be served. Only PARENT/VIDEO assets can be added or removed for an INSTREAM/VIDEO or VPAID/LINEAR/VIDEO creative. PARENT/AUDIO refers to audios uploaded by the user in Campaign Manager and is applicable to INSTREAM/AUDIO creatives. TRANSCODED/AUDIO refers to audios transcoded by Campaign Manager from PARENT/AUDIO assets and is applicable to INSTREAM_AUDIO creatives.
    , role' :: (Core.Maybe CreativeAsset_Role)
      -- | Size associated with this creative asset. This is a required field when applicable; however for IMAGE and FLASH/INPAGE, creatives if left blank, this field will be automatically set using the actual size of the associated image asset. Applicable to the following creative types: DISPLAY/IMAGE/GALLERY, FLASH/INPAGE, HTML5/BANNER, IMAGE, and all RICH/MEDIA. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
    , size :: (Core.Maybe Size)
      -- | Whether the asset is SSL-compliant. This is a read-only field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | Initial wait time type before making the asset visible. Applicable to the following creative types: all RICH_MEDIA.
    , startTimeType :: (Core.Maybe CreativeAsset_StartTimeType)
      -- | Streaming URL for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.
    , streamingServingUrl :: (Core.Maybe Core.Text)
      -- | Whether the asset is transparent. Applicable to the following creative types: all RICH_MEDIA. Additionally, only applicable to HTML5 assets.
    , transparency :: (Core.Maybe Core.Bool)
      -- | Whether the asset is vertically locked. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.
    , verticallyLocked :: (Core.Maybe Core.Bool)
      -- | Window mode options for flash assets. Applicable to the following creative types: FLASH/INPAGE, RICH/MEDIA/DISPLAY/EXPANDING, RICH/MEDIA/IM/EXPAND, RICH/MEDIA/DISPLAY/BANNER, and RICH/MEDIA/INPAGE_FLOATING.
    , windowMode :: (Core.Maybe CreativeAsset_WindowMode)
      -- | zIndex value of an asset. Applicable to the following creative types: all RICH/MEDIA.Additionally, only applicable to assets whose displayType is NOT one of the following types: ASSET/DISPLAY/TYPE/INPAGE or ASSET/DISPLAY/TYPE_OVERLAY. Acceptable values are -999999999 to 999999999, inclusive.
    , zIndex :: (Core.Maybe Core.Int32)
      -- | File name of zip file. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.
    , zipFilename :: (Core.Maybe Core.Text)
      -- | Size of zip file. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.
    , zipFilesize :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeAsset' with the minimum fields required to make a request.
newCreativeAsset 
    ::  CreativeAsset
newCreativeAsset =
  CreativeAsset
    { actionScript3 = Core.Nothing
    , active = Core.Nothing
    , additionalSizes = Core.Nothing
    , alignment = Core.Nothing
    , artworkType = Core.Nothing
    , assetIdentifier = Core.Nothing
    , audioBitRate = Core.Nothing
    , audioSampleRate = Core.Nothing
    , backupImageExit = Core.Nothing
    , bitRate = Core.Nothing
    , childAssetType = Core.Nothing
    , collapsedSize = Core.Nothing
    , companionCreativeIds = Core.Nothing
    , customStartTimeValue = Core.Nothing
    , detectedFeatures = Core.Nothing
    , displayType = Core.Nothing
    , duration = Core.Nothing
    , durationType = Core.Nothing
    , expandedDimension = Core.Nothing
    , fileSize = Core.Nothing
    , flashVersion = Core.Nothing
    , frameRate = Core.Nothing
    , hideFlashObjects = Core.Nothing
    , hideSelectionBoxes = Core.Nothing
    , horizontallyLocked = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , mediaDuration = Core.Nothing
    , mimeType = Core.Nothing
    , offset = Core.Nothing
    , orientation = Core.Nothing
    , originalBackup = Core.Nothing
    , politeLoad = Core.Nothing
    , position = Core.Nothing
    , positionLeftUnit = Core.Nothing
    , positionTopUnit = Core.Nothing
    , progressiveServingUrl = Core.Nothing
    , pushdown = Core.Nothing
    , pushdownDuration = Core.Nothing
    , role' = Core.Nothing
    , size = Core.Nothing
    , sslCompliant = Core.Nothing
    , startTimeType = Core.Nothing
    , streamingServingUrl = Core.Nothing
    , transparency = Core.Nothing
    , verticallyLocked = Core.Nothing
    , windowMode = Core.Nothing
    , zIndex = Core.Nothing
    , zipFilename = Core.Nothing
    , zipFilesize = Core.Nothing
    }

instance Core.FromJSON CreativeAsset where
        parseJSON
          = Core.withObject "CreativeAsset"
              (\ o ->
                 CreativeAsset Core.<$>
                   (o Core..:? "actionScript3") Core.<*>
                     (o Core..:? "active")
                     Core.<*> (o Core..:? "additionalSizes")
                     Core.<*> (o Core..:? "alignment")
                     Core.<*> (o Core..:? "artworkType")
                     Core.<*> (o Core..:? "assetIdentifier")
                     Core.<*> (o Core..:? "audioBitRate")
                     Core.<*> (o Core..:? "audioSampleRate")
                     Core.<*> (o Core..:? "backupImageExit")
                     Core.<*> (o Core..:? "bitRate")
                     Core.<*> (o Core..:? "childAssetType")
                     Core.<*> (o Core..:? "collapsedSize")
                     Core.<*>
                     (o Core..:? "companionCreativeIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "customStartTimeValue")
                     Core.<*> (o Core..:? "detectedFeatures")
                     Core.<*> (o Core..:? "displayType")
                     Core.<*> (o Core..:? "duration")
                     Core.<*> (o Core..:? "durationType")
                     Core.<*> (o Core..:? "expandedDimension")
                     Core.<*>
                     (o Core..:? "fileSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "flashVersion")
                     Core.<*> (o Core..:? "frameRate")
                     Core.<*> (o Core..:? "hideFlashObjects")
                     Core.<*> (o Core..:? "hideSelectionBoxes")
                     Core.<*> (o Core..:? "horizontallyLocked")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "mediaDuration")
                     Core.<*> (o Core..:? "mimeType")
                     Core.<*> (o Core..:? "offset")
                     Core.<*> (o Core..:? "orientation")
                     Core.<*> (o Core..:? "originalBackup")
                     Core.<*> (o Core..:? "politeLoad")
                     Core.<*> (o Core..:? "position")
                     Core.<*> (o Core..:? "positionLeftUnit")
                     Core.<*> (o Core..:? "positionTopUnit")
                     Core.<*> (o Core..:? "progressiveServingUrl")
                     Core.<*> (o Core..:? "pushdown")
                     Core.<*> (o Core..:? "pushdownDuration")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "size")
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "startTimeType")
                     Core.<*> (o Core..:? "streamingServingUrl")
                     Core.<*> (o Core..:? "transparency")
                     Core.<*> (o Core..:? "verticallyLocked")
                     Core.<*> (o Core..:? "windowMode")
                     Core.<*> (o Core..:? "zIndex")
                     Core.<*> (o Core..:? "zipFilename")
                     Core.<*> (o Core..:? "zipFilesize"))

instance Core.ToJSON CreativeAsset where
        toJSON CreativeAsset{..}
          = Core.object
              (Core.catMaybes
                 [("actionScript3" Core..=) Core.<$> actionScript3,
                  ("active" Core..=) Core.<$> active,
                  ("additionalSizes" Core..=) Core.<$> additionalSizes,
                  ("alignment" Core..=) Core.<$> alignment,
                  ("artworkType" Core..=) Core.<$> artworkType,
                  ("assetIdentifier" Core..=) Core.<$> assetIdentifier,
                  ("audioBitRate" Core..=) Core.<$> audioBitRate,
                  ("audioSampleRate" Core..=) Core.<$> audioSampleRate,
                  ("backupImageExit" Core..=) Core.<$> backupImageExit,
                  ("bitRate" Core..=) Core.<$> bitRate,
                  ("childAssetType" Core..=) Core.<$> childAssetType,
                  ("collapsedSize" Core..=) Core.<$> collapsedSize,
                  ("companionCreativeIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> companionCreativeIds,
                  ("customStartTimeValue" Core..=) Core.<$>
                    customStartTimeValue,
                  ("detectedFeatures" Core..=) Core.<$>
                    detectedFeatures,
                  ("displayType" Core..=) Core.<$> displayType,
                  ("duration" Core..=) Core.<$> duration,
                  ("durationType" Core..=) Core.<$> durationType,
                  ("expandedDimension" Core..=) Core.<$>
                    expandedDimension,
                  ("fileSize" Core..=) Core.. Core.AsText Core.<$>
                    fileSize,
                  ("flashVersion" Core..=) Core.<$> flashVersion,
                  ("frameRate" Core..=) Core.<$> frameRate,
                  ("hideFlashObjects" Core..=) Core.<$>
                    hideFlashObjects,
                  ("hideSelectionBoxes" Core..=) Core.<$>
                    hideSelectionBoxes,
                  ("horizontallyLocked" Core..=) Core.<$>
                    horizontallyLocked,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("mediaDuration" Core..=) Core.<$> mediaDuration,
                  ("mimeType" Core..=) Core.<$> mimeType,
                  ("offset" Core..=) Core.<$> offset,
                  ("orientation" Core..=) Core.<$> orientation,
                  ("originalBackup" Core..=) Core.<$> originalBackup,
                  ("politeLoad" Core..=) Core.<$> politeLoad,
                  ("position" Core..=) Core.<$> position,
                  ("positionLeftUnit" Core..=) Core.<$>
                    positionLeftUnit,
                  ("positionTopUnit" Core..=) Core.<$> positionTopUnit,
                  ("progressiveServingUrl" Core..=) Core.<$>
                    progressiveServingUrl,
                  ("pushdown" Core..=) Core.<$> pushdown,
                  ("pushdownDuration" Core..=) Core.<$>
                    pushdownDuration,
                  ("role" Core..=) Core.<$> role',
                  ("size" Core..=) Core.<$> size,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("startTimeType" Core..=) Core.<$> startTimeType,
                  ("streamingServingUrl" Core..=) Core.<$>
                    streamingServingUrl,
                  ("transparency" Core..=) Core.<$> transparency,
                  ("verticallyLocked" Core..=) Core.<$>
                    verticallyLocked,
                  ("windowMode" Core..=) Core.<$> windowMode,
                  ("zIndex" Core..=) Core.<$> zIndex,
                  ("zipFilename" Core..=) Core.<$> zipFilename,
                  ("zipFilesize" Core..=) Core.<$> zipFilesize])


-- | Creative Asset ID.
--
-- /See:/ 'newCreativeAssetId' smart constructor.
data CreativeAssetId = CreativeAssetId
    {
      -- | Name of the creative asset. This is a required field while inserting an asset. After insertion, this assetIdentifier is used to identify the uploaded asset. Characters in the name must be alphanumeric or one of the following: \".-_ \". Spaces are allowed.
      name :: (Core.Maybe Core.Text)
      -- | Type of asset to upload. This is a required field. FLASH and IMAGE are no longer supported for new uploads. All image assets should use HTML_IMAGE.
    , type' :: (Core.Maybe CreativeAssetId_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeAssetId' with the minimum fields required to make a request.
newCreativeAssetId 
    ::  CreativeAssetId
newCreativeAssetId = CreativeAssetId {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON CreativeAssetId where
        parseJSON
          = Core.withObject "CreativeAssetId"
              (\ o ->
                 CreativeAssetId Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "type"))

instance Core.ToJSON CreativeAssetId where
        toJSON CreativeAssetId{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | CreativeAssets contains properties of a creative asset file which will be uploaded or has already been uploaded. Refer to the creative sample code for how to upload assets and insert a creative.
--
-- /See:/ 'newCreativeAssetMetadata' smart constructor.
data CreativeAssetMetadata = CreativeAssetMetadata
    {
      -- | ID of the creative asset. This is a required field.
      assetIdentifier :: (Core.Maybe CreativeAssetId)
      -- | List of detected click tags for assets. This is a read-only, auto-generated field. This field is empty for a rich media asset.
    , clickTags :: (Core.Maybe [ClickTag])
      -- | List of counter events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.
    , counterCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | List of feature dependencies for the creative asset that are detected by Campaign Manager. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative correctly. This is a read-only, auto-generated field.
    , detectedFeatures :: (Core.Maybe [CreativeAssetMetadata_DetectedFeaturesItem])
      -- | List of exit events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.
    , exitCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | Numeric ID of the asset. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the numeric ID of the asset. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeAssetMetadata\".
    , kind :: (Core.Maybe Core.Text)
      -- | True if the uploaded asset is a rich media asset. This is a read-only, auto-generated field.
    , richMedia :: (Core.Maybe Core.Bool)
      -- | List of timer events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.
    , timerCustomEvents :: (Core.Maybe [CreativeCustomEvent])
      -- | Rules validated during code generation that generated a warning. This is a read-only, auto-generated field. Possible values are: - \"ADMOB/REFERENCED\" - \"ASSET/FORMAT/UNSUPPORTED/DCM\" - \"ASSET/INVALID\" - \"CLICK/TAG/HARD/CODED\" - \"CLICK/TAG/INVALID\" - \"CLICK/TAG/IN/GWD\" - \"CLICK/TAG/MISSING\" - \"CLICK/TAG/MORE/THAN/ONE\" - \"CLICK/TAG/NON/TOP/LEVEL\" - \"COMPONENT/UNSUPPORTED/DCM\" - \"ENABLER/UNSUPPORTED/METHOD/DCM\" - \"EXTERNAL/FILE/REFERENCED\" - \"FILE/DETAIL/EMPTY\" - \"FILE/TYPE/INVALID\" - \"GWD/PROPERTIES/INVALID\" - \"HTML5/FEATURE/UNSUPPORTED\" - \"LINKED/FILE/NOT/FOUND\" - \"MAX/FLASH/VERSION/11\" - \"MRAID/REFERENCED\" - \"NOT/SSL/COMPLIANT\" - \"ORPHANED/ASSET\" - \"PRIMARY/HTML/MISSING\" - \"SVG/INVALID\" - \"ZIP/INVALID\"
    , warnedValidationRules :: (Core.Maybe [CreativeAssetMetadata_WarnedValidationRulesItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeAssetMetadata' with the minimum fields required to make a request.
newCreativeAssetMetadata 
    ::  CreativeAssetMetadata
newCreativeAssetMetadata =
  CreativeAssetMetadata
    { assetIdentifier = Core.Nothing
    , clickTags = Core.Nothing
    , counterCustomEvents = Core.Nothing
    , detectedFeatures = Core.Nothing
    , exitCustomEvents = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , richMedia = Core.Nothing
    , timerCustomEvents = Core.Nothing
    , warnedValidationRules = Core.Nothing
    }

instance Core.FromJSON CreativeAssetMetadata where
        parseJSON
          = Core.withObject "CreativeAssetMetadata"
              (\ o ->
                 CreativeAssetMetadata Core.<$>
                   (o Core..:? "assetIdentifier") Core.<*>
                     (o Core..:? "clickTags")
                     Core.<*> (o Core..:? "counterCustomEvents")
                     Core.<*> (o Core..:? "detectedFeatures")
                     Core.<*> (o Core..:? "exitCustomEvents")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "richMedia")
                     Core.<*> (o Core..:? "timerCustomEvents")
                     Core.<*> (o Core..:? "warnedValidationRules"))

instance Core.ToJSON CreativeAssetMetadata where
        toJSON CreativeAssetMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("assetIdentifier" Core..=) Core.<$>
                    assetIdentifier,
                  ("clickTags" Core..=) Core.<$> clickTags,
                  ("counterCustomEvents" Core..=) Core.<$>
                    counterCustomEvents,
                  ("detectedFeatures" Core..=) Core.<$>
                    detectedFeatures,
                  ("exitCustomEvents" Core..=) Core.<$>
                    exitCustomEvents,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("richMedia" Core..=) Core.<$> richMedia,
                  ("timerCustomEvents" Core..=) Core.<$>
                    timerCustomEvents,
                  ("warnedValidationRules" Core..=) Core.<$>
                    warnedValidationRules])


-- | Encapsulates the list of rules for asset selection and a default asset in case none of the rules match. Applicable to INSTREAM_VIDEO creatives.
--
-- /See:/ 'newCreativeAssetSelection' smart constructor.
data CreativeAssetSelection = CreativeAssetSelection
    {
      -- | A creativeAssets[].id. This should refer to one of the parent assets in this creative, and will be served if none of the rules match. This is a required field.
      defaultAssetId :: (Core.Maybe Core.Int64)
      -- | Rules determine which asset will be served to a viewer. Rules will be evaluated in the order in which they are stored in this list. This list must contain at least one rule. Applicable to INSTREAM_VIDEO creatives.
    , rules :: (Core.Maybe [Rule])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeAssetSelection' with the minimum fields required to make a request.
newCreativeAssetSelection 
    ::  CreativeAssetSelection
newCreativeAssetSelection =
  CreativeAssetSelection {defaultAssetId = Core.Nothing, rules = Core.Nothing}

instance Core.FromJSON CreativeAssetSelection where
        parseJSON
          = Core.withObject "CreativeAssetSelection"
              (\ o ->
                 CreativeAssetSelection Core.<$>
                   (o Core..:? "defaultAssetId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "rules"))

instance Core.ToJSON CreativeAssetSelection where
        toJSON CreativeAssetSelection{..}
          = Core.object
              (Core.catMaybes
                 [("defaultAssetId" Core..=) Core.. Core.AsText
                    Core.<$> defaultAssetId,
                  ("rules" Core..=) Core.<$> rules])


-- | Creative Assignment.
--
-- /See:/ 'newCreativeAssignment' smart constructor.
data CreativeAssignment = CreativeAssignment
    {
      -- | Whether this creative assignment is active. When true, the creative will be included in the ad\'s rotation.
      active :: (Core.Maybe Core.Bool)
      -- | Whether applicable event tags should fire when this creative assignment is rendered. If this value is unset when the ad is inserted or updated, it will default to true for all creative types EXCEPT for INTERNAL/REDIRECT, INTERSTITIAL/INTERNAL/REDIRECT, and INSTREAM/VIDEO.
    , applyEventTags :: (Core.Maybe Core.Bool)
      -- | Click-through URL of the creative assignment.
    , clickThroughUrl :: (Core.Maybe ClickThroughUrl)
      -- | Companion creative overrides for this creative assignment. Applicable to video ads.
    , companionCreativeOverrides :: (Core.Maybe [CompanionClickThroughOverride])
      -- | Creative group assignments for this creative assignment. Only one assignment per creative group number is allowed for a maximum of two assignments.
    , creativeGroupAssignments :: (Core.Maybe [CreativeGroupAssignment])
      -- | ID of the creative to be assigned. This is a required field.
    , creativeId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the creative. This is a read-only, auto-generated field.
    , creativeIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | 
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Rich media exit overrides for this creative assignment. Applicable when the creative type is any of the following: - DISPLAY - RICH/MEDIA/INPAGE - RICH/MEDIA/INPAGE/FLOATING - RICH/MEDIA/IM/EXPAND - RICH/MEDIA/EXPANDING - RICH/MEDIA/INTERSTITIAL/FLOAT - RICH/MEDIA/MOBILE/IN/APP - RICH/MEDIA/MULTI/FLOATING - RICH/MEDIA/PEEL/DOWN - VPAID/LINEAR - VPAID/NON/LINEAR
    , richMediaExitOverrides :: (Core.Maybe [RichMediaExitOverride])
      -- | Sequence number of the creative assignment, applicable when the rotation type is CREATIVE/ROTATION/TYPE_SEQUENTIAL. Acceptable values are 1 to 65535, inclusive.
    , sequence :: (Core.Maybe Core.Int32)
      -- | Whether the creative to be assigned is SSL-compliant. This is a read-only field that is auto-generated when the ad is inserted or updated.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | 
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Weight of the creative assignment, applicable when the rotation type is CREATIVE/ROTATION/TYPE_RANDOM. Value must be greater than or equal to 1.
    , weight :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeAssignment' with the minimum fields required to make a request.
newCreativeAssignment 
    ::  CreativeAssignment
newCreativeAssignment =
  CreativeAssignment
    { active = Core.Nothing
    , applyEventTags = Core.Nothing
    , clickThroughUrl = Core.Nothing
    , companionCreativeOverrides = Core.Nothing
    , creativeGroupAssignments = Core.Nothing
    , creativeId = Core.Nothing
    , creativeIdDimensionValue = Core.Nothing
    , endTime = Core.Nothing
    , richMediaExitOverrides = Core.Nothing
    , sequence = Core.Nothing
    , sslCompliant = Core.Nothing
    , startTime = Core.Nothing
    , weight = Core.Nothing
    }

instance Core.FromJSON CreativeAssignment where
        parseJSON
          = Core.withObject "CreativeAssignment"
              (\ o ->
                 CreativeAssignment Core.<$>
                   (o Core..:? "active") Core.<*>
                     (o Core..:? "applyEventTags")
                     Core.<*> (o Core..:? "clickThroughUrl")
                     Core.<*> (o Core..:? "companionCreativeOverrides")
                     Core.<*> (o Core..:? "creativeGroupAssignments")
                     Core.<*>
                     (o Core..:? "creativeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "creativeIdDimensionValue")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "richMediaExitOverrides")
                     Core.<*> (o Core..:? "sequence")
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "weight"))

instance Core.ToJSON CreativeAssignment where
        toJSON CreativeAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("active" Core..=) Core.<$> active,
                  ("applyEventTags" Core..=) Core.<$> applyEventTags,
                  ("clickThroughUrl" Core..=) Core.<$> clickThroughUrl,
                  ("companionCreativeOverrides" Core..=) Core.<$>
                    companionCreativeOverrides,
                  ("creativeGroupAssignments" Core..=) Core.<$>
                    creativeGroupAssignments,
                  ("creativeId" Core..=) Core.. Core.AsText Core.<$>
                    creativeId,
                  ("creativeIdDimensionValue" Core..=) Core.<$>
                    creativeIdDimensionValue,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("richMediaExitOverrides" Core..=) Core.<$>
                    richMediaExitOverrides,
                  ("sequence" Core..=) Core.<$> sequence,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("weight" Core..=) Core.<$> weight])


-- | Click-through URL
--
-- /See:/ 'newCreativeClickThroughUrl' smart constructor.
data CreativeClickThroughUrl = CreativeClickThroughUrl
    {
      -- | Read-only convenience field representing the actual URL that will be used for this click-through. The URL is computed as follows: - If landingPageId is specified then that landing page\'s URL is assigned to this field. - Otherwise, the customClickThroughUrl is assigned to this field.
      computedClickThroughUrl :: (Core.Maybe Core.Text)
      -- | Custom click-through URL. Applicable if the landingPageId field is left unset.
    , customClickThroughUrl :: (Core.Maybe Core.Text)
      -- | ID of the landing page for the click-through URL.
    , landingPageId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeClickThroughUrl' with the minimum fields required to make a request.
newCreativeClickThroughUrl 
    ::  CreativeClickThroughUrl
newCreativeClickThroughUrl =
  CreativeClickThroughUrl
    { computedClickThroughUrl = Core.Nothing
    , customClickThroughUrl = Core.Nothing
    , landingPageId = Core.Nothing
    }

instance Core.FromJSON CreativeClickThroughUrl where
        parseJSON
          = Core.withObject "CreativeClickThroughUrl"
              (\ o ->
                 CreativeClickThroughUrl Core.<$>
                   (o Core..:? "computedClickThroughUrl") Core.<*>
                     (o Core..:? "customClickThroughUrl")
                     Core.<*>
                     (o Core..:? "landingPageId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CreativeClickThroughUrl where
        toJSON CreativeClickThroughUrl{..}
          = Core.object
              (Core.catMaybes
                 [("computedClickThroughUrl" Core..=) Core.<$>
                    computedClickThroughUrl,
                  ("customClickThroughUrl" Core..=) Core.<$>
                    customClickThroughUrl,
                  ("landingPageId" Core..=) Core.. Core.AsText Core.<$>
                    landingPageId])


-- | Creative Custom Event.
--
-- /See:/ 'newCreativeCustomEvent' smart constructor.
data CreativeCustomEvent = CreativeCustomEvent
    {
      -- | Unique ID of this event used by Reporting and Data Transfer. This is a read-only field.
      advertiserCustomEventId :: (Core.Maybe Core.Int64)
      -- | User-entered name for the event.
    , advertiserCustomEventName :: (Core.Maybe Core.Text)
      -- | Type of the event. This is a read-only field.
    , advertiserCustomEventType :: (Core.Maybe CreativeCustomEvent_AdvertiserCustomEventType)
      -- | Artwork label column, used to link events in Campaign Manager back to events in Studio. This is a required field and should not be modified after insertion.
    , artworkLabel :: (Core.Maybe Core.Text)
      -- | Artwork type used by the creative.This is a read-only field.
    , artworkType :: (Core.Maybe CreativeCustomEvent_ArtworkType)
      -- | Exit click-through URL for the event. This field is used only for exit events.
    , exitClickThroughUrl :: (Core.Maybe CreativeClickThroughUrl)
      -- | ID of this event. This is a required field and should not be modified after insertion.
    , id :: (Core.Maybe Core.Int64)
      -- | Properties for rich media popup windows. This field is used only for exit events.
    , popupWindowProperties :: (Core.Maybe PopupWindowProperties)
      -- | Target type used by the event.
    , targetType :: (Core.Maybe CreativeCustomEvent_TargetType)
      -- | Video reporting ID, used to differentiate multiple videos in a single creative. This is a read-only field.
    , videoReportingId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeCustomEvent' with the minimum fields required to make a request.
newCreativeCustomEvent 
    ::  CreativeCustomEvent
newCreativeCustomEvent =
  CreativeCustomEvent
    { advertiserCustomEventId = Core.Nothing
    , advertiserCustomEventName = Core.Nothing
    , advertiserCustomEventType = Core.Nothing
    , artworkLabel = Core.Nothing
    , artworkType = Core.Nothing
    , exitClickThroughUrl = Core.Nothing
    , id = Core.Nothing
    , popupWindowProperties = Core.Nothing
    , targetType = Core.Nothing
    , videoReportingId = Core.Nothing
    }

instance Core.FromJSON CreativeCustomEvent where
        parseJSON
          = Core.withObject "CreativeCustomEvent"
              (\ o ->
                 CreativeCustomEvent Core.<$>
                   (o Core..:? "advertiserCustomEventId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserCustomEventName")
                     Core.<*> (o Core..:? "advertiserCustomEventType")
                     Core.<*> (o Core..:? "artworkLabel")
                     Core.<*> (o Core..:? "artworkType")
                     Core.<*> (o Core..:? "exitClickThroughUrl")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "popupWindowProperties")
                     Core.<*> (o Core..:? "targetType")
                     Core.<*> (o Core..:? "videoReportingId"))

instance Core.ToJSON CreativeCustomEvent where
        toJSON CreativeCustomEvent{..}
          = Core.object
              (Core.catMaybes
                 [("advertiserCustomEventId" Core..=) Core..
                    Core.AsText
                    Core.<$> advertiserCustomEventId,
                  ("advertiserCustomEventName" Core..=) Core.<$>
                    advertiserCustomEventName,
                  ("advertiserCustomEventType" Core..=) Core.<$>
                    advertiserCustomEventType,
                  ("artworkLabel" Core..=) Core.<$> artworkLabel,
                  ("artworkType" Core..=) Core.<$> artworkType,
                  ("exitClickThroughUrl" Core..=) Core.<$>
                    exitClickThroughUrl,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("popupWindowProperties" Core..=) Core.<$>
                    popupWindowProperties,
                  ("targetType" Core..=) Core.<$> targetType,
                  ("videoReportingId" Core..=) Core.<$>
                    videoReportingId])


-- | Contains properties of a creative field.
--
-- /See:/ 'newCreativeField' smart constructor.
data CreativeField = CreativeField
    {
      -- | Account ID of this creative field. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this creative field. This is a required field on insertion.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | ID of this creative field. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeField\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this creative field. This is a required field and must be less than 256 characters long and unique among creative fields of the same advertiser.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this creative field. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeField' with the minimum fields required to make a request.
newCreativeField 
    ::  CreativeField
newCreativeField =
  CreativeField
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON CreativeField where
        parseJSON
          = Core.withObject "CreativeField"
              (\ o ->
                 CreativeField Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CreativeField where
        toJSON CreativeField{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Creative Field Assignment.
--
-- /See:/ 'newCreativeFieldAssignment' smart constructor.
data CreativeFieldAssignment = CreativeFieldAssignment
    {
      -- | ID of the creative field.
      creativeFieldId :: (Core.Maybe Core.Int64)
      -- | ID of the creative field value.
    , creativeFieldValueId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeFieldAssignment' with the minimum fields required to make a request.
newCreativeFieldAssignment 
    ::  CreativeFieldAssignment
newCreativeFieldAssignment =
  CreativeFieldAssignment
    {creativeFieldId = Core.Nothing, creativeFieldValueId = Core.Nothing}

instance Core.FromJSON CreativeFieldAssignment where
        parseJSON
          = Core.withObject "CreativeFieldAssignment"
              (\ o ->
                 CreativeFieldAssignment Core.<$>
                   (o Core..:? "creativeFieldId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "creativeFieldValueId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CreativeFieldAssignment where
        toJSON CreativeFieldAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("creativeFieldId" Core..=) Core.. Core.AsText
                    Core.<$> creativeFieldId,
                  ("creativeFieldValueId" Core..=) Core.. Core.AsText
                    Core.<$> creativeFieldValueId])


-- | Contains properties of a creative field value.
--
-- /See:/ 'newCreativeFieldValue' smart constructor.
data CreativeFieldValue = CreativeFieldValue
    {
      -- | ID of this creative field value. This is a read-only, auto-generated field.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldValue\".
    , kind :: (Core.Maybe Core.Text)
      -- | Value of this creative field value. It needs to be less than 256 characters in length and unique per creative field.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeFieldValue' with the minimum fields required to make a request.
newCreativeFieldValue 
    ::  CreativeFieldValue
newCreativeFieldValue =
  CreativeFieldValue
    {id = Core.Nothing, kind = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON CreativeFieldValue where
        parseJSON
          = Core.withObject "CreativeFieldValue"
              (\ o ->
                 CreativeFieldValue Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON CreativeFieldValue where
        toJSON CreativeFieldValue{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("value" Core..=) Core.<$> value])


-- | Creative Field Value List Response
--
-- /See:/ 'newCreativeFieldValuesListResponse' smart constructor.
data CreativeFieldValuesListResponse = CreativeFieldValuesListResponse
    {
      -- | Creative field value collection.
      creativeFieldValues :: (Core.Maybe [CreativeFieldValue])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldValuesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeFieldValuesListResponse' with the minimum fields required to make a request.
newCreativeFieldValuesListResponse 
    ::  CreativeFieldValuesListResponse
newCreativeFieldValuesListResponse =
  CreativeFieldValuesListResponse
    { creativeFieldValues = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           CreativeFieldValuesListResponse
         where
        parseJSON
          = Core.withObject "CreativeFieldValuesListResponse"
              (\ o ->
                 CreativeFieldValuesListResponse Core.<$>
                   (o Core..:? "creativeFieldValues") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CreativeFieldValuesListResponse
         where
        toJSON CreativeFieldValuesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("creativeFieldValues" Core..=) Core.<$>
                    creativeFieldValues,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Creative Field List Response
--
-- /See:/ 'newCreativeFieldsListResponse' smart constructor.
data CreativeFieldsListResponse = CreativeFieldsListResponse
    {
      -- | Creative field collection.
      creativeFields :: (Core.Maybe [CreativeField])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeFieldsListResponse' with the minimum fields required to make a request.
newCreativeFieldsListResponse 
    ::  CreativeFieldsListResponse
newCreativeFieldsListResponse =
  CreativeFieldsListResponse
    { creativeFields = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON CreativeFieldsListResponse
         where
        parseJSON
          = Core.withObject "CreativeFieldsListResponse"
              (\ o ->
                 CreativeFieldsListResponse Core.<$>
                   (o Core..:? "creativeFields") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CreativeFieldsListResponse where
        toJSON CreativeFieldsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("creativeFields" Core..=) Core.<$> creativeFields,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains properties of a creative group.
--
-- /See:/ 'newCreativeGroup' smart constructor.
data CreativeGroup = CreativeGroup
    {
      -- | Account ID of this creative group. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this creative group. This is a required field on insertion.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Subgroup of the creative group. Assign your creative groups to a subgroup in order to filter or manage them more easily. This field is required on insertion and is read-only after insertion. Acceptable values are 1 to 2, inclusive.
    , groupNumber :: (Core.Maybe Core.Int32)
      -- | ID of this creative group. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this creative group. This is a required field and must be less than 256 characters long and unique among creative groups of the same advertiser.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this creative group. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeGroup' with the minimum fields required to make a request.
newCreativeGroup 
    ::  CreativeGroup
newCreativeGroup =
  CreativeGroup
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , groupNumber = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON CreativeGroup where
        parseJSON
          = Core.withObject "CreativeGroup"
              (\ o ->
                 CreativeGroup Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "groupNumber")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON CreativeGroup where
        toJSON CreativeGroup{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("groupNumber" Core..=) Core.<$> groupNumber,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Creative Group Assignment.
--
-- /See:/ 'newCreativeGroupAssignment' smart constructor.
data CreativeGroupAssignment = CreativeGroupAssignment
    {
      -- | ID of the creative group to be assigned.
      creativeGroupId :: (Core.Maybe Core.Int64)
      -- | Creative group number of the creative group assignment.
    , creativeGroupNumber :: (Core.Maybe CreativeGroupAssignment_CreativeGroupNumber)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeGroupAssignment' with the minimum fields required to make a request.
newCreativeGroupAssignment 
    ::  CreativeGroupAssignment
newCreativeGroupAssignment =
  CreativeGroupAssignment
    {creativeGroupId = Core.Nothing, creativeGroupNumber = Core.Nothing}

instance Core.FromJSON CreativeGroupAssignment where
        parseJSON
          = Core.withObject "CreativeGroupAssignment"
              (\ o ->
                 CreativeGroupAssignment Core.<$>
                   (o Core..:? "creativeGroupId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "creativeGroupNumber"))

instance Core.ToJSON CreativeGroupAssignment where
        toJSON CreativeGroupAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("creativeGroupId" Core..=) Core.. Core.AsText
                    Core.<$> creativeGroupId,
                  ("creativeGroupNumber" Core..=) Core.<$>
                    creativeGroupNumber])


-- | Creative Group List Response
--
-- /See:/ 'newCreativeGroupsListResponse' smart constructor.
data CreativeGroupsListResponse = CreativeGroupsListResponse
    {
      -- | Creative group collection.
      creativeGroups :: (Core.Maybe [CreativeGroup])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeGroupsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeGroupsListResponse' with the minimum fields required to make a request.
newCreativeGroupsListResponse 
    ::  CreativeGroupsListResponse
newCreativeGroupsListResponse =
  CreativeGroupsListResponse
    { creativeGroups = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON CreativeGroupsListResponse
         where
        parseJSON
          = Core.withObject "CreativeGroupsListResponse"
              (\ o ->
                 CreativeGroupsListResponse Core.<$>
                   (o Core..:? "creativeGroups") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CreativeGroupsListResponse where
        toJSON CreativeGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("creativeGroups" Core..=) Core.<$> creativeGroups,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Creative optimization settings.
--
-- /See:/ 'newCreativeOptimizationConfiguration' smart constructor.
data CreativeOptimizationConfiguration = CreativeOptimizationConfiguration
    {
      -- | ID of this creative optimization config. This field is auto-generated when the campaign is inserted or updated. It can be null for existing campaigns.
      id :: (Core.Maybe Core.Int64)
      -- | Name of this creative optimization config. This is a required field and must be less than 129 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | List of optimization activities associated with this configuration.
    , optimizationActivitys :: (Core.Maybe [OptimizationActivity])
      -- | Optimization model for this configuration.
    , optimizationModel :: (Core.Maybe CreativeOptimizationConfiguration_OptimizationModel)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeOptimizationConfiguration' with the minimum fields required to make a request.
newCreativeOptimizationConfiguration 
    ::  CreativeOptimizationConfiguration
newCreativeOptimizationConfiguration =
  CreativeOptimizationConfiguration
    { id = Core.Nothing
    , name = Core.Nothing
    , optimizationActivitys = Core.Nothing
    , optimizationModel = Core.Nothing
    }

instance Core.FromJSON
           CreativeOptimizationConfiguration
         where
        parseJSON
          = Core.withObject "CreativeOptimizationConfiguration"
              (\ o ->
                 CreativeOptimizationConfiguration Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "optimizationActivitys")
                     Core.<*> (o Core..:? "optimizationModel"))

instance Core.ToJSON
           CreativeOptimizationConfiguration
         where
        toJSON CreativeOptimizationConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("optimizationActivitys" Core..=) Core.<$>
                    optimizationActivitys,
                  ("optimizationModel" Core..=) Core.<$>
                    optimizationModel])


-- | Creative Rotation.
--
-- /See:/ 'newCreativeRotation' smart constructor.
data CreativeRotation = CreativeRotation
    {
      -- | Creative assignments in this creative rotation.
      creativeAssignments :: (Core.Maybe [CreativeAssignment])
      -- | Creative optimization configuration that is used by this ad. It should refer to one of the existing optimization configurations in the ad\'s campaign. If it is unset or set to 0, then the campaign\'s default optimization configuration will be used for this ad.
    , creativeOptimizationConfigurationId :: (Core.Maybe Core.Int64)
      -- | Type of creative rotation. Can be used to specify whether to use sequential or random rotation.
    , type' :: (Core.Maybe CreativeRotation_Type)
      -- | Strategy for calculating weights. Used with CREATIVE/ROTATION/TYPE_RANDOM.
    , weightCalculationStrategy :: (Core.Maybe CreativeRotation_WeightCalculationStrategy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativeRotation' with the minimum fields required to make a request.
newCreativeRotation 
    ::  CreativeRotation
newCreativeRotation =
  CreativeRotation
    { creativeAssignments = Core.Nothing
    , creativeOptimizationConfigurationId = Core.Nothing
    , type' = Core.Nothing
    , weightCalculationStrategy = Core.Nothing
    }

instance Core.FromJSON CreativeRotation where
        parseJSON
          = Core.withObject "CreativeRotation"
              (\ o ->
                 CreativeRotation Core.<$>
                   (o Core..:? "creativeAssignments") Core.<*>
                     (o Core..:? "creativeOptimizationConfigurationId"
                        Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "weightCalculationStrategy"))

instance Core.ToJSON CreativeRotation where
        toJSON CreativeRotation{..}
          = Core.object
              (Core.catMaybes
                 [("creativeAssignments" Core..=) Core.<$>
                    creativeAssignments,
                  ("creativeOptimizationConfigurationId" Core..=)
                    Core.. Core.AsText
                    Core.<$> creativeOptimizationConfigurationId,
                  ("type" Core..=) Core.<$> type',
                  ("weightCalculationStrategy" Core..=) Core.<$>
                    weightCalculationStrategy])


-- | Creative List Response
--
-- /See:/ 'newCreativesListResponse' smart constructor.
data CreativesListResponse = CreativesListResponse
    {
      -- | Creative collection.
      creatives :: (Core.Maybe [Creative])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreativesListResponse' with the minimum fields required to make a request.
newCreativesListResponse 
    ::  CreativesListResponse
newCreativesListResponse =
  CreativesListResponse
    { creatives = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON CreativesListResponse where
        parseJSON
          = Core.withObject "CreativesListResponse"
              (\ o ->
                 CreativesListResponse Core.<$>
                   (o Core..:? "creatives") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CreativesListResponse where
        toJSON CreativesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("creatives" Core..=) Core.<$> creatives,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Represents fields that are compatible to be selected for a report of type \"CROSS/DIMENSION/REACH\".
--
-- /See:/ 'newCrossDimensionReachReportCompatibleFields' smart constructor.
data CrossDimensionReachReportCompatibleFields = CrossDimensionReachReportCompatibleFields
    {
      -- | Dimensions which are compatible to be selected in the \"breakdown\" section of the report.
      breakdown :: (Core.Maybe [Dimension])
      -- | Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.
    , dimensionFilters :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
      -- | Metrics which are compatible to be selected in the \"overlapMetricNames\" section of the report.
    , overlapMetrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrossDimensionReachReportCompatibleFields' with the minimum fields required to make a request.
newCrossDimensionReachReportCompatibleFields 
    ::  CrossDimensionReachReportCompatibleFields
newCrossDimensionReachReportCompatibleFields =
  CrossDimensionReachReportCompatibleFields
    { breakdown = Core.Nothing
    , dimensionFilters = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    , overlapMetrics = Core.Nothing
    }

instance Core.FromJSON
           CrossDimensionReachReportCompatibleFields
         where
        parseJSON
          = Core.withObject
              "CrossDimensionReachReportCompatibleFields"
              (\ o ->
                 CrossDimensionReachReportCompatibleFields Core.<$>
                   (o Core..:? "breakdown") Core.<*>
                     (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "overlapMetrics"))

instance Core.ToJSON
           CrossDimensionReachReportCompatibleFields
         where
        toJSON CrossDimensionReachReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("breakdown" Core..=) Core.<$> breakdown,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("overlapMetrics" Core..=) Core.<$> overlapMetrics])


-- | Represents fields that are compatible to be selected for a report of type \"CROSS/MEDIA/REACH\".
--
-- /See:/ 'newCrossMediaReachReportCompatibleFields' smart constructor.
data CrossMediaReachReportCompatibleFields = CrossMediaReachReportCompatibleFields
    {
      -- | Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.
      dimensionFilters :: (Core.Maybe [Dimension])
      -- | Dimensions which are compatible to be selected in the \"dimensions\" section of the report.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#crossMediaReachReportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrossMediaReachReportCompatibleFields' with the minimum fields required to make a request.
newCrossMediaReachReportCompatibleFields 
    ::  CrossMediaReachReportCompatibleFields
newCrossMediaReachReportCompatibleFields =
  CrossMediaReachReportCompatibleFields
    { dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    }

instance Core.FromJSON
           CrossMediaReachReportCompatibleFields
         where
        parseJSON
          = Core.withObject
              "CrossMediaReachReportCompatibleFields"
              (\ o ->
                 CrossMediaReachReportCompatibleFields Core.<$>
                   (o Core..:? "dimensionFilters") Core.<*>
                     (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics"))

instance Core.ToJSON
           CrossMediaReachReportCompatibleFields
         where
        toJSON CrossMediaReachReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics])


-- | A custom floodlight variable. This field may only be used when calling batchinsert; it is not supported by batchupdate.
--
-- /See:/ 'newCustomFloodlightVariable' smart constructor.
data CustomFloodlightVariable = CustomFloodlightVariable
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#customFloodlightVariable\".
      kind :: (Core.Maybe Core.Text)
      -- | The type of custom floodlight variable to supply a value for. These map to the \"u[1-100]=\" in the tags.
    , type' :: (Core.Maybe CustomFloodlightVariable_Type)
      -- | The value of the custom floodlight variable. The length of string must not exceed 100 characters.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomFloodlightVariable' with the minimum fields required to make a request.
newCustomFloodlightVariable 
    ::  CustomFloodlightVariable
newCustomFloodlightVariable =
  CustomFloodlightVariable
    {kind = Core.Nothing, type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON CustomFloodlightVariable where
        parseJSON
          = Core.withObject "CustomFloodlightVariable"
              (\ o ->
                 CustomFloodlightVariable Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON CustomFloodlightVariable where
        toJSON CustomFloodlightVariable{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | Represents a Custom Rich Media Events group.
--
-- /See:/ 'newCustomRichMediaEvents' smart constructor.
data CustomRichMediaEvents = CustomRichMediaEvents
    {
      -- | List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName.
      filteredEventIds :: (Core.Maybe [DimensionValue])
      -- | The kind of resource this is, in this case dfareporting#customRichMediaEvents.
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomRichMediaEvents' with the minimum fields required to make a request.
newCustomRichMediaEvents 
    ::  CustomRichMediaEvents
newCustomRichMediaEvents =
  CustomRichMediaEvents {filteredEventIds = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON CustomRichMediaEvents where
        parseJSON
          = Core.withObject "CustomRichMediaEvents"
              (\ o ->
                 CustomRichMediaEvents Core.<$>
                   (o Core..:? "filteredEventIds") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON CustomRichMediaEvents where
        toJSON CustomRichMediaEvents{..}
          = Core.object
              (Core.catMaybes
                 [("filteredEventIds" Core..=) Core.<$>
                    filteredEventIds,
                  ("kind" Core..=) Core.<$> kind])


-- | Custom Viewability Metric
--
-- /See:/ 'newCustomViewabilityMetric' smart constructor.
data CustomViewabilityMetric = CustomViewabilityMetric
    {
      -- | Configuration of the custom viewability metric.
      configuration :: (Core.Maybe CustomViewabilityMetricConfiguration)
      -- | ID of the custom viewability metric.
    , id :: (Core.Maybe Core.Int64)
      -- | Name of the custom viewability metric.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomViewabilityMetric' with the minimum fields required to make a request.
newCustomViewabilityMetric 
    ::  CustomViewabilityMetric
newCustomViewabilityMetric =
  CustomViewabilityMetric
    {configuration = Core.Nothing, id = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON CustomViewabilityMetric where
        parseJSON
          = Core.withObject "CustomViewabilityMetric"
              (\ o ->
                 CustomViewabilityMetric Core.<$>
                   (o Core..:? "configuration") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON CustomViewabilityMetric where
        toJSON CustomViewabilityMetric{..}
          = Core.object
              (Core.catMaybes
                 [("configuration" Core..=) Core.<$> configuration,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name])


-- | The attributes, like playtime and percent onscreen, that define the Custom Viewability Metric.
--
-- /See:/ 'newCustomViewabilityMetricConfiguration' smart constructor.
data CustomViewabilityMetricConfiguration = CustomViewabilityMetricConfiguration
    {
      -- | Whether the video must be audible to count an impression.
      audible :: (Core.Maybe Core.Bool)
      -- | The time in milliseconds the video must play for the Custom Viewability Metric to count an impression. If both this and timePercent are specified, the earlier of the two will be used.
    , timeMillis :: (Core.Maybe Core.Int32)
      -- | The percentage of video that must play for the Custom Viewability Metric to count an impression. If both this and timeMillis are specified, the earlier of the two will be used.
    , timePercent :: (Core.Maybe Core.Int32)
      -- | The percentage of video that must be on screen for the Custom Viewability Metric to count an impression.
    , viewabilityPercent :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomViewabilityMetricConfiguration' with the minimum fields required to make a request.
newCustomViewabilityMetricConfiguration 
    ::  CustomViewabilityMetricConfiguration
newCustomViewabilityMetricConfiguration =
  CustomViewabilityMetricConfiguration
    { audible = Core.Nothing
    , timeMillis = Core.Nothing
    , timePercent = Core.Nothing
    , viewabilityPercent = Core.Nothing
    }

instance Core.FromJSON
           CustomViewabilityMetricConfiguration
         where
        parseJSON
          = Core.withObject
              "CustomViewabilityMetricConfiguration"
              (\ o ->
                 CustomViewabilityMetricConfiguration Core.<$>
                   (o Core..:? "audible") Core.<*>
                     (o Core..:? "timeMillis")
                     Core.<*> (o Core..:? "timePercent")
                     Core.<*> (o Core..:? "viewabilityPercent"))

instance Core.ToJSON
           CustomViewabilityMetricConfiguration
         where
        toJSON CustomViewabilityMetricConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("audible" Core..=) Core.<$> audible,
                  ("timeMillis" Core..=) Core.<$> timeMillis,
                  ("timePercent" Core..=) Core.<$> timePercent,
                  ("viewabilityPercent" Core..=) Core.<$>
                    viewabilityPercent])


-- | Represents a date range.
--
-- /See:/ 'newDateRange' smart constructor.
data DateRange = DateRange
    {
      -- | 
      endDate :: (Core.Maybe Core.Date)
      -- | The kind of resource this is, in this case dfareporting#dateRange.
    , kind :: (Core.Maybe Core.Text)
      -- | The date range relative to the date of when the report is run.
    , relativeDateRange :: (Core.Maybe DateRange_RelativeDateRange)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
newDateRange 
    ::  DateRange
newDateRange =
  DateRange
    { endDate = Core.Nothing
    , kind = Core.Nothing
    , relativeDateRange = Core.Nothing
    , startDate = Core.Nothing
    }

instance Core.FromJSON DateRange where
        parseJSON
          = Core.withObject "DateRange"
              (\ o ->
                 DateRange Core.<$>
                   (o Core..:? "endDate") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "relativeDateRange")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON DateRange where
        toJSON DateRange{..}
          = Core.object
              (Core.catMaybes
                 [("endDate" Core..=) Core.<$> endDate,
                  ("kind" Core..=) Core.<$> kind,
                  ("relativeDateRange" Core..=) Core.<$>
                    relativeDateRange,
                  ("startDate" Core..=) Core.<$> startDate])


-- | Day Part Targeting.
--
-- /See:/ 'newDayPartTargeting' smart constructor.
data DayPartTargeting = DayPartTargeting
    {
      -- | Days of the week when the ad will serve. Acceptable values are: - \"SUNDAY\" - \"MONDAY\" - \"TUESDAY\" - \"WEDNESDAY\" - \"THURSDAY\" - \"FRIDAY\" - \"SATURDAY\"
      daysOfWeek :: (Core.Maybe [DayPartTargeting_DaysOfWeekItem])
      -- | Hours of the day when the ad will serve, where 0 is midnight to 1 AM and 23 is 11 PM to midnight. Can be specified with days of week, in which case the ad would serve during these hours on the specified days. For example if Monday, Wednesday, Friday are the days of week specified and 9-10am, 3-5pm (hours 9, 15, and 16) is specified, the ad would serve Monday, Wednesdays, and Fridays at 9-10am and 3-5pm. Acceptable values are 0 to 23, inclusive.
    , hoursOfDay :: (Core.Maybe [Core.Int32])
      -- | Whether or not to use the user\'s local time. If false, the America\/New York time zone applies.
    , userLocalTime :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DayPartTargeting' with the minimum fields required to make a request.
newDayPartTargeting 
    ::  DayPartTargeting
newDayPartTargeting =
  DayPartTargeting
    { daysOfWeek = Core.Nothing
    , hoursOfDay = Core.Nothing
    , userLocalTime = Core.Nothing
    }

instance Core.FromJSON DayPartTargeting where
        parseJSON
          = Core.withObject "DayPartTargeting"
              (\ o ->
                 DayPartTargeting Core.<$>
                   (o Core..:? "daysOfWeek") Core.<*>
                     (o Core..:? "hoursOfDay")
                     Core.<*> (o Core..:? "userLocalTime"))

instance Core.ToJSON DayPartTargeting where
        toJSON DayPartTargeting{..}
          = Core.object
              (Core.catMaybes
                 [("daysOfWeek" Core..=) Core.<$> daysOfWeek,
                  ("hoursOfDay" Core..=) Core.<$> hoursOfDay,
                  ("userLocalTime" Core..=) Core.<$> userLocalTime])


-- | Contains information about a landing page deep link.
--
-- /See:/ 'newDeepLink' smart constructor.
data DeepLink = DeepLink
    {
      -- | The URL of the mobile app being linked to.
      appUrl :: (Core.Maybe Core.Text)
      -- | The fallback URL. This URL will be served to users who do not have the mobile app installed.
    , fallbackUrl :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#deepLink\".
    , kind :: (Core.Maybe Core.Text)
      -- | The mobile app targeted by this deep link.
    , mobileApp :: (Core.Maybe MobileApp)
      -- | Ads served to users on these remarketing lists will use this deep link. Applicable when mobileApp.directory is APPLE/APP/STORE.
    , remarketingListIds :: (Core.Maybe [Core.Int64])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeepLink' with the minimum fields required to make a request.
newDeepLink 
    ::  DeepLink
newDeepLink =
  DeepLink
    { appUrl = Core.Nothing
    , fallbackUrl = Core.Nothing
    , kind = Core.Nothing
    , mobileApp = Core.Nothing
    , remarketingListIds = Core.Nothing
    }

instance Core.FromJSON DeepLink where
        parseJSON
          = Core.withObject "DeepLink"
              (\ o ->
                 DeepLink Core.<$>
                   (o Core..:? "appUrl") Core.<*>
                     (o Core..:? "fallbackUrl")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "mobileApp")
                     Core.<*>
                     (o Core..:? "remarketingListIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText)))

instance Core.ToJSON DeepLink where
        toJSON DeepLink{..}
          = Core.object
              (Core.catMaybes
                 [("appUrl" Core..=) Core.<$> appUrl,
                  ("fallbackUrl" Core..=) Core.<$> fallbackUrl,
                  ("kind" Core..=) Core.<$> kind,
                  ("mobileApp" Core..=) Core.<$> mobileApp,
                  ("remarketingListIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> remarketingListIds])


-- | Properties of inheriting and overriding the default click-through event tag. A campaign may override the event tag defined at the advertiser level, and an ad may also override the campaign\'s setting further.
--
-- /See:/ 'newDefaultClickThroughEventTagProperties' smart constructor.
data DefaultClickThroughEventTagProperties = DefaultClickThroughEventTagProperties
    {
      -- | ID of the click-through event tag to apply to all ads in this entity\'s scope.
      defaultClickThroughEventTagId :: (Core.Maybe Core.Int64)
      -- | Whether this entity should override the inherited default click-through event tag with its own defined value.
    , overrideInheritedEventTag :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DefaultClickThroughEventTagProperties' with the minimum fields required to make a request.
newDefaultClickThroughEventTagProperties 
    ::  DefaultClickThroughEventTagProperties
newDefaultClickThroughEventTagProperties =
  DefaultClickThroughEventTagProperties
    { defaultClickThroughEventTagId = Core.Nothing
    , overrideInheritedEventTag = Core.Nothing
    }

instance Core.FromJSON
           DefaultClickThroughEventTagProperties
         where
        parseJSON
          = Core.withObject
              "DefaultClickThroughEventTagProperties"
              (\ o ->
                 DefaultClickThroughEventTagProperties Core.<$>
                   (o Core..:? "defaultClickThroughEventTagId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "overrideInheritedEventTag"))

instance Core.ToJSON
           DefaultClickThroughEventTagProperties
         where
        toJSON DefaultClickThroughEventTagProperties{..}
          = Core.object
              (Core.catMaybes
                 [("defaultClickThroughEventTagId" Core..=) Core..
                    Core.AsText
                    Core.<$> defaultClickThroughEventTagId,
                  ("overrideInheritedEventTag" Core..=) Core.<$>
                    overrideInheritedEventTag])


-- | Delivery Schedule.
--
-- /See:/ 'newDeliverySchedule' smart constructor.
data DeliverySchedule = DeliverySchedule
    {
      -- | Limit on the number of times an individual user can be served the ad within a specified period of time.
      frequencyCap :: (Core.Maybe FrequencyCap)
      -- | Whether or not hard cutoff is enabled. If true, the ad will not serve after the end date and time. Otherwise the ad will continue to be served until it has reached its delivery goals.
    , hardCutoff :: (Core.Maybe Core.Bool)
      -- | Impression ratio for this ad. This ratio determines how often each ad is served relative to the others. For example, if ad A has an impression ratio of 1 and ad B has an impression ratio of 3, then Campaign Manager will serve ad B three times as often as ad A. Acceptable values are 1 to 10, inclusive.
    , impressionRatio :: (Core.Maybe Core.Int64)
      -- | Serving priority of an ad, with respect to other ads. The lower the priority number, the greater the priority with which it is served.
    , priority :: (Core.Maybe DeliverySchedule_Priority)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeliverySchedule' with the minimum fields required to make a request.
newDeliverySchedule 
    ::  DeliverySchedule
newDeliverySchedule =
  DeliverySchedule
    { frequencyCap = Core.Nothing
    , hardCutoff = Core.Nothing
    , impressionRatio = Core.Nothing
    , priority = Core.Nothing
    }

instance Core.FromJSON DeliverySchedule where
        parseJSON
          = Core.withObject "DeliverySchedule"
              (\ o ->
                 DeliverySchedule Core.<$>
                   (o Core..:? "frequencyCap") Core.<*>
                     (o Core..:? "hardCutoff")
                     Core.<*>
                     (o Core..:? "impressionRatio" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "priority"))

instance Core.ToJSON DeliverySchedule where
        toJSON DeliverySchedule{..}
          = Core.object
              (Core.catMaybes
                 [("frequencyCap" Core..=) Core.<$> frequencyCap,
                  ("hardCutoff" Core..=) Core.<$> hardCutoff,
                  ("impressionRatio" Core..=) Core.. Core.AsText
                    Core.<$> impressionRatio,
                  ("priority" Core..=) Core.<$> priority])


-- | Google Ad Manager Settings
--
-- /See:/ 'newDfpSettings' smart constructor.
data DfpSettings = DfpSettings
    {
      -- | Ad Manager network code for this directory site.
      dfpNetworkCode :: (Core.Maybe Core.Text)
      -- | Ad Manager network name for this directory site.
    , dfpNetworkName :: (Core.Maybe Core.Text)
      -- | Whether this directory site accepts programmatic placements.
    , programmaticPlacementAccepted :: (Core.Maybe Core.Bool)
      -- | Whether this directory site accepts publisher-paid tags.
    , pubPaidPlacementAccepted :: (Core.Maybe Core.Bool)
      -- | Whether this directory site is available only via Publisher Portal.
    , publisherPortalOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DfpSettings' with the minimum fields required to make a request.
newDfpSettings 
    ::  DfpSettings
newDfpSettings =
  DfpSettings
    { dfpNetworkCode = Core.Nothing
    , dfpNetworkName = Core.Nothing
    , programmaticPlacementAccepted = Core.Nothing
    , pubPaidPlacementAccepted = Core.Nothing
    , publisherPortalOnly = Core.Nothing
    }

instance Core.FromJSON DfpSettings where
        parseJSON
          = Core.withObject "DfpSettings"
              (\ o ->
                 DfpSettings Core.<$>
                   (o Core..:? "dfpNetworkCode") Core.<*>
                     (o Core..:? "dfpNetworkName")
                     Core.<*> (o Core..:? "programmaticPlacementAccepted")
                     Core.<*> (o Core..:? "pubPaidPlacementAccepted")
                     Core.<*> (o Core..:? "publisherPortalOnly"))

instance Core.ToJSON DfpSettings where
        toJSON DfpSettings{..}
          = Core.object
              (Core.catMaybes
                 [("dfpNetworkCode" Core..=) Core.<$> dfpNetworkCode,
                  ("dfpNetworkName" Core..=) Core.<$> dfpNetworkName,
                  ("programmaticPlacementAccepted" Core..=) Core.<$>
                    programmaticPlacementAccepted,
                  ("pubPaidPlacementAccepted" Core..=) Core.<$>
                    pubPaidPlacementAccepted,
                  ("publisherPortalOnly" Core..=) Core.<$>
                    publisherPortalOnly])


-- | Represents a dimension.
--
-- /See:/ 'newDimension' smart constructor.
data Dimension = Dimension
    {
      -- | The kind of resource this is, in this case dfareporting#dimension.
      kind :: (Core.Maybe Core.Text)
      -- | The dimension name, e.g. advertiser
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
newDimension 
    ::  Dimension
newDimension = Dimension {kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Dimension where
        parseJSON
          = Core.withObject "Dimension"
              (\ o ->
                 Dimension Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "name"))

instance Core.ToJSON Dimension where
        toJSON Dimension{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Represents a dimension filter.
--
-- /See:/ 'newDimensionFilter' smart constructor.
data DimensionFilter = DimensionFilter
    {
      -- | The name of the dimension to filter.
      dimensionName :: (Core.Maybe Core.Text)
      -- | The kind of resource this is, in this case dfareporting#dimensionFilter.
    , kind :: (Core.Maybe Core.Text)
      -- | The value of the dimension to filter.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionFilter' with the minimum fields required to make a request.
newDimensionFilter 
    ::  DimensionFilter
newDimensionFilter =
  DimensionFilter
    {dimensionName = Core.Nothing, kind = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON DimensionFilter where
        parseJSON
          = Core.withObject "DimensionFilter"
              (\ o ->
                 DimensionFilter Core.<$>
                   (o Core..:? "dimensionName") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON DimensionFilter where
        toJSON DimensionFilter{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName,
                  ("kind" Core..=) Core.<$> kind,
                  ("value" Core..=) Core.<$> value])


-- | Represents a DimensionValue resource.
--
-- /See:/ 'newDimensionValue' smart constructor.
data DimensionValue = DimensionValue
    {
      -- | The name of the dimension.
      dimensionName :: (Core.Maybe Core.Text)
      -- | The eTag of this response for caching purposes.
    , etag :: (Core.Maybe Core.Text)
      -- | The ID associated with the value if available.
    , id :: (Core.Maybe Core.Text)
      -- | The kind of resource this is, in this case dfareporting#dimensionValue.
    , kind :: (Core.Maybe Core.Text)
      -- | Determines how the \'value\' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'/\' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions (\'dfa:paidSearch/\') allow a matchType other than EXACT.
    , matchType :: (Core.Maybe DimensionValue_MatchType)
      -- | The value of the dimension.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionValue' with the minimum fields required to make a request.
newDimensionValue 
    ::  DimensionValue
newDimensionValue =
  DimensionValue
    { dimensionName = Core.Nothing
    , etag = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , matchType = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON DimensionValue where
        parseJSON
          = Core.withObject "DimensionValue"
              (\ o ->
                 DimensionValue Core.<$>
                   (o Core..:? "dimensionName") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "matchType")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON DimensionValue where
        toJSON DimensionValue{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName,
                  ("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("matchType" Core..=) Core.<$> matchType,
                  ("value" Core..=) Core.<$> value])


-- | Represents the list of DimensionValue resources.
--
-- /See:/ 'newDimensionValueList' smart constructor.
data DimensionValueList = DimensionValueList
    {
      -- | The eTag of this response for caching purposes.
      etag :: (Core.Maybe Core.Text)
      -- | The dimension values returned in this response.
    , items :: (Core.Maybe [DimensionValue])
      -- | The kind of list this is, in this case dfareporting#dimensionValueList.
    , kind :: (Core.Maybe Core.Text)
      -- | Continuation token used to page through dimension values. To retrieve the next page of results, set the next request\'s \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionValueList' with the minimum fields required to make a request.
newDimensionValueList 
    ::  DimensionValueList
newDimensionValueList =
  DimensionValueList
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON DimensionValueList where
        parseJSON
          = Core.withObject "DimensionValueList"
              (\ o ->
                 DimensionValueList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON DimensionValueList where
        toJSON DimensionValueList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Represents a DimensionValuesRequest.
--
-- /See:/ 'newDimensionValueRequest' smart constructor.
data DimensionValueRequest = DimensionValueRequest
    {
      -- | The name of the dimension for which values should be requested.
      dimensionName :: (Core.Maybe Core.Text)
      -- | 
    , endDate :: (Core.Maybe Core.Date)
      -- | The list of filters by which to filter values. The filters are ANDed.
    , filters :: (Core.Maybe [DimensionFilter])
      -- | The kind of request this is, in this case dfareporting#dimensionValueRequest .
    , kind :: (Core.Maybe Core.Text)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionValueRequest' with the minimum fields required to make a request.
newDimensionValueRequest 
    ::  DimensionValueRequest
newDimensionValueRequest =
  DimensionValueRequest
    { dimensionName = Core.Nothing
    , endDate = Core.Nothing
    , filters = Core.Nothing
    , kind = Core.Nothing
    , startDate = Core.Nothing
    }

instance Core.FromJSON DimensionValueRequest where
        parseJSON
          = Core.withObject "DimensionValueRequest"
              (\ o ->
                 DimensionValueRequest Core.<$>
                   (o Core..:? "dimensionName") Core.<*>
                     (o Core..:? "endDate")
                     Core.<*> (o Core..:? "filters")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON DimensionValueRequest where
        toJSON DimensionValueRequest{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("filters" Core..=) Core.<$> filters,
                  ("kind" Core..=) Core.<$> kind,
                  ("startDate" Core..=) Core.<$> startDate])


-- | DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.
--
-- /See:/ 'newDirectorySite' smart constructor.
data DirectorySite = DirectorySite
    {
      -- | ID of this directory site. This is a read-only, auto-generated field.
      id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this directory site. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Tag types for regular placements. Acceptable values are: - \"STANDARD\" - \"IFRAME/JAVASCRIPT/INPAGE\" - \"INTERNAL/REDIRECT/INPAGE\" - \"JAVASCRIPT_INPAGE\"
    , inpageTagFormats :: (Core.Maybe [DirectorySite_InpageTagFormatsItem])
      -- | Tag types for interstitial placements. Acceptable values are: - \"IFRAME/JAVASCRIPT/INTERSTITIAL\" - \"INTERNAL/REDIRECT/INTERSTITIAL\" - \"JAVASCRIPT_INTERSTITIAL\"
    , interstitialTagFormats :: (Core.Maybe [DirectorySite_InterstitialTagFormatsItem])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#directorySite\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this directory site.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Default publisher specification ID of video placements under this directory site. Possible values are: * @1@, Hulu * @2@, NBC * @3@, CBS * @4@, CBS Desktop * @5@, Discovery * @6@, VEVO HD * @7@, VEVO Vertical * @8@, Fox * @9@, CW Network * @10@, Disney * @11@, IGN * @12@, NFL.com * @13@, Turner Broadcasting * @14@, Tubi on Fox * @15@, Hearst Corporation * @16@, Twitch Desktop * @17@, ABC * @18@, Univision * @19@, MLB.com * @20@, MLB.com Mobile * @21@, MLB.com OTT * @22@, Polsat * @23@, TVN * @24@, Mediaset * @25@, Antena 3 * @26@, Mediamond * @27@, Sky Italia * @28@, Tubi on CBS * @29@, Spotify * @30@, Paramount * @31@, Max
    , publisherSpecificationId :: (Core.Maybe Core.Int64)
      -- | Directory site settings.
    , settings :: (Core.Maybe DirectorySiteSettings)
      -- | URL of this directory site.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectorySite' with the minimum fields required to make a request.
newDirectorySite 
    ::  DirectorySite
newDirectorySite =
  DirectorySite
    { id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , inpageTagFormats = Core.Nothing
    , interstitialTagFormats = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , publisherSpecificationId = Core.Nothing
    , settings = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON DirectorySite where
        parseJSON
          = Core.withObject "DirectorySite"
              (\ o ->
                 DirectorySite Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "inpageTagFormats")
                     Core.<*> (o Core..:? "interstitialTagFormats")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "publisherSpecificationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "settings")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON DirectorySite where
        toJSON DirectorySite{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("inpageTagFormats" Core..=) Core.<$>
                    inpageTagFormats,
                  ("interstitialTagFormats" Core..=) Core.<$>
                    interstitialTagFormats,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("publisherSpecificationId" Core..=) Core..
                    Core.AsText
                    Core.<$> publisherSpecificationId,
                  ("settings" Core..=) Core.<$> settings,
                  ("url" Core..=) Core.<$> url])


-- | Directory Site Settings
--
-- /See:/ 'newDirectorySiteSettings' smart constructor.
data DirectorySiteSettings = DirectorySiteSettings
    {
      -- | Whether this directory site has disabled active view creatives.
      activeViewOptOut :: (Core.Maybe Core.Bool)
      -- | Directory site Ad Manager settings.
    , dfpSettings :: (Core.Maybe DfpSettings)
      -- | Whether this site accepts in-stream video ads.
    , instreamVideoPlacementAccepted :: (Core.Maybe Core.Bool)
      -- | Whether this site accepts interstitial ads.
    , interstitialPlacementAccepted :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectorySiteSettings' with the minimum fields required to make a request.
newDirectorySiteSettings 
    ::  DirectorySiteSettings
newDirectorySiteSettings =
  DirectorySiteSettings
    { activeViewOptOut = Core.Nothing
    , dfpSettings = Core.Nothing
    , instreamVideoPlacementAccepted = Core.Nothing
    , interstitialPlacementAccepted = Core.Nothing
    }

instance Core.FromJSON DirectorySiteSettings where
        parseJSON
          = Core.withObject "DirectorySiteSettings"
              (\ o ->
                 DirectorySiteSettings Core.<$>
                   (o Core..:? "activeViewOptOut") Core.<*>
                     (o Core..:? "dfpSettings")
                     Core.<*>
                     (o Core..:? "instreamVideoPlacementAccepted")
                     Core.<*>
                     (o Core..:? "interstitialPlacementAccepted"))

instance Core.ToJSON DirectorySiteSettings where
        toJSON DirectorySiteSettings{..}
          = Core.object
              (Core.catMaybes
                 [("activeViewOptOut" Core..=) Core.<$>
                    activeViewOptOut,
                  ("dfpSettings" Core..=) Core.<$> dfpSettings,
                  ("instreamVideoPlacementAccepted" Core..=) Core.<$>
                    instreamVideoPlacementAccepted,
                  ("interstitialPlacementAccepted" Core..=) Core.<$>
                    interstitialPlacementAccepted])


-- | Directory Site List Response
--
-- /See:/ 'newDirectorySitesListResponse' smart constructor.
data DirectorySitesListResponse = DirectorySitesListResponse
    {
      -- | Directory site collection.
      directorySites :: (Core.Maybe [DirectorySite])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#directorySitesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectorySitesListResponse' with the minimum fields required to make a request.
newDirectorySitesListResponse 
    ::  DirectorySitesListResponse
newDirectorySitesListResponse =
  DirectorySitesListResponse
    { directorySites = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON DirectorySitesListResponse
         where
        parseJSON
          = Core.withObject "DirectorySitesListResponse"
              (\ o ->
                 DirectorySitesListResponse Core.<$>
                   (o Core..:? "directorySites") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON DirectorySitesListResponse where
        toJSON DirectorySitesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("directorySites" Core..=) Core.<$> directorySites,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains properties of a dynamic targeting key. Dynamic targeting keys are unique, user-friendly labels, created at the advertiser level in DCM, that can be assigned to ads, creatives, and placements and used for targeting with Studio dynamic creatives. Use these labels instead of numeric Campaign Manager IDs (such as placement IDs) to save time and avoid errors in your dynamic feeds.
--
-- /See:/ 'newDynamicTargetingKey' smart constructor.
data DynamicTargetingKey = DynamicTargetingKey
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#dynamicTargetingKey\".
      kind :: (Core.Maybe Core.Text)
      -- | Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.
    , name :: (Core.Maybe Core.Text)
      -- | ID of the object of this dynamic targeting key. This is a required field.
    , objectId :: (Core.Maybe Core.Int64)
      -- | Type of the object of this dynamic targeting key. This is a required field.
    , objectType :: (Core.Maybe DynamicTargetingKey_ObjectType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicTargetingKey' with the minimum fields required to make a request.
newDynamicTargetingKey 
    ::  DynamicTargetingKey
newDynamicTargetingKey =
  DynamicTargetingKey
    { kind = Core.Nothing
    , name = Core.Nothing
    , objectId = Core.Nothing
    , objectType = Core.Nothing
    }

instance Core.FromJSON DynamicTargetingKey where
        parseJSON
          = Core.withObject "DynamicTargetingKey"
              (\ o ->
                 DynamicTargetingKey Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "objectId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "objectType"))

instance Core.ToJSON DynamicTargetingKey where
        toJSON DynamicTargetingKey{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("objectId" Core..=) Core.. Core.AsText Core.<$>
                    objectId,
                  ("objectType" Core..=) Core.<$> objectType])


-- | Dynamic Targeting Key List Response
--
-- /See:/ 'newDynamicTargetingKeysListResponse' smart constructor.
data DynamicTargetingKeysListResponse = DynamicTargetingKeysListResponse
    {
      -- | Dynamic targeting key collection.
      dynamicTargetingKeys :: (Core.Maybe [DynamicTargetingKey])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#dynamicTargetingKeysListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicTargetingKeysListResponse' with the minimum fields required to make a request.
newDynamicTargetingKeysListResponse 
    ::  DynamicTargetingKeysListResponse
newDynamicTargetingKeysListResponse =
  DynamicTargetingKeysListResponse
    {dynamicTargetingKeys = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON
           DynamicTargetingKeysListResponse
         where
        parseJSON
          = Core.withObject "DynamicTargetingKeysListResponse"
              (\ o ->
                 DynamicTargetingKeysListResponse Core.<$>
                   (o Core..:? "dynamicTargetingKeys") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON DynamicTargetingKeysListResponse
         where
        toJSON DynamicTargetingKeysListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("dynamicTargetingKeys" Core..=) Core.<$>
                    dynamicTargetingKeys,
                  ("kind" Core..=) Core.<$> kind])


-- | A description of how user IDs are encrypted.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo
    {
      -- | The encryption entity ID. This should match the encryption configuration for ad serving or Data Transfer.
      encryptionEntityId :: (Core.Maybe Core.Int64)
      -- | The encryption entity type. This should match the encryption configuration for ad serving or Data Transfer.
    , encryptionEntityType :: (Core.Maybe EncryptionInfo_EncryptionEntityType)
      -- | Describes whether the encrypted cookie was received from ad serving (the %m macro) or from Data Transfer.
    , encryptionSource :: (Core.Maybe EncryptionInfo_EncryptionSource)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#encryptionInfo\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
newEncryptionInfo 
    ::  EncryptionInfo
newEncryptionInfo =
  EncryptionInfo
    { encryptionEntityId = Core.Nothing
    , encryptionEntityType = Core.Nothing
    , encryptionSource = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON EncryptionInfo where
        parseJSON
          = Core.withObject "EncryptionInfo"
              (\ o ->
                 EncryptionInfo Core.<$>
                   (o Core..:? "encryptionEntityId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "encryptionEntityType")
                     Core.<*> (o Core..:? "encryptionSource")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON EncryptionInfo where
        toJSON EncryptionInfo{..}
          = Core.object
              (Core.catMaybes
                 [("encryptionEntityId" Core..=) Core.. Core.AsText
                    Core.<$> encryptionEntityId,
                  ("encryptionEntityType" Core..=) Core.<$>
                    encryptionEntityType,
                  ("encryptionSource" Core..=) Core.<$>
                    encryptionSource,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains properties of an event tag.
--
-- /See:/ 'newEventTag' smart constructor.
data EventTag = EventTag
    {
      -- | Account ID of this event tag. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this event tag. This field or the campaignId field is required on insertion.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Campaign ID of this event tag. This field or the advertiserId field is required on insertion.
    , campaignId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
    , campaignIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether this event tag should be automatically enabled for all of the advertiser\'s campaigns and ads.
    , enabledByDefault :: (Core.Maybe Core.Bool)
      -- | Whether to remove this event tag from ads that are trafficked through Display & Video 360 to Ad Exchange. This may be useful if the event tag uses a pixel that is unapproved for Ad Exchange bids on one or more networks, such as the Google Display Network.
    , excludeFromAdxRequests :: (Core.Maybe Core.Bool)
      -- | ID of this event tag. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#eventTag\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this event tag. This is a required field and must be less than 256 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Site filter type for this event tag. If no type is specified then the event tag will be applied to all sites.
    , siteFilterType :: (Core.Maybe EventTag_SiteFilterType)
      -- | Filter list of site IDs associated with this event tag. The siteFilterType determines whether this is a allowlist or blocklist filter.
    , siteIds :: (Core.Maybe [Core.Int64])
      -- | Whether this tag is SSL-compliant or not. This is a read-only field.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | Status of this event tag. Must be ENABLED for this event tag to fire. This is a required field.
    , status :: (Core.Maybe EventTag_Status)
      -- | Subaccount ID of this event tag. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Event tag type. Can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking. This is a required field.
    , type' :: (Core.Maybe EventTag_Type)
      -- | Payload URL for this event tag. The URL on a click-through event tag should have a landing page URL appended to the end of it. This field is required on insertion.
    , url :: (Core.Maybe Core.Text)
      -- | Number of times the landing page URL should be URL-escaped before being appended to the click-through event tag URL. Only applies to click-through event tags as specified by the event tag type.
    , urlEscapeLevels :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventTag' with the minimum fields required to make a request.
newEventTag 
    ::  EventTag
newEventTag =
  EventTag
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , campaignId = Core.Nothing
    , campaignIdDimensionValue = Core.Nothing
    , enabledByDefault = Core.Nothing
    , excludeFromAdxRequests = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , siteFilterType = Core.Nothing
    , siteIds = Core.Nothing
    , sslCompliant = Core.Nothing
    , status = Core.Nothing
    , subaccountId = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    , urlEscapeLevels = Core.Nothing
    }

instance Core.FromJSON EventTag where
        parseJSON
          = Core.withObject "EventTag"
              (\ o ->
                 EventTag Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*>
                     (o Core..:? "campaignId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "campaignIdDimensionValue")
                     Core.<*> (o Core..:? "enabledByDefault")
                     Core.<*> (o Core..:? "excludeFromAdxRequests")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "siteFilterType")
                     Core.<*>
                     (o Core..:? "siteIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "status")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "urlEscapeLevels"))

instance Core.ToJSON EventTag where
        toJSON EventTag{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("campaignId" Core..=) Core.. Core.AsText Core.<$>
                    campaignId,
                  ("campaignIdDimensionValue" Core..=) Core.<$>
                    campaignIdDimensionValue,
                  ("enabledByDefault" Core..=) Core.<$>
                    enabledByDefault,
                  ("excludeFromAdxRequests" Core..=) Core.<$>
                    excludeFromAdxRequests,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("siteFilterType" Core..=) Core.<$> siteFilterType,
                  ("siteIds" Core..=) Core.. Core.fmap Core.AsText
                    Core.<$> siteIds,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("status" Core..=) Core.<$> status,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url,
                  ("urlEscapeLevels" Core..=) Core.<$>
                    urlEscapeLevels])


-- | Event tag override information.
--
-- /See:/ 'newEventTagOverride' smart constructor.
data EventTagOverride = EventTagOverride
    {
      -- | Whether this override is enabled.
      enabled :: (Core.Maybe Core.Bool)
      -- | ID of this event tag override. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventTagOverride' with the minimum fields required to make a request.
newEventTagOverride 
    ::  EventTagOverride
newEventTagOverride =
  EventTagOverride {enabled = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON EventTagOverride where
        parseJSON
          = Core.withObject "EventTagOverride"
              (\ o ->
                 EventTagOverride Core.<$>
                   (o Core..:? "enabled") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText))

instance Core.ToJSON EventTagOverride where
        toJSON EventTagOverride{..}
          = Core.object
              (Core.catMaybes
                 [("enabled" Core..=) Core.<$> enabled,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id])


-- | Event Tag List Response
--
-- /See:/ 'newEventTagsListResponse' smart constructor.
data EventTagsListResponse = EventTagsListResponse
    {
      -- | Event tag collection.
      eventTags :: (Core.Maybe [EventTag])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#eventTagsListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventTagsListResponse' with the minimum fields required to make a request.
newEventTagsListResponse 
    ::  EventTagsListResponse
newEventTagsListResponse =
  EventTagsListResponse {eventTags = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON EventTagsListResponse where
        parseJSON
          = Core.withObject "EventTagsListResponse"
              (\ o ->
                 EventTagsListResponse Core.<$>
                   (o Core..:? "eventTags") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON EventTagsListResponse where
        toJSON EventTagsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("eventTags" Core..=) Core.<$> eventTags,
                  ("kind" Core..=) Core.<$> kind])


-- | Represents a File resource. A file contains the metadata for a report run. It shows the status of the run and holds the URLs to the generated report data if the run is finished and the status is \"REPORT_AVAILABLE\".
--
-- /See:/ 'newFile' smart constructor.
data File = File
    {
      -- | The date range for which the file has report data. The date range will always be the absolute date range for which the report is run.
      dateRange :: (Core.Maybe DateRange)
      -- | Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | The filename of the file.
    , fileName :: (Core.Maybe Core.Text)
      -- | The output format of the report. Only available once the file is available.
    , format :: (Core.Maybe File_Format)
      -- | The unique ID of this report file.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#file\".
    , kind :: (Core.Maybe Core.Text)
      -- | The timestamp in milliseconds since epoch when this file was last modified.
    , lastModifiedTime :: (Core.Maybe Core.Int64)
      -- | The ID of the report this file was generated from.
    , reportId :: (Core.Maybe Core.Int64)
      -- | The status of the report file.
    , status :: (Core.Maybe File_Status)
      -- | The URLs where the completed report file can be downloaded.
    , urls :: (Core.Maybe File_Urls)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile 
    ::  File
newFile =
  File
    { dateRange = Core.Nothing
    , etag = Core.Nothing
    , fileName = Core.Nothing
    , format = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedTime = Core.Nothing
    , reportId = Core.Nothing
    , status = Core.Nothing
    , urls = Core.Nothing
    }

instance Core.FromJSON File where
        parseJSON
          = Core.withObject "File"
              (\ o ->
                 File Core.<$>
                   (o Core..:? "dateRange") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "fileName")
                     Core.<*> (o Core..:? "format")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "lastModifiedTime" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "reportId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "urls"))

instance Core.ToJSON File where
        toJSON File{..}
          = Core.object
              (Core.catMaybes
                 [("dateRange" Core..=) Core.<$> dateRange,
                  ("etag" Core..=) Core.<$> etag,
                  ("fileName" Core..=) Core.<$> fileName,
                  ("format" Core..=) Core.<$> format,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedTime" Core..=) Core.. Core.AsText
                    Core.<$> lastModifiedTime,
                  ("reportId" Core..=) Core.. Core.AsText Core.<$>
                    reportId,
                  ("status" Core..=) Core.<$> status,
                  ("urls" Core..=) Core.<$> urls])


-- | The URLs where the completed report file can be downloaded.
--
-- /See:/ 'newFile_Urls' smart constructor.
data File_Urls = File_Urls
    {
      -- | The URL for downloading the report data through the API.
      apiUrl :: (Core.Maybe Core.Text)
      -- | The URL for downloading the report data through a browser.
    , browserUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_Urls' with the minimum fields required to make a request.
newFile_Urls 
    ::  File_Urls
newFile_Urls = File_Urls {apiUrl = Core.Nothing, browserUrl = Core.Nothing}

instance Core.FromJSON File_Urls where
        parseJSON
          = Core.withObject "File_Urls"
              (\ o ->
                 File_Urls Core.<$>
                   (o Core..:? "apiUrl") Core.<*>
                     (o Core..:? "browserUrl"))

instance Core.ToJSON File_Urls where
        toJSON File_Urls{..}
          = Core.object
              (Core.catMaybes
                 [("apiUrl" Core..=) Core.<$> apiUrl,
                  ("browserUrl" Core..=) Core.<$> browserUrl])


-- | List of files for a report.
--
-- /See:/ 'newFileList' smart constructor.
data FileList = FileList
    {
      -- | Etag of this resource.
      etag :: (Core.Maybe Core.Text)
      -- | The files returned in this response.
    , items :: (Core.Maybe [File])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#fileList\".
    , kind :: (Core.Maybe Core.Text)
      -- | Continuation token used to page through files. To retrieve the next page of results, set the next request\'s \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
newFileList 
    ::  FileList
newFileList =
  FileList
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON FileList where
        parseJSON
          = Core.withObject "FileList"
              (\ o ->
                 FileList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON FileList where
        toJSON FileList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Flight
--
-- /See:/ 'newFlight' smart constructor.
data Flight = Flight
    {
      -- | 
      endDate :: (Core.Maybe Core.Date)
      -- | Rate or cost of this flight.
    , rateOrCost :: (Core.Maybe Core.Int64)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | Units of this flight.
    , units :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Flight' with the minimum fields required to make a request.
newFlight 
    ::  Flight
newFlight =
  Flight
    { endDate = Core.Nothing
    , rateOrCost = Core.Nothing
    , startDate = Core.Nothing
    , units = Core.Nothing
    }

instance Core.FromJSON Flight where
        parseJSON
          = Core.withObject "Flight"
              (\ o ->
                 Flight Core.<$>
                   (o Core..:? "endDate") Core.<*>
                     (o Core..:? "rateOrCost" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "startDate")
                     Core.<*>
                     (o Core..:? "units" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Flight where
        toJSON Flight{..}
          = Core.object
              (Core.catMaybes
                 [("endDate" Core..=) Core.<$> endDate,
                  ("rateOrCost" Core..=) Core.. Core.AsText Core.<$>
                    rateOrCost,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("units" Core..=) Core.. Core.AsText Core.<$> units])


-- | Floodlight Activity GenerateTag Response
--
-- /See:/ 'newFloodlightActivitiesGenerateTagResponse' smart constructor.
data FloodlightActivitiesGenerateTagResponse = FloodlightActivitiesGenerateTagResponse
    {
      -- | Generated tag for this Floodlight activity. For Google tags, this is the event snippet.
      floodlightActivityTag :: (Core.Maybe Core.Text)
      -- | The global snippet section of a Google tag. The Google tag sets new cookies on your domain, which will store a unique identifier for a user or the ad click that brought the user to your site. Learn more.
    , globalSiteTagGlobalSnippet :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivitiesGenerateTagResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivitiesGenerateTagResponse' with the minimum fields required to make a request.
newFloodlightActivitiesGenerateTagResponse 
    ::  FloodlightActivitiesGenerateTagResponse
newFloodlightActivitiesGenerateTagResponse =
  FloodlightActivitiesGenerateTagResponse
    { floodlightActivityTag = Core.Nothing
    , globalSiteTagGlobalSnippet = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON
           FloodlightActivitiesGenerateTagResponse
         where
        parseJSON
          = Core.withObject
              "FloodlightActivitiesGenerateTagResponse"
              (\ o ->
                 FloodlightActivitiesGenerateTagResponse Core.<$>
                   (o Core..:? "floodlightActivityTag") Core.<*>
                     (o Core..:? "globalSiteTagGlobalSnippet")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON
           FloodlightActivitiesGenerateTagResponse
         where
        toJSON FloodlightActivitiesGenerateTagResponse{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightActivityTag" Core..=) Core.<$>
                    floodlightActivityTag,
                  ("globalSiteTagGlobalSnippet" Core..=) Core.<$>
                    globalSiteTagGlobalSnippet,
                  ("kind" Core..=) Core.<$> kind])


-- | Floodlight Activity List Response
--
-- /See:/ 'newFloodlightActivitiesListResponse' smart constructor.
data FloodlightActivitiesListResponse = FloodlightActivitiesListResponse
    {
      -- | Floodlight activity collection.
      floodlightActivities :: (Core.Maybe [FloodlightActivity])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivitiesListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivitiesListResponse' with the minimum fields required to make a request.
newFloodlightActivitiesListResponse 
    ::  FloodlightActivitiesListResponse
newFloodlightActivitiesListResponse =
  FloodlightActivitiesListResponse
    { floodlightActivities = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           FloodlightActivitiesListResponse
         where
        parseJSON
          = Core.withObject "FloodlightActivitiesListResponse"
              (\ o ->
                 FloodlightActivitiesListResponse Core.<$>
                   (o Core..:? "floodlightActivities") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON FloodlightActivitiesListResponse
         where
        toJSON FloodlightActivitiesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightActivities" Core..=) Core.<$>
                    floodlightActivities,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains properties of a Floodlight activity.
--
-- /See:/ 'newFloodlightActivity' smart constructor.
data FloodlightActivity = FloodlightActivity
    {
      -- | Account ID of this floodlight activity. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this floodlight activity. If this field is left blank, the value will be copied over either from the activity group\'s advertiser or the existing activity\'s advertiser.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether the activity is enabled for attribution.
    , attributionEnabled :: (Core.Maybe Core.Bool)
      -- | Code type used for cache busting in the generated tag. Applicable only when floodlightActivityGroupType is COUNTER and countingMethod is STANDARD/COUNTING or UNIQUE/COUNTING.
    , cacheBustingType :: (Core.Maybe FloodlightActivity_CacheBustingType)
      -- | Counting method for conversions for this floodlight activity. This is a required field.
    , countingMethod :: (Core.Maybe FloodlightActivity_CountingMethod)
      -- | Dynamic floodlight tags.
    , defaultTags :: (Core.Maybe [FloodlightActivityDynamicTag])
      -- | URL where this tag will be deployed. If specified, must be less than 256 characters long.
    , expectedUrl :: (Core.Maybe Core.Text)
      -- | Floodlight activity group ID of this floodlight activity. This is a required field.
    , floodlightActivityGroupId :: (Core.Maybe Core.Int64)
      -- | Name of the associated floodlight activity group. This is a read-only field.
    , floodlightActivityGroupName :: (Core.Maybe Core.Text)
      -- | Tag string of the associated floodlight activity group. This is a read-only field.
    , floodlightActivityGroupTagString :: (Core.Maybe Core.Text)
      -- | Type of the associated floodlight activity group. This is a read-only field.
    , floodlightActivityGroupType :: (Core.Maybe FloodlightActivity_FloodlightActivityGroupType)
      -- | Floodlight configuration ID of this floodlight activity. If this field is left blank, the value will be copied over either from the activity group\'s floodlight configuration or from the existing activity\'s floodlight configuration.
    , floodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.
    , floodlightConfigurationIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | The type of Floodlight tag this activity will generate. This is a required field.
    , floodlightTagType :: (Core.Maybe FloodlightActivity_FloodlightTagType)
      -- | ID of this floodlight activity. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this floodlight activity. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivity\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this floodlight activity. This is a required field. Must be less than 129 characters long and cannot contain quotes.
    , name :: (Core.Maybe Core.Text)
      -- | General notes or implementation instructions for the tag.
    , notes :: (Core.Maybe Core.Text)
      -- | Publisher dynamic floodlight tags.
    , publisherTags :: (Core.Maybe [FloodlightActivityPublisherDynamicTag])
      -- | Whether this tag should use SSL.
    , secure :: (Core.Maybe Core.Bool)
      -- | Whether the floodlight activity is SSL-compliant. This is a read-only field, its value detected by the system from the floodlight tags.
    , sslCompliant :: (Core.Maybe Core.Bool)
      -- | Whether this floodlight activity must be SSL-compliant.
    , sslRequired :: (Core.Maybe Core.Bool)
      -- | The status of the activity. This can only be set to ACTIVE or ARCHIVED/AND/DISABLED. The ARCHIVED status is no longer supported and cannot be set for Floodlight activities. The DISABLED_POLICY status indicates that a Floodlight activity is violating Google policy. Contact your account manager for more information.
    , status :: (Core.Maybe FloodlightActivity_Status)
      -- | Subaccount ID of this floodlight activity. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Tag format type for the floodlight activity. If left blank, the tag format will default to HTML.
    , tagFormat :: (Core.Maybe FloodlightActivity_TagFormat)
      -- | Value of the cat= parameter in the floodlight tag, which the ad servers use to identify the activity. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being a-z0-9[ _ ]. This tag string must also be unique among activities of the same activity group. This field is read-only after insertion.
    , tagString :: (Core.Maybe Core.Text)
      -- | List of the user-defined variables used by this conversion tag. These map to the \"u[1-100]=\" in the tags. Each of these can have a user defined type. Acceptable values are U1 to U100, inclusive.
    , userDefinedVariableTypes :: (Core.Maybe [FloodlightActivity_UserDefinedVariableTypesItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivity' with the minimum fields required to make a request.
newFloodlightActivity 
    ::  FloodlightActivity
newFloodlightActivity =
  FloodlightActivity
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , attributionEnabled = Core.Nothing
    , cacheBustingType = Core.Nothing
    , countingMethod = Core.Nothing
    , defaultTags = Core.Nothing
    , expectedUrl = Core.Nothing
    , floodlightActivityGroupId = Core.Nothing
    , floodlightActivityGroupName = Core.Nothing
    , floodlightActivityGroupTagString = Core.Nothing
    , floodlightActivityGroupType = Core.Nothing
    , floodlightConfigurationId = Core.Nothing
    , floodlightConfigurationIdDimensionValue = Core.Nothing
    , floodlightTagType = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , publisherTags = Core.Nothing
    , secure = Core.Nothing
    , sslCompliant = Core.Nothing
    , sslRequired = Core.Nothing
    , status = Core.Nothing
    , subaccountId = Core.Nothing
    , tagFormat = Core.Nothing
    , tagString = Core.Nothing
    , userDefinedVariableTypes = Core.Nothing
    }

instance Core.FromJSON FloodlightActivity where
        parseJSON
          = Core.withObject "FloodlightActivity"
              (\ o ->
                 FloodlightActivity Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "attributionEnabled")
                     Core.<*> (o Core..:? "cacheBustingType")
                     Core.<*> (o Core..:? "countingMethod")
                     Core.<*> (o Core..:? "defaultTags")
                     Core.<*> (o Core..:? "expectedUrl")
                     Core.<*>
                     (o Core..:? "floodlightActivityGroupId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "floodlightActivityGroupName")
                     Core.<*>
                     (o Core..:? "floodlightActivityGroupTagString")
                     Core.<*> (o Core..:? "floodlightActivityGroupType")
                     Core.<*>
                     (o Core..:? "floodlightConfigurationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:?
                        "floodlightConfigurationIdDimensionValue")
                     Core.<*> (o Core..:? "floodlightTagType")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "publisherTags")
                     Core.<*> (o Core..:? "secure")
                     Core.<*> (o Core..:? "sslCompliant")
                     Core.<*> (o Core..:? "sslRequired")
                     Core.<*> (o Core..:? "status")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagFormat")
                     Core.<*> (o Core..:? "tagString")
                     Core.<*> (o Core..:? "userDefinedVariableTypes"))

instance Core.ToJSON FloodlightActivity where
        toJSON FloodlightActivity{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("attributionEnabled" Core..=) Core.<$>
                    attributionEnabled,
                  ("cacheBustingType" Core..=) Core.<$>
                    cacheBustingType,
                  ("countingMethod" Core..=) Core.<$> countingMethod,
                  ("defaultTags" Core..=) Core.<$> defaultTags,
                  ("expectedUrl" Core..=) Core.<$> expectedUrl,
                  ("floodlightActivityGroupId" Core..=) Core..
                    Core.AsText
                    Core.<$> floodlightActivityGroupId,
                  ("floodlightActivityGroupName" Core..=) Core.<$>
                    floodlightActivityGroupName,
                  ("floodlightActivityGroupTagString" Core..=) Core.<$>
                    floodlightActivityGroupTagString,
                  ("floodlightActivityGroupType" Core..=) Core.<$>
                    floodlightActivityGroupType,
                  ("floodlightConfigurationId" Core..=) Core..
                    Core.AsText
                    Core.<$> floodlightConfigurationId,
                  ("floodlightConfigurationIdDimensionValue" Core..=)
                    Core.<$> floodlightConfigurationIdDimensionValue,
                  ("floodlightTagType" Core..=) Core.<$>
                    floodlightTagType,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("publisherTags" Core..=) Core.<$> publisherTags,
                  ("secure" Core..=) Core.<$> secure,
                  ("sslCompliant" Core..=) Core.<$> sslCompliant,
                  ("sslRequired" Core..=) Core.<$> sslRequired,
                  ("status" Core..=) Core.<$> status,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("tagFormat" Core..=) Core.<$> tagFormat,
                  ("tagString" Core..=) Core.<$> tagString,
                  ("userDefinedVariableTypes" Core..=) Core.<$>
                    userDefinedVariableTypes])


-- | Dynamic Tag
--
-- /See:/ 'newFloodlightActivityDynamicTag' smart constructor.
data FloodlightActivityDynamicTag = FloodlightActivityDynamicTag
    {
      -- | ID of this dynamic tag. This is a read-only, auto-generated field.
      id :: (Core.Maybe Core.Int64)
      -- | Name of this tag.
    , name :: (Core.Maybe Core.Text)
      -- | Tag code.
    , tag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivityDynamicTag' with the minimum fields required to make a request.
newFloodlightActivityDynamicTag 
    ::  FloodlightActivityDynamicTag
newFloodlightActivityDynamicTag =
  FloodlightActivityDynamicTag
    {id = Core.Nothing, name = Core.Nothing, tag = Core.Nothing}

instance Core.FromJSON FloodlightActivityDynamicTag
         where
        parseJSON
          = Core.withObject "FloodlightActivityDynamicTag"
              (\ o ->
                 FloodlightActivityDynamicTag Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "tag"))

instance Core.ToJSON FloodlightActivityDynamicTag
         where
        toJSON FloodlightActivityDynamicTag{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("tag" Core..=) Core.<$> tag])


-- | Contains properties of a Floodlight activity group.
--
-- /See:/ 'newFloodlightActivityGroup' smart constructor.
data FloodlightActivityGroup = FloodlightActivityGroup
    {
      -- | Account ID of this floodlight activity group. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this floodlight activity group. If this field is left blank, the value will be copied over either from the floodlight configuration\'s advertiser or from the existing activity group\'s advertiser.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Floodlight configuration ID of this floodlight activity group. This is a required field.
    , floodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.
    , floodlightConfigurationIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | ID of this floodlight activity group. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this floodlight activity group. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivityGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this floodlight activity group. This is a required field. Must be less than 65 characters long and cannot contain quotes.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this floodlight activity group. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Value of the type= parameter in the floodlight tag, which the ad servers use to identify the activity group that the activity belongs to. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being a-z0-9[ _ ]. This tag string must also be unique among activity groups of the same floodlight configuration. This field is read-only after insertion.
    , tagString :: (Core.Maybe Core.Text)
      -- | Type of the floodlight activity group. This is a required field that is read-only after insertion.
    , type' :: (Core.Maybe FloodlightActivityGroup_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivityGroup' with the minimum fields required to make a request.
newFloodlightActivityGroup 
    ::  FloodlightActivityGroup
newFloodlightActivityGroup =
  FloodlightActivityGroup
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , floodlightConfigurationId = Core.Nothing
    , floodlightConfigurationIdDimensionValue = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    , tagString = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON FloodlightActivityGroup where
        parseJSON
          = Core.withObject "FloodlightActivityGroup"
              (\ o ->
                 FloodlightActivityGroup Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*>
                     (o Core..:? "floodlightConfigurationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:?
                        "floodlightConfigurationIdDimensionValue")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagString")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON FloodlightActivityGroup where
        toJSON FloodlightActivityGroup{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("floodlightConfigurationId" Core..=) Core..
                    Core.AsText
                    Core.<$> floodlightConfigurationId,
                  ("floodlightConfigurationIdDimensionValue" Core..=)
                    Core.<$> floodlightConfigurationIdDimensionValue,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("tagString" Core..=) Core.<$> tagString,
                  ("type" Core..=) Core.<$> type'])


-- | Floodlight Activity Group List Response
--
-- /See:/ 'newFloodlightActivityGroupsListResponse' smart constructor.
data FloodlightActivityGroupsListResponse = FloodlightActivityGroupsListResponse
    {
      -- | Floodlight activity group collection.
      floodlightActivityGroups :: (Core.Maybe [FloodlightActivityGroup])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivityGroupsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivityGroupsListResponse' with the minimum fields required to make a request.
newFloodlightActivityGroupsListResponse 
    ::  FloodlightActivityGroupsListResponse
newFloodlightActivityGroupsListResponse =
  FloodlightActivityGroupsListResponse
    { floodlightActivityGroups = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           FloodlightActivityGroupsListResponse
         where
        parseJSON
          = Core.withObject
              "FloodlightActivityGroupsListResponse"
              (\ o ->
                 FloodlightActivityGroupsListResponse Core.<$>
                   (o Core..:? "floodlightActivityGroups") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           FloodlightActivityGroupsListResponse
         where
        toJSON FloodlightActivityGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightActivityGroups" Core..=) Core.<$>
                    floodlightActivityGroups,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Publisher Dynamic Tag
--
-- /See:/ 'newFloodlightActivityPublisherDynamicTag' smart constructor.
data FloodlightActivityPublisherDynamicTag = FloodlightActivityPublisherDynamicTag
    {
      -- | Whether this tag is applicable only for click-throughs.
      clickThrough :: (Core.Maybe Core.Bool)
      -- | Directory site ID of this dynamic tag. This is a write-only field that can be used as an alternative to the siteId field. When this resource is retrieved, only the siteId field will be populated.
    , directorySiteId :: (Core.Maybe Core.Int64)
      -- | Dynamic floodlight tag.
    , dynamicTag :: (Core.Maybe FloodlightActivityDynamicTag)
      -- | Site ID of this dynamic tag.
    , siteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the site. This is a read-only, auto-generated field.
    , siteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether this tag is applicable only for view-throughs.
    , viewThrough :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightActivityPublisherDynamicTag' with the minimum fields required to make a request.
newFloodlightActivityPublisherDynamicTag 
    ::  FloodlightActivityPublisherDynamicTag
newFloodlightActivityPublisherDynamicTag =
  FloodlightActivityPublisherDynamicTag
    { clickThrough = Core.Nothing
    , directorySiteId = Core.Nothing
    , dynamicTag = Core.Nothing
    , siteId = Core.Nothing
    , siteIdDimensionValue = Core.Nothing
    , viewThrough = Core.Nothing
    }

instance Core.FromJSON
           FloodlightActivityPublisherDynamicTag
         where
        parseJSON
          = Core.withObject
              "FloodlightActivityPublisherDynamicTag"
              (\ o ->
                 FloodlightActivityPublisherDynamicTag Core.<$>
                   (o Core..:? "clickThrough") Core.<*>
                     (o Core..:? "directorySiteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "dynamicTag")
                     Core.<*>
                     (o Core..:? "siteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "siteIdDimensionValue")
                     Core.<*> (o Core..:? "viewThrough"))

instance Core.ToJSON
           FloodlightActivityPublisherDynamicTag
         where
        toJSON FloodlightActivityPublisherDynamicTag{..}
          = Core.object
              (Core.catMaybes
                 [("clickThrough" Core..=) Core.<$> clickThrough,
                  ("directorySiteId" Core..=) Core.. Core.AsText
                    Core.<$> directorySiteId,
                  ("dynamicTag" Core..=) Core.<$> dynamicTag,
                  ("siteId" Core..=) Core.. Core.AsText Core.<$>
                    siteId,
                  ("siteIdDimensionValue" Core..=) Core.<$>
                    siteIdDimensionValue,
                  ("viewThrough" Core..=) Core.<$> viewThrough])


-- | Contains properties of a Floodlight configuration.
--
-- /See:/ 'newFloodlightConfiguration' smart constructor.
data FloodlightConfiguration = FloodlightConfiguration
    {
      -- | Account ID of this floodlight configuration. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of the parent advertiser of this floodlight configuration.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether advertiser data is shared with Google Analytics.
    , analyticsDataSharingEnabled :: (Core.Maybe Core.Bool)
      -- | Custom Viewability metric for the floodlight configuration.
    , customViewabilityMetric :: (Core.Maybe CustomViewabilityMetric)
      -- | Whether the exposure-to-conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting.
    , exposureToConversionEnabled :: (Core.Maybe Core.Bool)
      -- | 
    , firstDayOfWeek :: (Core.Maybe FloodlightConfiguration_FirstDayOfWeek)
      -- | ID of this floodlight configuration. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this floodlight configuration. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether in-app attribution tracking is enabled.
    , inAppAttributionTrackingEnabled :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightConfiguration\".
    , kind :: (Core.Maybe Core.Text)
      -- | Lookback window settings for this floodlight configuration.
    , lookbackConfiguration :: (Core.Maybe LookbackConfiguration)
      -- | Types of attribution options for natural search conversions.
    , naturalSearchConversionAttributionOption :: (Core.Maybe
   FloodlightConfiguration_NaturalSearchConversionAttributionOption)
      -- | Settings for Campaign Manager Omniture integration.
    , omnitureSettings :: (Core.Maybe OmnitureSettings)
      -- | Subaccount ID of this floodlight configuration. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Configuration settings for dynamic and image floodlight tags.
    , tagSettings :: (Core.Maybe TagSettings)
      -- | List of third-party authentication tokens enabled for this configuration.
    , thirdPartyAuthenticationTokens :: (Core.Maybe [ThirdPartyAuthenticationToken])
      -- | List of user defined variables enabled for this configuration.
    , userDefinedVariableConfigurations :: (Core.Maybe [UserDefinedVariableConfiguration])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightConfiguration' with the minimum fields required to make a request.
newFloodlightConfiguration 
    ::  FloodlightConfiguration
newFloodlightConfiguration =
  FloodlightConfiguration
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , analyticsDataSharingEnabled = Core.Nothing
    , customViewabilityMetric = Core.Nothing
    , exposureToConversionEnabled = Core.Nothing
    , firstDayOfWeek = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , inAppAttributionTrackingEnabled = Core.Nothing
    , kind = Core.Nothing
    , lookbackConfiguration = Core.Nothing
    , naturalSearchConversionAttributionOption = Core.Nothing
    , omnitureSettings = Core.Nothing
    , subaccountId = Core.Nothing
    , tagSettings = Core.Nothing
    , thirdPartyAuthenticationTokens = Core.Nothing
    , userDefinedVariableConfigurations = Core.Nothing
    }

instance Core.FromJSON FloodlightConfiguration where
        parseJSON
          = Core.withObject "FloodlightConfiguration"
              (\ o ->
                 FloodlightConfiguration Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "analyticsDataSharingEnabled")
                     Core.<*> (o Core..:? "customViewabilityMetric")
                     Core.<*> (o Core..:? "exposureToConversionEnabled")
                     Core.<*> (o Core..:? "firstDayOfWeek")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*>
                     (o Core..:? "inAppAttributionTrackingEnabled")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lookbackConfiguration")
                     Core.<*>
                     (o Core..:?
                        "naturalSearchConversionAttributionOption")
                     Core.<*> (o Core..:? "omnitureSettings")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagSettings")
                     Core.<*>
                     (o Core..:? "thirdPartyAuthenticationTokens")
                     Core.<*>
                     (o Core..:? "userDefinedVariableConfigurations"))

instance Core.ToJSON FloodlightConfiguration where
        toJSON FloodlightConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("analyticsDataSharingEnabled" Core..=) Core.<$>
                    analyticsDataSharingEnabled,
                  ("customViewabilityMetric" Core..=) Core.<$>
                    customViewabilityMetric,
                  ("exposureToConversionEnabled" Core..=) Core.<$>
                    exposureToConversionEnabled,
                  ("firstDayOfWeek" Core..=) Core.<$> firstDayOfWeek,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("inAppAttributionTrackingEnabled" Core..=) Core.<$>
                    inAppAttributionTrackingEnabled,
                  ("kind" Core..=) Core.<$> kind,
                  ("lookbackConfiguration" Core..=) Core.<$>
                    lookbackConfiguration,
                  ("naturalSearchConversionAttributionOption" Core..=)
                    Core.<$> naturalSearchConversionAttributionOption,
                  ("omnitureSettings" Core..=) Core.<$>
                    omnitureSettings,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("tagSettings" Core..=) Core.<$> tagSettings,
                  ("thirdPartyAuthenticationTokens" Core..=) Core.<$>
                    thirdPartyAuthenticationTokens,
                  ("userDefinedVariableConfigurations" Core..=)
                    Core.<$> userDefinedVariableConfigurations])


-- | Floodlight Configuration List Response
--
-- /See:/ 'newFloodlightConfigurationsListResponse' smart constructor.
data FloodlightConfigurationsListResponse = FloodlightConfigurationsListResponse
    {
      -- | Floodlight configuration collection.
      floodlightConfigurations :: (Core.Maybe [FloodlightConfiguration])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightConfigurationsListResponse\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightConfigurationsListResponse' with the minimum fields required to make a request.
newFloodlightConfigurationsListResponse 
    ::  FloodlightConfigurationsListResponse
newFloodlightConfigurationsListResponse =
  FloodlightConfigurationsListResponse
    {floodlightConfigurations = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON
           FloodlightConfigurationsListResponse
         where
        parseJSON
          = Core.withObject
              "FloodlightConfigurationsListResponse"
              (\ o ->
                 FloodlightConfigurationsListResponse Core.<$>
                   (o Core..:? "floodlightConfigurations") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON
           FloodlightConfigurationsListResponse
         where
        toJSON FloodlightConfigurationsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightConfigurations" Core..=) Core.<$>
                    floodlightConfigurations,
                  ("kind" Core..=) Core.<$> kind])


-- | Represents fields that are compatible to be selected for a report of type \"FlOODLIGHT\".
--
-- /See:/ 'newFloodlightReportCompatibleFields' smart constructor.
data FloodlightReportCompatibleFields = FloodlightReportCompatibleFields
    {
      -- | Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.
      dimensionFilters :: (Core.Maybe [Dimension])
      -- | Dimensions which are compatible to be selected in the \"dimensions\" section of the report.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#floodlightReportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloodlightReportCompatibleFields' with the minimum fields required to make a request.
newFloodlightReportCompatibleFields 
    ::  FloodlightReportCompatibleFields
newFloodlightReportCompatibleFields =
  FloodlightReportCompatibleFields
    { dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    }

instance Core.FromJSON
           FloodlightReportCompatibleFields
         where
        parseJSON
          = Core.withObject "FloodlightReportCompatibleFields"
              (\ o ->
                 FloodlightReportCompatibleFields Core.<$>
                   (o Core..:? "dimensionFilters") Core.<*>
                     (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics"))

instance Core.ToJSON FloodlightReportCompatibleFields
         where
        toJSON FloodlightReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics])


-- | Frequency Cap.
--
-- /See:/ 'newFrequencyCap' smart constructor.
data FrequencyCap = FrequencyCap
    {
      -- | Duration of time, in seconds, for this frequency cap. The maximum duration is 90 days. Acceptable values are 1 to 7776000, inclusive.
      duration :: (Core.Maybe Core.Int64)
      -- | Number of times an individual user can be served the ad within the specified duration. Acceptable values are 1 to 15, inclusive.
    , impressions :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FrequencyCap' with the minimum fields required to make a request.
newFrequencyCap 
    ::  FrequencyCap
newFrequencyCap =
  FrequencyCap {duration = Core.Nothing, impressions = Core.Nothing}

instance Core.FromJSON FrequencyCap where
        parseJSON
          = Core.withObject "FrequencyCap"
              (\ o ->
                 FrequencyCap Core.<$>
                   (o Core..:? "duration" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "impressions" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON FrequencyCap where
        toJSON FrequencyCap{..}
          = Core.object
              (Core.catMaybes
                 [("duration" Core..=) Core.. Core.AsText Core.<$>
                    duration,
                  ("impressions" Core..=) Core.. Core.AsText Core.<$>
                    impressions])


-- | FsCommand.
--
-- /See:/ 'newFsCommand' smart constructor.
data FsCommand = FsCommand
    {
      -- | Distance from the left of the browser.Applicable when positionOption is DISTANCE/FROM/TOP/LEFT/CORNER.
      left :: (Core.Maybe Core.Int32)
      -- | Position in the browser where the window will open.
    , positionOption :: (Core.Maybe FsCommand_PositionOption)
      -- | Distance from the top of the browser. Applicable when positionOption is DISTANCE/FROM/TOP/LEFT/CORNER.
    , top :: (Core.Maybe Core.Int32)
      -- | Height of the window.
    , windowHeight :: (Core.Maybe Core.Int32)
      -- | Width of the window.
    , windowWidth :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FsCommand' with the minimum fields required to make a request.
newFsCommand 
    ::  FsCommand
newFsCommand =
  FsCommand
    { left = Core.Nothing
    , positionOption = Core.Nothing
    , top = Core.Nothing
    , windowHeight = Core.Nothing
    , windowWidth = Core.Nothing
    }

instance Core.FromJSON FsCommand where
        parseJSON
          = Core.withObject "FsCommand"
              (\ o ->
                 FsCommand Core.<$>
                   (o Core..:? "left") Core.<*>
                     (o Core..:? "positionOption")
                     Core.<*> (o Core..:? "top")
                     Core.<*> (o Core..:? "windowHeight")
                     Core.<*> (o Core..:? "windowWidth"))

instance Core.ToJSON FsCommand where
        toJSON FsCommand{..}
          = Core.object
              (Core.catMaybes
                 [("left" Core..=) Core.<$> left,
                  ("positionOption" Core..=) Core.<$> positionOption,
                  ("top" Core..=) Core.<$> top,
                  ("windowHeight" Core..=) Core.<$> windowHeight,
                  ("windowWidth" Core..=) Core.<$> windowWidth])


-- | Geographical Targeting.
--
-- /See:/ 'newGeoTargeting' smart constructor.
data GeoTargeting = GeoTargeting
    {
      -- | Cities to be targeted. For each city only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a city, do not target or exclude the country of the city, and do not target the metro or region of the city.
      cities :: (Core.Maybe [City])
      -- | Countries to be targeted or excluded from targeting, depending on the setting of the excludeCountries field. For each country only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting or excluding a country, do not target regions, cities, metros, or postal codes in the same country.
    , countries :: (Core.Maybe [Country])
      -- | Whether or not to exclude the countries in the countries field from targeting. If false, the countries field refers to countries which will be targeted by the ad.
    , excludeCountries :: (Core.Maybe Core.Bool)
      -- | Metros to be targeted. For each metro only dmaId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a metro, do not target or exclude the country of the metro.
    , metros :: (Core.Maybe [Metro])
      -- | Postal codes to be targeted. For each postal code only id is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a postal code, do not target or exclude the country of the postal code.
    , postalCodes :: (Core.Maybe [PostalCode])
      -- | Regions to be targeted. For each region only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a region, do not target or exclude the country of the region.
    , regions :: (Core.Maybe [Region])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoTargeting' with the minimum fields required to make a request.
newGeoTargeting 
    ::  GeoTargeting
newGeoTargeting =
  GeoTargeting
    { cities = Core.Nothing
    , countries = Core.Nothing
    , excludeCountries = Core.Nothing
    , metros = Core.Nothing
    , postalCodes = Core.Nothing
    , regions = Core.Nothing
    }

instance Core.FromJSON GeoTargeting where
        parseJSON
          = Core.withObject "GeoTargeting"
              (\ o ->
                 GeoTargeting Core.<$>
                   (o Core..:? "cities") Core.<*>
                     (o Core..:? "countries")
                     Core.<*> (o Core..:? "excludeCountries")
                     Core.<*> (o Core..:? "metros")
                     Core.<*> (o Core..:? "postalCodes")
                     Core.<*> (o Core..:? "regions"))

instance Core.ToJSON GeoTargeting where
        toJSON GeoTargeting{..}
          = Core.object
              (Core.catMaybes
                 [("cities" Core..=) Core.<$> cities,
                  ("countries" Core..=) Core.<$> countries,
                  ("excludeCountries" Core..=) Core.<$>
                    excludeCountries,
                  ("metros" Core..=) Core.<$> metros,
                  ("postalCodes" Core..=) Core.<$> postalCodes,
                  ("regions" Core..=) Core.<$> regions])


-- | Represents a buy from the Planning inventory store.
--
-- /See:/ 'newInventoryItem' smart constructor.
data InventoryItem = InventoryItem
    {
      -- | Account ID of this inventory item.
      accountId :: (Core.Maybe Core.Int64)
      -- | Ad slots of this inventory item. If this inventory item represents a standalone placement, there will be exactly one ad slot. If this inventory item represents a placement group, there will be more than one ad slot, each representing one child placement in that placement group.
    , adSlots :: (Core.Maybe [AdSlot])
      -- | Advertiser ID of this inventory item.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Content category ID of this inventory item.
    , contentCategoryId :: (Core.Maybe Core.Int64)
      -- | Estimated click-through rate of this inventory item.
    , estimatedClickThroughRate :: (Core.Maybe Core.Int64)
      -- | Estimated conversion rate of this inventory item.
    , estimatedConversionRate :: (Core.Maybe Core.Int64)
      -- | ID of this inventory item.
    , id :: (Core.Maybe Core.Int64)
      -- | Whether this inventory item is in plan.
    , inPlan :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#inventoryItem\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this inventory item.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Name of this inventory item. For standalone inventory items, this is the same name as that of its only ad slot. For group inventory items, this can differ from the name of any of its ad slots.
    , name :: (Core.Maybe Core.Text)
      -- | Negotiation channel ID of this inventory item.
    , negotiationChannelId :: (Core.Maybe Core.Int64)
      -- | Order ID of this inventory item.
    , orderId :: (Core.Maybe Core.Int64)
      -- | Placement strategy ID of this inventory item.
    , placementStrategyId :: (Core.Maybe Core.Int64)
      -- | Pricing of this inventory item.
    , pricing :: (Core.Maybe Pricing)
      -- | Project ID of this inventory item.
    , projectId :: (Core.Maybe Core.Int64)
      -- | RFP ID of this inventory item.
    , rfpId :: (Core.Maybe Core.Int64)
      -- | ID of the site this inventory item is associated with.
    , siteId :: (Core.Maybe Core.Int64)
      -- | Subaccount ID of this inventory item.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Type of inventory item.
    , type' :: (Core.Maybe InventoryItem_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InventoryItem' with the minimum fields required to make a request.
newInventoryItem 
    ::  InventoryItem
newInventoryItem =
  InventoryItem
    { accountId = Core.Nothing
    , adSlots = Core.Nothing
    , advertiserId = Core.Nothing
    , contentCategoryId = Core.Nothing
    , estimatedClickThroughRate = Core.Nothing
    , estimatedConversionRate = Core.Nothing
    , id = Core.Nothing
    , inPlan = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , name = Core.Nothing
    , negotiationChannelId = Core.Nothing
    , orderId = Core.Nothing
    , placementStrategyId = Core.Nothing
    , pricing = Core.Nothing
    , projectId = Core.Nothing
    , rfpId = Core.Nothing
    , siteId = Core.Nothing
    , subaccountId = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON InventoryItem where
        parseJSON
          = Core.withObject "InventoryItem"
              (\ o ->
                 InventoryItem Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "adSlots")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "contentCategoryId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "estimatedClickThroughRate" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "estimatedConversionRate" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "inPlan")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "negotiationChannelId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "orderId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "placementStrategyId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pricing")
                     Core.<*>
                     (o Core..:? "projectId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "rfpId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "siteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON InventoryItem where
        toJSON InventoryItem{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("adSlots" Core..=) Core.<$> adSlots,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("contentCategoryId" Core..=) Core.. Core.AsText
                    Core.<$> contentCategoryId,
                  ("estimatedClickThroughRate" Core..=) Core..
                    Core.AsText
                    Core.<$> estimatedClickThroughRate,
                  ("estimatedConversionRate" Core..=) Core..
                    Core.AsText
                    Core.<$> estimatedConversionRate,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("inPlan" Core..=) Core.<$> inPlan,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("name" Core..=) Core.<$> name,
                  ("negotiationChannelId" Core..=) Core.. Core.AsText
                    Core.<$> negotiationChannelId,
                  ("orderId" Core..=) Core.. Core.AsText Core.<$>
                    orderId,
                  ("placementStrategyId" Core..=) Core.. Core.AsText
                    Core.<$> placementStrategyId,
                  ("pricing" Core..=) Core.<$> pricing,
                  ("projectId" Core..=) Core.. Core.AsText Core.<$>
                    projectId,
                  ("rfpId" Core..=) Core.. Core.AsText Core.<$> rfpId,
                  ("siteId" Core..=) Core.. Core.AsText Core.<$>
                    siteId,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("type" Core..=) Core.<$> type'])


-- | Inventory item List Response
--
-- /See:/ 'newInventoryItemsListResponse' smart constructor.
data InventoryItemsListResponse = InventoryItemsListResponse
    {
      -- | Inventory item collection
      inventoryItems :: (Core.Maybe [InventoryItem])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#inventoryItemsListResponse\".
    , kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InventoryItemsListResponse' with the minimum fields required to make a request.
newInventoryItemsListResponse 
    ::  InventoryItemsListResponse
newInventoryItemsListResponse =
  InventoryItemsListResponse
    { inventoryItems = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON InventoryItemsListResponse
         where
        parseJSON
          = Core.withObject "InventoryItemsListResponse"
              (\ o ->
                 InventoryItemsListResponse Core.<$>
                   (o Core..:? "inventoryItems") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON InventoryItemsListResponse where
        toJSON InventoryItemsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("inventoryItems" Core..=) Core.<$> inventoryItems,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains information about a single invoice
--
-- /See:/ 'newInvoice' smart constructor.
data Invoice = Invoice
    {
      -- | The list of summarized campaign information associated with this invoice.
      campaignSummaries :: (Core.Maybe [CampaignSummary])
      -- | The originally issued invoice that is being adjusted by this invoice, if applicable. May appear on invoice PDF as /Reference invoice number/.
    , correctedInvoiceId :: (Core.Maybe Core.Text)
      -- | Invoice currency code in ISO 4217 format.
    , currencyCode :: (Core.Maybe Core.Text)
      -- | The invoice due date.
    , dueDate :: (Core.Maybe Core.Text)
      -- | ID of this invoice.
    , id :: (Core.Maybe Core.Text)
      -- | The type of invoice document.
    , invoiceType :: (Core.Maybe Invoice_InvoiceType)
      -- | The date when the invoice was issued.
    , issueDate :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#invoice\".
    , kind :: (Core.Maybe Core.Text)
      -- | The ID of the payments account the invoice belongs to. Appears on the invoice PDF as /Billing Account Number/.
    , paymentsAccountId :: (Core.Maybe Core.Text)
      -- | The ID of the payments profile the invoice belongs to. Appears on the invoice PDF as /Billing ID/.
    , paymentsProfileId :: (Core.Maybe Core.Text)
      -- | The URL to download a PDF copy of the invoice. Note that this URL is user specific and requires a valid OAuth 2.0 access token to access. The access token must be provided in an /Authorization: Bearer/ HTTP header. The URL will only be usable for 7 days from when the api is called.
    , pdfUrl :: (Core.Maybe Core.Text)
      -- | Purchase order number associated with the invoice.
    , purchaseOrderNumber :: (Core.Maybe Core.Text)
      -- | The originally issued invoice(s) that is being cancelled by this invoice, if applicable. May appear on invoice PDF as /Replaced invoice numbers/. Note: There may be multiple replaced invoices due to consolidation of multiple invoices into a single invoice.
    , replacedInvoiceIds :: (Core.Maybe [Core.Text])
      -- | The invoice service end date.
    , serviceEndDate :: (Core.Maybe Core.Text)
      -- | The invoice service start date.
    , serviceStartDate :: (Core.Maybe Core.Text)
      -- | The pre-tax subtotal amount, in micros of the invoice\'s currency.
    , subtotalAmountMicros :: (Core.Maybe Core.Int64)
      -- | The invoice total amount, in micros of the invoice\'s currency.
    , totalAmountMicros :: (Core.Maybe Core.Int64)
      -- | The sum of all taxes in invoice, in micros of the invoice\'s currency.
    , totalTaxAmountMicros :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Invoice' with the minimum fields required to make a request.
newInvoice 
    ::  Invoice
newInvoice =
  Invoice
    { campaignSummaries = Core.Nothing
    , correctedInvoiceId = Core.Nothing
    , currencyCode = Core.Nothing
    , dueDate = Core.Nothing
    , id = Core.Nothing
    , invoiceType = Core.Nothing
    , issueDate = Core.Nothing
    , kind = Core.Nothing
    , paymentsAccountId = Core.Nothing
    , paymentsProfileId = Core.Nothing
    , pdfUrl = Core.Nothing
    , purchaseOrderNumber = Core.Nothing
    , replacedInvoiceIds = Core.Nothing
    , serviceEndDate = Core.Nothing
    , serviceStartDate = Core.Nothing
    , subtotalAmountMicros = Core.Nothing
    , totalAmountMicros = Core.Nothing
    , totalTaxAmountMicros = Core.Nothing
    }

instance Core.FromJSON Invoice where
        parseJSON
          = Core.withObject "Invoice"
              (\ o ->
                 Invoice Core.<$>
                   (o Core..:? "campaign_summaries") Core.<*>
                     (o Core..:? "correctedInvoiceId")
                     Core.<*> (o Core..:? "currencyCode")
                     Core.<*> (o Core..:? "dueDate")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "invoiceType")
                     Core.<*> (o Core..:? "issueDate")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "paymentsAccountId")
                     Core.<*> (o Core..:? "paymentsProfileId")
                     Core.<*> (o Core..:? "pdfUrl")
                     Core.<*> (o Core..:? "purchaseOrderNumber")
                     Core.<*> (o Core..:? "replacedInvoiceIds")
                     Core.<*> (o Core..:? "serviceEndDate")
                     Core.<*> (o Core..:? "serviceStartDate")
                     Core.<*>
                     (o Core..:? "subtotalAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "totalAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "totalTaxAmountMicros" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Invoice where
        toJSON Invoice{..}
          = Core.object
              (Core.catMaybes
                 [("campaign_summaries" Core..=) Core.<$>
                    campaignSummaries,
                  ("correctedInvoiceId" Core..=) Core.<$>
                    correctedInvoiceId,
                  ("currencyCode" Core..=) Core.<$> currencyCode,
                  ("dueDate" Core..=) Core.<$> dueDate,
                  ("id" Core..=) Core.<$> id,
                  ("invoiceType" Core..=) Core.<$> invoiceType,
                  ("issueDate" Core..=) Core.<$> issueDate,
                  ("kind" Core..=) Core.<$> kind,
                  ("paymentsAccountId" Core..=) Core.<$>
                    paymentsAccountId,
                  ("paymentsProfileId" Core..=) Core.<$>
                    paymentsProfileId,
                  ("pdfUrl" Core..=) Core.<$> pdfUrl,
                  ("purchaseOrderNumber" Core..=) Core.<$>
                    purchaseOrderNumber,
                  ("replacedInvoiceIds" Core..=) Core.<$>
                    replacedInvoiceIds,
                  ("serviceEndDate" Core..=) Core.<$> serviceEndDate,
                  ("serviceStartDate" Core..=) Core.<$>
                    serviceStartDate,
                  ("subtotalAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> subtotalAmountMicros,
                  ("totalAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> totalAmountMicros,
                  ("totalTaxAmountMicros" Core..=) Core.. Core.AsText
                    Core.<$> totalTaxAmountMicros])


-- | Key Value Targeting Expression.
--
-- /See:/ 'newKeyValueTargetingExpression' smart constructor.
newtype KeyValueTargetingExpression = KeyValueTargetingExpression
    {
      -- | Keyword expression being targeted by the ad.
      expression :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyValueTargetingExpression' with the minimum fields required to make a request.
newKeyValueTargetingExpression 
    ::  KeyValueTargetingExpression
newKeyValueTargetingExpression =
  KeyValueTargetingExpression {expression = Core.Nothing}

instance Core.FromJSON KeyValueTargetingExpression
         where
        parseJSON
          = Core.withObject "KeyValueTargetingExpression"
              (\ o ->
                 KeyValueTargetingExpression Core.<$>
                   (o Core..:? "expression"))

instance Core.ToJSON KeyValueTargetingExpression
         where
        toJSON KeyValueTargetingExpression{..}
          = Core.object
              (Core.catMaybes
                 [("expression" Core..=) Core.<$> expression])


-- | Contains information about where a user\'s browser is taken after the user clicks an ad.
--
-- /See:/ 'newLandingPage' smart constructor.
data LandingPage = LandingPage
    {
      -- | Advertiser ID of this landing page. This is a required field.
      advertiserId :: (Core.Maybe Core.Int64)
      -- | Whether this landing page has been archived.
    , archived :: (Core.Maybe Core.Bool)
      -- | Links that will direct the user to a mobile app, if installed.
    , deepLinks :: (Core.Maybe [DeepLink])
      -- | ID of this landing page. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#landingPage\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this landing page. This is a required field. It must be less than 256 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | URL of this landing page. This is a required field.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LandingPage' with the minimum fields required to make a request.
newLandingPage 
    ::  LandingPage
newLandingPage =
  LandingPage
    { advertiserId = Core.Nothing
    , archived = Core.Nothing
    , deepLinks = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON LandingPage where
        parseJSON
          = Core.withObject "LandingPage"
              (\ o ->
                 LandingPage Core.<$>
                   (o Core..:? "advertiserId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "archived")
                     Core.<*> (o Core..:? "deepLinks")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON LandingPage where
        toJSON LandingPage{..}
          = Core.object
              (Core.catMaybes
                 [("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("archived" Core..=) Core.<$> archived,
                  ("deepLinks" Core..=) Core.<$> deepLinks,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("url" Core..=) Core.<$> url])


-- | Contains information about a language that can be targeted by ads.
--
-- /See:/ 'newLanguage' smart constructor.
data Language = Language
    {
      -- | Language ID of this language. This is the ID used for targeting and generating reports.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#language\".
    , kind :: (Core.Maybe Core.Text)
      -- | Format of language code is an ISO 639 two-letter language code optionally followed by an underscore followed by an ISO 3166 code. Examples are \"en\" for English or \"zh_CN\" for Simplified Chinese.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Name of this language.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Language' with the minimum fields required to make a request.
newLanguage 
    ::  Language
newLanguage =
  Language
    { id = Core.Nothing
    , kind = Core.Nothing
    , languageCode = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Language where
        parseJSON
          = Core.withObject "Language"
              (\ o ->
                 Language Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Language where
        toJSON Language{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("name" Core..=) Core.<$> name])


-- | Language Targeting.
--
-- /See:/ 'newLanguageTargeting' smart constructor.
newtype LanguageTargeting = LanguageTargeting
    {
      -- | Languages that this ad targets. For each language only languageId is required. The other fields are populated automatically when the ad is inserted or updated.
      languages :: (Core.Maybe [Language])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageTargeting' with the minimum fields required to make a request.
newLanguageTargeting 
    ::  LanguageTargeting
newLanguageTargeting = LanguageTargeting {languages = Core.Nothing}

instance Core.FromJSON LanguageTargeting where
        parseJSON
          = Core.withObject "LanguageTargeting"
              (\ o ->
                 LanguageTargeting Core.<$> (o Core..:? "languages"))

instance Core.ToJSON LanguageTargeting where
        toJSON LanguageTargeting{..}
          = Core.object
              (Core.catMaybes
                 [("languages" Core..=) Core.<$> languages])


-- | Language List Response
--
-- /See:/ 'newLanguagesListResponse' smart constructor.
data LanguagesListResponse = LanguagesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#languagesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Language collection.
    , languages :: (Core.Maybe [Language])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguagesListResponse' with the minimum fields required to make a request.
newLanguagesListResponse 
    ::  LanguagesListResponse
newLanguagesListResponse =
  LanguagesListResponse {kind = Core.Nothing, languages = Core.Nothing}

instance Core.FromJSON LanguagesListResponse where
        parseJSON
          = Core.withObject "LanguagesListResponse"
              (\ o ->
                 LanguagesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "languages"))

instance Core.ToJSON LanguagesListResponse where
        toJSON LanguagesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("languages" Core..=) Core.<$> languages])


-- | Modification timestamp.
--
-- /See:/ 'newLastModifiedInfo' smart constructor.
newtype LastModifiedInfo = LastModifiedInfo
    {
      -- | Timestamp of the last change in milliseconds since epoch.
      time :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LastModifiedInfo' with the minimum fields required to make a request.
newLastModifiedInfo 
    ::  LastModifiedInfo
newLastModifiedInfo = LastModifiedInfo {time = Core.Nothing}

instance Core.FromJSON LastModifiedInfo where
        parseJSON
          = Core.withObject "LastModifiedInfo"
              (\ o ->
                 LastModifiedInfo Core.<$>
                   (o Core..:? "time" Core.<&>
                      Core.fmap Core.fromAsText))

instance Core.ToJSON LastModifiedInfo where
        toJSON LastModifiedInfo{..}
          = Core.object
              (Core.catMaybes
                 [("time" Core..=) Core.. Core.AsText Core.<$> time])


-- | A group clause made up of list population terms representing constraints joined by ORs.
--
-- /See:/ 'newListPopulationClause' smart constructor.
newtype ListPopulationClause = ListPopulationClause
    {
      -- | Terms of this list population clause. Each clause is made up of list population terms representing constraints and are joined by ORs.
      terms :: (Core.Maybe [ListPopulationTerm])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPopulationClause' with the minimum fields required to make a request.
newListPopulationClause 
    ::  ListPopulationClause
newListPopulationClause = ListPopulationClause {terms = Core.Nothing}

instance Core.FromJSON ListPopulationClause where
        parseJSON
          = Core.withObject "ListPopulationClause"
              (\ o ->
                 ListPopulationClause Core.<$> (o Core..:? "terms"))

instance Core.ToJSON ListPopulationClause where
        toJSON ListPopulationClause{..}
          = Core.object
              (Core.catMaybes [("terms" Core..=) Core.<$> terms])


-- | Remarketing List Population Rule.
--
-- /See:/ 'newListPopulationRule' smart constructor.
data ListPopulationRule = ListPopulationRule
    {
      -- | Floodlight activity ID associated with this rule. This field can be left blank.
      floodlightActivityId :: (Core.Maybe Core.Int64)
      -- | Name of floodlight activity associated with this rule. This is a read-only, auto-generated field.
    , floodlightActivityName :: (Core.Maybe Core.Text)
      -- | Clauses that make up this list population rule. Clauses are joined by ANDs, and the clauses themselves are made up of list population terms which are joined by ORs.
    , listPopulationClauses :: (Core.Maybe [ListPopulationClause])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPopulationRule' with the minimum fields required to make a request.
newListPopulationRule 
    ::  ListPopulationRule
newListPopulationRule =
  ListPopulationRule
    { floodlightActivityId = Core.Nothing
    , floodlightActivityName = Core.Nothing
    , listPopulationClauses = Core.Nothing
    }

instance Core.FromJSON ListPopulationRule where
        parseJSON
          = Core.withObject "ListPopulationRule"
              (\ o ->
                 ListPopulationRule Core.<$>
                   (o Core..:? "floodlightActivityId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "floodlightActivityName")
                     Core.<*> (o Core..:? "listPopulationClauses"))

instance Core.ToJSON ListPopulationRule where
        toJSON ListPopulationRule{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightActivityId" Core..=) Core.. Core.AsText
                    Core.<$> floodlightActivityId,
                  ("floodlightActivityName" Core..=) Core.<$>
                    floodlightActivityName,
                  ("listPopulationClauses" Core..=) Core.<$>
                    listPopulationClauses])


-- | Remarketing List Population Rule Term.
--
-- /See:/ 'newListPopulationTerm' smart constructor.
data ListPopulationTerm = ListPopulationTerm
    {
      -- | Will be true if the term should check if the user is in the list and false if the term should check if the user is not in the list. This field is only relevant when type is set to LIST/MEMBERSHIP/TERM. False by default.
      contains :: (Core.Maybe Core.Bool)
      -- | Whether to negate the comparison result of this term during rule evaluation. This field is only relevant when type is left unset or set to CUSTOM/VARIABLE/TERM or REFERRER_TERM.
    , negation :: (Core.Maybe Core.Bool)
      -- | Comparison operator of this term. This field is only relevant when type is left unset or set to CUSTOM/VARIABLE/TERM or REFERRER_TERM.
    , operator :: (Core.Maybe ListPopulationTerm_Operator)
      -- | ID of the list in question. This field is only relevant when type is set to LIST/MEMBERSHIP/TERM.
    , remarketingListId :: (Core.Maybe Core.Int64)
      -- | List population term type determines the applicable fields in this object. If left unset or set to CUSTOM/VARIABLE/TERM, then variableName, variableFriendlyName, operator, value, and negation are applicable. If set to LIST/MEMBERSHIP/TERM then remarketingListId and contains are applicable. If set to REFERRER_TERM then operator, value, and negation are applicable.
    , type' :: (Core.Maybe ListPopulationTerm_Type)
      -- | Literal to compare the variable to. This field is only relevant when type is left unset or set to CUSTOM/VARIABLE/TERM or REFERRER_TERM.
    , value :: (Core.Maybe Core.Text)
      -- | Friendly name of this term\'s variable. This is a read-only, auto-generated field. This field is only relevant when type is left unset or set to CUSTOM/VARIABLE/TERM.
    , variableFriendlyName :: (Core.Maybe Core.Text)
      -- | Name of the variable (U1, U2, etc.) being compared in this term. This field is only relevant when type is set to null, CUSTOM/VARIABLE/TERM or REFERRER_TERM.
    , variableName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPopulationTerm' with the minimum fields required to make a request.
newListPopulationTerm 
    ::  ListPopulationTerm
newListPopulationTerm =
  ListPopulationTerm
    { contains = Core.Nothing
    , negation = Core.Nothing
    , operator = Core.Nothing
    , remarketingListId = Core.Nothing
    , type' = Core.Nothing
    , value = Core.Nothing
    , variableFriendlyName = Core.Nothing
    , variableName = Core.Nothing
    }

instance Core.FromJSON ListPopulationTerm where
        parseJSON
          = Core.withObject "ListPopulationTerm"
              (\ o ->
                 ListPopulationTerm Core.<$>
                   (o Core..:? "contains") Core.<*>
                     (o Core..:? "negation")
                     Core.<*> (o Core..:? "operator")
                     Core.<*>
                     (o Core..:? "remarketingListId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "value")
                     Core.<*> (o Core..:? "variableFriendlyName")
                     Core.<*> (o Core..:? "variableName"))

instance Core.ToJSON ListPopulationTerm where
        toJSON ListPopulationTerm{..}
          = Core.object
              (Core.catMaybes
                 [("contains" Core..=) Core.<$> contains,
                  ("negation" Core..=) Core.<$> negation,
                  ("operator" Core..=) Core.<$> operator,
                  ("remarketingListId" Core..=) Core.. Core.AsText
                    Core.<$> remarketingListId,
                  ("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value,
                  ("variableFriendlyName" Core..=) Core.<$>
                    variableFriendlyName,
                  ("variableName" Core..=) Core.<$> variableName])


-- | Remarketing List Targeting Expression.
--
-- /See:/ 'newListTargetingExpression' smart constructor.
newtype ListTargetingExpression = ListTargetingExpression
    {
      -- | Expression describing which lists are being targeted by the ad.
      expression :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTargetingExpression' with the minimum fields required to make a request.
newListTargetingExpression 
    ::  ListTargetingExpression
newListTargetingExpression = ListTargetingExpression {expression = Core.Nothing}

instance Core.FromJSON ListTargetingExpression where
        parseJSON
          = Core.withObject "ListTargetingExpression"
              (\ o ->
                 ListTargetingExpression Core.<$>
                   (o Core..:? "expression"))

instance Core.ToJSON ListTargetingExpression where
        toJSON ListTargetingExpression{..}
          = Core.object
              (Core.catMaybes
                 [("expression" Core..=) Core.<$> expression])


-- | Lookback configuration settings.
--
-- /See:/ 'newLookbackConfiguration' smart constructor.
data LookbackConfiguration = LookbackConfiguration
    {
      -- | Lookback window, in days, from the last time a given user clicked on one of your ads. If you enter 0, clicks will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.
      clickDuration :: (Core.Maybe Core.Int32)
      -- | Lookback window, in days, from the last time a given user viewed one of your ads. If you enter 0, impressions will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.
    , postImpressionActivitiesDuration :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookbackConfiguration' with the minimum fields required to make a request.
newLookbackConfiguration 
    ::  LookbackConfiguration
newLookbackConfiguration =
  LookbackConfiguration
    { clickDuration = Core.Nothing
    , postImpressionActivitiesDuration = Core.Nothing
    }

instance Core.FromJSON LookbackConfiguration where
        parseJSON
          = Core.withObject "LookbackConfiguration"
              (\ o ->
                 LookbackConfiguration Core.<$>
                   (o Core..:? "clickDuration") Core.<*>
                     (o Core..:? "postImpressionActivitiesDuration"))

instance Core.ToJSON LookbackConfiguration where
        toJSON LookbackConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("clickDuration" Core..=) Core.<$> clickDuration,
                  ("postImpressionActivitiesDuration" Core..=) Core.<$>
                    postImpressionActivitiesDuration])


--
-- /See:/ 'newMeasurementPartnerAdvertiserLink' smart constructor.
data MeasurementPartnerAdvertiserLink = MeasurementPartnerAdvertiserLink
    {
      -- | Status of the partner link.
      linkStatus :: (Core.Maybe MeasurementPartnerAdvertiserLink_LinkStatus)
      -- | Measurement partner used for tag wrapping.
    , measurementPartner :: (Core.Maybe MeasurementPartnerAdvertiserLink_MeasurementPartner)
      -- | partner Advertiser Id.
    , partnerAdvertiserId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MeasurementPartnerAdvertiserLink' with the minimum fields required to make a request.
newMeasurementPartnerAdvertiserLink 
    ::  MeasurementPartnerAdvertiserLink
newMeasurementPartnerAdvertiserLink =
  MeasurementPartnerAdvertiserLink
    { linkStatus = Core.Nothing
    , measurementPartner = Core.Nothing
    , partnerAdvertiserId = Core.Nothing
    }

instance Core.FromJSON
           MeasurementPartnerAdvertiserLink
         where
        parseJSON
          = Core.withObject "MeasurementPartnerAdvertiserLink"
              (\ o ->
                 MeasurementPartnerAdvertiserLink Core.<$>
                   (o Core..:? "linkStatus") Core.<*>
                     (o Core..:? "measurementPartner")
                     Core.<*> (o Core..:? "partnerAdvertiserId"))

instance Core.ToJSON MeasurementPartnerAdvertiserLink
         where
        toJSON MeasurementPartnerAdvertiserLink{..}
          = Core.object
              (Core.catMaybes
                 [("linkStatus" Core..=) Core.<$> linkStatus,
                  ("measurementPartner" Core..=) Core.<$>
                    measurementPartner,
                  ("partnerAdvertiserId" Core..=) Core.<$>
                    partnerAdvertiserId])


--
-- /See:/ 'newMeasurementPartnerCampaignLink' smart constructor.
data MeasurementPartnerCampaignLink = MeasurementPartnerCampaignLink
    {
      -- | .
      linkStatus :: (Core.Maybe MeasurementPartnerCampaignLink_LinkStatus)
      -- | Measurement partner used for tag wrapping.
    , measurementPartner :: (Core.Maybe MeasurementPartnerCampaignLink_MeasurementPartner)
      -- | Partner campaign ID needed for establishing linking with Measurement partner.
    , partnerCampaignId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MeasurementPartnerCampaignLink' with the minimum fields required to make a request.
newMeasurementPartnerCampaignLink 
    ::  MeasurementPartnerCampaignLink
newMeasurementPartnerCampaignLink =
  MeasurementPartnerCampaignLink
    { linkStatus = Core.Nothing
    , measurementPartner = Core.Nothing
    , partnerCampaignId = Core.Nothing
    }

instance Core.FromJSON MeasurementPartnerCampaignLink
         where
        parseJSON
          = Core.withObject "MeasurementPartnerCampaignLink"
              (\ o ->
                 MeasurementPartnerCampaignLink Core.<$>
                   (o Core..:? "linkStatus") Core.<*>
                     (o Core..:? "measurementPartner")
                     Core.<*> (o Core..:? "partnerCampaignId"))

instance Core.ToJSON MeasurementPartnerCampaignLink
         where
        toJSON MeasurementPartnerCampaignLink{..}
          = Core.object
              (Core.catMaybes
                 [("linkStatus" Core..=) Core.<$> linkStatus,
                  ("measurementPartner" Core..=) Core.<$>
                    measurementPartner,
                  ("partnerCampaignId" Core..=) Core.<$>
                    partnerCampaignId])


-- | Placement tag wrapping
--
-- /See:/ 'newMeasurementPartnerWrappingData' smart constructor.
data MeasurementPartnerWrappingData = MeasurementPartnerWrappingData
    {
      -- | Placement wrapping status.
      linkStatus :: (Core.Maybe MeasurementPartnerWrappingData_LinkStatus)
      -- | Measurement partner used for wrapping the placement.
    , measurementPartner :: (Core.Maybe MeasurementPartnerWrappingData_MeasurementPartner)
      -- | Measurement mode for the wrapped placement.
    , tagWrappingMode :: (Core.Maybe MeasurementPartnerWrappingData_TagWrappingMode)
      -- | Tag provided by the measurement partner during wrapping.
    , wrappedTag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MeasurementPartnerWrappingData' with the minimum fields required to make a request.
newMeasurementPartnerWrappingData 
    ::  MeasurementPartnerWrappingData
newMeasurementPartnerWrappingData =
  MeasurementPartnerWrappingData
    { linkStatus = Core.Nothing
    , measurementPartner = Core.Nothing
    , tagWrappingMode = Core.Nothing
    , wrappedTag = Core.Nothing
    }

instance Core.FromJSON MeasurementPartnerWrappingData
         where
        parseJSON
          = Core.withObject "MeasurementPartnerWrappingData"
              (\ o ->
                 MeasurementPartnerWrappingData Core.<$>
                   (o Core..:? "linkStatus") Core.<*>
                     (o Core..:? "measurementPartner")
                     Core.<*> (o Core..:? "tagWrappingMode")
                     Core.<*> (o Core..:? "wrappedTag"))

instance Core.ToJSON MeasurementPartnerWrappingData
         where
        toJSON MeasurementPartnerWrappingData{..}
          = Core.object
              (Core.catMaybes
                 [("linkStatus" Core..=) Core.<$> linkStatus,
                  ("measurementPartner" Core..=) Core.<$>
                    measurementPartner,
                  ("tagWrappingMode" Core..=) Core.<$> tagWrappingMode,
                  ("wrappedTag" Core..=) Core.<$> wrappedTag])


-- | Represents a metric.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
    {
      -- | The kind of resource this is, in this case dfareporting#metric.
      kind :: (Core.Maybe Core.Text)
      -- | The metric name, e.g. impressions
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric 
    ::  Metric
newMetric = Metric {kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Metric where
        parseJSON
          = Core.withObject "Metric"
              (\ o ->
                 Metric Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "name"))

instance Core.ToJSON Metric where
        toJSON Metric{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Contains information about a metro region that can be targeted by ads.
--
-- /See:/ 'newMetro' smart constructor.
data Metro = Metro
    {
      -- | Country code of the country to which this metro region belongs.
      countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of the country to which this metro region belongs.
    , countryDartId :: (Core.Maybe Core.Int64)
      -- | DART ID of this metro region.
    , dartId :: (Core.Maybe Core.Int64)
      -- | DMA ID of this metro region. This is the ID used for targeting and generating reports, and is equivalent to metro_code.
    , dmaId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#metro\".
    , kind :: (Core.Maybe Core.Text)
      -- | Metro code of this metro region. This is equivalent to dma_id.
    , metroCode :: (Core.Maybe Core.Text)
      -- | Name of this metro region.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metro' with the minimum fields required to make a request.
newMetro 
    ::  Metro
newMetro =
  Metro
    { countryCode = Core.Nothing
    , countryDartId = Core.Nothing
    , dartId = Core.Nothing
    , dmaId = Core.Nothing
    , kind = Core.Nothing
    , metroCode = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Metro where
        parseJSON
          = Core.withObject "Metro"
              (\ o ->
                 Metro Core.<$>
                   (o Core..:? "countryCode") Core.<*>
                     (o Core..:? "countryDartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "dartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "dmaId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metroCode")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Metro where
        toJSON Metro{..}
          = Core.object
              (Core.catMaybes
                 [("countryCode" Core..=) Core.<$> countryCode,
                  ("countryDartId" Core..=) Core.. Core.AsText Core.<$>
                    countryDartId,
                  ("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("dmaId" Core..=) Core.. Core.AsText Core.<$> dmaId,
                  ("kind" Core..=) Core.<$> kind,
                  ("metroCode" Core..=) Core.<$> metroCode,
                  ("name" Core..=) Core.<$> name])


-- | Metro List Response
--
-- /See:/ 'newMetrosListResponse' smart constructor.
data MetrosListResponse = MetrosListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#metrosListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Metro collection.
    , metros :: (Core.Maybe [Metro])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetrosListResponse' with the minimum fields required to make a request.
newMetrosListResponse 
    ::  MetrosListResponse
newMetrosListResponse =
  MetrosListResponse {kind = Core.Nothing, metros = Core.Nothing}

instance Core.FromJSON MetrosListResponse where
        parseJSON
          = Core.withObject "MetrosListResponse"
              (\ o ->
                 MetrosListResponse Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "metros"))

instance Core.ToJSON MetrosListResponse where
        toJSON MetrosListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("metros" Core..=) Core.<$> metros])


-- | Contains information about a mobile app. Used as a landing page deep link.
--
-- /See:/ 'newMobileApp' smart constructor.
data MobileApp = MobileApp
    {
      -- | Mobile app directory.
      directory :: (Core.Maybe MobileApp_Directory)
      -- | ID of this mobile app.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileApp\".
    , kind :: (Core.Maybe Core.Text)
      -- | Publisher name.
    , publisherName :: (Core.Maybe Core.Text)
      -- | Title of this mobile app.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileApp' with the minimum fields required to make a request.
newMobileApp 
    ::  MobileApp
newMobileApp =
  MobileApp
    { directory = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , publisherName = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON MobileApp where
        parseJSON
          = Core.withObject "MobileApp"
              (\ o ->
                 MobileApp Core.<$>
                   (o Core..:? "directory") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "publisherName")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON MobileApp where
        toJSON MobileApp{..}
          = Core.object
              (Core.catMaybes
                 [("directory" Core..=) Core.<$> directory,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("publisherName" Core..=) Core.<$> publisherName,
                  ("title" Core..=) Core.<$> title])


-- | Mobile app List Response
--
-- /See:/ 'newMobileAppsListResponse' smart constructor.
data MobileAppsListResponse = MobileAppsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileAppsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Mobile apps collection.
    , mobileApps :: (Core.Maybe [MobileApp])
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileAppsListResponse' with the minimum fields required to make a request.
newMobileAppsListResponse 
    ::  MobileAppsListResponse
newMobileAppsListResponse =
  MobileAppsListResponse
    { kind = Core.Nothing
    , mobileApps = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON MobileAppsListResponse where
        parseJSON
          = Core.withObject "MobileAppsListResponse"
              (\ o ->
                 MobileAppsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "mobileApps")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON MobileAppsListResponse where
        toJSON MobileAppsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("mobileApps" Core..=) Core.<$> mobileApps,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Contains information about a mobile carrier that can be targeted by ads.
--
-- /See:/ 'newMobileCarrier' smart constructor.
data MobileCarrier = MobileCarrier
    {
      -- | Country code of the country to which this mobile carrier belongs.
      countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of the country to which this mobile carrier belongs.
    , countryDartId :: (Core.Maybe Core.Int64)
      -- | ID of this mobile carrier.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileCarrier\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this mobile carrier.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileCarrier' with the minimum fields required to make a request.
newMobileCarrier 
    ::  MobileCarrier
newMobileCarrier =
  MobileCarrier
    { countryCode = Core.Nothing
    , countryDartId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON MobileCarrier where
        parseJSON
          = Core.withObject "MobileCarrier"
              (\ o ->
                 MobileCarrier Core.<$>
                   (o Core..:? "countryCode") Core.<*>
                     (o Core..:? "countryDartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON MobileCarrier where
        toJSON MobileCarrier{..}
          = Core.object
              (Core.catMaybes
                 [("countryCode" Core..=) Core.<$> countryCode,
                  ("countryDartId" Core..=) Core.. Core.AsText Core.<$>
                    countryDartId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Mobile Carrier List Response
--
-- /See:/ 'newMobileCarriersListResponse' smart constructor.
data MobileCarriersListResponse = MobileCarriersListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileCarriersListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Mobile carrier collection.
    , mobileCarriers :: (Core.Maybe [MobileCarrier])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileCarriersListResponse' with the minimum fields required to make a request.
newMobileCarriersListResponse 
    ::  MobileCarriersListResponse
newMobileCarriersListResponse =
  MobileCarriersListResponse
    {kind = Core.Nothing, mobileCarriers = Core.Nothing}

instance Core.FromJSON MobileCarriersListResponse
         where
        parseJSON
          = Core.withObject "MobileCarriersListResponse"
              (\ o ->
                 MobileCarriersListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "mobileCarriers"))

instance Core.ToJSON MobileCarriersListResponse where
        toJSON MobileCarriersListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("mobileCarriers" Core..=) Core.<$> mobileCarriers])


-- | Online Behavioral Advertiser icon.
--
-- /See:/ 'newObaIcon' smart constructor.
data ObaIcon = ObaIcon
    {
      -- | URL to redirect to when an OBA icon is clicked.
      iconClickThroughUrl :: (Core.Maybe Core.Text)
      -- | URL to track click when an OBA icon is clicked.
    , iconClickTrackingUrl :: (Core.Maybe Core.Text)
      -- | URL to track view when an OBA icon is clicked.
    , iconViewTrackingUrl :: (Core.Maybe Core.Text)
      -- | Identifies the industry initiative that the icon supports. For example, AdChoices.
    , program :: (Core.Maybe Core.Text)
      -- | OBA icon resource URL. Campaign Manager only supports image and JavaScript icons. Learn more
    , resourceUrl :: (Core.Maybe Core.Text)
      -- | OBA icon size.
    , size :: (Core.Maybe Size)
      -- | OBA icon x coordinate position. Accepted values are left or right.
    , xPosition :: (Core.Maybe Core.Text)
      -- | OBA icon y coordinate position. Accepted values are top or bottom.
    , yPosition :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObaIcon' with the minimum fields required to make a request.
newObaIcon 
    ::  ObaIcon
newObaIcon =
  ObaIcon
    { iconClickThroughUrl = Core.Nothing
    , iconClickTrackingUrl = Core.Nothing
    , iconViewTrackingUrl = Core.Nothing
    , program = Core.Nothing
    , resourceUrl = Core.Nothing
    , size = Core.Nothing
    , xPosition = Core.Nothing
    , yPosition = Core.Nothing
    }

instance Core.FromJSON ObaIcon where
        parseJSON
          = Core.withObject "ObaIcon"
              (\ o ->
                 ObaIcon Core.<$>
                   (o Core..:? "iconClickThroughUrl") Core.<*>
                     (o Core..:? "iconClickTrackingUrl")
                     Core.<*> (o Core..:? "iconViewTrackingUrl")
                     Core.<*> (o Core..:? "program")
                     Core.<*> (o Core..:? "resourceUrl")
                     Core.<*> (o Core..:? "size")
                     Core.<*> (o Core..:? "xPosition")
                     Core.<*> (o Core..:? "yPosition"))

instance Core.ToJSON ObaIcon where
        toJSON ObaIcon{..}
          = Core.object
              (Core.catMaybes
                 [("iconClickThroughUrl" Core..=) Core.<$>
                    iconClickThroughUrl,
                  ("iconClickTrackingUrl" Core..=) Core.<$>
                    iconClickTrackingUrl,
                  ("iconViewTrackingUrl" Core..=) Core.<$>
                    iconViewTrackingUrl,
                  ("program" Core..=) Core.<$> program,
                  ("resourceUrl" Core..=) Core.<$> resourceUrl,
                  ("size" Core..=) Core.<$> size,
                  ("xPosition" Core..=) Core.<$> xPosition,
                  ("yPosition" Core..=) Core.<$> yPosition])


-- | Object Filter.
--
-- /See:/ 'newObjectFilter' smart constructor.
data ObjectFilter = ObjectFilter
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#objectFilter\".
      kind :: (Core.Maybe Core.Text)
      -- | Applicable when status is ASSIGNED. The user has access to objects with these object IDs.
    , objectIds :: (Core.Maybe [Core.Int64])
      -- | Status of the filter. NONE means the user has access to none of the objects. ALL means the user has access to all objects. ASSIGNED means the user has access to the objects with IDs in the objectIds list.
    , status :: (Core.Maybe ObjectFilter_Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectFilter' with the minimum fields required to make a request.
newObjectFilter 
    ::  ObjectFilter
newObjectFilter =
  ObjectFilter
    {kind = Core.Nothing, objectIds = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON ObjectFilter where
        parseJSON
          = Core.withObject "ObjectFilter"
              (\ o ->
                 ObjectFilter Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "objectIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON ObjectFilter where
        toJSON ObjectFilter{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("objectIds" Core..=) Core.. Core.fmap Core.AsText
                    Core.<$> objectIds,
                  ("status" Core..=) Core.<$> status])


-- | Identify a user by name and address.
--
-- /See:/ 'newOfflineUserAddressInfo' smart constructor.
data OfflineUserAddressInfo = OfflineUserAddressInfo
    {
      -- | City of the address.
      city :: (Core.Maybe Core.Text)
      -- | 2-letter country code in ISO-3166-1 alpha-2 of the user\'s address.
    , countryCode :: (Core.Maybe Core.Text)
      -- | First name of the user, which is hashed as SHA-256 after normalized (Lowercase all characters; Remove any extra spaces before, after, and in between).
    , hashedFirstName :: (Core.Maybe Core.Text)
      -- | Last name of the user, which is hashed as SHA-256 after normalized (lower case only and no punctuation).
    , hashedLastName :: (Core.Maybe Core.Text)
      -- | The street address of the user hashed using SHA-256 hash function after normalization (lower case only).
    , hashedStreetAddress :: (Core.Maybe Core.Text)
      -- | Postal code of the user\'s address.
    , postalCode :: (Core.Maybe Core.Text)
      -- | State code of the address.
    , state :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OfflineUserAddressInfo' with the minimum fields required to make a request.
newOfflineUserAddressInfo 
    ::  OfflineUserAddressInfo
newOfflineUserAddressInfo =
  OfflineUserAddressInfo
    { city = Core.Nothing
    , countryCode = Core.Nothing
    , hashedFirstName = Core.Nothing
    , hashedLastName = Core.Nothing
    , hashedStreetAddress = Core.Nothing
    , postalCode = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON OfflineUserAddressInfo where
        parseJSON
          = Core.withObject "OfflineUserAddressInfo"
              (\ o ->
                 OfflineUserAddressInfo Core.<$>
                   (o Core..:? "city") Core.<*>
                     (o Core..:? "countryCode")
                     Core.<*> (o Core..:? "hashedFirstName")
                     Core.<*> (o Core..:? "hashedLastName")
                     Core.<*> (o Core..:? "hashedStreetAddress")
                     Core.<*> (o Core..:? "postalCode")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON OfflineUserAddressInfo where
        toJSON OfflineUserAddressInfo{..}
          = Core.object
              (Core.catMaybes
                 [("city" Core..=) Core.<$> city,
                  ("countryCode" Core..=) Core.<$> countryCode,
                  ("hashedFirstName" Core..=) Core.<$> hashedFirstName,
                  ("hashedLastName" Core..=) Core.<$> hashedLastName,
                  ("hashedStreetAddress" Core..=) Core.<$>
                    hashedStreetAddress,
                  ("postalCode" Core..=) Core.<$> postalCode,
                  ("state" Core..=) Core.<$> state])


-- | Offset Position.
--
-- /See:/ 'newOffsetPosition' smart constructor.
data OffsetPosition = OffsetPosition
    {
      -- | Offset distance from left side of an asset or a window.
      left :: (Core.Maybe Core.Int32)
      -- | Offset distance from top side of an asset or a window.
    , top :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OffsetPosition' with the minimum fields required to make a request.
newOffsetPosition 
    ::  OffsetPosition
newOffsetPosition = OffsetPosition {left = Core.Nothing, top = Core.Nothing}

instance Core.FromJSON OffsetPosition where
        parseJSON
          = Core.withObject "OffsetPosition"
              (\ o ->
                 OffsetPosition Core.<$>
                   (o Core..:? "left") Core.<*> (o Core..:? "top"))

instance Core.ToJSON OffsetPosition where
        toJSON OffsetPosition{..}
          = Core.object
              (Core.catMaybes
                 [("left" Core..=) Core.<$> left,
                  ("top" Core..=) Core.<$> top])


-- | Omniture Integration Settings.
--
-- /See:/ 'newOmnitureSettings' smart constructor.
data OmnitureSettings = OmnitureSettings
    {
      -- | Whether placement cost data will be sent to Omniture. This property can be enabled only if omnitureIntegrationEnabled is true.
      omnitureCostDataEnabled :: (Core.Maybe Core.Bool)
      -- | Whether Omniture integration is enabled. This property can be enabled only when the \"Advanced Ad Serving\" account setting is enabled.
    , omnitureIntegrationEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OmnitureSettings' with the minimum fields required to make a request.
newOmnitureSettings 
    ::  OmnitureSettings
newOmnitureSettings =
  OmnitureSettings
    { omnitureCostDataEnabled = Core.Nothing
    , omnitureIntegrationEnabled = Core.Nothing
    }

instance Core.FromJSON OmnitureSettings where
        parseJSON
          = Core.withObject "OmnitureSettings"
              (\ o ->
                 OmnitureSettings Core.<$>
                   (o Core..:? "omnitureCostDataEnabled") Core.<*>
                     (o Core..:? "omnitureIntegrationEnabled"))

instance Core.ToJSON OmnitureSettings where
        toJSON OmnitureSettings{..}
          = Core.object
              (Core.catMaybes
                 [("omnitureCostDataEnabled" Core..=) Core.<$>
                    omnitureCostDataEnabled,
                  ("omnitureIntegrationEnabled" Core..=) Core.<$>
                    omnitureIntegrationEnabled])


-- | Contains information about an operating system that can be targeted by ads.
--
-- /See:/ 'newOperatingSystem' smart constructor.
data OperatingSystem = OperatingSystem
    {
      -- | DART ID of this operating system. This is the ID used for targeting.
      dartId :: (Core.Maybe Core.Int64)
      -- | Whether this operating system is for desktop.
    , desktop :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystem\".
    , kind :: (Core.Maybe Core.Text)
      -- | Whether this operating system is for mobile.
    , mobile :: (Core.Maybe Core.Bool)
      -- | Name of this operating system.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperatingSystem' with the minimum fields required to make a request.
newOperatingSystem 
    ::  OperatingSystem
newOperatingSystem =
  OperatingSystem
    { dartId = Core.Nothing
    , desktop = Core.Nothing
    , kind = Core.Nothing
    , mobile = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON OperatingSystem where
        parseJSON
          = Core.withObject "OperatingSystem"
              (\ o ->
                 OperatingSystem Core.<$>
                   (o Core..:? "dartId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "desktop")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "mobile")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON OperatingSystem where
        toJSON OperatingSystem{..}
          = Core.object
              (Core.catMaybes
                 [("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("desktop" Core..=) Core.<$> desktop,
                  ("kind" Core..=) Core.<$> kind,
                  ("mobile" Core..=) Core.<$> mobile,
                  ("name" Core..=) Core.<$> name])


-- | Contains information about a particular version of an operating system that can be targeted by ads.
--
-- /See:/ 'newOperatingSystemVersion' smart constructor.
data OperatingSystemVersion = OperatingSystemVersion
    {
      -- | ID of this operating system version.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemVersion\".
    , kind :: (Core.Maybe Core.Text)
      -- | Major version (leftmost number) of this operating system version.
    , majorVersion :: (Core.Maybe Core.Text)
      -- | Minor version (number after the first dot) of this operating system version.
    , minorVersion :: (Core.Maybe Core.Text)
      -- | Name of this operating system version.
    , name :: (Core.Maybe Core.Text)
      -- | Operating system of this operating system version.
    , operatingSystem :: (Core.Maybe OperatingSystem)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperatingSystemVersion' with the minimum fields required to make a request.
newOperatingSystemVersion 
    ::  OperatingSystemVersion
newOperatingSystemVersion =
  OperatingSystemVersion
    { id = Core.Nothing
    , kind = Core.Nothing
    , majorVersion = Core.Nothing
    , minorVersion = Core.Nothing
    , name = Core.Nothing
    , operatingSystem = Core.Nothing
    }

instance Core.FromJSON OperatingSystemVersion where
        parseJSON
          = Core.withObject "OperatingSystemVersion"
              (\ o ->
                 OperatingSystemVersion Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "majorVersion")
                     Core.<*> (o Core..:? "minorVersion")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "operatingSystem"))

instance Core.ToJSON OperatingSystemVersion where
        toJSON OperatingSystemVersion{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("majorVersion" Core..=) Core.<$> majorVersion,
                  ("minorVersion" Core..=) Core.<$> minorVersion,
                  ("name" Core..=) Core.<$> name,
                  ("operatingSystem" Core..=) Core.<$>
                    operatingSystem])


-- | Operating System Version List Response
--
-- /See:/ 'newOperatingSystemVersionsListResponse' smart constructor.
data OperatingSystemVersionsListResponse = OperatingSystemVersionsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemVersionsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Operating system version collection.
    , operatingSystemVersions :: (Core.Maybe [OperatingSystemVersion])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperatingSystemVersionsListResponse' with the minimum fields required to make a request.
newOperatingSystemVersionsListResponse 
    ::  OperatingSystemVersionsListResponse
newOperatingSystemVersionsListResponse =
  OperatingSystemVersionsListResponse
    {kind = Core.Nothing, operatingSystemVersions = Core.Nothing}

instance Core.FromJSON
           OperatingSystemVersionsListResponse
         where
        parseJSON
          = Core.withObject
              "OperatingSystemVersionsListResponse"
              (\ o ->
                 OperatingSystemVersionsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "operatingSystemVersions"))

instance Core.ToJSON
           OperatingSystemVersionsListResponse
         where
        toJSON OperatingSystemVersionsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("operatingSystemVersions" Core..=) Core.<$>
                    operatingSystemVersions])


-- | Operating System List Response
--
-- /See:/ 'newOperatingSystemsListResponse' smart constructor.
data OperatingSystemsListResponse = OperatingSystemsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Operating system collection.
    , operatingSystems :: (Core.Maybe [OperatingSystem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperatingSystemsListResponse' with the minimum fields required to make a request.
newOperatingSystemsListResponse 
    ::  OperatingSystemsListResponse
newOperatingSystemsListResponse =
  OperatingSystemsListResponse
    {kind = Core.Nothing, operatingSystems = Core.Nothing}

instance Core.FromJSON OperatingSystemsListResponse
         where
        parseJSON
          = Core.withObject "OperatingSystemsListResponse"
              (\ o ->
                 OperatingSystemsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "operatingSystems"))

instance Core.ToJSON OperatingSystemsListResponse
         where
        toJSON OperatingSystemsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("operatingSystems" Core..=) Core.<$>
                    operatingSystems])


-- | Creative optimization activity.
--
-- /See:/ 'newOptimizationActivity' smart constructor.
data OptimizationActivity = OptimizationActivity
    {
      -- | Floodlight activity ID of this optimization activity. This is a required field.
      floodlightActivityId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the floodlight activity. This is a read-only, auto-generated field.
    , floodlightActivityIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Weight associated with this optimization. The weight assigned will be understood in proportion to the weights assigned to the other optimization activities. Value must be greater than or equal to 1.
    , weight :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptimizationActivity' with the minimum fields required to make a request.
newOptimizationActivity 
    ::  OptimizationActivity
newOptimizationActivity =
  OptimizationActivity
    { floodlightActivityId = Core.Nothing
    , floodlightActivityIdDimensionValue = Core.Nothing
    , weight = Core.Nothing
    }

instance Core.FromJSON OptimizationActivity where
        parseJSON
          = Core.withObject "OptimizationActivity"
              (\ o ->
                 OptimizationActivity Core.<$>
                   (o Core..:? "floodlightActivityId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "floodlightActivityIdDimensionValue")
                     Core.<*> (o Core..:? "weight"))

instance Core.ToJSON OptimizationActivity where
        toJSON OptimizationActivity{..}
          = Core.object
              (Core.catMaybes
                 [("floodlightActivityId" Core..=) Core.. Core.AsText
                    Core.<$> floodlightActivityId,
                  ("floodlightActivityIdDimensionValue" Core..=)
                    Core.<$> floodlightActivityIdDimensionValue,
                  ("weight" Core..=) Core.<$> weight])


-- | Describes properties of a Planning order.
--
-- /See:/ 'newOrder' smart constructor.
data Order = Order
    {
      -- | Account ID of this order.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this order.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | IDs for users that have to approve documents created for this order.
    , approverUserProfileIds :: (Core.Maybe [Core.Int64])
      -- | Buyer invoice ID associated with this order.
    , buyerInvoiceId :: (Core.Maybe Core.Text)
      -- | Name of the buyer organization.
    , buyerOrganizationName :: (Core.Maybe Core.Text)
      -- | Comments in this order.
    , comments :: (Core.Maybe Core.Text)
      -- | Contacts for this order.
    , contacts :: (Core.Maybe [OrderContact])
      -- | ID of this order. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#order\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this order.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Name of this order.
    , name :: (Core.Maybe Core.Text)
      -- | Notes of this order.
    , notes :: (Core.Maybe Core.Text)
      -- | ID of the terms and conditions template used in this order.
    , planningTermId :: (Core.Maybe Core.Int64)
      -- | Project ID of this order.
    , projectId :: (Core.Maybe Core.Int64)
      -- | Seller order ID associated with this order.
    , sellerOrderId :: (Core.Maybe Core.Text)
      -- | Name of the seller organization.
    , sellerOrganizationName :: (Core.Maybe Core.Text)
      -- | Site IDs this order is associated with.
    , siteId :: (Core.Maybe [Core.Int64])
      -- | Free-form site names this order is associated with.
    , siteNames :: (Core.Maybe [Core.Text])
      -- | Subaccount ID of this order.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Terms and conditions of this order.
    , termsAndConditions :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
newOrder 
    ::  Order
newOrder =
  Order
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , approverUserProfileIds = Core.Nothing
    , buyerInvoiceId = Core.Nothing
    , buyerOrganizationName = Core.Nothing
    , comments = Core.Nothing
    , contacts = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , planningTermId = Core.Nothing
    , projectId = Core.Nothing
    , sellerOrderId = Core.Nothing
    , sellerOrganizationName = Core.Nothing
    , siteId = Core.Nothing
    , siteNames = Core.Nothing
    , subaccountId = Core.Nothing
    , termsAndConditions = Core.Nothing
    }

instance Core.FromJSON Order where
        parseJSON
          = Core.withObject "Order"
              (\ o ->
                 Order Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "approverUserProfileIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "buyerInvoiceId")
                     Core.<*> (o Core..:? "buyerOrganizationName")
                     Core.<*> (o Core..:? "comments")
                     Core.<*> (o Core..:? "contacts")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*>
                     (o Core..:? "planningTermId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "projectId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "sellerOrderId")
                     Core.<*> (o Core..:? "sellerOrganizationName")
                     Core.<*>
                     (o Core..:? "siteId" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "siteNames")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "termsAndConditions"))

instance Core.ToJSON Order where
        toJSON Order{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("approverUserProfileIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> approverUserProfileIds,
                  ("buyerInvoiceId" Core..=) Core.<$> buyerInvoiceId,
                  ("buyerOrganizationName" Core..=) Core.<$>
                    buyerOrganizationName,
                  ("comments" Core..=) Core.<$> comments,
                  ("contacts" Core..=) Core.<$> contacts,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("planningTermId" Core..=) Core.. Core.AsText
                    Core.<$> planningTermId,
                  ("projectId" Core..=) Core.. Core.AsText Core.<$>
                    projectId,
                  ("sellerOrderId" Core..=) Core.<$> sellerOrderId,
                  ("sellerOrganizationName" Core..=) Core.<$>
                    sellerOrganizationName,
                  ("siteId" Core..=) Core.. Core.fmap Core.AsText
                    Core.<$> siteId,
                  ("siteNames" Core..=) Core.<$> siteNames,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("termsAndConditions" Core..=) Core.<$>
                    termsAndConditions])


-- | Contact of an order.
--
-- /See:/ 'newOrderContact' smart constructor.
data OrderContact = OrderContact
    {
      -- | Free-form information about this contact. It could be any information related to this contact in addition to type, title, name, and signature user profile ID.
      contactInfo :: (Core.Maybe Core.Text)
      -- | Name of this contact.
    , contactName :: (Core.Maybe Core.Text)
      -- | Title of this contact.
    , contactTitle :: (Core.Maybe Core.Text)
      -- | Type of this contact.
    , contactType :: (Core.Maybe OrderContact_ContactType)
      -- | ID of the user profile containing the signature that will be embedded into order documents.
    , signatureUserProfileId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderContact' with the minimum fields required to make a request.
newOrderContact 
    ::  OrderContact
newOrderContact =
  OrderContact
    { contactInfo = Core.Nothing
    , contactName = Core.Nothing
    , contactTitle = Core.Nothing
    , contactType = Core.Nothing
    , signatureUserProfileId = Core.Nothing
    }

instance Core.FromJSON OrderContact where
        parseJSON
          = Core.withObject "OrderContact"
              (\ o ->
                 OrderContact Core.<$>
                   (o Core..:? "contactInfo") Core.<*>
                     (o Core..:? "contactName")
                     Core.<*> (o Core..:? "contactTitle")
                     Core.<*> (o Core..:? "contactType")
                     Core.<*>
                     (o Core..:? "signatureUserProfileId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON OrderContact where
        toJSON OrderContact{..}
          = Core.object
              (Core.catMaybes
                 [("contactInfo" Core..=) Core.<$> contactInfo,
                  ("contactName" Core..=) Core.<$> contactName,
                  ("contactTitle" Core..=) Core.<$> contactTitle,
                  ("contactType" Core..=) Core.<$> contactType,
                  ("signatureUserProfileId" Core..=) Core.. Core.AsText
                    Core.<$> signatureUserProfileId])


-- | Order List Response
--
-- /See:/ 'newOrdersListResponse' smart constructor.
data OrdersListResponse = OrdersListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#ordersListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Order collection.
    , orders :: (Core.Maybe [Order])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
newOrdersListResponse 
    ::  OrdersListResponse
newOrdersListResponse =
  OrdersListResponse
    {kind = Core.Nothing, nextPageToken = Core.Nothing, orders = Core.Nothing}

instance Core.FromJSON OrdersListResponse where
        parseJSON
          = Core.withObject "OrdersListResponse"
              (\ o ->
                 OrdersListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "orders"))

instance Core.ToJSON OrdersListResponse where
        toJSON OrdersListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("orders" Core..=) Core.<$> orders])


-- | Represents fields that are compatible to be selected for a report of type \"PATH/TO/CONVERSION\".
--
-- /See:/ 'newPathToConversionReportCompatibleFields' smart constructor.
data PathToConversionReportCompatibleFields = PathToConversionReportCompatibleFields
    {
      -- | Conversion dimensions which are compatible to be selected in the \"conversionDimensions\" section of the report.
      conversionDimensions :: (Core.Maybe [Dimension])
      -- | Custom floodlight variables which are compatible to be selected in the \"customFloodlightVariables\" section of the report.
    , customFloodlightVariables :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#pathToConversionReportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
      -- | Per-interaction dimensions which are compatible to be selected in the \"perInteractionDimensions\" section of the report.
    , perInteractionDimensions :: (Core.Maybe [Dimension])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PathToConversionReportCompatibleFields' with the minimum fields required to make a request.
newPathToConversionReportCompatibleFields 
    ::  PathToConversionReportCompatibleFields
newPathToConversionReportCompatibleFields =
  PathToConversionReportCompatibleFields
    { conversionDimensions = Core.Nothing
    , customFloodlightVariables = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    , perInteractionDimensions = Core.Nothing
    }

instance Core.FromJSON
           PathToConversionReportCompatibleFields
         where
        parseJSON
          = Core.withObject
              "PathToConversionReportCompatibleFields"
              (\ o ->
                 PathToConversionReportCompatibleFields Core.<$>
                   (o Core..:? "conversionDimensions") Core.<*>
                     (o Core..:? "customFloodlightVariables")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "perInteractionDimensions"))

instance Core.ToJSON
           PathToConversionReportCompatibleFields
         where
        toJSON PathToConversionReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("conversionDimensions" Core..=) Core.<$>
                    conversionDimensions,
                  ("customFloodlightVariables" Core..=) Core.<$>
                    customFloodlightVariables,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("perInteractionDimensions" Core..=) Core.<$>
                    perInteractionDimensions])


-- | Contains properties of a placement.
--
-- /See:/ 'newPlacement' smart constructor.
data Placement = Placement
    {
      -- | Account ID of this placement. This field can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this placement is active, inactive, archived or permanently archived.
    , activeStatus :: (Core.Maybe Placement_ActiveStatus)
      -- | Whether this placement opts out of ad blocking. When true, ad blocking is disabled for this placement. When false, the campaign and site settings take effect.
    , adBlockingOptOut :: (Core.Maybe Core.Bool)
      -- | Optional. Ad serving platform ID to identify the ad serving platform used by the placement. Measurement partners can use this field to add ad-server specific macros. Possible values are: * @1@, Adelphic * @2@, Adform * @3@, Adobe * @4@, Amobee * @5@, Basis (Centro) * @6@, Beeswax * @7@, Amazon * @8@, DV360 (DBM) * @9@, Innovid * @10@, MediaMath * @11@, Roku OneView DSP * @12@, TabMo Hawk * @13@, The Trade Desk * @14@, Xandr Invest DSP * @15@, Yahoo DSP * @16@, Zeta Global * @17@, Scaleout * @18@, Bidtellect * @19@, Unicorn * @20@, Teads * @21@, Quantcast * @22@, Cognitiv
    , adServingPlatformId :: (Core.Maybe Core.Int64)
      -- | Additional sizes associated with this placement. When inserting or updating a placement, only the size ID field is used.
    , additionalSizes :: (Core.Maybe [Size])
      -- | Advertiser ID of this placement. This field can be left blank.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Campaign ID of this placement. This field is a required field on insertion.
    , campaignId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
    , campaignIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Comments for this placement.
    , comment :: (Core.Maybe Core.Text)
      -- | Placement compatibility. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering on desktop, on mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are no longer allowed for new placement insertions. Instead, use DISPLAY or DISPLAY/INTERSTITIAL. IN/STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. This field is required on insertion.
    , compatibility :: (Core.Maybe Placement_Compatibility)
      -- | ID of the content category assigned to this placement.
    , contentCategoryId :: (Core.Maybe Core.Int64)
      -- | Optional. Conversion domain overrides for a placement.
    , conversionDomainOverride :: (Core.Maybe PlacementConversionDomainOverride)
      -- | Information about the creation of this placement. This is a read-only field.
    , createInfo :: (Core.Maybe LastModifiedInfo)
      -- | Directory site ID of this placement. On insert, you must set either this field or the siteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.
    , directorySiteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
    , directorySiteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | External ID for this placement.
    , externalId :: (Core.Maybe Core.Text)
      -- | ID of this placement. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this placement. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Key name of this placement. This is a read-only, auto-generated field.
    , keyName :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placement\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this placement. This is a read-only field.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Lookback window settings for this placement.
    , lookbackConfiguration :: (Core.Maybe LookbackConfiguration)
      -- | Name of this placement.This is a required field and must be less than or equal to 512 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Measurement partner provided settings for a wrapped placement.
    , partnerWrappingData :: (Core.Maybe MeasurementPartnerWrappingData)
      -- | Whether payment was approved for this placement. This is a read-only field relevant only to publisher-paid placements.
    , paymentApproved :: (Core.Maybe Core.Bool)
      -- | Payment source for this placement. This is a required field that is read-only after insertion.
    , paymentSource :: (Core.Maybe Placement_PaymentSource)
      -- | ID of this placement\'s group, if applicable.
    , placementGroupId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the placement group. This is a read-only, auto-generated field.
    , placementGroupIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | ID of the placement strategy assigned to this placement.
    , placementStrategyId :: (Core.Maybe Core.Int64)
      -- | Pricing schedule of this placement. This field is required on insertion, specifically subfields startDate, endDate and pricingType.
    , pricingSchedule :: (Core.Maybe PricingSchedule)
      -- | Whether this placement is the primary placement of a roadblock (placement group). You cannot change this field from true to false. Setting this field to true will automatically set the primary field on the original primary placement of the roadblock to false, and it will automatically set the roadblock\'s primaryPlacementId field to the ID of this placement.
    , primary :: (Core.Maybe Core.Bool)
      -- | Information about the last publisher update. This is a read-only field.
    , publisherUpdateInfo :: (Core.Maybe LastModifiedInfo)
      -- | Site ID associated with this placement. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.
    , siteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the site. This is a read-only, auto-generated field.
    , siteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Optional. Whether the ads in the placement are served by another platform and CM is only used for tracking or they are served by CM. A false value indicates the ad is served by CM.
    , siteServed :: (Core.Maybe Core.Bool)
      -- | Size associated with this placement. When inserting or updating a placement, only the size ID field is used. This field is required on insertion.
    , size :: (Core.Maybe Size)
      -- | Whether creatives assigned to this placement must be SSL-compliant.
    , sslRequired :: (Core.Maybe Core.Bool)
      -- | Third-party placement status.
    , status :: (Core.Maybe Placement_Status)
      -- | Subaccount ID of this placement. This field can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Tag formats to generate for this placement. This field is required on insertion. Acceptable values are: - \"PLACEMENT/TAG/STANDARD\" - \"PLACEMENT/TAG/IFRAME/JAVASCRIPT\" - \"PLACEMENT/TAG/IFRAME/ILAYER\" - \"PLACEMENT/TAG/INTERNAL/REDIRECT\" - \"PLACEMENT/TAG/JAVASCRIPT\" - \"PLACEMENT/TAG/INTERSTITIAL/IFRAME/JAVASCRIPT\" - \"PLACEMENT/TAG/INTERSTITIAL/INTERNAL/REDIRECT\" - \"PLACEMENT/TAG/INTERSTITIAL/JAVASCRIPT\" - \"PLACEMENT/TAG/CLICK/COMMANDS\" - \"PLACEMENT/TAG/INSTREAM/VIDEO/PREFETCH\" - \"PLACEMENT/TAG/INSTREAM/VIDEO/PREFETCH/VAST/3\" - \"PLACEMENT/TAG/INSTREAM/VIDEO/PREFETCH/VAST/4\" - \"PLACEMENT/TAG/TRACKING\" - \"PLACEMENT/TAG/TRACKING/IFRAME\" - \"PLACEMENT/TAG/TRACKING_JAVASCRIPT\"
    , tagFormats :: (Core.Maybe [Placement_TagFormatsItem])
      -- | Tag settings for this placement.
    , tagSetting :: (Core.Maybe TagSetting)
      -- | Whether Verification and ActiveView are disabled for in-stream video creatives for this placement. The same setting videoActiveViewOptOut exists on the site level -- the opt out occurs if either of these settings are true. These settings are distinct from DirectorySites.settings.activeViewOptOut or Sites.siteSettings.activeViewOptOut which only apply to display ads. However, Accounts.activeViewOptOut opts out both video traffic, as well as display ads, from Verification and ActiveView.
    , videoActiveViewOptOut :: (Core.Maybe Core.Bool)
      -- | A collection of settings which affect video creatives served through this placement. Applicable to placements with IN/STREAM/VIDEO compatibility.
    , videoSettings :: (Core.Maybe VideoSettings)
      -- | VPAID adapter setting for this placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to this placement. /Note:/ Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.
    , vpaidAdapterChoice :: (Core.Maybe Placement_VpaidAdapterChoice)
      -- | Whether this placement opts out of tag wrapping.
    , wrappingOptOut :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Placement' with the minimum fields required to make a request.
newPlacement 
    ::  Placement
newPlacement =
  Placement
    { accountId = Core.Nothing
    , activeStatus = Core.Nothing
    , adBlockingOptOut = Core.Nothing
    , adServingPlatformId = Core.Nothing
    , additionalSizes = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , campaignId = Core.Nothing
    , campaignIdDimensionValue = Core.Nothing
    , comment = Core.Nothing
    , compatibility = Core.Nothing
    , contentCategoryId = Core.Nothing
    , conversionDomainOverride = Core.Nothing
    , createInfo = Core.Nothing
    , directorySiteId = Core.Nothing
    , directorySiteIdDimensionValue = Core.Nothing
    , externalId = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , keyName = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , lookbackConfiguration = Core.Nothing
    , name = Core.Nothing
    , partnerWrappingData = Core.Nothing
    , paymentApproved = Core.Nothing
    , paymentSource = Core.Nothing
    , placementGroupId = Core.Nothing
    , placementGroupIdDimensionValue = Core.Nothing
    , placementStrategyId = Core.Nothing
    , pricingSchedule = Core.Nothing
    , primary = Core.Nothing
    , publisherUpdateInfo = Core.Nothing
    , siteId = Core.Nothing
    , siteIdDimensionValue = Core.Nothing
    , siteServed = Core.Nothing
    , size = Core.Nothing
    , sslRequired = Core.Nothing
    , status = Core.Nothing
    , subaccountId = Core.Nothing
    , tagFormats = Core.Nothing
    , tagSetting = Core.Nothing
    , videoActiveViewOptOut = Core.Nothing
    , videoSettings = Core.Nothing
    , vpaidAdapterChoice = Core.Nothing
    , wrappingOptOut = Core.Nothing
    }

instance Core.FromJSON Placement where
        parseJSON
          = Core.withObject "Placement"
              (\ o ->
                 Placement Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "activeStatus")
                     Core.<*> (o Core..:? "adBlockingOptOut")
                     Core.<*>
                     (o Core..:? "adServingPlatformId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "additionalSizes")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*>
                     (o Core..:? "campaignId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "campaignIdDimensionValue")
                     Core.<*> (o Core..:? "comment")
                     Core.<*> (o Core..:? "compatibility")
                     Core.<*>
                     (o Core..:? "contentCategoryId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "conversionDomainOverride")
                     Core.<*> (o Core..:? "createInfo")
                     Core.<*>
                     (o Core..:? "directorySiteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "directorySiteIdDimensionValue")
                     Core.<*> (o Core..:? "externalId")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "keyName")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "lookbackConfiguration")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "partnerWrappingData")
                     Core.<*> (o Core..:? "paymentApproved")
                     Core.<*> (o Core..:? "paymentSource")
                     Core.<*>
                     (o Core..:? "placementGroupId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "placementGroupIdDimensionValue")
                     Core.<*>
                     (o Core..:? "placementStrategyId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pricingSchedule")
                     Core.<*> (o Core..:? "primary")
                     Core.<*> (o Core..:? "publisherUpdateInfo")
                     Core.<*>
                     (o Core..:? "siteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "siteIdDimensionValue")
                     Core.<*> (o Core..:? "siteServed")
                     Core.<*> (o Core..:? "size")
                     Core.<*> (o Core..:? "sslRequired")
                     Core.<*> (o Core..:? "status")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagFormats")
                     Core.<*> (o Core..:? "tagSetting")
                     Core.<*> (o Core..:? "videoActiveViewOptOut")
                     Core.<*> (o Core..:? "videoSettings")
                     Core.<*> (o Core..:? "vpaidAdapterChoice")
                     Core.<*> (o Core..:? "wrappingOptOut"))

instance Core.ToJSON Placement where
        toJSON Placement{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("activeStatus" Core..=) Core.<$> activeStatus,
                  ("adBlockingOptOut" Core..=) Core.<$>
                    adBlockingOptOut,
                  ("adServingPlatformId" Core..=) Core.. Core.AsText
                    Core.<$> adServingPlatformId,
                  ("additionalSizes" Core..=) Core.<$> additionalSizes,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("campaignId" Core..=) Core.. Core.AsText Core.<$>
                    campaignId,
                  ("campaignIdDimensionValue" Core..=) Core.<$>
                    campaignIdDimensionValue,
                  ("comment" Core..=) Core.<$> comment,
                  ("compatibility" Core..=) Core.<$> compatibility,
                  ("contentCategoryId" Core..=) Core.. Core.AsText
                    Core.<$> contentCategoryId,
                  ("conversionDomainOverride" Core..=) Core.<$>
                    conversionDomainOverride,
                  ("createInfo" Core..=) Core.<$> createInfo,
                  ("directorySiteId" Core..=) Core.. Core.AsText
                    Core.<$> directorySiteId,
                  ("directorySiteIdDimensionValue" Core..=) Core.<$>
                    directorySiteIdDimensionValue,
                  ("externalId" Core..=) Core.<$> externalId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("keyName" Core..=) Core.<$> keyName,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("lookbackConfiguration" Core..=) Core.<$>
                    lookbackConfiguration,
                  ("name" Core..=) Core.<$> name,
                  ("partnerWrappingData" Core..=) Core.<$>
                    partnerWrappingData,
                  ("paymentApproved" Core..=) Core.<$> paymentApproved,
                  ("paymentSource" Core..=) Core.<$> paymentSource,
                  ("placementGroupId" Core..=) Core.. Core.AsText
                    Core.<$> placementGroupId,
                  ("placementGroupIdDimensionValue" Core..=) Core.<$>
                    placementGroupIdDimensionValue,
                  ("placementStrategyId" Core..=) Core.. Core.AsText
                    Core.<$> placementStrategyId,
                  ("pricingSchedule" Core..=) Core.<$> pricingSchedule,
                  ("primary" Core..=) Core.<$> primary,
                  ("publisherUpdateInfo" Core..=) Core.<$>
                    publisherUpdateInfo,
                  ("siteId" Core..=) Core.. Core.AsText Core.<$>
                    siteId,
                  ("siteIdDimensionValue" Core..=) Core.<$>
                    siteIdDimensionValue,
                  ("siteServed" Core..=) Core.<$> siteServed,
                  ("size" Core..=) Core.<$> size,
                  ("sslRequired" Core..=) Core.<$> sslRequired,
                  ("status" Core..=) Core.<$> status,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("tagFormats" Core..=) Core.<$> tagFormats,
                  ("tagSetting" Core..=) Core.<$> tagSetting,
                  ("videoActiveViewOptOut" Core..=) Core.<$>
                    videoActiveViewOptOut,
                  ("videoSettings" Core..=) Core.<$> videoSettings,
                  ("vpaidAdapterChoice" Core..=) Core.<$>
                    vpaidAdapterChoice,
                  ("wrappingOptOut" Core..=) Core.<$> wrappingOptOut])


-- | Placement Assignment.
--
-- /See:/ 'newPlacementAssignment' smart constructor.
data PlacementAssignment = PlacementAssignment
    {
      -- | Whether this placement assignment is active. When true, the placement will be included in the ad\'s rotation.
      active :: (Core.Maybe Core.Bool)
      -- | ID of the placement to be assigned. This is a required field.
    , placementId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the placement. This is a read-only, auto-generated field.
    , placementIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Whether the placement to be assigned requires SSL. This is a read-only field that is auto-generated when the ad is inserted or updated.
    , sslRequired :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementAssignment' with the minimum fields required to make a request.
newPlacementAssignment 
    ::  PlacementAssignment
newPlacementAssignment =
  PlacementAssignment
    { active = Core.Nothing
    , placementId = Core.Nothing
    , placementIdDimensionValue = Core.Nothing
    , sslRequired = Core.Nothing
    }

instance Core.FromJSON PlacementAssignment where
        parseJSON
          = Core.withObject "PlacementAssignment"
              (\ o ->
                 PlacementAssignment Core.<$>
                   (o Core..:? "active") Core.<*>
                     (o Core..:? "placementId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "placementIdDimensionValue")
                     Core.<*> (o Core..:? "sslRequired"))

instance Core.ToJSON PlacementAssignment where
        toJSON PlacementAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("active" Core..=) Core.<$> active,
                  ("placementId" Core..=) Core.. Core.AsText Core.<$>
                    placementId,
                  ("placementIdDimensionValue" Core..=) Core.<$>
                    placementIdDimensionValue,
                  ("sslRequired" Core..=) Core.<$> sslRequired])


--
-- /See:/ 'newPlacementConversionDomainOverride' smart constructor.
newtype PlacementConversionDomainOverride = PlacementConversionDomainOverride
    {
      -- | 
      conversionDomains :: (Core.Maybe [PlacementSingleConversionDomain])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementConversionDomainOverride' with the minimum fields required to make a request.
newPlacementConversionDomainOverride 
    ::  PlacementConversionDomainOverride
newPlacementConversionDomainOverride =
  PlacementConversionDomainOverride {conversionDomains = Core.Nothing}

instance Core.FromJSON
           PlacementConversionDomainOverride
         where
        parseJSON
          = Core.withObject "PlacementConversionDomainOverride"
              (\ o ->
                 PlacementConversionDomainOverride Core.<$>
                   (o Core..:? "conversionDomains"))

instance Core.ToJSON
           PlacementConversionDomainOverride
         where
        toJSON PlacementConversionDomainOverride{..}
          = Core.object
              (Core.catMaybes
                 [("conversionDomains" Core..=) Core.<$>
                    conversionDomains])


-- | Contains properties of a package or roadblock.
--
-- /See:/ 'newPlacementGroup' smart constructor.
data PlacementGroup = PlacementGroup
    {
      -- | Account ID of this placement group. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this placement group is active, inactive, archived or permanently archived.
    , activeStatus :: (Core.Maybe PlacementGroup_ActiveStatus)
      -- | Advertiser ID of this placement group. This is a required field on insertion.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Campaign ID of this placement group. This field is required on insertion.
    , campaignId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
    , campaignIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | IDs of placements which are assigned to this placement group. This is a read-only, auto-generated field.
    , childPlacementIds :: (Core.Maybe [Core.Int64])
      -- | Comments for this placement group.
    , comment :: (Core.Maybe Core.Text)
      -- | ID of the content category assigned to this placement group.
    , contentCategoryId :: (Core.Maybe Core.Int64)
      -- | Information about the creation of this placement group. This is a read-only field.
    , createInfo :: (Core.Maybe LastModifiedInfo)
      -- | Directory site ID associated with this placement group. On insert, you must set either this field or the site_id field to specify the site associated with this placement group. This is a required field that is read-only after insertion.
    , directorySiteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
    , directorySiteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | External ID for this placement.
    , externalId :: (Core.Maybe Core.Text)
      -- | ID of this placement group. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this placement group. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this placement group. This is a read-only field.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Name of this placement group. This is a required field and must be less than 256 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Type of this placement group. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting. This field is required on insertion.
    , placementGroupType :: (Core.Maybe PlacementGroup_PlacementGroupType)
      -- | ID of the placement strategy assigned to this placement group.
    , placementStrategyId :: (Core.Maybe Core.Int64)
      -- | Pricing schedule of this placement group. This field is required on insertion.
    , pricingSchedule :: (Core.Maybe PricingSchedule)
      -- | ID of the primary placement, used to calculate the media cost of a roadblock (placement group). Modifying this field will automatically modify the primary field on all affected roadblock child placements.
    , primaryPlacementId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the primary placement. This is a read-only, auto-generated field.
    , primaryPlacementIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Site ID associated with this placement group. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement group. This is a required field that is read-only after insertion.
    , siteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the site. This is a read-only, auto-generated field.
    , siteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Subaccount ID of this placement group. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementGroup' with the minimum fields required to make a request.
newPlacementGroup 
    ::  PlacementGroup
newPlacementGroup =
  PlacementGroup
    { accountId = Core.Nothing
    , activeStatus = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , campaignId = Core.Nothing
    , campaignIdDimensionValue = Core.Nothing
    , childPlacementIds = Core.Nothing
    , comment = Core.Nothing
    , contentCategoryId = Core.Nothing
    , createInfo = Core.Nothing
    , directorySiteId = Core.Nothing
    , directorySiteIdDimensionValue = Core.Nothing
    , externalId = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , name = Core.Nothing
    , placementGroupType = Core.Nothing
    , placementStrategyId = Core.Nothing
    , pricingSchedule = Core.Nothing
    , primaryPlacementId = Core.Nothing
    , primaryPlacementIdDimensionValue = Core.Nothing
    , siteId = Core.Nothing
    , siteIdDimensionValue = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON PlacementGroup where
        parseJSON
          = Core.withObject "PlacementGroup"
              (\ o ->
                 PlacementGroup Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "activeStatus")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*>
                     (o Core..:? "campaignId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "campaignIdDimensionValue")
                     Core.<*>
                     (o Core..:? "childPlacementIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "comment")
                     Core.<*>
                     (o Core..:? "contentCategoryId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "createInfo")
                     Core.<*>
                     (o Core..:? "directorySiteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "directorySiteIdDimensionValue")
                     Core.<*> (o Core..:? "externalId")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "placementGroupType")
                     Core.<*>
                     (o Core..:? "placementStrategyId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pricingSchedule")
                     Core.<*>
                     (o Core..:? "primaryPlacementId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "primaryPlacementIdDimensionValue")
                     Core.<*>
                     (o Core..:? "siteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "siteIdDimensionValue")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON PlacementGroup where
        toJSON PlacementGroup{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("activeStatus" Core..=) Core.<$> activeStatus,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("campaignId" Core..=) Core.. Core.AsText Core.<$>
                    campaignId,
                  ("campaignIdDimensionValue" Core..=) Core.<$>
                    campaignIdDimensionValue,
                  ("childPlacementIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> childPlacementIds,
                  ("comment" Core..=) Core.<$> comment,
                  ("contentCategoryId" Core..=) Core.. Core.AsText
                    Core.<$> contentCategoryId,
                  ("createInfo" Core..=) Core.<$> createInfo,
                  ("directorySiteId" Core..=) Core.. Core.AsText
                    Core.<$> directorySiteId,
                  ("directorySiteIdDimensionValue" Core..=) Core.<$>
                    directorySiteIdDimensionValue,
                  ("externalId" Core..=) Core.<$> externalId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("name" Core..=) Core.<$> name,
                  ("placementGroupType" Core..=) Core.<$>
                    placementGroupType,
                  ("placementStrategyId" Core..=) Core.. Core.AsText
                    Core.<$> placementStrategyId,
                  ("pricingSchedule" Core..=) Core.<$> pricingSchedule,
                  ("primaryPlacementId" Core..=) Core.. Core.AsText
                    Core.<$> primaryPlacementId,
                  ("primaryPlacementIdDimensionValue" Core..=) Core.<$>
                    primaryPlacementIdDimensionValue,
                  ("siteId" Core..=) Core.. Core.AsText Core.<$>
                    siteId,
                  ("siteIdDimensionValue" Core..=) Core.<$>
                    siteIdDimensionValue,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Placement Group List Response
--
-- /See:/ 'newPlacementGroupsListResponse' smart constructor.
data PlacementGroupsListResponse = PlacementGroupsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementGroupsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Placement group collection.
    , placementGroups :: (Core.Maybe [PlacementGroup])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementGroupsListResponse' with the minimum fields required to make a request.
newPlacementGroupsListResponse 
    ::  PlacementGroupsListResponse
newPlacementGroupsListResponse =
  PlacementGroupsListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , placementGroups = Core.Nothing
    }

instance Core.FromJSON PlacementGroupsListResponse
         where
        parseJSON
          = Core.withObject "PlacementGroupsListResponse"
              (\ o ->
                 PlacementGroupsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "placementGroups"))

instance Core.ToJSON PlacementGroupsListResponse
         where
        toJSON PlacementGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("placementGroups" Core..=) Core.<$>
                    placementGroups])


--
-- /See:/ 'newPlacementSingleConversionDomain' smart constructor.
data PlacementSingleConversionDomain = PlacementSingleConversionDomain
    {
      -- | 
      conversionDomainId :: (Core.Maybe Core.Int64)
      -- | 
    , conversionDomainValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementSingleConversionDomain' with the minimum fields required to make a request.
newPlacementSingleConversionDomain 
    ::  PlacementSingleConversionDomain
newPlacementSingleConversionDomain =
  PlacementSingleConversionDomain
    {conversionDomainId = Core.Nothing, conversionDomainValue = Core.Nothing}

instance Core.FromJSON
           PlacementSingleConversionDomain
         where
        parseJSON
          = Core.withObject "PlacementSingleConversionDomain"
              (\ o ->
                 PlacementSingleConversionDomain Core.<$>
                   (o Core..:? "conversionDomainId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "conversionDomainValue"))

instance Core.ToJSON PlacementSingleConversionDomain
         where
        toJSON PlacementSingleConversionDomain{..}
          = Core.object
              (Core.catMaybes
                 [("conversionDomainId" Core..=) Core.. Core.AsText
                    Core.<$> conversionDomainId,
                  ("conversionDomainValue" Core..=) Core.<$>
                    conversionDomainValue])


-- | Placement Strategy List Response
--
-- /See:/ 'newPlacementStrategiesListResponse' smart constructor.
data PlacementStrategiesListResponse = PlacementStrategiesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementStrategiesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Placement strategy collection.
    , placementStrategies :: (Core.Maybe [PlacementStrategy])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementStrategiesListResponse' with the minimum fields required to make a request.
newPlacementStrategiesListResponse 
    ::  PlacementStrategiesListResponse
newPlacementStrategiesListResponse =
  PlacementStrategiesListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , placementStrategies = Core.Nothing
    }

instance Core.FromJSON
           PlacementStrategiesListResponse
         where
        parseJSON
          = Core.withObject "PlacementStrategiesListResponse"
              (\ o ->
                 PlacementStrategiesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "placementStrategies"))

instance Core.ToJSON PlacementStrategiesListResponse
         where
        toJSON PlacementStrategiesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("placementStrategies" Core..=) Core.<$>
                    placementStrategies])


-- | Contains properties of a placement strategy.
--
-- /See:/ 'newPlacementStrategy' smart constructor.
data PlacementStrategy = PlacementStrategy
    {
      -- | Account ID of this placement strategy.This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | ID of this placement strategy. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementStrategy\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this placement strategy. This is a required field. It must be less than 256 characters long and unique among placement strategies of the same account.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementStrategy' with the minimum fields required to make a request.
newPlacementStrategy 
    ::  PlacementStrategy
newPlacementStrategy =
  PlacementStrategy
    { accountId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON PlacementStrategy where
        parseJSON
          = Core.withObject "PlacementStrategy"
              (\ o ->
                 PlacementStrategy Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON PlacementStrategy where
        toJSON PlacementStrategy{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Placement Tag
--
-- /See:/ 'newPlacementTag' smart constructor.
data PlacementTag = PlacementTag
    {
      -- | Placement ID
      placementId :: (Core.Maybe Core.Int64)
      -- | Tags generated for this placement.
    , tagDatas :: (Core.Maybe [TagData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementTag' with the minimum fields required to make a request.
newPlacementTag 
    ::  PlacementTag
newPlacementTag =
  PlacementTag {placementId = Core.Nothing, tagDatas = Core.Nothing}

instance Core.FromJSON PlacementTag where
        parseJSON
          = Core.withObject "PlacementTag"
              (\ o ->
                 PlacementTag Core.<$>
                   (o Core..:? "placementId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagDatas"))

instance Core.ToJSON PlacementTag where
        toJSON PlacementTag{..}
          = Core.object
              (Core.catMaybes
                 [("placementId" Core..=) Core.. Core.AsText Core.<$>
                    placementId,
                  ("tagDatas" Core..=) Core.<$> tagDatas])


-- | Placement GenerateTags Response
--
-- /See:/ 'newPlacementsGenerateTagsResponse' smart constructor.
data PlacementsGenerateTagsResponse = PlacementsGenerateTagsResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementsGenerateTagsResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Set of generated tags for the specified placements.
    , placementTags :: (Core.Maybe [PlacementTag])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementsGenerateTagsResponse' with the minimum fields required to make a request.
newPlacementsGenerateTagsResponse 
    ::  PlacementsGenerateTagsResponse
newPlacementsGenerateTagsResponse =
  PlacementsGenerateTagsResponse
    {kind = Core.Nothing, placementTags = Core.Nothing}

instance Core.FromJSON PlacementsGenerateTagsResponse
         where
        parseJSON
          = Core.withObject "PlacementsGenerateTagsResponse"
              (\ o ->
                 PlacementsGenerateTagsResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "placementTags"))

instance Core.ToJSON PlacementsGenerateTagsResponse
         where
        toJSON PlacementsGenerateTagsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("placementTags" Core..=) Core.<$> placementTags])


-- | Placement List Response
--
-- /See:/ 'newPlacementsListResponse' smart constructor.
data PlacementsListResponse = PlacementsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Placement collection.
    , placements :: (Core.Maybe [Placement])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementsListResponse' with the minimum fields required to make a request.
newPlacementsListResponse 
    ::  PlacementsListResponse
newPlacementsListResponse =
  PlacementsListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , placements = Core.Nothing
    }

instance Core.FromJSON PlacementsListResponse where
        parseJSON
          = Core.withObject "PlacementsListResponse"
              (\ o ->
                 PlacementsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "placements"))

instance Core.ToJSON PlacementsListResponse where
        toJSON PlacementsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("placements" Core..=) Core.<$> placements])


-- | Contains information about a platform type that can be targeted by ads.
--
-- /See:/ 'newPlatformType' smart constructor.
data PlatformType = PlatformType
    {
      -- | ID of this platform type.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#platformType\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this platform type.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlatformType' with the minimum fields required to make a request.
newPlatformType 
    ::  PlatformType
newPlatformType =
  PlatformType {id = Core.Nothing, kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON PlatformType where
        parseJSON
          = Core.withObject "PlatformType"
              (\ o ->
                 PlatformType Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON PlatformType where
        toJSON PlatformType{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Platform Type List Response
--
-- /See:/ 'newPlatformTypesListResponse' smart constructor.
data PlatformTypesListResponse = PlatformTypesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#platformTypesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Platform type collection.
    , platformTypes :: (Core.Maybe [PlatformType])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlatformTypesListResponse' with the minimum fields required to make a request.
newPlatformTypesListResponse 
    ::  PlatformTypesListResponse
newPlatformTypesListResponse =
  PlatformTypesListResponse {kind = Core.Nothing, platformTypes = Core.Nothing}

instance Core.FromJSON PlatformTypesListResponse
         where
        parseJSON
          = Core.withObject "PlatformTypesListResponse"
              (\ o ->
                 PlatformTypesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "platformTypes"))

instance Core.ToJSON PlatformTypesListResponse where
        toJSON PlatformTypesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("platformTypes" Core..=) Core.<$> platformTypes])


-- | Popup Window Properties.
--
-- /See:/ 'newPopupWindowProperties' smart constructor.
data PopupWindowProperties = PopupWindowProperties
    {
      -- | Popup dimension for a creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA and all VPAID
      dimension :: (Core.Maybe Size)
      -- | Upper-left corner coordinates of the popup window. Applicable if positionType is COORDINATES.
    , offset :: (Core.Maybe OffsetPosition)
      -- | Popup window position either centered or at specific coordinate.
    , positionType :: (Core.Maybe PopupWindowProperties_PositionType)
      -- | Whether to display the browser address bar.
    , showAddressBar :: (Core.Maybe Core.Bool)
      -- | Whether to display the browser menu bar.
    , showMenuBar :: (Core.Maybe Core.Bool)
      -- | Whether to display the browser scroll bar.
    , showScrollBar :: (Core.Maybe Core.Bool)
      -- | Whether to display the browser status bar.
    , showStatusBar :: (Core.Maybe Core.Bool)
      -- | Whether to display the browser tool bar.
    , showToolBar :: (Core.Maybe Core.Bool)
      -- | Title of popup window.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PopupWindowProperties' with the minimum fields required to make a request.
newPopupWindowProperties 
    ::  PopupWindowProperties
newPopupWindowProperties =
  PopupWindowProperties
    { dimension = Core.Nothing
    , offset = Core.Nothing
    , positionType = Core.Nothing
    , showAddressBar = Core.Nothing
    , showMenuBar = Core.Nothing
    , showScrollBar = Core.Nothing
    , showStatusBar = Core.Nothing
    , showToolBar = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON PopupWindowProperties where
        parseJSON
          = Core.withObject "PopupWindowProperties"
              (\ o ->
                 PopupWindowProperties Core.<$>
                   (o Core..:? "dimension") Core.<*>
                     (o Core..:? "offset")
                     Core.<*> (o Core..:? "positionType")
                     Core.<*> (o Core..:? "showAddressBar")
                     Core.<*> (o Core..:? "showMenuBar")
                     Core.<*> (o Core..:? "showScrollBar")
                     Core.<*> (o Core..:? "showStatusBar")
                     Core.<*> (o Core..:? "showToolBar")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON PopupWindowProperties where
        toJSON PopupWindowProperties{..}
          = Core.object
              (Core.catMaybes
                 [("dimension" Core..=) Core.<$> dimension,
                  ("offset" Core..=) Core.<$> offset,
                  ("positionType" Core..=) Core.<$> positionType,
                  ("showAddressBar" Core..=) Core.<$> showAddressBar,
                  ("showMenuBar" Core..=) Core.<$> showMenuBar,
                  ("showScrollBar" Core..=) Core.<$> showScrollBar,
                  ("showStatusBar" Core..=) Core.<$> showStatusBar,
                  ("showToolBar" Core..=) Core.<$> showToolBar,
                  ("title" Core..=) Core.<$> title])


-- | Contains information about a postal code that can be targeted by ads.
--
-- /See:/ 'newPostalCode' smart constructor.
data PostalCode = PostalCode
    {
      -- | Postal code. This is equivalent to the id field.
      code :: (Core.Maybe Core.Text)
      -- | Country code of the country to which this postal code belongs.
    , countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of the country to which this postal code belongs.
    , countryDartId :: (Core.Maybe Core.Int64)
      -- | ID of this postal code.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#postalCode\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalCode' with the minimum fields required to make a request.
newPostalCode 
    ::  PostalCode
newPostalCode =
  PostalCode
    { code = Core.Nothing
    , countryCode = Core.Nothing
    , countryDartId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON PostalCode where
        parseJSON
          = Core.withObject "PostalCode"
              (\ o ->
                 PostalCode Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "countryCode")
                     Core.<*>
                     (o Core..:? "countryDartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON PostalCode where
        toJSON PostalCode{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("countryCode" Core..=) Core.<$> countryCode,
                  ("countryDartId" Core..=) Core.. Core.AsText Core.<$>
                    countryDartId,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind])


-- | Postal Code List Response
--
-- /See:/ 'newPostalCodesListResponse' smart constructor.
data PostalCodesListResponse = PostalCodesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#postalCodesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Postal code collection.
    , postalCodes :: (Core.Maybe [PostalCode])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalCodesListResponse' with the minimum fields required to make a request.
newPostalCodesListResponse 
    ::  PostalCodesListResponse
newPostalCodesListResponse =
  PostalCodesListResponse {kind = Core.Nothing, postalCodes = Core.Nothing}

instance Core.FromJSON PostalCodesListResponse where
        parseJSON
          = Core.withObject "PostalCodesListResponse"
              (\ o ->
                 PostalCodesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "postalCodes"))

instance Core.ToJSON PostalCodesListResponse where
        toJSON PostalCodesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("postalCodes" Core..=) Core.<$> postalCodes])


--
-- /See:/ 'newPricing' smart constructor.
data Pricing = Pricing
    {
      -- | Cap cost type of this inventory item.
      capCostType :: (Core.Maybe Pricing_CapCostType)
      -- | 
    , endDate :: (Core.Maybe Core.Date)
      -- | Flights of this inventory item. A flight (a.k.a. pricing period) represents the inventory item pricing information for a specific period of time.
    , flights :: (Core.Maybe [Flight])
      -- | Group type of this inventory item if it represents a placement group. Is null otherwise. There are two type of placement groups: PLANNING/PLACEMENT/GROUP/TYPE/PACKAGE is a simple group of inventory items that acts as a single pricing point for a group of tags. PLANNING/PLACEMENT/GROUP/TYPE/ROADBLOCK is a group of inventory items that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned inventory items to be marked as primary.
    , groupType :: (Core.Maybe Pricing_GroupType)
      -- | Pricing type of this inventory item.
    , pricingType :: (Core.Maybe Pricing_PricingType)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pricing' with the minimum fields required to make a request.
newPricing 
    ::  Pricing
newPricing =
  Pricing
    { capCostType = Core.Nothing
    , endDate = Core.Nothing
    , flights = Core.Nothing
    , groupType = Core.Nothing
    , pricingType = Core.Nothing
    , startDate = Core.Nothing
    }

instance Core.FromJSON Pricing where
        parseJSON
          = Core.withObject "Pricing"
              (\ o ->
                 Pricing Core.<$>
                   (o Core..:? "capCostType") Core.<*>
                     (o Core..:? "endDate")
                     Core.<*> (o Core..:? "flights")
                     Core.<*> (o Core..:? "groupType")
                     Core.<*> (o Core..:? "pricingType")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON Pricing where
        toJSON Pricing{..}
          = Core.object
              (Core.catMaybes
                 [("capCostType" Core..=) Core.<$> capCostType,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("flights" Core..=) Core.<$> flights,
                  ("groupType" Core..=) Core.<$> groupType,
                  ("pricingType" Core..=) Core.<$> pricingType,
                  ("startDate" Core..=) Core.<$> startDate])


-- | Pricing Schedule
--
-- /See:/ 'newPricingSchedule' smart constructor.
data PricingSchedule = PricingSchedule
    {
      -- | Placement cap cost option.
      capCostOption :: (Core.Maybe PricingSchedule_CapCostOption)
      -- | 
    , endDate :: (Core.Maybe Core.Date)
      -- | Whether this placement is flighted. If true, pricing periods will be computed automatically.
    , flighted :: (Core.Maybe Core.Bool)
      -- | Floodlight activity ID associated with this placement. This field should be set when placement pricing type is set to PRICING/TYPE/CPA.
    , floodlightActivityId :: (Core.Maybe Core.Int64)
      -- | Pricing periods for this placement.
    , pricingPeriods :: (Core.Maybe [PricingSchedulePricingPeriod])
      -- | Placement pricing type. This field is required on insertion.
    , pricingType :: (Core.Maybe PricingSchedule_PricingType)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | 
    , testingStartDate :: (Core.Maybe Core.Date)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricingSchedule' with the minimum fields required to make a request.
newPricingSchedule 
    ::  PricingSchedule
newPricingSchedule =
  PricingSchedule
    { capCostOption = Core.Nothing
    , endDate = Core.Nothing
    , flighted = Core.Nothing
    , floodlightActivityId = Core.Nothing
    , pricingPeriods = Core.Nothing
    , pricingType = Core.Nothing
    , startDate = Core.Nothing
    , testingStartDate = Core.Nothing
    }

instance Core.FromJSON PricingSchedule where
        parseJSON
          = Core.withObject "PricingSchedule"
              (\ o ->
                 PricingSchedule Core.<$>
                   (o Core..:? "capCostOption") Core.<*>
                     (o Core..:? "endDate")
                     Core.<*> (o Core..:? "flighted")
                     Core.<*>
                     (o Core..:? "floodlightActivityId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pricingPeriods")
                     Core.<*> (o Core..:? "pricingType")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "testingStartDate"))

instance Core.ToJSON PricingSchedule where
        toJSON PricingSchedule{..}
          = Core.object
              (Core.catMaybes
                 [("capCostOption" Core..=) Core.<$> capCostOption,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("flighted" Core..=) Core.<$> flighted,
                  ("floodlightActivityId" Core..=) Core.. Core.AsText
                    Core.<$> floodlightActivityId,
                  ("pricingPeriods" Core..=) Core.<$> pricingPeriods,
                  ("pricingType" Core..=) Core.<$> pricingType,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("testingStartDate" Core..=) Core.<$>
                    testingStartDate])


-- | Pricing Period
--
-- /See:/ 'newPricingSchedulePricingPeriod' smart constructor.
data PricingSchedulePricingPeriod = PricingSchedulePricingPeriod
    {
      -- | 
      endDate :: (Core.Maybe Core.Date)
      -- | Comments for this pricing period.
    , pricingComment :: (Core.Maybe Core.Text)
      -- | Rate or cost of this pricing period in nanos (i.e., multiplied by 1000000000). Acceptable values are 0 to 1000000000000000000, inclusive.
    , rateOrCostNanos :: (Core.Maybe Core.Int64)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | Units of this pricing period. Acceptable values are 0 to 10000000000, inclusive.
    , units :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricingSchedulePricingPeriod' with the minimum fields required to make a request.
newPricingSchedulePricingPeriod 
    ::  PricingSchedulePricingPeriod
newPricingSchedulePricingPeriod =
  PricingSchedulePricingPeriod
    { endDate = Core.Nothing
    , pricingComment = Core.Nothing
    , rateOrCostNanos = Core.Nothing
    , startDate = Core.Nothing
    , units = Core.Nothing
    }

instance Core.FromJSON PricingSchedulePricingPeriod
         where
        parseJSON
          = Core.withObject "PricingSchedulePricingPeriod"
              (\ o ->
                 PricingSchedulePricingPeriod Core.<$>
                   (o Core..:? "endDate") Core.<*>
                     (o Core..:? "pricingComment")
                     Core.<*>
                     (o Core..:? "rateOrCostNanos" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "startDate")
                     Core.<*>
                     (o Core..:? "units" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON PricingSchedulePricingPeriod
         where
        toJSON PricingSchedulePricingPeriod{..}
          = Core.object
              (Core.catMaybes
                 [("endDate" Core..=) Core.<$> endDate,
                  ("pricingComment" Core..=) Core.<$> pricingComment,
                  ("rateOrCostNanos" Core..=) Core.. Core.AsText
                    Core.<$> rateOrCostNanos,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("units" Core..=) Core.. Core.AsText Core.<$> units])


-- | Contains properties of a Planning project.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project
    {
      -- | Account ID of this project.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this project.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Audience age group of this project.
    , audienceAgeGroup :: (Core.Maybe Project_AudienceAgeGroup)
      -- | Audience gender of this project.
    , audienceGender :: (Core.Maybe Project_AudienceGender)
      -- | Budget of this project in the currency specified by the current account. The value stored in this field represents only the non-fractional amount. For example, for USD, the smallest value that can be represented by this field is 1 US dollar.
    , budget :: (Core.Maybe Core.Int64)
      -- | Client billing code of this project.
    , clientBillingCode :: (Core.Maybe Core.Text)
      -- | Name of the project client.
    , clientName :: (Core.Maybe Core.Text)
      -- | 
    , endDate :: (Core.Maybe Core.Date)
      -- | ID of this project. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#project\".
    , kind :: (Core.Maybe Core.Text)
      -- | Information about the most recent modification of this project.
    , lastModifiedInfo :: (Core.Maybe LastModifiedInfo)
      -- | Name of this project.
    , name :: (Core.Maybe Core.Text)
      -- | Overview of this project.
    , overview :: (Core.Maybe Core.Text)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | Subaccount ID of this project.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Number of clicks that the advertiser is targeting.
    , targetClicks :: (Core.Maybe Core.Int64)
      -- | Number of conversions that the advertiser is targeting.
    , targetConversions :: (Core.Maybe Core.Int64)
      -- | CPA that the advertiser is targeting.
    , targetCpaNanos :: (Core.Maybe Core.Int64)
      -- | CPC that the advertiser is targeting.
    , targetCpcNanos :: (Core.Maybe Core.Int64)
      -- | vCPM from Active View that the advertiser is targeting.
    , targetCpmActiveViewNanos :: (Core.Maybe Core.Int64)
      -- | CPM that the advertiser is targeting.
    , targetCpmNanos :: (Core.Maybe Core.Int64)
      -- | Number of impressions that the advertiser is targeting.
    , targetImpressions :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
newProject 
    ::  Project
newProject =
  Project
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , audienceAgeGroup = Core.Nothing
    , audienceGender = Core.Nothing
    , budget = Core.Nothing
    , clientBillingCode = Core.Nothing
    , clientName = Core.Nothing
    , endDate = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedInfo = Core.Nothing
    , name = Core.Nothing
    , overview = Core.Nothing
    , startDate = Core.Nothing
    , subaccountId = Core.Nothing
    , targetClicks = Core.Nothing
    , targetConversions = Core.Nothing
    , targetCpaNanos = Core.Nothing
    , targetCpcNanos = Core.Nothing
    , targetCpmActiveViewNanos = Core.Nothing
    , targetCpmNanos = Core.Nothing
    , targetImpressions = Core.Nothing
    }

instance Core.FromJSON Project where
        parseJSON
          = Core.withObject "Project"
              (\ o ->
                 Project Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "audienceAgeGroup")
                     Core.<*> (o Core..:? "audienceGender")
                     Core.<*>
                     (o Core..:? "budget" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "clientBillingCode")
                     Core.<*> (o Core..:? "clientName")
                     Core.<*> (o Core..:? "endDate")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "lastModifiedInfo")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "overview")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetClicks" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetConversions" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetCpaNanos" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetCpcNanos" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetCpmActiveViewNanos" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetCpmNanos" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "targetImpressions" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Project where
        toJSON Project{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("audienceAgeGroup" Core..=) Core.<$>
                    audienceAgeGroup,
                  ("audienceGender" Core..=) Core.<$> audienceGender,
                  ("budget" Core..=) Core.. Core.AsText Core.<$>
                    budget,
                  ("clientBillingCode" Core..=) Core.<$>
                    clientBillingCode,
                  ("clientName" Core..=) Core.<$> clientName,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedInfo" Core..=) Core.<$>
                    lastModifiedInfo,
                  ("name" Core..=) Core.<$> name,
                  ("overview" Core..=) Core.<$> overview,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("targetClicks" Core..=) Core.. Core.AsText Core.<$>
                    targetClicks,
                  ("targetConversions" Core..=) Core.. Core.AsText
                    Core.<$> targetConversions,
                  ("targetCpaNanos" Core..=) Core.. Core.AsText
                    Core.<$> targetCpaNanos,
                  ("targetCpcNanos" Core..=) Core.. Core.AsText
                    Core.<$> targetCpcNanos,
                  ("targetCpmActiveViewNanos" Core..=) Core..
                    Core.AsText
                    Core.<$> targetCpmActiveViewNanos,
                  ("targetCpmNanos" Core..=) Core.. Core.AsText
                    Core.<$> targetCpmNanos,
                  ("targetImpressions" Core..=) Core.. Core.AsText
                    Core.<$> targetImpressions])


-- | Project List Response
--
-- /See:/ 'newProjectsListResponse' smart constructor.
data ProjectsListResponse = ProjectsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#projectsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Project collection.
    , projects :: (Core.Maybe [Project])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectsListResponse' with the minimum fields required to make a request.
newProjectsListResponse 
    ::  ProjectsListResponse
newProjectsListResponse =
  ProjectsListResponse
    {kind = Core.Nothing, nextPageToken = Core.Nothing, projects = Core.Nothing}

instance Core.FromJSON ProjectsListResponse where
        parseJSON
          = Core.withObject "ProjectsListResponse"
              (\ o ->
                 ProjectsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "projects"))

instance Core.ToJSON ProjectsListResponse where
        toJSON ProjectsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("projects" Core..=) Core.<$> projects])


-- | Represents fields that are compatible to be selected for a report of type \"REACH\".
--
-- /See:/ 'newReachReportCompatibleFields' smart constructor.
data ReachReportCompatibleFields = ReachReportCompatibleFields
    {
      -- | Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.
      dimensionFilters :: (Core.Maybe [Dimension])
      -- | Dimensions which are compatible to be selected in the \"dimensions\" section of the report.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#reachReportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
      -- | Metrics which are compatible to be selected as activity metrics to pivot on in the \"activities\" section of the report.
    , pivotedActivityMetrics :: (Core.Maybe [Metric])
      -- | Metrics which are compatible to be selected in the \"reachByFrequencyMetricNames\" section of the report.
    , reachByFrequencyMetrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReachReportCompatibleFields' with the minimum fields required to make a request.
newReachReportCompatibleFields 
    ::  ReachReportCompatibleFields
newReachReportCompatibleFields =
  ReachReportCompatibleFields
    { dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    , pivotedActivityMetrics = Core.Nothing
    , reachByFrequencyMetrics = Core.Nothing
    }

instance Core.FromJSON ReachReportCompatibleFields
         where
        parseJSON
          = Core.withObject "ReachReportCompatibleFields"
              (\ o ->
                 ReachReportCompatibleFields Core.<$>
                   (o Core..:? "dimensionFilters") Core.<*>
                     (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "pivotedActivityMetrics")
                     Core.<*> (o Core..:? "reachByFrequencyMetrics"))

instance Core.ToJSON ReachReportCompatibleFields
         where
        toJSON ReachReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("pivotedActivityMetrics" Core..=) Core.<$>
                    pivotedActivityMetrics,
                  ("reachByFrequencyMetrics" Core..=) Core.<$>
                    reachByFrequencyMetrics])


-- | Represents a recipient.
--
-- /See:/ 'newRecipient' smart constructor.
data Recipient = Recipient
    {
      -- | The delivery type for the recipient.
      deliveryType :: (Core.Maybe Recipient_DeliveryType)
      -- | The email address of the recipient.
    , email :: (Core.Maybe Core.Text)
      -- | The kind of resource this is, in this case dfareporting#recipient.
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recipient' with the minimum fields required to make a request.
newRecipient 
    ::  Recipient
newRecipient =
  Recipient
    {deliveryType = Core.Nothing, email = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Recipient where
        parseJSON
          = Core.withObject "Recipient"
              (\ o ->
                 Recipient Core.<$>
                   (o Core..:? "deliveryType") Core.<*>
                     (o Core..:? "email")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON Recipient where
        toJSON Recipient{..}
          = Core.object
              (Core.catMaybes
                 [("deliveryType" Core..=) Core.<$> deliveryType,
                  ("email" Core..=) Core.<$> email,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains information about a region that can be targeted by ads.
--
-- /See:/ 'newRegion' smart constructor.
data Region = Region
    {
      -- | Country code of the country to which this region belongs.
      countryCode :: (Core.Maybe Core.Text)
      -- | DART ID of the country to which this region belongs.
    , countryDartId :: (Core.Maybe Core.Int64)
      -- | DART ID of this region.
    , dartId :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#region\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this region.
    , name :: (Core.Maybe Core.Text)
      -- | Region code.
    , regionCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Region' with the minimum fields required to make a request.
newRegion 
    ::  Region
newRegion =
  Region
    { countryCode = Core.Nothing
    , countryDartId = Core.Nothing
    , dartId = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , regionCode = Core.Nothing
    }

instance Core.FromJSON Region where
        parseJSON
          = Core.withObject "Region"
              (\ o ->
                 Region Core.<$>
                   (o Core..:? "countryCode") Core.<*>
                     (o Core..:? "countryDartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "dartId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "regionCode"))

instance Core.ToJSON Region where
        toJSON Region{..}
          = Core.object
              (Core.catMaybes
                 [("countryCode" Core..=) Core.<$> countryCode,
                  ("countryDartId" Core..=) Core.. Core.AsText Core.<$>
                    countryDartId,
                  ("dartId" Core..=) Core.. Core.AsText Core.<$>
                    dartId,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("regionCode" Core..=) Core.<$> regionCode])


-- | Region List Response
--
-- /See:/ 'newRegionsListResponse' smart constructor.
data RegionsListResponse = RegionsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#regionsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Region collection.
    , regions :: (Core.Maybe [Region])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionsListResponse' with the minimum fields required to make a request.
newRegionsListResponse 
    ::  RegionsListResponse
newRegionsListResponse =
  RegionsListResponse {kind = Core.Nothing, regions = Core.Nothing}

instance Core.FromJSON RegionsListResponse where
        parseJSON
          = Core.withObject "RegionsListResponse"
              (\ o ->
                 RegionsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "regions"))

instance Core.ToJSON RegionsListResponse where
        toJSON RegionsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("regions" Core..=) Core.<$> regions])


-- | Contains properties of a remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource can be used to manage remarketing lists that are owned by your advertisers. To see all remarketing lists that are visible to your advertisers, including those that are shared to your advertiser or account, use the TargetableRemarketingLists resource.
--
-- /See:/ 'newRemarketingList' smart constructor.
data RemarketingList = RemarketingList
    {
      -- | Account ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this remarketing list is active.
    , active :: (Core.Maybe Core.Bool)
      -- | Dimension value for the advertiser ID that owns this remarketing list. This is a required field.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Remarketing list description.
    , description :: (Core.Maybe Core.Text)
      -- | Remarketing list ID. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingList\".
    , kind :: (Core.Maybe Core.Text)
      -- | Number of days that a user should remain in the remarketing list without an impression. Acceptable values are 1 to 540, inclusive.
    , lifeSpan :: (Core.Maybe Core.Int64)
      -- | Rule used to populate the remarketing list with users.
    , listPopulationRule :: (Core.Maybe ListPopulationRule)
      -- | Number of users currently in the list. This is a read-only field.
    , listSize :: (Core.Maybe Core.Int64)
      -- | Product from which this remarketing list was originated.
    , listSource :: (Core.Maybe RemarketingList_ListSource)
      -- | Name of the remarketing list. This is a required field. Must be no greater than 128 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingList' with the minimum fields required to make a request.
newRemarketingList 
    ::  RemarketingList
newRemarketingList =
  RemarketingList
    { accountId = Core.Nothing
    , active = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , description = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lifeSpan = Core.Nothing
    , listPopulationRule = Core.Nothing
    , listSize = Core.Nothing
    , listSource = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON RemarketingList where
        parseJSON
          = Core.withObject "RemarketingList"
              (\ o ->
                 RemarketingList Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "active")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "description")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "lifeSpan" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "listPopulationRule")
                     Core.<*>
                     (o Core..:? "listSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "listSource")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON RemarketingList where
        toJSON RemarketingList{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("active" Core..=) Core.<$> active,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lifeSpan" Core..=) Core.. Core.AsText Core.<$>
                    lifeSpan,
                  ("listPopulationRule" Core..=) Core.<$>
                    listPopulationRule,
                  ("listSize" Core..=) Core.. Core.AsText Core.<$>
                    listSize,
                  ("listSource" Core..=) Core.<$> listSource,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Contains properties of a remarketing list\'s sharing information. Sharing allows other accounts or advertisers to target to your remarketing lists. This resource can be used to manage remarketing list sharing to other accounts and advertisers.
--
-- /See:/ 'newRemarketingListShare' smart constructor.
data RemarketingListShare = RemarketingListShare
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingListShare\".
      kind :: (Core.Maybe Core.Text)
      -- | Remarketing list ID. This is a read-only, auto-generated field.
    , remarketingListId :: (Core.Maybe Core.Int64)
      -- | Accounts that the remarketing list is shared with.
    , sharedAccountIds :: (Core.Maybe [Core.Int64])
      -- | Advertisers that the remarketing list is shared with.
    , sharedAdvertiserIds :: (Core.Maybe [Core.Int64])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingListShare' with the minimum fields required to make a request.
newRemarketingListShare 
    ::  RemarketingListShare
newRemarketingListShare =
  RemarketingListShare
    { kind = Core.Nothing
    , remarketingListId = Core.Nothing
    , sharedAccountIds = Core.Nothing
    , sharedAdvertiserIds = Core.Nothing
    }

instance Core.FromJSON RemarketingListShare where
        parseJSON
          = Core.withObject "RemarketingListShare"
              (\ o ->
                 RemarketingListShare Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "remarketingListId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "sharedAccountIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*>
                     (o Core..:? "sharedAdvertiserIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText)))

instance Core.ToJSON RemarketingListShare where
        toJSON RemarketingListShare{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("remarketingListId" Core..=) Core.. Core.AsText
                    Core.<$> remarketingListId,
                  ("sharedAccountIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> sharedAccountIds,
                  ("sharedAdvertiserIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> sharedAdvertiserIds])


-- | Remarketing list response
--
-- /See:/ 'newRemarketingListsListResponse' smart constructor.
data RemarketingListsListResponse = RemarketingListsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingListsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Remarketing list collection.
    , remarketingLists :: (Core.Maybe [RemarketingList])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingListsListResponse' with the minimum fields required to make a request.
newRemarketingListsListResponse 
    ::  RemarketingListsListResponse
newRemarketingListsListResponse =
  RemarketingListsListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , remarketingLists = Core.Nothing
    }

instance Core.FromJSON RemarketingListsListResponse
         where
        parseJSON
          = Core.withObject "RemarketingListsListResponse"
              (\ o ->
                 RemarketingListsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "remarketingLists"))

instance Core.ToJSON RemarketingListsListResponse
         where
        toJSON RemarketingListsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("remarketingLists" Core..=) Core.<$>
                    remarketingLists])


-- | Represents a Report resource.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
    {
      -- | The account ID to which this report belongs.
      accountId :: (Core.Maybe Core.Int64)
      -- | The report criteria for a report of type \"STANDARD\".
    , criteria :: (Core.Maybe Report_Criteria)
      -- | The report criteria for a report of type \"CROSS/DIMENSION/REACH\".
    , crossDimensionReachCriteria :: (Core.Maybe Report_CrossDimensionReachCriteria)
      -- | Optional. The report criteria for a report of type \"CROSS/MEDIA/REACH\".
    , crossMediaReachCriteria :: (Core.Maybe Report_CrossMediaReachCriteria)
      -- | The report\'s email delivery settings.
    , delivery :: (Core.Maybe Report_Delivery)
      -- | The eTag of this response for caching purposes.
    , etag :: (Core.Maybe Core.Text)
      -- | The filename used when generating report files for this report.
    , fileName :: (Core.Maybe Core.Text)
      -- | The report criteria for a report of type \"FLOODLIGHT\".
    , floodlightCriteria :: (Core.Maybe Report_FloodlightCriteria)
      -- | The output format of the report. If not specified, default format is \"CSV\". Note that the actual format in the completed report file might differ if for instance the report\'s size exceeds the format\'s capabilities. \"CSV\" will then be the fallback format.
    , format :: (Core.Maybe Report_Format)
      -- | The unique ID identifying this report resource.
    , id :: (Core.Maybe Core.Int64)
      -- | The kind of resource this is, in this case dfareporting#report.
    , kind :: (Core.Maybe Core.Text)
      -- | The timestamp (in milliseconds since epoch) of when this report was last modified.
    , lastModifiedTime :: (Core.Maybe Core.Word64)
      -- | The name of the report.
    , name :: (Core.Maybe Core.Text)
      -- | The user profile id of the owner of this report.
    , ownerProfileId :: (Core.Maybe Core.Int64)
      -- | The report criteria for a report of type \"PATH/TO/CONVERSION\".
    , pathToConversionCriteria :: (Core.Maybe Report_PathToConversionCriteria)
      -- | The report criteria for a report of type \"REACH\".
    , reachCriteria :: (Core.Maybe Report_ReachCriteria)
      -- | The report\'s schedule. Can only be set if the report\'s \'dateRange\' is a relative date range and the relative date range is not \"TODAY\".
    , schedule :: (Core.Maybe Report_Schedule)
      -- | The subaccount ID to which this report belongs if applicable.
    , subAccountId :: (Core.Maybe Core.Int64)
      -- | The type of the report.
    , type' :: (Core.Maybe Report_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport 
    ::  Report
newReport =
  Report
    { accountId = Core.Nothing
    , criteria = Core.Nothing
    , crossDimensionReachCriteria = Core.Nothing
    , crossMediaReachCriteria = Core.Nothing
    , delivery = Core.Nothing
    , etag = Core.Nothing
    , fileName = Core.Nothing
    , floodlightCriteria = Core.Nothing
    , format = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lastModifiedTime = Core.Nothing
    , name = Core.Nothing
    , ownerProfileId = Core.Nothing
    , pathToConversionCriteria = Core.Nothing
    , reachCriteria = Core.Nothing
    , schedule = Core.Nothing
    , subAccountId = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Report where
        parseJSON
          = Core.withObject "Report"
              (\ o ->
                 Report Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "criteria")
                     Core.<*> (o Core..:? "crossDimensionReachCriteria")
                     Core.<*> (o Core..:? "crossMediaReachCriteria")
                     Core.<*> (o Core..:? "delivery")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "fileName")
                     Core.<*> (o Core..:? "floodlightCriteria")
                     Core.<*> (o Core..:? "format")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "lastModifiedTime" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "ownerProfileId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pathToConversionCriteria")
                     Core.<*> (o Core..:? "reachCriteria")
                     Core.<*> (o Core..:? "schedule")
                     Core.<*>
                     (o Core..:? "subAccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Report where
        toJSON Report{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("criteria" Core..=) Core.<$> criteria,
                  ("crossDimensionReachCriteria" Core..=) Core.<$>
                    crossDimensionReachCriteria,
                  ("crossMediaReachCriteria" Core..=) Core.<$>
                    crossMediaReachCriteria,
                  ("delivery" Core..=) Core.<$> delivery,
                  ("etag" Core..=) Core.<$> etag,
                  ("fileName" Core..=) Core.<$> fileName,
                  ("floodlightCriteria" Core..=) Core.<$>
                    floodlightCriteria,
                  ("format" Core..=) Core.<$> format,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lastModifiedTime" Core..=) Core.. Core.AsText
                    Core.<$> lastModifiedTime,
                  ("name" Core..=) Core.<$> name,
                  ("ownerProfileId" Core..=) Core.. Core.AsText
                    Core.<$> ownerProfileId,
                  ("pathToConversionCriteria" Core..=) Core.<$>
                    pathToConversionCriteria,
                  ("reachCriteria" Core..=) Core.<$> reachCriteria,
                  ("schedule" Core..=) Core.<$> schedule,
                  ("subAccountId" Core..=) Core.. Core.AsText Core.<$>
                    subAccountId,
                  ("type" Core..=) Core.<$> type'])


-- | The report criteria for a report of type \"STANDARD\".
--
-- /See:/ 'newReport_Criteria' smart constructor.
data Report_Criteria = Report_Criteria
    {
      -- | Activity group.
      activities :: (Core.Maybe Activities)
      -- | Custom Rich Media Events group.
    , customRichMediaEvents :: (Core.Maybe CustomRichMediaEvents)
      -- | The date range for which this report should be run.
    , dateRange :: (Core.Maybe DateRange)
      -- | The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
    , dimensionFilters :: (Core.Maybe [DimensionValue])
      -- | The list of standard dimensions the report should include.
    , dimensions :: (Core.Maybe [SortedDimension])
      -- | The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_Criteria' with the minimum fields required to make a request.
newReport_Criteria 
    ::  Report_Criteria
newReport_Criteria =
  Report_Criteria
    { activities = Core.Nothing
    , customRichMediaEvents = Core.Nothing
    , dateRange = Core.Nothing
    , dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , metricNames = Core.Nothing
    }

instance Core.FromJSON Report_Criteria where
        parseJSON
          = Core.withObject "Report_Criteria"
              (\ o ->
                 Report_Criteria Core.<$>
                   (o Core..:? "activities") Core.<*>
                     (o Core..:? "customRichMediaEvents")
                     Core.<*> (o Core..:? "dateRange")
                     Core.<*> (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "metricNames"))

instance Core.ToJSON Report_Criteria where
        toJSON Report_Criteria{..}
          = Core.object
              (Core.catMaybes
                 [("activities" Core..=) Core.<$> activities,
                  ("customRichMediaEvents" Core..=) Core.<$>
                    customRichMediaEvents,
                  ("dateRange" Core..=) Core.<$> dateRange,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("metricNames" Core..=) Core.<$> metricNames])


-- | The report criteria for a report of type \"CROSS/DIMENSION/REACH\".
--
-- /See:/ 'newReport_CrossDimensionReachCriteria' smart constructor.
data Report_CrossDimensionReachCriteria = Report_CrossDimensionReachCriteria
    {
      -- | The list of dimensions the report should include.
      breakdown :: (Core.Maybe [SortedDimension])
      -- | The date range this report should be run for.
    , dateRange :: (Core.Maybe DateRange)
      -- | The dimension option.
    , dimension :: (Core.Maybe Report_CrossDimensionReachCriteria_Dimension)
      -- | The list of filters on which dimensions are filtered.
    , dimensionFilters :: (Core.Maybe [DimensionValue])
      -- | The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
      -- | The list of names of overlap metrics the report should include.
    , overlapMetricNames :: (Core.Maybe [Core.Text])
      -- | Whether the report is pivoted or not. Defaults to true.
    , pivoted :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_CrossDimensionReachCriteria' with the minimum fields required to make a request.
newReport_CrossDimensionReachCriteria 
    ::  Report_CrossDimensionReachCriteria
newReport_CrossDimensionReachCriteria =
  Report_CrossDimensionReachCriteria
    { breakdown = Core.Nothing
    , dateRange = Core.Nothing
    , dimension = Core.Nothing
    , dimensionFilters = Core.Nothing
    , metricNames = Core.Nothing
    , overlapMetricNames = Core.Nothing
    , pivoted = Core.Nothing
    }

instance Core.FromJSON
           Report_CrossDimensionReachCriteria
         where
        parseJSON
          = Core.withObject
              "Report_CrossDimensionReachCriteria"
              (\ o ->
                 Report_CrossDimensionReachCriteria Core.<$>
                   (o Core..:? "breakdown") Core.<*>
                     (o Core..:? "dateRange")
                     Core.<*> (o Core..:? "dimension")
                     Core.<*> (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "metricNames")
                     Core.<*> (o Core..:? "overlapMetricNames")
                     Core.<*> (o Core..:? "pivoted"))

instance Core.ToJSON
           Report_CrossDimensionReachCriteria
         where
        toJSON Report_CrossDimensionReachCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("breakdown" Core..=) Core.<$> breakdown,
                  ("dateRange" Core..=) Core.<$> dateRange,
                  ("dimension" Core..=) Core.<$> dimension,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("metricNames" Core..=) Core.<$> metricNames,
                  ("overlapMetricNames" Core..=) Core.<$>
                    overlapMetricNames,
                  ("pivoted" Core..=) Core.<$> pivoted])


-- | Optional. The report criteria for a report of type \"CROSS/MEDIA/REACH\".
--
-- /See:/ 'newReport_CrossMediaReachCriteria' smart constructor.
data Report_CrossMediaReachCriteria = Report_CrossMediaReachCriteria
    {
      -- | Required. The date range this report should be run for.
      dateRange :: (Core.Maybe DateRange)
      -- | Required. The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
    , dimensionFilters :: (Core.Maybe [DimensionValue])
      -- | Required. The list of dimensions the report should include.
    , dimensions :: (Core.Maybe [SortedDimension])
      -- | Required. The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_CrossMediaReachCriteria' with the minimum fields required to make a request.
newReport_CrossMediaReachCriteria 
    ::  Report_CrossMediaReachCriteria
newReport_CrossMediaReachCriteria =
  Report_CrossMediaReachCriteria
    { dateRange = Core.Nothing
    , dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , metricNames = Core.Nothing
    }

instance Core.FromJSON Report_CrossMediaReachCriteria
         where
        parseJSON
          = Core.withObject "Report_CrossMediaReachCriteria"
              (\ o ->
                 Report_CrossMediaReachCriteria Core.<$>
                   (o Core..:? "dateRange") Core.<*>
                     (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "metricNames"))

instance Core.ToJSON Report_CrossMediaReachCriteria
         where
        toJSON Report_CrossMediaReachCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("dateRange" Core..=) Core.<$> dateRange,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("metricNames" Core..=) Core.<$> metricNames])


-- | The report\'s email delivery settings.
--
-- /See:/ 'newReport_Delivery' smart constructor.
data Report_Delivery = Report_Delivery
    {
      -- | Whether the report should be emailed to the report owner.
      emailOwner :: (Core.Maybe Core.Bool)
      -- | The type of delivery for the owner to receive, if enabled.
    , emailOwnerDeliveryType :: (Core.Maybe Report_Delivery_EmailOwnerDeliveryType)
      -- | The message to be sent with each email.
    , message :: (Core.Maybe Core.Text)
      -- | The list of recipients to which to email the report.
    , recipients :: (Core.Maybe [Recipient])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_Delivery' with the minimum fields required to make a request.
newReport_Delivery 
    ::  Report_Delivery
newReport_Delivery =
  Report_Delivery
    { emailOwner = Core.Nothing
    , emailOwnerDeliveryType = Core.Nothing
    , message = Core.Nothing
    , recipients = Core.Nothing
    }

instance Core.FromJSON Report_Delivery where
        parseJSON
          = Core.withObject "Report_Delivery"
              (\ o ->
                 Report_Delivery Core.<$>
                   (o Core..:? "emailOwner") Core.<*>
                     (o Core..:? "emailOwnerDeliveryType")
                     Core.<*> (o Core..:? "message")
                     Core.<*> (o Core..:? "recipients"))

instance Core.ToJSON Report_Delivery where
        toJSON Report_Delivery{..}
          = Core.object
              (Core.catMaybes
                 [("emailOwner" Core..=) Core.<$> emailOwner,
                  ("emailOwnerDeliveryType" Core..=) Core.<$>
                    emailOwnerDeliveryType,
                  ("message" Core..=) Core.<$> message,
                  ("recipients" Core..=) Core.<$> recipients])


-- | The report criteria for a report of type \"FLOODLIGHT\".
--
-- /See:/ 'newReport_FloodlightCriteria' smart constructor.
data Report_FloodlightCriteria = Report_FloodlightCriteria
    {
      -- | The list of custom rich media events to include.
      customRichMediaEvents :: (Core.Maybe [DimensionValue])
      -- | The date range this report should be run for.
    , dateRange :: (Core.Maybe DateRange)
      -- | The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
    , dimensionFilters :: (Core.Maybe [DimensionValue])
      -- | The list of dimensions the report should include.
    , dimensions :: (Core.Maybe [SortedDimension])
      -- | The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be \'dfa:floodlightConfigId\'.
    , floodlightConfigId :: (Core.Maybe DimensionValue)
      -- | The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
      -- | The properties of the report.
    , reportProperties :: (Core.Maybe Report_FloodlightCriteria_ReportProperties)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_FloodlightCriteria' with the minimum fields required to make a request.
newReport_FloodlightCriteria 
    ::  Report_FloodlightCriteria
newReport_FloodlightCriteria =
  Report_FloodlightCriteria
    { customRichMediaEvents = Core.Nothing
    , dateRange = Core.Nothing
    , dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , floodlightConfigId = Core.Nothing
    , metricNames = Core.Nothing
    , reportProperties = Core.Nothing
    }

instance Core.FromJSON Report_FloodlightCriteria
         where
        parseJSON
          = Core.withObject "Report_FloodlightCriteria"
              (\ o ->
                 Report_FloodlightCriteria Core.<$>
                   (o Core..:? "customRichMediaEvents") Core.<*>
                     (o Core..:? "dateRange")
                     Core.<*> (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "floodlightConfigId")
                     Core.<*> (o Core..:? "metricNames")
                     Core.<*> (o Core..:? "reportProperties"))

instance Core.ToJSON Report_FloodlightCriteria where
        toJSON Report_FloodlightCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("customRichMediaEvents" Core..=) Core.<$>
                    customRichMediaEvents,
                  ("dateRange" Core..=) Core.<$> dateRange,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("floodlightConfigId" Core..=) Core.<$>
                    floodlightConfigId,
                  ("metricNames" Core..=) Core.<$> metricNames,
                  ("reportProperties" Core..=) Core.<$>
                    reportProperties])


-- | The properties of the report.
--
-- /See:/ 'newReport_FloodlightCriteria_ReportProperties' smart constructor.
data Report_FloodlightCriteria_ReportProperties = Report_FloodlightCriteria_ReportProperties
    {
      -- | Include conversions that have no cookie, but do have an exposure path.
      includeAttributedIPConversions :: (Core.Maybe Core.Bool)
      -- | Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.
    , includeUnattributedCookieConversions :: (Core.Maybe Core.Bool)
      -- | Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.
    , includeUnattributedIPConversions :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_FloodlightCriteria_ReportProperties' with the minimum fields required to make a request.
newReport_FloodlightCriteria_ReportProperties 
    ::  Report_FloodlightCriteria_ReportProperties
newReport_FloodlightCriteria_ReportProperties =
  Report_FloodlightCriteria_ReportProperties
    { includeAttributedIPConversions = Core.Nothing
    , includeUnattributedCookieConversions = Core.Nothing
    , includeUnattributedIPConversions = Core.Nothing
    }

instance Core.FromJSON
           Report_FloodlightCriteria_ReportProperties
         where
        parseJSON
          = Core.withObject
              "Report_FloodlightCriteria_ReportProperties"
              (\ o ->
                 Report_FloodlightCriteria_ReportProperties Core.<$>
                   (o Core..:? "includeAttributedIPConversions")
                     Core.<*>
                     (o Core..:? "includeUnattributedCookieConversions")
                     Core.<*>
                     (o Core..:? "includeUnattributedIPConversions"))

instance Core.ToJSON
           Report_FloodlightCriteria_ReportProperties
         where
        toJSON Report_FloodlightCriteria_ReportProperties{..}
          = Core.object
              (Core.catMaybes
                 [("includeAttributedIPConversions" Core..=) Core.<$>
                    includeAttributedIPConversions,
                  ("includeUnattributedCookieConversions" Core..=)
                    Core.<$> includeUnattributedCookieConversions,
                  ("includeUnattributedIPConversions" Core..=) Core.<$>
                    includeUnattributedIPConversions])


-- | The report criteria for a report of type \"PATH/TO/CONVERSION\".
--
-- /See:/ 'newReport_PathToConversionCriteria' smart constructor.
data Report_PathToConversionCriteria = Report_PathToConversionCriteria
    {
      -- | The list of \'dfa:activity\' values to filter on.
      activityFilters :: (Core.Maybe [DimensionValue])
      -- | The list of conversion dimensions the report should include.
    , conversionDimensions :: (Core.Maybe [SortedDimension])
      -- | The list of custom floodlight variables the report should include.
    , customFloodlightVariables :: (Core.Maybe [SortedDimension])
      -- | The list of custom rich media events to include.
    , customRichMediaEvents :: (Core.Maybe [DimensionValue])
      -- | The date range this report should be run for.
    , dateRange :: (Core.Maybe DateRange)
      -- | The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be \'dfa:floodlightConfigId\'.
    , floodlightConfigId :: (Core.Maybe DimensionValue)
      -- | The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
      -- | The list of per interaction dimensions the report should include.
    , perInteractionDimensions :: (Core.Maybe [SortedDimension])
      -- | The properties of the report.
    , reportProperties :: (Core.Maybe Report_PathToConversionCriteria_ReportProperties)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_PathToConversionCriteria' with the minimum fields required to make a request.
newReport_PathToConversionCriteria 
    ::  Report_PathToConversionCriteria
newReport_PathToConversionCriteria =
  Report_PathToConversionCriteria
    { activityFilters = Core.Nothing
    , conversionDimensions = Core.Nothing
    , customFloodlightVariables = Core.Nothing
    , customRichMediaEvents = Core.Nothing
    , dateRange = Core.Nothing
    , floodlightConfigId = Core.Nothing
    , metricNames = Core.Nothing
    , perInteractionDimensions = Core.Nothing
    , reportProperties = Core.Nothing
    }

instance Core.FromJSON
           Report_PathToConversionCriteria
         where
        parseJSON
          = Core.withObject "Report_PathToConversionCriteria"
              (\ o ->
                 Report_PathToConversionCriteria Core.<$>
                   (o Core..:? "activityFilters") Core.<*>
                     (o Core..:? "conversionDimensions")
                     Core.<*> (o Core..:? "customFloodlightVariables")
                     Core.<*> (o Core..:? "customRichMediaEvents")
                     Core.<*> (o Core..:? "dateRange")
                     Core.<*> (o Core..:? "floodlightConfigId")
                     Core.<*> (o Core..:? "metricNames")
                     Core.<*> (o Core..:? "perInteractionDimensions")
                     Core.<*> (o Core..:? "reportProperties"))

instance Core.ToJSON Report_PathToConversionCriteria
         where
        toJSON Report_PathToConversionCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("activityFilters" Core..=) Core.<$>
                    activityFilters,
                  ("conversionDimensions" Core..=) Core.<$>
                    conversionDimensions,
                  ("customFloodlightVariables" Core..=) Core.<$>
                    customFloodlightVariables,
                  ("customRichMediaEvents" Core..=) Core.<$>
                    customRichMediaEvents,
                  ("dateRange" Core..=) Core.<$> dateRange,
                  ("floodlightConfigId" Core..=) Core.<$>
                    floodlightConfigId,
                  ("metricNames" Core..=) Core.<$> metricNames,
                  ("perInteractionDimensions" Core..=) Core.<$>
                    perInteractionDimensions,
                  ("reportProperties" Core..=) Core.<$>
                    reportProperties])


-- | The properties of the report.
--
-- /See:/ 'newReport_PathToConversionCriteria_ReportProperties' smart constructor.
data Report_PathToConversionCriteria_ReportProperties = Report_PathToConversionCriteria_ReportProperties
    {
      -- | CM360 checks to see if a click interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.
      clicksLookbackWindow :: (Core.Maybe Core.Int32)
      -- | CM360 checks to see if an impression interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.
    , impressionsLookbackWindow :: (Core.Maybe Core.Int32)
      -- | Deprecated: has no effect.
    , includeAttributedIPConversions :: (Core.Maybe Core.Bool)
      -- | Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.
    , includeUnattributedCookieConversions :: (Core.Maybe Core.Bool)
      -- | Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.
    , includeUnattributedIPConversions :: (Core.Maybe Core.Bool)
      -- | The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.
    , maximumClickInteractions :: (Core.Maybe Core.Int32)
      -- | The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.
    , maximumImpressionInteractions :: (Core.Maybe Core.Int32)
      -- | The maximum amount of time that can take place between interactions (clicks or impressions) by the same user. Valid values: 1-90.
    , maximumInteractionGap :: (Core.Maybe Core.Int32)
      -- | Enable pivoting on interaction path.
    , pivotOnInteractionPath :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_PathToConversionCriteria_ReportProperties' with the minimum fields required to make a request.
newReport_PathToConversionCriteria_ReportProperties 
    ::  Report_PathToConversionCriteria_ReportProperties
newReport_PathToConversionCriteria_ReportProperties =
  Report_PathToConversionCriteria_ReportProperties
    { clicksLookbackWindow = Core.Nothing
    , impressionsLookbackWindow = Core.Nothing
    , includeAttributedIPConversions = Core.Nothing
    , includeUnattributedCookieConversions = Core.Nothing
    , includeUnattributedIPConversions = Core.Nothing
    , maximumClickInteractions = Core.Nothing
    , maximumImpressionInteractions = Core.Nothing
    , maximumInteractionGap = Core.Nothing
    , pivotOnInteractionPath = Core.Nothing
    }

instance Core.FromJSON
           Report_PathToConversionCriteria_ReportProperties
         where
        parseJSON
          = Core.withObject
              "Report_PathToConversionCriteria_ReportProperties"
              (\ o ->
                 Report_PathToConversionCriteria_ReportProperties
                   Core.<$>
                   (o Core..:? "clicksLookbackWindow") Core.<*>
                     (o Core..:? "impressionsLookbackWindow")
                     Core.<*>
                     (o Core..:? "includeAttributedIPConversions")
                     Core.<*>
                     (o Core..:? "includeUnattributedCookieConversions")
                     Core.<*>
                     (o Core..:? "includeUnattributedIPConversions")
                     Core.<*> (o Core..:? "maximumClickInteractions")
                     Core.<*> (o Core..:? "maximumImpressionInteractions")
                     Core.<*> (o Core..:? "maximumInteractionGap")
                     Core.<*> (o Core..:? "pivotOnInteractionPath"))

instance Core.ToJSON
           Report_PathToConversionCriteria_ReportProperties
         where
        toJSON
          Report_PathToConversionCriteria_ReportProperties{..}
          = Core.object
              (Core.catMaybes
                 [("clicksLookbackWindow" Core..=) Core.<$>
                    clicksLookbackWindow,
                  ("impressionsLookbackWindow" Core..=) Core.<$>
                    impressionsLookbackWindow,
                  ("includeAttributedIPConversions" Core..=) Core.<$>
                    includeAttributedIPConversions,
                  ("includeUnattributedCookieConversions" Core..=)
                    Core.<$> includeUnattributedCookieConversions,
                  ("includeUnattributedIPConversions" Core..=) Core.<$>
                    includeUnattributedIPConversions,
                  ("maximumClickInteractions" Core..=) Core.<$>
                    maximumClickInteractions,
                  ("maximumImpressionInteractions" Core..=) Core.<$>
                    maximumImpressionInteractions,
                  ("maximumInteractionGap" Core..=) Core.<$>
                    maximumInteractionGap,
                  ("pivotOnInteractionPath" Core..=) Core.<$>
                    pivotOnInteractionPath])


-- | The report criteria for a report of type \"REACH\".
--
-- /See:/ 'newReport_ReachCriteria' smart constructor.
data Report_ReachCriteria = Report_ReachCriteria
    {
      -- | Activity group.
      activities :: (Core.Maybe Activities)
      -- | Custom Rich Media Events group.
    , customRichMediaEvents :: (Core.Maybe CustomRichMediaEvents)
      -- | The date range this report should be run for.
    , dateRange :: (Core.Maybe DateRange)
      -- | The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
    , dimensionFilters :: (Core.Maybe [DimensionValue])
      -- | The list of dimensions the report should include.
    , dimensions :: (Core.Maybe [SortedDimension])
      -- | Whether to enable all reach dimension combinations in the report. Defaults to false. If enabled, the date range of the report should be within the last 42 days.
    , enableAllDimensionCombinations :: (Core.Maybe Core.Bool)
      -- | The list of names of metrics the report should include.
    , metricNames :: (Core.Maybe [Core.Text])
      -- | The list of names of Reach By Frequency metrics the report should include.
    , reachByFrequencyMetricNames :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_ReachCriteria' with the minimum fields required to make a request.
newReport_ReachCriteria 
    ::  Report_ReachCriteria
newReport_ReachCriteria =
  Report_ReachCriteria
    { activities = Core.Nothing
    , customRichMediaEvents = Core.Nothing
    , dateRange = Core.Nothing
    , dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , enableAllDimensionCombinations = Core.Nothing
    , metricNames = Core.Nothing
    , reachByFrequencyMetricNames = Core.Nothing
    }

instance Core.FromJSON Report_ReachCriteria where
        parseJSON
          = Core.withObject "Report_ReachCriteria"
              (\ o ->
                 Report_ReachCriteria Core.<$>
                   (o Core..:? "activities") Core.<*>
                     (o Core..:? "customRichMediaEvents")
                     Core.<*> (o Core..:? "dateRange")
                     Core.<*> (o Core..:? "dimensionFilters")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*>
                     (o Core..:? "enableAllDimensionCombinations")
                     Core.<*> (o Core..:? "metricNames")
                     Core.<*> (o Core..:? "reachByFrequencyMetricNames"))

instance Core.ToJSON Report_ReachCriteria where
        toJSON Report_ReachCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("activities" Core..=) Core.<$> activities,
                  ("customRichMediaEvents" Core..=) Core.<$>
                    customRichMediaEvents,
                  ("dateRange" Core..=) Core.<$> dateRange,
                  ("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("enableAllDimensionCombinations" Core..=) Core.<$>
                    enableAllDimensionCombinations,
                  ("metricNames" Core..=) Core.<$> metricNames,
                  ("reachByFrequencyMetricNames" Core..=) Core.<$>
                    reachByFrequencyMetricNames])


-- | The report\'s schedule. Can only be set if the report\'s \'dateRange\' is a relative date range and the relative date range is not \"TODAY\".
--
-- /See:/ 'newReport_Schedule' smart constructor.
data Report_Schedule = Report_Schedule
    {
      -- | Whether the schedule is active or not. Must be set to either true or false.
      active :: (Core.Maybe Core.Bool)
      -- | Defines every how many days, weeks or months the report should be run. Needs to be set when \"repeats\" is either \"DAILY\", \"WEEKLY\" or \"MONTHLY\".
    , every :: (Core.Maybe Core.Int32)
      -- | 
    , expirationDate :: (Core.Maybe Core.Date)
      -- | The interval for which the report is repeated. Note: - \"DAILY\" also requires field \"every\" to be set. - \"WEEKLY\" also requires fields \"every\" and \"repeatsOnWeekDays\" to be set. - \"MONTHLY\" also requires fields \"every\" and \"runsOnDayOfMonth\" to be set.
    , repeats :: (Core.Maybe Core.Text)
      -- | List of week days \"WEEKLY\" on which scheduled reports should run.
    , repeatsOnWeekDays :: (Core.Maybe [Report_Schedule_RepeatsOnWeekDaysItem])
      -- | Enum to define for \"MONTHLY\" scheduled reports whether reports should be repeated on the same day of the month as \"startDate\" or the same day of the week of the month. Example: If \'startDate\' is Monday, April 2nd 2012 (2012-04-02), \"DAY/OF/MONTH\" would run subsequent reports on the 2nd of every Month, and \"WEEK/OF/MONTH\" would run subsequent reports on the first Monday of the month.
    , runsOnDayOfMonth :: (Core.Maybe Report_Schedule_RunsOnDayOfMonth)
      -- | 
    , startDate :: (Core.Maybe Core.Date)
      -- | The timezone when the report will run.
    , timezone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_Schedule' with the minimum fields required to make a request.
newReport_Schedule 
    ::  Report_Schedule
newReport_Schedule =
  Report_Schedule
    { active = Core.Nothing
    , every = Core.Nothing
    , expirationDate = Core.Nothing
    , repeats = Core.Nothing
    , repeatsOnWeekDays = Core.Nothing
    , runsOnDayOfMonth = Core.Nothing
    , startDate = Core.Nothing
    , timezone = Core.Nothing
    }

instance Core.FromJSON Report_Schedule where
        parseJSON
          = Core.withObject "Report_Schedule"
              (\ o ->
                 Report_Schedule Core.<$>
                   (o Core..:? "active") Core.<*> (o Core..:? "every")
                     Core.<*> (o Core..:? "expirationDate")
                     Core.<*> (o Core..:? "repeats")
                     Core.<*> (o Core..:? "repeatsOnWeekDays")
                     Core.<*> (o Core..:? "runsOnDayOfMonth")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "timezone"))

instance Core.ToJSON Report_Schedule where
        toJSON Report_Schedule{..}
          = Core.object
              (Core.catMaybes
                 [("active" Core..=) Core.<$> active,
                  ("every" Core..=) Core.<$> every,
                  ("expirationDate" Core..=) Core.<$> expirationDate,
                  ("repeats" Core..=) Core.<$> repeats,
                  ("repeatsOnWeekDays" Core..=) Core.<$>
                    repeatsOnWeekDays,
                  ("runsOnDayOfMonth" Core..=) Core.<$>
                    runsOnDayOfMonth,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("timezone" Core..=) Core.<$> timezone])


-- | Represents fields that are compatible to be selected for a report of type \"STANDARD\".
--
-- /See:/ 'newReportCompatibleFields' smart constructor.
data ReportCompatibleFields = ReportCompatibleFields
    {
      -- | Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.
      dimensionFilters :: (Core.Maybe [Dimension])
      -- | Dimensions which are compatible to be selected in the \"dimensions\" section of the report.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The kind of resource this is, in this case dfareporting#reportCompatibleFields.
    , kind :: (Core.Maybe Core.Text)
      -- | Metrics which are compatible to be selected in the \"metricNames\" section of the report.
    , metrics :: (Core.Maybe [Metric])
      -- | Metrics which are compatible to be selected as activity metrics to pivot on in the \"activities\" section of the report.
    , pivotedActivityMetrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportCompatibleFields' with the minimum fields required to make a request.
newReportCompatibleFields 
    ::  ReportCompatibleFields
newReportCompatibleFields =
  ReportCompatibleFields
    { dimensionFilters = Core.Nothing
    , dimensions = Core.Nothing
    , kind = Core.Nothing
    , metrics = Core.Nothing
    , pivotedActivityMetrics = Core.Nothing
    }

instance Core.FromJSON ReportCompatibleFields where
        parseJSON
          = Core.withObject "ReportCompatibleFields"
              (\ o ->
                 ReportCompatibleFields Core.<$>
                   (o Core..:? "dimensionFilters") Core.<*>
                     (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "pivotedActivityMetrics"))

instance Core.ToJSON ReportCompatibleFields where
        toJSON ReportCompatibleFields{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionFilters" Core..=) Core.<$>
                    dimensionFilters,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("kind" Core..=) Core.<$> kind,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("pivotedActivityMetrics" Core..=) Core.<$>
                    pivotedActivityMetrics])


-- | Represents the list of reports.
--
-- /See:/ 'newReportList' smart constructor.
data ReportList = ReportList
    {
      -- | The eTag of this response for caching purposes.
      etag :: (Core.Maybe Core.Text)
      -- | The reports returned in this response.
    , items :: (Core.Maybe [Report])
      -- | The kind of list this is, in this case dfareporting#reportList.
    , kind :: (Core.Maybe Core.Text)
      -- | Continuation token used to page through reports. To retrieve the next page of results, set the next request\'s \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportList' with the minimum fields required to make a request.
newReportList 
    ::  ReportList
newReportList =
  ReportList
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ReportList where
        parseJSON
          = Core.withObject "ReportList"
              (\ o ->
                 ReportList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ReportList where
        toJSON ReportList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Reporting Configuration
--
-- /See:/ 'newReportsConfiguration' smart constructor.
data ReportsConfiguration = ReportsConfiguration
    {
      -- | Whether the exposure to conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting.
      exposureToConversionEnabled :: (Core.Maybe Core.Bool)
      -- | Default lookback windows for new advertisers in this account.
    , lookbackConfiguration :: (Core.Maybe LookbackConfiguration)
      -- | Report generation time zone ID of this account. This is a required field that cannot be changed on update. Acceptable values are: - \"1\" for \"America\/New/York\" - \"2\" for \"Europe\/London\" - \"3\" for \"Europe\/Paris\" - \"4\" for \"Africa\/Johannesburg\" - \"5\" for \"Asia\/Jerusalem\" - \"6\" for \"Asia\/Shanghai\" - \"7\" for \"Asia\/Hong/Kong\" - \"8\" for \"Asia\/Tokyo\" - \"9\" for \"Australia\/Sydney\" - \"10\" for \"Asia\/Dubai\" - \"11\" for \"America\/Los/Angeles\" - \"12\" for \"Pacific\/Auckland\" - \"13\" for \"America\/Sao/Paulo\" - \"16\" for \"America\/Asuncion\" - \"17\" for \"America\/Chicago\" - \"18\" for \"America\/Denver\" - \"19\" for \"America\/St/Johns\" - \"20\" for \"Asia\/Dhaka\" - \"21\" for \"Asia\/Jakarta\" - \"22\" for \"Asia\/Kabul\" - \"23\" for \"Asia\/Karachi\" - \"24\" for \"Asia\/Calcutta\" - \"25\" for \"Asia\/Pyongyang\" - \"26\" for \"Asia\/Rangoon\" - \"27\" for \"Atlantic\/Cape/Verde\" - \"28\" for \"Atlantic\/South/Georgia\" - \"29\" for
      -- \"Australia\/Adelaide\" - \"30\" for \"Australia\/Lord/Howe\" - \"31\" for \"Europe\/Moscow\" - \"32\" for \"Pacific\/Kiritimati\" - \"35\" for \"Pacific\/Norfolk\" - \"36\" for \"Pacific\/Tongatapu\"
    , reportGenerationTimeZoneId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportsConfiguration' with the minimum fields required to make a request.
newReportsConfiguration 
    ::  ReportsConfiguration
newReportsConfiguration =
  ReportsConfiguration
    { exposureToConversionEnabled = Core.Nothing
    , lookbackConfiguration = Core.Nothing
    , reportGenerationTimeZoneId = Core.Nothing
    }

instance Core.FromJSON ReportsConfiguration where
        parseJSON
          = Core.withObject "ReportsConfiguration"
              (\ o ->
                 ReportsConfiguration Core.<$>
                   (o Core..:? "exposureToConversionEnabled") Core.<*>
                     (o Core..:? "lookbackConfiguration")
                     Core.<*>
                     (o Core..:? "reportGenerationTimeZoneId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON ReportsConfiguration where
        toJSON ReportsConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("exposureToConversionEnabled" Core..=) Core.<$>
                    exposureToConversionEnabled,
                  ("lookbackConfiguration" Core..=) Core.<$>
                    lookbackConfiguration,
                  ("reportGenerationTimeZoneId" Core..=) Core..
                    Core.AsText
                    Core.<$> reportGenerationTimeZoneId])


-- | Rich Media Exit Override.
--
-- /See:/ 'newRichMediaExitOverride' smart constructor.
data RichMediaExitOverride = RichMediaExitOverride
    {
      -- | Click-through URL of this rich media exit override. Applicable if the enabled field is set to true.
      clickThroughUrl :: (Core.Maybe ClickThroughUrl)
      -- | Whether to use the clickThroughUrl. If false, the creative-level exit will be used.
    , enabled :: (Core.Maybe Core.Bool)
      -- | ID for the override to refer to a specific exit in the creative.
    , exitId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichMediaExitOverride' with the minimum fields required to make a request.
newRichMediaExitOverride 
    ::  RichMediaExitOverride
newRichMediaExitOverride =
  RichMediaExitOverride
    { clickThroughUrl = Core.Nothing
    , enabled = Core.Nothing
    , exitId = Core.Nothing
    }

instance Core.FromJSON RichMediaExitOverride where
        parseJSON
          = Core.withObject "RichMediaExitOverride"
              (\ o ->
                 RichMediaExitOverride Core.<$>
                   (o Core..:? "clickThroughUrl") Core.<*>
                     (o Core..:? "enabled")
                     Core.<*>
                     (o Core..:? "exitId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON RichMediaExitOverride where
        toJSON RichMediaExitOverride{..}
          = Core.object
              (Core.catMaybes
                 [("clickThroughUrl" Core..=) Core.<$>
                    clickThroughUrl,
                  ("enabled" Core..=) Core.<$> enabled,
                  ("exitId" Core..=) Core.. Core.AsText Core.<$>
                    exitId])


-- | A rule associates an asset with a targeting template for asset-level targeting. Applicable to INSTREAM_VIDEO creatives.
--
-- /See:/ 'newRule' smart constructor.
data Rule = Rule
    {
      -- | A creativeAssets[].id. This should refer to one of the parent assets in this creative. This is a required field.
      assetId :: (Core.Maybe Core.Int64)
      -- | A user-friendly name for this rule. This is a required field.
    , name :: (Core.Maybe Core.Text)
      -- | A targeting template ID. The targeting from the targeting template will be used to determine whether this asset should be served. This is a required field.
    , targetingTemplateId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
newRule 
    ::  Rule
newRule =
  Rule
    { assetId = Core.Nothing
    , name = Core.Nothing
    , targetingTemplateId = Core.Nothing
    }

instance Core.FromJSON Rule where
        parseJSON
          = Core.withObject "Rule"
              (\ o ->
                 Rule Core.<$>
                   (o Core..:? "assetId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "targetingTemplateId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Rule where
        toJSON Rule{..}
          = Core.object
              (Core.catMaybes
                 [("assetId" Core..=) Core.. Core.AsText Core.<$>
                    assetId,
                  ("name" Core..=) Core.<$> name,
                  ("targetingTemplateId" Core..=) Core.. Core.AsText
                    Core.<$> targetingTemplateId])


-- | Contains properties of a site.
--
-- /See:/ 'newSite' smart constructor.
data Site = Site
    {
      -- | Account ID of this site. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Optional. Ad serving platform ID to identify the ad serving platform used by the site. Measurement partners can use this field to add ad-server specific macros. If set, this value acts as the default during placement creation. Possible values are: * @1@, Adelphic * @2@, Adform * @3@, Adobe * @4@, Amobee * @5@, Basis (Centro) * @6@, Beeswax * @7@, Amazon * @8@, DV360 (DBM) * @9@, Innovid * @10@, MediaMath * @11@, Roku OneView DSP * @12@, TabMo Hawk * @13@, The Trade Desk * @14@, Xandr Invest DSP * @15@, Yahoo DSP * @16@, Zeta Global * @17@, Scaleout * @18@, Bidtellect * @19@, Unicorn * @20@, Teads * @21@, Quantcast * @22@, Cognitiv
    , adServingPlatformId :: (Core.Maybe Core.Int64)
      -- | Whether this site is approved.
    , approved :: (Core.Maybe Core.Bool)
      -- | Directory site associated with this site. This is a required field that is read-only after insertion.
    , directorySiteId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
    , directorySiteIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | ID of this site. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of this site. This is a read-only, auto-generated field.
    , idDimensionValue :: (Core.Maybe DimensionValue)
      -- | Key name of this site. This is a read-only, auto-generated field.
    , keyName :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#site\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this site.This is a required field. Must be less than 128 characters long. If this site is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this site is a top-level site, and the name must be unique among top-level sites of the same account.
    , name :: (Core.Maybe Core.Text)
      -- | Site contacts.
    , siteContacts :: (Core.Maybe [SiteContact])
      -- | Site-wide settings.
    , siteSettings :: (Core.Maybe SiteSettings)
      -- | Subaccount ID of this site. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Default video settings for new placements created under this site. This value will be used to populate the placements.videoSettings field, when no value is specified for the new placement.
    , videoSettings :: (Core.Maybe SiteVideoSettings)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Site' with the minimum fields required to make a request.
newSite 
    ::  Site
newSite =
  Site
    { accountId = Core.Nothing
    , adServingPlatformId = Core.Nothing
    , approved = Core.Nothing
    , directorySiteId = Core.Nothing
    , directorySiteIdDimensionValue = Core.Nothing
    , id = Core.Nothing
    , idDimensionValue = Core.Nothing
    , keyName = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , siteContacts = Core.Nothing
    , siteSettings = Core.Nothing
    , subaccountId = Core.Nothing
    , videoSettings = Core.Nothing
    }

instance Core.FromJSON Site where
        parseJSON
          = Core.withObject "Site"
              (\ o ->
                 Site Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "adServingPlatformId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "approved")
                     Core.<*>
                     (o Core..:? "directorySiteId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "directorySiteIdDimensionValue")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "idDimensionValue")
                     Core.<*> (o Core..:? "keyName")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "siteContacts")
                     Core.<*> (o Core..:? "siteSettings")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "videoSettings"))

instance Core.ToJSON Site where
        toJSON Site{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("adServingPlatformId" Core..=) Core.. Core.AsText
                    Core.<$> adServingPlatformId,
                  ("approved" Core..=) Core.<$> approved,
                  ("directorySiteId" Core..=) Core.. Core.AsText
                    Core.<$> directorySiteId,
                  ("directorySiteIdDimensionValue" Core..=) Core.<$>
                    directorySiteIdDimensionValue,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("idDimensionValue" Core..=) Core.<$>
                    idDimensionValue,
                  ("keyName" Core..=) Core.<$> keyName,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("siteContacts" Core..=) Core.<$> siteContacts,
                  ("siteSettings" Core..=) Core.<$> siteSettings,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("videoSettings" Core..=) Core.<$> videoSettings])


-- | Companion Settings
--
-- /See:/ 'newSiteCompanionSetting' smart constructor.
data SiteCompanionSetting = SiteCompanionSetting
    {
      -- | Whether companions are disabled for this site template.
      companionsDisabled :: (Core.Maybe Core.Bool)
      -- | Allowlist of companion sizes to be served via this site template. Set this list to null or empty to serve all companion sizes.
    , enabledSizes :: (Core.Maybe [Size])
      -- | Whether to serve only static images as companions.
    , imageOnly :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteCompanionSetting\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteCompanionSetting' with the minimum fields required to make a request.
newSiteCompanionSetting 
    ::  SiteCompanionSetting
newSiteCompanionSetting =
  SiteCompanionSetting
    { companionsDisabled = Core.Nothing
    , enabledSizes = Core.Nothing
    , imageOnly = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON SiteCompanionSetting where
        parseJSON
          = Core.withObject "SiteCompanionSetting"
              (\ o ->
                 SiteCompanionSetting Core.<$>
                   (o Core..:? "companionsDisabled") Core.<*>
                     (o Core..:? "enabledSizes")
                     Core.<*> (o Core..:? "imageOnly")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON SiteCompanionSetting where
        toJSON SiteCompanionSetting{..}
          = Core.object
              (Core.catMaybes
                 [("companionsDisabled" Core..=) Core.<$>
                    companionsDisabled,
                  ("enabledSizes" Core..=) Core.<$> enabledSizes,
                  ("imageOnly" Core..=) Core.<$> imageOnly,
                  ("kind" Core..=) Core.<$> kind])


-- | Site Contact
--
-- /See:/ 'newSiteContact' smart constructor.
data SiteContact = SiteContact
    {
      -- | Address of this site contact.
      address :: (Core.Maybe Core.Text)
      -- | Site contact type.
    , contactType :: (Core.Maybe SiteContact_ContactType)
      -- | Email address of this site contact. This is a required field.
    , email :: (Core.Maybe Core.Text)
      -- | First name of this site contact.
    , firstName :: (Core.Maybe Core.Text)
      -- | ID of this site contact. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Last name of this site contact.
    , lastName :: (Core.Maybe Core.Text)
      -- | Primary phone number of this site contact.
    , phone :: (Core.Maybe Core.Text)
      -- | Title or designation of this site contact.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteContact' with the minimum fields required to make a request.
newSiteContact 
    ::  SiteContact
newSiteContact =
  SiteContact
    { address = Core.Nothing
    , contactType = Core.Nothing
    , email = Core.Nothing
    , firstName = Core.Nothing
    , id = Core.Nothing
    , lastName = Core.Nothing
    , phone = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON SiteContact where
        parseJSON
          = Core.withObject "SiteContact"
              (\ o ->
                 SiteContact Core.<$>
                   (o Core..:? "address") Core.<*>
                     (o Core..:? "contactType")
                     Core.<*> (o Core..:? "email")
                     Core.<*> (o Core..:? "firstName")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "lastName")
                     Core.<*> (o Core..:? "phone")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON SiteContact where
        toJSON SiteContact{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("contactType" Core..=) Core.<$> contactType,
                  ("email" Core..=) Core.<$> email,
                  ("firstName" Core..=) Core.<$> firstName,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("lastName" Core..=) Core.<$> lastName,
                  ("phone" Core..=) Core.<$> phone,
                  ("title" Core..=) Core.<$> title])


-- | Site Settings
--
-- /See:/ 'newSiteSettings' smart constructor.
data SiteSettings = SiteSettings
    {
      -- | Whether active view creatives are disabled for this site.
      activeViewOptOut :: (Core.Maybe Core.Bool)
      -- | Whether this site opts out of ad blocking. When true, ad blocking is disabled for all placements under the site, regardless of the individual placement settings. When false, the campaign and placement settings take effect.
    , adBlockingOptOut :: (Core.Maybe Core.Bool)
      -- | Whether new cookies are disabled for this site.
    , disableNewCookie :: (Core.Maybe Core.Bool)
      -- | Configuration settings for dynamic and image floodlight tags.
    , tagSetting :: (Core.Maybe TagSetting)
      -- | Whether Verification and ActiveView for in-stream video creatives are disabled by default for new placements created under this site. This value will be used to populate the placement.videoActiveViewOptOut field, when no value is specified for the new placement.
    , videoActiveViewOptOutTemplate :: (Core.Maybe Core.Bool)
      -- | Default VPAID adapter setting for new placements created under this site. This value will be used to populate the placements.vpaidAdapterChoice field, when no value is specified for the new placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to the placement. The publisher\'s specifications will typically determine this setting. For VPAID creatives, the adapter format will match the VPAID format (HTML5 VPAID creatives use the HTML5 adapter). /Note:/ Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.
    , vpaidAdapterChoiceTemplate :: (Core.Maybe SiteSettings_VpaidAdapterChoiceTemplate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteSettings' with the minimum fields required to make a request.
newSiteSettings 
    ::  SiteSettings
newSiteSettings =
  SiteSettings
    { activeViewOptOut = Core.Nothing
    , adBlockingOptOut = Core.Nothing
    , disableNewCookie = Core.Nothing
    , tagSetting = Core.Nothing
    , videoActiveViewOptOutTemplate = Core.Nothing
    , vpaidAdapterChoiceTemplate = Core.Nothing
    }

instance Core.FromJSON SiteSettings where
        parseJSON
          = Core.withObject "SiteSettings"
              (\ o ->
                 SiteSettings Core.<$>
                   (o Core..:? "activeViewOptOut") Core.<*>
                     (o Core..:? "adBlockingOptOut")
                     Core.<*> (o Core..:? "disableNewCookie")
                     Core.<*> (o Core..:? "tagSetting")
                     Core.<*> (o Core..:? "videoActiveViewOptOutTemplate")
                     Core.<*> (o Core..:? "vpaidAdapterChoiceTemplate"))

instance Core.ToJSON SiteSettings where
        toJSON SiteSettings{..}
          = Core.object
              (Core.catMaybes
                 [("activeViewOptOut" Core..=) Core.<$>
                    activeViewOptOut,
                  ("adBlockingOptOut" Core..=) Core.<$>
                    adBlockingOptOut,
                  ("disableNewCookie" Core..=) Core.<$>
                    disableNewCookie,
                  ("tagSetting" Core..=) Core.<$> tagSetting,
                  ("videoActiveViewOptOutTemplate" Core..=) Core.<$>
                    videoActiveViewOptOutTemplate,
                  ("vpaidAdapterChoiceTemplate" Core..=) Core.<$>
                    vpaidAdapterChoiceTemplate])


-- | Skippable Settings
--
-- /See:/ 'newSiteSkippableSetting' smart constructor.
data SiteSkippableSetting = SiteSkippableSetting
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteSkippableSetting\".
      kind :: (Core.Maybe Core.Text)
      -- | Amount of time to play videos served to this site template before counting a view. Applicable when skippable is true.
    , progressOffset :: (Core.Maybe VideoOffset)
      -- | Amount of time to play videos served to this site before the skip button should appear. Applicable when skippable is true.
    , skipOffset :: (Core.Maybe VideoOffset)
      -- | Whether the user can skip creatives served to this site. This will act as default for new placements created under this site.
    , skippable :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteSkippableSetting' with the minimum fields required to make a request.
newSiteSkippableSetting 
    ::  SiteSkippableSetting
newSiteSkippableSetting =
  SiteSkippableSetting
    { kind = Core.Nothing
    , progressOffset = Core.Nothing
    , skipOffset = Core.Nothing
    , skippable = Core.Nothing
    }

instance Core.FromJSON SiteSkippableSetting where
        parseJSON
          = Core.withObject "SiteSkippableSetting"
              (\ o ->
                 SiteSkippableSetting Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "progressOffset")
                     Core.<*> (o Core..:? "skipOffset")
                     Core.<*> (o Core..:? "skippable"))

instance Core.ToJSON SiteSkippableSetting where
        toJSON SiteSkippableSetting{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("progressOffset" Core..=) Core.<$> progressOffset,
                  ("skipOffset" Core..=) Core.<$> skipOffset,
                  ("skippable" Core..=) Core.<$> skippable])


-- | Transcode Settings
--
-- /See:/ 'newSiteTranscodeSetting' smart constructor.
data SiteTranscodeSetting = SiteTranscodeSetting
    {
      -- | Allowlist of video formats to be served to this site template. Set this list to null or empty to serve all video formats.
      enabledVideoFormats :: (Core.Maybe [Core.Int32])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteTranscodeSetting\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteTranscodeSetting' with the minimum fields required to make a request.
newSiteTranscodeSetting 
    ::  SiteTranscodeSetting
newSiteTranscodeSetting =
  SiteTranscodeSetting {enabledVideoFormats = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON SiteTranscodeSetting where
        parseJSON
          = Core.withObject "SiteTranscodeSetting"
              (\ o ->
                 SiteTranscodeSetting Core.<$>
                   (o Core..:? "enabledVideoFormats") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON SiteTranscodeSetting where
        toJSON SiteTranscodeSetting{..}
          = Core.object
              (Core.catMaybes
                 [("enabledVideoFormats" Core..=) Core.<$>
                    enabledVideoFormats,
                  ("kind" Core..=) Core.<$> kind])


-- | Video Settings
--
-- /See:/ 'newSiteVideoSettings' smart constructor.
data SiteVideoSettings = SiteVideoSettings
    {
      -- | Settings for the companion creatives of video creatives served to this site.
      companionSettings :: (Core.Maybe SiteCompanionSetting)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteVideoSettings\".
    , kind :: (Core.Maybe Core.Text)
      -- | Whether OBA icons are enabled for this placement.
    , obaEnabled :: (Core.Maybe Core.Bool)
      -- | Settings for the OBA icon of video creatives served to this site. This will act as default for new placements created under this site.
    , obaSettings :: (Core.Maybe ObaIcon)
      -- | Orientation of a site template used for video. This will act as default for new placements created under this site.
    , orientation :: (Core.Maybe SiteVideoSettings_Orientation)
      -- | Publisher specification ID used to identify site-associated publisher requirements and automatically populate transcode settings. If publisher specification ID is specified, it will take precedence over transcode settings. Possible values are: * @1@, Hulu * @2@, NBC * @3@, CBS * @4@, CBS Desktop * @5@, Discovery * @6@, VEVO HD * @7@, VEVO Vertical * @8@, Fox * @9@, CW Network * @10@, Disney * @11@, IGN * @12@, NFL.com * @13@, Turner Broadcasting * @14@, Tubi on Fox * @15@, Hearst Corporation * @16@, Twitch Desktop * @17@, ABC * @18@, Univision * @19@, MLB.com * @20@, MLB.com Mobile * @21@, MLB.com OTT * @22@, Polsat * @23@, TVN * @24@, Mediaset * @25@, Antena 3 * @26@, Mediamond * @27@, Sky Italia * @28@, Tubi on CBS * @29@, Spotify * @30@, Paramount * @31@, Max
    , publisherSpecificationId :: (Core.Maybe Core.Int64)
      -- | Settings for the skippability of video creatives served to this site. This will act as default for new placements created under this site.
    , skippableSettings :: (Core.Maybe SiteSkippableSetting)
      -- | Settings for the transcodes of video creatives served to this site. This will act as default for new placements created under this site.
    , transcodeSettings :: (Core.Maybe SiteTranscodeSetting)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVideoSettings' with the minimum fields required to make a request.
newSiteVideoSettings 
    ::  SiteVideoSettings
newSiteVideoSettings =
  SiteVideoSettings
    { companionSettings = Core.Nothing
    , kind = Core.Nothing
    , obaEnabled = Core.Nothing
    , obaSettings = Core.Nothing
    , orientation = Core.Nothing
    , publisherSpecificationId = Core.Nothing
    , skippableSettings = Core.Nothing
    , transcodeSettings = Core.Nothing
    }

instance Core.FromJSON SiteVideoSettings where
        parseJSON
          = Core.withObject "SiteVideoSettings"
              (\ o ->
                 SiteVideoSettings Core.<$>
                   (o Core..:? "companionSettings") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "obaEnabled")
                     Core.<*> (o Core..:? "obaSettings")
                     Core.<*> (o Core..:? "orientation")
                     Core.<*>
                     (o Core..:? "publisherSpecificationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "skippableSettings")
                     Core.<*> (o Core..:? "transcodeSettings"))

instance Core.ToJSON SiteVideoSettings where
        toJSON SiteVideoSettings{..}
          = Core.object
              (Core.catMaybes
                 [("companionSettings" Core..=) Core.<$>
                    companionSettings,
                  ("kind" Core..=) Core.<$> kind,
                  ("obaEnabled" Core..=) Core.<$> obaEnabled,
                  ("obaSettings" Core..=) Core.<$> obaSettings,
                  ("orientation" Core..=) Core.<$> orientation,
                  ("publisherSpecificationId" Core..=) Core..
                    Core.AsText
                    Core.<$> publisherSpecificationId,
                  ("skippableSettings" Core..=) Core.<$>
                    skippableSettings,
                  ("transcodeSettings" Core..=) Core.<$>
                    transcodeSettings])


-- | Site List Response
--
-- /See:/ 'newSitesListResponse' smart constructor.
data SitesListResponse = SitesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#sitesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Site collection.
    , sites :: (Core.Maybe [Site])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
newSitesListResponse 
    ::  SitesListResponse
newSitesListResponse =
  SitesListResponse
    {kind = Core.Nothing, nextPageToken = Core.Nothing, sites = Core.Nothing}

instance Core.FromJSON SitesListResponse where
        parseJSON
          = Core.withObject "SitesListResponse"
              (\ o ->
                 SitesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "sites"))

instance Core.ToJSON SitesListResponse where
        toJSON SitesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("sites" Core..=) Core.<$> sites])


-- | Represents the dimensions of ads, placements, creatives, or creative assets.
--
-- /See:/ 'newSize' smart constructor.
data Size = Size
    {
      -- | Height of this size. Acceptable values are 0 to 32767, inclusive.
      height :: (Core.Maybe Core.Int32)
      -- | IAB standard size. This is a read-only, auto-generated field.
    , iab :: (Core.Maybe Core.Bool)
      -- | ID of this size. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#size\".
    , kind :: (Core.Maybe Core.Text)
      -- | Width of this size. Acceptable values are 0 to 32767, inclusive.
    , width :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
newSize 
    ::  Size
newSize =
  Size
    { height = Core.Nothing
    , iab = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON Size where
        parseJSON
          = Core.withObject "Size"
              (\ o ->
                 Size Core.<$>
                   (o Core..:? "height") Core.<*> (o Core..:? "iab")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON Size where
        toJSON Size{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("iab" Core..=) Core.<$> iab,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("width" Core..=) Core.<$> width])


-- | Size List Response
--
-- /See:/ 'newSizesListResponse' smart constructor.
data SizesListResponse = SizesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#sizesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Size collection.
    , sizes :: (Core.Maybe [Size])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SizesListResponse' with the minimum fields required to make a request.
newSizesListResponse 
    ::  SizesListResponse
newSizesListResponse =
  SizesListResponse {kind = Core.Nothing, sizes = Core.Nothing}

instance Core.FromJSON SizesListResponse where
        parseJSON
          = Core.withObject "SizesListResponse"
              (\ o ->
                 SizesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "sizes"))

instance Core.ToJSON SizesListResponse where
        toJSON SizesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("sizes" Core..=) Core.<$> sizes])


-- | Skippable Settings
--
-- /See:/ 'newSkippableSetting' smart constructor.
data SkippableSetting = SkippableSetting
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#skippableSetting\".
      kind :: (Core.Maybe Core.Text)
      -- | Amount of time to play videos served to this placement before counting a view. Applicable when skippable is true.
    , progressOffset :: (Core.Maybe VideoOffset)
      -- | Amount of time to play videos served to this placement before the skip button should appear. Applicable when skippable is true.
    , skipOffset :: (Core.Maybe VideoOffset)
      -- | Whether the user can skip creatives served to this placement.
    , skippable :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SkippableSetting' with the minimum fields required to make a request.
newSkippableSetting 
    ::  SkippableSetting
newSkippableSetting =
  SkippableSetting
    { kind = Core.Nothing
    , progressOffset = Core.Nothing
    , skipOffset = Core.Nothing
    , skippable = Core.Nothing
    }

instance Core.FromJSON SkippableSetting where
        parseJSON
          = Core.withObject "SkippableSetting"
              (\ o ->
                 SkippableSetting Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "progressOffset")
                     Core.<*> (o Core..:? "skipOffset")
                     Core.<*> (o Core..:? "skippable"))

instance Core.ToJSON SkippableSetting where
        toJSON SkippableSetting{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("progressOffset" Core..=) Core.<$> progressOffset,
                  ("skipOffset" Core..=) Core.<$> skipOffset,
                  ("skippable" Core..=) Core.<$> skippable])


-- | Represents a sorted dimension.
--
-- /See:/ 'newSortedDimension' smart constructor.
data SortedDimension = SortedDimension
    {
      -- | The kind of resource this is, in this case dfareporting#sortedDimension.
      kind :: (Core.Maybe Core.Text)
      -- | The name of the dimension.
    , name :: (Core.Maybe Core.Text)
      -- | An optional sort order for the dimension column.
    , sortOrder :: (Core.Maybe SortedDimension_SortOrder)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SortedDimension' with the minimum fields required to make a request.
newSortedDimension 
    ::  SortedDimension
newSortedDimension =
  SortedDimension
    {kind = Core.Nothing, name = Core.Nothing, sortOrder = Core.Nothing}

instance Core.FromJSON SortedDimension where
        parseJSON
          = Core.withObject "SortedDimension"
              (\ o ->
                 SortedDimension Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sortOrder"))

instance Core.ToJSON SortedDimension where
        toJSON SortedDimension{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("sortOrder" Core..=) Core.<$> sortOrder])


-- | Contains properties of a Campaign Manager subaccount.
--
-- /See:/ 'newSubaccount' smart constructor.
data Subaccount = Subaccount
    {
      -- | ID of the account that contains this subaccount. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | IDs of the available user role permissions for this subaccount.
    , availablePermissionIds :: (Core.Maybe [Core.Int64])
      -- | ID of this subaccount. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#subaccount\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this subaccount. This is a required field. Must be less than 128 characters long and be unique among subaccounts of the same account.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subaccount' with the minimum fields required to make a request.
newSubaccount 
    ::  Subaccount
newSubaccount =
  Subaccount
    { accountId = Core.Nothing
    , availablePermissionIds = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Subaccount where
        parseJSON
          = Core.withObject "Subaccount"
              (\ o ->
                 Subaccount Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "availablePermissionIds" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Subaccount where
        toJSON Subaccount{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("availablePermissionIds" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> availablePermissionIds,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Subaccount List Response
--
-- /See:/ 'newSubaccountsListResponse' smart constructor.
data SubaccountsListResponse = SubaccountsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#subaccountsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Subaccount collection.
    , subaccounts :: (Core.Maybe [Subaccount])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubaccountsListResponse' with the minimum fields required to make a request.
newSubaccountsListResponse 
    ::  SubaccountsListResponse
newSubaccountsListResponse =
  SubaccountsListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , subaccounts = Core.Nothing
    }

instance Core.FromJSON SubaccountsListResponse where
        parseJSON
          = Core.withObject "SubaccountsListResponse"
              (\ o ->
                 SubaccountsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "subaccounts"))

instance Core.ToJSON SubaccountsListResponse where
        toJSON SubaccountsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("subaccounts" Core..=) Core.<$> subaccounts])


-- | Placement Tag Data
--
-- /See:/ 'newTagData' smart constructor.
data TagData = TagData
    {
      -- | Ad associated with this placement tag. Applicable only when format is PLACEMENT/TAG/TRACKING.
      adId :: (Core.Maybe Core.Int64)
      -- | Tag string to record a click.
    , clickTag :: (Core.Maybe Core.Text)
      -- | Creative associated with this placement tag. Applicable only when format is PLACEMENT/TAG/TRACKING.
    , creativeId :: (Core.Maybe Core.Int64)
      -- | TagData tag format of this tag.
    , format :: (Core.Maybe TagData_Format)
      -- | Tag string for serving an ad.
    , impressionTag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagData' with the minimum fields required to make a request.
newTagData 
    ::  TagData
newTagData =
  TagData
    { adId = Core.Nothing
    , clickTag = Core.Nothing
    , creativeId = Core.Nothing
    , format = Core.Nothing
    , impressionTag = Core.Nothing
    }

instance Core.FromJSON TagData where
        parseJSON
          = Core.withObject "TagData"
              (\ o ->
                 TagData Core.<$>
                   (o Core..:? "adId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "clickTag")
                     Core.<*>
                     (o Core..:? "creativeId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "format")
                     Core.<*> (o Core..:? "impressionTag"))

instance Core.ToJSON TagData where
        toJSON TagData{..}
          = Core.object
              (Core.catMaybes
                 [("adId" Core..=) Core.. Core.AsText Core.<$> adId,
                  ("clickTag" Core..=) Core.<$> clickTag,
                  ("creativeId" Core..=) Core.. Core.AsText Core.<$>
                    creativeId,
                  ("format" Core..=) Core.<$> format,
                  ("impressionTag" Core..=) Core.<$> impressionTag])


-- | Tag Settings
--
-- /See:/ 'newTagSetting' smart constructor.
data TagSetting = TagSetting
    {
      -- | Additional key-values to be included in tags. Each key-value pair must be of the form key=value, and pairs must be separated by a semicolon (;). Keys and values must not contain commas. For example, id=2;color=red is a valid value for this field.
      additionalKeyValues :: (Core.Maybe Core.Text)
      -- | Whether static landing page URLs should be included in the tags. New placements will default to the value set on their site.
    , includeClickThroughUrls :: (Core.Maybe Core.Bool)
      -- | Whether click-tracking string should be included in the tags.
    , includeClickTracking :: (Core.Maybe Core.Bool)
      -- | Option specifying how keywords are embedded in ad tags. This setting can be used to specify whether keyword placeholders are inserted in placement tags for this site. Publishers can then add keywords to those placeholders.
    , keywordOption :: (Core.Maybe TagSetting_KeywordOption)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagSetting' with the minimum fields required to make a request.
newTagSetting 
    ::  TagSetting
newTagSetting =
  TagSetting
    { additionalKeyValues = Core.Nothing
    , includeClickThroughUrls = Core.Nothing
    , includeClickTracking = Core.Nothing
    , keywordOption = Core.Nothing
    }

instance Core.FromJSON TagSetting where
        parseJSON
          = Core.withObject "TagSetting"
              (\ o ->
                 TagSetting Core.<$>
                   (o Core..:? "additionalKeyValues") Core.<*>
                     (o Core..:? "includeClickThroughUrls")
                     Core.<*> (o Core..:? "includeClickTracking")
                     Core.<*> (o Core..:? "keywordOption"))

instance Core.ToJSON TagSetting where
        toJSON TagSetting{..}
          = Core.object
              (Core.catMaybes
                 [("additionalKeyValues" Core..=) Core.<$>
                    additionalKeyValues,
                  ("includeClickThroughUrls" Core..=) Core.<$>
                    includeClickThroughUrls,
                  ("includeClickTracking" Core..=) Core.<$>
                    includeClickTracking,
                  ("keywordOption" Core..=) Core.<$> keywordOption])


-- | Dynamic and Image Tag Settings.
--
-- /See:/ 'newTagSettings' smart constructor.
data TagSettings = TagSettings
    {
      -- | Whether dynamic floodlight tags are enabled.
      dynamicTagEnabled :: (Core.Maybe Core.Bool)
      -- | Whether image tags are enabled.
    , imageTagEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagSettings' with the minimum fields required to make a request.
newTagSettings 
    ::  TagSettings
newTagSettings =
  TagSettings {dynamicTagEnabled = Core.Nothing, imageTagEnabled = Core.Nothing}

instance Core.FromJSON TagSettings where
        parseJSON
          = Core.withObject "TagSettings"
              (\ o ->
                 TagSettings Core.<$>
                   (o Core..:? "dynamicTagEnabled") Core.<*>
                     (o Core..:? "imageTagEnabled"))

instance Core.ToJSON TagSettings where
        toJSON TagSettings{..}
          = Core.object
              (Core.catMaybes
                 [("dynamicTagEnabled" Core..=) Core.<$>
                    dynamicTagEnabled,
                  ("imageTagEnabled" Core..=) Core.<$>
                    imageTagEnabled])


-- | Target Window.
--
-- /See:/ 'newTargetWindow' smart constructor.
data TargetWindow = TargetWindow
    {
      -- | User-entered value.
      customHtml :: (Core.Maybe Core.Text)
      -- | Type of browser window for which the backup image of the flash creative can be displayed.
    , targetWindowOption :: (Core.Maybe TargetWindow_TargetWindowOption)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetWindow' with the minimum fields required to make a request.
newTargetWindow 
    ::  TargetWindow
newTargetWindow =
  TargetWindow {customHtml = Core.Nothing, targetWindowOption = Core.Nothing}

instance Core.FromJSON TargetWindow where
        parseJSON
          = Core.withObject "TargetWindow"
              (\ o ->
                 TargetWindow Core.<$>
                   (o Core..:? "customHtml") Core.<*>
                     (o Core..:? "targetWindowOption"))

instance Core.ToJSON TargetWindow where
        toJSON TargetWindow{..}
          = Core.object
              (Core.catMaybes
                 [("customHtml" Core..=) Core.<$> customHtml,
                  ("targetWindowOption" Core..=) Core.<$>
                    targetWindowOption])


-- | Contains properties of a targetable remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource is a read-only view of a remarketing list to be used to facilitate targeting ads to specific lists. Remarketing lists that are owned by your advertisers and those that are shared to your advertisers or account are accessible via this resource. To manage remarketing lists that are owned by your advertisers, use the RemarketingLists resource.
--
-- /See:/ 'newTargetableRemarketingList' smart constructor.
data TargetableRemarketingList = TargetableRemarketingList
    {
      -- | Account ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this targetable remarketing list is active.
    , active :: (Core.Maybe Core.Bool)
      -- | Dimension value for the advertiser ID that owns this targetable remarketing list.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Targetable remarketing list description.
    , description :: (Core.Maybe Core.Text)
      -- | Targetable remarketing list ID.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetableRemarketingList\".
    , kind :: (Core.Maybe Core.Text)
      -- | Number of days that a user should remain in the targetable remarketing list without an impression.
    , lifeSpan :: (Core.Maybe Core.Int64)
      -- | Number of users currently in the list. This is a read-only field.
    , listSize :: (Core.Maybe Core.Int64)
      -- | Product from which this targetable remarketing list was originated.
    , listSource :: (Core.Maybe TargetableRemarketingList_ListSource)
      -- | Name of the targetable remarketing list. Is no greater than 128 characters long.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetableRemarketingList' with the minimum fields required to make a request.
newTargetableRemarketingList 
    ::  TargetableRemarketingList
newTargetableRemarketingList =
  TargetableRemarketingList
    { accountId = Core.Nothing
    , active = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , description = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , lifeSpan = Core.Nothing
    , listSize = Core.Nothing
    , listSource = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON TargetableRemarketingList
         where
        parseJSON
          = Core.withObject "TargetableRemarketingList"
              (\ o ->
                 TargetableRemarketingList Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "active")
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "description")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "lifeSpan" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "listSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "listSource")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON TargetableRemarketingList where
        toJSON TargetableRemarketingList{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("active" Core..=) Core.<$> active,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("lifeSpan" Core..=) Core.. Core.AsText Core.<$>
                    lifeSpan,
                  ("listSize" Core..=) Core.. Core.AsText Core.<$>
                    listSize,
                  ("listSource" Core..=) Core.<$> listSource,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Targetable remarketing list response
--
-- /See:/ 'newTargetableRemarketingListsListResponse' smart constructor.
data TargetableRemarketingListsListResponse = TargetableRemarketingListsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetableRemarketingListsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Targetable remarketing list collection.
    , targetableRemarketingLists :: (Core.Maybe [TargetableRemarketingList])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetableRemarketingListsListResponse' with the minimum fields required to make a request.
newTargetableRemarketingListsListResponse 
    ::  TargetableRemarketingListsListResponse
newTargetableRemarketingListsListResponse =
  TargetableRemarketingListsListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , targetableRemarketingLists = Core.Nothing
    }

instance Core.FromJSON
           TargetableRemarketingListsListResponse
         where
        parseJSON
          = Core.withObject
              "TargetableRemarketingListsListResponse"
              (\ o ->
                 TargetableRemarketingListsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "targetableRemarketingLists"))

instance Core.ToJSON
           TargetableRemarketingListsListResponse
         where
        toJSON TargetableRemarketingListsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("targetableRemarketingLists" Core..=) Core.<$>
                    targetableRemarketingLists])


-- | Contains properties of a targeting template. A targeting template encapsulates targeting information which can be reused across multiple ads.
--
-- /See:/ 'newTargetingTemplate' smart constructor.
data TargetingTemplate = TargetingTemplate
    {
      -- | Account ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert.
      accountId :: (Core.Maybe Core.Int64)
      -- | Advertiser ID of this targeting template. This is a required field on insert and is read-only after insert.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
    , advertiserIdDimensionValue :: (Core.Maybe DimensionValue)
      -- | Time and day targeting criteria.
    , dayPartTargeting :: (Core.Maybe DayPartTargeting)
      -- | Geographical targeting criteria.
    , geoTargeting :: (Core.Maybe GeoTargeting)
      -- | ID of this targeting template. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Key-value targeting criteria.
    , keyValueTargetingExpression :: (Core.Maybe KeyValueTargetingExpression)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetingTemplate\".
    , kind :: (Core.Maybe Core.Text)
      -- | Language targeting criteria.
    , languageTargeting :: (Core.Maybe LanguageTargeting)
      -- | Remarketing list targeting criteria.
    , listTargetingExpression :: (Core.Maybe ListTargetingExpression)
      -- | Name of this targeting template. This field is required. It must be less than 256 characters long and unique within an advertiser.
    , name :: (Core.Maybe Core.Text)
      -- | Subaccount ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Technology platform targeting criteria.
    , technologyTargeting :: (Core.Maybe TechnologyTargeting)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingTemplate' with the minimum fields required to make a request.
newTargetingTemplate 
    ::  TargetingTemplate
newTargetingTemplate =
  TargetingTemplate
    { accountId = Core.Nothing
    , advertiserId = Core.Nothing
    , advertiserIdDimensionValue = Core.Nothing
    , dayPartTargeting = Core.Nothing
    , geoTargeting = Core.Nothing
    , id = Core.Nothing
    , keyValueTargetingExpression = Core.Nothing
    , kind = Core.Nothing
    , languageTargeting = Core.Nothing
    , listTargetingExpression = Core.Nothing
    , name = Core.Nothing
    , subaccountId = Core.Nothing
    , technologyTargeting = Core.Nothing
    }

instance Core.FromJSON TargetingTemplate where
        parseJSON
          = Core.withObject "TargetingTemplate"
              (\ o ->
                 TargetingTemplate Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "advertiserId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "advertiserIdDimensionValue")
                     Core.<*> (o Core..:? "dayPartTargeting")
                     Core.<*> (o Core..:? "geoTargeting")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "keyValueTargetingExpression")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "languageTargeting")
                     Core.<*> (o Core..:? "listTargetingExpression")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "technologyTargeting"))

instance Core.ToJSON TargetingTemplate where
        toJSON TargetingTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("advertiserId" Core..=) Core.. Core.AsText Core.<$>
                    advertiserId,
                  ("advertiserIdDimensionValue" Core..=) Core.<$>
                    advertiserIdDimensionValue,
                  ("dayPartTargeting" Core..=) Core.<$>
                    dayPartTargeting,
                  ("geoTargeting" Core..=) Core.<$> geoTargeting,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("keyValueTargetingExpression" Core..=) Core.<$>
                    keyValueTargetingExpression,
                  ("kind" Core..=) Core.<$> kind,
                  ("languageTargeting" Core..=) Core.<$>
                    languageTargeting,
                  ("listTargetingExpression" Core..=) Core.<$>
                    listTargetingExpression,
                  ("name" Core..=) Core.<$> name,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId,
                  ("technologyTargeting" Core..=) Core.<$>
                    technologyTargeting])


-- | Targeting Template List Response
--
-- /See:/ 'newTargetingTemplatesListResponse' smart constructor.
data TargetingTemplatesListResponse = TargetingTemplatesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetingTemplatesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Targeting template collection.
    , targetingTemplates :: (Core.Maybe [TargetingTemplate])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingTemplatesListResponse' with the minimum fields required to make a request.
newTargetingTemplatesListResponse 
    ::  TargetingTemplatesListResponse
newTargetingTemplatesListResponse =
  TargetingTemplatesListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , targetingTemplates = Core.Nothing
    }

instance Core.FromJSON TargetingTemplatesListResponse
         where
        parseJSON
          = Core.withObject "TargetingTemplatesListResponse"
              (\ o ->
                 TargetingTemplatesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "targetingTemplates"))

instance Core.ToJSON TargetingTemplatesListResponse
         where
        toJSON TargetingTemplatesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("targetingTemplates" Core..=) Core.<$>
                    targetingTemplates])


-- | Technology Targeting.
--
-- /See:/ 'newTechnologyTargeting' smart constructor.
data TechnologyTargeting = TechnologyTargeting
    {
      -- | Browsers that this ad targets. For each browser either set browserVersionId or dartId along with the version numbers. If both are specified, only browserVersionId will be used. The other fields are populated automatically when the ad is inserted or updated.
      browsers :: (Core.Maybe [Browser])
      -- | Connection types that this ad targets. For each connection type only id is required. The other fields are populated automatically when the ad is inserted or updated.
    , connectionTypes :: (Core.Maybe [ConnectionType])
      -- | Mobile carriers that this ad targets. For each mobile carrier only id is required, and the other fields are populated automatically when the ad is inserted or updated. If targeting a mobile carrier, do not set targeting for any zip codes.
    , mobileCarriers :: (Core.Maybe [MobileCarrier])
      -- | Operating system versions that this ad targets. To target all versions, use operatingSystems. For each operating system version, only id is required. The other fields are populated automatically when the ad is inserted or updated. If targeting an operating system version, do not set targeting for the corresponding operating system in operatingSystems.
    , operatingSystemVersions :: (Core.Maybe [OperatingSystemVersion])
      -- | Operating systems that this ad targets. To target specific versions, use operatingSystemVersions. For each operating system only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting an operating system, do not set targeting for operating system versions for the same operating system.
    , operatingSystems :: (Core.Maybe [OperatingSystem])
      -- | Platform types that this ad targets. For example, desktop, mobile, or tablet. For each platform type, only id is required, and the other fields are populated automatically when the ad is inserted or updated.
    , platformTypes :: (Core.Maybe [PlatformType])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TechnologyTargeting' with the minimum fields required to make a request.
newTechnologyTargeting 
    ::  TechnologyTargeting
newTechnologyTargeting =
  TechnologyTargeting
    { browsers = Core.Nothing
    , connectionTypes = Core.Nothing
    , mobileCarriers = Core.Nothing
    , operatingSystemVersions = Core.Nothing
    , operatingSystems = Core.Nothing
    , platformTypes = Core.Nothing
    }

instance Core.FromJSON TechnologyTargeting where
        parseJSON
          = Core.withObject "TechnologyTargeting"
              (\ o ->
                 TechnologyTargeting Core.<$>
                   (o Core..:? "browsers") Core.<*>
                     (o Core..:? "connectionTypes")
                     Core.<*> (o Core..:? "mobileCarriers")
                     Core.<*> (o Core..:? "operatingSystemVersions")
                     Core.<*> (o Core..:? "operatingSystems")
                     Core.<*> (o Core..:? "platformTypes"))

instance Core.ToJSON TechnologyTargeting where
        toJSON TechnologyTargeting{..}
          = Core.object
              (Core.catMaybes
                 [("browsers" Core..=) Core.<$> browsers,
                  ("connectionTypes" Core..=) Core.<$> connectionTypes,
                  ("mobileCarriers" Core..=) Core.<$> mobileCarriers,
                  ("operatingSystemVersions" Core..=) Core.<$>
                    operatingSystemVersions,
                  ("operatingSystems" Core..=) Core.<$>
                    operatingSystems,
                  ("platformTypes" Core..=) Core.<$> platformTypes])


-- | Third Party Authentication Token
--
-- /See:/ 'newThirdPartyAuthenticationToken' smart constructor.
data ThirdPartyAuthenticationToken = ThirdPartyAuthenticationToken
    {
      -- | Name of the third-party authentication token.
      name :: (Core.Maybe Core.Text)
      -- | Value of the third-party authentication token. This is a read-only, auto-generated field.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyAuthenticationToken' with the minimum fields required to make a request.
newThirdPartyAuthenticationToken 
    ::  ThirdPartyAuthenticationToken
newThirdPartyAuthenticationToken =
  ThirdPartyAuthenticationToken {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ThirdPartyAuthenticationToken
         where
        parseJSON
          = Core.withObject "ThirdPartyAuthenticationToken"
              (\ o ->
                 ThirdPartyAuthenticationToken Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON ThirdPartyAuthenticationToken
         where
        toJSON ThirdPartyAuthenticationToken{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | Third-party Tracking URL.
--
-- /See:/ 'newThirdPartyTrackingUrl' smart constructor.
data ThirdPartyTrackingUrl = ThirdPartyTrackingUrl
    {
      -- | Third-party URL type for in-stream video and in-stream audio creatives.
      thirdPartyUrlType :: (Core.Maybe ThirdPartyTrackingUrl_ThirdPartyUrlType)
      -- | URL for the specified third-party URL type.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyTrackingUrl' with the minimum fields required to make a request.
newThirdPartyTrackingUrl 
    ::  ThirdPartyTrackingUrl
newThirdPartyTrackingUrl =
  ThirdPartyTrackingUrl {thirdPartyUrlType = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON ThirdPartyTrackingUrl where
        parseJSON
          = Core.withObject "ThirdPartyTrackingUrl"
              (\ o ->
                 ThirdPartyTrackingUrl Core.<$>
                   (o Core..:? "thirdPartyUrlType") Core.<*>
                     (o Core..:? "url"))

instance Core.ToJSON ThirdPartyTrackingUrl where
        toJSON ThirdPartyTrackingUrl{..}
          = Core.object
              (Core.catMaybes
                 [("thirdPartyUrlType" Core..=) Core.<$>
                    thirdPartyUrlType,
                  ("url" Core..=) Core.<$> url])


-- | Transcode Settings
--
-- /See:/ 'newTranscodeSetting' smart constructor.
data TranscodeSetting = TranscodeSetting
    {
      -- | Allowlist of video formats to be served to this placement. Set this list to null or empty to serve all video formats.
      enabledVideoFormats :: (Core.Maybe [Core.Int32])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#transcodeSetting\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranscodeSetting' with the minimum fields required to make a request.
newTranscodeSetting 
    ::  TranscodeSetting
newTranscodeSetting =
  TranscodeSetting {enabledVideoFormats = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON TranscodeSetting where
        parseJSON
          = Core.withObject "TranscodeSetting"
              (\ o ->
                 TranscodeSetting Core.<$>
                   (o Core..:? "enabledVideoFormats") Core.<*>
                     (o Core..:? "kind"))

instance Core.ToJSON TranscodeSetting where
        toJSON TranscodeSetting{..}
          = Core.object
              (Core.catMaybes
                 [("enabledVideoFormats" Core..=) Core.<$>
                    enabledVideoFormats,
                  ("kind" Core..=) Core.<$> kind])


-- | TvCampaignDetail contains data from a TV campaign for specific start dates and date windows.
--
-- /See:/ 'newTvCampaignDetail' smart constructor.
data TvCampaignDetail = TvCampaignDetail
    {
      -- | ID of this TV campaign.
      id :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#tvCampaignSummary\".
    , kind :: (Core.Maybe Core.Text)
      -- | The timepoints of the TV campaign.
    , timepoints :: (Core.Maybe [TvCampaignTimepoint])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TvCampaignDetail' with the minimum fields required to make a request.
newTvCampaignDetail 
    ::  TvCampaignDetail
newTvCampaignDetail =
  TvCampaignDetail
    {id = Core.Nothing, kind = Core.Nothing, timepoints = Core.Nothing}

instance Core.FromJSON TvCampaignDetail where
        parseJSON
          = Core.withObject "TvCampaignDetail"
              (\ o ->
                 TvCampaignDetail Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "timepoints"))

instance Core.ToJSON TvCampaignDetail where
        toJSON TvCampaignDetail{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("timepoints" Core..=) Core.<$> timepoints])


-- | Response message for TvCampaignSummariesService.List.
--
-- /See:/ 'newTvCampaignSummariesListResponse' smart constructor.
data TvCampaignSummariesListResponse = TvCampaignSummariesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#tvCampaignSummariesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | List of TV campaign summaries.
    , tvCampaignSummaries :: (Core.Maybe [TvCampaignSummary])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TvCampaignSummariesListResponse' with the minimum fields required to make a request.
newTvCampaignSummariesListResponse 
    ::  TvCampaignSummariesListResponse
newTvCampaignSummariesListResponse =
  TvCampaignSummariesListResponse
    {kind = Core.Nothing, tvCampaignSummaries = Core.Nothing}

instance Core.FromJSON
           TvCampaignSummariesListResponse
         where
        parseJSON
          = Core.withObject "TvCampaignSummariesListResponse"
              (\ o ->
                 TvCampaignSummariesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "tvCampaignSummaries"))

instance Core.ToJSON TvCampaignSummariesListResponse
         where
        toJSON TvCampaignSummariesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("tvCampaignSummaries" Core..=) Core.<$>
                    tvCampaignSummaries])


-- | TvCampaignSummary contains aggregate data from a TV campaign.
--
-- /See:/ 'newTvCampaignSummary' smart constructor.
data TvCampaignSummary = TvCampaignSummary
    {
      -- | The end date of the TV campaign, inclusive. A string of the format: \"yyyy-MM-dd\".
      endDate :: (Core.Maybe Core.Text)
      -- | GRP of this TV campaign.
    , grp :: (Core.Maybe Core.Int64)
      -- | ID of this TV campaign.
    , id :: (Core.Maybe Core.Text)
      -- | Impressions across the entire TV campaign.
    , impressions :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#tvCampaignSummary\".
    , kind :: (Core.Maybe Core.Text)
      -- | Identifier. Name of this TV campaign.
    , name :: (Core.Maybe Core.Text)
      -- | Spend across the entire TV campaign.
    , spend :: (Core.Maybe Core.Double)
      -- | The start date of the TV campaign, inclusive. A string of the format: \"yyyy-MM-dd\".
    , startDate :: (Core.Maybe Core.Text)
      -- | \"CampaignComponentType\" of this TV campaign.
    , type' :: (Core.Maybe TvCampaignSummary_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TvCampaignSummary' with the minimum fields required to make a request.
newTvCampaignSummary 
    ::  TvCampaignSummary
newTvCampaignSummary =
  TvCampaignSummary
    { endDate = Core.Nothing
    , grp = Core.Nothing
    , id = Core.Nothing
    , impressions = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , spend = Core.Nothing
    , startDate = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON TvCampaignSummary where
        parseJSON
          = Core.withObject "TvCampaignSummary"
              (\ o ->
                 TvCampaignSummary Core.<$>
                   (o Core..:? "endDate") Core.<*>
                     (o Core..:? "grp" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "impressions" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "spend")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON TvCampaignSummary where
        toJSON TvCampaignSummary{..}
          = Core.object
              (Core.catMaybes
                 [("endDate" Core..=) Core.<$> endDate,
                  ("grp" Core..=) Core.. Core.AsText Core.<$> grp,
                  ("id" Core..=) Core.<$> id,
                  ("impressions" Core..=) Core.. Core.AsText Core.<$>
                    impressions,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("spend" Core..=) Core.<$> spend,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("type" Core..=) Core.<$> type'])


-- | A single data point for TvCampaignDetail, which holds information about the TV campaign for a specific start date and date window.
--
-- /See:/ 'newTvCampaignTimepoint' smart constructor.
data TvCampaignTimepoint = TvCampaignTimepoint
    {
      -- | The date window of the timepoint.
      dateWindow :: (Core.Maybe TvCampaignTimepoint_DateWindow)
      -- | The spend within the time range of the timepoint.
    , spend :: (Core.Maybe Core.Double)
      -- | The start date of the timepoint. A string in the format of \"yyyy-MM-dd\".
    , startDate :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TvCampaignTimepoint' with the minimum fields required to make a request.
newTvCampaignTimepoint 
    ::  TvCampaignTimepoint
newTvCampaignTimepoint =
  TvCampaignTimepoint
    {dateWindow = Core.Nothing, spend = Core.Nothing, startDate = Core.Nothing}

instance Core.FromJSON TvCampaignTimepoint where
        parseJSON
          = Core.withObject "TvCampaignTimepoint"
              (\ o ->
                 TvCampaignTimepoint Core.<$>
                   (o Core..:? "dateWindow") Core.<*>
                     (o Core..:? "spend")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON TvCampaignTimepoint where
        toJSON TvCampaignTimepoint{..}
          = Core.object
              (Core.catMaybes
                 [("dateWindow" Core..=) Core.<$> dateWindow,
                  ("spend" Core..=) Core.<$> spend,
                  ("startDate" Core..=) Core.<$> startDate])


-- | A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM/AUDIO, INSTREAM/VIDEO and VPAID.
--
-- /See:/ 'newUniversalAdId' smart constructor.
data UniversalAdId = UniversalAdId
    {
      -- | Registry used for the Ad ID value.
      registry :: (Core.Maybe UniversalAdId_Registry)
      -- | ID value for this creative. Only alphanumeric characters and the following symbols are valid: \"_\/-\". Maximum length is 64 characters. Read only when registry is DCM.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UniversalAdId' with the minimum fields required to make a request.
newUniversalAdId 
    ::  UniversalAdId
newUniversalAdId = UniversalAdId {registry = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON UniversalAdId where
        parseJSON
          = Core.withObject "UniversalAdId"
              (\ o ->
                 UniversalAdId Core.<$>
                   (o Core..:? "registry") Core.<*>
                     (o Core..:? "value"))

instance Core.ToJSON UniversalAdId where
        toJSON UniversalAdId{..}
          = Core.object
              (Core.catMaybes
                 [("registry" Core..=) Core.<$> registry,
                  ("value" Core..=) Core.<$> value])


-- | User Defined Variable configuration.
--
-- /See:/ 'newUserDefinedVariableConfiguration' smart constructor.
data UserDefinedVariableConfiguration = UserDefinedVariableConfiguration
    {
      -- | Data type for the variable. This is a required field.
      dataType :: (Core.Maybe UserDefinedVariableConfiguration_DataType)
      -- | User-friendly name for the variable which will appear in reports. This is a required field, must be less than 64 characters long, and cannot contain the following characters: \"\"\<>\".
    , reportName :: (Core.Maybe Core.Text)
      -- | Variable name in the tag. This is a required field.
    , variableType :: (Core.Maybe UserDefinedVariableConfiguration_VariableType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDefinedVariableConfiguration' with the minimum fields required to make a request.
newUserDefinedVariableConfiguration 
    ::  UserDefinedVariableConfiguration
newUserDefinedVariableConfiguration =
  UserDefinedVariableConfiguration
    { dataType = Core.Nothing
    , reportName = Core.Nothing
    , variableType = Core.Nothing
    }

instance Core.FromJSON
           UserDefinedVariableConfiguration
         where
        parseJSON
          = Core.withObject "UserDefinedVariableConfiguration"
              (\ o ->
                 UserDefinedVariableConfiguration Core.<$>
                   (o Core..:? "dataType") Core.<*>
                     (o Core..:? "reportName")
                     Core.<*> (o Core..:? "variableType"))

instance Core.ToJSON UserDefinedVariableConfiguration
         where
        toJSON UserDefinedVariableConfiguration{..}
          = Core.object
              (Core.catMaybes
                 [("dataType" Core..=) Core.<$> dataType,
                  ("reportName" Core..=) Core.<$> reportName,
                  ("variableType" Core..=) Core.<$> variableType])


-- | User identifying information. Exactly one type of identifier must be specified.
--
-- /See:/ 'newUserIdentifier' smart constructor.
data UserIdentifier = UserIdentifier
    {
      -- | Address information.
      addressInfo :: (Core.Maybe OfflineUserAddressInfo)
      -- | Hashed email address using SHA-256 hash function after normalization.
    , hashedEmail :: (Core.Maybe Core.Text)
      -- | Hashed phone number using SHA-256 hash function after normalization (E164 standard).
    , hashedPhoneNumber :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserIdentifier' with the minimum fields required to make a request.
newUserIdentifier 
    ::  UserIdentifier
newUserIdentifier =
  UserIdentifier
    { addressInfo = Core.Nothing
    , hashedEmail = Core.Nothing
    , hashedPhoneNumber = Core.Nothing
    }

instance Core.FromJSON UserIdentifier where
        parseJSON
          = Core.withObject "UserIdentifier"
              (\ o ->
                 UserIdentifier Core.<$>
                   (o Core..:? "addressInfo") Core.<*>
                     (o Core..:? "hashedEmail")
                     Core.<*> (o Core..:? "hashedPhoneNumber"))

instance Core.ToJSON UserIdentifier where
        toJSON UserIdentifier{..}
          = Core.object
              (Core.catMaybes
                 [("addressInfo" Core..=) Core.<$> addressInfo,
                  ("hashedEmail" Core..=) Core.<$> hashedEmail,
                  ("hashedPhoneNumber" Core..=) Core.<$>
                    hashedPhoneNumber])


-- | A UserProfile resource lets you list all DFA user profiles that are associated with a Google user account. The profile_id needs to be specified in other API requests.
--
-- /See:/ 'newUserProfile' smart constructor.
data UserProfile = UserProfile
    {
      -- | The account ID to which this profile belongs.
      accountId :: (Core.Maybe Core.Int64)
      -- | The account name this profile belongs to.
    , accountName :: (Core.Maybe Core.Text)
      -- | Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userProfile\".
    , kind :: (Core.Maybe Core.Text)
      -- | The unique ID of the user profile.
    , profileId :: (Core.Maybe Core.Int64)
      -- | The sub account ID this profile belongs to if applicable.
    , subAccountId :: (Core.Maybe Core.Int64)
      -- | The sub account name this profile belongs to if applicable.
    , subAccountName :: (Core.Maybe Core.Text)
      -- | The user name.
    , userName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserProfile' with the minimum fields required to make a request.
newUserProfile 
    ::  UserProfile
newUserProfile =
  UserProfile
    { accountId = Core.Nothing
    , accountName = Core.Nothing
    , etag = Core.Nothing
    , kind = Core.Nothing
    , profileId = Core.Nothing
    , subAccountId = Core.Nothing
    , subAccountName = Core.Nothing
    , userName = Core.Nothing
    }

instance Core.FromJSON UserProfile where
        parseJSON
          = Core.withObject "UserProfile"
              (\ o ->
                 UserProfile Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "accountName")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "profileId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "subAccountId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "subAccountName")
                     Core.<*> (o Core..:? "userName"))

instance Core.ToJSON UserProfile where
        toJSON UserProfile{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("accountName" Core..=) Core.<$> accountName,
                  ("etag" Core..=) Core.<$> etag,
                  ("kind" Core..=) Core.<$> kind,
                  ("profileId" Core..=) Core.. Core.AsText Core.<$>
                    profileId,
                  ("subAccountId" Core..=) Core.. Core.AsText Core.<$>
                    subAccountId,
                  ("subAccountName" Core..=) Core.<$> subAccountName,
                  ("userName" Core..=) Core.<$> userName])


-- | Represents the list of user profiles.
--
-- /See:/ 'newUserProfileList' smart constructor.
data UserProfileList = UserProfileList
    {
      -- | Etag of this resource.
      etag :: (Core.Maybe Core.Text)
      -- | The user profiles returned in this response.
    , items :: (Core.Maybe [UserProfile])
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userProfileList\".
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserProfileList' with the minimum fields required to make a request.
newUserProfileList 
    ::  UserProfileList
newUserProfileList =
  UserProfileList
    {etag = Core.Nothing, items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON UserProfileList where
        parseJSON
          = Core.withObject "UserProfileList"
              (\ o ->
                 UserProfileList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON UserProfileList where
        toJSON UserProfileList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind])


-- | Contains properties of auser role, which is used to manage user access.
--
-- /See:/ 'newUserRole' smart constructor.
data UserRole = UserRole
    {
      -- | Account ID of this user role. This is a read-only field that can be left blank.
      accountId :: (Core.Maybe Core.Int64)
      -- | Whether this is a default user role. Default user roles are created by the system for the account\/subaccount and cannot be modified or deleted. Each default user role comes with a basic set of preassigned permissions.
    , defaultUserRole :: (Core.Maybe Core.Bool)
      -- | ID of this user role. This is a read-only, auto-generated field.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRole\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this user role. This is a required field. Must be less than 256 characters long. If this user role is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this user role is a top-level user role, and the name must be unique among top-level user roles of the same account.
    , name :: (Core.Maybe Core.Text)
      -- | ID of the user role that this user role is based on or copied from. This is a required field.
    , parentUserRoleId :: (Core.Maybe Core.Int64)
      -- | List of permissions associated with this user role.
    , permissions :: (Core.Maybe [UserRolePermission])
      -- | Subaccount ID of this user role. This is a read-only field that can be left blank.
    , subaccountId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRole' with the minimum fields required to make a request.
newUserRole 
    ::  UserRole
newUserRole =
  UserRole
    { accountId = Core.Nothing
    , defaultUserRole = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , parentUserRoleId = Core.Nothing
    , permissions = Core.Nothing
    , subaccountId = Core.Nothing
    }

instance Core.FromJSON UserRole where
        parseJSON
          = Core.withObject "UserRole"
              (\ o ->
                 UserRole Core.<$>
                   (o Core..:? "accountId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "defaultUserRole")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "parentUserRoleId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "permissions")
                     Core.<*>
                     (o Core..:? "subaccountId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON UserRole where
        toJSON UserRole{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.. Core.AsText Core.<$>
                    accountId,
                  ("defaultUserRole" Core..=) Core.<$> defaultUserRole,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("parentUserRoleId" Core..=) Core.. Core.AsText
                    Core.<$> parentUserRoleId,
                  ("permissions" Core..=) Core.<$> permissions,
                  ("subaccountId" Core..=) Core.. Core.AsText Core.<$>
                    subaccountId])


-- | Contains properties of a user role permission.
--
-- /See:/ 'newUserRolePermission' smart constructor.
data UserRolePermission = UserRolePermission
    {
      -- | Levels of availability for a user role permission.
      availability :: (Core.Maybe UserRolePermission_Availability)
      -- | ID of this user role permission.
    , id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermission\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this user role permission.
    , name :: (Core.Maybe Core.Text)
      -- | ID of the permission group that this user role permission belongs to.
    , permissionGroupId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRolePermission' with the minimum fields required to make a request.
newUserRolePermission 
    ::  UserRolePermission
newUserRolePermission =
  UserRolePermission
    { availability = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , permissionGroupId = Core.Nothing
    }

instance Core.FromJSON UserRolePermission where
        parseJSON
          = Core.withObject "UserRolePermission"
              (\ o ->
                 UserRolePermission Core.<$>
                   (o Core..:? "availability") Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "permissionGroupId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON UserRolePermission where
        toJSON UserRolePermission{..}
          = Core.object
              (Core.catMaybes
                 [("availability" Core..=) Core.<$> availability,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("permissionGroupId" Core..=) Core.. Core.AsText
                    Core.<$> permissionGroupId])


-- | Represents a grouping of related user role permissions.
--
-- /See:/ 'newUserRolePermissionGroup' smart constructor.
data UserRolePermissionGroup = UserRolePermissionGroup
    {
      -- | ID of this user role permission.
      id :: (Core.Maybe Core.Int64)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionGroup\".
    , kind :: (Core.Maybe Core.Text)
      -- | Name of this user role permission group.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRolePermissionGroup' with the minimum fields required to make a request.
newUserRolePermissionGroup 
    ::  UserRolePermissionGroup
newUserRolePermissionGroup =
  UserRolePermissionGroup
    {id = Core.Nothing, kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON UserRolePermissionGroup where
        parseJSON
          = Core.withObject "UserRolePermissionGroup"
              (\ o ->
                 UserRolePermissionGroup Core.<$>
                   (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON UserRolePermissionGroup where
        toJSON UserRolePermissionGroup{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | User Role Permission Group List Response
--
-- /See:/ 'newUserRolePermissionGroupsListResponse' smart constructor.
data UserRolePermissionGroupsListResponse = UserRolePermissionGroupsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionGroupsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | User role permission group collection.
    , userRolePermissionGroups :: (Core.Maybe [UserRolePermissionGroup])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRolePermissionGroupsListResponse' with the minimum fields required to make a request.
newUserRolePermissionGroupsListResponse 
    ::  UserRolePermissionGroupsListResponse
newUserRolePermissionGroupsListResponse =
  UserRolePermissionGroupsListResponse
    {kind = Core.Nothing, userRolePermissionGroups = Core.Nothing}

instance Core.FromJSON
           UserRolePermissionGroupsListResponse
         where
        parseJSON
          = Core.withObject
              "UserRolePermissionGroupsListResponse"
              (\ o ->
                 UserRolePermissionGroupsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "userRolePermissionGroups"))

instance Core.ToJSON
           UserRolePermissionGroupsListResponse
         where
        toJSON UserRolePermissionGroupsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("userRolePermissionGroups" Core..=) Core.<$>
                    userRolePermissionGroups])


-- | User Role Permission List Response
--
-- /See:/ 'newUserRolePermissionsListResponse' smart constructor.
data UserRolePermissionsListResponse = UserRolePermissionsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | User role permission collection.
    , userRolePermissions :: (Core.Maybe [UserRolePermission])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRolePermissionsListResponse' with the minimum fields required to make a request.
newUserRolePermissionsListResponse 
    ::  UserRolePermissionsListResponse
newUserRolePermissionsListResponse =
  UserRolePermissionsListResponse
    {kind = Core.Nothing, userRolePermissions = Core.Nothing}

instance Core.FromJSON
           UserRolePermissionsListResponse
         where
        parseJSON
          = Core.withObject "UserRolePermissionsListResponse"
              (\ o ->
                 UserRolePermissionsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "userRolePermissions"))

instance Core.ToJSON UserRolePermissionsListResponse
         where
        toJSON UserRolePermissionsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("userRolePermissions" Core..=) Core.<$>
                    userRolePermissions])


-- | User Role List Response
--
-- /See:/ 'newUserRolesListResponse' smart constructor.
data UserRolesListResponse = UserRolesListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolesListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Pagination token to be used for the next list operation.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | User role collection.
    , userRoles :: (Core.Maybe [UserRole])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRolesListResponse' with the minimum fields required to make a request.
newUserRolesListResponse 
    ::  UserRolesListResponse
newUserRolesListResponse =
  UserRolesListResponse
    { kind = Core.Nothing
    , nextPageToken = Core.Nothing
    , userRoles = Core.Nothing
    }

instance Core.FromJSON UserRolesListResponse where
        parseJSON
          = Core.withObject "UserRolesListResponse"
              (\ o ->
                 UserRolesListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "userRoles"))

instance Core.ToJSON UserRolesListResponse where
        toJSON UserRolesListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("userRoles" Core..=) Core.<$> userRoles])


-- | Contains information about supported video formats.
--
-- /See:/ 'newVideoFormat' smart constructor.
data VideoFormat = VideoFormat
    {
      -- | File type of the video format.
      fileType :: (Core.Maybe VideoFormat_FileType)
      -- | ID of the video format.
    , id :: (Core.Maybe Core.Int32)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoFormat\".
    , kind :: (Core.Maybe Core.Text)
      -- | The resolution of this video format.
    , resolution :: (Core.Maybe Size)
      -- | The target bit rate of this video format.
    , targetBitRate :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoFormat' with the minimum fields required to make a request.
newVideoFormat 
    ::  VideoFormat
newVideoFormat =
  VideoFormat
    { fileType = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , resolution = Core.Nothing
    , targetBitRate = Core.Nothing
    }

instance Core.FromJSON VideoFormat where
        parseJSON
          = Core.withObject "VideoFormat"
              (\ o ->
                 VideoFormat Core.<$>
                   (o Core..:? "fileType") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "resolution")
                     Core.<*> (o Core..:? "targetBitRate"))

instance Core.ToJSON VideoFormat where
        toJSON VideoFormat{..}
          = Core.object
              (Core.catMaybes
                 [("fileType" Core..=) Core.<$> fileType,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("resolution" Core..=) Core.<$> resolution,
                  ("targetBitRate" Core..=) Core.<$> targetBitRate])


-- | Video Format List Response
--
-- /See:/ 'newVideoFormatsListResponse' smart constructor.
data VideoFormatsListResponse = VideoFormatsListResponse
    {
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoFormatsListResponse\".
      kind :: (Core.Maybe Core.Text)
      -- | Video format collection.
    , videoFormats :: (Core.Maybe [VideoFormat])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoFormatsListResponse' with the minimum fields required to make a request.
newVideoFormatsListResponse 
    ::  VideoFormatsListResponse
newVideoFormatsListResponse =
  VideoFormatsListResponse {kind = Core.Nothing, videoFormats = Core.Nothing}

instance Core.FromJSON VideoFormatsListResponse where
        parseJSON
          = Core.withObject "VideoFormatsListResponse"
              (\ o ->
                 VideoFormatsListResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "videoFormats"))

instance Core.ToJSON VideoFormatsListResponse where
        toJSON VideoFormatsListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("videoFormats" Core..=) Core.<$> videoFormats])


-- | Video Offset
--
-- /See:/ 'newVideoOffset' smart constructor.
data VideoOffset = VideoOffset
    {
      -- | Duration, as a percentage of video duration. Do not set when offsetSeconds is set. Acceptable values are 0 to 100, inclusive.
      offsetPercentage :: (Core.Maybe Core.Int32)
      -- | Duration, in seconds. Do not set when offsetPercentage is set. Acceptable values are 0 to 86399, inclusive.
    , offsetSeconds :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoOffset' with the minimum fields required to make a request.
newVideoOffset 
    ::  VideoOffset
newVideoOffset =
  VideoOffset {offsetPercentage = Core.Nothing, offsetSeconds = Core.Nothing}

instance Core.FromJSON VideoOffset where
        parseJSON
          = Core.withObject "VideoOffset"
              (\ o ->
                 VideoOffset Core.<$>
                   (o Core..:? "offsetPercentage") Core.<*>
                     (o Core..:? "offsetSeconds"))

instance Core.ToJSON VideoOffset where
        toJSON VideoOffset{..}
          = Core.object
              (Core.catMaybes
                 [("offsetPercentage" Core..=) Core.<$>
                    offsetPercentage,
                  ("offsetSeconds" Core..=) Core.<$> offsetSeconds])


-- | Video Settings
--
-- /See:/ 'newVideoSettings' smart constructor.
data VideoSettings = VideoSettings
    {
      -- | Settings for the companion creatives of video creatives served to this placement.
      companionSettings :: (Core.Maybe CompanionSetting)
      -- | Duration of a video placement in seconds.
    , durationSeconds :: (Core.Maybe Core.Int32)
      -- | Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoSettings\".
    , kind :: (Core.Maybe Core.Text)
      -- | Whether OBA icons are enabled for this placement.
    , obaEnabled :: (Core.Maybe Core.Bool)
      -- | Settings for the OBA icon of video creatives served to this placement. If this object is provided, the creative-level OBA settings will be overridden.
    , obaSettings :: (Core.Maybe ObaIcon)
      -- | Orientation of a video placement. If this value is set, placement will return assets matching the specified orientation.
    , orientation :: (Core.Maybe VideoSettings_Orientation)
      -- | Publisher specification ID of a video placement. Possible values are: * @1@, Hulu * @2@, NBC * @3@, CBS * @4@, CBS Desktop * @5@, Discovery * @6@, VEVO HD * @7@, VEVO Vertical * @8@, Fox * @9@, CW Network * @10@, Disney * @11@, IGN * @12@, NFL.com * @13@, Turner Broadcasting * @14@, Tubi on Fox * @15@, Hearst Corporation * @16@, Twitch Desktop * @17@, ABC * @18@, Univision * @19@, MLB.com * @20@, MLB.com Mobile * @21@, MLB.com OTT * @22@, Polsat * @23@, TVN * @24@, Mediaset * @25@, Antena 3 * @26@, Mediamond * @27@, Sky Italia * @28@, Tubi on CBS * @29@, Spotify * @30@, Paramount * @31@, Max
    , publisherSpecificationId :: (Core.Maybe Core.Int64)
      -- | Settings for the skippability of video creatives served to this placement. If this object is provided, the creative-level skippable settings will be overridden.
    , skippableSettings :: (Core.Maybe SkippableSetting)
      -- | Settings for the transcodes of video creatives served to this placement. If this object is provided, the creative-level transcode settings will be overridden.
    , transcodeSettings :: (Core.Maybe TranscodeSetting)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoSettings' with the minimum fields required to make a request.
newVideoSettings 
    ::  VideoSettings
newVideoSettings =
  VideoSettings
    { companionSettings = Core.Nothing
    , durationSeconds = Core.Nothing
    , kind = Core.Nothing
    , obaEnabled = Core.Nothing
    , obaSettings = Core.Nothing
    , orientation = Core.Nothing
    , publisherSpecificationId = Core.Nothing
    , skippableSettings = Core.Nothing
    , transcodeSettings = Core.Nothing
    }

instance Core.FromJSON VideoSettings where
        parseJSON
          = Core.withObject "VideoSettings"
              (\ o ->
                 VideoSettings Core.<$>
                   (o Core..:? "companionSettings") Core.<*>
                     (o Core..:? "durationSeconds")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "obaEnabled")
                     Core.<*> (o Core..:? "obaSettings")
                     Core.<*> (o Core..:? "orientation")
                     Core.<*>
                     (o Core..:? "publisherSpecificationId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "skippableSettings")
                     Core.<*> (o Core..:? "transcodeSettings"))

instance Core.ToJSON VideoSettings where
        toJSON VideoSettings{..}
          = Core.object
              (Core.catMaybes
                 [("companionSettings" Core..=) Core.<$>
                    companionSettings,
                  ("durationSeconds" Core..=) Core.<$> durationSeconds,
                  ("kind" Core..=) Core.<$> kind,
                  ("obaEnabled" Core..=) Core.<$> obaEnabled,
                  ("obaSettings" Core..=) Core.<$> obaSettings,
                  ("orientation" Core..=) Core.<$> orientation,
                  ("publisherSpecificationId" Core..=) Core..
                    Core.AsText
                    Core.<$> publisherSpecificationId,
                  ("skippableSettings" Core..=) Core.<$>
                    skippableSettings,
                  ("transcodeSettings" Core..=) Core.<$>
                    transcodeSettings])

