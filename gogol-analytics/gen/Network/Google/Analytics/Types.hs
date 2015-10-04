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

    -- * ParentLink
    , ParentLink
    , parentLink
    , plHref
    , plType

    -- * UnSampledReports
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

    -- * AdvancedDetails
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

    -- * UppercaseDetails
    , UppercaseDetails
    , uppercaseDetails
    , udFieldIndex
    , udField

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

    -- * UnSampledReport
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

    -- * VariationsItem
    , VariationsItem
    , variationsItem
    , viStatus
    , viWeight
    , viURL
    , viWon
    , viName

    -- * GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

    -- * ColumnHeadersItem
    , ColumnHeadersItem
    , columnHeadersItem
    , chiColumnType
    , chiName
    , chiDataType

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

    -- * DriveDownloadDetails
    , DriveDownloadDetails
    , driveDownloadDetails
    , dddDocumentId

    -- * RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- * ChildLink
    , ChildLink
    , childLink
    , clHref
    , clType

    -- * ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- * LowercaseDetails
    , LowercaseDetails
    , lowercaseDetails
    , ldFieldIndex
    , ldField

    -- * WebPropertyChildLink
    , WebPropertyChildLink
    , webPropertyChildLink
    , wpclHref
    , wpclType

    -- * SamplingLevel
    , SamplingLevel (..)

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

    -- * ProfileInfo
    , ProfileInfo
    , profileInfo
    , piWebPropertyId
    , piProfileId
    , piProfileName
    , piAccountId
    , piInternalWebPropertyId
    , piTableId

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

    -- * RealtimeDataColumnHeadersItem
    , RealtimeDataColumnHeadersItem
    , realtimeDataColumnHeadersItem
    , rdchiColumnType
    , rdchiName
    , rdchiDataType

    -- * UserRef
    , UserRef
    , userRef
    , urEmail
    , urKind
    , urId

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

    -- * ColsItem
    , ColsItem
    , colsItem
    , ciId
    , ciType
    , ciLabel

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

    -- * EventDetails
    , EventDetails
    , eventDetails
    , edUseEventValue
    , edEventConditions

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

    -- * RowsItemItem
    , RowsItemItem
    , rowsItemItem
    , riiPrimitiveValue
    , riiConversionPathValue

    -- * AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

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

    -- * EventConditionsItem
    , EventConditionsItem
    , eventConditionsItem
    , eciMatchType
    , eciExpression
    , eciComparisonValue
    , eciType
    , eciComparisonType

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

    -- * StepsItem
    , StepsItem
    , stepsItem
    , siURL
    , siName
    , siNumber

    -- * CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- * VisitTimeOnSiteDetails
    , VisitTimeOnSiteDetails
    , visitTimeOnSiteDetails
    , vtosdComparisonValue
    , vtosdComparisonType

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

    -- * Output
    , Output (..)

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

    -- * Attributes
    , Attributes
    , attributes

    -- * Query
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

    -- * DataTableRowsItem
    , DataTableRowsItem
    , dataTableRowsItem
    , dtriC

    -- * EntityUserLink
    , EntityUserLink
    , entityUserLink
    , euluKind
    , euluUserRef
    , euluSelfLink
    , euluId
    , euluPermissions
    , euluEntity

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

    -- * URLDestinationDetails
    , URLDestinationDetails
    , urlDestinationDetails
    , uddURL
    , uddMatchType
    , uddSteps
    , uddCaseSensitive
    , uddFirstStepRequired

    -- * VisitNumPagesDetails
    , VisitNumPagesDetails
    , visitNumPagesDetails
    , vnpdComparisonValue
    , vnpdComparisonType

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

    -- * Permissions
    , Permissions
    , permissions
    , pEffective

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

    -- * ConversionPathValueItem
    , ConversionPathValueItem
    , conversionPathValueItem
    , cpviInteractionType
    , cpviNodeValue

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

    -- * Entity
    , Entity
    , entity
    , eWebPropertyRef

    -- * Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuAccountId
    , uuId
    , uuErrors

    -- * SearchAndReplaceDetails
    , SearchAndReplaceDetails
    , searchAndReplaceDetails
    , sardFieldIndex
    , sardField
    , sardSearchString
    , sardReplaceString
    , sardCaseSensitive

    -- * ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pflfProfileRef
    , pflfKind
    , pflfFilterRef
    , pflfSelfLink
    , pflfId
    , pflfRank

    -- * CItem
    , CItem
    , cItem
    , ciV

    -- * CloudStorageDownloadDetails
    , CloudStorageDownloadDetails
    , cloudStorageDownloadDetails
    , csddObjectId
    , csddBucketId

    -- * Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- * DataTable
    , DataTable
    , dataTable
    , dtCols
    , dtRows

    -- * GaDataColumnHeadersItem
    , GaDataColumnHeadersItem
    , gaDataColumnHeadersItem
    , gdchiColumnType
    , gdchiName
    , gdchiDataType

    -- * TotalsForAllResults
    , TotalsForAllResults
    , totalsForAllResults

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
