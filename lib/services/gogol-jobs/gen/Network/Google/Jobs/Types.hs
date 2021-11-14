{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Jobs.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Jobs.Types
    (
    -- * Service Configuration
      jobsService

    -- * OAuth Scopes
    , cloudPlatformScope
    , jobsScope

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * MendelDebugInputNamespacedDebugInput
    , MendelDebugInputNamespacedDebugInput
    , mendelDebugInputNamespacedDebugInput
    , mdindiAddtional

    -- * ApplicationInfo
    , ApplicationInfo
    , applicationInfo
    , aiURIs
    , aiEmails
    , aiInstruction

    -- * MendelDebugInput
    , MendelDebugInput
    , mendelDebugInput
    , mdiNamespacedDebugInput

    -- * MatchingJob
    , MatchingJob
    , matchingJob
    , mjJobTitleSnippet
    , mjJobSummary
    , mjCommuteInfo
    , mjSearchTextSnippet
    , mjJob

    -- * CompensationFilterType
    , CompensationFilterType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmDomain
    , rmAllowMissingIds
    , rmUserId
    , rmSessionId
    , rmDeviceInfo

    -- * CommuteFilterCommuteMethod
    , CommuteFilterCommuteMethod (..)

    -- * BatchCreateJobsResponse
    , BatchCreateJobsResponse
    , batchCreateJobsResponse
    , bcjrJobResults

    -- * SearchJobsRequestDiversificationLevel
    , SearchJobsRequestDiversificationLevel (..)

    -- * CompensationInfo
    , CompensationInfo
    , compensationInfo
    , ciAnnualizedTotalCompensationRange
    , ciEntries
    , ciAnnualizedBaseCompensationRange

    -- * BatchUpdateJobsResponse
    , BatchUpdateJobsResponse
    , batchUpdateJobsResponse
    , bujrJobResults

    -- * BatchDeleteJobsResponse
    , BatchDeleteJobsResponse
    , batchDeleteJobsResponse
    , bdjrJobResults

    -- * HistogramQuery
    , HistogramQuery
    , histogramQuery
    , hqHistogramQuery

    -- * CompletionResult
    , CompletionResult
    , completionResult
    , crSuggestion
    , crImageURI
    , crType

    -- * Location
    , Location
    , location
    , lLatLng
    , lRadiusMiles
    , lLocationType
    , lPostalAddress

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * ClientEvent
    , ClientEvent
    , clientEvent
    , ceRequestId
    , ceJobEvent
    , ceEventNotes
    , ceCreateTime
    , ceEventId

    -- * JobDegreeTypesItem
    , JobDegreeTypesItem (..)

    -- * ProjectsTenantsJobsListJobView
    , ProjectsTenantsJobsListJobView (..)

    -- * BatchUpdateJobsRequest
    , BatchUpdateJobsRequest
    , batchUpdateJobsRequest
    , bujrUpdateMask
    , bujrJobs

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * JobDerivedInfoJobCategoriesItem
    , JobDerivedInfoJobCategoriesItem (..)

    -- * ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrCompanies
    , lcrMetadata

    -- * CompensationEntryType
    , CompensationEntryType (..)

    -- * NamespacedDebugInput
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

    -- * CommuteFilter
    , CommuteFilter
    , commuteFilter
    , cfCommuteMethod
    , cfAllowImpreciseAddresses
    , cfTravelDuration
    , cfStartCoordinates
    , cfRoadTraffic
    , cfDePartureTime

    -- * BatchDeleteJobsRequest
    , BatchDeleteJobsRequest
    , batchDeleteJobsRequest
    , bdjrNames

    -- * JobQueryEmploymentTypesItem
    , JobQueryEmploymentTypesItem (..)

    -- * JobCustomAttributes
    , JobCustomAttributes
    , jobCustomAttributes
    , jcaAddtional

    -- * JobEvent
    , JobEvent
    , jobEvent
    , jeJobs
    , jeType

    -- * SearchJobsRequest
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

    -- * HistogramQueryResultHistogram
    , HistogramQueryResultHistogram
    , histogramQueryResultHistogram
    , hqrhAddtional

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * HistogramQueryResult
    , HistogramQueryResult
    , histogramQueryResult
    , hqrHistogramQuery
    , hqrHistogram

    -- * DeviceInfoDeviceType
    , DeviceInfoDeviceType (..)

    -- * CompensationEntryUnit
    , CompensationEntryUnit (..)

    -- * JobResult
    , JobResult
    , jobResult
    , jrStatus
    , jrJob

    -- * NamespacedDebugInputForcedFlags
    , NamespacedDebugInputForcedFlags
    , namespacedDebugInputForcedFlags
    , ndiffAddtional

    -- * ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmRequestId

    -- * CommuteInfo
    , CommuteInfo
    , commuteInfo
    , ciTravelDuration
    , ciJobLocation

    -- * JobJobLevel
    , JobJobLevel (..)

    -- * JobVisibility
    , JobVisibility (..)

    -- * JobEmploymentTypesItem
    , JobEmploymentTypesItem (..)

    -- * CustomRankingInfoImportanceLevel
    , CustomRankingInfoImportanceLevel (..)

    -- * JobDerivedInfo
    , JobDerivedInfo
    , jobDerivedInfo
    , jdiJobCategories
    , jdiLocations

    -- * BatchOperationMetadata
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

    -- * CompanyDerivedInfo
    , CompanyDerivedInfo
    , companyDerivedInfo
    , cdiHeadquartersLocation

    -- * CompensationFilterUnitsItem
    , CompensationFilterUnitsItem (..)

    -- * CompensationFilter
    , CompensationFilter
    , compensationFilter
    , cfIncludeJobsWithUnspecifiedCompensationRange
    , cfRange
    , cfUnits
    , cfType

    -- * Tenant
    , Tenant
    , tenant
    , tName
    , tExternalId

    -- * JobPostingRegion
    , JobPostingRegion (..)

    -- * Company
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

    -- * CustomAttribute
    , CustomAttribute
    , customAttribute
    , caLongValues
    , caFilterable
    , caKeywordSearchable
    , caStringValues

    -- * Job
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

    -- * CompanySize
    , CompanySize (..)

    -- * ProjectsTenantsCompleteQueryType
    , ProjectsTenantsCompleteQueryType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * LocationFilter
    , LocationFilter
    , locationFilter
    , lfLatLng
    , lfDistanceInMiles
    , lfRegionCode
    , lfTelecommutePreference
    , lfAddress

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs
    , ljrMetadata

    -- * CommuteFilterRoadTraffic
    , CommuteFilterRoadTraffic (..)

    -- * CompletionResultType
    , CompletionResultType (..)

    -- * JobQuery
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

    -- * BatchCreateJobsRequest
    , BatchCreateJobsRequest
    , batchCreateJobsRequest
    , bcjrJobs

    -- * ProjectsTenantsCompleteQueryScope
    , ProjectsTenantsCompleteQueryScope (..)

    -- * SpellingCorrection
    , SpellingCorrection
    , spellingCorrection
    , scCorrected
    , scCorrectedText
    , scCorrectedHTML

    -- * CompleteQueryResponse
    , CompleteQueryResponse
    , completeQueryResponse
    , cqrMetadata
    , cqrCompletionResults

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- * LocationLocationType
    , LocationLocationType (..)

    -- * CompensationEntry
    , CompensationEntry
    , compensationEntry
    , ceAmount
    , ceExpectedUnitsPerYear
    , ceRange
    , ceType
    , ceDescription
    , ceUnit

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * CompensationRange
    , CompensationRange
    , compensationRange
    , crMaxCompensation
    , crMinCompensation

    -- * JobEventType
    , JobEventType (..)

    -- * CustomRankingInfo
    , CustomRankingInfo
    , customRankingInfo
    , criImportanceLevel
    , criRankingExpression

    -- * ProcessingOptions
    , ProcessingOptions
    , processingOptions
    , poHTMLSanitization
    , poDisableStreetAddressResolution

    -- * PostalAddress
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

    -- * BatchOperationMetadataState
    , BatchOperationMetadataState (..)

    -- * DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diId
    , diDeviceType

    -- * ListTenantsResponse
    , ListTenantsResponse
    , listTenantsResponse
    , ltrTenants
    , ltrNextPageToken
    , ltrMetadata

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * SearchJobsRequestSearchMode
    , SearchJobsRequestSearchMode (..)

    -- * LocationFilterTelecommutePreference
    , LocationFilterTelecommutePreference (..)

    -- * ProcessingOptionsHTMLSanitization
    , ProcessingOptionsHTMLSanitization (..)

    -- * JobQueryJobCategoriesItem
    , JobQueryJobCategoriesItem (..)

    -- * SearchJobsResponse
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

    -- * JobJobBenefitsItem
    , JobJobBenefitsItem (..)

    -- * SearchJobsRequestJobView
    , SearchJobsRequestJobView (..)

    -- * NamespacedDebugInputForcedRollouts
    , NamespacedDebugInputForcedRollouts
    , namespacedDebugInputForcedRollouts
    , ndifrAddtional

    -- * TimestampRange
    , TimestampRange
    , timestampRange
    , trStartTime
    , trEndTime
    ) where

import Network.Google.Jobs.Types.Product
import Network.Google.Jobs.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v4' of the Cloud Talent Solution API. This contains the host and root path used as a starting point for constructing service requests.
jobsService :: ServiceConfig
jobsService
  = defaultService (ServiceId "jobs:v4")
      "jobs.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage job postings
jobsScope :: Proxy '["https://www.googleapis.com/auth/jobs"]
jobsScope = Proxy
