{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Jobs.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * ApplicationInfo
    , ApplicationInfo
    , applicationInfo
    , aiURIs
    , aiEmails
    , aiInstruction

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

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmDomain
    , rmUserId
    , rmSessionId
    , rmDeviceInfo

    -- * UpdateCompanyRequest
    , UpdateCompanyRequest
    , updateCompanyRequest
    , ucrUpdateMask
    , ucrCompany

    -- * HistogramResultSearchType
    , HistogramResultSearchType (..)

    -- * CommuteFilterCommuteMethod
    , CommuteFilterCommuteMethod (..)

    -- * UpdateJobRequest
    , UpdateJobRequest
    , updateJobRequest
    , ujrUpdateMask
    , ujrJob

    -- * BucketizedCount
    , BucketizedCount
    , bucketizedCount
    , bcCount
    , bcRange

    -- * SearchJobsRequestDiversificationLevel
    , SearchJobsRequestDiversificationLevel (..)

    -- * CompensationInfo
    , CompensationInfo
    , compensationInfo
    , ciAnnualizedTotalCompensationRange
    , ciEntries
    , ciAnnualizedBaseCompensationRange

    -- * CreateCompanyRequest
    , CreateCompanyRequest
    , createCompanyRequest
    , ccrCompany

    -- * HistogramQuery
    , HistogramQuery
    , histogramQuery
    , hqHistogramQuery

    -- * CreateJobRequest
    , CreateJobRequest
    , createJobRequest
    , cjrJob

    -- * CompletionResult
    , CompletionResult
    , completionResult
    , crSuggestion
    , crImageURI
    , crType

    -- * CompensationHistogramResultType
    , CompensationHistogramResultType (..)

    -- * Location
    , Location
    , location
    , lLatLng
    , lLocationType
    , lPostalAddress
    , lRadiusInMiles

    -- * Empty
    , Empty
    , empty

    -- * ClientEvent
    , ClientEvent
    , clientEvent
    , ceRequestId
    , ceExtraInfo
    , ceJobEvent
    , ceParentEventId
    , ceCreateTime
    , ceEventId

    -- * CompensationHistogramRequest
    , CompensationHistogramRequest
    , compensationHistogramRequest
    , chrBucketingOption
    , chrType

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrCompanies
    , lcrMetadata

    -- * CompensationEntryType
    , CompensationEntryType (..)

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
    , bdjrFilter

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

    -- * HistogramQueryResultHistogram
    , HistogramQueryResultHistogram
    , histogramQueryResultHistogram
    , hqrhAddtional

    -- * HistogramQueryResult
    , HistogramQueryResult
    , histogramQueryResult
    , hqrHistogramQuery
    , hqrHistogram

    -- * DeviceInfoDeviceType
    , DeviceInfoDeviceType (..)

    -- * CompensationEntryUnit
    , CompensationEntryUnit (..)

    -- * CustomAttributeHistogramRequest
    , CustomAttributeHistogramRequest
    , customAttributeHistogramRequest
    , cahrLongValueHistogramBucketingOption
    , cahrKey
    , cahrStringValueHistogram

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

    -- * CustomAttributeHistogramResult
    , CustomAttributeHistogramResult
    , customAttributeHistogramResult
    , cStringValueHistogramResult
    , cLongValueHistogramResult
    , cKey

    -- * BucketRange
    , BucketRange
    , bucketRange
    , brTo
    , brFrom

    -- * JobVisibility
    , JobVisibility (..)

    -- * CustomRankingInfoImportanceLevel
    , CustomRankingInfoImportanceLevel (..)

    -- * NumericBucketingResult
    , NumericBucketingResult
    , numericBucketingResult
    , nbrMaxValue
    , nbrCounts
    , nbrMinValue

    -- * JobDerivedInfo
    , JobDerivedInfo
    , jobDerivedInfo
    , jdiJobCategories
    , jdiLocations

    -- * CompanyDerivedInfo
    , CompanyDerivedInfo
    , companyDerivedInfo
    , cdiHeadquartersLocation

    -- * CompensationFilter
    , CompensationFilter
    , compensationFilter
    , cfIncludeJobsWithUnspecifiedCompensationRange
    , cfRange
    , cfUnits
    , cfType

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

    -- * HistogramResults
    , HistogramResults
    , histogramResults
    , hrSimpleHistogramResults
    , hrCustomAttributeHistogramResults
    , hrCompensationHistogramResults

    -- * CompanySize
    , CompanySize (..)

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

    -- * CompensationHistogramResult
    , CompensationHistogramResult
    , compensationHistogramResult
    , cResult
    , cType

    -- * CompensationHistogramRequestType
    , CompensationHistogramRequestType (..)

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
    , jqCompensationFilter
    , jqQuery
    , jqCompanyNames
    , jqEmploymentTypes
    , jqExcludedJobs

    -- * CreateClientEventRequest
    , CreateClientEventRequest
    , createClientEventRequest
    , ccerClientEvent

    -- * SpellingCorrection
    , SpellingCorrection
    , spellingCorrection
    , scCorrected
    , scCorrectedText

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

    -- * DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diId
    , diDeviceType

    -- * NumericBucketingOption
    , NumericBucketingOption
    , numericBucketingOption
    , nboBucketBounds
    , nboRequiresMinMax

    -- * SearchJobsRequestSearchMode
    , SearchJobsRequestSearchMode (..)

    -- * HistogramFacets
    , HistogramFacets
    , histogramFacets
    , hfCompensationHistogramFacets
    , hfCustomAttributeHistogramFacets
    , hfSimpleHistogramFacets

    -- * LocationFilterTelecommutePreference
    , LocationFilterTelecommutePreference (..)

    -- * ProcessingOptionsHTMLSanitization
    , ProcessingOptionsHTMLSanitization (..)

    -- * HistogramResult
    , HistogramResult
    , histogramResult
    , hrValues
    , hrSearchType

    -- * CustomAttributeHistogramResultStringValueHistogramResult
    , CustomAttributeHistogramResultStringValueHistogramResult
    , customAttributeHistogramResultStringValueHistogramResult
    , cahrsvhrAddtional

    -- * ClientEventExtraInfo
    , ClientEventExtraInfo
    , clientEventExtraInfo
    , ceeiAddtional

    -- * SearchJobsResponse
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

    -- * SearchJobsRequestJobView
    , SearchJobsRequestJobView (..)

    -- * HistogramResultValues
    , HistogramResultValues
    , histogramResultValues
    , hrvAddtional

    -- * TimestampRange
    , TimestampRange
    , timestampRange
    , trStartTime
    , trEndTime
    ) where

import           Network.Google.Jobs.Types.Product
import           Network.Google.Jobs.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3p1beta1' of the Cloud Talent Solution API. This contains the host and root path used as a starting point for constructing service requests.
jobsService :: ServiceConfig
jobsService
  = defaultService (ServiceId "jobs:v3p1beta1")
      "jobs.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage job postings
jobsScope :: Proxy '["https://www.googleapis.com/auth/jobs"]
jobsScope = Proxy
