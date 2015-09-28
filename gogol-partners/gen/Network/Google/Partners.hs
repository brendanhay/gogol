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
-- -- | Lets advertisers search certified companies and create contact leads
-- with them, and also audits the usage of clients.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference>
module Network.Google.Partners
    (
    -- * REST Resources

    -- ** Google Partners API
      Partners
    , partners
    , partnersURL

    -- ** partners.clientMessages.log
    , module Network.Google.API.Partners.ClientMessages.Log

    -- ** partners.companies.leads.create
    , module Network.Google.API.Partners.Companies.Leads.Create

    -- ** partners.userEvents.log
    , module Network.Google.API.Partners.UserEvents.Log

    -- ** partners.userStates.list
    , module Network.Google.API.Partners.UserStates.List

    -- * Types

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
    , lWebsiteUrl
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
    , cWebsiteUrl
    , cLocations
    , cServices

    -- ** PublicProfile
    , PublicProfile
    , publicProfile
    , ppUrl
    , ppDisplayImageUrl
    , ppDisplayName
    , ppId

    -- ** GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- ** LogUserEventRequest
    , LogUserEventRequest
    , logUserEventRequest
    , luerEventCategory
    , luerRequestMetadata
    , luerUrl
    , luerEventScope
    , luerLead
    , luerEventDatas
    , luerEventAction

    -- ** UserOverrides
    , UserOverrides
    , userOverrides
    , uoIpAddress
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

    -- ** CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , clrRequestMetadata
    , clrRecaptchaChallenge
    , clrLead

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

    -- ** DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceUrl
    , diServerTraceInfo
    , diServerInfo

    -- ** LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo

    -- ** LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

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

    -- ** RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- ** TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- ** ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , cRecaptchaStatus
    , cResponseMetadata
    , cLead

    -- ** Rank
    , Rank
    , rank
    , rValue
    , rType
    ) where

import           Network.Google.API.Partners.ClientMessages.Log
import           Network.Google.API.Partners.Companies.Leads.Create
import           Network.Google.API.Partners.UserEvents.Log
import           Network.Google.API.Partners.UserStates.List
import           Network.Google.Partners.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Partners =
     UserEventsLogAPI :<|> ClientMessagesLogAPI :<|>
       UserStatesListAPI
       :<|> CompaniesLeadsCreateAPI

partners :: Proxy Partners
partners = Proxy
