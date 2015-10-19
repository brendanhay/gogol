{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Partners
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets advertisers search certified companies and create contact leads
-- with them, and also audits the usage of clients.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference>
module Network.Google.Partners
    (
    -- * Service Configuration
      partnersService

    -- * API Declaration
    , PartnersAPI

    -- * Resources

    -- ** partners.clientMessages.log
    , module Network.Google.Resource.Partners.ClientMessages.Log

    -- ** partners.companies.get
    , module Network.Google.Resource.Partners.Companies.Get

    -- ** partners.companies.leads.create
    , module Network.Google.Resource.Partners.Companies.Leads.Create

    -- ** partners.companies.list
    , module Network.Google.Resource.Partners.Companies.List

    -- ** partners.userEvents.log
    , module Network.Google.Resource.Partners.UserEvents.Log

    -- ** partners.userStates.list
    , module Network.Google.Resource.Partners.UserStates.List

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

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- ** CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

    -- ** DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceURL
    , diServerTraceInfo
    , diServerInfo

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
    , ppfDisplayName
    , ppfId

    -- ** CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- ** Location
    , Location
    , location
    , lLatLng
    , lAddress

    -- ** TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

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

    -- ** RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

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

    -- ** LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo
    , lmrciAddtional

    -- ** Lead
    , Lead
    , lead
    , lGivenName
    , lEmail
    , lFamilyName
    , lPhoneNumber
    , lMinMonthlyBudget
    , lId
    , lComments
    , lWebsiteURL
    , lType
    , lGpsMotivations

    -- ** LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- ** Company
    , Company
    , company
    , cPublicProFile
    , cOriginalMinMonthlyBudget
    , cIndustries
    , cConvertedMinMonthlyBudget
    , cName
    , cLocalizedInfos
    , cCertificationStatuses
    , cRanks
    , cId
    , cWebsiteURL
    , cLocations
    , cServices

    -- ** LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

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

    -- ** Rank
    , Rank
    , rank
    , rValue
    , rType

    -- ** CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , cRequestMetadata
    , cRecaptchaChallenge
    , cLead
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Partners.ClientMessages.Log
import           Network.Google.Resource.Partners.Companies.Get
import           Network.Google.Resource.Partners.Companies.Leads.Create
import           Network.Google.Resource.Partners.Companies.List
import           Network.Google.Resource.Partners.UserEvents.Log
import           Network.Google.Resource.Partners.UserStates.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Partners API service.
type PartnersAPI =
     UserStatesListResource :<|> UserEventsLogResource
       :<|> CompaniesLeadsCreateResource
       :<|> CompaniesListResource
       :<|> CompaniesGetResource
       :<|> ClientMessagesLogResource
