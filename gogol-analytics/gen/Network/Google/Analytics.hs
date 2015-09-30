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
    , module Analytics.Data.Ga.Get

    -- ** AnalyticsDataMcfGet
    , module Analytics.Data.Mcf.Get

    -- ** AnalyticsDataRealtimeGet
    , module Analytics.Data.Realtime.Get

    -- ** AnalyticsManagementAccountSummariesList
    , module Analytics.Management.AccountSummaries.List

    -- ** AnalyticsManagementAccountUserLinksDelete
    , module Analytics.Management.AccountUserLinks.Delete

    -- ** AnalyticsManagementAccountUserLinksInsert
    , module Analytics.Management.AccountUserLinks.Insert

    -- ** AnalyticsManagementAccountUserLinksList
    , module Analytics.Management.AccountUserLinks.List

    -- ** AnalyticsManagementAccountUserLinksUpdate
    , module Analytics.Management.AccountUserLinks.Update

    -- ** AnalyticsManagementAccountsList
    , module Analytics.Management.Accounts.List

    -- ** AnalyticsManagementCustomDataSourcesList
    , module Analytics.Management.CustomDataSources.List

    -- ** AnalyticsManagementCustomDimensionsGet
    , module Analytics.Management.CustomDimensions.Get

    -- ** AnalyticsManagementCustomDimensionsInsert
    , module Analytics.Management.CustomDimensions.Insert

    -- ** AnalyticsManagementCustomDimensionsList
    , module Analytics.Management.CustomDimensions.List

    -- ** AnalyticsManagementCustomDimensionsPatch
    , module Analytics.Management.CustomDimensions.Patch

    -- ** AnalyticsManagementCustomDimensionsUpdate
    , module Analytics.Management.CustomDimensions.Update

    -- ** AnalyticsManagementCustomMetricsGet
    , module Analytics.Management.CustomMetrics.Get

    -- ** AnalyticsManagementCustomMetricsInsert
    , module Analytics.Management.CustomMetrics.Insert

    -- ** AnalyticsManagementCustomMetricsList
    , module Analytics.Management.CustomMetrics.List

    -- ** AnalyticsManagementCustomMetricsPatch
    , module Analytics.Management.CustomMetrics.Patch

    -- ** AnalyticsManagementCustomMetricsUpdate
    , module Analytics.Management.CustomMetrics.Update

    -- ** AnalyticsManagementExperimentsDelete
    , module Analytics.Management.Experiments.Delete

    -- ** AnalyticsManagementExperimentsGet
    , module Analytics.Management.Experiments.Get

    -- ** AnalyticsManagementExperimentsInsert
    , module Analytics.Management.Experiments.Insert

    -- ** AnalyticsManagementExperimentsList
    , module Analytics.Management.Experiments.List

    -- ** AnalyticsManagementExperimentsPatch
    , module Analytics.Management.Experiments.Patch

    -- ** AnalyticsManagementExperimentsUpdate
    , module Analytics.Management.Experiments.Update

    -- ** AnalyticsManagementFiltersDelete
    , module Analytics.Management.Filters.Delete

    -- ** AnalyticsManagementFiltersGet
    , module Analytics.Management.Filters.Get

    -- ** AnalyticsManagementFiltersInsert
    , module Analytics.Management.Filters.Insert

    -- ** AnalyticsManagementFiltersList
    , module Analytics.Management.Filters.List

    -- ** AnalyticsManagementFiltersPatch
    , module Analytics.Management.Filters.Patch

    -- ** AnalyticsManagementFiltersUpdate
    , module Analytics.Management.Filters.Update

    -- ** AnalyticsManagementGoalsGet
    , module Analytics.Management.Goals.Get

    -- ** AnalyticsManagementGoalsInsert
    , module Analytics.Management.Goals.Insert

    -- ** AnalyticsManagementGoalsList
    , module Analytics.Management.Goals.List

    -- ** AnalyticsManagementGoalsPatch
    , module Analytics.Management.Goals.Patch

    -- ** AnalyticsManagementGoalsUpdate
    , module Analytics.Management.Goals.Update

    -- ** AnalyticsManagementProfileFilterLinksDelete
    , module Analytics.Management.ProfileFilterLinks.Delete

    -- ** AnalyticsManagementProfileFilterLinksGet
    , module Analytics.Management.ProfileFilterLinks.Get

    -- ** AnalyticsManagementProfileFilterLinksInsert
    , module Analytics.Management.ProfileFilterLinks.Insert

    -- ** AnalyticsManagementProfileFilterLinksList
    , module Analytics.Management.ProfileFilterLinks.List

    -- ** AnalyticsManagementProfileFilterLinksPatch
    , module Analytics.Management.ProfileFilterLinks.Patch

    -- ** AnalyticsManagementProfileFilterLinksUpdate
    , module Analytics.Management.ProfileFilterLinks.Update

    -- ** AnalyticsManagementProfileUserLinksDelete
    , module Analytics.Management.ProfileUserLinks.Delete

    -- ** AnalyticsManagementProfileUserLinksInsert
    , module Analytics.Management.ProfileUserLinks.Insert

    -- ** AnalyticsManagementProfileUserLinksList
    , module Analytics.Management.ProfileUserLinks.List

    -- ** AnalyticsManagementProfileUserLinksUpdate
    , module Analytics.Management.ProfileUserLinks.Update

    -- ** AnalyticsManagementProfilesDelete
    , module Analytics.Management.Profiles.Delete

    -- ** AnalyticsManagementProfilesGet
    , module Analytics.Management.Profiles.Get

    -- ** AnalyticsManagementProfilesInsert
    , module Analytics.Management.Profiles.Insert

    -- ** AnalyticsManagementProfilesList
    , module Analytics.Management.Profiles.List

    -- ** AnalyticsManagementProfilesPatch
    , module Analytics.Management.Profiles.Patch

    -- ** AnalyticsManagementProfilesUpdate
    , module Analytics.Management.Profiles.Update

    -- ** AnalyticsManagementSegmentsList
    , module Analytics.Management.Segments.List

    -- ** AnalyticsManagementUnsampledReportsGet
    , module Analytics.Management.UnsampledReports.Get

    -- ** AnalyticsManagementUnsampledReportsInsert
    , module Analytics.Management.UnsampledReports.Insert

    -- ** AnalyticsManagementUnsampledReportsList
    , module Analytics.Management.UnsampledReports.List

    -- ** AnalyticsManagementUploadsDeleteUploadData
    , module Analytics.Management.Uploads.DeleteUploadData

    -- ** AnalyticsManagementUploadsGet
    , module Analytics.Management.Uploads.Get

    -- ** AnalyticsManagementUploadsList
    , module Analytics.Management.Uploads.List

    -- ** AnalyticsManagementUploadsUploadData
    , module Analytics.Management.Uploads.UploadData

    -- ** AnalyticsManagementWebPropertyAdWordsLinksDelete
    , module Analytics.Management.WebPropertyAdWordsLinks.Delete

    -- ** AnalyticsManagementWebPropertyAdWordsLinksGet
    , module Analytics.Management.WebPropertyAdWordsLinks.Get

    -- ** AnalyticsManagementWebPropertyAdWordsLinksInsert
    , module Analytics.Management.WebPropertyAdWordsLinks.Insert

    -- ** AnalyticsManagementWebPropertyAdWordsLinksList
    , module Analytics.Management.WebPropertyAdWordsLinks.List

    -- ** AnalyticsManagementWebPropertyAdWordsLinksPatch
    , module Analytics.Management.WebPropertyAdWordsLinks.Patch

    -- ** AnalyticsManagementWebPropertyAdWordsLinksUpdate
    , module Analytics.Management.WebPropertyAdWordsLinks.Update

    -- ** AnalyticsManagementWebpropertiesGet
    , module Analytics.Management.Webproperties.Get

    -- ** AnalyticsManagementWebpropertiesInsert
    , module Analytics.Management.Webproperties.Insert

    -- ** AnalyticsManagementWebpropertiesList
    , module Analytics.Management.Webproperties.List

    -- ** AnalyticsManagementWebpropertiesPatch
    , module Analytics.Management.Webproperties.Patch

    -- ** AnalyticsManagementWebpropertiesUpdate
    , module Analytics.Management.Webproperties.Update

    -- ** AnalyticsManagementWebpropertyUserLinksDelete
    , module Analytics.Management.WebpropertyUserLinks.Delete

    -- ** AnalyticsManagementWebpropertyUserLinksInsert
    , module Analytics.Management.WebpropertyUserLinks.Insert

    -- ** AnalyticsManagementWebpropertyUserLinksList
    , module Analytics.Management.WebpropertyUserLinks.List

    -- ** AnalyticsManagementWebpropertyUserLinksUpdate
    , module Analytics.Management.WebpropertyUserLinks.Update

    -- ** AnalyticsMetadataColumnsList
    , module Analytics.Metadata.Columns.List

    -- ** AnalyticsProvisioningCreateAccountTicket
    , module Analytics.Provisioning.CreateAccountTicket

    -- * Types

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

    -- ** EntityUserLink
    , EntityUserLink
    , entityUserLink
    , euluKind
    , euluUserRef
    , euluSelfLink
    , euluId
    , euluPermissions
    , euluEntity

    -- ** AccountTicket
    , AccountTicket
    , accountTicket
    , atRedirectUri
    , atKind
    , atProfile
    , atAccount
    , atWebproperty
    , atId

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

    -- ** Column
    , Column
    , column
    , ccKind
    , ccAttributes
    , ccId
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
     Data :<|> Management :<|> Provisioning :<|> Metadata

analyticsAPI :: Proxy AnalyticsAPI
analyticsAPI = Proxy
