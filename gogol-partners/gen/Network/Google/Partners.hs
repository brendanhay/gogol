{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- | Lets advertisers search certified companies and create contact leads
-- with them, and also audits the usage of clients.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference>
module Network.Google.Partners
    (
    -- * API
      PartnersAPI
    , partnersAPI
    , partnersURL

    -- * Service Methods

    -- * REST Resources

    -- ** PartnersClientMessagesLog
    , module Network.Google.Resource.Partners.ClientMessages.Log

    -- ** PartnersCompaniesGet
    , module Network.Google.Resource.Partners.Companies.Get

    -- ** PartnersCompaniesLeadsCreate
    , module Network.Google.Resource.Partners.Companies.Leads.Create

    -- ** PartnersCompaniesList
    , module Network.Google.Resource.Partners.Companies.List

    -- ** PartnersUserEventsLog
    , module Network.Google.Resource.Partners.UserEvents.Log

    -- ** PartnersUserStatesList
    , module Network.Google.Resource.Partners.UserStates.List

    -- * Types

    -- ** EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- ** ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

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

    -- ** PublicProfile
    , PublicProfile
    , publicProfile
    , ppURL
    , ppDisplayImageURL
    , ppDisplayName
    , ppId

    -- ** Location
    , Location
    , location
    , lLatLng
    , lAddress

    -- ** CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

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

    -- ** RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- ** ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- ** CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , clrRecaptchaStatus
    , clrResponseMetadata
    , clrLead

    -- ** LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

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

    -- ** UserOverrides
    , UserOverrides
    , userOverrides
    , uoIPAddress
    , uoUserId

    -- ** LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo

    -- ** LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

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

    -- ** Company
    , Company
    , company
    , cPublicProfile
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

type PartnersAPI =
     UserStatesListResource :<|> UserEventsLogResource
       :<|> ClientMessagesLogResource
       :<|> CompaniesLeadsCreateResource
       :<|> CompaniesListResource
       :<|> CompaniesGetResource

partnersAPI :: Proxy PartnersAPI
partnersAPI = Proxy
