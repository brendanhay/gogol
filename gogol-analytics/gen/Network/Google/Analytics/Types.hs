{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      analytics


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

    -- * AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- * AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- * AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

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

    -- * AccountSummary
    , AccountSummary
    , accountSummary
    , asKind
    , asWebProperties
    , asName
    , asId

    -- * AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

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

    -- * AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- * AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- * Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- * ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- * Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

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

    -- * CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- * CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

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

    -- * CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

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

    -- * CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

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

    -- * EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

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

    -- * EntityUserLink
    , EntityUserLink
    , entityUserLink
    , eulKind
    , eulUserRef
    , eulSelfLink
    , eulId
    , eulPermissions
    , eulEntity

    -- * EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- * EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

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

    -- * ExperimentItemVariations
    , ExperimentItemVariations
    , experimentItemVariations
    , eivStatus
    , eivWeight
    , eivUrl
    , eivWon
    , eivName

    -- * ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

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

    -- * FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- * FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- * FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- * FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- * FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- * FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

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

    -- * GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- * GaDataItemCItemRowsDataTable
    , GaDataItemCItemRowsDataTable
    , gaDataItemCItemRowsDataTable
    , gdicirdtV

    -- * GaDataItemColsDataTable
    , GaDataItemColsDataTable
    , gaDataItemColsDataTable
    , gdicdtId
    , gdicdtType
    , gdicdtLabel

    -- * GaDataItemColumnHeaders
    , GaDataItemColumnHeaders
    , gaDataItemColumnHeaders
    , gdichColumnType
    , gdichName
    , gdichDataType

    -- * GaDataItemRowsDataTable
    , GaDataItemRowsDataTable
    , gaDataItemRowsDataTable
    , gdirdtC

    -- * GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

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

    -- * GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

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

    -- * GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- * GoalItemEventConditionsEventDetails
    , GoalItemEventConditionsEventDetails
    , goalItemEventConditionsEventDetails
    , giecedMatchType
    , giecedExpression
    , giecedComparisonValue
    , giecedType
    , giecedComparisonType

    -- * GoalItemStepsUrlDestinationDetails
    , GoalItemStepsUrlDestinationDetails
    , goalItemStepsUrlDestinationDetails
    , gisuddUrl
    , gisuddName
    , gisuddNumber

    -- * GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

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

    -- * GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

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

    -- * McfDataItemColumnHeaders
    , McfDataItemColumnHeaders
    , mcfDataItemColumnHeaders
    , mdichColumnType
    , mdichName
    , mdichDataType

    -- * McfDataItemConversionPathValueItemItemRows
    , McfDataItemConversionPathValueItemItemRows
    , mcfDataItemConversionPathValueItemItemRows
    , mdicpviirInteractionType
    , mdicpviirNodeValue

    -- * McfDataItemItemRows
    , McfDataItemItemRows
    , mcfDataItemItemRows
    , mdiirPrimitiveValue
    , mdiirConversionPathValue

    -- * McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

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

    -- * McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

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

    -- * ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- * ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pProfileRef
    , pKind
    , pFilterRef
    , pSelfLink
    , pId
    , pRank

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

    -- * ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- * ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

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

    -- * ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

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

    -- * RealtimeDataItemColumnHeaders
    , RealtimeDataItemColumnHeaders
    , realtimeDataItemColumnHeaders
    , rdichColumnType
    , rdichName
    , rdichDataType

    -- * RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- * RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- * RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

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

    -- * UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- * UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

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

    -- * Upload
    , Upload
    , upload
    , uplStatus
    , uplKind
    , uplCustomDataSourceId
    , uplAccountId
    , uplId
    , uplErrors

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

    -- * UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

    -- * WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

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

    -- * WebpropertyChildLink
    , WebpropertyChildLink
    , webpropertyChildLink
    , wclHref
    , wclType

    -- * WebpropertyParentLink
    , WebpropertyParentLink
    , webpropertyParentLink
    , wplHref
    , wplType

    -- * WebpropertyPermissions
    , WebpropertyPermissions
    , webpropertyPermissions
    , wpEffective
    ) where

import           Network.Google.Analytics.Types.Product
import           Network.Google.Analytics.Types.Sum
import           Network.Google.Prelude

analytics :: a
analytics = error "analytics"
