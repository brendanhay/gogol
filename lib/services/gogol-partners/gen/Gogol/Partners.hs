{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Partners
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches certified companies and creates contact leads with them, and also audits the usage of clients.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference>
module Gogol.Partners
  ( -- * Configuration
    partnersService,

    -- * Resources

    -- ** partners.analytics.list
    PartnersAnalyticsListResource,
    PartnersAnalyticsList (..),
    newPartnersAnalyticsList,

    -- ** partners.clientMessages.log
    PartnersClientMessagesLogResource,
    PartnersClientMessagesLog (..),
    newPartnersClientMessagesLog,

    -- ** partners.companies.get
    PartnersCompaniesGetResource,
    PartnersCompaniesGet (..),
    newPartnersCompaniesGet,

    -- ** partners.companies.leads.create
    PartnersCompaniesLeadsCreateResource,
    PartnersCompaniesLeadsCreate (..),
    newPartnersCompaniesLeadsCreate,

    -- ** partners.companies.list
    PartnersCompaniesListResource,
    PartnersCompaniesList (..),
    newPartnersCompaniesList,

    -- ** partners.getPartnersstatus
    PartnersGetPartnersstatusResource,
    PartnersGetPartnersstatus (..),
    newPartnersGetPartnersstatus,

    -- ** partners.leads.list
    PartnersLeadsListResource,
    PartnersLeadsList (..),
    newPartnersLeadsList,

    -- ** partners.offers.history.list
    PartnersOffersHistoryListResource,
    PartnersOffersHistoryList (..),
    newPartnersOffersHistoryList,

    -- ** partners.offers.list
    PartnersOffersListResource,
    PartnersOffersList (..),
    newPartnersOffersList,

    -- ** partners.updateCompanies
    PartnersUpdateCompaniesResource,
    PartnersUpdateCompanies (..),
    newPartnersUpdateCompanies,

    -- ** partners.updateLeads
    PartnersUpdateLeadsResource,
    PartnersUpdateLeads (..),
    newPartnersUpdateLeads,

    -- ** partners.userEvents.log
    PartnersUserEventsLogResource,
    PartnersUserEventsLog (..),
    newPartnersUserEventsLog,

    -- ** partners.userStates.list
    PartnersUserStatesListResource,
    PartnersUserStatesList (..),
    newPartnersUserStatesList,

    -- ** partners.users.createCompanyRelation
    PartnersUsersCreateCompanyRelationResource,
    PartnersUsersCreateCompanyRelation (..),
    newPartnersUsersCreateCompanyRelation,

    -- ** partners.users.deleteCompanyRelation
    PartnersUsersDeleteCompanyRelationResource,
    PartnersUsersDeleteCompanyRelation (..),
    newPartnersUsersDeleteCompanyRelation,

    -- ** partners.users.get
    PartnersUsersGetResource,
    PartnersUsersGet (..),
    newPartnersUsersGet,

    -- ** partners.users.updateProfile
    PartnersUsersUpdateProfileResource,
    PartnersUsersUpdateProfile (..),
    newPartnersUsersUpdateProfile,

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

import Gogol.Partners.Analytics.List
import Gogol.Partners.ClientMessages.Log
import Gogol.Partners.Companies.Get
import Gogol.Partners.Companies.Leads.Create
import Gogol.Partners.Companies.List
import Gogol.Partners.GetPartnersstatus
import Gogol.Partners.Leads.List
import Gogol.Partners.Offers.History.List
import Gogol.Partners.Offers.List
import Gogol.Partners.Types
import Gogol.Partners.UpdateCompanies
import Gogol.Partners.UpdateLeads
import Gogol.Partners.UserEvents.Log
import Gogol.Partners.UserStates.List
import Gogol.Partners.Users.CreateCompanyRelation
import Gogol.Partners.Users.DeleteCompanyRelation
import Gogol.Partners.Users.Get
import Gogol.Partners.Users.UpdateProfile
