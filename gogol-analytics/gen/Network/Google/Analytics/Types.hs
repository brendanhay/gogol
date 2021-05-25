{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types
    (
    -- * Service Configuration
      analyticsService

    -- * OAuth Scopes
    , analyticsManageUsersScope
    , analyticsProvisionScope
    , analyticsManageUsersReadOnlyScope
    , analyticsScope
    , analyticsReadOnlyScope
    , analyticsUserDeletionScope
    , analyticsEditScope

    -- * UserDeletionRequest
    , UserDeletionRequest
    , userDeletionRequest
    , udrWebPropertyId
    , udrKind
    , udrPropertyId
    , udrId
    , udrFirebaseProjectId
    , udrDeletionRequestTime

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

    -- * GoalURLDestinationDetailsStepsItem
    , GoalURLDestinationDetailsStepsItem
    , goalURLDestinationDetailsStepsItem
    , guddsiURL
    , guddsiName
    , guddsiNumber

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

    -- * RemarketingAudiences
    , RemarketingAudiences
    , remarketingAudiences
    , raNextLink
    , raItemsPerPage
    , raKind
    , raUsername
    , raItems
    , raTotalResults
    , raStartIndex
    , raPreviousLink

    -- * GaDataDataTableRowsItem
    , GaDataDataTableRowsItem
    , gaDataDataTableRowsItem
    , gddtriC

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
    , uProFileId
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

    -- * McfDataColumnHeadersItem
    , McfDataColumnHeadersItem
    , mcfDataColumnHeadersItem
    , mdchiColumnType
    , mdchiName
    , mdchiDataType

    -- * GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults
    , gdtfarAddtional

    -- * ProFileParentLink
    , ProFileParentLink
    , proFileParentLink
    , pfplHref
    , pfplType

    -- * RemarketingAudience
    , RemarketingAudience
    , remarketingAudience
    , rWebPropertyId
    , rKind
    , rCreated
    , rLinkedAdAccounts
    , rAudienceDefinition
    , rAudienceType
    , rAccountId
    , rName
    , rStateBasedAudienceDefinition
    , rLinkedViews
    , rInternalWebPropertyId
    , rId
    , rUpdated
    , rDescription

    -- * GaDataDataTableRowsItemCItem
    , GaDataDataTableRowsItemCItem
    , gaDataDataTableRowsItemCItem
    , gddtriciV

    -- * EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- * RealtimeDataProFileInfo
    , RealtimeDataProFileInfo
    , realtimeDataProFileInfo
    , rdpfiWebPropertyId
    , rdpfiProFileId
    , rdpfiProFileName
    , rdpfiAccountId
    , rdpfiInternalWebPropertyId
    , rdpfiTableId

    -- * McfDataRowsItemItemConversionPathValueItem
    , McfDataRowsItemItemConversionPathValueItem
    , mcfDataRowsItemItemConversionPathValueItem
    , mdriicpviInteractionType
    , mdriicpviNodeValue

    -- * FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- * ProFileRef
    , ProFileRef
    , proFileRef
    , pfrWebPropertyId
    , pfrKind
    , pfrHref
    , pfrAccountId
    , pfrName
    , pfrInternalWebPropertyId
    , pfrId

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

    -- * ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- * UnSampledReportDriveDownloadDetails
    , UnSampledReportDriveDownloadDetails
    , unSampledReportDriveDownloadDetails
    , usrdddDocumentId

    -- * McfDataProFileInfo
    , McfDataProFileInfo
    , mcfDataProFileInfo
    , mdpfiWebPropertyId
    , mdpfiProFileId
    , mdpfiProFileName
    , mdpfiAccountId
    , mdpfiInternalWebPropertyId
    , mdpfiTableId

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

    -- * WebPropertyChildLink
    , WebPropertyChildLink
    , webPropertyChildLink
    , wpclHref
    , wpclType

    -- * DataGaGetSamplingLevel
    , DataGaGetSamplingLevel (..)

    -- * HashClientIdResponse
    , HashClientIdResponse
    , hashClientIdResponse
    , hcirClientId
    , hcirWebPropertyId
    , hcirKind
    , hcirHashedClientId

    -- * McfData
    , McfData
    , mcfData
    , mdNextLink
    , mdSampleSpace
    , mdItemsPerPage
    , mdProFileInfo
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

    -- * UserRef
    , UserRef
    , userRef
    , urEmail
    , urKind
    , urId

    -- * GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

    -- * RealtimeDataColumnHeadersItem
    , RealtimeDataColumnHeadersItem
    , realtimeDataColumnHeadersItem
    , rdchiColumnType
    , rdchiName
    , rdchiDataType

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

    -- * ProFiles
    , ProFiles
    , proFiles
    , pfNextLink
    , pfItemsPerPage
    , pfKind
    , pfUsername
    , pfItems
    , pfTotalResults
    , pfStartIndex
    , pfPreviousLink

    -- * AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- * EntityAdWordsLink
    , EntityAdWordsLink
    , entityAdWordsLink
    , entAdWordsAccounts
    , entProFileIds
    , entKind
    , entSelfLink
    , entName
    , entId
    , entEntity

    -- * FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- * ProFilePermissions
    , ProFilePermissions
    , proFilePermissions
    , pfpEffective

    -- * ProFile
    , ProFile
    , proFile
    , pParentLink
    , pECommerceTracking
    , pSiteSearchCategoryParameters
    , pWebPropertyId
    , pChildLink
    , pSiteSearchQueryParameters
    , pKind
    , pDefaultPage
    , pCreated
    , pSelfLink
    , pAccountId
    , pBotFilteringEnabled
    , pName
    , pCurrency
    , pStarred
    , pInternalWebPropertyId
    , pId
    , pUpdated
    , pPermissions
    , pWebsiteURL
    , pType
    , pStripSiteSearchCategoryParameters
    , pTimezone
    , pExcludeQueryParameters
    , pEnhancedECommerceTracking
    , pStripSiteSearchQueryParameters

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

    -- * GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- * WebPropertySummary
    , WebPropertySummary
    , webPropertySummary
    , wpsKind
    , wpsProFiles
    , wpsName
    , wpsStarred
    , wpsInternalWebPropertyId
    , wpsId
    , wpsWebsiteURL
    , wpsLevel

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

    -- * GaData
    , GaData
    , gaData
    , gdNextLink
    , gdSampleSpace
    , gdItemsPerPage
    , gdProFileInfo
    , gdKind
    , gdSampleSize
    , gdRows
    , gdSelfLink
    , gdQuery
    , gdColumnHeaders
    , gdId
    , gdTotalResults
    , gdDataLastRefreshed
    , gdDataTable
    , gdContainsSampledData
    , gdTotalsForAllResults
    , gdPreviousLink

    -- * RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults
    , rdtfarAddtional

    -- * CustomDataSource
    , CustomDataSource
    , customDataSource
    , cParentLink
    , cWebPropertyId
    , cChildLink
    , cKind
    , cCreated
    , cUploadType
    , cSchema
    , cImportBehavior
    , cSelfLink
    , cAccountId
    , cName
    , cId
    , cUpdated
    , cType
    , cDescription
    , cProFilesLinked

    -- * AccountTreeRequest
    , AccountTreeRequest
    , accountTreeRequest
    , atrWebPropertyName
    , atrKind
    , atrAccountName
    , atrProFileName
    , atrWebsiteURL
    , atrTimezone

    -- * WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

    -- * LinkedForeignAccount
    , LinkedForeignAccount
    , linkedForeignAccount
    , lfaStatus
    , lfaWebPropertyId
    , lfaKind
    , lfaEligibleForSearch
    , lfaAccountId
    , lfaRemarketingAudienceId
    , lfaLinkedAccountId
    , lfaInternalWebPropertyId
    , lfaId
    , lfaType

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

    -- * McfDataRowsItemItem
    , McfDataRowsItemItem
    , mcfDataRowsItemItem
    , mdriiPrimitiveValue
    , mdriiConversionPathValue

    -- * AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- * EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProFileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- * Account
    , Account
    , account
    , accChildLink
    , accKind
    , accCreated
    , accSelfLink
    , accName
    , accStarred
    , accId
    , accUpdated
    , accPermissions

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
    , expProFileId
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

    -- * AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- * FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- * GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

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

    -- * AccountTreeResponse
    , AccountTreeResponse
    , accountTreeResponse
    , atrtKind
    , atrtProFile
    , atrtAccount
    , atrtWebProperty

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

    -- * IncludeConditions
    , IncludeConditions
    , includeConditions
    , icKind
    , icDaysToLookBack
    , icMembershipDurationDays
    , icSegment
    , icIsSmartList

    -- * FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- * DataGaGetOutput
    , DataGaGetOutput (..)

    -- * HashClientIdRequest
    , HashClientIdRequest
    , hashClientIdRequest
    , hClientId
    , hWebPropertyId
    , hKind

    -- * RealtimeData
    , RealtimeData
    , realtimeData
    , rdProFileInfo
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

    -- * ProFileSummary
    , ProFileSummary
    , proFileSummary
    , pfsKind
    , pfsName
    , pfsStarred
    , pfsId
    , pfsType

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
    , wDefaultProFileId
    , wKind
    , wCreated
    , wDataRetentionTtl
    , wDataRetentionResetOnNewActivity
    , wSelfLink
    , wAccountId
    , wName
    , wStarred
    , wInternalWebPropertyId
    , wId
    , wUpdated
    , wProFileCount
    , wPermissions
    , wWebsiteURL
    , wIndustryVertical
    , wLevel

    -- * WebPropertyPermissions
    , WebPropertyPermissions
    , webPropertyPermissions
    , wppEffective

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

    -- * GoalEventDetailsEventConditionsItem
    , GoalEventDetailsEventConditionsItem
    , goalEventDetailsEventConditionsItem
    , gedeciMatchType
    , gedeciExpression
    , gedeciComparisonValue
    , gedeciType
    , gedeciComparisonType

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

    -- * Goal
    , Goal
    , goal
    , goaParentLink
    , goaWebPropertyId
    , goaKind
    , goaCreated
    , goaValue
    , goaProFileId
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

    -- * AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectURI
    , atKind
    , atProFile
    , atAccount
    , atWebProperty
    , atId

    -- * AccountSummary
    , AccountSummary
    , accountSummary
    , assKind
    , assWebProperties
    , assName
    , assStarred
    , assId

    -- * RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

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

    -- * GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- * EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

    -- * RemarketingAudienceStateBasedAudienceDefinition
    , RemarketingAudienceStateBasedAudienceDefinition
    , remarketingAudienceStateBasedAudienceDefinition
    , rasbadExcludeConditions
    , rasbadIncludeConditions

    -- * GoalURLDestinationDetails
    , GoalURLDestinationDetails
    , goalURLDestinationDetails
    , guddURL
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- * ProFileFilterLinks
    , ProFileFilterLinks
    , proFileFilterLinks
    , pfflNextLink
    , pfflItemsPerPage
    , pfflKind
    , pfflUsername
    , pfflItems
    , pfflTotalResults
    , pfflStartIndex
    , pfflPreviousLink

    -- * WebPropertyParentLink
    , WebPropertyParentLink
    , webPropertyParentLink
    , wpplHref
    , wpplType

    -- * GaDataProFileInfo
    , GaDataProFileInfo
    , gaDataProFileInfo
    , gdpfiWebPropertyId
    , gdpfiProFileId
    , gdpfiProFileName
    , gdpfiAccountId
    , gdpfiInternalWebPropertyId
    , gdpfiTableId

    -- * Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuUploadTime
    , uuAccountId
    , uuId
    , uuErrors

    -- * DataMcfGetSamplingLevel
    , DataMcfGetSamplingLevel (..)

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

    -- * ProFileFilterLink
    , ProFileFilterLink
    , proFileFilterLink
    , proProFileRef
    , proKind
    , proFilterRef
    , proSelfLink
    , proId
    , proRank

    -- * CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

    -- * Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- * RemarketingAudienceAudienceDefinition
    , RemarketingAudienceAudienceDefinition
    , remarketingAudienceAudienceDefinition
    , raadIncludeConditions

    -- * GaDataDataTableColsItem
    , GaDataDataTableColsItem
    , gaDataDataTableColsItem
    , gddtciId
    , gddtciType
    , gddtciLabel

    -- * ExperimentVariationsItem
    , ExperimentVariationsItem
    , experimentVariationsItem
    , eviStatus
    , eviWeight
    , eviURL
    , eviWon
    , eviName

    -- * RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions
    , RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions
    , remarketingAudienceStateBasedAudienceDefinitionExcludeConditions
    , rasbadecExclusionDuration
    , rasbadecSegment

    -- * McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults
    , mdtfarAddtional

    -- * UserDeletionRequestId
    , UserDeletionRequestId
    , userDeletionRequestId
    , udriUserId
    , udriType

    -- * UnSampledReportCloudStorageDownloadDetails
    , UnSampledReportCloudStorageDownloadDetails
    , unSampledReportCloudStorageDownloadDetails
    , usrcsddObjectId
    , usrcsddBucketId

    -- * ProFileChildLink
    , ProFileChildLink
    , proFileChildLink
    , pfclHref
    , pfclType

    -- * GaDataColumnHeadersItem
    , GaDataColumnHeadersItem
    , gaDataColumnHeadersItem
    , gdchiColumnType
    , gdchiName
    , gdchiDataType

    -- * GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

    -- * ColumnAttributes
    , ColumnAttributes
    , columnAttributes
    , caAddtional
    ) where

import Network.Google.Analytics.Types.Product
import Network.Google.Analytics.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Analytics API. This contains the host and root path used as a starting point for constructing service requests.
analyticsService :: ServiceConfig
analyticsService
  = defaultService (ServiceId "analytics:v3")
      "analytics.googleapis.com"

-- | Manage Google Analytics Account users by email address
analyticsManageUsersScope :: Proxy '["https://www.googleapis.com/auth/analytics.manage.users"]
analyticsManageUsersScope = Proxy

-- | Create a new Google Analytics account along with its default property
-- and view
analyticsProvisionScope :: Proxy '["https://www.googleapis.com/auth/analytics.provision"]
analyticsProvisionScope = Proxy

-- | View Google Analytics user permissions
analyticsManageUsersReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/analytics.manage.users.readonly"]
analyticsManageUsersReadOnlyScope = Proxy

-- | View and manage your Google Analytics data
analyticsScope :: Proxy '["https://www.googleapis.com/auth/analytics"]
analyticsScope = Proxy

-- | View your Google Analytics data
analyticsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/analytics.readonly"]
analyticsReadOnlyScope = Proxy

-- | Manage Google Analytics user deletion requests
analyticsUserDeletionScope :: Proxy '["https://www.googleapis.com/auth/analytics.user.deletion"]
analyticsUserDeletionScope = Proxy

-- | Edit Google Analytics management entities
analyticsEditScope :: Proxy '["https://www.googleapis.com/auth/analytics.edit"]
analyticsEditScope = Proxy
