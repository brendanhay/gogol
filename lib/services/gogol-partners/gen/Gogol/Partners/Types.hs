{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Partners.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Partners.Types
  ( -- * Configuration
    partnersService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdWordsManagerAccountInfo
    AdWordsManagerAccountInfo (..),
    newAdWordsManagerAccountInfo,

    -- ** Analytics
    Analytics (..),
    newAnalytics,

    -- ** AnalyticsDataPoint
    AnalyticsDataPoint (..),
    newAnalyticsDataPoint,

    -- ** AnalyticsSummary
    AnalyticsSummary (..),
    newAnalyticsSummary,

    -- ** AvailableOffer
    AvailableOffer (..),
    newAvailableOffer,

    -- ** AvailableOffer_OfferLevel
    AvailableOffer_OfferLevel (..),

    -- ** AvailableOffer_OfferType
    AvailableOffer_OfferType (..),

    -- ** Certification
    Certification (..),
    newCertification,

    -- ** Certification_CertificationType
    Certification_CertificationType (..),

    -- ** CertificationExamStatus
    CertificationExamStatus (..),
    newCertificationExamStatus,

    -- ** CertificationExamStatus_Type
    CertificationExamStatus_Type (..),

    -- ** CertificationStatus
    CertificationStatus (..),
    newCertificationStatus,

    -- ** CertificationStatus_Type
    CertificationStatus_Type (..),

    -- ** Company
    Company (..),
    newCompany,

    -- ** Company_BadgeTier
    Company_BadgeTier (..),

    -- ** Company_ProfileStatus
    Company_ProfileStatus (..),

    -- ** CompanyRelation
    CompanyRelation (..),
    newCompanyRelation,

    -- ** CompanyRelation_BadgeTier
    CompanyRelation_BadgeTier (..),

    -- ** CompanyRelation_State
    CompanyRelation_State (..),

    -- ** CountryOfferInfo
    CountryOfferInfo (..),
    newCountryOfferInfo,

    -- ** CountryOfferInfo_OfferType
    CountryOfferInfo_OfferType (..),

    -- ** CreateLeadRequest
    CreateLeadRequest (..),
    newCreateLeadRequest,

    -- ** CreateLeadResponse
    CreateLeadResponse (..),
    newCreateLeadResponse,

    -- ** CreateLeadResponse_RecaptchaStatus
    CreateLeadResponse_RecaptchaStatus (..),

    -- ** Date
    Date (..),
    newDate,

    -- ** DebugInfo
    DebugInfo (..),
    newDebugInfo,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EventData
    EventData (..),
    newEventData,

    -- ** EventData_Key
    EventData_Key (..),

    -- ** ExamStatus
    ExamStatus (..),
    newExamStatus,

    -- ** ExamStatus_ExamType
    ExamStatus_ExamType (..),

    -- ** GetCompanyResponse
    GetCompanyResponse (..),
    newGetCompanyResponse,

    -- ** GetPartnersStatusResponse
    GetPartnersStatusResponse (..),
    newGetPartnersStatusResponse,

    -- ** HistoricalOffer
    HistoricalOffer (..),
    newHistoricalOffer,

    -- ** HistoricalOffer_OfferType
    HistoricalOffer_OfferType (..),

    -- ** HistoricalOffer_Status
    HistoricalOffer_Status (..),

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** Lead
    Lead (..),
    newLead,

    -- ** Lead_State
    Lead_State (..),

    -- ** Lead_Type
    Lead_Type (..),

    -- ** ListAnalyticsResponse
    ListAnalyticsResponse (..),
    newListAnalyticsResponse,

    -- ** ListCompaniesResponse
    ListCompaniesResponse (..),
    newListCompaniesResponse,

    -- ** ListLeadsResponse
    ListLeadsResponse (..),
    newListLeadsResponse,

    -- ** ListOffersHistoryResponse
    ListOffersHistoryResponse (..),
    newListOffersHistoryResponse,

    -- ** ListOffersResponse
    ListOffersResponse (..),
    newListOffersResponse,

    -- ** ListOffersResponse_NoOfferReason
    ListOffersResponse_NoOfferReason (..),

    -- ** ListUserStatesResponse
    ListUserStatesResponse (..),
    newListUserStatesResponse,

    -- ** LocalizedCompanyInfo
    LocalizedCompanyInfo (..),
    newLocalizedCompanyInfo,

    -- ** Location
    Location (..),
    newLocation,

    -- ** LogMessageRequest
    LogMessageRequest (..),
    newLogMessageRequest,

    -- ** LogMessageRequest_ClientInfo
    LogMessageRequest_ClientInfo (..),
    newLogMessageRequest_ClientInfo,

    -- ** LogMessageRequest_Level
    LogMessageRequest_Level (..),

    -- ** LogMessageResponse
    LogMessageResponse (..),
    newLogMessageResponse,

    -- ** LogUserEventRequest
    LogUserEventRequest (..),
    newLogUserEventRequest,

    -- ** LogUserEventRequest_EventAction
    LogUserEventRequest_EventAction (..),

    -- ** LogUserEventRequest_EventCategory
    LogUserEventRequest_EventCategory (..),

    -- ** LogUserEventRequest_EventScope
    LogUserEventRequest_EventScope (..),

    -- ** LogUserEventResponse
    LogUserEventResponse (..),
    newLogUserEventResponse,

    -- ** Money
    Money (..),
    newMoney,

    -- ** OfferCustomer
    OfferCustomer (..),
    newOfferCustomer,

    -- ** OfferCustomer_OfferType
    OfferCustomer_OfferType (..),

    -- ** OptIns
    OptIns (..),
    newOptIns,

    -- ** PublicProfile
    PublicProfile (..),
    newPublicProfile,

    -- ** Rank
    Rank (..),
    newRank,

    -- ** Rank_Type
    Rank_Type (..),

    -- ** RecaptchaChallenge
    RecaptchaChallenge (..),
    newRecaptchaChallenge,

    -- ** RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- ** ResponseMetadata
    ResponseMetadata (..),
    newResponseMetadata,

    -- ** SpecializationStatus
    SpecializationStatus (..),
    newSpecializationStatus,

    -- ** SpecializationStatus_BadgeSpecialization
    SpecializationStatus_BadgeSpecialization (..),

    -- ** SpecializationStatus_BadgeSpecializationState
    SpecializationStatus_BadgeSpecializationState (..),

    -- ** TrafficSource
    TrafficSource (..),
    newTrafficSource,

    -- ** User
    User (..),
    newUser,

    -- ** UserOverrides
    UserOverrides (..),
    newUserOverrides,

    -- ** UserProfile
    UserProfile (..),
    newUserProfile,
  )
where

import Gogol.Partners.Internal.Product
import Gogol.Partners.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Google Partners API. This contains the host and root path used as a starting point for constructing service requests.
partnersService :: Core.ServiceConfig
partnersService =
  Core.defaultService
    (Core.ServiceId "partners:v2")
    "partners.googleapis.com"
