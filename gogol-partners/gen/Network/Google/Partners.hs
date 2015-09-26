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
    -- * Resources
      Partners
    , UserStatesAPI
    , UserStatesList
    , UserEventsAPI
    , UserEventsLog
    , ClientMessagesAPI
    , ClientMessagesLog
    , CompaniesAPI
    , LeadsAPI
    , LeadsCreate

    -- * Types

    -- ** CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- ** CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

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

    -- ** CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , clrRequestMetadata
    , clrRecaptchaChallenge
    , clrLead

    -- ** CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , cRecaptchaStatus
    , cResponseMetadata
    , cLead

    -- ** DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceUrl
    , diServerTraceInfo
    , diServerInfo

    -- ** EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- ** GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

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

    -- ** ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- ** ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

    -- ** LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

    -- ** Location
    , Location
    , location
    , lLatLng
    , lAddress

    -- ** LogMessageRequest
    , LogMessageRequest
    , logMessageRequest
    , lmrRequestMetadata
    , lmrClientInfo
    , lmrDetails
    , lmrLevel

    -- ** LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo

    -- ** LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

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

    -- ** LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** PublicProfile
    , PublicProfile
    , publicProfile
    , ppUrl
    , ppDisplayImageUrl
    , ppDisplayName
    , ppId

    -- ** Rank
    , Rank
    , rank
    , rValue
    , rType

    -- ** RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- ** ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmDebugInfo

    -- ** TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- ** UserOverrides
    , UserOverrides
    , userOverrides
    , uoIpAddress
    , uoUserId
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Partners =
     UserStatesAPI :<|> UserEventsAPI :<|>
       ClientMessagesAPI
       :<|> CompaniesAPI

type UserStatesAPI = UserStatesList

-- | Lists states for current user.
type UserStatesList =
     "v2" :> "userStates" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :>
       QueryParam "requestMetadata.partnersSessionId" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "requestMetadata.locale" Text
       :> QueryParam "requestMetadata.experimentIds" Text
       :>
       QueryParam "requestMetadata.userOverrides.ipAddress"
         Text
       :>
       QueryParam
         "requestMetadata.trafficSource.trafficSubId"
         Text
       :> QueryParam "oauth_token" Text
       :>
       QueryParam "requestMetadata.userOverrides.userId"
         Text
       :>
       QueryParam
         "requestMetadata.trafficSource.trafficSourceId"
         Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type UserEventsAPI = UserEventsLog

-- | Logs a user event.
type UserEventsLog =
     "v2" :> "userEvents:log" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type ClientMessagesAPI = ClientMessagesLog

-- | Logs a generic message from the client, such as \`Failed to render
-- component\`, \`Profile page is running slow\`, \`More than 500 users
-- have accessed this result.\`, etc.
type ClientMessagesLog =
     "v2" :> "clientMessages:log" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type CompaniesAPI = LeadsAPI

type LeadsAPI = LeadsCreate

-- | Creates an advertiser lead for the given company ID.
type LeadsCreate =
     "v2" :> "companies" :> Capture "companyId" Text :>
       "leads"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
