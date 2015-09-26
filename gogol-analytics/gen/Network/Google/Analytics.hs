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
    -- * Resources
      Analytics
    , DataAPI
    , McfAPI
    , McfGet
    , GaAPI
    , GaGet
    , RealtimeAPI
    , RealtimeGet
    , ManagementAPI
    , WebPropertyAdWordsLinksAPI
    , WebPropertyAdWordsLinksInsert
    , WebPropertyAdWordsLinksList
    , WebPropertyAdWordsLinksPatch
    , WebPropertyAdWordsLinksGet
    , WebPropertyAdWordsLinksDelete
    , WebPropertyAdWordsLinksUpdate
    , UnsampledReportsAPI
    , UnsampledReportsInsert
    , UnsampledReportsList
    , UnsampledReportsGet
    , AccountsAPI
    , AccountsList
    , ExperimentsAPI
    , ExperimentsInsert
    , ExperimentsList
    , ExperimentsPatch
    , ExperimentsGet
    , ExperimentsDelete
    , ExperimentsUpdate
    , CustomDataSourcesAPI
    , CustomDataSourcesList
    , WebpropertyUserLinksAPI
    , WebpropertyUserLinksInsert
    , WebpropertyUserLinksList
    , WebpropertyUserLinksDelete
    , WebpropertyUserLinksUpdate
    , ProfilesAPI
    , ProfilesInsert
    , ProfilesList
    , ProfilesPatch
    , ProfilesGet
    , ProfilesDelete
    , ProfilesUpdate
    , FiltersAPI
    , FiltersInsert
    , FiltersList
    , FiltersPatch
    , FiltersGet
    , FiltersDelete
    , FiltersUpdate
    , AccountSummariesAPI
    , AccountSummariesList
    , GoalsAPI
    , GoalsInsert
    , GoalsList
    , GoalsPatch
    , GoalsGet
    , GoalsUpdate
    , WebpropertiesAPI
    , WebpropertiesInsert
    , WebpropertiesList
    , WebpropertiesPatch
    , WebpropertiesGet
    , WebpropertiesUpdate
    , CustomMetricsAPI
    , CustomMetricsInsert
    , CustomMetricsList
    , CustomMetricsPatch
    , CustomMetricsGet
    , CustomMetricsUpdate
    , UploadsAPI
    , UploadsList
    , UploadsDeleteUploadData
    , UploadsGet
    , UploadsUploadData
    , SegmentsAPI
    , SegmentsList
    , ProfileFilterLinksAPI
    , ProfileFilterLinksInsert
    , ProfileFilterLinksList
    , ProfileFilterLinksPatch
    , ProfileFilterLinksGet
    , ProfileFilterLinksDelete
    , ProfileFilterLinksUpdate
    , CustomDimensionsAPI
    , CustomDimensionsInsert
    , CustomDimensionsList
    , CustomDimensionsPatch
    , CustomDimensionsGet
    , CustomDimensionsUpdate
    , AccountUserLinksAPI
    , AccountUserLinksInsert
    , AccountUserLinksList
    , AccountUserLinksDelete
    , AccountUserLinksUpdate
    , ProfileUserLinksAPI
    , ProfileUserLinksInsert
    , ProfileUserLinksList
    , ProfileUserLinksDelete
    , ProfileUserLinksUpdate
    , ProvisioningAPI
    , ProvisioningCreateAccountTicket
    , MetadataAPI
    , ColumnsAPI
    , ColumnsList

    -- * Types

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

    -- ** AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- ** AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- ** AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

    -- ** AccountSummaries
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

    -- ** AccountSummary
    , AccountSummary
    , accountSummary
    , asKind
    , asWebProperties
    , asName
    , asId

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

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

    -- ** AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- ** ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- ** Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

    -- ** CustomDataSource
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

    -- ** CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

    -- ** CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

    -- ** CustomDataSources
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

    -- ** CustomDimension
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

    -- ** CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

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

    -- ** CustomMetric
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

    -- ** CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

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

    -- ** EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

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

    -- ** EntityUserLink
    , EntityUserLink
    , entityUserLink
    , eulKind
    , eulUserRef
    , eulSelfLink
    , eulId
    , eulPermissions
    , eulEntity

    -- ** EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- ** EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- ** EntityUserLinks
    , EntityUserLinks
    , entityUserLinks
    , eulsNextLink
    , eulsItemsPerPage
    , eulsKind
    , eulsItems
    , eulsTotalResults
    , eulsStartIndex
    , eulsPreviousLink

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

    -- ** ExperimentItemVariations
    , ExperimentItemVariations
    , experimentItemVariations
    , eivStatus
    , eivWeight
    , eivUrl
    , eivWon
    , eivName

    -- ** ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

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

    -- ** Filter
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

    -- ** FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- ** FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- ** FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- ** FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- ** FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- ** FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

    -- ** Filters
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

    -- ** GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- ** GaDataItemCItemRowsDataTable
    , GaDataItemCItemRowsDataTable
    , gaDataItemCItemRowsDataTable
    , gdicirdtV

    -- ** GaDataItemColsDataTable
    , GaDataItemColsDataTable
    , gaDataItemColsDataTable
    , gdicdtId
    , gdicdtType
    , gdicdtLabel

    -- ** GaDataItemColumnHeaders
    , GaDataItemColumnHeaders
    , gaDataItemColumnHeaders
    , gdichColumnType
    , gdichName
    , gdichDataType

    -- ** GaDataItemRowsDataTable
    , GaDataItemRowsDataTable
    , gaDataItemRowsDataTable
    , gdirdtC

    -- ** GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

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

    -- ** GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

    -- ** Goal
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

    -- ** GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- ** GoalItemEventConditionsEventDetails
    , GoalItemEventConditionsEventDetails
    , goalItemEventConditionsEventDetails
    , giecedMatchType
    , giecedExpression
    , giecedComparisonValue
    , giecedType
    , giecedComparisonType

    -- ** GoalItemStepsUrlDestinationDetails
    , GoalItemStepsUrlDestinationDetails
    , goalItemStepsUrlDestinationDetails
    , gisuddUrl
    , gisuddName
    , gisuddNumber

    -- ** GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

    -- ** GoalUrlDestinationDetails
    , GoalUrlDestinationDetails
    , goalUrlDestinationDetails
    , guddUrl
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- ** GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

    -- ** GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

    -- ** Goals
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

    -- ** McfDataItemColumnHeaders
    , McfDataItemColumnHeaders
    , mcfDataItemColumnHeaders
    , mdichColumnType
    , mdichName
    , mdichDataType

    -- ** McfDataItemConversionPathValueItemItemRows
    , McfDataItemConversionPathValueItemItemRows
    , mcfDataItemConversionPathValueItemItemRows
    , mdicpviirInteractionType
    , mdicpviirNodeValue

    -- ** McfDataItemItemRows
    , McfDataItemItemRows
    , mcfDataItemItemRows
    , mdiirPrimitiveValue
    , mdiirConversionPathValue

    -- ** McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

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

    -- ** McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

    -- ** Profile
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

    -- ** ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- ** ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pProfileRef
    , pKind
    , pFilterRef
    , pSelfLink
    , pId
    , pRank

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

    -- ** ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- ** ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

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

    -- ** ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

    -- ** Profiles
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

    -- ** RealtimeDataItemColumnHeaders
    , RealtimeDataItemColumnHeaders
    , realtimeDataItemColumnHeaders
    , rdichColumnType
    , rdichName
    , rdichDataType

    -- ** RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

    -- ** RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- ** RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

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

    -- ** UnsampledReport
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

    -- ** UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- ** UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

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

    -- ** Upload
    , Upload
    , upload
    , uplStatus
    , uplKind
    , uplCustomDataSourceId
    , uplAccountId
    , uplId
    , uplErrors

    -- ** Uploads
    , Uploads
    , uploads
    , uNextLink
    , uItemsPerPage
    , uKind
    , uItems
    , uTotalResults
    , uStartIndex
    , uPreviousLink

    -- ** UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

    -- ** WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

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

    -- ** Webproperties
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

    -- ** Webproperty
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

    -- ** WebpropertyChildLink
    , WebpropertyChildLink
    , webpropertyChildLink
    , wclHref
    , wclType

    -- ** WebpropertyParentLink
    , WebpropertyParentLink
    , webpropertyParentLink
    , wplHref
    , wplType

    -- ** WebpropertyPermissions
    , WebpropertyPermissions
    , webpropertyPermissions
    , wpEffective
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Analytics =
     DataAPI :<|> ManagementAPI :<|> ProvisioningAPI :<|>
       MetadataAPI

type DataAPI = McfAPI :<|> GaAPI :<|> RealtimeAPI

type McfAPI = McfGet

-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
type McfGet =
     "analytics" :> "v3" :> "data" :> "mcf" :>
       QueryParam "quotaUser" Text
       :> QueryParam "metrics" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "samplingLevel" Text
       :> QueryParam "userIp" Text
       :> QueryParam "filters" Text
       :> QueryParam "ids" Text
       :> QueryParam "end-date" Text
       :> QueryParam "key" Text
       :> QueryParam "sort" Text
       :> QueryParam "dimensions" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "start-date" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type GaAPI = GaGet

-- | Returns Analytics data for a view (profile).
type GaGet =
     "analytics" :> "v3" :> "data" :> "ga" :>
       QueryParam "quotaUser" Text
       :> QueryParam "metrics" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "samplingLevel" Text
       :> QueryParam "userIp" Text
       :> QueryParam "filters" Text
       :> QueryParam "ids" Text
       :> QueryParam "end-date" Text
       :> QueryParam "key" Text
       :> QueryParam "output" Text
       :> QueryParam "sort" Text
       :> QueryParam "dimensions" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "segment" Text
       :> QueryParam "start-date" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RealtimeAPI = RealtimeGet

-- | Returns real time data for a view (profile).
type RealtimeGet =
     "analytics" :> "v3" :> "data" :> "realtime" :>
       QueryParam "quotaUser" Text
       :> QueryParam "metrics" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "filters" Text
       :> QueryParam "ids" Text
       :> QueryParam "key" Text
       :> QueryParam "sort" Text
       :> QueryParam "dimensions" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ManagementAPI =
     WebPropertyAdWordsLinksAPI :<|> UnsampledReportsAPI
       :<|> AccountsAPI
       :<|> ExperimentsAPI
       :<|> CustomDataSourcesAPI
       :<|> WebpropertyUserLinksAPI
       :<|> ProfilesAPI
       :<|> FiltersAPI
       :<|> AccountSummariesAPI
       :<|> GoalsAPI
       :<|> WebpropertiesAPI
       :<|> CustomMetricsAPI
       :<|> UploadsAPI
       :<|> SegmentsAPI
       :<|> ProfileFilterLinksAPI
       :<|> CustomDimensionsAPI
       :<|> AccountUserLinksAPI
       :<|> ProfileUserLinksAPI

type WebPropertyAdWordsLinksAPI =
     WebPropertyAdWordsLinksInsert :<|>
       WebPropertyAdWordsLinksList
       :<|> WebPropertyAdWordsLinksPatch
       :<|> WebPropertyAdWordsLinksGet
       :<|> WebPropertyAdWordsLinksDelete
       :<|> WebPropertyAdWordsLinksUpdate

-- | Creates a webProperty-AdWords link.
type WebPropertyAdWordsLinksInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists webProperty-AdWords links for a given web property.
type WebPropertyAdWordsLinksList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing webProperty-AdWords link. This method supports patch
-- semantics.
type WebPropertyAdWordsLinksPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> Capture "webPropertyAdWordsLinkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a web property-AdWords link to which the user has access.
type WebPropertyAdWordsLinksGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> Capture "webPropertyAdWordsLinkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a web property-AdWords link.
type WebPropertyAdWordsLinksDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> Capture "webPropertyAdWordsLinkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing webProperty-AdWords link.
type WebPropertyAdWordsLinksUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityAdWordsLinks"
       :> Capture "webPropertyAdWordsLinkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UnsampledReportsAPI =
     UnsampledReportsInsert :<|> UnsampledReportsList :<|>
       UnsampledReportsGet

-- | Create a new unsampled report.
type UnsampledReportsInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "unsampledReports"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists unsampled reports to which the user has access.
type UnsampledReportsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "unsampledReports"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a single unsampled report.
type UnsampledReportsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "unsampledReports"
       :> Capture "unsampledReportId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountsAPI = AccountsList

-- | Lists all accounts to which the user has access.
type AccountsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ExperimentsAPI =
     ExperimentsInsert :<|> ExperimentsList :<|>
       ExperimentsPatch
       :<|> ExperimentsGet
       :<|> ExperimentsDelete
       :<|> ExperimentsUpdate

-- | Create a new experiment.
type ExperimentsInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists experiments to which the user has access.
type ExperimentsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update an existing experiment. This method supports patch semantics.
type ExperimentsPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> Capture "experimentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns an experiment to which the user has access.
type ExperimentsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> Capture "experimentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete an experiment.
type ExperimentsDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> Capture "experimentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update an existing experiment.
type ExperimentsUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "experiments"
       :> Capture "experimentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomDataSourcesAPI = CustomDataSourcesList

-- | List custom data sources to which the user has access.
type CustomDataSourcesList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDataSources"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type WebpropertyUserLinksAPI =
     WebpropertyUserLinksInsert :<|>
       WebpropertyUserLinksList
       :<|> WebpropertyUserLinksDelete
       :<|> WebpropertyUserLinksUpdate

-- | Adds a new user to the given web property.
type WebpropertyUserLinksInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists webProperty-user links for a given web property.
type WebpropertyUserLinksList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a user from the given web property.
type WebpropertyUserLinksDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates permissions for an existing user on the given web property.
type WebpropertyUserLinksUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProfilesAPI =
     ProfilesInsert :<|> ProfilesList :<|> ProfilesPatch
       :<|> ProfilesGet
       :<|> ProfilesDelete
       :<|> ProfilesUpdate

-- | Create a new view (profile).
type ProfilesInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists views (profiles) to which the user has access.
type ProfilesList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing view (profile). This method supports patch
-- semantics.
type ProfilesPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a view (profile) to which the user has access.
type ProfilesGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a view (profile).
type ProfilesDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing view (profile).
type ProfilesUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FiltersAPI =
     FiltersInsert :<|> FiltersList :<|> FiltersPatch :<|>
       FiltersGet
       :<|> FiltersDelete
       :<|> FiltersUpdate

-- | Create a new filter.
type FiltersInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all filters for an account
type FiltersList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing filter. This method supports patch semantics.
type FiltersPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> Capture "filterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a filters to which the user has access.
type FiltersGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> Capture "filterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a filter.
type FiltersDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> Capture "filterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing filter.
type FiltersUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "filters"
       :> Capture "filterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountSummariesAPI = AccountSummariesList

-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
type AccountSummariesList =
     "analytics" :> "v3" :> "management" :>
       "accountSummaries"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type GoalsAPI =
     GoalsInsert :<|> GoalsList :<|> GoalsPatch :<|>
       GoalsGet
       :<|> GoalsUpdate

-- | Create a new goal.
type GoalsInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "goals"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists goals to which the user has access.
type GoalsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "goals"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing view (profile). This method supports patch
-- semantics.
type GoalsPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "goals"
       :> Capture "goalId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a goal to which the user has access.
type GoalsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "goals"
       :> Capture "goalId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing view (profile).
type GoalsUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "goals"
       :> Capture "goalId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type WebpropertiesAPI =
     WebpropertiesInsert :<|> WebpropertiesList :<|>
       WebpropertiesPatch
       :<|> WebpropertiesGet
       :<|> WebpropertiesUpdate

-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
type WebpropertiesInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists web properties to which the user has access.
type WebpropertiesList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing web property. This method supports patch semantics.
type WebpropertiesPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a web property to which the user has access.
type WebpropertiesGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing web property.
type WebpropertiesUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomMetricsAPI =
     CustomMetricsInsert :<|> CustomMetricsList :<|>
       CustomMetricsPatch
       :<|> CustomMetricsGet
       :<|> CustomMetricsUpdate

-- | Create a new custom metric.
type CustomMetricsInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customMetrics"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists custom metrics to which the user has access.
type CustomMetricsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customMetrics"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing custom metric. This method supports patch semantics.
type CustomMetricsPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customMetrics"
       :> Capture "customMetricId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ignoreCustomDataSourceLinks" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a custom metric to which the user has access.
type CustomMetricsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customMetrics"
       :> Capture "customMetricId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing custom metric.
type CustomMetricsUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customMetrics"
       :> Capture "customMetricId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ignoreCustomDataSourceLinks" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UploadsAPI =
     UploadsList :<|> UploadsDeleteUploadData :<|>
       UploadsGet
       :<|> UploadsUploadData

-- | List uploads to which the user has access.
type UploadsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDataSources"
       :> Capture "customDataSourceId" Text
       :> "uploads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete data associated with a previous upload.
type UploadsDeleteUploadData =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDataSources"
       :> Capture "customDataSourceId" Text
       :> "deleteUploadData"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List uploads to which the user has access.
type UploadsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDataSources"
       :> Capture "customDataSourceId" Text
       :> "uploads"
       :> Capture "uploadId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Upload data for a custom data source.
type UploadsUploadData =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDataSources"
       :> Capture "customDataSourceId" Text
       :> "uploads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SegmentsAPI = SegmentsList

-- | Lists segments to which the user has access.
type SegmentsList =
     "analytics" :> "v3" :> "management" :> "segments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProfileFilterLinksAPI =
     ProfileFilterLinksInsert :<|> ProfileFilterLinksList
       :<|> ProfileFilterLinksPatch
       :<|> ProfileFilterLinksGet
       :<|> ProfileFilterLinksDelete
       :<|> ProfileFilterLinksUpdate

-- | Create a new profile filter link.
type ProfileFilterLinksInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all profile filter links for a profile.
type ProfileFilterLinksList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update an existing profile filter link. This method supports patch
-- semantics.
type ProfileFilterLinksPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a single profile filter link.
type ProfileFilterLinksGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a profile filter link.
type ProfileFilterLinksDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update an existing profile filter link.
type ProfileFilterLinksUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "profileFilterLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomDimensionsAPI =
     CustomDimensionsInsert :<|> CustomDimensionsList :<|>
       CustomDimensionsPatch
       :<|> CustomDimensionsGet
       :<|> CustomDimensionsUpdate

-- | Create a new custom dimension.
type CustomDimensionsInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDimensions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists custom dimensions to which the user has access.
type CustomDimensionsList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDimensions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing custom dimension. This method supports patch
-- semantics.
type CustomDimensionsPatch =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDimensions"
       :> Capture "customDimensionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ignoreCustomDataSourceLinks" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a custom dimension to which the user has access.
type CustomDimensionsGet =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDimensions"
       :> Capture "customDimensionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing custom dimension.
type CustomDimensionsUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "customDimensions"
       :> Capture "customDimensionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ignoreCustomDataSourceLinks" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountUserLinksAPI =
     AccountUserLinksInsert :<|> AccountUserLinksList :<|>
       AccountUserLinksDelete
       :<|> AccountUserLinksUpdate

-- | Adds a new user to the given account.
type AccountUserLinksInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists account-user links for a given account.
type AccountUserLinksList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a user from the given account.
type AccountUserLinksDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates permissions for an existing user on the given account.
type AccountUserLinksUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProfileUserLinksAPI =
     ProfileUserLinksInsert :<|> ProfileUserLinksList :<|>
       ProfileUserLinksDelete
       :<|> ProfileUserLinksUpdate

-- | Adds a new user to the given view (profile).
type ProfileUserLinksInsert =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists profile-user links for a given view (profile).
type ProfileUserLinksList =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "entityUserLinks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "start-index" Natural
       :> QueryParam "max-results" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a user from the given view (profile).
type ProfileUserLinksDelete =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates permissions for an existing user on the given view (profile).
type ProfileUserLinksUpdate =
     "analytics" :> "v3" :> "management" :> "accounts" :>
       Capture "accountId" Text
       :> "webproperties"
       :> Capture "webPropertyId" Text
       :> "profiles"
       :> Capture "profileId" Text
       :> "entityUserLinks"
       :> Capture "linkId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProvisioningAPI =
     ProvisioningCreateAccountTicket

-- | Creates an account ticket.
type ProvisioningCreateAccountTicket =
     "analytics" :> "v3" :> "provisioning" :>
       "createAccountTicket"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MetadataAPI = ColumnsAPI

type ColumnsAPI = ColumnsList

-- | Lists all columns for a report type
type ColumnsList =
     "analytics" :> "v3" :> "metadata" :>
       Capture "reportType" Text
       :> "columns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
