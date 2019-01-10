{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Partners.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Partners.Types
    (
    -- * Service Configuration
      partnersService

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

    -- * EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- * OfferCustomerOfferType
    , OfferCustomerOfferType (..)

    -- * HistoricalOffer
    , HistoricalOffer
    , historicalOffer
    , hoCreationTime
    , hoClientId
    , hoStatus
    , hoClientEmail
    , hoAdwordsURL
    , hoLastModifiedTime
    , hoSenderName
    , hoOfferCode
    , hoOfferCountryCode
    , hoOfferType
    , hoClientName
    , hoExpirationTime

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- * LeadType
    , LeadType (..)

    -- * CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csUserCount
    , csIsCertified
    , csType
    , csExamStatuses

    -- * DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceURL
    , diServerTraceInfo
    , diServerInfo

    -- * AvailableOfferOfferLevel
    , AvailableOfferOfferLevel (..)

    -- * OptIns
    , OptIns
    , optIns
    , oiPhoneContact
    , oiPhysicalMail
    , oiPerformanceSuggestions
    , oiSpecialOffers
    , oiMarketComm

    -- * LogUserEventRequestEventAction
    , LogUserEventRequestEventAction (..)

    -- * AnalyticsDataPoint
    , AnalyticsDataPoint
    , analyticsDataPoint
    , adpEventCount
    , adpEventLocations

    -- * GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- * PublicProFile
    , PublicProFile
    , publicProFile
    , ppfURL
    , ppfDisplayImageURL
    , ppfProFileImage
    , ppfDisplayName
    , ppfId

    -- * ExamStatus
    , ExamStatus
    , examStatus
    , esPassed
    , esExpiration
    , esWarning
    , esLastPassed
    , esTaken
    , esExamType

    -- * CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- * Location
    , Location
    , location
    , lLatLng
    , lLanguageCode
    , lSortingCode
    , lRegionCode
    , lAddressLine
    , lDependentLocality
    , lPostalCode
    , lAddress
    , lLocality
    , lAdministrativeArea

    -- * Empty
    , Empty
    , empty

    -- * TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- * ListOffersHistoryResponse
    , ListOffersHistoryResponse
    , listOffersHistoryResponse
    , lohrNextPageToken
    , lohrShowingEntireCompany
    , lohrResponseMetadata
    , lohrCanShowEntireCompany
    , lohrTotalResults
    , lohrOffers

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
    , lcrResponseMetadata
    , lcrCompanies

    -- * Certification
    , Certification
    , certification
    , cLastAchieved
    , cExpiration
    , cWarning
    , cCertificationType
    , cAchieved

    -- * RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- * HistoricalOfferStatus
    , HistoricalOfferStatus (..)

    -- * CompanyProFileStatus
    , CompanyProFileStatus (..)

    -- * CompanyBadgeTier
    , CompanyBadgeTier (..)

    -- * CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , clrRecaptchaStatus
    , clrResponseMetadata
    , clrLead

    -- * UserOverrides
    , UserOverrides
    , userOverrides
    , uoIPAddress
    , uoUserId

    -- * Analytics
    , Analytics
    , analytics
    , aProFileViews
    , aEventDate
    , aSearchViews
    , aContacts

    -- * CompanyRelationBadgeTier
    , CompanyRelationBadgeTier (..)

    -- * ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmDebugInfo

    -- * LogMessageRequest
    , LogMessageRequest
    , logMessageRequest
    , lmrRequestMetadata
    , lmrClientInfo
    , lmrDetails
    , lmrLevel

    -- * LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

    -- * CompanyRelationState
    , CompanyRelationState (..)

    -- * CountryOfferInfoOfferType
    , CountryOfferInfoOfferType (..)

    -- * RankType
    , RankType (..)

    -- * SpecializationStatusBadgeSpecializationState
    , SpecializationStatusBadgeSpecializationState (..)

    -- * AvailableOfferOfferType
    , AvailableOfferOfferType (..)

    -- * AvailableOffer
    , AvailableOffer
    , availableOffer
    , aoShowSpecialOfferCopy
    , aoQualifiedCustomer
    , aoTerms
    , aoQualifiedCustomersComplete
    , aoMaxAccountAge
    , aoName
    , aoCountryOfferInfos
    , aoId
    , aoOfferType
    , aoOfferLevel
    , aoDescription
    , aoAvailable

    -- * SpecializationStatusBadgeSpecialization
    , SpecializationStatusBadgeSpecialization (..)

    -- * LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo
    , lmrciAddtional

    -- * CompanyRelation
    , CompanyRelation
    , companyRelation
    , crCreationTime
    , crState
    , crBadgeTier
    , crCompanyId
    , crPrimaryAddress
    , crLogoURL
    , crCompanyAdmin
    , crWebsite
    , crAddress
    , crPrimaryCountryCode
    , crName
    , crPhoneNumber
    , crManagerAccount
    , crIsPending
    , crInternalCompanyId
    , crSpecializationStatus
    , crSegment
    , crPrimaryLanguageCode
    , crResolvedTimestamp

    -- * User
    , User
    , user
    , uCertificationStatus
    , uPublicProFile
    , uCompanyVerificationEmail
    , uExamStatus
    , uPrimaryEmails
    , uProFile
    , uAfaInfoShared
    , uCompany
    , uInternalId
    , uId
    , uAvailableAdwordsManagerAccounts
    , uLastAccessTime

    -- * LogUserEventRequestEventCategory
    , LogUserEventRequestEventCategory (..)

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * Lead
    , Lead
    , lead
    , leaGivenName
    , leaEmail
    , leaLanguageCode
    , leaState
    , leaMarketingOptIn
    , leaAdwordsCustomerId
    , leaFamilyName
    , leaPhoneNumber
    , leaMinMonthlyBudget
    , leaId
    , leaComments
    , leaWebsiteURL
    , leaType
    , leaGpsMotivations
    , leaCreateTime

    -- * AdWordsManagerAccountInfo
    , AdWordsManagerAccountInfo
    , adWordsManagerAccountInfo
    , awmaiCustomerName
    , awmaiId

    -- * LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- * HistoricalOfferOfferType
    , HistoricalOfferOfferType (..)

    -- * CertificationStatusType
    , CertificationStatusType (..)

    -- * CreateLeadResponseRecaptchaStatus
    , CreateLeadResponseRecaptchaStatus (..)

    -- * OfferCustomer
    , OfferCustomer
    , offerCustomer
    , ocCreationTime
    , ocAdwordsURL
    , ocGetYAmount
    , ocName
    , ocCountryCode
    , ocOfferType
    , ocSpendXAmount
    , ocExternalCid
    , ocEligibilityDaysLeft

    -- * ExamStatusExamType
    , ExamStatusExamType (..)

    -- * GetPartnersStatusResponse
    , GetPartnersStatusResponse
    , getPartnersStatusResponse
    , gpsrResponseMetadata

    -- * ListAnalyticsResponse
    , ListAnalyticsResponse
    , listAnalyticsResponse
    , larNextPageToken
    , larAnalytics
    , larResponseMetadata
    , larAnalyticsSummary

    -- * Company
    , Company
    , company
    , cCompanyTypes
    , cAutoApprovalEmailDomains
    , cProFileStatus
    , cBadgeTier
    , cPublicProFile
    , cOriginalMinMonthlyBudget
    , cAdditionalWebsites
    , cIndustries
    , cConvertedMinMonthlyBudget
    , cName
    , cLocalizedInfos
    , cCertificationStatuses
    , cRanks
    , cId
    , cWebsiteURL
    , cSpecializationStatus
    , cPrimaryAdwordsManagerAccountId
    , cBadgeAuthorityInAwn
    , cPrimaryLanguageCode
    , cLocations
    , cServices
    , cPrimaryLocation

    -- * ListOffersResponseNoOfferReason
    , ListOffersResponseNoOfferReason (..)

    -- * LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

    -- * ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorAvailableOffers
    , lorNoOfferReason
    , lorResponseMetadata

    -- * Xgafv
    , Xgafv (..)

    -- * UserProFile
    , UserProFile
    , userProFile
    , upfGivenName
    , upfMarkets
    , upfChannels
    , upfEmailOptIns
    , upfJobFunctions
    , upfAddress
    , upfPrimaryCountryCode
    , upfFamilyName
    , upfLanguages
    , upfIndustries
    , upfMigrateToAfa
    , upfPhoneNumber
    , upfEmailAddress
    , upfAdwordsManagerAccount
    , upfProFilePublic

    -- * AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asContactsCount
    , asProFileViewsCount
    , asSearchViewsCount

    -- * CertificationExamStatusType
    , CertificationExamStatusType (..)

    -- * LogUserEventRequest
    , LogUserEventRequest
    , logUserEventRequest
    , luerEventCategory
    , luerRequestMetadata
    , luerURL
    , luerEventScope
    , luerLead
    , luerEventDatas
    , luerEventAction

    -- * LogMessageRequestLevel
    , LogMessageRequestLevel (..)

    -- * CertificationCertificationType
    , CertificationCertificationType (..)

    -- * EventDataKey
    , EventDataKey (..)

    -- * SpecializationStatus
    , SpecializationStatus
    , specializationStatus
    , ssBadgeSpecialization
    , ssBadgeSpecializationState

    -- * LeadState
    , LeadState (..)

    -- * Rank
    , Rank
    , rank
    , rValue
    , rType

    -- * LogUserEventRequestEventScope
    , LogUserEventRequestEventScope (..)

    -- * ListLeadsResponse
    , ListLeadsResponse
    , listLeadsResponse
    , llrLeads
    , llrNextPageToken
    , llrResponseMetadata
    , llrTotalSize

    -- * CountryOfferInfo
    , CountryOfferInfo
    , countryOfferInfo
    , coiGetYAmount
    , coiOfferCountryCode
    , coiOfferType
    , coiSpendXAmount

    -- * CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , cRequestMetadata
    , cRecaptchaChallenge
    , cLead
    ) where

import           Network.Google.Partners.Types.Product
import           Network.Google.Partners.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Google Partners API. This contains the host and root path used as a starting point for constructing service requests.
partnersService :: ServiceConfig
partnersService
  = defaultService (ServiceId "partners:v2")
      "partners.googleapis.com"
