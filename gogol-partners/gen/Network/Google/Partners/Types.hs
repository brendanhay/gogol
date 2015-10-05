{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- * CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

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

    -- * PublicProFile
    , PublicProFile
    , publicProFile
    , ppfURL
    , ppfDisplayImageURL
    , ppfDisplayName
    , ppfId

    -- * CertificationExamStatus
    , CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- * Location
    , Location
    , location
    , lLatLng
    , lAddress

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

    -- * ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- * RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

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

    -- * LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo

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

    -- * LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- * Company
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
