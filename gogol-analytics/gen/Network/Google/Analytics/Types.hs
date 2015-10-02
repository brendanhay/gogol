{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types
    (
    -- * Service URL
      analyticsURL

    -- * GaDataColumnHeaders
    , GaDataColumnHeaders
    , gaDataColumnHeaders
    , gdchColumnType
    , gdchName
    , gdchDataType

    -- * UnsampledReports
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

    -- * GaDataQuery
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

    -- * UnsampledReport
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

    -- * GoalEventDetailsEventConditions
    , GoalEventDetailsEventConditions
    , goalEventDetailsEventConditions
    , gedecMatchType
    , gedecExpression
    , gedecComparisonValue
    , gedecType
    , gedecComparisonType

    -- * ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- * GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

    -- * ProfileRef
    , ProfileRef
    , profileRef
    , prWebPropertyId
    , prKind
    , prHref
    , prAccountId
    , prName
    , prInternalWebPropertyId
    , prId

    -- * Experiments
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

    -- * EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- * Accounts
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

    -- * FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- * RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- * ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- * AnalyticsDataMcfGetSamplingLevel
    , AnalyticsDataMcfGetSamplingLevel (..)

    -- * UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

    -- * WebPropertyChildLink
    , WebPropertyChildLink
    , webPropertyChildLink
    , wpclHref
    , wpclType

    -- * McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

    -- * CustomDataSources
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

    -- * AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

    -- * EntityAdWordsLinks
    , EntityAdWordsLinks
    , entityAdWordsLinks
    , eawlNextLink
    , eawlItemsPerPage
    , eawlKind
    , eawlItems
    , eawlTotalResults
    , eawlStartIndex
    , eawlPreviousLink

    -- * McfData
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

    -- * AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- * GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

    -- * Profiles
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

    -- * UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

    -- * ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

    -- * Filters
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

    -- * WebPropertySummary
    , WebPropertySummary
    , webPropertySummary
    , wpsKind
    , wpsProfiles
    , wpsName
    , wpsInternalWebPropertyId
    , wpsId
    , wpsWebsiteURL
    , wpsLevel

    -- * GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- * FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- * AccountSummaries
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

    -- * EntityAdWordsLink
    , EntityAdWordsLink
    , entityAdWordsLink
    , entAdWordsAccounts
    , entProfileIds
    , entKind
    , entSelfLink
    , entName
    , entId
    , entEntity

    -- * Profile
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

    -- * GaData
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

    -- * WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

    -- * Goals
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

    -- * RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

    -- * CustomDataSource
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

    -- * AnalyticsDataGaGetOutput
    , AnalyticsDataGaGetOutput (..)

    -- * WebProperties
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

    -- * McfDataRows
    , McfDataRows
    , mcfDataRows
    , mdrPrimitiveValue
    , mdrConversionPathValue

    -- * AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- * GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

    -- * Account
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

    -- * FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- * AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- * EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- * Experiment
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

    -- * EntityUserLinks
    , EntityUserLinks
    , entityUserLinks
    , eulNextLink
    , eulItemsPerPage
    , eulKind
    , eulItems
    , eulTotalResults
    , eulStartIndex
    , eulPreviousLink

    -- * FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- * CustomMetrics
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

    -- * FilterAdvancedDetails
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

    -- * FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

    -- * CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- * CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

    -- * WebProperty
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

    -- * CustomMetric
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

    -- * WebPropertyPermissions
    , WebPropertyPermissions
    , webPropertyPermissions
    , wppEffective

    -- * RealtimeData
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

    -- * ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

    -- * McfDataRowsConversionPathValue
    , McfDataRowsConversionPathValue
    , mcfDataRowsConversionPathValue
    , mdrcpvInteractionType
    , mdrcpvNodeValue

    -- * GaDataDataTableRowsC
    , GaDataDataTableRowsC
    , gaDataDataTableRowsC
    , gddtrcV

    -- * EntityUserLink
    , EntityUserLink
    , entityUserLink
    , euluKind
    , euluUserRef
    , euluSelfLink
    , euluId
    , euluPermissions
    , euluEntity

    -- * McfDataColumnHeaders
    , McfDataColumnHeaders
    , mcfDataColumnHeaders
    , mdchColumnType
    , mdchName
    , mdchDataType

    -- * McfDataQuery
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

    -- * CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

    -- * AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectURI
    , atKind
    , atProfile
    , atAccount
    , atWebProperty
    , atId

    -- * RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- * RealtimeDataColumnHeaders
    , RealtimeDataColumnHeaders
    , realtimeDataColumnHeaders
    , rdchColumnType
    , rdchName
    , rdchDataType

    -- * AccountSummary
    , AccountSummary
    , accountSummary
    , assKind
    , assWebProperties
    , assName
    , assId

    -- * Goal
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

    -- * Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

    -- * FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- * EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

    -- * CustomDimensions
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

    -- * Uploads
    , Uploads
    , uploads
    , uplNextLink
    , uplItemsPerPage
    , uplKind
    , uplItems
    , uplTotalResults
    , uplStartIndex
    , uplPreviousLink

    -- * GoalURLDestinationDetails
    , GoalURLDestinationDetails
    , goalURLDestinationDetails
    , guddURL
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- * Filter
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

    -- * GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- * Segments
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

    -- * ProfileFilterLinks
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

    -- * Segment
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

    -- * AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- * ExperimentVariations
    , ExperimentVariations
    , experimentVariations
    , evStatus
    , evWeight
    , evURL
    , evWon
    , evName

    -- * GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

    -- * CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

    -- * CustomDimension
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

    -- * AnalyticsDataGaGetSamplingLevel
    , AnalyticsDataGaGetSamplingLevel (..)

    -- * WebPropertyParentLink
    , WebPropertyParentLink
    , webPropertyParentLink
    , wpplHref
    , wpplType

    -- * Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuAccountId
    , uuId
    , uuErrors

    -- * ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pflfProfileRef
    , pflfKind
    , pflfFilterRef
    , pflfSelfLink
    , pflfId
    , pflfRank

    -- * GaDataDataTableCols
    , GaDataDataTableCols
    , gaDataDataTableCols
    , gddtcId
    , gddtcType
    , gddtcLabel

    -- * Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- * McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

    -- * UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- * GoalURLDestinationDetailsSteps
    , GoalURLDestinationDetailsSteps
    , goalURLDestinationDetailsSteps
    , guddsURL
    , guddsName
    , guddsNumber

    -- * ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- * ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- * GaDataDataTableRows
    , GaDataDataTableRows
    , gaDataDataTableRows
    , gddtrC

    -- * GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType
    ) where

import           Network.Google.Analytics.Types.Product
import           Network.Google.Analytics.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Google Analytics API.
analyticsURL :: BaseUrl
analyticsURL
  = BaseUrl Https
      "https://www.googleapis.com/analytics/v3/"
      443
