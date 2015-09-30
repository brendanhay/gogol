{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Analytics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | View and manage your Google Analytics data
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference>
module Network.Google.Analytics
    (
    -- * API
      AnalyticsAPI
    , analyticsAPI
    , analyticsURL

    -- * Service Methods

    -- * REST Resources

    -- ** AnalyticsDataGaGet
    , module Network.Google.Resource.Analytics.Data.Ga.Get

    -- ** AnalyticsDataMcfGet
    , module Network.Google.Resource.Analytics.Data.Mcf.Get

    -- ** AnalyticsDataRealtimeGet
    , module Network.Google.Resource.Analytics.Data.Realtime.Get

    -- ** AnalyticsManagementAccountSummariesList
    , module Network.Google.Resource.Analytics.Management.AccountSummaries.List

    -- ** AnalyticsManagementAccountUserLinksDelete
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete

    -- ** AnalyticsManagementAccountUserLinksInsert
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert

    -- ** AnalyticsManagementAccountUserLinksList
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.List

    -- ** AnalyticsManagementAccountUserLinksUpdate
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Update

    -- ** AnalyticsManagementAccountsList
    , module Network.Google.Resource.Analytics.Management.Accounts.List

    -- ** AnalyticsManagementCustomDataSourcesList
    , module Network.Google.Resource.Analytics.Management.CustomDataSources.List

    -- ** AnalyticsManagementCustomDimensionsGet
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Get

    -- ** AnalyticsManagementCustomDimensionsInsert
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Insert

    -- ** AnalyticsManagementCustomDimensionsList
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.List

    -- ** AnalyticsManagementCustomDimensionsPatch
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Patch

    -- ** AnalyticsManagementCustomDimensionsUpdate
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Update

    -- ** AnalyticsManagementCustomMetricsGet
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Get

    -- ** AnalyticsManagementCustomMetricsInsert
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Insert

    -- ** AnalyticsManagementCustomMetricsList
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.List

    -- ** AnalyticsManagementCustomMetricsPatch
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Patch

    -- ** AnalyticsManagementCustomMetricsUpdate
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Update

    -- ** AnalyticsManagementExperimentsDelete
    , module Network.Google.Resource.Analytics.Management.Experiments.Delete

    -- ** AnalyticsManagementExperimentsGet
    , module Network.Google.Resource.Analytics.Management.Experiments.Get

    -- ** AnalyticsManagementExperimentsInsert
    , module Network.Google.Resource.Analytics.Management.Experiments.Insert

    -- ** AnalyticsManagementExperimentsList
    , module Network.Google.Resource.Analytics.Management.Experiments.List

    -- ** AnalyticsManagementExperimentsPatch
    , module Network.Google.Resource.Analytics.Management.Experiments.Patch

    -- ** AnalyticsManagementExperimentsUpdate
    , module Network.Google.Resource.Analytics.Management.Experiments.Update

    -- ** AnalyticsManagementFiltersDelete
    , module Network.Google.Resource.Analytics.Management.Filters.Delete

    -- ** AnalyticsManagementFiltersGet
    , module Network.Google.Resource.Analytics.Management.Filters.Get

    -- ** AnalyticsManagementFiltersInsert
    , module Network.Google.Resource.Analytics.Management.Filters.Insert

    -- ** AnalyticsManagementFiltersList
    , module Network.Google.Resource.Analytics.Management.Filters.List

    -- ** AnalyticsManagementFiltersPatch
    , module Network.Google.Resource.Analytics.Management.Filters.Patch

    -- ** AnalyticsManagementFiltersUpdate
    , module Network.Google.Resource.Analytics.Management.Filters.Update

    -- ** AnalyticsManagementGoalsGet
    , module Network.Google.Resource.Analytics.Management.Goals.Get

    -- ** AnalyticsManagementGoalsInsert
    , module Network.Google.Resource.Analytics.Management.Goals.Insert

    -- ** AnalyticsManagementGoalsList
    , module Network.Google.Resource.Analytics.Management.Goals.List

    -- ** AnalyticsManagementGoalsPatch
    , module Network.Google.Resource.Analytics.Management.Goals.Patch

    -- ** AnalyticsManagementGoalsUpdate
    , module Network.Google.Resource.Analytics.Management.Goals.Update

    -- ** AnalyticsManagementProfileFilterLinksDelete
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Delete

    -- ** AnalyticsManagementProfileFilterLinksGet
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Get

    -- ** AnalyticsManagementProfileFilterLinksInsert
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Insert

    -- ** AnalyticsManagementProfileFilterLinksList
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.List

    -- ** AnalyticsManagementProfileFilterLinksPatch
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Patch

    -- ** AnalyticsManagementProfileFilterLinksUpdate
    , module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Update

    -- ** AnalyticsManagementProfileUserLinksDelete
    , module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Delete

    -- ** AnalyticsManagementProfileUserLinksInsert
    , module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Insert

    -- ** AnalyticsManagementProfileUserLinksList
    , module Network.Google.Resource.Analytics.Management.ProfileUserLinks.List

    -- ** AnalyticsManagementProfileUserLinksUpdate
    , module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Update

    -- ** AnalyticsManagementProfilesDelete
    , module Network.Google.Resource.Analytics.Management.Profiles.Delete

    -- ** AnalyticsManagementProfilesGet
    , module Network.Google.Resource.Analytics.Management.Profiles.Get

    -- ** AnalyticsManagementProfilesInsert
    , module Network.Google.Resource.Analytics.Management.Profiles.Insert

    -- ** AnalyticsManagementProfilesList
    , module Network.Google.Resource.Analytics.Management.Profiles.List

    -- ** AnalyticsManagementProfilesPatch
    , module Network.Google.Resource.Analytics.Management.Profiles.Patch

    -- ** AnalyticsManagementProfilesUpdate
    , module Network.Google.Resource.Analytics.Management.Profiles.Update

    -- ** AnalyticsManagementSegmentsList
    , module Network.Google.Resource.Analytics.Management.Segments.List

    -- ** AnalyticsManagementUnsampledReportsGet
    , module Network.Google.Resource.Analytics.Management.UnsampledReports.Get

    -- ** AnalyticsManagementUnsampledReportsInsert
    , module Network.Google.Resource.Analytics.Management.UnsampledReports.Insert

    -- ** AnalyticsManagementUnsampledReportsList
    , module Network.Google.Resource.Analytics.Management.UnsampledReports.List

    -- ** AnalyticsManagementUploadsDeleteUploadData
    , module Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData

    -- ** AnalyticsManagementUploadsGet
    , module Network.Google.Resource.Analytics.Management.Uploads.Get

    -- ** AnalyticsManagementUploadsList
    , module Network.Google.Resource.Analytics.Management.Uploads.List

    -- ** AnalyticsManagementUploadsUploadData
    , module Network.Google.Resource.Analytics.Management.Uploads.UploadData

    -- ** AnalyticsManagementWebPropertyAdWordsLinksDelete
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete

    -- ** AnalyticsManagementWebPropertyAdWordsLinksGet
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get

    -- ** AnalyticsManagementWebPropertyAdWordsLinksInsert
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert

    -- ** AnalyticsManagementWebPropertyAdWordsLinksList
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List

    -- ** AnalyticsManagementWebPropertyAdWordsLinksPatch
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch

    -- ** AnalyticsManagementWebPropertyAdWordsLinksUpdate
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update

    -- ** AnalyticsManagementWebpropertiesGet
    , module Network.Google.Resource.Analytics.Management.Webproperties.Get

    -- ** AnalyticsManagementWebpropertiesInsert
    , module Network.Google.Resource.Analytics.Management.Webproperties.Insert

    -- ** AnalyticsManagementWebpropertiesList
    , module Network.Google.Resource.Analytics.Management.Webproperties.List

    -- ** AnalyticsManagementWebpropertiesPatch
    , module Network.Google.Resource.Analytics.Management.Webproperties.Patch

    -- ** AnalyticsManagementWebpropertiesUpdate
    , module Network.Google.Resource.Analytics.Management.Webproperties.Update

    -- ** AnalyticsManagementWebpropertyUserLinksDelete
    , module Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Delete

    -- ** AnalyticsManagementWebpropertyUserLinksInsert
    , module Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Insert

    -- ** AnalyticsManagementWebpropertyUserLinksList
    , module Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.List

    -- ** AnalyticsManagementWebpropertyUserLinksUpdate
    , module Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Update

    -- ** AnalyticsMetadataColumnsList
    , module Network.Google.Resource.Analytics.Metadata.Columns.List

    -- ** AnalyticsProvisioningCreateAccountTicket
    , module Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket

    -- * Types

    -- ** GaDataColumnHeaders
    , GaDataColumnHeaders
    , gaDataColumnHeaders
    , gdchColumnType
    , gdchName
    , gdchDataType

    -- ** UnsampledReports
    , UnsampledReports
    , unsampledReports
    , urNextLink
    , urItemsPerPage
    , urKind
    , urUsername
    , urItems
    , urTotalResults
    , urStartIndex
    , urPreviousLink

    -- ** GaDataQuery
    , GaDataQuery
    , gaDataQuery
    , gdqMetrics
    , gdqSamplingLevel
    , gdqFilters
    , gdqIds
    , gdqEndDate
    , gdqSort
    , gdqDimensions
    , gdqStartIndex
    , gdqMaxResults
    , gdqSegment
    , gdqStartDate

    -- ** UnsampledReport
    , UnsampledReport
    , unsampledReport
    , uDownloadType
    , uStatus
    , uMetrics
    , uDriveDownloadDetails
    , uWebPropertyId
    , uKind
    , uCreated
    , uFilters
    , uProfileId
    , uEndDate
    , uSelfLink
    , uAccountId
    , uId
    , uUpdated
    , uTitle
    , uDimensions
    , uSegment
    , uCloudStorageDownloadDetails
    , uStartDate

    -- ** GoalEventDetailsEventConditions
    , GoalEventDetailsEventConditions
    , goalEventDetailsEventConditions
    , gedecMatchType
    , gedecExpression
    , gedecComparisonValue
    , gedecType
    , gedecComparisonType

    -- ** ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- ** GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

    -- ** ProfileRef
    , ProfileRef
    , profileRef
    , prWebPropertyId
    , prKind
    , prHref
    , prAccountId
    , prName
    , prInternalWebPropertyId
    , prId

    -- ** Experiments
    , Experiments
    , experiments
    , eNextLink
    , eItemsPerPage
    , eKind
    , eUsername
    , eItems
    , eTotalResults
    , eStartIndex
    , ePreviousLink

    -- ** EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- ** Accounts
    , Accounts
    , accounts
    , aNextLink
    , aItemsPerPage
    , aKind
    , aUsername
    , aItems
    , aTotalResults
    , aStartIndex
    , aPreviousLink

    -- ** FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- ** RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- ** ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- ** AnalyticsDataMcfGetSamplingLevel
    , AnalyticsDataMcfGetSamplingLevel (..)

    -- ** UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

    -- ** WebpropertyChildLink
    , WebpropertyChildLink
    , webpropertyChildLink
    , wclHref
    , wclType

    -- ** McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

    -- ** CustomDataSources
    , CustomDataSources
    , customDataSources
    , cdsNextLink
    , cdsItemsPerPage
    , cdsKind
    , cdsUsername
    , cdsItems
    , cdsTotalResults
    , cdsStartIndex
    , cdsPreviousLink

    -- ** AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

    -- ** EntityAdWordsLinks
    , EntityAdWordsLinks
    , entityAdWordsLinks
    , eawlNextLink
    , eawlItemsPerPage
    , eawlKind
    , eawlItems
    , eawlTotalResults
    , eawlStartIndex
    , eawlPreviousLink

    -- ** McfData
    , McfData
    , mcfData
    , mdNextLink
    , mdSampleSpace
    , mdItemsPerPage
    , mdProfileInfo
    , mdKind
    , mdSampleSize
    , mdRows
    , mdSelfLink
    , mdQuery
    , mdColumnHeaders
    , mdId
    , mdTotalResults
    , mdContainsSampledData
    , mdTotalsForAllResults
    , mdPreviousLink

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- ** GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

    -- ** Profiles
    , Profiles
    , profiles
    , pNextLink
    , pItemsPerPage
    , pKind
    , pUsername
    , pItems
    , pTotalResults
    , pStartIndex
    , pPreviousLink

    -- ** UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

    -- ** ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

    -- ** Filters
    , Filters
    , filters
    , fNextLink
    , fItemsPerPage
    , fKind
    , fUsername
    , fItems
    , fTotalResults
    , fStartIndex
    , fPreviousLink

    -- ** WebPropertySummary
    , WebPropertySummary
    , webPropertySummary
    , wpsKind
    , wpsProfiles
    , wpsName
    , wpsInternalWebPropertyId
    , wpsId
    , wpsWebsiteUrl
    , wpsLevel

    -- ** GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- ** FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- ** AccountSummaries
    , AccountSummaries
    , accountSummaries
    , asNextLink
    , asItemsPerPage
    , asKind
    , asUsername
    , asItems
    , asTotalResults
    , asStartIndex
    , asPreviousLink

    -- ** EntityAdWordsLink
    , EntityAdWordsLink
    , entityAdWordsLink
    , entAdWordsAccounts
    , entProfileIds
    , entKind
    , entSelfLink
    , entName
    , entId
    , entEntity

    -- ** Profile
    , Profile
    , profile
    , proParentLink
    , proECommerceTracking
    , proSiteSearchCategoryParameters
    , proWebPropertyId
    , proChildLink
    , proSiteSearchQueryParameters
    , proKind
    , proDefaultPage
    , proCreated
    , proSelfLink
    , proAccountId
    , proName
    , proCurrency
    , proInternalWebPropertyId
    , proId
    , proUpdated
    , proPermissions
    , proWebsiteUrl
    , proType
    , proStripSiteSearchCategoryParameters
    , proTimezone
    , proExcludeQueryParameters
    , proEnhancedECommerceTracking
    , proStripSiteSearchQueryParameters

    -- ** GaData
    , GaData
    , gaData
    , gdNextLink
    , gdSampleSpace
    , gdItemsPerPage
    , gdProfileInfo
    , gdKind
    , gdSampleSize
    , gdRows
    , gdSelfLink
    , gdQuery
    , gdColumnHeaders
    , gdId
    , gdTotalResults
    , gdDataTable
    , gdContainsSampledData
    , gdTotalsForAllResults
    , gdPreviousLink

    -- ** WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

    -- ** Goals
    , Goals
    , goals
    , gNextLink
    , gItemsPerPage
    , gKind
    , gUsername
    , gItems
    , gTotalResults
    , gStartIndex
    , gPreviousLink

    -- ** RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

    -- ** CustomDataSource
    , CustomDataSource
    , customDataSource
    , cParentLink
    , cWebPropertyId
    , cChildLink
    , cKind
    , cCreated
    , cUploadType
    , cImportBehavior
    , cSelfLink
    , cAccountId
    , cName
    , cId
    , cUpdated
    , cType
    , cDescription
    , cProfilesLinked

    -- ** AnalyticsDataGaGetOutput
    , AnalyticsDataGaGetOutput (..)

    -- ** Webproperties
    , Webproperties
    , webproperties
    , wNextLink
    , wItemsPerPage
    , wKind
    , wUsername
    , wItems
    , wTotalResults
    , wStartIndex
    , wPreviousLink

    -- ** McfDataRows
    , McfDataRows
    , mcfDataRows
    , mdrPrimitiveValue
    , mdrConversionPathValue

    -- ** AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- ** GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

    -- ** Account
    , Account
    , account
    , accChildLink
    , accKind
    , accCreated
    , accSelfLink
    , accName
    , accId
    , accUpdated
    , accPermissions

    -- ** FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- ** AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- ** EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- ** Experiment
    , Experiment
    , experiment
    , expParentLink
    , expEqualWeighting
    , expStatus
    , expWebPropertyId
    , expStartTime
    , expSnippet
    , expKind
    , expCreated
    , expReasonExperimentEnded
    , expTrafficCoverage
    , expEditableInGaUi
    , expMinimumExperimentLengthInDays
    , expProfileId
    , expOptimizationType
    , expSelfLink
    , expAccountId
    , expName
    , expWinnerFound
    , expEndTime
    , expVariations
    , expInternalWebPropertyId
    , expId
    , expUpdated
    , expRewriteVariationUrlsAsOriginal
    , expObjectiveMetric
    , expWinnerConfidenceLevel
    , expServingFramework
    , expDescription

    -- ** EntityUserLinks
    , EntityUserLinks
    , entityUserLinks
    , eulNextLink
    , eulItemsPerPage
    , eulKind
    , eulItems
    , eulTotalResults
    , eulStartIndex
    , eulPreviousLink

    -- ** FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- ** CustomMetrics
    , CustomMetrics
    , customMetrics
    , cmNextLink
    , cmItemsPerPage
    , cmKind
    , cmUsername
    , cmItems
    , cmTotalResults
    , cmStartIndex
    , cmPreviousLink

    -- ** FilterAdvancedDetails
    , FilterAdvancedDetails
    , filterAdvancedDetails
    , fadExtractA
    , fadFieldARequired
    , fadFieldA
    , fadFieldBIndex
    , fadOutputToField
    , fadOutputConstructor
    , fadExtractB
    , fadFieldAIndex
    , fadCaseSensitive
    , fadOutputToFieldIndex
    , fadFieldB
    , fadFieldBRequired
    , fadOverrideOutputField

    -- ** FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

    -- ** CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- ** CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

    -- ** Webproperty
    , Webproperty
    , webproperty
    , webParentLink
    , webChildLink
    , webDefaultProfileId
    , webKind
    , webCreated
    , webSelfLink
    , webAccountId
    , webName
    , webInternalWebPropertyId
    , webId
    , webUpdated
    , webProfileCount
    , webPermissions
    , webWebsiteUrl
    , webIndustryVertical
    , webLevel

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cusParentLink
    , cusWebPropertyId
    , cusKind
    , cusMaxValue
    , cusCreated
    , cusMinValue
    , cusActive
    , cusSelfLink
    , cusAccountId
    , cusName
    , cusScope
    , cusId
    , cusUpdated
    , cusType
    , cusIndex

    -- ** WebpropertyPermissions
    , WebpropertyPermissions
    , webpropertyPermissions
    , wpEffective

    -- ** RealtimeData
    , RealtimeData
    , realtimeData
    , rdProfileInfo
    , rdKind
    , rdRows
    , rdSelfLink
    , rdQuery
    , rdColumnHeaders
    , rdId
    , rdTotalResults
    , rdTotalsForAllResults

    -- ** ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

    -- ** McfDataRowsConversionPathValue
    , McfDataRowsConversionPathValue
    , mcfDataRowsConversionPathValue
    , mdrcpvInteractionType
    , mdrcpvNodeValue

    -- ** GaDataDataTableRowsC
    , GaDataDataTableRowsC
    , gaDataDataTableRowsC
    , gddtrcV

    -- ** EntityUserLink
    , EntityUserLink
    , entityUserLink
    , euluKind
    , euluUserRef
    , euluSelfLink
    , euluId
    , euluPermissions
    , euluEntity

    -- ** McfDataColumnHeaders
    , McfDataColumnHeaders
    , mcfDataColumnHeaders
    , mdchColumnType
    , mdchName
    , mdchDataType

    -- ** McfDataQuery
    , McfDataQuery
    , mcfDataQuery
    , mdqMetrics
    , mdqSamplingLevel
    , mdqFilters
    , mdqIds
    , mdqEndDate
    , mdqSort
    , mdqDimensions
    , mdqStartIndex
    , mdqMaxResults
    , mdqSegment
    , mdqStartDate

    -- ** CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

    -- ** RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- ** RealtimeDataColumnHeaders
    , RealtimeDataColumnHeaders
    , realtimeDataColumnHeaders
    , rdchColumnType
    , rdchName
    , rdchDataType

    -- ** AccountSummary
    , AccountSummary
    , accountSummary
    , assKind
    , assWebProperties
    , assName
    , assId

    -- ** Goal
    , Goal
    , goal
    , goaParentLink
    , goaWebPropertyId
    , goaKind
    , goaCreated
    , goaValue
    , goaProfileId
    , goaEventDetails
    , goaActive
    , goaSelfLink
    , goaVisitTimeOnSiteDetails
    , goaAccountId
    , goaName
    , goaInternalWebPropertyId
    , goaId
    , goaUrlDestinationDetails
    , goaVisitNumPagesDetails
    , goaUpdated
    , goaType

    -- ** Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

    -- ** FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- ** EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

    -- ** CustomDimensions
    , CustomDimensions
    , customDimensions
    , cdNextLink
    , cdItemsPerPage
    , cdKind
    , cdUsername
    , cdItems
    , cdTotalResults
    , cdStartIndex
    , cdPreviousLink

    -- ** Uploads
    , Uploads
    , uploads
    , uplNextLink
    , uplItemsPerPage
    , uplKind
    , uplItems
    , uplTotalResults
    , uplStartIndex
    , uplPreviousLink

    -- ** GoalURLDestinationDetails
    , GoalURLDestinationDetails
    , goalURLDestinationDetails
    , guddUrl
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- ** Filter
    , Filter
    , filter'
    , filParentLink
    , filAdvancedDetails
    , filUppercaseDetails
    , filLowercaseDetails
    , filKind
    , filCreated
    , filIncludeDetails
    , filExcludeDetails
    , filSelfLink
    , filAccountId
    , filName
    , filId
    , filUpdated
    , filType
    , filSearchAndReplaceDetails

    -- ** GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- ** Segments
    , Segments
    , segments
    , sNextLink
    , sItemsPerPage
    , sKind
    , sUsername
    , sItems
    , sTotalResults
    , sStartIndex
    , sPreviousLink

    -- ** ProfileFilterLinks
    , ProfileFilterLinks
    , profileFilterLinks
    , pflNextLink
    , pflItemsPerPage
    , pflKind
    , pflUsername
    , pflItems
    , pflTotalResults
    , pflStartIndex
    , pflPreviousLink

    -- ** Segment
    , Segment
    , segment
    , segDefinition
    , segKind
    , segCreated
    , segSelfLink
    , segName
    , segId
    , segUpdated
    , segType
    , segSegmentId

    -- ** AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- ** ExperimentVariations
    , ExperimentVariations
    , experimentVariations
    , evStatus
    , evWeight
    , evUrl
    , evWon
    , evName

    -- ** GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

    -- ** CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cddParentLink
    , cddWebPropertyId
    , cddKind
    , cddCreated
    , cddActive
    , cddSelfLink
    , cddAccountId
    , cddName
    , cddScope
    , cddId
    , cddUpdated
    , cddIndex

    -- ** AnalyticsDataGaGetSamplingLevel
    , AnalyticsDataGaGetSamplingLevel (..)

    -- ** WebpropertyParentLink
    , WebpropertyParentLink
    , webpropertyParentLink
    , wplHref
    , wplType

    -- ** Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuAccountId
    , uuId
    , uuErrors

    -- ** ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pflfProfileRef
    , pflfKind
    , pflfFilterRef
    , pflfSelfLink
    , pflfId
    , pflfRank

    -- ** GaDataDataTableCols
    , GaDataDataTableCols
    , gaDataDataTableCols
    , gddtcId
    , gddtcType
    , gddtcLabel

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- ** McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

    -- ** UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- ** GoalURLDestinationDetailsSteps
    , GoalURLDestinationDetailsSteps
    , goalURLDestinationDetailsSteps
    , guddsUrl
    , guddsName
    , guddsNumber

    -- ** ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- ** Alt
    , Alt (..)

    -- ** ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- ** GaDataDataTableRows
    , GaDataDataTableRows
    , gaDataDataTableRows
    , gddtrC

    -- ** GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Analytics.Data.Ga.Get
import           Network.Google.Resource.Analytics.Data.Mcf.Get
import           Network.Google.Resource.Analytics.Data.Realtime.Get
import           Network.Google.Resource.Analytics.Management.Accounts.List
import           Network.Google.Resource.Analytics.Management.AccountSummaries.List
import           Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete
import           Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert
import           Network.Google.Resource.Analytics.Management.AccountUserLinks.List
import           Network.Google.Resource.Analytics.Management.AccountUserLinks.Update
import           Network.Google.Resource.Analytics.Management.CustomDataSources.List
import           Network.Google.Resource.Analytics.Management.CustomDimensions.Get
import           Network.Google.Resource.Analytics.Management.CustomDimensions.Insert
import           Network.Google.Resource.Analytics.Management.CustomDimensions.List
import           Network.Google.Resource.Analytics.Management.CustomDimensions.Patch
import           Network.Google.Resource.Analytics.Management.CustomDimensions.Update
import           Network.Google.Resource.Analytics.Management.CustomMetrics.Get
import           Network.Google.Resource.Analytics.Management.CustomMetrics.Insert
import           Network.Google.Resource.Analytics.Management.CustomMetrics.List
import           Network.Google.Resource.Analytics.Management.CustomMetrics.Patch
import           Network.Google.Resource.Analytics.Management.CustomMetrics.Update
import           Network.Google.Resource.Analytics.Management.Experiments.Delete
import           Network.Google.Resource.Analytics.Management.Experiments.Get
import           Network.Google.Resource.Analytics.Management.Experiments.Insert
import           Network.Google.Resource.Analytics.Management.Experiments.List
import           Network.Google.Resource.Analytics.Management.Experiments.Patch
import           Network.Google.Resource.Analytics.Management.Experiments.Update
import           Network.Google.Resource.Analytics.Management.Filters.Delete
import           Network.Google.Resource.Analytics.Management.Filters.Get
import           Network.Google.Resource.Analytics.Management.Filters.Insert
import           Network.Google.Resource.Analytics.Management.Filters.List
import           Network.Google.Resource.Analytics.Management.Filters.Patch
import           Network.Google.Resource.Analytics.Management.Filters.Update
import           Network.Google.Resource.Analytics.Management.Goals.Get
import           Network.Google.Resource.Analytics.Management.Goals.Insert
import           Network.Google.Resource.Analytics.Management.Goals.List
import           Network.Google.Resource.Analytics.Management.Goals.Patch
import           Network.Google.Resource.Analytics.Management.Goals.Update
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Delete
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Get
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Insert
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.List
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Patch
import           Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Update
import           Network.Google.Resource.Analytics.Management.Profiles.Delete
import           Network.Google.Resource.Analytics.Management.Profiles.Get
import           Network.Google.Resource.Analytics.Management.Profiles.Insert
import           Network.Google.Resource.Analytics.Management.Profiles.List
import           Network.Google.Resource.Analytics.Management.Profiles.Patch
import           Network.Google.Resource.Analytics.Management.Profiles.Update
import           Network.Google.Resource.Analytics.Management.ProfileUserLinks.Delete
import           Network.Google.Resource.Analytics.Management.ProfileUserLinks.Insert
import           Network.Google.Resource.Analytics.Management.ProfileUserLinks.List
import           Network.Google.Resource.Analytics.Management.ProfileUserLinks.Update
import           Network.Google.Resource.Analytics.Management.Segments.List
import           Network.Google.Resource.Analytics.Management.UnsampledReports.Get
import           Network.Google.Resource.Analytics.Management.UnsampledReports.Insert
import           Network.Google.Resource.Analytics.Management.UnsampledReports.List
import           Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
import           Network.Google.Resource.Analytics.Management.Uploads.Get
import           Network.Google.Resource.Analytics.Management.Uploads.List
import           Network.Google.Resource.Analytics.Management.Uploads.UploadData
import           Network.Google.Resource.Analytics.Management.Webproperties.Get
import           Network.Google.Resource.Analytics.Management.Webproperties.Insert
import           Network.Google.Resource.Analytics.Management.Webproperties.List
import           Network.Google.Resource.Analytics.Management.Webproperties.Patch
import           Network.Google.Resource.Analytics.Management.Webproperties.Update
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
import           Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Delete
import           Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Insert
import           Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.List
import           Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Update
import           Network.Google.Resource.Analytics.Metadata.Columns.List
import           Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket

{- $resources
TODO
-}

type AnalyticsAPI =
     DataMcfGetResource :<|> DataGaGetResource :<|>
       DataRealtimeGetResource
       :<|> ManagementWebPropertyAdWordsLinksInsertResource
       :<|> ManagementWebPropertyAdWordsLinksListResource
       :<|> ManagementWebPropertyAdWordsLinksPatchResource
       :<|> ManagementWebPropertyAdWordsLinksGetResource
       :<|> ManagementWebPropertyAdWordsLinksDeleteResource
       :<|> ManagementWebPropertyAdWordsLinksUpdateResource
       :<|> ManagementUnsampledReportsInsertResource
       :<|> ManagementUnsampledReportsListResource
       :<|> ManagementUnsampledReportsGetResource
       :<|> ManagementAccountsListResource
       :<|> ManagementExperimentsInsertResource
       :<|> ManagementExperimentsListResource
       :<|> ManagementExperimentsPatchResource
       :<|> ManagementExperimentsGetResource
       :<|> ManagementExperimentsDeleteResource
       :<|> ManagementExperimentsUpdateResource
       :<|> ManagementCustomDataSourcesListResource
       :<|> ManagementWebpropertyUserLinksInsertResource
       :<|> ManagementWebpropertyUserLinksListResource
       :<|> ManagementWebpropertyUserLinksDeleteResource
       :<|> ManagementWebpropertyUserLinksUpdateResource
       :<|> ManagementProfilesInsertResource
       :<|> ManagementProfilesListResource
       :<|> ManagementProfilesPatchResource
       :<|> ManagementProfilesGetResource
       :<|> ManagementProfilesDeleteResource
       :<|> ManagementProfilesUpdateResource
       :<|> ManagementFiltersInsertResource
       :<|> ManagementFiltersListResource
       :<|> ManagementFiltersPatchResource
       :<|> ManagementFiltersGetResource
       :<|> ManagementFiltersDeleteResource
       :<|> ManagementFiltersUpdateResource
       :<|> ManagementAccountSummariesListResource
       :<|> ManagementGoalsInsertResource
       :<|> ManagementGoalsListResource
       :<|> ManagementGoalsPatchResource
       :<|> ManagementGoalsGetResource
       :<|> ManagementGoalsUpdateResource
       :<|> ManagementWebpropertiesInsertResource
       :<|> ManagementWebpropertiesListResource
       :<|> ManagementWebpropertiesPatchResource
       :<|> ManagementWebpropertiesGetResource
       :<|> ManagementWebpropertiesUpdateResource
       :<|> ManagementCustomMetricsInsertResource
       :<|> ManagementCustomMetricsListResource
       :<|> ManagementCustomMetricsPatchResource
       :<|> ManagementCustomMetricsGetResource
       :<|> ManagementCustomMetricsUpdateResource
       :<|> ManagementUploadsListResource
       :<|> ManagementUploadsDeleteUploadDataResource
       :<|> ManagementUploadsGetResource
       :<|> ManagementUploadsUploadDataResource
       :<|> ManagementSegmentsListResource
       :<|> ManagementProfileFilterLinksInsertResource
       :<|> ManagementProfileFilterLinksListResource
       :<|> ManagementProfileFilterLinksPatchResource
       :<|> ManagementProfileFilterLinksGetResource
       :<|> ManagementProfileFilterLinksDeleteResource
       :<|> ManagementProfileFilterLinksUpdateResource
       :<|> ManagementCustomDimensionsInsertResource
       :<|> ManagementCustomDimensionsListResource
       :<|> ManagementCustomDimensionsPatchResource
       :<|> ManagementCustomDimensionsGetResource
       :<|> ManagementCustomDimensionsUpdateResource
       :<|> ManagementAccountUserLinksInsertResource
       :<|> ManagementAccountUserLinksListResource
       :<|> ManagementAccountUserLinksDeleteResource
       :<|> ManagementAccountUserLinksUpdateResource
       :<|> ManagementProfileUserLinksInsertResource
       :<|> ManagementProfileUserLinksListResource
       :<|> ManagementProfileUserLinksDeleteResource
       :<|> ManagementProfileUserLinksUpdateResource
       :<|> ProvisioningCreateAccountTicketResource
       :<|> MetadataColumnsListResource

analyticsAPI :: Proxy AnalyticsAPI
analyticsAPI = Proxy
