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

    -- * CertificationExamStatus
      CertificationExamStatus
    , certificationExamStatus
    , cesNumberUsersPass
    , cesType

    -- * CertificationStatus
    , CertificationStatus
    , certificationStatus
    , csIsCertified
    , csType
    , csExamStatuses

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
    , cWebsiteUrl
    , cLocations
    , cServices

    -- * CreateLeadRequest
    , CreateLeadRequest
    , createLeadRequest
    , clrRequestMetadata
    , clrRecaptchaChallenge
    , clrLead

    -- * CreateLeadResponse
    , CreateLeadResponse
    , createLeadResponse
    , cRecaptchaStatus
    , cResponseMetadata
    , cLead

    -- * DebugInfo
    , DebugInfo
    , debugInfo
    , diServiceUrl
    , diServerTraceInfo
    , diServerInfo

    -- * EventData
    , EventData
    , eventData
    , edValues
    , edKey

    -- * GetCompanyResponse
    , GetCompanyResponse
    , getCompanyResponse
    , gcrResponseMetadata
    , gcrCompany

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

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
    , lWebsiteUrl
    , lType
    , lGpsMotivations

    -- * ListCompaniesResponse
    , ListCompaniesResponse
    , listCompaniesResponse
    , lcrNextPageToken
    , lcrResponseMetadata
    , lcrCompanies

    -- * ListUserStatesResponse
    , ListUserStatesResponse
    , listUserStatesResponse
    , lusrUserStates
    , lusrResponseMetadata

    -- * LocalizedCompanyInfo
    , LocalizedCompanyInfo
    , localizedCompanyInfo
    , lciLanguageCode
    , lciOverview
    , lciCountryCodes
    , lciDisplayName

    -- * Location
    , Location
    , location
    , lLatLng
    , lAddress

    -- * LogMessageRequest
    , LogMessageRequest
    , logMessageRequest
    , lmrRequestMetadata
    , lmrClientInfo
    , lmrDetails
    , lmrLevel

    -- * LogMessageRequestClientInfo
    , LogMessageRequestClientInfo
    , logMessageRequestClientInfo

    -- * LogMessageResponse
    , LogMessageResponse
    , logMessageResponse
    , lmrResponseMetadata

    -- * LogUserEventRequest
    , LogUserEventRequest
    , logUserEventRequest
    , luerEventCategory
    , luerRequestMetadata
    , luerUrl
    , luerEventScope
    , luerLead
    , luerEventDatas
    , luerEventAction

    -- * LogUserEventResponse
    , LogUserEventResponse
    , logUserEventResponse
    , luerResponseMetadata

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * PublicProfile
    , PublicProfile
    , publicProfile
    , ppUrl
    , ppDisplayImageUrl
    , ppDisplayName
    , ppId

    -- * Rank
    , Rank
    , rank
    , rValue
    , rType

    -- * RecaptchaChallenge
    , RecaptchaChallenge
    , recaptchaChallenge
    , rcResponse
    , rcId

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmExperimentIds
    , rmTrafficSource
    , rmLocale
    , rmUserOverrides
    , rmPartnersSessionId

    -- * ResponseMetadata
    , ResponseMetadata
    , responseMetadata
    , rmDebugInfo

    -- * TrafficSource
    , TrafficSource
    , trafficSource
    , tsTrafficSubId
    , tsTrafficSourceId

    -- * UserOverrides
    , UserOverrides
    , userOverrides
    , uoIpAddress
    , uoUserId
    ) where

import           Network.Google.Partners.Types.Product
import           Network.Google.Partners.Types.Sum
import           Network.Google.Prelude
