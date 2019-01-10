{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Jobs
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- ** jobs.projects.clientEvents.create
    , module Network.Google.Resource.Jobs.Projects.ClientEvents.Create

    -- ** jobs.projects.companies.create
    , module Network.Google.Resource.Jobs.Projects.Companies.Create

    -- ** jobs.projects.companies.delete
    , module Network.Google.Resource.Jobs.Projects.Companies.Delete

    -- ** jobs.projects.companies.get
    , module Network.Google.Resource.Jobs.Projects.Companies.Get

    -- ** jobs.projects.companies.list
    , module Network.Google.Resource.Jobs.Projects.Companies.List

    -- ** jobs.projects.companies.patch
    , module Network.Google.Resource.Jobs.Projects.Companies.Patch

    -- ** jobs.projects.complete
    , module Network.Google.Resource.Jobs.Projects.Complete

    -- ** jobs.projects.jobs.batchDelete
    , module Network.Google.Resource.Jobs.Projects.Jobs.BatchDelete

    -- ** jobs.projects.jobs.create
    , module Network.Google.Resource.Jobs.Projects.Jobs.Create

    -- ** jobs.projects.jobs.delete
    , module Network.Google.Resource.Jobs.Projects.Jobs.Delete

    -- ** jobs.projects.jobs.get
    , module Network.Google.Resource.Jobs.Projects.Jobs.Get

    -- ** jobs.projects.jobs.list
    , module Network.Google.Resource.Jobs.Projects.Jobs.List

    -- ** jobs.projects.jobs.patch
    , module Network.Google.Resource.Jobs.Projects.Jobs.Patch

    -- ** jobs.projects.jobs.search
    , module Network.Google.Resource.Jobs.Projects.Jobs.Search

    -- ** jobs.projects.jobs.searchForAlert
    , module Network.Google.Resource.Jobs.Projects.Jobs.SearchForAlert

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** ApplicationInfo
    , ApplicationInfo
    , applicationInfo
    , aiURIs
    , aiEmails
    , aiInstruction

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

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmDomain
    , rmUserId
    , rmSessionId
    , rmDeviceInfo

    -- ** UpdateCompanyRequest
    , UpdateCompanyRequest
    , updateCompanyRequest
    , ucrUpdateMask
    , ucrCompany

    -- ** HistogramResultSearchType
    , HistogramResultSearchType (..)

    -- ** CommuteFilterCommuteMethod
    , CommuteFilterCommuteMethod (..)

    -- ** UpdateJobRequest
    , UpdateJobRequest
    , updateJobRequest
    , ujrUpdateMask
    , ujrJob

    -- ** BucketizedCount
    , BucketizedCount
    , bucketizedCount
    , bcCount
    , bcRange

    -- ** SearchJobsRequestDiversificationLevel
    , SearchJobsRequestDiversificationLevel (..)

    -- ** CompensationInfo
    , CompensationInfo
    , compensationInfo
    , ciAnnualizedTotalCompensationRange
    , ciEntries
    , ciAnnualizedBaseCompensationRange

    -- ** CreateCompanyRequest
    , CreateCompanyRequest
    , createCompanyRequest
    , ccrCompany

    -- ** HistogramQuery
    , HistogramQuery
    , histogramQuery
    , hqHistogramQuery

    -- ** CreateJobRequest
    , CreateJobRequest
    , createJobRequest
    , cjrJob

    -- ** CompletionResult
    , CompletionResult
    , completionResult
    , crSuggestion
    , crImageURI
    , crType

    -- ** CompensationHistogramResultType
    , CompensationHistogramResultType (..)

    -- ** Location
    , Location
    , location
    , lLatLng
    , lLocationType
    , lPostalAddress
    , lRadiusInMiles

    -- ** Empty
    , Empty
    , empty

    -- ** ClientEvent
    , ClientEvent
    , clientEvent
    , ceRequestId
    , ceExtraInfo
    , ceJobEvent
    , ceParentEventId
    , ceCreateTime
    , ceEventId

    -- ** CompensationHistogramRequest
    , CompensationHistogramRequest
    , compensationHistogramRequest
    , chrBucketingOption
    , chrType

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrCompanies
    , lcrMetadata

    -- ** CompensationEntryType
    , CompensationEntryType (..)

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
    , bdjrFilter

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
    , sjrOrderBy
    , sjrOffSet
    , sjrSearchMode
    , sjrDiversificationLevel
    , sjrHistogramQueries
    , sjrRequirePreciseResultSize
    , sjrJobQuery
    , sjrEnableBroadening
    , sjrPageToken
    , sjrCustomRankingInfo
    , sjrDisableKeywordMatch
    , sjrPageSize
    , sjrHistogramFacets

    -- ** HistogramQueryResultHistogram
    , HistogramQueryResultHistogram
    , histogramQueryResultHistogram
    , hqrhAddtional

    -- ** HistogramQueryResult
    , HistogramQueryResult
    , histogramQueryResult
    , hqrHistogramQuery
    , hqrHistogram

    -- ** DeviceInfoDeviceType
    , DeviceInfoDeviceType (..)

    -- ** CompensationEntryUnit
    , CompensationEntryUnit (..)

    -- ** CustomAttributeHistogramRequest
    , CustomAttributeHistogramRequest
    , customAttributeHistogramRequest
    , cahrLongValueHistogramBucketingOption
    , cahrKey
    , cahrStringValueHistogram

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

    -- ** CustomAttributeHistogramResult
    , CustomAttributeHistogramResult
    , customAttributeHistogramResult
    , cStringValueHistogramResult
    , cLongValueHistogramResult
    , cKey

    -- ** BucketRange
    , BucketRange
    , bucketRange
    , brTo
    , brFrom

    -- ** JobVisibility
    , JobVisibility (..)

    -- ** CustomRankingInfoImportanceLevel
    , CustomRankingInfoImportanceLevel (..)

    -- ** NumericBucketingResult
    , NumericBucketingResult
    , numericBucketingResult
    , nbrMaxValue
    , nbrCounts
    , nbrMinValue

    -- ** JobDerivedInfo
    , JobDerivedInfo
    , jobDerivedInfo
    , jdiJobCategories
    , jdiLocations

    -- ** CompanyDerivedInfo
    , CompanyDerivedInfo
    , companyDerivedInfo
    , cdiHeadquartersLocation

    -- ** CompensationFilter
    , CompensationFilter
    , compensationFilter
    , cfIncludeJobsWithUnspecifiedCompensationRange
    , cfRange
    , cfUnits
    , cfType

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
    , jCompanyName
    , jAddresses
    , jJobBenefits
    , jVisibility
    , jJobLevel
    , jPostingUpdateTime
    , jCustomAttributes
    , jPostingPublishTime
    , jName
    , jDegreeTypes
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

    -- ** HistogramResults
    , HistogramResults
    , histogramResults
    , hrSimpleHistogramResults
    , hrCustomAttributeHistogramResults
    , hrCompensationHistogramResults

    -- ** CompanySize
    , CompanySize (..)

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

    -- ** CompensationHistogramResult
    , CompensationHistogramResult
    , compensationHistogramResult
    , cResult
    , cType

    -- ** CompensationHistogramRequestType
    , CompensationHistogramRequestType (..)

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
    , jqCompensationFilter
    , jqQuery
    , jqCompanyNames
    , jqEmploymentTypes
    , jqExcludedJobs

    -- ** CreateClientEventRequest
    , CreateClientEventRequest
    , createClientEventRequest
    , ccerClientEvent

    -- ** SpellingCorrection
    , SpellingCorrection
    , spellingCorrection
    , scCorrected
    , scCorrectedText

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

    -- ** DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diId
    , diDeviceType

    -- ** NumericBucketingOption
    , NumericBucketingOption
    , numericBucketingOption
    , nboBucketBounds
    , nboRequiresMinMax

    -- ** SearchJobsRequestSearchMode
    , SearchJobsRequestSearchMode (..)

    -- ** HistogramFacets
    , HistogramFacets
    , histogramFacets
    , hfCompensationHistogramFacets
    , hfCustomAttributeHistogramFacets
    , hfSimpleHistogramFacets

    -- ** LocationFilterTelecommutePreference
    , LocationFilterTelecommutePreference (..)

    -- ** ProcessingOptionsHTMLSanitization
    , ProcessingOptionsHTMLSanitization (..)

    -- ** HistogramResult
    , HistogramResult
    , histogramResult
    , hrValues
    , hrSearchType

    -- ** CustomAttributeHistogramResultStringValueHistogramResult
    , CustomAttributeHistogramResultStringValueHistogramResult
    , customAttributeHistogramResultStringValueHistogramResult
    , cahrsvhrAddtional

    -- ** ClientEventExtraInfo
    , ClientEventExtraInfo
    , clientEventExtraInfo
    , ceeiAddtional

    -- ** SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrEstimatedTotalSize
    , sjrHistogramQueryResults
    , sjrLocationFilters
    , sjrMatchingJobs
    , sjrTotalSize
    , sjrHistogramResults
    , sjrMetadata
    , sjrBroadenedQueryJobsCount
    , sjrSpellCorrection

    -- ** SearchJobsRequestJobView
    , SearchJobsRequestJobView (..)

    -- ** HistogramResultValues
    , HistogramResultValues
    , histogramResultValues
    , hrvAddtional

    -- ** TimestampRange
    , TimestampRange
    , timestampRange
    , trStartTime
    , trEndTime
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Jobs.Projects.ClientEvents.Create
import           Network.Google.Resource.Jobs.Projects.Companies.Create
import           Network.Google.Resource.Jobs.Projects.Companies.Delete
import           Network.Google.Resource.Jobs.Projects.Companies.Get
import           Network.Google.Resource.Jobs.Projects.Companies.List
import           Network.Google.Resource.Jobs.Projects.Companies.Patch
import           Network.Google.Resource.Jobs.Projects.Complete
import           Network.Google.Resource.Jobs.Projects.Jobs.BatchDelete
import           Network.Google.Resource.Jobs.Projects.Jobs.Create
import           Network.Google.Resource.Jobs.Projects.Jobs.Delete
import           Network.Google.Resource.Jobs.Projects.Jobs.Get
import           Network.Google.Resource.Jobs.Projects.Jobs.List
import           Network.Google.Resource.Jobs.Projects.Jobs.Patch
import           Network.Google.Resource.Jobs.Projects.Jobs.Search
import           Network.Google.Resource.Jobs.Projects.Jobs.SearchForAlert

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Talent Solution API service.
type JobsAPI =
     ProjectsCompaniesListResource :<|>
       ProjectsCompaniesPatchResource
       :<|> ProjectsCompaniesGetResource
       :<|> ProjectsCompaniesCreateResource
       :<|> ProjectsCompaniesDeleteResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsPatchResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsBatchDeleteResource
       :<|> ProjectsJobsSearchForAlertResource
       :<|> ProjectsJobsSearchResource
       :<|> ProjectsJobsDeleteResource
       :<|> ProjectsClientEventsCreateResource
       :<|> ProjectsCompleteResource
