{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Partners.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Partners.Internal.Product
  ( -- * AdWordsManagerAccountInfo
    AdWordsManagerAccountInfo (..),
    newAdWordsManagerAccountInfo,

    -- * Analytics
    Analytics (..),
    newAnalytics,

    -- * AnalyticsDataPoint
    AnalyticsDataPoint (..),
    newAnalyticsDataPoint,

    -- * AnalyticsSummary
    AnalyticsSummary (..),
    newAnalyticsSummary,

    -- * AvailableOffer
    AvailableOffer (..),
    newAvailableOffer,

    -- * Certification
    Certification (..),
    newCertification,

    -- * CertificationExamStatus
    CertificationExamStatus (..),
    newCertificationExamStatus,

    -- * CertificationStatus
    CertificationStatus (..),
    newCertificationStatus,

    -- * Company
    Company (..),
    newCompany,

    -- * CompanyRelation
    CompanyRelation (..),
    newCompanyRelation,

    -- * CountryOfferInfo
    CountryOfferInfo (..),
    newCountryOfferInfo,

    -- * CreateLeadRequest
    CreateLeadRequest (..),
    newCreateLeadRequest,

    -- * CreateLeadResponse
    CreateLeadResponse (..),
    newCreateLeadResponse,

    -- * Date
    Date (..),
    newDate,

    -- * DebugInfo
    DebugInfo (..),
    newDebugInfo,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EventData
    EventData (..),
    newEventData,

    -- * ExamStatus
    ExamStatus (..),
    newExamStatus,

    -- * GetCompanyResponse
    GetCompanyResponse (..),
    newGetCompanyResponse,

    -- * GetPartnersStatusResponse
    GetPartnersStatusResponse (..),
    newGetPartnersStatusResponse,

    -- * HistoricalOffer
    HistoricalOffer (..),
    newHistoricalOffer,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * Lead
    Lead (..),
    newLead,

    -- * ListAnalyticsResponse
    ListAnalyticsResponse (..),
    newListAnalyticsResponse,

    -- * ListCompaniesResponse
    ListCompaniesResponse (..),
    newListCompaniesResponse,

    -- * ListLeadsResponse
    ListLeadsResponse (..),
    newListLeadsResponse,

    -- * ListOffersHistoryResponse
    ListOffersHistoryResponse (..),
    newListOffersHistoryResponse,

    -- * ListOffersResponse
    ListOffersResponse (..),
    newListOffersResponse,

    -- * ListUserStatesResponse
    ListUserStatesResponse (..),
    newListUserStatesResponse,

    -- * LocalizedCompanyInfo
    LocalizedCompanyInfo (..),
    newLocalizedCompanyInfo,

    -- * Location
    Location (..),
    newLocation,

    -- * LogMessageRequest
    LogMessageRequest (..),
    newLogMessageRequest,

    -- * LogMessageRequest_ClientInfo
    LogMessageRequest_ClientInfo (..),
    newLogMessageRequest_ClientInfo,

    -- * LogMessageResponse
    LogMessageResponse (..),
    newLogMessageResponse,

    -- * LogUserEventRequest
    LogUserEventRequest (..),
    newLogUserEventRequest,

    -- * LogUserEventResponse
    LogUserEventResponse (..),
    newLogUserEventResponse,

    -- * Money
    Money (..),
    newMoney,

    -- * OfferCustomer
    OfferCustomer (..),
    newOfferCustomer,

    -- * OptIns
    OptIns (..),
    newOptIns,

    -- * PublicProfile
    PublicProfile (..),
    newPublicProfile,

    -- * Rank
    Rank (..),
    newRank,

    -- * RecaptchaChallenge
    RecaptchaChallenge (..),
    newRecaptchaChallenge,

    -- * RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- * ResponseMetadata
    ResponseMetadata (..),
    newResponseMetadata,

    -- * SpecializationStatus
    SpecializationStatus (..),
    newSpecializationStatus,

    -- * TrafficSource
    TrafficSource (..),
    newTrafficSource,

    -- * User
    User (..),
    newUser,

    -- * UserOverrides
    UserOverrides (..),
    newUserOverrides,

    -- * UserProfile
    UserProfile (..),
    newUserProfile,
  )
where

import Gogol.Partners.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Information about a particular AdWords Manager Account. Read more at https:\/\/support.google.com\/adwords\/answer\/6139186
--
-- /See:/ 'newAdWordsManagerAccountInfo' smart constructor.
data AdWordsManagerAccountInfo = AdWordsManagerAccountInfo
  { -- | Name of the customer this account represents.
    customerName :: (Core.Maybe Core.Text),
    -- | The AdWords Manager Account id.
    id :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdWordsManagerAccountInfo' with the minimum fields required to make a request.
newAdWordsManagerAccountInfo ::
  AdWordsManagerAccountInfo
newAdWordsManagerAccountInfo =
  AdWordsManagerAccountInfo {customerName = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON AdWordsManagerAccountInfo where
  parseJSON =
    Core.withObject
      "AdWordsManagerAccountInfo"
      ( \o ->
          AdWordsManagerAccountInfo
            Core.<$> (o Core..:? "customerName")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON AdWordsManagerAccountInfo where
  toJSON AdWordsManagerAccountInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerName" Core..=) Core.<$> customerName,
            ("id" Core..=) Core.. Core.AsText Core.<$> id
          ]
      )

-- | Analytics data for a @Company@ within a single day.
--
-- /See:/ 'newAnalytics' smart constructor.
data Analytics = Analytics
  { -- | Instances of users contacting the @Company@ on the specified date.
    contacts :: (Core.Maybe AnalyticsDataPoint),
    -- | Date on which these events occurred.
    eventDate :: (Core.Maybe Date),
    -- | Instances of users viewing the @Company@ profile on the specified date.
    profileViews :: (Core.Maybe AnalyticsDataPoint),
    -- | Instances of users seeing the @Company@ in Google Partners Search results on the specified date.
    searchViews :: (Core.Maybe AnalyticsDataPoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Analytics' with the minimum fields required to make a request.
newAnalytics ::
  Analytics
newAnalytics =
  Analytics
    { contacts = Core.Nothing,
      eventDate = Core.Nothing,
      profileViews = Core.Nothing,
      searchViews = Core.Nothing
    }

instance Core.FromJSON Analytics where
  parseJSON =
    Core.withObject
      "Analytics"
      ( \o ->
          Analytics
            Core.<$> (o Core..:? "contacts")
            Core.<*> (o Core..:? "eventDate")
            Core.<*> (o Core..:? "profileViews")
            Core.<*> (o Core..:? "searchViews")
      )

instance Core.ToJSON Analytics where
  toJSON Analytics {..} =
    Core.object
      ( Core.catMaybes
          [ ("contacts" Core..=) Core.<$> contacts,
            ("eventDate" Core..=) Core.<$> eventDate,
            ("profileViews" Core..=) Core.<$> profileViews,
            ("searchViews" Core..=) Core.<$> searchViews
          ]
      )

-- | Details of the analytics events for a @Company@ within a single day.
--
-- /See:/ 'newAnalyticsDataPoint' smart constructor.
data AnalyticsDataPoint = AnalyticsDataPoint
  { -- | Number of times the type of event occurred. Meaning depends on context (e.g. profile views, contacts, etc.).
    eventCount :: (Core.Maybe Core.Int32),
    -- | Location information of where these events occurred.
    eventLocations :: (Core.Maybe [LatLng])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPoint' with the minimum fields required to make a request.
newAnalyticsDataPoint ::
  AnalyticsDataPoint
newAnalyticsDataPoint =
  AnalyticsDataPoint {eventCount = Core.Nothing, eventLocations = Core.Nothing}

instance Core.FromJSON AnalyticsDataPoint where
  parseJSON =
    Core.withObject
      "AnalyticsDataPoint"
      ( \o ->
          AnalyticsDataPoint
            Core.<$> (o Core..:? "eventCount")
            Core.<*> (o Core..:? "eventLocations" Core..!= Core.mempty)
      )

instance Core.ToJSON AnalyticsDataPoint where
  toJSON AnalyticsDataPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventCount" Core..=) Core.<$> eventCount,
            ("eventLocations" Core..=) Core.<$> eventLocations
          ]
      )

-- | Analytics aggregated data for a @Company@ for a given date range.
--
-- /See:/ 'newAnalyticsSummary' smart constructor.
data AnalyticsSummary = AnalyticsSummary
  { -- | Aggregated number of times users contacted the @Company@ for given date range.
    contactsCount :: (Core.Maybe Core.Int32),
    -- | Aggregated number of profile views for the @Company@ for given date range.
    profileViewsCount :: (Core.Maybe Core.Int32),
    -- | Aggregated number of times users saw the @Company@ in Google Partners Search results for given date range.
    searchViewsCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsSummary' with the minimum fields required to make a request.
newAnalyticsSummary ::
  AnalyticsSummary
newAnalyticsSummary =
  AnalyticsSummary
    { contactsCount = Core.Nothing,
      profileViewsCount = Core.Nothing,
      searchViewsCount = Core.Nothing
    }

instance Core.FromJSON AnalyticsSummary where
  parseJSON =
    Core.withObject
      "AnalyticsSummary"
      ( \o ->
          AnalyticsSummary
            Core.<$> (o Core..:? "contactsCount")
            Core.<*> (o Core..:? "profileViewsCount")
            Core.<*> (o Core..:? "searchViewsCount")
      )

instance Core.ToJSON AnalyticsSummary where
  toJSON AnalyticsSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactsCount" Core..=) Core.<$> contactsCount,
            ("profileViewsCount" Core..=)
              Core.<$> profileViewsCount,
            ("searchViewsCount" Core..=)
              Core.<$> searchViewsCount
          ]
      )

-- | Available Offers to be distributed.
--
-- /See:/ 'newAvailableOffer' smart constructor.
data AvailableOffer = AvailableOffer
  { -- | The number of codes for this offer that are available for distribution.
    available :: (Core.Maybe Core.Int32),
    -- | Offer info by country.
    countryOfferInfos :: (Core.Maybe [CountryOfferInfo]),
    -- | Description of the offer.
    description :: (Core.Maybe Core.Text),
    -- | ID of this offer.
    id :: (Core.Maybe Core.Int64),
    -- | The maximum age of an account [in days] to be eligible.
    maxAccountAge :: (Core.Maybe Core.Int32),
    -- | Name of the offer.
    name :: (Core.Maybe Core.Text),
    -- | Level of this offer.
    offerLevel :: (Core.Maybe AvailableOffer_OfferLevel),
    -- | Type of offer.
    offerType :: (Core.Maybe AvailableOffer_OfferType),
    -- | Customers who qualify for this offer.
    qualifiedCustomer :: (Core.Maybe [OfferCustomer]),
    -- | Whether or not the list of qualified customers is definitely complete.
    qualifiedCustomersComplete :: (Core.Maybe Core.Bool),
    -- | Should special text be shown on the offers page.
    showSpecialOfferCopy :: (Core.Maybe Core.Bool),
    -- | Terms of the offer.
    terms :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvailableOffer' with the minimum fields required to make a request.
newAvailableOffer ::
  AvailableOffer
newAvailableOffer =
  AvailableOffer
    { available = Core.Nothing,
      countryOfferInfos = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      maxAccountAge = Core.Nothing,
      name = Core.Nothing,
      offerLevel = Core.Nothing,
      offerType = Core.Nothing,
      qualifiedCustomer = Core.Nothing,
      qualifiedCustomersComplete = Core.Nothing,
      showSpecialOfferCopy = Core.Nothing,
      terms = Core.Nothing
    }

instance Core.FromJSON AvailableOffer where
  parseJSON =
    Core.withObject
      "AvailableOffer"
      ( \o ->
          AvailableOffer
            Core.<$> (o Core..:? "available")
            Core.<*> (o Core..:? "countryOfferInfos" Core..!= Core.mempty)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "maxAccountAge")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "offerLevel")
            Core.<*> (o Core..:? "offerType")
            Core.<*> (o Core..:? "qualifiedCustomer" Core..!= Core.mempty)
            Core.<*> (o Core..:? "qualifiedCustomersComplete")
            Core.<*> (o Core..:? "showSpecialOfferCopy")
            Core.<*> (o Core..:? "terms")
      )

instance Core.ToJSON AvailableOffer where
  toJSON AvailableOffer {..} =
    Core.object
      ( Core.catMaybes
          [ ("available" Core..=) Core.<$> available,
            ("countryOfferInfos" Core..=)
              Core.<$> countryOfferInfos,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("maxAccountAge" Core..=) Core.<$> maxAccountAge,
            ("name" Core..=) Core.<$> name,
            ("offerLevel" Core..=) Core.<$> offerLevel,
            ("offerType" Core..=) Core.<$> offerType,
            ("qualifiedCustomer" Core..=)
              Core.<$> qualifiedCustomer,
            ("qualifiedCustomersComplete" Core..=)
              Core.<$> qualifiedCustomersComplete,
            ("showSpecialOfferCopy" Core..=)
              Core.<$> showSpecialOfferCopy,
            ("terms" Core..=) Core.<$> terms
          ]
      )

-- | A user\'s information on a specific certification.
--
-- /See:/ 'newCertification' smart constructor.
data Certification = Certification
  { -- | Whether this certification has been achieved.
    achieved :: (Core.Maybe Core.Bool),
    -- | The type of certification, the area of expertise.
    certificationType :: (Core.Maybe Certification_CertificationType),
    -- | Date this certification is due to expire.
    expiration :: (Core.Maybe Core.DateTime),
    -- | The date the user last achieved certification.
    lastAchieved :: (Core.Maybe Core.DateTime),
    -- | Whether this certification is in the state of warning.
    warning :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Certification' with the minimum fields required to make a request.
newCertification ::
  Certification
newCertification =
  Certification
    { achieved = Core.Nothing,
      certificationType = Core.Nothing,
      expiration = Core.Nothing,
      lastAchieved = Core.Nothing,
      warning = Core.Nothing
    }

instance Core.FromJSON Certification where
  parseJSON =
    Core.withObject
      "Certification"
      ( \o ->
          Certification
            Core.<$> (o Core..:? "achieved")
            Core.<*> (o Core..:? "certificationType")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "lastAchieved")
            Core.<*> (o Core..:? "warning")
      )

instance Core.ToJSON Certification where
  toJSON Certification {..} =
    Core.object
      ( Core.catMaybes
          [ ("achieved" Core..=) Core.<$> achieved,
            ("certificationType" Core..=)
              Core.<$> certificationType,
            ("expiration" Core..=) Core.<$> expiration,
            ("lastAchieved" Core..=) Core.<$> lastAchieved,
            ("warning" Core..=) Core.<$> warning
          ]
      )

-- | Status for a Google Partners certification exam.
--
-- /See:/ 'newCertificationExamStatus' smart constructor.
data CertificationExamStatus = CertificationExamStatus
  { -- | The number of people who have passed the certification exam.
    numberUsersPass :: (Core.Maybe Core.Int32),
    -- | The type of certification exam.
    type' :: (Core.Maybe CertificationExamStatus_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificationExamStatus' with the minimum fields required to make a request.
newCertificationExamStatus ::
  CertificationExamStatus
newCertificationExamStatus =
  CertificationExamStatus {numberUsersPass = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON CertificationExamStatus where
  parseJSON =
    Core.withObject
      "CertificationExamStatus"
      ( \o ->
          CertificationExamStatus
            Core.<$> (o Core..:? "numberUsersPass")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CertificationExamStatus where
  toJSON CertificationExamStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("numberUsersPass" Core..=)
              Core.<$> numberUsersPass,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Google Partners certification status.
--
-- /See:/ 'newCertificationStatus' smart constructor.
data CertificationStatus = CertificationStatus
  { -- | List of certification exam statuses.
    examStatuses :: (Core.Maybe [CertificationExamStatus]),
    -- | Whether certification is passing.
    isCertified :: (Core.Maybe Core.Bool),
    -- | The type of the certification.
    type' :: (Core.Maybe CertificationStatus_Type),
    -- | Number of people who are certified,
    userCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificationStatus' with the minimum fields required to make a request.
newCertificationStatus ::
  CertificationStatus
newCertificationStatus =
  CertificationStatus
    { examStatuses = Core.Nothing,
      isCertified = Core.Nothing,
      type' = Core.Nothing,
      userCount = Core.Nothing
    }

instance Core.FromJSON CertificationStatus where
  parseJSON =
    Core.withObject
      "CertificationStatus"
      ( \o ->
          CertificationStatus
            Core.<$> (o Core..:? "examStatuses" Core..!= Core.mempty)
            Core.<*> (o Core..:? "isCertified")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "userCount")
      )

instance Core.ToJSON CertificationStatus where
  toJSON CertificationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("examStatuses" Core..=) Core.<$> examStatuses,
            ("isCertified" Core..=) Core.<$> isCertified,
            ("type" Core..=) Core.<$> type',
            ("userCount" Core..=) Core.<$> userCount
          ]
      )

-- | A company resource in the Google Partners API. Once certified, it qualifies for being searched by advertisers.
--
-- /See:/ 'newCompany' smart constructor.
data Company = Company
  { -- | URL of the company\'s additional websites used to verify the dynamic badges. These are stored as full URLs as entered by the user, but only the TLD will be used for the actual verification.
    additionalWebsites :: (Core.Maybe [Core.Text]),
    -- | Email domains that allow users with a matching email address to get auto-approved for associating with this company.
    autoApprovalEmailDomains :: (Core.Maybe [Core.Text]),
    -- | Whether the company\'s badge authority is in AWN
    badgeAuthorityInAwn :: (Core.Maybe Core.Bool),
    -- | Partner badge tier
    badgeTier :: (Core.Maybe Company_BadgeTier),
    -- | The list of Google Partners certification statuses for the company.
    certificationStatuses :: (Core.Maybe [CertificationStatus]),
    -- | Company type labels listed on the company\'s profile.
    companyTypes :: (Core.Maybe [Core.Text]),
    -- | The minimum monthly budget that the company accepts for partner business, converted to the requested currency code.
    convertedMinMonthlyBudget :: (Core.Maybe Money),
    -- | The ID of the company.
    id :: (Core.Maybe Core.Text),
    -- | Industries the company can help with.
    industries :: (Core.Maybe [Core.Text]),
    -- | The list of localized info for the company.
    localizedInfos :: (Core.Maybe [LocalizedCompanyInfo]),
    -- | The list of all company locations. If set, must include the primary_location in the list.
    locations :: (Core.Maybe [Location]),
    -- | The name of the company.
    name :: (Core.Maybe Core.Text),
    -- | The unconverted minimum monthly budget that the company accepts for partner business.
    originalMinMonthlyBudget :: (Core.Maybe Money),
    -- | The Primary AdWords Manager Account id.
    primaryAdwordsManagerAccountId :: (Core.Maybe Core.Int64),
    -- | The primary language code of the company, as defined by \<a href=\"https:\/\/tools.ietf.org\/html\/bcp47\">BCP 47\<\/a> (IETF BCP 47, \"Tags for Identifying Languages\").
    primaryLanguageCode :: (Core.Maybe Core.Text),
    -- | The primary location of the company.
    primaryLocation :: (Core.Maybe Location),
    -- | The public viewability status of the company\'s profile.
    profileStatus :: (Core.Maybe Company_ProfileStatus),
    -- | Basic information from the company\'s public profile.
    publicProfile :: (Core.Maybe PublicProfile),
    -- | Information related to the ranking of the company within the list of companies.
    ranks :: (Core.Maybe [Rank]),
    -- | Services the company can help with.
    services :: (Core.Maybe [Core.Text]),
    -- | The list of Google Partners specialization statuses for the company.
    specializationStatus :: (Core.Maybe [SpecializationStatus]),
    -- | URL of the company\'s website.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
newCompany ::
  Company
newCompany =
  Company
    { additionalWebsites = Core.Nothing,
      autoApprovalEmailDomains = Core.Nothing,
      badgeAuthorityInAwn = Core.Nothing,
      badgeTier = Core.Nothing,
      certificationStatuses = Core.Nothing,
      companyTypes = Core.Nothing,
      convertedMinMonthlyBudget = Core.Nothing,
      id = Core.Nothing,
      industries = Core.Nothing,
      localizedInfos = Core.Nothing,
      locations = Core.Nothing,
      name = Core.Nothing,
      originalMinMonthlyBudget = Core.Nothing,
      primaryAdwordsManagerAccountId = Core.Nothing,
      primaryLanguageCode = Core.Nothing,
      primaryLocation = Core.Nothing,
      profileStatus = Core.Nothing,
      publicProfile = Core.Nothing,
      ranks = Core.Nothing,
      services = Core.Nothing,
      specializationStatus = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON Company where
  parseJSON =
    Core.withObject
      "Company"
      ( \o ->
          Company
            Core.<$> ( o Core..:? "additionalWebsites"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "autoApprovalEmailDomains"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "badgeAuthorityInAwn")
            Core.<*> (o Core..:? "badgeTier")
            Core.<*> ( o Core..:? "certificationStatuses"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "companyTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "convertedMinMonthlyBudget")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "industries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "localizedInfos" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originalMinMonthlyBudget")
            Core.<*> (o Core..:? "primaryAdwordsManagerAccountId")
            Core.<*> (o Core..:? "primaryLanguageCode")
            Core.<*> (o Core..:? "primaryLocation")
            Core.<*> (o Core..:? "profileStatus")
            Core.<*> (o Core..:? "publicProfile")
            Core.<*> (o Core..:? "ranks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "specializationStatus"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON Company where
  toJSON Company {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalWebsites" Core..=)
              Core.<$> additionalWebsites,
            ("autoApprovalEmailDomains" Core..=)
              Core.<$> autoApprovalEmailDomains,
            ("badgeAuthorityInAwn" Core..=)
              Core.<$> badgeAuthorityInAwn,
            ("badgeTier" Core..=) Core.<$> badgeTier,
            ("certificationStatuses" Core..=)
              Core.<$> certificationStatuses,
            ("companyTypes" Core..=) Core.<$> companyTypes,
            ("convertedMinMonthlyBudget" Core..=)
              Core.<$> convertedMinMonthlyBudget,
            ("id" Core..=) Core.<$> id,
            ("industries" Core..=) Core.<$> industries,
            ("localizedInfos" Core..=) Core.<$> localizedInfos,
            ("locations" Core..=) Core.<$> locations,
            ("name" Core..=) Core.<$> name,
            ("originalMinMonthlyBudget" Core..=)
              Core.<$> originalMinMonthlyBudget,
            ("primaryAdwordsManagerAccountId" Core..=)
              Core.. Core.AsText
              Core.<$> primaryAdwordsManagerAccountId,
            ("primaryLanguageCode" Core..=)
              Core.<$> primaryLanguageCode,
            ("primaryLocation" Core..=) Core.<$> primaryLocation,
            ("profileStatus" Core..=) Core.<$> profileStatus,
            ("publicProfile" Core..=) Core.<$> publicProfile,
            ("ranks" Core..=) Core.<$> ranks,
            ("services" Core..=) Core.<$> services,
            ("specializationStatus" Core..=)
              Core.<$> specializationStatus,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | A CompanyRelation resource representing information about a user\'s affiliation and standing with a company in Partners.
--
-- /See:/ 'newCompanyRelation' smart constructor.
data CompanyRelation = CompanyRelation
  { -- | The primary address for this company.
    address :: (Core.Maybe Core.Text),
    -- | Whether the company is a Partner.
    badgeTier :: (Core.Maybe CompanyRelation_BadgeTier),
    -- | Indicates if the user is an admin for this company.
    companyAdmin :: (Core.Maybe Core.Bool),
    -- | The ID of the company. There may be no id if this is a pending company.5
    companyId :: (Core.Maybe Core.Text),
    -- | The timestamp of when affiliation was requested. \@OutputOnly
    creationTime :: (Core.Maybe Core.DateTime),
    -- | The internal company ID. Only available for a whitelisted set of api clients.
    internalCompanyId :: (Core.Maybe Core.Text),
    -- | The flag that indicates if the company is pending verification.
    isPending :: (Core.Maybe Core.Bool),
    -- | A URL to a profile photo, e.g. a G+ profile photo.
    logoUrl :: (Core.Maybe Core.Text),
    -- | The AdWords manager account # associated this company.
    managerAccount :: (Core.Maybe Core.Int64),
    -- | The name (in the company\'s primary language) for the company.
    name :: (Core.Maybe Core.Text),
    -- | The phone number for the company\'s primary address.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The primary location of the company.
    primaryAddress :: (Core.Maybe Location),
    -- | The primary country code of the company.
    primaryCountryCode :: (Core.Maybe Core.Text),
    -- | The primary language code of the company.
    primaryLanguageCode :: (Core.Maybe Core.Text),
    -- | The timestamp when the user was approved. \@OutputOnly
    resolvedTimestamp :: (Core.Maybe Core.DateTime),
    -- | The segment the company is classified as.
    segment :: (Core.Maybe [Core.Text]),
    -- | The list of Google Partners specialization statuses for the company.
    specializationStatus :: (Core.Maybe [SpecializationStatus]),
    -- | The state of relationship, in terms of approvals.
    state :: (Core.Maybe CompanyRelation_State),
    -- | The website URL for this company.
    website :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompanyRelation' with the minimum fields required to make a request.
newCompanyRelation ::
  CompanyRelation
newCompanyRelation =
  CompanyRelation
    { address = Core.Nothing,
      badgeTier = Core.Nothing,
      companyAdmin = Core.Nothing,
      companyId = Core.Nothing,
      creationTime = Core.Nothing,
      internalCompanyId = Core.Nothing,
      isPending = Core.Nothing,
      logoUrl = Core.Nothing,
      managerAccount = Core.Nothing,
      name = Core.Nothing,
      phoneNumber = Core.Nothing,
      primaryAddress = Core.Nothing,
      primaryCountryCode = Core.Nothing,
      primaryLanguageCode = Core.Nothing,
      resolvedTimestamp = Core.Nothing,
      segment = Core.Nothing,
      specializationStatus = Core.Nothing,
      state = Core.Nothing,
      website = Core.Nothing
    }

instance Core.FromJSON CompanyRelation where
  parseJSON =
    Core.withObject
      "CompanyRelation"
      ( \o ->
          CompanyRelation
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "badgeTier")
            Core.<*> (o Core..:? "companyAdmin")
            Core.<*> (o Core..:? "companyId")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "internalCompanyId")
            Core.<*> (o Core..:? "isPending")
            Core.<*> (o Core..:? "logoUrl")
            Core.<*> (o Core..:? "managerAccount")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "primaryAddress")
            Core.<*> (o Core..:? "primaryCountryCode")
            Core.<*> (o Core..:? "primaryLanguageCode")
            Core.<*> (o Core..:? "resolvedTimestamp")
            Core.<*> (o Core..:? "segment" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "specializationStatus"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "website")
      )

instance Core.ToJSON CompanyRelation where
  toJSON CompanyRelation {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("badgeTier" Core..=) Core.<$> badgeTier,
            ("companyAdmin" Core..=) Core.<$> companyAdmin,
            ("companyId" Core..=) Core.<$> companyId,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("internalCompanyId" Core..=)
              Core.<$> internalCompanyId,
            ("isPending" Core..=) Core.<$> isPending,
            ("logoUrl" Core..=) Core.<$> logoUrl,
            ("managerAccount" Core..=) Core.. Core.AsText
              Core.<$> managerAccount,
            ("name" Core..=) Core.<$> name,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("primaryAddress" Core..=) Core.<$> primaryAddress,
            ("primaryCountryCode" Core..=)
              Core.<$> primaryCountryCode,
            ("primaryLanguageCode" Core..=)
              Core.<$> primaryLanguageCode,
            ("resolvedTimestamp" Core..=)
              Core.<$> resolvedTimestamp,
            ("segment" Core..=) Core.<$> segment,
            ("specializationStatus" Core..=)
              Core.<$> specializationStatus,
            ("state" Core..=) Core.<$> state,
            ("website" Core..=) Core.<$> website
          ]
      )

-- | Offer info by country.
--
-- /See:/ 'newCountryOfferInfo' smart constructor.
data CountryOfferInfo = CountryOfferInfo
  { -- | (localized) Get Y amount for that country\'s offer.
    getYAmount :: (Core.Maybe Core.Text),
    -- | Country code for which offer codes may be requested.
    offerCountryCode :: (Core.Maybe Core.Text),
    -- | Type of offer country is eligible for.
    offerType :: (Core.Maybe CountryOfferInfo_OfferType),
    -- | (localized) Spend X amount for that country\'s offer.
    spendXAmount :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountryOfferInfo' with the minimum fields required to make a request.
newCountryOfferInfo ::
  CountryOfferInfo
newCountryOfferInfo =
  CountryOfferInfo
    { getYAmount = Core.Nothing,
      offerCountryCode = Core.Nothing,
      offerType = Core.Nothing,
      spendXAmount = Core.Nothing
    }

instance Core.FromJSON CountryOfferInfo where
  parseJSON =
    Core.withObject
      "CountryOfferInfo"
      ( \o ->
          CountryOfferInfo
            Core.<$> (o Core..:? "getYAmount")
            Core.<*> (o Core..:? "offerCountryCode")
            Core.<*> (o Core..:? "offerType")
            Core.<*> (o Core..:? "spendXAmount")
      )

instance Core.ToJSON CountryOfferInfo where
  toJSON CountryOfferInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("getYAmount" Core..=) Core.<$> getYAmount,
            ("offerCountryCode" Core..=)
              Core.<$> offerCountryCode,
            ("offerType" Core..=) Core.<$> offerType,
            ("spendXAmount" Core..=) Core.<$> spendXAmount
          ]
      )

-- | Request message for CreateLead.
--
-- /See:/ 'newCreateLeadRequest' smart constructor.
data CreateLeadRequest = CreateLeadRequest
  { -- | The lead resource. The @LeadType@ must not be @LEAD_TYPE_UNSPECIFIED@ and either @email@ or @phone_number@ must be provided.
    lead :: (Core.Maybe Lead),
    -- | \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> challenge info.
    recaptchaChallenge :: (Core.Maybe RecaptchaChallenge),
    -- | Current request metadata.
    requestMetadata :: (Core.Maybe RequestMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateLeadRequest' with the minimum fields required to make a request.
newCreateLeadRequest ::
  CreateLeadRequest
newCreateLeadRequest =
  CreateLeadRequest
    { lead = Core.Nothing,
      recaptchaChallenge = Core.Nothing,
      requestMetadata = Core.Nothing
    }

instance Core.FromJSON CreateLeadRequest where
  parseJSON =
    Core.withObject
      "CreateLeadRequest"
      ( \o ->
          CreateLeadRequest
            Core.<$> (o Core..:? "lead")
            Core.<*> (o Core..:? "recaptchaChallenge")
            Core.<*> (o Core..:? "requestMetadata")
      )

instance Core.ToJSON CreateLeadRequest where
  toJSON CreateLeadRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lead" Core..=) Core.<$> lead,
            ("recaptchaChallenge" Core..=)
              Core.<$> recaptchaChallenge,
            ("requestMetadata" Core..=)
              Core.<$> requestMetadata
          ]
      )

-- | Response message for CreateLead.
--
-- /See:/ 'newCreateLeadResponse' smart constructor.
data CreateLeadResponse = CreateLeadResponse
  { -- | Lead that was created depending on the outcome of \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> validation.
    lead :: (Core.Maybe Lead),
    -- | The outcome of \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> validation.
    recaptchaStatus :: (Core.Maybe CreateLeadResponse_RecaptchaStatus),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateLeadResponse' with the minimum fields required to make a request.
newCreateLeadResponse ::
  CreateLeadResponse
newCreateLeadResponse =
  CreateLeadResponse
    { lead = Core.Nothing,
      recaptchaStatus = Core.Nothing,
      responseMetadata = Core.Nothing
    }

instance Core.FromJSON CreateLeadResponse where
  parseJSON =
    Core.withObject
      "CreateLeadResponse"
      ( \o ->
          CreateLeadResponse
            Core.<$> (o Core..:? "lead")
            Core.<*> (o Core..:? "recaptchaStatus")
            Core.<*> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON CreateLeadResponse where
  toJSON CreateLeadResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("lead" Core..=) Core.<$> lead,
            ("recaptchaStatus" Core..=) Core.<$> recaptchaStatus,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Represents a whole or partial calendar date, e.g. a birthday. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the Proleptic Gregorian Calendar. This can represent:
--
-- -   A full date, with non-zero year, month and day values
-- -   A month and day value, with a zero year, e.g. an anniversary
-- -   A year on its own, with zero month and day values
-- -   A year and month value, with a zero day, e.g. a credit card expiration date
--
-- Related types are google.type.TimeOfDay and @google.protobuf.Timestamp@.
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a year by itself or a year and month where the day is not significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Debug information about this request.
--
-- /See:/ 'newDebugInfo' smart constructor.
data DebugInfo = DebugInfo
  { -- | Info about the server that serviced this request.
    serverInfo :: (Core.Maybe Core.Text),
    -- | Server-side debug stack trace.
    serverTraceInfo :: (Core.Maybe Core.Text),
    -- | URL of the service that handled this request.
    serviceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DebugInfo' with the minimum fields required to make a request.
newDebugInfo ::
  DebugInfo
newDebugInfo =
  DebugInfo
    { serverInfo = Core.Nothing,
      serverTraceInfo = Core.Nothing,
      serviceUrl = Core.Nothing
    }

instance Core.FromJSON DebugInfo where
  parseJSON =
    Core.withObject
      "DebugInfo"
      ( \o ->
          DebugInfo
            Core.<$> (o Core..:? "serverInfo")
            Core.<*> (o Core..:? "serverTraceInfo")
            Core.<*> (o Core..:? "serviceUrl")
      )

instance Core.ToJSON DebugInfo where
  toJSON DebugInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("serverInfo" Core..=) Core.<$> serverInfo,
            ("serverTraceInfo" Core..=) Core.<$> serverTraceInfo,
            ("serviceUrl" Core..=) Core.<$> serviceUrl
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance:
--
-- > service Foo {
-- >   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
-- > }
--
-- The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Key value data pair for an event.
--
-- /See:/ 'newEventData' smart constructor.
data EventData = EventData
  { -- | Data type.
    key :: (Core.Maybe EventData_Key),
    -- | Data values.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventData' with the minimum fields required to make a request.
newEventData ::
  EventData
newEventData = EventData {key = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON EventData where
  parseJSON =
    Core.withObject
      "EventData"
      ( \o ->
          EventData
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON EventData where
  toJSON EventData {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | A user\'s information on a specific exam.
--
-- /See:/ 'newExamStatus' smart constructor.
data ExamStatus = ExamStatus
  { -- | The type of the exam.
    examType :: (Core.Maybe ExamStatus_ExamType),
    -- | Date this exam is due to expire.
    expiration :: (Core.Maybe Core.DateTime),
    -- | The date the user last passed this exam.
    lastPassed :: (Core.Maybe Core.DateTime),
    -- | Whether this exam has been passed and not expired.
    passed :: (Core.Maybe Core.Bool),
    -- | The date the user last taken this exam.
    taken :: (Core.Maybe Core.DateTime),
    -- | Whether this exam is in the state of warning.
    warning :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExamStatus' with the minimum fields required to make a request.
newExamStatus ::
  ExamStatus
newExamStatus =
  ExamStatus
    { examType = Core.Nothing,
      expiration = Core.Nothing,
      lastPassed = Core.Nothing,
      passed = Core.Nothing,
      taken = Core.Nothing,
      warning = Core.Nothing
    }

instance Core.FromJSON ExamStatus where
  parseJSON =
    Core.withObject
      "ExamStatus"
      ( \o ->
          ExamStatus
            Core.<$> (o Core..:? "examType")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "lastPassed")
            Core.<*> (o Core..:? "passed")
            Core.<*> (o Core..:? "taken")
            Core.<*> (o Core..:? "warning")
      )

instance Core.ToJSON ExamStatus where
  toJSON ExamStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("examType" Core..=) Core.<$> examType,
            ("expiration" Core..=) Core.<$> expiration,
            ("lastPassed" Core..=) Core.<$> lastPassed,
            ("passed" Core..=) Core.<$> passed,
            ("taken" Core..=) Core.<$> taken,
            ("warning" Core..=) Core.<$> warning
          ]
      )

-- | Response message for GetCompany.
--
-- /See:/ 'newGetCompanyResponse' smart constructor.
data GetCompanyResponse = GetCompanyResponse
  { -- | The company.
    company :: (Core.Maybe Company),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCompanyResponse' with the minimum fields required to make a request.
newGetCompanyResponse ::
  GetCompanyResponse
newGetCompanyResponse =
  GetCompanyResponse {company = Core.Nothing, responseMetadata = Core.Nothing}

instance Core.FromJSON GetCompanyResponse where
  parseJSON =
    Core.withObject
      "GetCompanyResponse"
      ( \o ->
          GetCompanyResponse
            Core.<$> (o Core..:? "company")
            Core.<*> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON GetCompanyResponse where
  toJSON GetCompanyResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("company" Core..=) Core.<$> company,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Response message for GetPartnersStatus.
--
-- /See:/ 'newGetPartnersStatusResponse' smart constructor.
newtype GetPartnersStatusResponse = GetPartnersStatusResponse
  { -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPartnersStatusResponse' with the minimum fields required to make a request.
newGetPartnersStatusResponse ::
  GetPartnersStatusResponse
newGetPartnersStatusResponse =
  GetPartnersStatusResponse {responseMetadata = Core.Nothing}

instance Core.FromJSON GetPartnersStatusResponse where
  parseJSON =
    Core.withObject
      "GetPartnersStatusResponse"
      ( \o ->
          GetPartnersStatusResponse
            Core.<$> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON GetPartnersStatusResponse where
  toJSON GetPartnersStatusResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Historical information about a Google Partners Offer.
--
-- /See:/ 'newHistoricalOffer' smart constructor.
data HistoricalOffer = HistoricalOffer
  { -- | Client\'s AdWords page URL.
    adwordsUrl :: (Core.Maybe Core.Text),
    -- | Email address for client.
    clientEmail :: (Core.Maybe Core.Text),
    -- | ID of client.
    clientId :: (Core.Maybe Core.Int64),
    -- | Name of the client.
    clientName :: (Core.Maybe Core.Text),
    -- | Time offer was first created.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Time this offer expires.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | Time last action was taken.
    lastModifiedTime :: (Core.Maybe Core.DateTime),
    -- | Offer code.
    offerCode :: (Core.Maybe Core.Text),
    -- | Country Code for the offer country.
    offerCountryCode :: (Core.Maybe Core.Text),
    -- | Type of offer.
    offerType :: (Core.Maybe HistoricalOffer_OfferType),
    -- | Name (First + Last) of the partners user to whom the incentive is allocated.
    senderName :: (Core.Maybe Core.Text),
    -- | Status of the offer.
    status :: (Core.Maybe HistoricalOffer_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistoricalOffer' with the minimum fields required to make a request.
newHistoricalOffer ::
  HistoricalOffer
newHistoricalOffer =
  HistoricalOffer
    { adwordsUrl = Core.Nothing,
      clientEmail = Core.Nothing,
      clientId = Core.Nothing,
      clientName = Core.Nothing,
      creationTime = Core.Nothing,
      expirationTime = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      offerCode = Core.Nothing,
      offerCountryCode = Core.Nothing,
      offerType = Core.Nothing,
      senderName = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON HistoricalOffer where
  parseJSON =
    Core.withObject
      "HistoricalOffer"
      ( \o ->
          HistoricalOffer
            Core.<$> (o Core..:? "adwordsUrl")
            Core.<*> (o Core..:? "clientEmail")
            Core.<*> (o Core..:? "clientId")
            Core.<*> (o Core..:? "clientName")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "lastModifiedTime")
            Core.<*> (o Core..:? "offerCode")
            Core.<*> (o Core..:? "offerCountryCode")
            Core.<*> (o Core..:? "offerType")
            Core.<*> (o Core..:? "senderName")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON HistoricalOffer where
  toJSON HistoricalOffer {..} =
    Core.object
      ( Core.catMaybes
          [ ("adwordsUrl" Core..=) Core.<$> adwordsUrl,
            ("clientEmail" Core..=) Core.<$> clientEmail,
            ("clientId" Core..=) Core.. Core.AsText
              Core.<$> clientId,
            ("clientName" Core..=) Core.<$> clientName,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("lastModifiedTime" Core..=)
              Core.<$> lastModifiedTime,
            ("offerCode" Core..=) Core.<$> offerCode,
            ("offerCountryCode" Core..=)
              Core.<$> offerCountryCode,
            ("offerType" Core..=) Core.<$> offerType,
            ("senderName" Core..=) Core.<$> senderName,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | An object representing a latitude\/longitude pair. This is expressed as a pair of doubles representing degrees latitude and degrees longitude. Unless specified otherwise, this must conform to the \<a href=\"http:\/\/www.unoosa.org\/pdf\/icg\/2012\/template\/WGS_84.pdf\">WGS84 standard\<\/a>. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | A lead resource that represents an advertiser contact for a @Company@. These are usually generated via Google Partner Search (the advertiser portal).
--
-- /See:/ 'newLead' smart constructor.
data Lead = Lead
  { -- | The AdWords Customer ID of the lead.
    adwordsCustomerId :: (Core.Maybe Core.Int64),
    -- | Comments lead source gave.
    comments :: (Core.Maybe Core.Text),
    -- | Timestamp of when this lead was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Email address of lead source.
    email :: (Core.Maybe Core.Text),
    -- | Last name of lead source.
    familyName :: (Core.Maybe Core.Text),
    -- | First name of lead source.
    givenName :: (Core.Maybe Core.Text),
    -- | List of reasons for using Google Partner Search and creating a lead.
    gpsMotivations :: (Core.Maybe [Core.Text]),
    -- | ID of the lead.
    id :: (Core.Maybe Core.Text),
    -- | Language code of the lead\'s language preference, as defined by \<a href=\"https:\/\/tools.ietf.org\/html\/bcp47\">BCP 47\<\/a> (IETF BCP 47, \"Tags for Identifying Languages\").
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether or not the lead signed up for marketing emails
    marketingOptIn :: (Core.Maybe Core.Bool),
    -- | The minimum monthly budget lead source is willing to spend.
    minMonthlyBudget :: (Core.Maybe Money),
    -- | Phone number of lead source.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The lead\'s state in relation to the company.
    state :: (Core.Maybe Lead_State),
    -- | Type of lead.
    type' :: (Core.Maybe Lead_Type),
    -- | Website URL of lead source.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Lead' with the minimum fields required to make a request.
newLead ::
  Lead
newLead =
  Lead
    { adwordsCustomerId = Core.Nothing,
      comments = Core.Nothing,
      createTime = Core.Nothing,
      email = Core.Nothing,
      familyName = Core.Nothing,
      givenName = Core.Nothing,
      gpsMotivations = Core.Nothing,
      id = Core.Nothing,
      languageCode = Core.Nothing,
      marketingOptIn = Core.Nothing,
      minMonthlyBudget = Core.Nothing,
      phoneNumber = Core.Nothing,
      state = Core.Nothing,
      type' = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON Lead where
  parseJSON =
    Core.withObject
      "Lead"
      ( \o ->
          Lead
            Core.<$> (o Core..:? "adwordsCustomerId")
            Core.<*> (o Core..:? "comments")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
            Core.<*> (o Core..:? "gpsMotivations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "marketingOptIn")
            Core.<*> (o Core..:? "minMonthlyBudget")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON Lead where
  toJSON Lead {..} =
    Core.object
      ( Core.catMaybes
          [ ("adwordsCustomerId" Core..=) Core.. Core.AsText
              Core.<$> adwordsCustomerId,
            ("comments" Core..=) Core.<$> comments,
            ("createTime" Core..=) Core.<$> createTime,
            ("email" Core..=) Core.<$> email,
            ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName,
            ("gpsMotivations" Core..=) Core.<$> gpsMotivations,
            ("id" Core..=) Core.<$> id,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("marketingOptIn" Core..=) Core.<$> marketingOptIn,
            ("minMonthlyBudget" Core..=)
              Core.<$> minMonthlyBudget,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("state" Core..=) Core.<$> state,
            ("type" Core..=) Core.<$> type',
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | Response message for ListAnalytics.
--
-- /See:/ 'newListAnalyticsResponse' smart constructor.
data ListAnalyticsResponse = ListAnalyticsResponse
  { -- | The list of analytics. Sorted in ascending order of Analytics.event_date.
    analytics :: (Core.Maybe [Analytics]),
    -- | Aggregated information across the response\'s analytics.
    analyticsSummary :: (Core.Maybe AnalyticsSummary),
    -- | A token to retrieve next page of results. Pass this value in the @ListAnalyticsRequest.page_token@ field in the subsequent call to ListAnalytics to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAnalyticsResponse' with the minimum fields required to make a request.
newListAnalyticsResponse ::
  ListAnalyticsResponse
newListAnalyticsResponse =
  ListAnalyticsResponse
    { analytics = Core.Nothing,
      analyticsSummary = Core.Nothing,
      nextPageToken = Core.Nothing,
      responseMetadata = Core.Nothing
    }

instance Core.FromJSON ListAnalyticsResponse where
  parseJSON =
    Core.withObject
      "ListAnalyticsResponse"
      ( \o ->
          ListAnalyticsResponse
            Core.<$> (o Core..:? "analytics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "analyticsSummary")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON ListAnalyticsResponse where
  toJSON ListAnalyticsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("analytics" Core..=) Core.<$> analytics,
            ("analyticsSummary" Core..=)
              Core.<$> analyticsSummary,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Response message for ListCompanies.
--
-- /See:/ 'newListCompaniesResponse' smart constructor.
data ListCompaniesResponse = ListCompaniesResponse
  { -- | The list of companies.
    companies :: (Core.Maybe [Company]),
    -- | A token to retrieve next page of results. Pass this value in the @ListCompaniesRequest.page_token@ field in the subsequent call to ListCompanies to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCompaniesResponse' with the minimum fields required to make a request.
newListCompaniesResponse ::
  ListCompaniesResponse
newListCompaniesResponse =
  ListCompaniesResponse
    { companies = Core.Nothing,
      nextPageToken = Core.Nothing,
      responseMetadata = Core.Nothing
    }

instance Core.FromJSON ListCompaniesResponse where
  parseJSON =
    Core.withObject
      "ListCompaniesResponse"
      ( \o ->
          ListCompaniesResponse
            Core.<$> (o Core..:? "companies" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON ListCompaniesResponse where
  toJSON ListCompaniesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("companies" Core..=) Core.<$> companies,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Response message for ListLeads.
--
-- /See:/ 'newListLeadsResponse' smart constructor.
data ListLeadsResponse = ListLeadsResponse
  { -- | The list of leads.
    leads :: (Core.Maybe [Lead]),
    -- | A token to retrieve next page of results. Pass this value in the @ListLeadsRequest.page_token@ field in the subsequent call to ListLeads to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata),
    -- | The total count of leads for the given company.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLeadsResponse' with the minimum fields required to make a request.
newListLeadsResponse ::
  ListLeadsResponse
newListLeadsResponse =
  ListLeadsResponse
    { leads = Core.Nothing,
      nextPageToken = Core.Nothing,
      responseMetadata = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListLeadsResponse where
  parseJSON =
    Core.withObject
      "ListLeadsResponse"
      ( \o ->
          ListLeadsResponse
            Core.<$> (o Core..:? "leads" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "responseMetadata")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListLeadsResponse where
  toJSON ListLeadsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("leads" Core..=) Core.<$> leads,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response for ListOfferHistory.
--
-- /See:/ 'newListOffersHistoryResponse' smart constructor.
data ListOffersHistoryResponse = ListOffersHistoryResponse
  { -- | True if the user has the option to show entire company history.
    canShowEntireCompany :: (Core.Maybe Core.Bool),
    -- | Supply this token in a ListOffersHistoryRequest to retrieve the next page.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Historical offers meeting request.
    offers :: (Core.Maybe [HistoricalOffer]),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata),
    -- | True if this response is showing entire company history.
    showingEntireCompany :: (Core.Maybe Core.Bool),
    -- | Number of results across all pages.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOffersHistoryResponse' with the minimum fields required to make a request.
newListOffersHistoryResponse ::
  ListOffersHistoryResponse
newListOffersHistoryResponse =
  ListOffersHistoryResponse
    { canShowEntireCompany = Core.Nothing,
      nextPageToken = Core.Nothing,
      offers = Core.Nothing,
      responseMetadata = Core.Nothing,
      showingEntireCompany = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON ListOffersHistoryResponse where
  parseJSON =
    Core.withObject
      "ListOffersHistoryResponse"
      ( \o ->
          ListOffersHistoryResponse
            Core.<$> (o Core..:? "canShowEntireCompany")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "offers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "responseMetadata")
            Core.<*> (o Core..:? "showingEntireCompany")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON ListOffersHistoryResponse where
  toJSON ListOffersHistoryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("canShowEntireCompany" Core..=)
              Core.<$> canShowEntireCompany,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("offers" Core..=) Core.<$> offers,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata,
            ("showingEntireCompany" Core..=)
              Core.<$> showingEntireCompany,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | Response for ListOffer.
--
-- /See:/ 'newListOffersResponse' smart constructor.
data ListOffersResponse = ListOffersResponse
  { -- | Available Offers to be distributed.
    availableOffers :: (Core.Maybe [AvailableOffer]),
    -- | Reason why no Offers are available.
    noOfferReason :: (Core.Maybe ListOffersResponse_NoOfferReason),
    -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOffersResponse' with the minimum fields required to make a request.
newListOffersResponse ::
  ListOffersResponse
newListOffersResponse =
  ListOffersResponse
    { availableOffers = Core.Nothing,
      noOfferReason = Core.Nothing,
      responseMetadata = Core.Nothing
    }

instance Core.FromJSON ListOffersResponse where
  parseJSON =
    Core.withObject
      "ListOffersResponse"
      ( \o ->
          ListOffersResponse
            Core.<$> (o Core..:? "availableOffers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "noOfferReason")
            Core.<*> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON ListOffersResponse where
  toJSON ListOffersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableOffers" Core..=)
              Core.<$> availableOffers,
            ("noOfferReason" Core..=) Core.<$> noOfferReason,
            ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Response message for ListUserStates.
--
-- /See:/ 'newListUserStatesResponse' smart constructor.
data ListUserStatesResponse = ListUserStatesResponse
  { -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata),
    -- | User\'s states.
    userStates :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserStatesResponse' with the minimum fields required to make a request.
newListUserStatesResponse ::
  ListUserStatesResponse
newListUserStatesResponse =
  ListUserStatesResponse
    { responseMetadata = Core.Nothing,
      userStates = Core.Nothing
    }

instance Core.FromJSON ListUserStatesResponse where
  parseJSON =
    Core.withObject
      "ListUserStatesResponse"
      ( \o ->
          ListUserStatesResponse
            Core.<$> (o Core..:? "responseMetadata")
            Core.<*> (o Core..:? "userStates" Core..!= Core.mempty)
      )

instance Core.ToJSON ListUserStatesResponse where
  toJSON ListUserStatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseMetadata" Core..=)
              Core.<$> responseMetadata,
            ("userStates" Core..=) Core.<$> userStates
          ]
      )

-- | The localized company information.
--
-- /See:/ 'newLocalizedCompanyInfo' smart constructor.
data LocalizedCompanyInfo = LocalizedCompanyInfo
  { -- | List of country codes for the localized company info.
    countryCodes :: (Core.Maybe [Core.Text]),
    -- | Localized display name.
    displayName :: (Core.Maybe Core.Text),
    -- | Language code of the localized company info, as defined by \<a href=\"https:\/\/tools.ietf.org\/html\/bcp47\">BCP 47\<\/a> (IETF BCP 47, \"Tags for Identifying Languages\").
    languageCode :: (Core.Maybe Core.Text),
    -- | Localized brief description that the company uses to advertise themselves.
    overview :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedCompanyInfo' with the minimum fields required to make a request.
newLocalizedCompanyInfo ::
  LocalizedCompanyInfo
newLocalizedCompanyInfo =
  LocalizedCompanyInfo
    { countryCodes = Core.Nothing,
      displayName = Core.Nothing,
      languageCode = Core.Nothing,
      overview = Core.Nothing
    }

instance Core.FromJSON LocalizedCompanyInfo where
  parseJSON =
    Core.withObject
      "LocalizedCompanyInfo"
      ( \o ->
          LocalizedCompanyInfo
            Core.<$> (o Core..:? "countryCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "overview")
      )

instance Core.ToJSON LocalizedCompanyInfo where
  toJSON LocalizedCompanyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryCodes" Core..=) Core.<$> countryCodes,
            ("displayName" Core..=) Core.<$> displayName,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("overview" Core..=) Core.<$> overview
          ]
      )

-- | A location with address and geographic coordinates. May optionally contain a detailed (multi-field) version of the address.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The single string version of the address.
    address :: (Core.Maybe Core.Text),
    -- | The following address lines represent the most specific part of any address.
    addressLine :: (Core.Maybe [Core.Text]),
    -- | Top-level administrative subdivision of this country.
    administrativeArea :: (Core.Maybe Core.Text),
    -- | Dependent locality or sublocality. Used for UK dependent localities, or neighborhoods or boroughs in other locations.
    dependentLocality :: (Core.Maybe Core.Text),
    -- | Language code of the address. Should be in BCP 47 format.
    languageCode :: (Core.Maybe Core.Text),
    -- | The latitude and longitude of the location, in degrees.
    latLng :: (Core.Maybe LatLng),
    -- | Generally refers to the city\/town portion of an address.
    locality :: (Core.Maybe Core.Text),
    -- | Values are frequently alphanumeric.
    postalCode :: (Core.Maybe Core.Text),
    -- | CLDR (Common Locale Data Repository) region code .
    regionCode :: (Core.Maybe Core.Text),
    -- | Use of this code is very country-specific, but will refer to a secondary classification code for sorting mail.
    sortingCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { address = Core.Nothing,
      addressLine = Core.Nothing,
      administrativeArea = Core.Nothing,
      dependentLocality = Core.Nothing,
      languageCode = Core.Nothing,
      latLng = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      regionCode = Core.Nothing,
      sortingCode = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "addressLine" Core..!= Core.mempty)
            Core.<*> (o Core..:? "administrativeArea")
            Core.<*> (o Core..:? "dependentLocality")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "latLng")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "sortingCode")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("addressLine" Core..=) Core.<$> addressLine,
            ("administrativeArea" Core..=)
              Core.<$> administrativeArea,
            ("dependentLocality" Core..=)
              Core.<$> dependentLocality,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("latLng" Core..=) Core.<$> latLng,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("sortingCode" Core..=) Core.<$> sortingCode
          ]
      )

-- | Request message for LogClientMessage.
--
-- /See:/ 'newLogMessageRequest' smart constructor.
data LogMessageRequest = LogMessageRequest
  { -- | Map of client info, such as URL, browser navigator, browser platform, etc.
    clientInfo :: (Core.Maybe LogMessageRequest_ClientInfo),
    -- | Details about the client message.
    details :: (Core.Maybe Core.Text),
    -- | Message level of client message.
    level :: (Core.Maybe LogMessageRequest_Level),
    -- | Current request metadata.
    requestMetadata :: (Core.Maybe RequestMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMessageRequest' with the minimum fields required to make a request.
newLogMessageRequest ::
  LogMessageRequest
newLogMessageRequest =
  LogMessageRequest
    { clientInfo = Core.Nothing,
      details = Core.Nothing,
      level = Core.Nothing,
      requestMetadata = Core.Nothing
    }

instance Core.FromJSON LogMessageRequest where
  parseJSON =
    Core.withObject
      "LogMessageRequest"
      ( \o ->
          LogMessageRequest
            Core.<$> (o Core..:? "clientInfo")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "level")
            Core.<*> (o Core..:? "requestMetadata")
      )

instance Core.ToJSON LogMessageRequest where
  toJSON LogMessageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientInfo" Core..=) Core.<$> clientInfo,
            ("details" Core..=) Core.<$> details,
            ("level" Core..=) Core.<$> level,
            ("requestMetadata" Core..=)
              Core.<$> requestMetadata
          ]
      )

-- | Map of client info, such as URL, browser navigator, browser platform, etc.
--
-- /See:/ 'newLogMessageRequest_ClientInfo' smart constructor.
newtype LogMessageRequest_ClientInfo = LogMessageRequest_ClientInfo
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMessageRequest_ClientInfo' with the minimum fields required to make a request.
newLogMessageRequest_ClientInfo ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LogMessageRequest_ClientInfo
newLogMessageRequest_ClientInfo additional =
  LogMessageRequest_ClientInfo {additional = additional}

instance Core.FromJSON LogMessageRequest_ClientInfo where
  parseJSON =
    Core.withObject
      "LogMessageRequest_ClientInfo"
      ( \o ->
          LogMessageRequest_ClientInfo
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LogMessageRequest_ClientInfo where
  toJSON LogMessageRequest_ClientInfo {..} =
    Core.toJSON additional

-- | Response message for LogClientMessage.
--
-- /See:/ 'newLogMessageResponse' smart constructor.
newtype LogMessageResponse = LogMessageResponse
  { -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMessageResponse' with the minimum fields required to make a request.
newLogMessageResponse ::
  LogMessageResponse
newLogMessageResponse = LogMessageResponse {responseMetadata = Core.Nothing}

instance Core.FromJSON LogMessageResponse where
  parseJSON =
    Core.withObject
      "LogMessageResponse"
      ( \o ->
          LogMessageResponse
            Core.<$> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON LogMessageResponse where
  toJSON LogMessageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Request message for LogUserEvent.
--
-- /See:/ 'newLogUserEventRequest' smart constructor.
data LogUserEventRequest = LogUserEventRequest
  { -- | The action that occurred.
    eventAction :: (Core.Maybe LogUserEventRequest_EventAction),
    -- | The category the action belongs to.
    eventCategory :: (Core.Maybe LogUserEventRequest_EventCategory),
    -- | List of event data for the event.
    eventDatas :: (Core.Maybe [EventData]),
    -- | The scope of the event.
    eventScope :: (Core.Maybe LogUserEventRequest_EventScope),
    -- | Advertiser lead information.
    lead :: (Core.Maybe Lead),
    -- | Current request metadata.
    requestMetadata :: (Core.Maybe RequestMetadata),
    -- | The URL where the event occurred.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogUserEventRequest' with the minimum fields required to make a request.
newLogUserEventRequest ::
  LogUserEventRequest
newLogUserEventRequest =
  LogUserEventRequest
    { eventAction = Core.Nothing,
      eventCategory = Core.Nothing,
      eventDatas = Core.Nothing,
      eventScope = Core.Nothing,
      lead = Core.Nothing,
      requestMetadata = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON LogUserEventRequest where
  parseJSON =
    Core.withObject
      "LogUserEventRequest"
      ( \o ->
          LogUserEventRequest
            Core.<$> (o Core..:? "eventAction")
            Core.<*> (o Core..:? "eventCategory")
            Core.<*> (o Core..:? "eventDatas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "eventScope")
            Core.<*> (o Core..:? "lead")
            Core.<*> (o Core..:? "requestMetadata")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON LogUserEventRequest where
  toJSON LogUserEventRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventAction" Core..=) Core.<$> eventAction,
            ("eventCategory" Core..=) Core.<$> eventCategory,
            ("eventDatas" Core..=) Core.<$> eventDatas,
            ("eventScope" Core..=) Core.<$> eventScope,
            ("lead" Core..=) Core.<$> lead,
            ("requestMetadata" Core..=) Core.<$> requestMetadata,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Response message for LogUserEvent.
--
-- /See:/ 'newLogUserEventResponse' smart constructor.
newtype LogUserEventResponse = LogUserEventResponse
  { -- | Current response metadata.
    responseMetadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogUserEventResponse' with the minimum fields required to make a request.
newLogUserEventResponse ::
  LogUserEventResponse
newLogUserEventResponse = LogUserEventResponse {responseMetadata = Core.Nothing}

instance Core.FromJSON LogUserEventResponse where
  parseJSON =
    Core.withObject
      "LogUserEventResponse"
      ( \o ->
          LogUserEventResponse
            Core.<$> (o Core..:? "responseMetadata")
      )

instance Core.ToJSON LogUserEventResponse where
  toJSON LogUserEventResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseMetadata" Core..=)
              Core.<$> responseMetadata
          ]
      )

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
  { -- | The 3-letter currency code defined in ISO 4217.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    nanos :: (Core.Maybe Core.Int32),
    -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    units :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney ::
  Money
newMoney =
  Money
    { currencyCode = Core.Nothing,
      nanos = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON Money where
  parseJSON =
    Core.withObject
      "Money"
      ( \o ->
          Money
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "units")
      )

instance Core.ToJSON Money where
  toJSON Money {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("nanos" Core..=) Core.<$> nanos,
            ("units" Core..=) Core.. Core.AsText Core.<$> units
          ]
      )

-- | Customers qualified for an offer.
--
-- /See:/ 'newOfferCustomer' smart constructor.
data OfferCustomer = OfferCustomer
  { -- | URL to the customer\'s AdWords page.
    adwordsUrl :: (Core.Maybe Core.Text),
    -- | Country code of the customer.
    countryCode :: (Core.Maybe Core.Text),
    -- | Time the customer was created.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Days the customer is still eligible.
    eligibilityDaysLeft :: (Core.Maybe Core.Int32),
    -- | External CID for the customer.
    externalCid :: (Core.Maybe Core.Int64),
    -- | Formatted Get Y amount with currency code.
    getYAmount :: (Core.Maybe Core.Text),
    -- | Name of the customer.
    name :: (Core.Maybe Core.Text),
    -- | Type of the offer
    offerType :: (Core.Maybe OfferCustomer_OfferType),
    -- | Formatted Spend X amount with currency code.
    spendXAmount :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OfferCustomer' with the minimum fields required to make a request.
newOfferCustomer ::
  OfferCustomer
newOfferCustomer =
  OfferCustomer
    { adwordsUrl = Core.Nothing,
      countryCode = Core.Nothing,
      creationTime = Core.Nothing,
      eligibilityDaysLeft = Core.Nothing,
      externalCid = Core.Nothing,
      getYAmount = Core.Nothing,
      name = Core.Nothing,
      offerType = Core.Nothing,
      spendXAmount = Core.Nothing
    }

instance Core.FromJSON OfferCustomer where
  parseJSON =
    Core.withObject
      "OfferCustomer"
      ( \o ->
          OfferCustomer
            Core.<$> (o Core..:? "adwordsUrl")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "eligibilityDaysLeft")
            Core.<*> (o Core..:? "externalCid")
            Core.<*> (o Core..:? "getYAmount")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "offerType")
            Core.<*> (o Core..:? "spendXAmount")
      )

instance Core.ToJSON OfferCustomer where
  toJSON OfferCustomer {..} =
    Core.object
      ( Core.catMaybes
          [ ("adwordsUrl" Core..=) Core.<$> adwordsUrl,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("eligibilityDaysLeft" Core..=)
              Core.<$> eligibilityDaysLeft,
            ("externalCid" Core..=) Core.. Core.AsText
              Core.<$> externalCid,
            ("getYAmount" Core..=) Core.<$> getYAmount,
            ("name" Core..=) Core.<$> name,
            ("offerType" Core..=) Core.<$> offerType,
            ("spendXAmount" Core..=) Core.<$> spendXAmount
          ]
      )

-- | A set of opt-ins for a user.
--
-- /See:/ 'newOptIns' smart constructor.
data OptIns = OptIns
  { -- | An opt-in about receiving email from Partners marketing teams. Includes member-only events and special promotional offers for Google products.
    marketComm :: (Core.Maybe Core.Bool),
    -- | An opt-in about receiving email with customized AdWords campaign management tips.
    performanceSuggestions :: (Core.Maybe Core.Bool),
    -- | An opt-in to allow recieivng phone calls about their Partners account.
    phoneContact :: (Core.Maybe Core.Bool),
    -- | An opt-in to receive special promotional gifts and material in the mail.
    physicalMail :: (Core.Maybe Core.Bool),
    -- | An opt-in about receiving email regarding new features and products.
    specialOffers :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptIns' with the minimum fields required to make a request.
newOptIns ::
  OptIns
newOptIns =
  OptIns
    { marketComm = Core.Nothing,
      performanceSuggestions = Core.Nothing,
      phoneContact = Core.Nothing,
      physicalMail = Core.Nothing,
      specialOffers = Core.Nothing
    }

instance Core.FromJSON OptIns where
  parseJSON =
    Core.withObject
      "OptIns"
      ( \o ->
          OptIns
            Core.<$> (o Core..:? "marketComm")
            Core.<*> (o Core..:? "performanceSuggestions")
            Core.<*> (o Core..:? "phoneContact")
            Core.<*> (o Core..:? "physicalMail")
            Core.<*> (o Core..:? "specialOffers")
      )

instance Core.ToJSON OptIns where
  toJSON OptIns {..} =
    Core.object
      ( Core.catMaybes
          [ ("marketComm" Core..=) Core.<$> marketComm,
            ("performanceSuggestions" Core..=)
              Core.<$> performanceSuggestions,
            ("phoneContact" Core..=) Core.<$> phoneContact,
            ("physicalMail" Core..=) Core.<$> physicalMail,
            ("specialOffers" Core..=) Core.<$> specialOffers
          ]
      )

-- | Basic information from a public profile.
--
-- /See:/ 'newPublicProfile' smart constructor.
data PublicProfile = PublicProfile
  { -- | The URL to the main display image of the public profile. Being deprecated.
    displayImageUrl :: (Core.Maybe Core.Text),
    -- | The display name of the public profile.
    displayName :: (Core.Maybe Core.Text),
    -- | The ID which can be used to retrieve more details about the public profile.
    id :: (Core.Maybe Core.Text),
    -- | The URL to the main profile image of the public profile.
    profileImage :: (Core.Maybe Core.Text),
    -- | The URL of the public profile.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublicProfile' with the minimum fields required to make a request.
newPublicProfile ::
  PublicProfile
newPublicProfile =
  PublicProfile
    { displayImageUrl = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      profileImage = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON PublicProfile where
  parseJSON =
    Core.withObject
      "PublicProfile"
      ( \o ->
          PublicProfile
            Core.<$> (o Core..:? "displayImageUrl")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "profileImage")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON PublicProfile where
  toJSON PublicProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayImageUrl" Core..=)
              Core.<$> displayImageUrl,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("profileImage" Core..=) Core.<$> profileImage,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Information related to ranking of results.
--
-- /See:/ 'newRank' smart constructor.
data Rank = Rank
  { -- | The type of rank.
    type' :: (Core.Maybe Rank_Type),
    -- | The numerical value of the rank.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rank' with the minimum fields required to make a request.
newRank ::
  Rank
newRank = Rank {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Rank where
  parseJSON =
    Core.withObject
      "Rank"
      ( \o ->
          Rank
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Rank where
  toJSON Rank {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> challenge info.
--
-- /See:/ 'newRecaptchaChallenge' smart constructor.
data RecaptchaChallenge = RecaptchaChallenge
  { -- | The ID of the reCaptcha challenge.
    id :: (Core.Maybe Core.Text),
    -- | The response to the reCaptcha challenge.
    response :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecaptchaChallenge' with the minimum fields required to make a request.
newRecaptchaChallenge ::
  RecaptchaChallenge
newRecaptchaChallenge =
  RecaptchaChallenge {id = Core.Nothing, response = Core.Nothing}

instance Core.FromJSON RecaptchaChallenge where
  parseJSON =
    Core.withObject
      "RecaptchaChallenge"
      ( \o ->
          RecaptchaChallenge
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON RecaptchaChallenge where
  toJSON RecaptchaChallenge {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Common data that is in each API request.
--
-- /See:/ 'newRequestMetadata' smart constructor.
data RequestMetadata = RequestMetadata
  { -- | Experiment IDs the current request belongs to.
    experimentIds :: (Core.Maybe [Core.Text]),
    -- | Locale to use for the current request.
    locale :: (Core.Maybe Core.Text),
    -- | Google Partners session ID.
    partnersSessionId :: (Core.Maybe Core.Text),
    -- | Source of traffic for the current request.
    trafficSource :: (Core.Maybe TrafficSource),
    -- | Values to use instead of the user\'s respective defaults for the current request. These are only honored by whitelisted products.
    userOverrides :: (Core.Maybe UserOverrides)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
newRequestMetadata ::
  RequestMetadata
newRequestMetadata =
  RequestMetadata
    { experimentIds = Core.Nothing,
      locale = Core.Nothing,
      partnersSessionId = Core.Nothing,
      trafficSource = Core.Nothing,
      userOverrides = Core.Nothing
    }

instance Core.FromJSON RequestMetadata where
  parseJSON =
    Core.withObject
      "RequestMetadata"
      ( \o ->
          RequestMetadata
            Core.<$> (o Core..:? "experimentIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "partnersSessionId")
            Core.<*> (o Core..:? "trafficSource")
            Core.<*> (o Core..:? "userOverrides")
      )

instance Core.ToJSON RequestMetadata where
  toJSON RequestMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("experimentIds" Core..=) Core.<$> experimentIds,
            ("locale" Core..=) Core.<$> locale,
            ("partnersSessionId" Core..=)
              Core.<$> partnersSessionId,
            ("trafficSource" Core..=) Core.<$> trafficSource,
            ("userOverrides" Core..=) Core.<$> userOverrides
          ]
      )

-- | Common data that is in each API response.
--
-- /See:/ 'newResponseMetadata' smart constructor.
newtype ResponseMetadata = ResponseMetadata
  { -- | Debug information about this request.
    debugInfo :: (Core.Maybe DebugInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponseMetadata' with the minimum fields required to make a request.
newResponseMetadata ::
  ResponseMetadata
newResponseMetadata = ResponseMetadata {debugInfo = Core.Nothing}

instance Core.FromJSON ResponseMetadata where
  parseJSON =
    Core.withObject
      "ResponseMetadata"
      ( \o ->
          ResponseMetadata Core.<$> (o Core..:? "debugInfo")
      )

instance Core.ToJSON ResponseMetadata where
  toJSON ResponseMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("debugInfo" Core..=) Core.<$> debugInfo]
      )

-- | Agency specialization status
--
-- /See:/ 'newSpecializationStatus' smart constructor.
data SpecializationStatus = SpecializationStatus
  { -- | The specialization this status is for.
    badgeSpecialization :: (Core.Maybe SpecializationStatus_BadgeSpecialization),
    -- | State of agency specialization.
    badgeSpecializationState :: (Core.Maybe SpecializationStatus_BadgeSpecializationState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpecializationStatus' with the minimum fields required to make a request.
newSpecializationStatus ::
  SpecializationStatus
newSpecializationStatus =
  SpecializationStatus
    { badgeSpecialization = Core.Nothing,
      badgeSpecializationState = Core.Nothing
    }

instance Core.FromJSON SpecializationStatus where
  parseJSON =
    Core.withObject
      "SpecializationStatus"
      ( \o ->
          SpecializationStatus
            Core.<$> (o Core..:? "badgeSpecialization")
            Core.<*> (o Core..:? "badgeSpecializationState")
      )

instance Core.ToJSON SpecializationStatus where
  toJSON SpecializationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("badgeSpecialization" Core..=)
              Core.<$> badgeSpecialization,
            ("badgeSpecializationState" Core..=)
              Core.<$> badgeSpecializationState
          ]
      )

-- | Source of traffic for the current request.
--
-- /See:/ 'newTrafficSource' smart constructor.
data TrafficSource = TrafficSource
  { -- | Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    trafficSourceId :: (Core.Maybe Core.Text),
    -- | Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    trafficSubId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficSource' with the minimum fields required to make a request.
newTrafficSource ::
  TrafficSource
newTrafficSource =
  TrafficSource {trafficSourceId = Core.Nothing, trafficSubId = Core.Nothing}

instance Core.FromJSON TrafficSource where
  parseJSON =
    Core.withObject
      "TrafficSource"
      ( \o ->
          TrafficSource
            Core.<$> (o Core..:? "trafficSourceId")
            Core.<*> (o Core..:? "trafficSubId")
      )

instance Core.ToJSON TrafficSource where
  toJSON TrafficSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("trafficSourceId" Core..=)
              Core.<$> trafficSourceId,
            ("trafficSubId" Core..=) Core.<$> trafficSubId
          ]
      )

-- | A resource representing a user of the Partners platform.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Whether or not the user has opted to share their Academy for Ads info with Google Partners.
    afaInfoShared :: (Core.Maybe Core.Bool),
    -- | This is the list of AdWords Manager Accounts the user has edit access to. If the user has edit access to multiple accounts, the user can choose the preferred account and we use this when a personal account is needed. Can be empty meaning the user has access to no accounts. \@OutputOnly
    availableAdwordsManagerAccounts :: (Core.Maybe [AdWordsManagerAccountInfo]),
    -- | The list of achieved certifications. These are calculated based on exam results and other requirements. \@OutputOnly
    certificationStatus :: (Core.Maybe [Certification]),
    -- | The company that the user is associated with. If not present, the user is not associated with any company.
    company :: (Core.Maybe CompanyRelation),
    -- | The email address used by the user used for company verification. \@OutputOnly
    companyVerificationEmail :: (Core.Maybe Core.Text),
    -- | The list of exams the user ever taken. For each type of exam, only one entry is listed.
    examStatus :: (Core.Maybe [ExamStatus]),
    -- | The ID of the user.
    id :: (Core.Maybe Core.Text),
    -- | The internal user ID. Only available for a whitelisted set of api clients.
    internalId :: (Core.Maybe Core.Text),
    -- | The most recent time the user interacted with the Partners site. \@OutputOnly
    lastAccessTime :: (Core.Maybe Core.DateTime),
    -- | The list of emails the user has access to\/can select as primary. \@OutputOnly
    primaryEmails :: (Core.Maybe [Core.Text]),
    -- | The profile information of a Partners user, contains all the directly editable user information.
    profile :: (Core.Maybe UserProfile),
    -- | Information about a user\'s external public profile outside Google Partners.
    publicProfile :: (Core.Maybe PublicProfile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { afaInfoShared = Core.Nothing,
      availableAdwordsManagerAccounts = Core.Nothing,
      certificationStatus = Core.Nothing,
      company = Core.Nothing,
      companyVerificationEmail = Core.Nothing,
      examStatus = Core.Nothing,
      id = Core.Nothing,
      internalId = Core.Nothing,
      lastAccessTime = Core.Nothing,
      primaryEmails = Core.Nothing,
      profile = Core.Nothing,
      publicProfile = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "afaInfoShared")
            Core.<*> ( o Core..:? "availableAdwordsManagerAccounts"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "certificationStatus"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "company")
            Core.<*> (o Core..:? "companyVerificationEmail")
            Core.<*> (o Core..:? "examStatus" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalId")
            Core.<*> (o Core..:? "lastAccessTime")
            Core.<*> (o Core..:? "primaryEmails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "profile")
            Core.<*> (o Core..:? "publicProfile")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("afaInfoShared" Core..=) Core.<$> afaInfoShared,
            ("availableAdwordsManagerAccounts" Core..=)
              Core.<$> availableAdwordsManagerAccounts,
            ("certificationStatus" Core..=)
              Core.<$> certificationStatus,
            ("company" Core..=) Core.<$> company,
            ("companyVerificationEmail" Core..=)
              Core.<$> companyVerificationEmail,
            ("examStatus" Core..=) Core.<$> examStatus,
            ("id" Core..=) Core.<$> id,
            ("internalId" Core..=) Core.<$> internalId,
            ("lastAccessTime" Core..=) Core.<$> lastAccessTime,
            ("primaryEmails" Core..=) Core.<$> primaryEmails,
            ("profile" Core..=) Core.<$> profile,
            ("publicProfile" Core..=) Core.<$> publicProfile
          ]
      )

-- | Values to use instead of the user\'s respective defaults. These are only honored by whitelisted products.
--
-- /See:/ 'newUserOverrides' smart constructor.
data UserOverrides = UserOverrides
  { -- | IP address to use instead of the user\'s geo-located IP address.
    ipAddress :: (Core.Maybe Core.Text),
    -- | Logged-in user ID to impersonate instead of the user\'s ID.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserOverrides' with the minimum fields required to make a request.
newUserOverrides ::
  UserOverrides
newUserOverrides =
  UserOverrides {ipAddress = Core.Nothing, userId = Core.Nothing}

instance Core.FromJSON UserOverrides where
  parseJSON =
    Core.withObject
      "UserOverrides"
      ( \o ->
          UserOverrides
            Core.<$> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON UserOverrides where
  toJSON UserOverrides {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipAddress" Core..=) Core.<$> ipAddress,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | The profile information of a Partners user.
--
-- /See:/ 'newUserProfile' smart constructor.
data UserProfile = UserProfile
  { -- | The user\'s mailing address, contains multiple fields.
    address :: (Core.Maybe Location),
    -- | If the user has edit access to multiple accounts, the user can choose the preferred account and it is used when a personal account is needed. Can be empty.
    adwordsManagerAccount :: (Core.Maybe Core.Int64),
    -- | A list of ids representing which channels the user selected they were in.
    channels :: (Core.Maybe [Core.Text]),
    -- | The email address the user has selected on the Partners site as primary.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The list of opt-ins for the user, related to communication preferences.
    emailOptIns :: (Core.Maybe OptIns),
    -- | The user\'s family name.
    familyName :: (Core.Maybe Core.Text),
    -- | The user\'s given name.
    givenName :: (Core.Maybe Core.Text),
    -- | A list of ids representing which industries the user selected.
    industries :: (Core.Maybe [Core.Text]),
    -- | A list of ids represnting which job categories the user selected.
    jobFunctions :: (Core.Maybe [Core.Text]),
    -- | The list of languages this user understands.
    languages :: (Core.Maybe [Core.Text]),
    -- | A list of ids representing which markets the user was interested in.
    markets :: (Core.Maybe [Core.Text]),
    -- | Whether or not to migrate the user\'s exam data to Academy for Ads.
    migrateToAfa :: (Core.Maybe Core.Bool),
    -- | The user\'s phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The user\'s primary country, an ISO 2-character code.
    primaryCountryCode :: (Core.Maybe Core.Text),
    -- | Whether the user\'s public profile is visible to anyone with the URL.
    profilePublic :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserProfile' with the minimum fields required to make a request.
newUserProfile ::
  UserProfile
newUserProfile =
  UserProfile
    { address = Core.Nothing,
      adwordsManagerAccount = Core.Nothing,
      channels = Core.Nothing,
      emailAddress = Core.Nothing,
      emailOptIns = Core.Nothing,
      familyName = Core.Nothing,
      givenName = Core.Nothing,
      industries = Core.Nothing,
      jobFunctions = Core.Nothing,
      languages = Core.Nothing,
      markets = Core.Nothing,
      migrateToAfa = Core.Nothing,
      phoneNumber = Core.Nothing,
      primaryCountryCode = Core.Nothing,
      profilePublic = Core.Nothing
    }

instance Core.FromJSON UserProfile where
  parseJSON =
    Core.withObject
      "UserProfile"
      ( \o ->
          UserProfile
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "adwordsManagerAccount")
            Core.<*> (o Core..:? "channels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "emailOptIns")
            Core.<*> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
            Core.<*> (o Core..:? "industries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jobFunctions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "markets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "migrateToAfa")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "primaryCountryCode")
            Core.<*> (o Core..:? "profilePublic")
      )

instance Core.ToJSON UserProfile where
  toJSON UserProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("adwordsManagerAccount" Core..=) Core.. Core.AsText
              Core.<$> adwordsManagerAccount,
            ("channels" Core..=) Core.<$> channels,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("emailOptIns" Core..=) Core.<$> emailOptIns,
            ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName,
            ("industries" Core..=) Core.<$> industries,
            ("jobFunctions" Core..=) Core.<$> jobFunctions,
            ("languages" Core..=) Core.<$> languages,
            ("markets" Core..=) Core.<$> markets,
            ("migrateToAfa" Core..=) Core.<$> migrateToAfa,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("primaryCountryCode" Core..=)
              Core.<$> primaryCountryCode,
            ("profilePublic" Core..=) Core.<$> profilePublic
          ]
      )
