{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Partners
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches certified companies and creates contact leads with them, and
-- also audits the usage of clients.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference>
module Network.Google.Partners
    (
    -- * Service Configuration
      partnersService

    -- * API Declaration
    , PartnersAPI

    -- * Resources

    -- ** partners.analytics.list
    , module Network.Google.Resource.Partners.Analytics.List

    -- ** partners.clientMessages.log
    , module Network.Google.Resource.Partners.ClientMessages.Log

    -- ** partners.companies.get
    , module Network.Google.Resource.Partners.Companies.Get

    -- ** partners.companies.leads.create
    , module Network.Google.Resource.Partners.Companies.Leads.Create

    -- ** partners.companies.list
    , module Network.Google.Resource.Partners.Companies.List

    -- ** partners.getPartnersstatus
    , module Network.Google.Resource.Partners.GetPartnersstatus

    -- ** partners.leads.list
    , module Network.Google.Resource.Partners.Leads.List

    -- ** partners.offers.history.list
    , module Network.Google.Resource.Partners.Offers.History.List

    -- ** partners.offers.list
    , module Network.Google.Resource.Partners.Offers.List

    -- ** partners.updateCompanies
    , module Network.Google.Resource.Partners.UpdateCompanies

    -- ** partners.updateLeads
    , module Network.Google.Resource.Partners.UpdateLeads

    -- ** partners.userEvents.log
    , module Network.Google.Resource.Partners.UserEvents.Log

    -- ** partners.userStates.list
    , module Network.Google.Resource.Partners.UserStates.List

    -- ** partners.users.createCompanyRelation
    , module Network.Google.Resource.Partners.Users.CreateCompanyRelation

    -- ** partners.users.deleteCompanyRelation
    , module Network.Google.Resource.Partners.Users.DeleteCompanyRelation

    -- ** partners.users.get
    , module Network.Google.Resource.Partners.Users.Get

    -- ** partners.users.updateProfile
    , module Network.Google.Resource.Partners.Users.UpdateProFile

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

    -- ** EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- ** OfferCustomerOfferType
    , OfferCustomerOfferType (..)

    -- ** HistoricalOffer
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

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- ** LeadType
    , LeadType (..)

    -- ** CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csUserCount
    , csIsCertified
    , csType
    , csExamStatuses

    -- ** DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceURL
    , diServerTraceInfo
    , diServerInfo

    -- ** AvailableOfferOfferLevel
    , AvailableOfferOfferLevel (..)

    -- ** OptIns
    , OptIns
    , optIns
    , oiPhoneContact
    , oiPhysicalMail
    , oiPerformanceSuggestions
    , oiSpecialOffers
    , oiMarketComm

    -- ** LogUserEventRequestEventAction
    , LogUserEventRequestEventAction (..)

    -- ** AnalyticsDataPoint
    , AnalyticsDataPoint
    , analyticsDataPoint
    , adpEventCount
    , adpEventLocations

    -- ** GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- ** PublicProFile
    , PublicProFile
    , publicProFile
    , ppfURL
    , ppfDisplayImageURL
    , ppfProFileImage
    , ppfDisplayName
    , ppfId

    -- ** ExamStatus
    , ExamStatus
    , examStatus
    , esPassed
    , esExpiration
    , esWarning
    , esLastPassed
    , esTaken
    , esExamType

    -- ** CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- ** Location
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

    -- ** Empty
    , Empty
    , empty

    -- ** TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- ** ListOffersHistoryResponse
    , ListOffersHistoryResponse
    , listOffersHistoryResponse
    , lohrNextPageToken
    , lohrShowingEntireCompany
    , lohrResponseMetadata
    , lohrCanShowEntireCompany
    , lohrTotalResults
    , lohrOffers

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
    , lcrResponseMetadata
    , lcrCompanies

    -- ** Certification
    , Certification
    , certification
    , cLastAchieved
    , cExpiration
    , cWarning
    , cCertificationType
    , cAchieved

    -- ** RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- ** HistoricalOfferStatus
    , HistoricalOfferStatus (..)

    -- ** CompanyProFileStatus
    , CompanyProFileStatus (..)

    -- ** CompanyBadgeTier
    , CompanyBadgeTier (..)

    -- ** CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , clrRecaptchaStatus
    , clrResponseMetadata
    , clrLead

    -- ** UserOverrides
    , UserOverrides
    , userOverrides
    , uoIPAddress
    , uoUserId

    -- ** Analytics
    , Analytics
    , analytics
    , aProFileViews
    , aEventDate
    , aSearchViews
    , aContacts

    -- ** CompanyRelationBadgeTier
    , CompanyRelationBadgeTier (..)

    -- ** ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmDebugInfo

    -- ** LogMessageRequest
    , LogMessageRequest
    , logMessageRequest
    , lmrRequestMetadata
    , lmrClientInfo
    , lmrDetails
    , lmrLevel

    -- ** LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

    -- ** CompanyRelationState
    , CompanyRelationState (..)

    -- ** CountryOfferInfoOfferType
    , CountryOfferInfoOfferType (..)

    -- ** RankType
    , RankType (..)

    -- ** SpecializationStatusBadgeSpecializationState
    , SpecializationStatusBadgeSpecializationState (..)

    -- ** AvailableOfferOfferType
    , AvailableOfferOfferType (..)

    -- ** AvailableOffer
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

    -- ** SpecializationStatusBadgeSpecialization
    , SpecializationStatusBadgeSpecialization (..)

    -- ** LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo
    , lmrciAddtional

    -- ** CompanyRelation
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

    -- ** User
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

    -- ** LogUserEventRequestEventCategory
    , LogUserEventRequestEventCategory (..)

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** Lead
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

    -- ** AdWordsManagerAccountInfo
    , AdWordsManagerAccountInfo
    , adWordsManagerAccountInfo
    , awmaiCustomerName
    , awmaiId

    -- ** LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- ** HistoricalOfferOfferType
    , HistoricalOfferOfferType (..)

    -- ** CertificationStatusType
    , CertificationStatusType (..)

    -- ** CreateLeadResponseRecaptchaStatus
    , CreateLeadResponseRecaptchaStatus (..)

    -- ** OfferCustomer
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

    -- ** ExamStatusExamType
    , ExamStatusExamType (..)

    -- ** GetPartnersStatusResponse
    , GetPartnersStatusResponse
    , getPartnersStatusResponse
    , gpsrResponseMetadata

    -- ** ListAnalyticsResponse
    , ListAnalyticsResponse
    , listAnalyticsResponse
    , larNextPageToken
    , larAnalytics
    , larResponseMetadata
    , larAnalyticsSummary

    -- ** Company
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

    -- ** ListOffersResponseNoOfferReason
    , ListOffersResponseNoOfferReason (..)

    -- ** LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorAvailableOffers
    , lorNoOfferReason
    , lorResponseMetadata

    -- ** Xgafv
    , Xgafv (..)

    -- ** UserProFile
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

    -- ** AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asContactsCount
    , asProFileViewsCount
    , asSearchViewsCount

    -- ** CertificationExamStatusType
    , CertificationExamStatusType (..)

    -- ** LogUserEventRequest
    , LogUserEventRequest
    , logUserEventRequest
    , luerEventCategory
    , luerRequestMetadata
    , luerURL
    , luerEventScope
    , luerLead
    , luerEventDatas
    , luerEventAction

    -- ** LogMessageRequestLevel
    , LogMessageRequestLevel (..)

    -- ** CertificationCertificationType
    , CertificationCertificationType (..)

    -- ** EventDataKey
    , EventDataKey (..)

    -- ** SpecializationStatus
    , SpecializationStatus
    , specializationStatus
    , ssBadgeSpecialization
    , ssBadgeSpecializationState

    -- ** LeadState
    , LeadState (..)

    -- ** Rank
    , Rank
    , rank
    , rValue
    , rType

    -- ** LogUserEventRequestEventScope
    , LogUserEventRequestEventScope (..)

    -- ** ListLeadsResponse
    , ListLeadsResponse
    , listLeadsResponse
    , llrLeads
    , llrNextPageToken
    , llrResponseMetadata
    , llrTotalSize

    -- ** CountryOfferInfo
    , CountryOfferInfo
    , countryOfferInfo
    , coiGetYAmount
    , coiOfferCountryCode
    , coiOfferType
    , coiSpendXAmount

    -- ** CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , cRequestMetadata
    , cRecaptchaChallenge
    , cLead
    ) where

import Network.Google.Prelude
import Network.Google.Partners.Types
import Network.Google.Resource.Partners.Analytics.List
import Network.Google.Resource.Partners.ClientMessages.Log
import Network.Google.Resource.Partners.Companies.Get
import Network.Google.Resource.Partners.Companies.Leads.Create
import Network.Google.Resource.Partners.Companies.List
import Network.Google.Resource.Partners.GetPartnersstatus
import Network.Google.Resource.Partners.Leads.List
import Network.Google.Resource.Partners.Offers.History.List
import Network.Google.Resource.Partners.Offers.List
import Network.Google.Resource.Partners.UpdateCompanies
import Network.Google.Resource.Partners.UpdateLeads
import Network.Google.Resource.Partners.UserEvents.Log
import Network.Google.Resource.Partners.UserStates.List
import Network.Google.Resource.Partners.Users.CreateCompanyRelation
import Network.Google.Resource.Partners.Users.DeleteCompanyRelation
import Network.Google.Resource.Partners.Users.Get
import Network.Google.Resource.Partners.Users.UpdateProFile

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Partners API service.
type PartnersAPI =
     LeadsListResource :<|> UsersUpdateProFileResource
       :<|> UsersDeleteCompanyRelationResource
       :<|> UsersGetResource
       :<|> UsersCreateCompanyRelationResource
       :<|> UserStatesListResource
       :<|> AnalyticsListResource
       :<|> UserEventsLogResource
       :<|> CompaniesLeadsCreateResource
       :<|> CompaniesListResource
       :<|> CompaniesGetResource
       :<|> ClientMessagesLogResource
       :<|> UpdateCompaniesResource
       :<|> GetPartnersstatusResource
       :<|> UpdateLeadsResource
       :<|> OffersHistoryListResource
       :<|> OffersListResource
