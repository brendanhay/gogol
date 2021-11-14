{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Jobs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Talent Solution provides the capability to create, read, update,
-- and delete job postings, as well as search jobs based on keywords and
-- filters.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference>
module Network.Google.Jobs
    (
    -- * Service Configuration
      jobsService

    -- * OAuth Scopes
    , cloudPlatformScope
    , jobsScope

    -- * API Declaration
    , JobsAPI

    -- * Resources

    -- ** jobs.projects.operations.get
    , module Network.Google.Resource.Jobs.Projects.Operations.Get

    -- ** jobs.projects.tenants.clientEvents.create
    , module Network.Google.Resource.Jobs.Projects.Tenants.ClientEvents.Create

    -- ** jobs.projects.tenants.companies.create
    , module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Create

    -- ** jobs.projects.tenants.companies.delete
    , module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Delete

    -- ** jobs.projects.tenants.companies.get
    , module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Get

    -- ** jobs.projects.tenants.companies.list
    , module Network.Google.Resource.Jobs.Projects.Tenants.Companies.List

    -- ** jobs.projects.tenants.companies.patch
    , module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Patch

    -- ** jobs.projects.tenants.completeQuery
    , module Network.Google.Resource.Jobs.Projects.Tenants.CompleteQuery

    -- ** jobs.projects.tenants.create
    , module Network.Google.Resource.Jobs.Projects.Tenants.Create

    -- ** jobs.projects.tenants.delete
    , module Network.Google.Resource.Jobs.Projects.Tenants.Delete

    -- ** jobs.projects.tenants.get
    , module Network.Google.Resource.Jobs.Projects.Tenants.Get

    -- ** jobs.projects.tenants.jobs.batchCreate
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchCreate

    -- ** jobs.projects.tenants.jobs.batchDelete
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchDelete

    -- ** jobs.projects.tenants.jobs.batchUpdate
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchUpdate

    -- ** jobs.projects.tenants.jobs.create
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Create

    -- ** jobs.projects.tenants.jobs.delete
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Delete

    -- ** jobs.projects.tenants.jobs.get
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Get

    -- ** jobs.projects.tenants.jobs.list
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.List

    -- ** jobs.projects.tenants.jobs.patch
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Patch

    -- ** jobs.projects.tenants.jobs.search
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Search

    -- ** jobs.projects.tenants.jobs.searchForAlert
    , module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.SearchForAlert

    -- ** jobs.projects.tenants.list
    , module Network.Google.Resource.Jobs.Projects.Tenants.List

    -- ** jobs.projects.tenants.patch
    , module Network.Google.Resource.Jobs.Projects.Tenants.Patch

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** MendelDebugInputNamespacedDebugInput
    , MendelDebugInputNamespacedDebugInput
    , mendelDebugInputNamespacedDebugInput
    , mdindiAddtional

    -- ** ApplicationInfo
    , ApplicationInfo
    , applicationInfo
    , aiURIs
    , aiEmails
    , aiInstruction

    -- ** MendelDebugInput
    , MendelDebugInput
    , mendelDebugInput
    , mdiNamespacedDebugInput

    -- ** MatchingJob
    , MatchingJob
    , matchingJob
    , mjJobTitleSnippet
    , mjJobSummary
    , mjCommuteInfo
    , mjSearchTextSnippet
    , mjJob

    -- ** CompensationFilterType
    , CompensationFilterType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmDomain
    , rmAllowMissingIds
    , rmUserId
    , rmSessionId
    , rmDeviceInfo

    -- ** CommuteFilterCommuteMethod
    , CommuteFilterCommuteMethod (..)

    -- ** BatchCreateJobsResponse
    , BatchCreateJobsResponse
    , batchCreateJobsResponse
    , bcjrJobResults

    -- ** SearchJobsRequestDiversificationLevel
    , SearchJobsRequestDiversificationLevel (..)

    -- ** CompensationInfo
    , CompensationInfo
    , compensationInfo
    , ciAnnualizedTotalCompensationRange
    , ciEntries
    , ciAnnualizedBaseCompensationRange

    -- ** BatchUpdateJobsResponse
    , BatchUpdateJobsResponse
    , batchUpdateJobsResponse
    , bujrJobResults

    -- ** BatchDeleteJobsResponse
    , BatchDeleteJobsResponse
    , batchDeleteJobsResponse
    , bdjrJobResults

    -- ** HistogramQuery
    , HistogramQuery
    , histogramQuery
    , hqHistogramQuery

    -- ** CompletionResult
    , CompletionResult
    , completionResult
    , crSuggestion
    , crImageURI
    , crType

    -- ** Location
    , Location
    , location
    , lLatLng
    , lRadiusMiles
    , lLocationType
    , lPostalAddress

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** ClientEvent
    , ClientEvent
    , clientEvent
    , ceRequestId
    , ceJobEvent
    , ceEventNotes
    , ceCreateTime
    , ceEventId

    -- ** JobDegreeTypesItem
    , JobDegreeTypesItem (..)

    -- ** ProjectsTenantsJobsListJobView
    , ProjectsTenantsJobsListJobView (..)

    -- ** BatchUpdateJobsRequest
    , BatchUpdateJobsRequest
    , batchUpdateJobsRequest
    , bujrUpdateMask
    , bujrJobs

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** JobDerivedInfoJobCategoriesItem
    , JobDerivedInfoJobCategoriesItem (..)

    -- ** ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrCompanies
    , lcrMetadata

    -- ** CompensationEntryType
    , CompensationEntryType (..)

    -- ** NamespacedDebugInput
    , NamespacedDebugInput
    , namespacedDebugInput
    , ndiDisableAutomaticEnrollmentSelection
    , ndiDisableExpTags
    , ndiDisableOrganicSelection
    , ndiForcedFlags
    , ndiConditionallyForcedExps
    , ndiAbsolutelyForcedExpTags
    , ndiAbsolutelyForcedExpNames
    , ndiDisableManualEnrollmentSelection
    , ndiDisableExps
    , ndiAbsolutelyForcedExps
    , ndiDisableExpNames
    , ndiConditionallyForcedExpNames
    , ndiConditionallyForcedExpTags
    , ndiForcedRollouts

    -- ** CommuteFilter
    , CommuteFilter
    , commuteFilter
    , cfCommuteMethod
    , cfAllowImpreciseAddresses
    , cfTravelDuration
    , cfStartCoordinates
    , cfRoadTraffic
    , cfDePartureTime

    -- ** BatchDeleteJobsRequest
    , BatchDeleteJobsRequest
    , batchDeleteJobsRequest
    , bdjrNames

    -- ** JobQueryEmploymentTypesItem
    , JobQueryEmploymentTypesItem (..)

    -- ** JobCustomAttributes
    , JobCustomAttributes
    , jobCustomAttributes
    , jcaAddtional

    -- ** JobEvent
    , JobEvent
    , jobEvent
    , jeJobs
    , jeType

    -- ** SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrRequestMetadata
    , sjrJobView
    , sjrMaxPageSize
    , sjrOrderBy
    , sjrOffSet
    , sjrSearchMode
    , sjrDiversificationLevel
    , sjrHistogramQueries
    , sjrJobQuery
    , sjrEnableBroadening
    , sjrPageToken
    , sjrCustomRankingInfo
    , sjrDisableKeywordMatch

    -- ** HistogramQueryResultHistogram
    , HistogramQueryResultHistogram
    , histogramQueryResultHistogram
    , hqrhAddtional

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** HistogramQueryResult
    , HistogramQueryResult
    , histogramQueryResult
    , hqrHistogramQuery
    , hqrHistogram

    -- ** DeviceInfoDeviceType
    , DeviceInfoDeviceType (..)

    -- ** CompensationEntryUnit
    , CompensationEntryUnit (..)

    -- ** JobResult
    , JobResult
    , jobResult
    , jrStatus
    , jrJob

    -- ** NamespacedDebugInputForcedFlags
    , NamespacedDebugInputForcedFlags
    , namespacedDebugInputForcedFlags
    , ndiffAddtional

    -- ** ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmRequestId

    -- ** CommuteInfo
    , CommuteInfo
    , commuteInfo
    , ciTravelDuration
    , ciJobLocation

    -- ** JobJobLevel
    , JobJobLevel (..)

    -- ** JobVisibility
    , JobVisibility (..)

    -- ** JobEmploymentTypesItem
    , JobEmploymentTypesItem (..)

    -- ** CustomRankingInfoImportanceLevel
    , CustomRankingInfoImportanceLevel (..)

    -- ** JobDerivedInfo
    , JobDerivedInfo
    , jobDerivedInfo
    , jdiJobCategories
    , jdiLocations

    -- ** BatchOperationMetadata
    , BatchOperationMetadata
    , batchOperationMetadata
    , bomState
    , bomUpdateTime
    , bomEndTime
    , bomSuccessCount
    , bomFailureCount
    , bomCreateTime
    , bomStateDescription
    , bomTotalCount

    -- ** CompanyDerivedInfo
    , CompanyDerivedInfo
    , companyDerivedInfo
    , cdiHeadquartersLocation

    -- ** CompensationFilterUnitsItem
    , CompensationFilterUnitsItem (..)

    -- ** CompensationFilter
    , CompensationFilter
    , compensationFilter
    , cfIncludeJobsWithUnspecifiedCompensationRange
    , cfRange
    , cfUnits
    , cfType

    -- ** Tenant
    , Tenant
    , tenant
    , tName
    , tExternalId

    -- ** JobPostingRegion
    , JobPostingRegion (..)

    -- ** Company
    , Company
    , company
    , cHiringAgency
    , cCareerSiteURI
    , cEeoText
    , cSize
    , cWebsiteURI
    , cSuspended
    , cKeywordSearchableJobCustomAttributes
    , cImageURI
    , cHeadquartersAddress
    , cName
    , cDisplayName
    , cExternalId
    , cDerivedInfo

    -- ** CustomAttribute
    , CustomAttribute
    , customAttribute
    , caLongValues
    , caFilterable
    , caKeywordSearchable
    , caStringValues

    -- ** Job
    , Job
    , job
    , jDePartment
    , jApplicationInfo
    , jLanguageCode
    , jCompensationInfo
    , jResponsibilities
    , jJobStartTime
    , jPromotionValue
    , jAddresses
    , jJobBenefits
    , jVisibility
    , jJobLevel
    , jPostingUpdateTime
    , jCustomAttributes
    , jPostingPublishTime
    , jName
    , jDegreeTypes
    , jCompany
    , jQualifications
    , jCompanyDisplayName
    , jIncentives
    , jJobEndTime
    , jPostingRegion
    , jTitle
    , jEmploymentTypes
    , jDerivedInfo
    , jProcessingOptions
    , jPostingExpireTime
    , jDescription
    , jRequisitionId
    , jPostingCreateTime

    -- ** CompanySize
    , CompanySize (..)

    -- ** ProjectsTenantsCompleteQueryType
    , ProjectsTenantsCompleteQueryType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** LocationFilter
    , LocationFilter
    , locationFilter
    , lfLatLng
    , lfDistanceInMiles
    , lfRegionCode
    , lfTelecommutePreference
    , lfAddress

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs
    , ljrMetadata

    -- ** CommuteFilterRoadTraffic
    , CommuteFilterRoadTraffic (..)

    -- ** CompletionResultType
    , CompletionResultType (..)

    -- ** JobQuery
    , JobQuery
    , jobQuery
    , jqLanguageCodes
    , jqDisableSpellCheck
    , jqCustomAttributeFilter
    , jqCommuteFilter
    , jqPublishTimeRange
    , jqLocationFilters
    , jqCompanyDisplayNames
    , jqJobCategories
    , jqCompanies
    , jqCompensationFilter
    , jqQuery
    , jqQueryLanguageCode
    , jqEmploymentTypes
    , jqExcludedJobs

    -- ** BatchCreateJobsRequest
    , BatchCreateJobsRequest
    , batchCreateJobsRequest
    , bcjrJobs

    -- ** ProjectsTenantsCompleteQueryScope
    , ProjectsTenantsCompleteQueryScope (..)

    -- ** SpellingCorrection
    , SpellingCorrection
    , spellingCorrection
    , scCorrected
    , scCorrectedText
    , scCorrectedHTML

    -- ** CompleteQueryResponse
    , CompleteQueryResponse
    , completeQueryResponse
    , cqrMetadata
    , cqrCompletionResults

    -- ** TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** LocationLocationType
    , LocationLocationType (..)

    -- ** CompensationEntry
    , CompensationEntry
    , compensationEntry
    , ceAmount
    , ceExpectedUnitsPerYear
    , ceRange
    , ceType
    , ceDescription
    , ceUnit

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** CompensationRange
    , CompensationRange
    , compensationRange
    , crMaxCompensation
    , crMinCompensation

    -- ** JobEventType
    , JobEventType (..)

    -- ** CustomRankingInfo
    , CustomRankingInfo
    , customRankingInfo
    , criImportanceLevel
    , criRankingExpression

    -- ** ProcessingOptions
    , ProcessingOptions
    , processingOptions
    , poHTMLSanitization
    , poDisableStreetAddressResolution

    -- ** PostalAddress
    , PostalAddress
    , postalAddress
    , paLanguageCode
    , paSortingCode
    , paRegionCode
    , paSublocality
    , paPostalCode
    , paLocality
    , paRecipients
    , paAdministrativeArea
    , paAddressLines
    , paRevision
    , paOrganization

    -- ** BatchOperationMetadataState
    , BatchOperationMetadataState (..)

    -- ** DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diId
    , diDeviceType

    -- ** ListTenantsResponse
    , ListTenantsResponse
    , listTenantsResponse
    , ltrTenants
    , ltrNextPageToken
    , ltrMetadata

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** SearchJobsRequestSearchMode
    , SearchJobsRequestSearchMode (..)

    -- ** LocationFilterTelecommutePreference
    , LocationFilterTelecommutePreference (..)

    -- ** ProcessingOptionsHTMLSanitization
    , ProcessingOptionsHTMLSanitization (..)

    -- ** JobQueryJobCategoriesItem
    , JobQueryJobCategoriesItem (..)

    -- ** SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrHistogramQueryResults
    , sjrLocationFilters
    , sjrMatchingJobs
    , sjrTotalSize
    , sjrMetadata
    , sjrBroadenedQueryJobsCount
    , sjrSpellCorrection

    -- ** JobJobBenefitsItem
    , JobJobBenefitsItem (..)

    -- ** SearchJobsRequestJobView
    , SearchJobsRequestJobView (..)

    -- ** NamespacedDebugInputForcedRollouts
    , NamespacedDebugInputForcedRollouts
    , namespacedDebugInputForcedRollouts
    , ndifrAddtional

    -- ** TimestampRange
    , TimestampRange
    , timestampRange
    , trStartTime
    , trEndTime
    ) where

import Network.Google.Prelude
import Network.Google.Jobs.Types
import Network.Google.Resource.Jobs.Projects.Operations.Get
import Network.Google.Resource.Jobs.Projects.Tenants.ClientEvents.Create
import Network.Google.Resource.Jobs.Projects.Tenants.Companies.Create
import Network.Google.Resource.Jobs.Projects.Tenants.Companies.Delete
import Network.Google.Resource.Jobs.Projects.Tenants.Companies.Get
import Network.Google.Resource.Jobs.Projects.Tenants.Companies.List
import Network.Google.Resource.Jobs.Projects.Tenants.Companies.Patch
import Network.Google.Resource.Jobs.Projects.Tenants.CompleteQuery
import Network.Google.Resource.Jobs.Projects.Tenants.Create
import Network.Google.Resource.Jobs.Projects.Tenants.Delete
import Network.Google.Resource.Jobs.Projects.Tenants.Get
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchCreate
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchDelete
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchUpdate
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Create
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Delete
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Get
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.List
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Patch
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Search
import Network.Google.Resource.Jobs.Projects.Tenants.Jobs.SearchForAlert
import Network.Google.Resource.Jobs.Projects.Tenants.List
import Network.Google.Resource.Jobs.Projects.Tenants.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Talent Solution API service.
type JobsAPI =
     ProjectsTenantsCompaniesListResource :<|>
       ProjectsTenantsCompaniesPatchResource
       :<|> ProjectsTenantsCompaniesGetResource
       :<|> ProjectsTenantsCompaniesCreateResource
       :<|> ProjectsTenantsCompaniesDeleteResource
       :<|> ProjectsTenantsJobsListResource
       :<|> ProjectsTenantsJobsPatchResource
       :<|> ProjectsTenantsJobsGetResource
       :<|> ProjectsTenantsJobsCreateResource
       :<|> ProjectsTenantsJobsBatchUpdateResource
       :<|> ProjectsTenantsJobsBatchDeleteResource
       :<|> ProjectsTenantsJobsBatchCreateResource
       :<|> ProjectsTenantsJobsSearchForAlertResource
       :<|> ProjectsTenantsJobsSearchResource
       :<|> ProjectsTenantsJobsDeleteResource
       :<|> ProjectsTenantsClientEventsCreateResource
       :<|> ProjectsTenantsListResource
       :<|> ProjectsTenantsPatchResource
       :<|> ProjectsTenantsGetResource
       :<|> ProjectsTenantsCreateResource
       :<|> ProjectsTenantsCompleteQueryResource
       :<|> ProjectsTenantsDeleteResource
       :<|> ProjectsOperationsGetResource
