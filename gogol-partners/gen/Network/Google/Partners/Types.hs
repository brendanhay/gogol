{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Partners.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Partners.Types
    (
    -- * Service URL
      partnersURL

    -- * EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- * ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

    -- * DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceURL
    , diServerTraceInfo
    , diServerInfo

    -- * GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- * PublicProfile
    , PublicProfile
    , publicProfile
    , ppURL
    , ppDisplayImageURL
    , ppDisplayName
    , ppId

    -- * Location
    , Location
    , location
    , lLatLng
    , lAddress

    -- * CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- * TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- * ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- * CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , clrRecaptchaStatus
    , clrResponseMetadata
    , clrLead

    -- * LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

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

    -- * UserOverrides
    , UserOverrides
    , userOverrides
    , uoIPAddress
    , uoUserId

    -- * LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- * Lead
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

    -- * ClientInfo
    , ClientInfo
    , clientInfo

    -- * Company
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

    -- * LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

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

    -- * Rank
    , Rank
    , rank
    , rValue
    , rType

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

-- | URL referring to version 'v2' of the Google Partners API.
partnersURL :: BaseUrl
partnersURL
  = BaseUrl Https "https://partners.googleapis.com/"
      443
