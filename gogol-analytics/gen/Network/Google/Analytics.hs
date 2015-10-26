{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- View and manage your Google Analytics data
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference>
module Network.Google.Analytics
    (
    -- * Service Configuration
      analyticsService

    -- * OAuth Scopes
    , analyticsManageUsersScope
    , analyticsProvisionScope
    , analyticsManageUsersReadonlyScope
    , analyticsScope
    , analyticsReadonlyScope
    , analyticsEditScope

    -- * API Declaration
    , AnalyticsAPI

    -- * Resources

    -- ** analytics.data.ga.get
    , module Network.Google.Resource.Analytics.Data.Ga.Get

    -- ** analytics.data.mcf.get
    , module Network.Google.Resource.Analytics.Data.Mcf.Get

    -- ** analytics.data.realtime.get
    , module Network.Google.Resource.Analytics.Data.Realtime.Get

    -- ** analytics.management.accountSummaries.list
    , module Network.Google.Resource.Analytics.Management.AccountSummaries.List

    -- ** analytics.management.accountUserLinks.delete
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete

    -- ** analytics.management.accountUserLinks.insert
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert

    -- ** analytics.management.accountUserLinks.list
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.List

    -- ** analytics.management.accountUserLinks.update
    , module Network.Google.Resource.Analytics.Management.AccountUserLinks.Update

    -- ** analytics.management.accounts.list
    , module Network.Google.Resource.Analytics.Management.Accounts.List

    -- ** analytics.management.customDataSources.list
    , module Network.Google.Resource.Analytics.Management.CustomDataSources.List

    -- ** analytics.management.customDimensions.get
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Get

    -- ** analytics.management.customDimensions.insert
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Insert

    -- ** analytics.management.customDimensions.list
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.List

    -- ** analytics.management.customDimensions.patch
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Patch

    -- ** analytics.management.customDimensions.update
    , module Network.Google.Resource.Analytics.Management.CustomDimensions.Update

    -- ** analytics.management.customMetrics.get
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Get

    -- ** analytics.management.customMetrics.insert
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Insert

    -- ** analytics.management.customMetrics.list
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.List

    -- ** analytics.management.customMetrics.patch
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Patch

    -- ** analytics.management.customMetrics.update
    , module Network.Google.Resource.Analytics.Management.CustomMetrics.Update

    -- ** analytics.management.experiments.delete
    , module Network.Google.Resource.Analytics.Management.Experiments.Delete

    -- ** analytics.management.experiments.get
    , module Network.Google.Resource.Analytics.Management.Experiments.Get

    -- ** analytics.management.experiments.insert
    , module Network.Google.Resource.Analytics.Management.Experiments.Insert

    -- ** analytics.management.experiments.list
    , module Network.Google.Resource.Analytics.Management.Experiments.List

    -- ** analytics.management.experiments.patch
    , module Network.Google.Resource.Analytics.Management.Experiments.Patch

    -- ** analytics.management.experiments.update
    , module Network.Google.Resource.Analytics.Management.Experiments.Update

    -- ** analytics.management.filters.delete
    , module Network.Google.Resource.Analytics.Management.Filters.Delete

    -- ** analytics.management.filters.get
    , module Network.Google.Resource.Analytics.Management.Filters.Get

    -- ** analytics.management.filters.insert
    , module Network.Google.Resource.Analytics.Management.Filters.Insert

    -- ** analytics.management.filters.list
    , module Network.Google.Resource.Analytics.Management.Filters.List

    -- ** analytics.management.filters.patch
    , module Network.Google.Resource.Analytics.Management.Filters.Patch

    -- ** analytics.management.filters.update
    , module Network.Google.Resource.Analytics.Management.Filters.Update

    -- ** analytics.management.goals.get
    , module Network.Google.Resource.Analytics.Management.Goals.Get

    -- ** analytics.management.goals.insert
    , module Network.Google.Resource.Analytics.Management.Goals.Insert

    -- ** analytics.management.goals.list
    , module Network.Google.Resource.Analytics.Management.Goals.List

    -- ** analytics.management.goals.patch
    , module Network.Google.Resource.Analytics.Management.Goals.Patch

    -- ** analytics.management.goals.update
    , module Network.Google.Resource.Analytics.Management.Goals.Update

    -- ** analytics.management.profileFilterLinks.delete
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete

    -- ** analytics.management.profileFilterLinks.get
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get

    -- ** analytics.management.profileFilterLinks.insert
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert

    -- ** analytics.management.profileFilterLinks.list
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List

    -- ** analytics.management.profileFilterLinks.patch
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch

    -- ** analytics.management.profileFilterLinks.update
    , module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update

    -- ** analytics.management.profileUserLinks.delete
    , module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete

    -- ** analytics.management.profileUserLinks.insert
    , module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert

    -- ** analytics.management.profileUserLinks.list
    , module Network.Google.Resource.Analytics.Management.ProFileUserLinks.List

    -- ** analytics.management.profileUserLinks.update
    , module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update

    -- ** analytics.management.profiles.delete
    , module Network.Google.Resource.Analytics.Management.ProFiles.Delete

    -- ** analytics.management.profiles.get
    , module Network.Google.Resource.Analytics.Management.ProFiles.Get

    -- ** analytics.management.profiles.insert
    , module Network.Google.Resource.Analytics.Management.ProFiles.Insert

    -- ** analytics.management.profiles.list
    , module Network.Google.Resource.Analytics.Management.ProFiles.List

    -- ** analytics.management.profiles.patch
    , module Network.Google.Resource.Analytics.Management.ProFiles.Patch

    -- ** analytics.management.profiles.update
    , module Network.Google.Resource.Analytics.Management.ProFiles.Update

    -- ** analytics.management.segments.list
    , module Network.Google.Resource.Analytics.Management.Segments.List

    -- ** analytics.management.unsampledReports.get
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.Get

    -- ** analytics.management.unsampledReports.insert
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.Insert

    -- ** analytics.management.unsampledReports.list
    , module Network.Google.Resource.Analytics.Management.UnSampledReports.List

    -- ** analytics.management.uploads.deleteUploadData
    , module Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData

    -- ** analytics.management.uploads.get
    , module Network.Google.Resource.Analytics.Management.Uploads.Get

    -- ** analytics.management.uploads.list
    , module Network.Google.Resource.Analytics.Management.Uploads.List

    -- ** analytics.management.uploads.uploadData
    , module Network.Google.Resource.Analytics.Management.Uploads.UploadData

    -- ** analytics.management.webPropertyAdWordsLinks.delete
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Delete

    -- ** analytics.management.webPropertyAdWordsLinks.get
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get

    -- ** analytics.management.webPropertyAdWordsLinks.insert
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert

    -- ** analytics.management.webPropertyAdWordsLinks.list
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List

    -- ** analytics.management.webPropertyAdWordsLinks.patch
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch

    -- ** analytics.management.webPropertyAdWordsLinks.update
    , module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update

    -- ** analytics.management.webproperties.get
    , module Network.Google.Resource.Analytics.Management.WebProperties.Get

    -- ** analytics.management.webproperties.insert
    , module Network.Google.Resource.Analytics.Management.WebProperties.Insert

    -- ** analytics.management.webproperties.list
    , module Network.Google.Resource.Analytics.Management.WebProperties.List

    -- ** analytics.management.webproperties.patch
    , module Network.Google.Resource.Analytics.Management.WebProperties.Patch

    -- ** analytics.management.webproperties.update
    , module Network.Google.Resource.Analytics.Management.WebProperties.Update

    -- ** analytics.management.webpropertyUserLinks.delete
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete

    -- ** analytics.management.webpropertyUserLinks.insert
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert

    -- ** analytics.management.webpropertyUserLinks.list
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List

    -- ** analytics.management.webpropertyUserLinks.update
    , module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update

    -- ** analytics.metadata.columns.list
    , module Network.Google.Resource.Analytics.Metadata.Columns.List

    -- ** analytics.provisioning.createAccountTicket
    , module Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket

    -- * Types

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

    -- ** GoalURLDestinationDetailsStepsItem
    , GoalURLDestinationDetailsStepsItem
    , goalURLDestinationDetailsStepsItem
    , guddsiURL
    , guddsiName
    , guddsiNumber

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

    -- ** GaDataDataTableRowsItem
    , GaDataDataTableRowsItem
    , gaDataDataTableRowsItem
    , gddtriC

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

    -- ** McfDataColumnHeadersItem
    , McfDataColumnHeadersItem
    , mcfDataColumnHeadersItem
    , mdchiColumnType
    , mdchiName
    , mdchiDataType

    -- ** GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults
    , gdtfarAddtional

    -- ** ProFileParentLink
    , ProFileParentLink
    , proFileParentLink
    , pfplHref
    , pfplType

    -- ** GaDataDataTableRowsItemCItem
    , GaDataDataTableRowsItemCItem
    , gaDataDataTableRowsItemCItem
    , gddtriciV

    -- ** EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- ** RealtimeDataProFileInfo
    , RealtimeDataProFileInfo
    , realtimeDataProFileInfo
    , rdpfiWebPropertyId
    , rdpfiProFileId
    , rdpfiProFileName
    , rdpfiAccountId
    , rdpfiInternalWebPropertyId
    , rdpfiTableId

    -- ** McfDataRowsItemItemConversionPathValueItem
    , McfDataRowsItemItemConversionPathValueItem
    , mcfDataRowsItemItemConversionPathValueItem
    , mdriicpviInteractionType
    , mdriicpviNodeValue

    -- ** FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

    -- ** ProFileRef
    , ProFileRef
    , proFileRef
    , pfrWebPropertyId
    , pfrKind
    , pfrHref
    , pfrAccountId
    , pfrName
    , pfrInternalWebPropertyId
    , pfrId

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

    -- ** ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- ** UnSampledReportDriveDownloadDetails
    , UnSampledReportDriveDownloadDetails
    , unSampledReportDriveDownloadDetails
    , usrdddDocumentId

    -- ** McfDataProFileInfo
    , McfDataProFileInfo
    , mcfDataProFileInfo
    , mdpfiWebPropertyId
    , mdpfiProFileId
    , mdpfiProFileName
    , mdpfiAccountId
    , mdpfiInternalWebPropertyId
    , mdpfiTableId

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

    -- ** WebPropertyChildLink
    , WebPropertyChildLink
    , webPropertyChildLink
    , wpclHref
    , wpclType

    -- ** DataGaGetSamplingLevel
    , DataGaGetSamplingLevel (..)

    -- ** McfData
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

    -- ** UserRef
    , UserRef
    , userRef
    , urEmail
    , urKind
    , urId

    -- ** GoalVisitNumPagesDetails
    , GoalVisitNumPagesDetails
    , goalVisitNumPagesDetails
    , gvnpdComparisonValue
    , gvnpdComparisonType

    -- ** RealtimeDataColumnHeadersItem
    , RealtimeDataColumnHeadersItem
    , realtimeDataColumnHeadersItem
    , rdchiColumnType
    , rdchiName
    , rdchiDataType

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

    -- ** ProFiles
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

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- ** EntityAdWordsLink
    , EntityAdWordsLink
    , entityAdWordsLink
    , entAdWordsAccounts
    , entProFileIds
    , entKind
    , entSelfLink
    , entName
    , entId
    , entEntity

    -- ** FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

    -- ** ProFilePermissions
    , ProFilePermissions
    , proFilePermissions
    , pfpEffective

    -- ** ProFile
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
    , pName
    , pCurrency
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

    -- ** GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

    -- ** WebPropertySummary
    , WebPropertySummary
    , webPropertySummary
    , wpsKind
    , wpsProFiles
    , wpsName
    , wpsInternalWebPropertyId
    , wpsId
    , wpsWebsiteURL
    , wpsLevel

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

    -- ** GaData
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
    , gdDataTable
    , gdContainsSampledData
    , gdTotalsForAllResults
    , gdPreviousLink

    -- ** RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults
    , rdtfarAddtional

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
    , cProFilesLinked

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

    -- ** McfDataRowsItemItem
    , McfDataRowsItemItem
    , mcfDataRowsItemItem
    , mdriiPrimitiveValue
    , mdriiConversionPathValue

    -- ** AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

    -- ** EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProFileRef
    , euleAccountRef
    , euleWebPropertyRef

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

    -- ** AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

    -- ** FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- ** GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

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

    -- ** FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

    -- ** DataGaGetOutput
    , DataGaGetOutput (..)

    -- ** RealtimeData
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

    -- ** ProFileSummary
    , ProFileSummary
    , proFileSummary
    , pfsKind
    , pfsName
    , pfsId
    , pfsType

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
    , wDefaultProFileId
    , wKind
    , wCreated
    , wSelfLink
    , wAccountId
    , wName
    , wInternalWebPropertyId
    , wId
    , wUpdated
    , wProFileCount
    , wPermissions
    , wWebsiteURL
    , wIndustryVertical
    , wLevel

    -- ** WebPropertyPermissions
    , WebPropertyPermissions
    , webPropertyPermissions
    , wppEffective

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

    -- ** GoalEventDetailsEventConditionsItem
    , GoalEventDetailsEventConditionsItem
    , goalEventDetailsEventConditionsItem
    , gedeciMatchType
    , gedeciExpression
    , gedeciComparisonValue
    , gedeciType
    , gedeciComparisonType

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

    -- ** Goal
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

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectURI
    , atKind
    , atProFile
    , atAccount
    , atWebProperty
    , atId

    -- ** AccountSummary
    , AccountSummary
    , accountSummary
    , assKind
    , assWebProperties
    , assName
    , assId

    -- ** RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

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

    -- ** GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

    -- ** EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

    -- ** GoalURLDestinationDetails
    , GoalURLDestinationDetails
    , goalURLDestinationDetails
    , guddURL
    , guddMatchType
    , guddSteps
    , guddCaseSensitive
    , guddFirstStepRequired

    -- ** ProFileFilterLinks
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

    -- ** WebPropertyParentLink
    , WebPropertyParentLink
    , webPropertyParentLink
    , wpplHref
    , wpplType

    -- ** GaDataProFileInfo
    , GaDataProFileInfo
    , gaDataProFileInfo
    , gdpfiWebPropertyId
    , gdpfiProFileId
    , gdpfiProFileName
    , gdpfiAccountId
    , gdpfiInternalWebPropertyId
    , gdpfiTableId

    -- ** Upload
    , Upload
    , upload
    , uuStatus
    , uuKind
    , uuCustomDataSourceId
    , uuAccountId
    , uuId
    , uuErrors

    -- ** DataMcfGetSamplingLevel
    , DataMcfGetSamplingLevel (..)

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

    -- ** ProFileFilterLink
    , ProFileFilterLink
    , proFileFilterLink
    , proProFileRef
    , proKind
    , proFilterRef
    , proSelfLink
    , proId
    , proRank

    -- ** CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- ** GaDataDataTableColsItem
    , GaDataDataTableColsItem
    , gaDataDataTableColsItem
    , gddtciId
    , gddtciType
    , gddtciLabel

    -- ** ExperimentVariationsItem
    , ExperimentVariationsItem
    , experimentVariationsItem
    , eviStatus
    , eviWeight
    , eviURL
    , eviWon
    , eviName

    -- ** McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults
    , mdtfarAddtional

    -- ** UnSampledReportCloudStorageDownloadDetails
    , UnSampledReportCloudStorageDownloadDetails
    , unSampledReportCloudStorageDownloadDetails
    , usrcsddObjectId
    , usrcsddBucketId

    -- ** ProFileChildLink
    , ProFileChildLink
    , proFileChildLink
    , pfclHref
    , pfclType

    -- ** GaDataColumnHeadersItem
    , GaDataColumnHeadersItem
    , gaDataColumnHeadersItem
    , gdchiColumnType
    , gdchiName
    , gdchiDataType

    -- ** GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

    -- ** ColumnAttributes
    , ColumnAttributes
    , columnAttributes
    , caAddtional
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
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch
import           Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update
import           Network.Google.Resource.Analytics.Management.ProFiles.Delete
import           Network.Google.Resource.Analytics.Management.ProFiles.Get
import           Network.Google.Resource.Analytics.Management.ProFiles.Insert
import           Network.Google.Resource.Analytics.Management.ProFiles.List
import           Network.Google.Resource.Analytics.Management.ProFiles.Patch
import           Network.Google.Resource.Analytics.Management.ProFiles.Update
import           Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete
import           Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert
import           Network.Google.Resource.Analytics.Management.ProFileUserLinks.List
import           Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update
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

-- | Represents the entirety of the methods and resources available for the Google Analytics API service.
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
       :<|> ManagementProFilesInsertResource
       :<|> ManagementProFilesListResource
       :<|> ManagementProFilesPatchResource
       :<|> ManagementProFilesGetResource
       :<|> ManagementProFilesDeleteResource
       :<|> ManagementProFilesUpdateResource
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
       :<|> ManagementProFileFilterLinksInsertResource
       :<|> ManagementProFileFilterLinksListResource
       :<|> ManagementProFileFilterLinksPatchResource
       :<|> ManagementProFileFilterLinksGetResource
       :<|> ManagementProFileFilterLinksDeleteResource
       :<|> ManagementProFileFilterLinksUpdateResource
       :<|> ManagementCustomDimensionsInsertResource
       :<|> ManagementCustomDimensionsListResource
       :<|> ManagementCustomDimensionsPatchResource
       :<|> ManagementCustomDimensionsGetResource
       :<|> ManagementCustomDimensionsUpdateResource
       :<|> ManagementAccountUserLinksInsertResource
       :<|> ManagementAccountUserLinksListResource
       :<|> ManagementAccountUserLinksDeleteResource
       :<|> ManagementAccountUserLinksUpdateResource
       :<|> ManagementProFileUserLinksInsertResource
       :<|> ManagementProFileUserLinksListResource
       :<|> ManagementProFileUserLinksDeleteResource
       :<|> ManagementProFileUserLinksUpdateResource
       :<|> ProvisioningCreateAccountTicketResource
       :<|> MetadataColumnsListResource
