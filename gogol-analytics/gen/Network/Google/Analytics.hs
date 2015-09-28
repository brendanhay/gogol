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
    -- * REST Resources

    -- ** Google Analytics API
      Analytics
    , analytics
    , analyticsURL

    -- ** analytics.data.ga.get
    , module Network.Google.API.Analytics.Data.Ga.Get

    -- ** analytics.data.mcf.get
    , module Network.Google.API.Analytics.Data.Mcf.Get

    -- ** analytics.data.realtime.get
    , module Network.Google.API.Analytics.Data.Realtime.Get

    -- ** analytics.management.accountSummaries.list
    , module Network.Google.API.Analytics.Management.AccountSummaries.List

    -- ** analytics.management.accountUserLinks.delete
    , module Network.Google.API.Analytics.Management.AccountUserLinks.Delete

    -- ** analytics.management.accountUserLinks.insert
    , module Network.Google.API.Analytics.Management.AccountUserLinks.Insert

    -- ** analytics.management.accountUserLinks.list
    , module Network.Google.API.Analytics.Management.AccountUserLinks.List

    -- ** analytics.management.accountUserLinks.update
    , module Network.Google.API.Analytics.Management.AccountUserLinks.Update

    -- ** analytics.management.accounts.list
    , module Network.Google.API.Analytics.Management.Accounts.List

    -- ** analytics.management.customDataSources.list
    , module Network.Google.API.Analytics.Management.CustomDataSources.List

    -- ** analytics.management.customDimensions.get
    , module Network.Google.API.Analytics.Management.CustomDimensions.Get

    -- ** analytics.management.customDimensions.insert
    , module Network.Google.API.Analytics.Management.CustomDimensions.Insert

    -- ** analytics.management.customDimensions.list
    , module Network.Google.API.Analytics.Management.CustomDimensions.List

    -- ** analytics.management.customDimensions.patch
    , module Network.Google.API.Analytics.Management.CustomDimensions.Patch

    -- ** analytics.management.customDimensions.update
    , module Network.Google.API.Analytics.Management.CustomDimensions.Update

    -- ** analytics.management.customMetrics.get
    , module Network.Google.API.Analytics.Management.CustomMetrics.Get

    -- ** analytics.management.customMetrics.insert
    , module Network.Google.API.Analytics.Management.CustomMetrics.Insert

    -- ** analytics.management.customMetrics.list
    , module Network.Google.API.Analytics.Management.CustomMetrics.List

    -- ** analytics.management.customMetrics.patch
    , module Network.Google.API.Analytics.Management.CustomMetrics.Patch

    -- ** analytics.management.customMetrics.update
    , module Network.Google.API.Analytics.Management.CustomMetrics.Update

    -- ** analytics.management.experiments.delete
    , module Network.Google.API.Analytics.Management.Experiments.Delete

    -- ** analytics.management.experiments.get
    , module Network.Google.API.Analytics.Management.Experiments.Get

    -- ** analytics.management.experiments.insert
    , module Network.Google.API.Analytics.Management.Experiments.Insert

    -- ** analytics.management.experiments.list
    , module Network.Google.API.Analytics.Management.Experiments.List

    -- ** analytics.management.experiments.patch
    , module Network.Google.API.Analytics.Management.Experiments.Patch

    -- ** analytics.management.experiments.update
    , module Network.Google.API.Analytics.Management.Experiments.Update

    -- ** analytics.management.filters.delete
    , module Network.Google.API.Analytics.Management.Filters.Delete

    -- ** analytics.management.filters.get
    , module Network.Google.API.Analytics.Management.Filters.Get

    -- ** analytics.management.filters.insert
    , module Network.Google.API.Analytics.Management.Filters.Insert

    -- ** analytics.management.filters.list
    , module Network.Google.API.Analytics.Management.Filters.List

    -- ** analytics.management.filters.patch
    , module Network.Google.API.Analytics.Management.Filters.Patch

    -- ** analytics.management.filters.update
    , module Network.Google.API.Analytics.Management.Filters.Update

    -- ** analytics.management.goals.get
    , module Network.Google.API.Analytics.Management.Goals.Get

    -- ** analytics.management.goals.insert
    , module Network.Google.API.Analytics.Management.Goals.Insert

    -- ** analytics.management.goals.list
    , module Network.Google.API.Analytics.Management.Goals.List

    -- ** analytics.management.goals.patch
    , module Network.Google.API.Analytics.Management.Goals.Patch

    -- ** analytics.management.goals.update
    , module Network.Google.API.Analytics.Management.Goals.Update

    -- ** analytics.management.profileFilterLinks.delete
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.Delete

    -- ** analytics.management.profileFilterLinks.get
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.Get

    -- ** analytics.management.profileFilterLinks.insert
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.Insert

    -- ** analytics.management.profileFilterLinks.list
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.List

    -- ** analytics.management.profileFilterLinks.patch
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.Patch

    -- ** analytics.management.profileFilterLinks.update
    , module Network.Google.API.Analytics.Management.ProfileFilterLinks.Update

    -- ** analytics.management.profileUserLinks.delete
    , module Network.Google.API.Analytics.Management.ProfileUserLinks.Delete

    -- ** analytics.management.profileUserLinks.insert
    , module Network.Google.API.Analytics.Management.ProfileUserLinks.Insert

    -- ** analytics.management.profileUserLinks.list
    , module Network.Google.API.Analytics.Management.ProfileUserLinks.List

    -- ** analytics.management.profileUserLinks.update
    , module Network.Google.API.Analytics.Management.ProfileUserLinks.Update

    -- ** analytics.management.profiles.delete
    , module Network.Google.API.Analytics.Management.Profiles.Delete

    -- ** analytics.management.profiles.get
    , module Network.Google.API.Analytics.Management.Profiles.Get

    -- ** analytics.management.profiles.insert
    , module Network.Google.API.Analytics.Management.Profiles.Insert

    -- ** analytics.management.profiles.list
    , module Network.Google.API.Analytics.Management.Profiles.List

    -- ** analytics.management.profiles.patch
    , module Network.Google.API.Analytics.Management.Profiles.Patch

    -- ** analytics.management.profiles.update
    , module Network.Google.API.Analytics.Management.Profiles.Update

    -- ** analytics.management.segments.list
    , module Network.Google.API.Analytics.Management.Segments.List

    -- ** analytics.management.unsampledReports.get
    , module Network.Google.API.Analytics.Management.UnsampledReports.Get

    -- ** analytics.management.unsampledReports.insert
    , module Network.Google.API.Analytics.Management.UnsampledReports.Insert

    -- ** analytics.management.unsampledReports.list
    , module Network.Google.API.Analytics.Management.UnsampledReports.List

    -- ** analytics.management.uploads.deleteUploadData
    , module Network.Google.API.Analytics.Management.Uploads.DeleteUploadData

    -- ** analytics.management.uploads.get
    , module Network.Google.API.Analytics.Management.Uploads.Get

    -- ** analytics.management.uploads.list
    , module Network.Google.API.Analytics.Management.Uploads.List

    -- ** analytics.management.uploads.uploadData
    , module Network.Google.API.Analytics.Management.Uploads.UploadData

    -- ** analytics.management.webPropertyAdWordsLinks.delete
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Delete

    -- ** analytics.management.webPropertyAdWordsLinks.get
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Get

    -- ** analytics.management.webPropertyAdWordsLinks.insert
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Insert

    -- ** analytics.management.webPropertyAdWordsLinks.list
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.List

    -- ** analytics.management.webPropertyAdWordsLinks.patch
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Patch

    -- ** analytics.management.webPropertyAdWordsLinks.update
    , module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Update

    -- ** analytics.management.webproperties.get
    , module Network.Google.API.Analytics.Management.Webproperties.Get

    -- ** analytics.management.webproperties.insert
    , module Network.Google.API.Analytics.Management.Webproperties.Insert

    -- ** analytics.management.webproperties.list
    , module Network.Google.API.Analytics.Management.Webproperties.List

    -- ** analytics.management.webproperties.patch
    , module Network.Google.API.Analytics.Management.Webproperties.Patch

    -- ** analytics.management.webproperties.update
    , module Network.Google.API.Analytics.Management.Webproperties.Update

    -- ** analytics.management.webpropertyUserLinks.delete
    , module Network.Google.API.Analytics.Management.WebpropertyUserLinks.Delete

    -- ** analytics.management.webpropertyUserLinks.insert
    , module Network.Google.API.Analytics.Management.WebpropertyUserLinks.Insert

    -- ** analytics.management.webpropertyUserLinks.list
    , module Network.Google.API.Analytics.Management.WebpropertyUserLinks.List

    -- ** analytics.management.webpropertyUserLinks.update
    , module Network.Google.API.Analytics.Management.WebpropertyUserLinks.Update

    -- ** analytics.metadata.columns.list
    , module Network.Google.API.Analytics.Metadata.Columns.List

    -- ** analytics.provisioning.createAccountTicket
    , module Network.Google.API.Analytics.Provisioning.CreateAccountTicket

    -- * Types

    -- ** WebpropertyPermissions
    , WebpropertyPermissions
    , webpropertyPermissions
    , wpEffective

    -- ** McfDataItemColumnHeaders
    , McfDataItemColumnHeaders
    , mcfDataItemColumnHeaders
    , mdichColumnType
    , mdichName
    , mdichDataType

    -- ** ProfileParentLink
    , ProfileParentLink
    , profileParentLink
    , pplHref
    , pplType

    -- ** GaDataTotalsForAllResults
    , GaDataTotalsForAllResults
    , gaDataTotalsForAllResults

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

    -- ** GaDataItemRowsDataTable
    , GaDataItemRowsDataTable
    , gaDataItemRowsDataTable
    , gdirdtC

    -- ** ProfileSummary
    , ProfileSummary
    , profileSummary
    , psKind
    , psName
    , psId
    , psType

    -- ** FilterParentLink
    , FilterParentLink
    , filterParentLink
    , fplHref
    , fplType

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

    -- ** FilterUppercaseDetails
    , FilterUppercaseDetails
    , filterUppercaseDetails
    , fudFieldIndex
    , fudField

    -- ** AccountPermissions
    , AccountPermissions
    , accountPermissions
    , apEffective

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

    -- ** GoalVisitTimeOnSiteDetails
    , GoalVisitTimeOnSiteDetails
    , goalVisitTimeOnSiteDetails
    , gvtosdComparisonValue
    , gvtosdComparisonType

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

    -- ** EntityUserLinkEntity
    , EntityUserLinkEntity
    , entityUserLinkEntity
    , euleProfileRef
    , euleAccountRef
    , euleWebPropertyRef

    -- ** Alt
    , Alt (..)

    -- ** FilterExpression
    , FilterExpression
    , filterExpression
    , feFieldIndex
    , feField
    , feKind
    , feMatchType
    , feCaseSensitive
    , feExpressionValue

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

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

    -- ** Columns
    , Columns
    , columns
    , colEtag
    , colKind
    , colItems
    , colTotalResults
    , colAttributeNames

    -- ** GaDataItemColsDataTable
    , GaDataItemColsDataTable
    , gaDataItemColsDataTable
    , gdicdtId
    , gdicdtType
    , gdicdtLabel

    -- ** AccountSummary
    , AccountSummary
    , accountSummary
    , asKind
    , asWebProperties
    , asName
    , asId

    -- ** CustomMetricParentLink
    , CustomMetricParentLink
    , customMetricParentLink
    , cmplHref
    , cmplType

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

    -- ** AccountChildLink
    , AccountChildLink
    , accountChildLink
    , aclHref
    , aclType

    -- ** FilterSearchAndReplaceDetails
    , FilterSearchAndReplaceDetails
    , filterSearchAndReplaceDetails
    , fsardFieldIndex
    , fsardField
    , fsardSearchString
    , fsardReplaceString
    , fsardCaseSensitive

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

    -- ** DataGaGet'Output
    , DataGaGet'Output (..)

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

    -- ** ProfileFilterLink
    , ProfileFilterLink
    , profileFilterLink
    , pProfileRef
    , pKind
    , pFilterRef
    , pSelfLink
    , pId
    , pRank

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

    -- ** Upload
    , Upload
    , upload
    , uplStatus
    , uplKind
    , uplCustomDataSourceId
    , uplAccountId
    , uplId
    , uplErrors

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

    -- ** UnsampledReportDriveDownloadDetails
    , UnsampledReportDriveDownloadDetails
    , unsampledReportDriveDownloadDetails
    , urdddDocumentId

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

    -- ** FilterLowercaseDetails
    , FilterLowercaseDetails
    , filterLowercaseDetails
    , fldFieldIndex
    , fldField

    -- ** WebPropertyRef
    , WebPropertyRef
    , webPropertyRef
    , wprKind
    , wprHref
    , wprAccountId
    , wprName
    , wprInternalWebPropertyId
    , wprId

    -- ** EntityUserLinkPermissions
    , EntityUserLinkPermissions
    , entityUserLinkPermissions
    , eulpLocal
    , eulpEffective

    -- ** RealtimeDataProfileInfo
    , RealtimeDataProfileInfo
    , realtimeDataProfileInfo
    , rdpiWebPropertyId
    , rdpiProfileId
    , rdpiProfileName
    , rdpiAccountId
    , rdpiInternalWebPropertyId
    , rdpiTableId

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

    -- ** GaDataItemCItemRowsDataTable
    , GaDataItemCItemRowsDataTable
    , gaDataItemCItemRowsDataTable
    , gdicirdtV

    -- ** GoalItemEventConditionsEventDetails
    , GoalItemEventConditionsEventDetails
    , goalItemEventConditionsEventDetails
    , giecedMatchType
    , giecedExpression
    , giecedComparisonValue
    , giecedType
    , giecedComparisonType

    -- ** CustomDataSourceParentLink
    , CustomDataSourceParentLink
    , customDataSourceParentLink
    , cdsplHref
    , cdsplType

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

    -- ** CustomDimensionParentLink
    , CustomDimensionParentLink
    , customDimensionParentLink
    , cdplHref
    , cdplType

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

    -- ** GoalItemStepsUrlDestinationDetails
    , GoalItemStepsUrlDestinationDetails
    , goalItemStepsUrlDestinationDetails
    , gisuddUrl
    , gisuddName
    , gisuddNumber

    -- ** CustomDataSourceChildLink
    , CustomDataSourceChildLink
    , customDataSourceChildLink
    , cdsclHref
    , cdsclType

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

    -- ** DataMcfGet'SamplingLevel
    , DataMcfGet'SamplingLevel (..)

    -- ** ColumnAttributes
    , ColumnAttributes
    , columnAttributes

    -- ** McfDataTotalsForAllResults
    , McfDataTotalsForAllResults
    , mcfDataTotalsForAllResults

    -- ** ProfileChildLink
    , ProfileChildLink
    , profileChildLink
    , pclHref
    , pclType

    -- ** EntityUserLink
    , EntityUserLink
    , entityUserLink
    , eulKind
    , eulUserRef
    , eulSelfLink
    , eulId
    , eulPermissions
    , eulEntity

    -- ** GaDataItemColumnHeaders
    , GaDataItemColumnHeaders
    , gaDataItemColumnHeaders
    , gdichColumnType
    , gdichName
    , gdichDataType

    -- ** GoalParentLink
    , GoalParentLink
    , goalParentLink
    , gplHref
    , gplType

    -- ** McfDataItemItemRows
    , McfDataItemItemRows
    , mcfDataItemItemRows
    , mdiirPrimitiveValue
    , mdiirConversionPathValue

    -- ** UnsampledReportCloudStorageDownloadDetails
    , UnsampledReportCloudStorageDownloadDetails
    , unsampledReportCloudStorageDownloadDetails
    , urcsddObjectId
    , urcsddBucketId

    -- ** RealtimeDataTotalsForAllResults
    , RealtimeDataTotalsForAllResults
    , realtimeDataTotalsForAllResults

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

    -- ** ExperimentItemVariations
    , ExperimentItemVariations
    , experimentItemVariations
    , eivStatus
    , eivWeight
    , eivUrl
    , eivWon
    , eivName

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

    -- ** ProfilePermissions
    , ProfilePermissions
    , profilePermissions
    , ppEffective

    -- ** UserRef
    , UserRef
    , userRef
    , useEmail
    , useKind
    , useId

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

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest
    , analyticsDataimportDeleteUploadDataRequest
    , addudrCustomDataImportUids

    -- ** WebpropertyParentLink
    , WebpropertyParentLink
    , webpropertyParentLink
    , wplHref
    , wplType

    -- ** AccountRef
    , AccountRef
    , accountRef
    , arKind
    , arHref
    , arName
    , arId

    -- ** GoalEventDetails
    , GoalEventDetails
    , goalEventDetails
    , gedUseEventValue
    , gedEventConditions

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

    -- ** GaDataProfileInfo
    , GaDataProfileInfo
    , gaDataProfileInfo
    , gdpiWebPropertyId
    , gdpiProfileId
    , gdpiProfileName
    , gdpiAccountId
    , gdpiInternalWebPropertyId
    , gdpiTableId

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

    -- ** RealtimeDataItemColumnHeaders
    , RealtimeDataItemColumnHeaders
    , realtimeDataItemColumnHeaders
    , rdichColumnType
    , rdichName
    , rdichDataType

    -- ** EntityAdWordsLinkEntity
    , EntityAdWordsLinkEntity
    , entityAdWordsLinkEntity
    , eawleWebPropertyRef

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

    -- ** GaDataDataTable
    , GaDataDataTable
    , gaDataDataTable
    , gddtCols
    , gddtRows

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

    -- ** WebpropertyChildLink
    , WebpropertyChildLink
    , webpropertyChildLink
    , wclHref
    , wclType

    -- ** ExperimentParentLink
    , ExperimentParentLink
    , experimentParentLink
    , eplHref
    , eplType

    -- ** RealtimeDataQuery
    , RealtimeDataQuery
    , realtimeDataQuery
    , rdqMetrics
    , rdqFilters
    , rdqIds
    , rdqSort
    , rdqDimensions
    , rdqMaxResults

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId

    -- ** McfDataProfileInfo
    , McfDataProfileInfo
    , mcfDataProfileInfo
    , mdpiWebPropertyId
    , mdpiProfileId
    , mdpiProfileName
    , mdpiAccountId
    , mdpiInternalWebPropertyId
    , mdpiTableId

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

    -- ** DataGaGet'SamplingLevel
    , DataGaGet'SamplingLevel (..)

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

    -- ** AdWordsAccount
    , AdWordsAccount
    , adWordsAccount
    , awaAutoTaggingEnabled
    , awaKind
    , awaCustomerId

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

    -- ** FilterRef
    , FilterRef
    , filterRef
    , frKind
    , frHref
    , frAccountId
    , frName
    , frId

    -- ** McfDataItemConversionPathValueItemItemRows
    , McfDataItemConversionPathValueItemItemRows
    , mcfDataItemConversionPathValueItemItemRows
    , mdicpviirInteractionType
    , mdicpviirNodeValue

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
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.API.Analytics.Data.Ga.Get
import           Network.Google.API.Analytics.Data.Mcf.Get
import           Network.Google.API.Analytics.Data.Realtime.Get
import           Network.Google.API.Analytics.Management.Accounts.List
import           Network.Google.API.Analytics.Management.AccountSummaries.List
import           Network.Google.API.Analytics.Management.AccountUserLinks.Delete
import           Network.Google.API.Analytics.Management.AccountUserLinks.Insert
import           Network.Google.API.Analytics.Management.AccountUserLinks.List
import           Network.Google.API.Analytics.Management.AccountUserLinks.Update
import           Network.Google.API.Analytics.Management.CustomDataSources.List
import           Network.Google.API.Analytics.Management.CustomDimensions.Get
import           Network.Google.API.Analytics.Management.CustomDimensions.Insert
import           Network.Google.API.Analytics.Management.CustomDimensions.List
import           Network.Google.API.Analytics.Management.CustomDimensions.Patch
import           Network.Google.API.Analytics.Management.CustomDimensions.Update
import           Network.Google.API.Analytics.Management.CustomMetrics.Get
import           Network.Google.API.Analytics.Management.CustomMetrics.Insert
import           Network.Google.API.Analytics.Management.CustomMetrics.List
import           Network.Google.API.Analytics.Management.CustomMetrics.Patch
import           Network.Google.API.Analytics.Management.CustomMetrics.Update
import           Network.Google.API.Analytics.Management.Experiments.Delete
import           Network.Google.API.Analytics.Management.Experiments.Get
import           Network.Google.API.Analytics.Management.Experiments.Insert
import           Network.Google.API.Analytics.Management.Experiments.List
import           Network.Google.API.Analytics.Management.Experiments.Patch
import           Network.Google.API.Analytics.Management.Experiments.Update
import           Network.Google.API.Analytics.Management.Filters.Delete
import           Network.Google.API.Analytics.Management.Filters.Get
import           Network.Google.API.Analytics.Management.Filters.Insert
import           Network.Google.API.Analytics.Management.Filters.List
import           Network.Google.API.Analytics.Management.Filters.Patch
import           Network.Google.API.Analytics.Management.Filters.Update
import           Network.Google.API.Analytics.Management.Goals.Get
import           Network.Google.API.Analytics.Management.Goals.Insert
import           Network.Google.API.Analytics.Management.Goals.List
import           Network.Google.API.Analytics.Management.Goals.Patch
import           Network.Google.API.Analytics.Management.Goals.Update
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.Delete
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.Get
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.Insert
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.List
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.Patch
import           Network.Google.API.Analytics.Management.ProfileFilterLinks.Update
import           Network.Google.API.Analytics.Management.Profiles.Delete
import           Network.Google.API.Analytics.Management.Profiles.Get
import           Network.Google.API.Analytics.Management.Profiles.Insert
import           Network.Google.API.Analytics.Management.Profiles.List
import           Network.Google.API.Analytics.Management.Profiles.Patch
import           Network.Google.API.Analytics.Management.Profiles.Update
import           Network.Google.API.Analytics.Management.ProfileUserLinks.Delete
import           Network.Google.API.Analytics.Management.ProfileUserLinks.Insert
import           Network.Google.API.Analytics.Management.ProfileUserLinks.List
import           Network.Google.API.Analytics.Management.ProfileUserLinks.Update
import           Network.Google.API.Analytics.Management.Segments.List
import           Network.Google.API.Analytics.Management.UnsampledReports.Get
import           Network.Google.API.Analytics.Management.UnsampledReports.Insert
import           Network.Google.API.Analytics.Management.UnsampledReports.List
import           Network.Google.API.Analytics.Management.Uploads.DeleteUploadData
import           Network.Google.API.Analytics.Management.Uploads.Get
import           Network.Google.API.Analytics.Management.Uploads.List
import           Network.Google.API.Analytics.Management.Uploads.UploadData
import           Network.Google.API.Analytics.Management.Webproperties.Get
import           Network.Google.API.Analytics.Management.Webproperties.Insert
import           Network.Google.API.Analytics.Management.Webproperties.List
import           Network.Google.API.Analytics.Management.Webproperties.Patch
import           Network.Google.API.Analytics.Management.Webproperties.Update
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Delete
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Get
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Insert
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.List
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Patch
import           Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Update
import           Network.Google.API.Analytics.Management.WebpropertyUserLinks.Delete
import           Network.Google.API.Analytics.Management.WebpropertyUserLinks.Insert
import           Network.Google.API.Analytics.Management.WebpropertyUserLinks.List
import           Network.Google.API.Analytics.Management.WebpropertyUserLinks.Update
import           Network.Google.API.Analytics.Metadata.Columns.List
import           Network.Google.API.Analytics.Provisioning.CreateAccountTicket
import           Network.Google.Prelude

{- $resources
TODO
-}

type Analytics =
     ProvisioningCreateAccountTicketAPI :<|>
       ManagementCustomMetricsUpdateAPI
       :<|> ManagementExperimentsInsertAPI
       :<|> ManagementExperimentsPatchAPI
       :<|> ManagementWebPropertyAdWordsLinksListAPI
       :<|> ManagementUploadsDeleteUploadDataAPI
       :<|> ManagementAccountUserLinksListAPI
       :<|> ManagementWebPropertyAdWordsLinksDeleteAPI
       :<|> ManagementProfileFilterLinksInsertAPI
       :<|> ManagementFiltersListAPI
       :<|> ManagementCustomDataSourcesListAPI
       :<|> ManagementFiltersGetAPI
       :<|> ManagementWebpropertyUserLinksInsertAPI
       :<|> ManagementUnsampledReportsGetAPI
       :<|> ManagementProfilesGetAPI
       :<|> DataRealtimeGetAPI
       :<|> ManagementCustomDimensionsGetAPI
       :<|> ManagementGoalsGetAPI
       :<|> ManagementCustomDimensionsInsertAPI
       :<|> ManagementWebPropertyAdWordsLinksUpdateAPI
       :<|> ManagementUnsampledReportsInsertAPI
       :<|> ManagementProfilesInsertAPI
       :<|> ManagementGoalsInsertAPI
       :<|> ManagementFiltersPatchAPI
       :<|> ManagementUploadsGetAPI
       :<|> ManagementProfileFilterLinksGetAPI
       :<|> ManagementUnsampledReportsListAPI
       :<|> ManagementWebpropertyUserLinksDeleteAPI
       :<|> ManagementSegmentsListAPI
       :<|> ManagementCustomDimensionsListAPI
       :<|> ManagementProfilesListAPI
       :<|> ManagementCustomMetricsPatchAPI
       :<|> ManagementGoalsListAPI
       :<|> ManagementUploadsUploadDataAPI
       :<|> ManagementProfilesDeleteAPI
       :<|> ManagementProfileUserLinksDeleteAPI
       :<|> ManagementExperimentsGetAPI
       :<|> ManagementWebpropertiesInsertAPI
       :<|> ManagementWebpropertiesUpdateAPI
       :<|> ManagementProfileFilterLinksDeleteAPI
       :<|> MetadataColumnsListAPI
       :<|> ManagementCustomDimensionsUpdateAPI
       :<|> ManagementProfilesUpdateAPI
       :<|> ManagementWebPropertyAdWordsLinksInsertAPI
       :<|> ManagementGoalsUpdateAPI
       :<|> ManagementProfileUserLinksInsertAPI
       :<|> ManagementFiltersDeleteAPI
       :<|> ManagementAccountUserLinksDeleteAPI
       :<|> ManagementWebPropertyAdWordsLinksPatchAPI
       :<|> ManagementExperimentsListAPI
       :<|> ManagementWebpropertiesListAPI
       :<|> ManagementAccountSummariesListAPI
       :<|> ManagementProfileFilterLinksUpdateAPI
       :<|> ManagementWebpropertiesGetAPI
       :<|> ManagementExperimentsDeleteAPI
       :<|> ManagementProfileFilterLinksListAPI
       :<|> ManagementUploadsListAPI
       :<|> ManagementAccountsListAPI
       :<|> ManagementWebpropertyUserLinksUpdateAPI
       :<|> ManagementCustomMetricsGetAPI
       :<|> ManagementProfileUserLinksListAPI
       :<|> ManagementCustomMetricsInsertAPI
       :<|> ManagementExperimentsUpdateAPI
       :<|> DataGaGetAPI
       :<|> ManagementWebpropertiesPatchAPI
       :<|> ManagementCustomDimensionsPatchAPI
       :<|> ManagementProfilesPatchAPI
       :<|> ManagementCustomMetricsListAPI
       :<|> ManagementGoalsPatchAPI
       :<|> ManagementProfileUserLinksUpdateAPI
       :<|> ManagementWebpropertyUserLinksListAPI
       :<|> DataMcfGetAPI
       :<|> ManagementAccountUserLinksUpdateAPI
       :<|> ManagementFiltersInsertAPI
       :<|> ManagementProfileFilterLinksPatchAPI
       :<|> ManagementWebPropertyAdWordsLinksGetAPI
       :<|> ManagementFiltersUpdateAPI
       :<|> ManagementAccountUserLinksInsertAPI

analytics :: Proxy Analytics
analytics = Proxy
