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
-- | View and manage your Google Analytics data
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

    -- ** AnalyticsManagementUnSampledReportsGet
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.Get

    -- ** AnalyticsManagementUnSampledReportsInsert
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.Insert

    -- ** AnalyticsManagementUnSampledReportsList
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.List

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

    -- ** AnalyticsManagementWebPropertiesGet
    , module Network.Google.Resource.Analytics.Management.WebProperties.Get

    -- ** AnalyticsManagementWebPropertiesInsert
    , module Network.Google.Resource.Analytics.Management.WebProperties.Insert

    -- ** AnalyticsManagementWebPropertiesList
    , module Network.Google.Resource.Analytics.Management.WebProperties.List

    -- ** AnalyticsManagementWebPropertiesPatch
    , module Network.Google.Resource.Analytics.Management.WebProperties.Patch

    -- ** AnalyticsManagementWebPropertiesUpdate
    , module Network.Google.Resource.Analytics.Management.WebProperties.Update

    -- ** AnalyticsManagementWebPropertyUserLinksDelete
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete

    -- ** AnalyticsManagementWebPropertyUserLinksInsert
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert

    -- ** AnalyticsManagementWebPropertyUserLinksList
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List

    -- ** AnalyticsManagementWebPropertyUserLinksUpdate
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update

    -- ** AnalyticsMetadataColumnsList
    , module Network.Google.Resource.Analytics.Metadata.Columns.List

    -- ** AnalyticsProvisioningCreateAccountTicket
    , module Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket

    -- * Types

    -- ** ParentLink
    , ParentLink
    , parentLink
    , plHref
    , plType

    -- ** UnSampledReports
    , UnSampledReports
    , unSampledReports
    , usrNextLink
    , usrItemsPerPage
    , usrKind
    , usrUsername
    , usrItems
    , usrTotalResults
    , usrStartIndex
    , usrPreviousLink

    -- ** AdvancedDetails
    , AdvancedDetails
    , advancedDetails
    , adExtractA
    , adFieldARequired
    , adFieldA
    , adFieldBIndex
    , adOutputToField
    , adOutputConstructor
    , adExtractB
    , adFieldAIndex
    , adCaseSensitive
    , adOutputToFieldIndex
    , adFieldB
    , adFieldBRequired
    , adOverrideOutputField

    -- ** UppercaseDetails
    , UppercaseDetails
    , uppercaseDetails
    , udFieldIndex
    , udField

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

    -- ** UnSampledReport
    , UnSampledReport
    , unSampledReport
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

    -- ** VariationsItem
    , VariationsItem
    , variationsItem
    , viStatus
    , viWeight
    , viURL
    , viWon
    , viName

    -- ** GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

    -- ** ColumnHeadersItem
    , ColumnHeadersItem
    , columnHeadersItem
    , chiColumnType
    , chiName
    , chiDataType

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

    -- ** DriveDownloadDetails
    , DriveDownloadDetails
    , driveDownloadDetails
    , dddDocumentId

    -- ** RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- ** ChildLink
    , ChildLink
    , childLink
    , clHref
    , clType

    -- ** ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- ** LowercaseDetails
    , LowercaseDetails
    , lowercaseDetails
    , ldFieldIndex
    , ldField

    -- ** WebPropertyChildLink
    , WebPropertyChildLink
    , webPropertyChildLink
    , wpclHref
    , wpclType

    -- ** SamplingLevel
    , SamplingLevel (..)

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

    -- ** ProfileInfo
    , ProfileInfo
    , profileInfo
    , piWebPropertyId
    , piProfileId
    , piProfileName
    , piAccountId
    , piInternalWebPropertyId
    , piTableId

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

    -- ** RealtimeDataColumnHeadersItem
    , RealtimeDataColumnHeadersItem
    , realtimeDataColumnHeadersItem
    , rdchiColumnType
    , rdchiName
    , rdchiDataType

    -- ** UserRef
    , UserRef
    , userRef
    , urEmail
    , urKind
    , urId

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
    , wpsWebsiteURL
    , wpsLevel

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
    , proWebsiteURL
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

    -- ** ColsItem
    , ColsItem
    , colsItem
    , ciId
    , ciType
    , ciLabel

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

    -- ** EventDetails
    , EventDetails
    , eventDetails
    , edUseEventValue
    , edEventConditions

    -- ** WebProperties
    , WebProperties
    , webProperties
    , wpNextLink
    , wpItemsPerPage
    , wpKind
    , wpUsername
    , wpItems
    , wpTotalResults
    , wpStartIndex
    , wpPreviousLink

    -- ** RowsItemItem
    , RowsItemItem
    , rowsItemItem
    , riiPrimitiveValue
    , riiConversionPathValue

    -- ** AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

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

    -- ** EventConditionsItem
    , EventConditionsItem
    , eventConditionsItem
    , eciMatchType
    , eciExpression
    , eciComparisonValue
    , eciType
    , eciComparisonType

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
    , expRewriteVariationURLsAsOriginal
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

    -- ** StepsItem
    , StepsItem
    , stepsItem
    , siURL
    , siName
    , siNumber

    -- ** CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- ** VisitTimeOnSiteDetails
    , VisitTimeOnSiteDetails
    , visitTimeOnSiteDetails
    , vtosdComparisonValue
    , vtosdComparisonType

    -- ** CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

    -- ** WebProperty
    , WebProperty
    , webProperty
    , wParentLink
    , wChildLink
    , wDefaultProfileId
    , wKind
    , wCreated
    , wSelfLink
    , wAccountId
    , wName
    , wInternalWebPropertyId
    , wId
    , wUpdated
    , wProfileCount
    , wPermissions
    , wWebsiteURL
    , wIndustryVertical
    , wLevel

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

    -- ** WebPropertyPermissions
    , WebPropertyPermissions
    , webPropertyPermissions
    , wppEffective

    -- ** Output
    , Output (..)

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

    -- ** Attributes
    , Attributes
    , attributes

    -- ** Query
    , Query
    , query
    , qMetrics
    , qSamplingLevel
    , qFilters
    , qIds
    , qEndDate
    , qSort
    , qDimensions
    , qStartIndex
    , qMaxResults
    , qSegment
    , qStartDate

    -- ** DataTableRowsItem
    , DataTableRowsItem
    , dataTableRowsItem
    , dtriC

    -- ** EntityUserLink
    , EntityUserLink
    , entityUserLink
    , euluKind
    , euluUserRef
    , euluSelfLink
    , euluId
    , euluPermissions
    , euluEntity

    -- ** CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectURI
    , atKind
    , atProfile
    , atAccount
    , atWebProperty
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

    -- ** URLDestinationDetails
    , URLDestinationDetails
    , urlDestinationDetails
    , uddURL
    , uddMatchType
    , uddSteps
    , uddCaseSensitive
    , uddFirstStepRequired

    -- ** VisitNumPagesDetails
    , VisitNumPagesDetails
    , visitNumPagesDetails
    , vnpdComparisonValue
    , vnpdComparisonType

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
    , goaURLDestinationDetails
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

    -- ** Permissions
    , Permissions
    , permissions
    , pEffective

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

    -- ** ConversionPathValueItem
    , ConversionPathValueItem
    , conversionPathValueItem
    , cpviInteractionType
    , cpviNodeValue

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

    -- ** WebPropertyParentLink
    , WebPropertyParentLink
    , webPropertyParentLink
    , wpplHref
    , wpplType

    -- ** Entity
    , Entity
    , entity
    , eWebPropertyRef

    -- ** Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuAccountId
    , uuId
    , uuErrors

    -- ** SearchAndReplaceDetails
    , SearchAndReplaceDetails
    , searchAndReplaceDetails
    , sardFieldIndex
    , sardField
    , sardSearchString
    , sardReplaceString
    , sardCaseSensitive

    -- ** ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pflfProfileRef
    , pflfKind
    , pflfFilterRef
    , pflfSelfLink
    , pflfId
    , pflfRank

    -- ** CItem
    , CItem
    , cItem
    , ciV

    -- ** CloudStorageDownloadDetails
    , CloudStorageDownloadDetails
    , cloudStorageDownloadDetails
    , csddObjectId
    , csddBucketId

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- ** DataTable
    , DataTable
    , dataTable
    , dtCols
    , dtRows

    -- ** GaDataColumnHeadersItem
    , GaDataColumnHeadersItem
    , gaDataColumnHeadersItem
    , gdchiColumnType
    , gdchiName
    , gdchiDataType

    -- ** TotalsForAllResults
    , TotalsForAllResults
    , totalsForAllResults

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
import           Network.Google.Resource.Analytics.Management.UnSampledReports.Get
import           Network.Google.Resource.Analytics.Management.UnSampledReports.Insert
import           Network.Google.Resource.Analytics.Management.UnSampledReports.List
import           Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
import           Network.Google.Resource.Analytics.Management.Uploads.Get
import           Network.Google.Resource.Analytics.Management.Uploads.List
import           Network.Google.Resource.Analytics.Management.Uploads.UploadData
import           Network.Google.Resource.Analytics.Management.WebProperties.Get
import           Network.Google.Resource.Analytics.Management.WebProperties.Insert
import           Network.Google.Resource.Analytics.Management.WebProperties.List
import           Network.Google.Resource.Analytics.Management.WebProperties.Patch
import           Network.Google.Resource.Analytics.Management.WebProperties.Update
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
import           Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
import           Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete
import           Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert
import           Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List
import           Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update
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
       :<|> ManagementUnSampledReportsInsertResource
       :<|> ManagementUnSampledReportsListResource
       :<|> ManagementUnSampledReportsGetResource
       :<|> ManagementAccountsListResource
       :<|> ManagementExperimentsInsertResource
       :<|> ManagementExperimentsListResource
       :<|> ManagementExperimentsPatchResource
       :<|> ManagementExperimentsGetResource
       :<|> ManagementExperimentsDeleteResource
       :<|> ManagementExperimentsUpdateResource
       :<|> ManagementCustomDataSourcesListResource
       :<|> ManagementWebPropertyUserLinksInsertResource
       :<|> ManagementWebPropertyUserLinksListResource
       :<|> ManagementWebPropertyUserLinksDeleteResource
       :<|> ManagementWebPropertyUserLinksUpdateResource
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
       :<|> ManagementWebPropertiesInsertResource
       :<|> ManagementWebPropertiesListResource
       :<|> ManagementWebPropertiesPatchResource
       :<|> ManagementWebPropertiesGetResource
       :<|> ManagementWebPropertiesUpdateResource
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
