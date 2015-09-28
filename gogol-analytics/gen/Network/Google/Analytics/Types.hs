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

    -- * WebpropertyPermissions
    , WebpropertyPermissions
    , webpropertyPermissions
    , wpEffective

    -- * McfDataItemColumnHeaders
    , McfDataItemColumnHeaders
    , mcfDataItemColumnHeaders
    , mdichColumnType
    , mdichName
    , mdichDataType

    -- * ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- * GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

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

    -- * GaDataItemRowsDataTable
    , GaDataItemRowsDataTable
    , gaDataItemRowsDataTable
    , gdirdtC

    -- * ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

    -- * FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

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

    -- * CustomMetric
    , CustomMetric
    , customMetric
    , cParentLink
    , cWebPropertyId
    , cKind
    , cMaxValue
    , cCreated
    , cMinValue
    , cActive
    , cSelfLink
    , cAccountId
    , cName
    , cScope
    , cId
    , cUpdated
    , cType
    , cIndex

    -- * Webproperty
    , Webproperty
    , webproperty
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
    , wWebsiteUrl
    , wIndustryVertical
    , wLevel

    -- * FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

    -- * AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

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

    -- * GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

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

    -- * EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- * Alt
    , Alt (..)

    -- * FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- * Goal
    , Goal
    , goal
    , gParentLink
    , gWebPropertyId
    , gKind
    , gCreated
    , gValue
    , gProfileId
    , gEventDetails
    , gActive
    , gSelfLink
    , gVisitTimeOnSiteDetails
    , gAccountId
    , gName
    , gInternalWebPropertyId
    , gId
    , gUrlDestinationDetails
    , gVisitNumPagesDetails
    , gUpdated
    , gType

    -- * AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

    -- * Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

    -- * GaDataItemColsDataTable
    , GaDataItemColsDataTable
    , gaDataItemColsDataTable
    , gdicdtId
    , gdicdtType
    , gdicdtLabel

    -- * AccountSummary
    , AccountSummary
    , accountSummary
    , asKind
    , asWebProperties
    , asName
    , asId

    -- * CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

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

    -- * AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- * FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- * Filter
    , Filter
    , filter'
    , fParentLink
    , fAdvancedDetails
    , fUppercaseDetails
    , fLowercaseDetails
    , fKind
    , fCreated
    , fIncludeDetails
    , fExcludeDetails
    , fSelfLink
    , fAccountId
    , fName
    , fId
    , fUpdated
    , fType
    , fSearchAndReplaceDetails

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

    -- * Uploads
    , Uploads
    , uploads
    , uNextLink
    , uItemsPerPage
    , uKind
    , uItems
    , uTotalResults
    , uStartIndex
    , uPreviousLink

    -- * DataGaGet'Output
    , DataGaGet'Output (..)

    -- * CustomDimension
    , CustomDimension
    , customDimension
    , cusParentLink
    , cusWebPropertyId
    , cusKind
    , cusCreated
    , cusActive
    , cusSelfLink
    , cusAccountId
    , cusName
    , cusScope
    , cusId
    , cusUpdated
    , cusIndex

    -- * ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pProfileRef
    , pKind
    , pFilterRef
    , pSelfLink
    , pId
    , pRank

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

    -- * Upload
    , Upload
    , upload
    , uplStatus
    , uplKind
    , uplCustomDataSourceId
    , uplAccountId
    , uplId
    , uplErrors

    -- * CustomDataSource
    , CustomDataSource
    , customDataSource
    , cdsParentLink
    , cdsWebPropertyId
    , cdsChildLink
    , cdsKind
    , cdsCreated
    , cdsUploadType
    , cdsImportBehavior
    , cdsSelfLink
    , cdsAccountId
    , cdsName
    , cdsId
    , cdsUpdated
    , cdsType
    , cdsDescription
    , cdsProfilesLinked

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

    -- * UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

    -- * Goals
    , Goals
    , goals
    , goaNextLink
    , goaItemsPerPage
    , goaKind
    , goaUsername
    , goaItems
    , goaTotalResults
    , goaStartIndex
    , goaPreviousLink

    -- * FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- * WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

    -- * EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- * RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

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

    -- * GaDataItemCItemRowsDataTable
    , GaDataItemCItemRowsDataTable
    , gaDataItemCItemRowsDataTable
    , gdicirdtV

    -- * GoalItemEventConditionsEventDetails
    , GoalItemEventConditionsEventDetails
    , goalItemEventConditionsEventDetails
    , giecedMatchType
    , giecedExpression
    , giecedComparisonValue
    , giecedType
    , giecedComparisonType

    -- * CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

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

    -- * CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

    -- * UnsampledReport
    , UnsampledReport
    , unsampledReport
    , unsDownloadType
    , unsStatus
    , unsMetrics
    , unsDriveDownloadDetails
    , unsWebPropertyId
    , unsKind
    , unsCreated
    , unsFilters
    , unsProfileId
    , unsEndDate
    , unsSelfLink
    , unsAccountId
    , unsId
    , unsUpdated
    , unsTitle
    , unsDimensions
    , unsSegment
    , unsCloudStorageDownloadDetails
    , unsStartDate

    -- * GoalItemStepsUrlDestinationDetails
    , GoalItemStepsUrlDestinationDetails
    , goalItemStepsUrlDestinationDetails
    , gisuddUrl
    , gisuddName
    , gisuddNumber

    -- * CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

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

    -- * DataMcfGet'SamplingLevel
    , DataMcfGet'SamplingLevel (..)

    -- * ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- * McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

    -- * ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- * EntityUserLink
    , EntityUserLink
    , entityUserLink
    , eulKind
    , eulUserRef
    , eulSelfLink
    , eulId
    , eulPermissions
    , eulEntity

    -- * GaDataItemColumnHeaders
    , GaDataItemColumnHeaders
    , gaDataItemColumnHeaders
    , gdichColumnType
    , gdichName
    , gdichDataType

    -- * GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

    -- * McfDataItemItemRows
    , McfDataItemItemRows
    , mcfDataItemItemRows
    , mdiirPrimitiveValue
    , mdiirConversionPathValue

    -- * UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- * RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

    -- * CustomDataSources
    , CustomDataSources
    , customDataSources
    , cdssNextLink
    , cdssItemsPerPage
    , cdssKind
    , cdssUsername
    , cdssItems
    , cdssTotalResults
    , cdssStartIndex
    , cdssPreviousLink

    -- * ExperimentItemVariations
    , ExperimentItemVariations
    , experimentItemVariations
    , eivStatus
    , eivWeight
    , eivUrl
    , eivWon
    , eivName

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

    -- * ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

    -- * UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

    -- * Profiles
    , Profiles
    , profiles
    , proNextLink
    , proItemsPerPage
    , proKind
    , proUsername
    , proItems
    , proTotalResults
    , proStartIndex
    , proPreviousLink

    -- * AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- * WebpropertyParentLink
    , WebpropertyParentLink
    , webpropertyParentLink
    , wplHref
    , wplType

    -- * AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

    -- * GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

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

    -- * GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

    -- * Profile
    , Profile
    , profile
    , ppParentLink
    , ppECommerceTracking
    , ppSiteSearchCategoryParameters
    , ppWebPropertyId
    , ppChildLink
    , ppSiteSearchQueryParameters
    , ppKind
    , ppDefaultPage
    , ppCreated
    , ppSelfLink
    , ppAccountId
    , ppName
    , ppCurrency
    , ppInternalWebPropertyId
    , ppId
    , ppUpdated
    , ppPermissions
    , ppWebsiteUrl
    , ppType
    , ppStripSiteSearchCategoryParameters
    , ppTimezone
    , ppExcludeQueryParameters
    , ppEnhancedECommerceTracking
    , ppStripSiteSearchQueryParameters

    -- * RealtimeDataItemColumnHeaders
    , RealtimeDataItemColumnHeaders
    , realtimeDataItemColumnHeaders
    , rdichColumnType
    , rdichName
    , rdichDataType

    -- * EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

    -- * Filters
    , Filters
    , filters
    , filNextLink
    , filItemsPerPage
    , filKind
    , filUsername
    , filItems
    , filTotalResults
    , filStartIndex
    , filPreviousLink

    -- * AccountSummaries
    , AccountSummaries
    , accountSummaries
    , assNextLink
    , assItemsPerPage
    , assKind
    , assUsername
    , assItems
    , assTotalResults
    , assStartIndex
    , assPreviousLink

    -- * WebPropertySummary
    , WebPropertySummary
    , webPropertySummary
    , wpsKind
    , wpsProfiles
    , wpsName
    , wpsInternalWebPropertyId
    , wpsId
    , wpsWebsiteUrl
    , wpsLevel

    -- * GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- * GoalUrlDestinationDetails
    , GoalUrlDestinationDetails
    , goalUrlDestinationDetails
    , guddUrl
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- * GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

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

    -- * WebpropertyChildLink
    , WebpropertyChildLink
    , webpropertyChildLink
    , wclHref
    , wclType

    -- * ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- * RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- * Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- * McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

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

    -- * DataGaGet'SamplingLevel
    , DataGaGet'SamplingLevel (..)

    -- * EntityUserLinks
    , EntityUserLinks
    , entityUserLinks
    , eulsNextLink
    , eulsItemsPerPage
    , eulsKind
    , eulsItems
    , eulsTotalResults
    , eulsStartIndex
    , eulsPreviousLink

    -- * AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- * Webproperties
    , Webproperties
    , webproperties
    , webNextLink
    , webItemsPerPage
    , webKind
    , webUsername
    , webItems
    , webTotalResults
    , webStartIndex
    , webPreviousLink

    -- * FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- * McfDataItemConversionPathValueItemItemRows
    , McfDataItemConversionPathValueItemItemRows
    , mcfDataItemConversionPathValueItemItemRows
    , mdicpviirInteractionType
    , mdicpviirNodeValue

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
    , expRewriteVariationUrlsAsOriginal
    , expObjectiveMetric
    , expWinnerConfidenceLevel
    , expServingFramework
    , expDescription
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
