{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Partners.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Partners.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Type of the offer
data OfferCustomerOfferType
    = OfferTypeUnspecified
      -- ^ @OFFER_TYPE_UNSPECIFIED@
      -- Unset.
    | OfferTypeSpendXGetY
      -- ^ @OFFER_TYPE_SPEND_X_GET_Y@
      -- AdWords spend X get Y.
    | OfferTypeVideo
      -- ^ @OFFER_TYPE_VIDEO@
      -- Youtube video.
    | OfferTypeSpendMatch
      -- ^ @OFFER_TYPE_SPEND_MATCH@
      -- Spend Match up to Y.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OfferCustomerOfferType

instance FromHttpApiData OfferCustomerOfferType where
    parseQueryParam = \case
        "OFFER_TYPE_UNSPECIFIED" -> Right OfferTypeUnspecified
        "OFFER_TYPE_SPEND_X_GET_Y" -> Right OfferTypeSpendXGetY
        "OFFER_TYPE_VIDEO" -> Right OfferTypeVideo
        "OFFER_TYPE_SPEND_MATCH" -> Right OfferTypeSpendMatch
        x -> Left ("Unable to parse OfferCustomerOfferType from: " <> x)

instance ToHttpApiData OfferCustomerOfferType where
    toQueryParam = \case
        OfferTypeUnspecified -> "OFFER_TYPE_UNSPECIFIED"
        OfferTypeSpendXGetY -> "OFFER_TYPE_SPEND_X_GET_Y"
        OfferTypeVideo -> "OFFER_TYPE_VIDEO"
        OfferTypeSpendMatch -> "OFFER_TYPE_SPEND_MATCH"

instance FromJSON OfferCustomerOfferType where
    parseJSON = parseJSONText "OfferCustomerOfferType"

instance ToJSON OfferCustomerOfferType where
    toJSON = toJSONText

-- | Type of lead.
data LeadType
    = LeadTypeUnspecified
      -- ^ @LEAD_TYPE_UNSPECIFIED@
      -- Unchosen.
    | LtGps
      -- ^ @LT_GPS@
      -- Google Partner Search.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LeadType

instance FromHttpApiData LeadType where
    parseQueryParam = \case
        "LEAD_TYPE_UNSPECIFIED" -> Right LeadTypeUnspecified
        "LT_GPS" -> Right LtGps
        x -> Left ("Unable to parse LeadType from: " <> x)

instance ToHttpApiData LeadType where
    toQueryParam = \case
        LeadTypeUnspecified -> "LEAD_TYPE_UNSPECIFIED"
        LtGps -> "LT_GPS"

instance FromJSON LeadType where
    parseJSON = parseJSONText "LeadType"

instance ToJSON LeadType where
    toJSON = toJSONText

-- | Level of this offer.
data AvailableOfferOfferLevel
    = OfferLevelUnspecified
      -- ^ @OFFER_LEVEL_UNSPECIFIED@
      -- Unset.
    | OfferLevelDenyProblem
      -- ^ @OFFER_LEVEL_DENY_PROBLEM@
      -- Users\/Agencies that have no offers because of a problem.
    | OfferLevelDenyContract
      -- ^ @OFFER_LEVEL_DENY_CONTRACT@
      -- Users\/Agencies that have no offers due to contractural agreements.
    | OfferLevelManual
      -- ^ @OFFER_LEVEL_MANUAL@
      -- Users\/Agencies that have a manually-configured limit.
    | OfferLevelLimit0
      -- ^ @OFFER_LEVEL_LIMIT_0@
      -- Some Agencies don\'t get any offers.
    | OfferLevelLimit5
      -- ^ @OFFER_LEVEL_LIMIT_5@
      -- Basic level gets 5 per month.
    | OfferLevelLimit15
      -- ^ @OFFER_LEVEL_LIMIT_15@
      -- Agencies with adequate AHI and spend get 15\/month.
    | OfferLevelLimit50
      -- ^ @OFFER_LEVEL_LIMIT_50@
      -- Badged partners (even in grace) get 50 per month.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AvailableOfferOfferLevel

instance FromHttpApiData AvailableOfferOfferLevel where
    parseQueryParam = \case
        "OFFER_LEVEL_UNSPECIFIED" -> Right OfferLevelUnspecified
        "OFFER_LEVEL_DENY_PROBLEM" -> Right OfferLevelDenyProblem
        "OFFER_LEVEL_DENY_CONTRACT" -> Right OfferLevelDenyContract
        "OFFER_LEVEL_MANUAL" -> Right OfferLevelManual
        "OFFER_LEVEL_LIMIT_0" -> Right OfferLevelLimit0
        "OFFER_LEVEL_LIMIT_5" -> Right OfferLevelLimit5
        "OFFER_LEVEL_LIMIT_15" -> Right OfferLevelLimit15
        "OFFER_LEVEL_LIMIT_50" -> Right OfferLevelLimit50
        x -> Left ("Unable to parse AvailableOfferOfferLevel from: " <> x)

instance ToHttpApiData AvailableOfferOfferLevel where
    toQueryParam = \case
        OfferLevelUnspecified -> "OFFER_LEVEL_UNSPECIFIED"
        OfferLevelDenyProblem -> "OFFER_LEVEL_DENY_PROBLEM"
        OfferLevelDenyContract -> "OFFER_LEVEL_DENY_CONTRACT"
        OfferLevelManual -> "OFFER_LEVEL_MANUAL"
        OfferLevelLimit0 -> "OFFER_LEVEL_LIMIT_0"
        OfferLevelLimit5 -> "OFFER_LEVEL_LIMIT_5"
        OfferLevelLimit15 -> "OFFER_LEVEL_LIMIT_15"
        OfferLevelLimit50 -> "OFFER_LEVEL_LIMIT_50"

instance FromJSON AvailableOfferOfferLevel where
    parseJSON = parseJSONText "AvailableOfferOfferLevel"

instance ToJSON AvailableOfferOfferLevel where
    toJSON = toJSONText

-- | The action that occurred.
data LogUserEventRequestEventAction
    = EventActionUnspecified
      -- ^ @EVENT_ACTION_UNSPECIFIED@
      -- Unchosen.
    | SmbClickedFindAPartnerButtonBottom
      -- ^ @SMB_CLICKED_FIND_A_PARTNER_BUTTON_BOTTOM@
      -- Advertiser clicked \`Find a partner\` bottom button.
    | SmbClickedFindAPartnerButtonTop
      -- ^ @SMB_CLICKED_FIND_A_PARTNER_BUTTON_TOP@
      -- Advertiser clicked \`Find a partner\` top button.
    | AgencyClickedJoinNowButtonBottom
      -- ^ @AGENCY_CLICKED_JOIN_NOW_BUTTON_BOTTOM@
      -- Agency clicked \`Join now\` bottom button.
    | AgencyClickedJoinNowButtonTop
      -- ^ @AGENCY_CLICKED_JOIN_NOW_BUTTON_TOP@
      -- Agency clicked \`Join now\` top button.
    | SmbCanceledPartnerContactForm
      -- ^ @SMB_CANCELED_PARTNER_CONTACT_FORM@
      -- Advertiser canceled partner contact form.
    | SmbClickedContactAPartner
      -- ^ @SMB_CLICKED_CONTACT_A_PARTNER@
      -- Advertiser started partner contact form.
    | SmbCompletedPartnerContactForm
      -- ^ @SMB_COMPLETED_PARTNER_CONTACT_FORM@
      -- Advertiser completed partner contact form.
    | SmbEnteredEmailInContactPartnerForm
      -- ^ @SMB_ENTERED_EMAIL_IN_CONTACT_PARTNER_FORM@
      -- Advertiser entered email in contact form.
    | SmbEnteredNameInContactPartnerForm
      -- ^ @SMB_ENTERED_NAME_IN_CONTACT_PARTNER_FORM@
      -- Advertiser entered name in contact form.
    | SmbEnteredPhoneInContactPartnerForm
      -- ^ @SMB_ENTERED_PHONE_IN_CONTACT_PARTNER_FORM@
      -- Advertiser entered phone in contact form.
    | SmbFailedRecaptchaInContactPartnerForm
      -- ^ @SMB_FAILED_RECAPTCHA_IN_CONTACT_PARTNER_FORM@
      -- Advertiser failed <https://www.google.com/recaptcha/ reCaptcha> in
      -- contact form.
    | PartnerViewedBySmb
      -- ^ @PARTNER_VIEWED_BY_SMB@
      -- Company viewed by advertiser.
    | SmbCanceledPartnerContactFormOnGps
      -- ^ @SMB_CANCELED_PARTNER_CONTACT_FORM_ON_GPS@
      -- Advertiser canceled partner contact form on Google Partner Search.
    | SmbChangedASearchParameterTop
      -- ^ @SMB_CHANGED_A_SEARCH_PARAMETER_TOP@
      -- Advertiser changed a top search parameter.
    | SmbClickedContactAPartnerOnGps
      -- ^ @SMB_CLICKED_CONTACT_A_PARTNER_ON_GPS@
      -- Advertiser started partner contact form on Google Partner Search.
    | SmbClickedShowMorePartnersButtonBottom
      -- ^ @SMB_CLICKED_SHOW_MORE_PARTNERS_BUTTON_BOTTOM@
      -- Advertiser clicked \`Show more partners\` bottom button.
    | SmbCompletedPartnerContactFormOnGps
      -- ^ @SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_GPS@
      -- Advertiser completed partner contact form on Google Partner Search.
    | SmbNoPartnersAvailableWithSearchCriteria
      -- ^ @SMB_NO_PARTNERS_AVAILABLE_WITH_SEARCH_CRITERIA@
      -- Advertiser saw no partners available with search criteria.
    | SmbPerformedSearchOnGps
      -- ^ @SMB_PERFORMED_SEARCH_ON_GPS@
      -- Advertiser performed search on Google Partner Search.
    | SmbViewedAPartnerOnGps
      -- ^ @SMB_VIEWED_A_PARTNER_ON_GPS@
      -- Advertiser viewed a partner on Google Partner Search.
    | SmbCanceledPartnerContactFormOnProFilePage
      -- ^ @SMB_CANCELED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE@
      -- Advertiser canceled partner contact form on profile page.
    | SmbClickedContactAPartnerOnProFilePage
      -- ^ @SMB_CLICKED_CONTACT_A_PARTNER_ON_PROFILE_PAGE@
      -- Advertiser started partner contact form on profile page.
    | SmbClickedPartnerWebsite
      -- ^ @SMB_CLICKED_PARTNER_WEBSITE@
      -- Advertiser clicked partner website.
    | SmbCompletedPartnerContactFormOnProFilePage
      -- ^ @SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE@
      -- Advertiser completed contact form on profile page.
    | SmbViewedAPartnerProFile
      -- ^ @SMB_VIEWED_A_PARTNER_PROFILE@
      -- Advertiser viewed a partner profile.
    | AgencyClickedAcceptTosButton
      -- ^ @AGENCY_CLICKED_ACCEPT_TOS_BUTTON@
      -- Agency clicked \`accept Terms Of Service\` button.
    | AgencyChangedTosCountry
      -- ^ @AGENCY_CHANGED_TOS_COUNTRY@
      -- Agency changed Terms Of Service country.
    | AgencyAddedAddressInMyProFilePortal
      -- ^ @AGENCY_ADDED_ADDRESS_IN_MY_PROFILE_PORTAL@
      -- Agency added address in profile portal.
    | AgencyAddedPhoneNumberInMyProFilePortal
      -- ^ @AGENCY_ADDED_PHONE_NUMBER_IN_MY_PROFILE_PORTAL@
      -- Agency added phone number in profile portal.
    | AgencyChangedPrimaryAccountAssociation
      -- ^ @AGENCY_CHANGED_PRIMARY_ACCOUNT_ASSOCIATION@
      -- Agency changed primary account association.
    | AgencyChangedPrimaryCountryAssociation
      -- ^ @AGENCY_CHANGED_PRIMARY_COUNTRY_ASSOCIATION@
      -- Agency changed primary country association.
    | AgencyClickedAffiliateButtonInMyProFileInPortal
      -- ^ @AGENCY_CLICKED_AFFILIATE_BUTTON_IN_MY_PROFILE_IN_PORTAL@
      -- Agency clicked \`affiliate\` button in profile portal.
    | AgencyClickedGiveEditAccessInMyProFilePortal
      -- ^ @AGENCY_CLICKED_GIVE_EDIT_ACCESS_IN_MY_PROFILE_PORTAL@
      -- Agency clicked \`give edit access\` in profile portal.
    | AgencyClickedLogOutInMyProFilePortal
      -- ^ @AGENCY_CLICKED_LOG_OUT_IN_MY_PROFILE_PORTAL@
      -- Agency clicked \`log out\` in profile portal.
    | AgencyClickedMyProFileLeftNavInPortal
      -- ^ @AGENCY_CLICKED_MY_PROFILE_LEFT_NAV_IN_PORTAL@
      -- Agency clicked profile portal left nav.
    | AgencyClickedSaveAndContinueAtBotOfCompleteProFile
      -- ^ @AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_COMPLETE_PROFILE@
      -- Agency clicked \`save and continue\` at bottom of complete profile.
    | AgencyClickedUnaffiliateInMyProFilePortal
      -- ^ @AGENCY_CLICKED_UNAFFILIATE_IN_MY_PROFILE_PORTAL@
      -- Agency clicked \`unaffiliate\` in profile portal.
    | AgencyFilledOutCompAffiliationInMyProFilePortal
      -- ^ @AGENCY_FILLED_OUT_COMP_AFFILIATION_IN_MY_PROFILE_PORTAL@
      -- Agency filled out company affiliation in profile portal.
    | AgencySuccessfullyConnectedWithCompanyInMyProFile
      -- ^ @AGENCY_SUCCESSFULLY_CONNECTED_WITH_COMPANY_IN_MY_PROFILE@
      -- Agency successfully connected with company in profile portal.
    | AgencyClickedCreateMccInMyProFilePortal
      -- ^ @AGENCY_CLICKED_CREATE_MCC_IN_MY_PROFILE_PORTAL@
      -- Agency clicked create MCC in profile portal.
    | AgencyDidntHaveAnMccAssociatedOnCompleteProFile
      -- ^ @AGENCY_DIDNT_HAVE_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE@
      -- Agency did not have an MCC associated on profile portal.
    | AgencyHadAnMccAssociatedOnCompleteProFile
      -- ^ @AGENCY_HAD_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE@
      -- Agency had an MCC associated on profile portal.
    | AgencyAddedJobFunctionInMyProFilePortal
      -- ^ @AGENCY_ADDED_JOB_FUNCTION_IN_MY_PROFILE_PORTAL@
      -- Agency added job function in profile portal.
    | AgencyLookedAtJobFunctionDropDown
      -- ^ @AGENCY_LOOKED_AT_JOB_FUNCTION_DROP_DOWN@
      -- Agency looked at job function drop-down.
    | AgencySelectedAccountManagerAsJobFunction
      -- ^ @AGENCY_SELECTED_ACCOUNT_MANAGER_AS_JOB_FUNCTION@
      -- Agency selected \`account manage\` as job function.
    | AgencySelectedAccountPlannerAsJobFunction
      -- ^ @AGENCY_SELECTED_ACCOUNT_PLANNER_AS_JOB_FUNCTION@
      -- Agency selected \`account planner\` as job function.
    | AgencySelectedAnalyticsAsJobFunction
      -- ^ @AGENCY_SELECTED_ANALYTICS_AS_JOB_FUNCTION@
      -- Agency selected \`Analytics\` as job function.
    | AgencySelectedCreativeAsJobFunction
      -- ^ @AGENCY_SELECTED_CREATIVE_AS_JOB_FUNCTION@
      -- Agency selected \`creative\` as job function.
    | AgencySelectedMediaBuyerAsJobFunction
      -- ^ @AGENCY_SELECTED_MEDIA_BUYER_AS_JOB_FUNCTION@
      -- Agency selected \`media buyer\` as job function.
    | AgencySelectedMediaPlannerAsJobFunction
      -- ^ @AGENCY_SELECTED_MEDIA_PLANNER_AS_JOB_FUNCTION@
      -- Agency selected \`media planner\` as job function.
    | AgencySelectedOtherAsJobFunction
      -- ^ @AGENCY_SELECTED_OTHER_AS_JOB_FUNCTION@
      -- Agency selected \`other\` as job function.
    | AgencySelectedProductionAsJobFunction
      -- ^ @AGENCY_SELECTED_PRODUCTION_AS_JOB_FUNCTION@
      -- Agency selected \`production\` as job function.
    | AgencySelectedSeoAsJobFunction
      -- ^ @AGENCY_SELECTED_SEO_AS_JOB_FUNCTION@
      -- Agency selected \`SEO\` as job function.
    | AgencySelectedSalesRepAsJobFunction
      -- ^ @AGENCY_SELECTED_SALES_REP_AS_JOB_FUNCTION@
      -- Agency selected \`sales rep\` as job function.
    | AgencySelectedSearchSpeciaListAsJobFunction
      -- ^ @AGENCY_SELECTED_SEARCH_SPECIALIST_AS_JOB_FUNCTION@
      -- Agency selected \`search specialist\` as job function.
    | AgencyAddedChannelsInMyProFilePortal
      -- ^ @AGENCY_ADDED_CHANNELS_IN_MY_PROFILE_PORTAL@
      -- Agency added channels in profile portal.
    | AgencyLookedAtAddChannelDropDown
      -- ^ @AGENCY_LOOKED_AT_ADD_CHANNEL_DROP_DOWN@
      -- Agency looked at \`add channel\` drop-down.
    | AgencySelectedCrossChannelFromAddChannel
      -- ^ @AGENCY_SELECTED_CROSS_CHANNEL_FROM_ADD_CHANNEL@
      -- Agency selected \`cross channel\` from add channel drop-down.
    | AgencySelectedDisplayFromAddChannel
      -- ^ @AGENCY_SELECTED_DISPLAY_FROM_ADD_CHANNEL@
      -- Agency selected \`display\` from add channel drop-down.
    | AgencySelectedMobileFromAddChannel
      -- ^ @AGENCY_SELECTED_MOBILE_FROM_ADD_CHANNEL@
      -- Agency selected \`mobile\` from add channel drop-down.
    | AgencySelectedSearchFromAddChannel
      -- ^ @AGENCY_SELECTED_SEARCH_FROM_ADD_CHANNEL@
      -- Agency selected \`search\` from add channel drop-down.
    | AgencySelectedSocialFromAddChannel
      -- ^ @AGENCY_SELECTED_SOCIAL_FROM_ADD_CHANNEL@
      -- Agency selected \`social\` from add channel drop-down.
    | AgencySelectedToolsFromAddChannel
      -- ^ @AGENCY_SELECTED_TOOLS_FROM_ADD_CHANNEL@
      -- Agency selected \`tools\` from add channel drop-down.
    | AgencySelectedYouTubeFromAddChannel
      -- ^ @AGENCY_SELECTED_YOUTUBE_FROM_ADD_CHANNEL@
      -- Agency selected \`YouTube\` from add channel drop-down.
    | AgencyAddedIndustriesInMyProFilePortal
      -- ^ @AGENCY_ADDED_INDUSTRIES_IN_MY_PROFILE_PORTAL@
      -- Agency added industries in profile portal.
    | AgencyChangedAddIndustriesDropDown
      -- ^ @AGENCY_CHANGED_ADD_INDUSTRIES_DROP_DOWN@
      -- Agency changed \`add industries\` drop-down.
    | AgencyAddedMarketsInMyProFilePortal
      -- ^ @AGENCY_ADDED_MARKETS_IN_MY_PROFILE_PORTAL@
      -- Agency added markets in profile portal.
    | AgencyChangedAddMarketsDropDown
      -- ^ @AGENCY_CHANGED_ADD_MARKETS_DROP_DOWN@
      -- Agency changed \`add markets\` drop-down.
    | AgencyCheckedRecieveMailPromotionsMyproFile
      -- ^ @AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_MYPROFILE@
      -- Agency checked \`recieve mail promotions\` in profile portal.
    | AgencyCheckedRecieveMailPromotionsSignup
      -- ^ @AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_SIGNUP@
      -- Agency checked \`recieve mail promotions\` in sign-up.
    | AgencySelectedOptInBetaTestsAndMktResearch
      -- ^ @AGENCY_SELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH@
      -- Agency selected \`opt-in beta tests and market research\`.
    | AgencySelectedOptInBetaTestsInMyProFilePortal
      -- ^ @AGENCY_SELECTED_OPT_IN_BETA_TESTS_IN_MY_PROFILE_PORTAL@
      -- Agency selected \`opt-in beta tests\` in profile portal.
    | AgencySelectedOptInNewsInMyProFilePortal
      -- ^ @AGENCY_SELECTED_OPT_IN_NEWS_IN_MY_PROFILE_PORTAL@
      -- Agency selected \`opt-in news\` in profile portal.
    | AgencySelectedOptInNewsInvitationsAndPromos
      -- ^ @AGENCY_SELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS@
      -- Agency selected \`opt-in news invitations and promotions\`.
    | AgencySelectedOptInPerformanceSugInMyProFilePortal
      -- ^ @AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUG_IN_MY_PROFILE_PORTAL@
      -- Agency selected \`opt-in performance SUG\` in profile portal.
    | AgencySelectedOptInPerformanceSuggestions
      -- ^ @AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS@
      -- Agency selected \`opt-in performance suggestions\`.
    | AgencySelectedOptInSelectAllEmailNotifications
      -- ^ @AGENCY_SELECTED_OPT_IN_SELECT_ALL_EMAIL_NOTIFICATIONS@
      -- Agency selected \`opt-in select all email notifications\`.
    | AgencySelectedSelectAllOptInsInMyProFilePortal
      -- ^ @AGENCY_SELECTED_SELECT_ALL_OPT_INS_IN_MY_PROFILE_PORTAL@
      -- Agency selected \`select all opt-ins\` in profile portal.
    | AgencyClickedBackButtonOnConnectWithCompany
      -- ^ @AGENCY_CLICKED_BACK_BUTTON_ON_CONNECT_WITH_COMPANY@
      -- Agency clicked back button on \`connect with company\`.
    | AgencyClickedContinueToOverviewOnConnectWithCompany
      -- ^ @AGENCY_CLICKED_CONTINUE_TO_OVERVIEW_ON_CONNECT_WITH_COMPANY@
      -- Agency clicked continue to overview on \`connect with company\`.
    | AgecnyClickedCreateMccConnectWithCompanyNotFound
      -- ^ @AGECNY_CLICKED_CREATE_MCC_CONNECT_WITH_COMPANY_NOT_FOUND@
      -- Agency clicked \`create MCC connect with company not found\`.
    | AgecnyClickedGiveEditAccessConnectWithCompanyNotFound
      -- ^ @AGECNY_CLICKED_GIVE_EDIT_ACCESS_CONNECT_WITH_COMPANY_NOT_FOUND@
      -- Agency clicked \`give edit access connect with company not found\`.
    | AgecnyClickedLogOutConnectWithCompanyNotFound
      -- ^ @AGECNY_CLICKED_LOG_OUT_CONNECT_WITH_COMPANY_NOT_FOUND@
      -- Agency clicked \`log out connect with company not found\`.
    | AgencyClickedSkipForNowOnConnectWithCompanyPage
      -- ^ @AGENCY_CLICKED_SKIP_FOR_NOW_ON_CONNECT_WITH_COMPANY_PAGE@
      -- Agency clicked \`skip for now on connect with company page\`.
    | AgencyClosedConnectedToCompanyXButtonWrongCompany
      -- ^ @AGENCY_CLOSED_CONNECTED_TO_COMPANY_X_BUTTON_WRONG_COMPANY@
      -- Agency closed connection to company.
    | AgencyCompletedFieldConnectWithCompany
      -- ^ @AGENCY_COMPLETED_FIELD_CONNECT_WITH_COMPANY@
      -- Agency completed field connect with company.
    | AgecnyFoundCompanyToConnectWith
      -- ^ @AGECNY_FOUND_COMPANY_TO_CONNECT_WITH@
      -- Agency found company to connect with.
    | AgencySuccessfullyCreatedCompany
      -- ^ @AGENCY_SUCCESSFULLY_CREATED_COMPANY@
      -- Agency successfully created company.
    | AgencyAddedNewCompanyLocation
      -- ^ @AGENCY_ADDED_NEW_COMPANY_LOCATION@
      -- Agency added new company location.
    | AgencyClickedCommUnityJoinNowLinkInPortalNotifications
      -- ^ @AGENCY_CLICKED_COMMUNITY_JOIN_NOW_LINK_IN_PORTAL_NOTIFICATIONS@
      -- Agency clicked community \`join now link\` in portal notifications.
    | AgencyClickedConnectToCompanyLinkInPortalNotifications
      -- ^ @AGENCY_CLICKED_CONNECT_TO_COMPANY_LINK_IN_PORTAL_NOTIFICATIONS@
      -- Agency clicked \`connect to company\` link in portal notifications.
    | AgencyClickedGetCertifiedLinkInPortalNotifications
      -- ^ @AGENCY_CLICKED_GET_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS@
      -- Agency cliecked \`get certified\` link in portal notifications.
    | AgencyClickedGetVideoAdsCertifiedLinkInPortalNotifications
      -- ^ @AGENCY_CLICKED_GET_VIDEO_ADS_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS@
      -- Agency clicked \`get VideoAds certified\` link in portal notifications.
    | AgencyClickedLinkToMccLinkInPortalNotifications
      -- ^ @AGENCY_CLICKED_LINK_TO_MCC_LINK_IN_PORTAL_NOTIFICATIONS@
      -- Agency clicked \`link to MCC\` link in portal notifications.
    | AgencyClickedInsightContentInPortal
      -- ^ @AGENCY_CLICKED_INSIGHT_CONTENT_IN_PORTAL@
      -- Agency clicked \`insight content\` in portal.
    | AgencyClickedInsightsViewNowPitchDecksInPortal
      -- ^ @AGENCY_CLICKED_INSIGHTS_VIEW_NOW_PITCH_DECKS_IN_PORTAL@
      -- Agency clicked \`insights view now pitch decks\` in portal.
    | AgencyClickedInsightsLeftNavInPortal
      -- ^ @AGENCY_CLICKED_INSIGHTS_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`insights\` left nav in portal.
    | AgencyClickedInsightsUploadContent
      -- ^ @AGENCY_CLICKED_INSIGHTS_UPLOAD_CONTENT@
      -- Agency clicked \`insights upload content\`.
    | AgencyClickedInsightsViewedDeprecated
      -- ^ @AGENCY_CLICKED_INSIGHTS_VIEWED_DEPRECATED@
      -- Agency clicked \`insights viewed deprecated\`.
    | AgencyClickedCommUnityLeftNavInPortal
      -- ^ @AGENCY_CLICKED_COMMUNITY_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`community\` left nav in portal.
    | AgencyClickedJoinCommUnityButtonCommUnityPortal
      -- ^ @AGENCY_CLICKED_JOIN_COMMUNITY_BUTTON_COMMUNITY_PORTAL@
      -- Agency clicked \`join community\` button in community portal.
    | AgencyClickedCertificationsLeftNavInPortal
      -- ^ @AGENCY_CLICKED_CERTIFICATIONS_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`certifications\` left nav in portal.
    | AgencyClickedCertificationsProductLeftNavInPortal
      -- ^ @AGENCY_CLICKED_CERTIFICATIONS_PRODUCT_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`certifications product\` left nav in portal.
    | AgencyClickedPartnerStatusLeftNavInPortal
      -- ^ @AGENCY_CLICKED_PARTNER_STATUS_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`partner status\` left nav in portal.
    | AgencyClickedPartnerStatusProductLeftNavInPortal
      -- ^ @AGENCY_CLICKED_PARTNER_STATUS_PRODUCT_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`partner status product\` left nav in portal.
    | AgencyClickedOffersLeftNavInPortal
      -- ^ @AGENCY_CLICKED_OFFERS_LEFT_NAV_IN_PORTAL@
      -- Agency clicked \`offers\` left nav in portal.
    | AgencyClickedSendButtonOnOffersPage
      -- ^ @AGENCY_CLICKED_SEND_BUTTON_ON_OFFERS_PAGE@
      -- Agency clicked \`send\` button on offers page.
    | AgencyClickedExamDetailsOnCertAdwordsPage
      -- ^ @AGENCY_CLICKED_EXAM_DETAILS_ON_CERT_ADWORDS_PAGE@
      -- Agency clicked \`exam details\` on certifications AdWords page.
    | AgencyClickedSeeExamsCertificationMainPage
      -- ^ @AGENCY_CLICKED_SEE_EXAMS_CERTIFICATION_MAIN_PAGE@
      -- Agency clicked \`see exams\` certifications main page.
    | AgencyClickedTakeExamOnCertExamPage
      -- ^ @AGENCY_CLICKED_TAKE_EXAM_ON_CERT_EXAM_PAGE@
      -- Agency clicked \`take exam\` on certifications exam page.
    | AgencyOpenedLastAdminDialog
      -- ^ @AGENCY_OPENED_LAST_ADMIN_DIALOG@
      -- Agency opened \`last admin\` dialog.
    | AgencyOpenedDialogWithNoUsers
      -- ^ @AGENCY_OPENED_DIALOG_WITH_NO_USERS@
      -- Agency opened dialog with no users.
    | AgencyPromotedUserToAdmin
      -- ^ @AGENCY_PROMOTED_USER_TO_ADMIN@
      -- Agency promoted user to admin.
    | AgencyUnaffiliated
      -- ^ @AGENCY_UNAFFILIATED@
      -- Agency unaffiliated.
    | AgencyChangedRoles
      -- ^ @AGENCY_CHANGED_ROLES@
      -- Agency changed roles.
    | SmbClickedCompanyNameLinkToProFile
      -- ^ @SMB_CLICKED_COMPANY_NAME_LINK_TO_PROFILE@
      -- Advertiser clicked \`company name\` link to profile.
    | SmbViewedAdwordsCertificate
      -- ^ @SMB_VIEWED_ADWORDS_CERTIFICATE@
      -- Advertiser viewed AdWords certificate.
    | SmbViewedAdwordsSearchCertificate
      -- ^ @SMB_VIEWED_ADWORDS_SEARCH_CERTIFICATE@
      -- Advertiser viewed AdWords Search certificate.
    | SmbViewedAdwordsDisplayCertificate
      -- ^ @SMB_VIEWED_ADWORDS_DISPLAY_CERTIFICATE@
      -- Advertiser viewed AdWords Display certificate.
    | SmbClickedAdwordsCertificateHelpIcon
      -- ^ @SMB_CLICKED_ADWORDS_CERTIFICATE_HELP_ICON@
      -- Advertiser clicked AdWords certificate help icon.
    | SmbViewedAnalyticsCertificate
      -- ^ @SMB_VIEWED_ANALYTICS_CERTIFICATE@
      -- Advertiser viewed Analytics certificate.
    | SmbViewedDoubleClickCertificate
      -- ^ @SMB_VIEWED_DOUBLECLICK_CERTIFICATE@
      -- Advertiser viewed DoubleClick certificate.
    | SmbViewedMobileSitesCertificate
      -- ^ @SMB_VIEWED_MOBILE_SITES_CERTIFICATE@
      -- Advertiser viewed Mobile Sites certificate.
    | SmbViewedVideoAdsCertificate
      -- ^ @SMB_VIEWED_VIDEO_ADS_CERTIFICATE@
      -- Advertiser viewed VideoAds certificate.
    | SmbViewedShoppingCertificate
      -- ^ @SMB_VIEWED_SHOPPING_CERTIFICATE@
      -- Advertiser clicked Shopping certificate help icon.
    | SmbClickedVideoAdsCertificateHelpIcon
      -- ^ @SMB_CLICKED_VIDEO_ADS_CERTIFICATE_HELP_ICON@
      -- Advertiser clicked VideoAds certificate help icon.
    | SmbViewedDigitalSalesCertificate
      -- ^ @SMB_VIEWED_DIGITAL_SALES_CERTIFICATE@
      -- Advertiser viewed Digital Sales certificate.
    | ClickedHelpAtBottom
      -- ^ @CLICKED_HELP_AT_BOTTOM@
      -- Clicked \`help\` at bottom.
    | ClickedHelpAtTop
      -- ^ @CLICKED_HELP_AT_TOP@
      -- Clicked \`help\` at top.
    | ClientError
      -- ^ @CLIENT_ERROR@
      -- Client error occurred.
    | AgencyClickedLeftNavStories
      -- ^ @AGENCY_CLICKED_LEFT_NAV_STORIES@
      -- Agency clicked left nav \`stories\`.
    | Clicked
      -- ^ @CLICKED@
      -- Click occured.
    | SmbViewedMobileCertificate
      -- ^ @SMB_VIEWED_MOBILE_CERTIFICATE@
      -- Advertiser clicked Mobile certificate help icon.
    | AgencyFailedCompanyVerification
      -- ^ @AGENCY_FAILED_COMPANY_VERIFICATION@
      -- Agency failed the company verification.
    | VisitedLanding
      -- ^ @VISITED_LANDING@
      -- User visited the landing portion of Google Partners.
    | VisitedGps
      -- ^ @VISITED_GPS@
      -- User visited the Google Partner Search portion of Google Partners.
    | VisitedAgencyPortal
      -- ^ @VISITED_AGENCY_PORTAL@
      -- User visited the agency portal portion of Google Partners.
    | CancelledIndividualSignUp
      -- ^ @CANCELLED_INDIVIDUAL_SIGN_UP@
      -- User cancelled signing up.
    | CancelledCompanySignUp
      -- ^ @CANCELLED_COMPANY_SIGN_UP@
      -- User cancelled signing up their company.
    | AgencyClickedSignInButtonTop
      -- ^ @AGENCY_CLICKED_SIGN_IN_BUTTON_TOP@
      -- Agency clicked \`Sign in\` top button.
    | AgencyClickedSaveAndContinueAtBotOfIncompleteProFile
      -- ^ @AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_INCOMPLETE_PROFILE@
      -- Agency clicked \`save and continue\` at bottom of incomplete profile.
    | AgencyUnselectedOptInNewsInvitationsAndPromos
      -- ^ @AGENCY_UNSELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS@
      -- Agency unselected \`opt-in news invitations and promotions\`.
    | AgencyUnselectedOptInBetaTestsAndMktResearch
      -- ^ @AGENCY_UNSELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH@
      -- Agency unselected \`opt-in beta tests and market research\`.
    | AgencyUnselectedOptInPerformanceSuggestions
      -- ^ @AGENCY_UNSELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS@
      -- Agency unselected \`opt-in performance suggestions\`.
    | AgencySelectedOptOutUnselectAllEmailNotifications
      -- ^ @AGENCY_SELECTED_OPT_OUT_UNSELECT_ALL_EMAIL_NOTIFICATIONS@
      -- Agency selected \`opt-out unselect all email notifications\`.
    | AgencyLinkedIndividualMcc
      -- ^ @AGENCY_LINKED_INDIVIDUAL_MCC@
      -- Agency linked their individual MCC.
    | AgencySuggestedToUser
      -- ^ @AGENCY_SUGGESTED_TO_USER@
      -- Agency was suggested to user for affiliation.
    | AgencyIgnoredSuggestedAgenciesAndSearched
      -- ^ @AGENCY_IGNORED_SUGGESTED_AGENCIES_AND_SEARCHED@
      -- Agency ignored suggested agencies and begin searching.
    | AgencyPickedSuggestedAgency
      -- ^ @AGENCY_PICKED_SUGGESTED_AGENCY@
      -- Agency picked a suggested agency.
    | AgencySearchedForAgencies
      -- ^ @AGENCY_SEARCHED_FOR_AGENCIES@
      -- Agency searched for agencies.
    | AgencyPickedSearchedAgency
      -- ^ @AGENCY_PICKED_SEARCHED_AGENCY@
      -- Agency picked a searched agency.
    | AgencyDismissedAffiliationWidget
      -- ^ @AGENCY_DISMISSED_AFFILIATION_WIDGET@
      -- Agency dismissed affiliation widget.
    | AgencyClickedInsightsDownloadContent
      -- ^ @AGENCY_CLICKED_INSIGHTS_DOWNLOAD_CONTENT@
      -- Agency clicked on the download link for downloading content.
    | AgencyProgressInsightsViewContent
      -- ^ @AGENCY_PROGRESS_INSIGHTS_VIEW_CONTENT@
      -- Agency user is maklingg progress viewing a content item.
    | AgencyClickedCancelAcceptTosButton
      -- ^ @AGENCY_CLICKED_CANCEL_ACCEPT_TOS_BUTTON@
      -- Agency clicked \`cancel Terms Of Service\` button.
    | SmbEnteredWebsiteInContactPartnerForm
      -- ^ @SMB_ENTERED_WEBSITE_IN_CONTACT_PARTNER_FORM@
      -- Advertiser entered website in contact form.
    | AgencySelectedOptInAfaMigration
      -- ^ @AGENCY_SELECTED_OPT_IN_AFA_MIGRATION@
      -- Agency opted in for migrating their exams to Academy for Ads.
    | AgencySelectedOptOutAfaMigration
      -- ^ @AGENCY_SELECTED_OPT_OUT_AFA_MIGRATION@
      -- Agency opted out for migrating their exams to Academy for Ads.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogUserEventRequestEventAction

instance FromHttpApiData LogUserEventRequestEventAction where
    parseQueryParam = \case
        "EVENT_ACTION_UNSPECIFIED" -> Right EventActionUnspecified
        "SMB_CLICKED_FIND_A_PARTNER_BUTTON_BOTTOM" -> Right SmbClickedFindAPartnerButtonBottom
        "SMB_CLICKED_FIND_A_PARTNER_BUTTON_TOP" -> Right SmbClickedFindAPartnerButtonTop
        "AGENCY_CLICKED_JOIN_NOW_BUTTON_BOTTOM" -> Right AgencyClickedJoinNowButtonBottom
        "AGENCY_CLICKED_JOIN_NOW_BUTTON_TOP" -> Right AgencyClickedJoinNowButtonTop
        "SMB_CANCELED_PARTNER_CONTACT_FORM" -> Right SmbCanceledPartnerContactForm
        "SMB_CLICKED_CONTACT_A_PARTNER" -> Right SmbClickedContactAPartner
        "SMB_COMPLETED_PARTNER_CONTACT_FORM" -> Right SmbCompletedPartnerContactForm
        "SMB_ENTERED_EMAIL_IN_CONTACT_PARTNER_FORM" -> Right SmbEnteredEmailInContactPartnerForm
        "SMB_ENTERED_NAME_IN_CONTACT_PARTNER_FORM" -> Right SmbEnteredNameInContactPartnerForm
        "SMB_ENTERED_PHONE_IN_CONTACT_PARTNER_FORM" -> Right SmbEnteredPhoneInContactPartnerForm
        "SMB_FAILED_RECAPTCHA_IN_CONTACT_PARTNER_FORM" -> Right SmbFailedRecaptchaInContactPartnerForm
        "PARTNER_VIEWED_BY_SMB" -> Right PartnerViewedBySmb
        "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_GPS" -> Right SmbCanceledPartnerContactFormOnGps
        "SMB_CHANGED_A_SEARCH_PARAMETER_TOP" -> Right SmbChangedASearchParameterTop
        "SMB_CLICKED_CONTACT_A_PARTNER_ON_GPS" -> Right SmbClickedContactAPartnerOnGps
        "SMB_CLICKED_SHOW_MORE_PARTNERS_BUTTON_BOTTOM" -> Right SmbClickedShowMorePartnersButtonBottom
        "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_GPS" -> Right SmbCompletedPartnerContactFormOnGps
        "SMB_NO_PARTNERS_AVAILABLE_WITH_SEARCH_CRITERIA" -> Right SmbNoPartnersAvailableWithSearchCriteria
        "SMB_PERFORMED_SEARCH_ON_GPS" -> Right SmbPerformedSearchOnGps
        "SMB_VIEWED_A_PARTNER_ON_GPS" -> Right SmbViewedAPartnerOnGps
        "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE" -> Right SmbCanceledPartnerContactFormOnProFilePage
        "SMB_CLICKED_CONTACT_A_PARTNER_ON_PROFILE_PAGE" -> Right SmbClickedContactAPartnerOnProFilePage
        "SMB_CLICKED_PARTNER_WEBSITE" -> Right SmbClickedPartnerWebsite
        "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE" -> Right SmbCompletedPartnerContactFormOnProFilePage
        "SMB_VIEWED_A_PARTNER_PROFILE" -> Right SmbViewedAPartnerProFile
        "AGENCY_CLICKED_ACCEPT_TOS_BUTTON" -> Right AgencyClickedAcceptTosButton
        "AGENCY_CHANGED_TOS_COUNTRY" -> Right AgencyChangedTosCountry
        "AGENCY_ADDED_ADDRESS_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedAddressInMyProFilePortal
        "AGENCY_ADDED_PHONE_NUMBER_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedPhoneNumberInMyProFilePortal
        "AGENCY_CHANGED_PRIMARY_ACCOUNT_ASSOCIATION" -> Right AgencyChangedPrimaryAccountAssociation
        "AGENCY_CHANGED_PRIMARY_COUNTRY_ASSOCIATION" -> Right AgencyChangedPrimaryCountryAssociation
        "AGENCY_CLICKED_AFFILIATE_BUTTON_IN_MY_PROFILE_IN_PORTAL" -> Right AgencyClickedAffiliateButtonInMyProFileInPortal
        "AGENCY_CLICKED_GIVE_EDIT_ACCESS_IN_MY_PROFILE_PORTAL" -> Right AgencyClickedGiveEditAccessInMyProFilePortal
        "AGENCY_CLICKED_LOG_OUT_IN_MY_PROFILE_PORTAL" -> Right AgencyClickedLogOutInMyProFilePortal
        "AGENCY_CLICKED_MY_PROFILE_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedMyProFileLeftNavInPortal
        "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_COMPLETE_PROFILE" -> Right AgencyClickedSaveAndContinueAtBotOfCompleteProFile
        "AGENCY_CLICKED_UNAFFILIATE_IN_MY_PROFILE_PORTAL" -> Right AgencyClickedUnaffiliateInMyProFilePortal
        "AGENCY_FILLED_OUT_COMP_AFFILIATION_IN_MY_PROFILE_PORTAL" -> Right AgencyFilledOutCompAffiliationInMyProFilePortal
        "AGENCY_SUCCESSFULLY_CONNECTED_WITH_COMPANY_IN_MY_PROFILE" -> Right AgencySuccessfullyConnectedWithCompanyInMyProFile
        "AGENCY_CLICKED_CREATE_MCC_IN_MY_PROFILE_PORTAL" -> Right AgencyClickedCreateMccInMyProFilePortal
        "AGENCY_DIDNT_HAVE_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE" -> Right AgencyDidntHaveAnMccAssociatedOnCompleteProFile
        "AGENCY_HAD_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE" -> Right AgencyHadAnMccAssociatedOnCompleteProFile
        "AGENCY_ADDED_JOB_FUNCTION_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedJobFunctionInMyProFilePortal
        "AGENCY_LOOKED_AT_JOB_FUNCTION_DROP_DOWN" -> Right AgencyLookedAtJobFunctionDropDown
        "AGENCY_SELECTED_ACCOUNT_MANAGER_AS_JOB_FUNCTION" -> Right AgencySelectedAccountManagerAsJobFunction
        "AGENCY_SELECTED_ACCOUNT_PLANNER_AS_JOB_FUNCTION" -> Right AgencySelectedAccountPlannerAsJobFunction
        "AGENCY_SELECTED_ANALYTICS_AS_JOB_FUNCTION" -> Right AgencySelectedAnalyticsAsJobFunction
        "AGENCY_SELECTED_CREATIVE_AS_JOB_FUNCTION" -> Right AgencySelectedCreativeAsJobFunction
        "AGENCY_SELECTED_MEDIA_BUYER_AS_JOB_FUNCTION" -> Right AgencySelectedMediaBuyerAsJobFunction
        "AGENCY_SELECTED_MEDIA_PLANNER_AS_JOB_FUNCTION" -> Right AgencySelectedMediaPlannerAsJobFunction
        "AGENCY_SELECTED_OTHER_AS_JOB_FUNCTION" -> Right AgencySelectedOtherAsJobFunction
        "AGENCY_SELECTED_PRODUCTION_AS_JOB_FUNCTION" -> Right AgencySelectedProductionAsJobFunction
        "AGENCY_SELECTED_SEO_AS_JOB_FUNCTION" -> Right AgencySelectedSeoAsJobFunction
        "AGENCY_SELECTED_SALES_REP_AS_JOB_FUNCTION" -> Right AgencySelectedSalesRepAsJobFunction
        "AGENCY_SELECTED_SEARCH_SPECIALIST_AS_JOB_FUNCTION" -> Right AgencySelectedSearchSpeciaListAsJobFunction
        "AGENCY_ADDED_CHANNELS_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedChannelsInMyProFilePortal
        "AGENCY_LOOKED_AT_ADD_CHANNEL_DROP_DOWN" -> Right AgencyLookedAtAddChannelDropDown
        "AGENCY_SELECTED_CROSS_CHANNEL_FROM_ADD_CHANNEL" -> Right AgencySelectedCrossChannelFromAddChannel
        "AGENCY_SELECTED_DISPLAY_FROM_ADD_CHANNEL" -> Right AgencySelectedDisplayFromAddChannel
        "AGENCY_SELECTED_MOBILE_FROM_ADD_CHANNEL" -> Right AgencySelectedMobileFromAddChannel
        "AGENCY_SELECTED_SEARCH_FROM_ADD_CHANNEL" -> Right AgencySelectedSearchFromAddChannel
        "AGENCY_SELECTED_SOCIAL_FROM_ADD_CHANNEL" -> Right AgencySelectedSocialFromAddChannel
        "AGENCY_SELECTED_TOOLS_FROM_ADD_CHANNEL" -> Right AgencySelectedToolsFromAddChannel
        "AGENCY_SELECTED_YOUTUBE_FROM_ADD_CHANNEL" -> Right AgencySelectedYouTubeFromAddChannel
        "AGENCY_ADDED_INDUSTRIES_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedIndustriesInMyProFilePortal
        "AGENCY_CHANGED_ADD_INDUSTRIES_DROP_DOWN" -> Right AgencyChangedAddIndustriesDropDown
        "AGENCY_ADDED_MARKETS_IN_MY_PROFILE_PORTAL" -> Right AgencyAddedMarketsInMyProFilePortal
        "AGENCY_CHANGED_ADD_MARKETS_DROP_DOWN" -> Right AgencyChangedAddMarketsDropDown
        "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_MYPROFILE" -> Right AgencyCheckedRecieveMailPromotionsMyproFile
        "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_SIGNUP" -> Right AgencyCheckedRecieveMailPromotionsSignup
        "AGENCY_SELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH" -> Right AgencySelectedOptInBetaTestsAndMktResearch
        "AGENCY_SELECTED_OPT_IN_BETA_TESTS_IN_MY_PROFILE_PORTAL" -> Right AgencySelectedOptInBetaTestsInMyProFilePortal
        "AGENCY_SELECTED_OPT_IN_NEWS_IN_MY_PROFILE_PORTAL" -> Right AgencySelectedOptInNewsInMyProFilePortal
        "AGENCY_SELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS" -> Right AgencySelectedOptInNewsInvitationsAndPromos
        "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUG_IN_MY_PROFILE_PORTAL" -> Right AgencySelectedOptInPerformanceSugInMyProFilePortal
        "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS" -> Right AgencySelectedOptInPerformanceSuggestions
        "AGENCY_SELECTED_OPT_IN_SELECT_ALL_EMAIL_NOTIFICATIONS" -> Right AgencySelectedOptInSelectAllEmailNotifications
        "AGENCY_SELECTED_SELECT_ALL_OPT_INS_IN_MY_PROFILE_PORTAL" -> Right AgencySelectedSelectAllOptInsInMyProFilePortal
        "AGENCY_CLICKED_BACK_BUTTON_ON_CONNECT_WITH_COMPANY" -> Right AgencyClickedBackButtonOnConnectWithCompany
        "AGENCY_CLICKED_CONTINUE_TO_OVERVIEW_ON_CONNECT_WITH_COMPANY" -> Right AgencyClickedContinueToOverviewOnConnectWithCompany
        "AGECNY_CLICKED_CREATE_MCC_CONNECT_WITH_COMPANY_NOT_FOUND" -> Right AgecnyClickedCreateMccConnectWithCompanyNotFound
        "AGECNY_CLICKED_GIVE_EDIT_ACCESS_CONNECT_WITH_COMPANY_NOT_FOUND" -> Right AgecnyClickedGiveEditAccessConnectWithCompanyNotFound
        "AGECNY_CLICKED_LOG_OUT_CONNECT_WITH_COMPANY_NOT_FOUND" -> Right AgecnyClickedLogOutConnectWithCompanyNotFound
        "AGENCY_CLICKED_SKIP_FOR_NOW_ON_CONNECT_WITH_COMPANY_PAGE" -> Right AgencyClickedSkipForNowOnConnectWithCompanyPage
        "AGENCY_CLOSED_CONNECTED_TO_COMPANY_X_BUTTON_WRONG_COMPANY" -> Right AgencyClosedConnectedToCompanyXButtonWrongCompany
        "AGENCY_COMPLETED_FIELD_CONNECT_WITH_COMPANY" -> Right AgencyCompletedFieldConnectWithCompany
        "AGECNY_FOUND_COMPANY_TO_CONNECT_WITH" -> Right AgecnyFoundCompanyToConnectWith
        "AGENCY_SUCCESSFULLY_CREATED_COMPANY" -> Right AgencySuccessfullyCreatedCompany
        "AGENCY_ADDED_NEW_COMPANY_LOCATION" -> Right AgencyAddedNewCompanyLocation
        "AGENCY_CLICKED_COMMUNITY_JOIN_NOW_LINK_IN_PORTAL_NOTIFICATIONS" -> Right AgencyClickedCommUnityJoinNowLinkInPortalNotifications
        "AGENCY_CLICKED_CONNECT_TO_COMPANY_LINK_IN_PORTAL_NOTIFICATIONS" -> Right AgencyClickedConnectToCompanyLinkInPortalNotifications
        "AGENCY_CLICKED_GET_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS" -> Right AgencyClickedGetCertifiedLinkInPortalNotifications
        "AGENCY_CLICKED_GET_VIDEO_ADS_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS" -> Right AgencyClickedGetVideoAdsCertifiedLinkInPortalNotifications
        "AGENCY_CLICKED_LINK_TO_MCC_LINK_IN_PORTAL_NOTIFICATIONS" -> Right AgencyClickedLinkToMccLinkInPortalNotifications
        "AGENCY_CLICKED_INSIGHT_CONTENT_IN_PORTAL" -> Right AgencyClickedInsightContentInPortal
        "AGENCY_CLICKED_INSIGHTS_VIEW_NOW_PITCH_DECKS_IN_PORTAL" -> Right AgencyClickedInsightsViewNowPitchDecksInPortal
        "AGENCY_CLICKED_INSIGHTS_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedInsightsLeftNavInPortal
        "AGENCY_CLICKED_INSIGHTS_UPLOAD_CONTENT" -> Right AgencyClickedInsightsUploadContent
        "AGENCY_CLICKED_INSIGHTS_VIEWED_DEPRECATED" -> Right AgencyClickedInsightsViewedDeprecated
        "AGENCY_CLICKED_COMMUNITY_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedCommUnityLeftNavInPortal
        "AGENCY_CLICKED_JOIN_COMMUNITY_BUTTON_COMMUNITY_PORTAL" -> Right AgencyClickedJoinCommUnityButtonCommUnityPortal
        "AGENCY_CLICKED_CERTIFICATIONS_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedCertificationsLeftNavInPortal
        "AGENCY_CLICKED_CERTIFICATIONS_PRODUCT_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedCertificationsProductLeftNavInPortal
        "AGENCY_CLICKED_PARTNER_STATUS_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedPartnerStatusLeftNavInPortal
        "AGENCY_CLICKED_PARTNER_STATUS_PRODUCT_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedPartnerStatusProductLeftNavInPortal
        "AGENCY_CLICKED_OFFERS_LEFT_NAV_IN_PORTAL" -> Right AgencyClickedOffersLeftNavInPortal
        "AGENCY_CLICKED_SEND_BUTTON_ON_OFFERS_PAGE" -> Right AgencyClickedSendButtonOnOffersPage
        "AGENCY_CLICKED_EXAM_DETAILS_ON_CERT_ADWORDS_PAGE" -> Right AgencyClickedExamDetailsOnCertAdwordsPage
        "AGENCY_CLICKED_SEE_EXAMS_CERTIFICATION_MAIN_PAGE" -> Right AgencyClickedSeeExamsCertificationMainPage
        "AGENCY_CLICKED_TAKE_EXAM_ON_CERT_EXAM_PAGE" -> Right AgencyClickedTakeExamOnCertExamPage
        "AGENCY_OPENED_LAST_ADMIN_DIALOG" -> Right AgencyOpenedLastAdminDialog
        "AGENCY_OPENED_DIALOG_WITH_NO_USERS" -> Right AgencyOpenedDialogWithNoUsers
        "AGENCY_PROMOTED_USER_TO_ADMIN" -> Right AgencyPromotedUserToAdmin
        "AGENCY_UNAFFILIATED" -> Right AgencyUnaffiliated
        "AGENCY_CHANGED_ROLES" -> Right AgencyChangedRoles
        "SMB_CLICKED_COMPANY_NAME_LINK_TO_PROFILE" -> Right SmbClickedCompanyNameLinkToProFile
        "SMB_VIEWED_ADWORDS_CERTIFICATE" -> Right SmbViewedAdwordsCertificate
        "SMB_VIEWED_ADWORDS_SEARCH_CERTIFICATE" -> Right SmbViewedAdwordsSearchCertificate
        "SMB_VIEWED_ADWORDS_DISPLAY_CERTIFICATE" -> Right SmbViewedAdwordsDisplayCertificate
        "SMB_CLICKED_ADWORDS_CERTIFICATE_HELP_ICON" -> Right SmbClickedAdwordsCertificateHelpIcon
        "SMB_VIEWED_ANALYTICS_CERTIFICATE" -> Right SmbViewedAnalyticsCertificate
        "SMB_VIEWED_DOUBLECLICK_CERTIFICATE" -> Right SmbViewedDoubleClickCertificate
        "SMB_VIEWED_MOBILE_SITES_CERTIFICATE" -> Right SmbViewedMobileSitesCertificate
        "SMB_VIEWED_VIDEO_ADS_CERTIFICATE" -> Right SmbViewedVideoAdsCertificate
        "SMB_VIEWED_SHOPPING_CERTIFICATE" -> Right SmbViewedShoppingCertificate
        "SMB_CLICKED_VIDEO_ADS_CERTIFICATE_HELP_ICON" -> Right SmbClickedVideoAdsCertificateHelpIcon
        "SMB_VIEWED_DIGITAL_SALES_CERTIFICATE" -> Right SmbViewedDigitalSalesCertificate
        "CLICKED_HELP_AT_BOTTOM" -> Right ClickedHelpAtBottom
        "CLICKED_HELP_AT_TOP" -> Right ClickedHelpAtTop
        "CLIENT_ERROR" -> Right ClientError
        "AGENCY_CLICKED_LEFT_NAV_STORIES" -> Right AgencyClickedLeftNavStories
        "CLICKED" -> Right Clicked
        "SMB_VIEWED_MOBILE_CERTIFICATE" -> Right SmbViewedMobileCertificate
        "AGENCY_FAILED_COMPANY_VERIFICATION" -> Right AgencyFailedCompanyVerification
        "VISITED_LANDING" -> Right VisitedLanding
        "VISITED_GPS" -> Right VisitedGps
        "VISITED_AGENCY_PORTAL" -> Right VisitedAgencyPortal
        "CANCELLED_INDIVIDUAL_SIGN_UP" -> Right CancelledIndividualSignUp
        "CANCELLED_COMPANY_SIGN_UP" -> Right CancelledCompanySignUp
        "AGENCY_CLICKED_SIGN_IN_BUTTON_TOP" -> Right AgencyClickedSignInButtonTop
        "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_INCOMPLETE_PROFILE" -> Right AgencyClickedSaveAndContinueAtBotOfIncompleteProFile
        "AGENCY_UNSELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS" -> Right AgencyUnselectedOptInNewsInvitationsAndPromos
        "AGENCY_UNSELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH" -> Right AgencyUnselectedOptInBetaTestsAndMktResearch
        "AGENCY_UNSELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS" -> Right AgencyUnselectedOptInPerformanceSuggestions
        "AGENCY_SELECTED_OPT_OUT_UNSELECT_ALL_EMAIL_NOTIFICATIONS" -> Right AgencySelectedOptOutUnselectAllEmailNotifications
        "AGENCY_LINKED_INDIVIDUAL_MCC" -> Right AgencyLinkedIndividualMcc
        "AGENCY_SUGGESTED_TO_USER" -> Right AgencySuggestedToUser
        "AGENCY_IGNORED_SUGGESTED_AGENCIES_AND_SEARCHED" -> Right AgencyIgnoredSuggestedAgenciesAndSearched
        "AGENCY_PICKED_SUGGESTED_AGENCY" -> Right AgencyPickedSuggestedAgency
        "AGENCY_SEARCHED_FOR_AGENCIES" -> Right AgencySearchedForAgencies
        "AGENCY_PICKED_SEARCHED_AGENCY" -> Right AgencyPickedSearchedAgency
        "AGENCY_DISMISSED_AFFILIATION_WIDGET" -> Right AgencyDismissedAffiliationWidget
        "AGENCY_CLICKED_INSIGHTS_DOWNLOAD_CONTENT" -> Right AgencyClickedInsightsDownloadContent
        "AGENCY_PROGRESS_INSIGHTS_VIEW_CONTENT" -> Right AgencyProgressInsightsViewContent
        "AGENCY_CLICKED_CANCEL_ACCEPT_TOS_BUTTON" -> Right AgencyClickedCancelAcceptTosButton
        "SMB_ENTERED_WEBSITE_IN_CONTACT_PARTNER_FORM" -> Right SmbEnteredWebsiteInContactPartnerForm
        "AGENCY_SELECTED_OPT_IN_AFA_MIGRATION" -> Right AgencySelectedOptInAfaMigration
        "AGENCY_SELECTED_OPT_OUT_AFA_MIGRATION" -> Right AgencySelectedOptOutAfaMigration
        x -> Left ("Unable to parse LogUserEventRequestEventAction from: " <> x)

instance ToHttpApiData LogUserEventRequestEventAction where
    toQueryParam = \case
        EventActionUnspecified -> "EVENT_ACTION_UNSPECIFIED"
        SmbClickedFindAPartnerButtonBottom -> "SMB_CLICKED_FIND_A_PARTNER_BUTTON_BOTTOM"
        SmbClickedFindAPartnerButtonTop -> "SMB_CLICKED_FIND_A_PARTNER_BUTTON_TOP"
        AgencyClickedJoinNowButtonBottom -> "AGENCY_CLICKED_JOIN_NOW_BUTTON_BOTTOM"
        AgencyClickedJoinNowButtonTop -> "AGENCY_CLICKED_JOIN_NOW_BUTTON_TOP"
        SmbCanceledPartnerContactForm -> "SMB_CANCELED_PARTNER_CONTACT_FORM"
        SmbClickedContactAPartner -> "SMB_CLICKED_CONTACT_A_PARTNER"
        SmbCompletedPartnerContactForm -> "SMB_COMPLETED_PARTNER_CONTACT_FORM"
        SmbEnteredEmailInContactPartnerForm -> "SMB_ENTERED_EMAIL_IN_CONTACT_PARTNER_FORM"
        SmbEnteredNameInContactPartnerForm -> "SMB_ENTERED_NAME_IN_CONTACT_PARTNER_FORM"
        SmbEnteredPhoneInContactPartnerForm -> "SMB_ENTERED_PHONE_IN_CONTACT_PARTNER_FORM"
        SmbFailedRecaptchaInContactPartnerForm -> "SMB_FAILED_RECAPTCHA_IN_CONTACT_PARTNER_FORM"
        PartnerViewedBySmb -> "PARTNER_VIEWED_BY_SMB"
        SmbCanceledPartnerContactFormOnGps -> "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_GPS"
        SmbChangedASearchParameterTop -> "SMB_CHANGED_A_SEARCH_PARAMETER_TOP"
        SmbClickedContactAPartnerOnGps -> "SMB_CLICKED_CONTACT_A_PARTNER_ON_GPS"
        SmbClickedShowMorePartnersButtonBottom -> "SMB_CLICKED_SHOW_MORE_PARTNERS_BUTTON_BOTTOM"
        SmbCompletedPartnerContactFormOnGps -> "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_GPS"
        SmbNoPartnersAvailableWithSearchCriteria -> "SMB_NO_PARTNERS_AVAILABLE_WITH_SEARCH_CRITERIA"
        SmbPerformedSearchOnGps -> "SMB_PERFORMED_SEARCH_ON_GPS"
        SmbViewedAPartnerOnGps -> "SMB_VIEWED_A_PARTNER_ON_GPS"
        SmbCanceledPartnerContactFormOnProFilePage -> "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE"
        SmbClickedContactAPartnerOnProFilePage -> "SMB_CLICKED_CONTACT_A_PARTNER_ON_PROFILE_PAGE"
        SmbClickedPartnerWebsite -> "SMB_CLICKED_PARTNER_WEBSITE"
        SmbCompletedPartnerContactFormOnProFilePage -> "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE"
        SmbViewedAPartnerProFile -> "SMB_VIEWED_A_PARTNER_PROFILE"
        AgencyClickedAcceptTosButton -> "AGENCY_CLICKED_ACCEPT_TOS_BUTTON"
        AgencyChangedTosCountry -> "AGENCY_CHANGED_TOS_COUNTRY"
        AgencyAddedAddressInMyProFilePortal -> "AGENCY_ADDED_ADDRESS_IN_MY_PROFILE_PORTAL"
        AgencyAddedPhoneNumberInMyProFilePortal -> "AGENCY_ADDED_PHONE_NUMBER_IN_MY_PROFILE_PORTAL"
        AgencyChangedPrimaryAccountAssociation -> "AGENCY_CHANGED_PRIMARY_ACCOUNT_ASSOCIATION"
        AgencyChangedPrimaryCountryAssociation -> "AGENCY_CHANGED_PRIMARY_COUNTRY_ASSOCIATION"
        AgencyClickedAffiliateButtonInMyProFileInPortal -> "AGENCY_CLICKED_AFFILIATE_BUTTON_IN_MY_PROFILE_IN_PORTAL"
        AgencyClickedGiveEditAccessInMyProFilePortal -> "AGENCY_CLICKED_GIVE_EDIT_ACCESS_IN_MY_PROFILE_PORTAL"
        AgencyClickedLogOutInMyProFilePortal -> "AGENCY_CLICKED_LOG_OUT_IN_MY_PROFILE_PORTAL"
        AgencyClickedMyProFileLeftNavInPortal -> "AGENCY_CLICKED_MY_PROFILE_LEFT_NAV_IN_PORTAL"
        AgencyClickedSaveAndContinueAtBotOfCompleteProFile -> "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_COMPLETE_PROFILE"
        AgencyClickedUnaffiliateInMyProFilePortal -> "AGENCY_CLICKED_UNAFFILIATE_IN_MY_PROFILE_PORTAL"
        AgencyFilledOutCompAffiliationInMyProFilePortal -> "AGENCY_FILLED_OUT_COMP_AFFILIATION_IN_MY_PROFILE_PORTAL"
        AgencySuccessfullyConnectedWithCompanyInMyProFile -> "AGENCY_SUCCESSFULLY_CONNECTED_WITH_COMPANY_IN_MY_PROFILE"
        AgencyClickedCreateMccInMyProFilePortal -> "AGENCY_CLICKED_CREATE_MCC_IN_MY_PROFILE_PORTAL"
        AgencyDidntHaveAnMccAssociatedOnCompleteProFile -> "AGENCY_DIDNT_HAVE_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE"
        AgencyHadAnMccAssociatedOnCompleteProFile -> "AGENCY_HAD_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE"
        AgencyAddedJobFunctionInMyProFilePortal -> "AGENCY_ADDED_JOB_FUNCTION_IN_MY_PROFILE_PORTAL"
        AgencyLookedAtJobFunctionDropDown -> "AGENCY_LOOKED_AT_JOB_FUNCTION_DROP_DOWN"
        AgencySelectedAccountManagerAsJobFunction -> "AGENCY_SELECTED_ACCOUNT_MANAGER_AS_JOB_FUNCTION"
        AgencySelectedAccountPlannerAsJobFunction -> "AGENCY_SELECTED_ACCOUNT_PLANNER_AS_JOB_FUNCTION"
        AgencySelectedAnalyticsAsJobFunction -> "AGENCY_SELECTED_ANALYTICS_AS_JOB_FUNCTION"
        AgencySelectedCreativeAsJobFunction -> "AGENCY_SELECTED_CREATIVE_AS_JOB_FUNCTION"
        AgencySelectedMediaBuyerAsJobFunction -> "AGENCY_SELECTED_MEDIA_BUYER_AS_JOB_FUNCTION"
        AgencySelectedMediaPlannerAsJobFunction -> "AGENCY_SELECTED_MEDIA_PLANNER_AS_JOB_FUNCTION"
        AgencySelectedOtherAsJobFunction -> "AGENCY_SELECTED_OTHER_AS_JOB_FUNCTION"
        AgencySelectedProductionAsJobFunction -> "AGENCY_SELECTED_PRODUCTION_AS_JOB_FUNCTION"
        AgencySelectedSeoAsJobFunction -> "AGENCY_SELECTED_SEO_AS_JOB_FUNCTION"
        AgencySelectedSalesRepAsJobFunction -> "AGENCY_SELECTED_SALES_REP_AS_JOB_FUNCTION"
        AgencySelectedSearchSpeciaListAsJobFunction -> "AGENCY_SELECTED_SEARCH_SPECIALIST_AS_JOB_FUNCTION"
        AgencyAddedChannelsInMyProFilePortal -> "AGENCY_ADDED_CHANNELS_IN_MY_PROFILE_PORTAL"
        AgencyLookedAtAddChannelDropDown -> "AGENCY_LOOKED_AT_ADD_CHANNEL_DROP_DOWN"
        AgencySelectedCrossChannelFromAddChannel -> "AGENCY_SELECTED_CROSS_CHANNEL_FROM_ADD_CHANNEL"
        AgencySelectedDisplayFromAddChannel -> "AGENCY_SELECTED_DISPLAY_FROM_ADD_CHANNEL"
        AgencySelectedMobileFromAddChannel -> "AGENCY_SELECTED_MOBILE_FROM_ADD_CHANNEL"
        AgencySelectedSearchFromAddChannel -> "AGENCY_SELECTED_SEARCH_FROM_ADD_CHANNEL"
        AgencySelectedSocialFromAddChannel -> "AGENCY_SELECTED_SOCIAL_FROM_ADD_CHANNEL"
        AgencySelectedToolsFromAddChannel -> "AGENCY_SELECTED_TOOLS_FROM_ADD_CHANNEL"
        AgencySelectedYouTubeFromAddChannel -> "AGENCY_SELECTED_YOUTUBE_FROM_ADD_CHANNEL"
        AgencyAddedIndustriesInMyProFilePortal -> "AGENCY_ADDED_INDUSTRIES_IN_MY_PROFILE_PORTAL"
        AgencyChangedAddIndustriesDropDown -> "AGENCY_CHANGED_ADD_INDUSTRIES_DROP_DOWN"
        AgencyAddedMarketsInMyProFilePortal -> "AGENCY_ADDED_MARKETS_IN_MY_PROFILE_PORTAL"
        AgencyChangedAddMarketsDropDown -> "AGENCY_CHANGED_ADD_MARKETS_DROP_DOWN"
        AgencyCheckedRecieveMailPromotionsMyproFile -> "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_MYPROFILE"
        AgencyCheckedRecieveMailPromotionsSignup -> "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_SIGNUP"
        AgencySelectedOptInBetaTestsAndMktResearch -> "AGENCY_SELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH"
        AgencySelectedOptInBetaTestsInMyProFilePortal -> "AGENCY_SELECTED_OPT_IN_BETA_TESTS_IN_MY_PROFILE_PORTAL"
        AgencySelectedOptInNewsInMyProFilePortal -> "AGENCY_SELECTED_OPT_IN_NEWS_IN_MY_PROFILE_PORTAL"
        AgencySelectedOptInNewsInvitationsAndPromos -> "AGENCY_SELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS"
        AgencySelectedOptInPerformanceSugInMyProFilePortal -> "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUG_IN_MY_PROFILE_PORTAL"
        AgencySelectedOptInPerformanceSuggestions -> "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS"
        AgencySelectedOptInSelectAllEmailNotifications -> "AGENCY_SELECTED_OPT_IN_SELECT_ALL_EMAIL_NOTIFICATIONS"
        AgencySelectedSelectAllOptInsInMyProFilePortal -> "AGENCY_SELECTED_SELECT_ALL_OPT_INS_IN_MY_PROFILE_PORTAL"
        AgencyClickedBackButtonOnConnectWithCompany -> "AGENCY_CLICKED_BACK_BUTTON_ON_CONNECT_WITH_COMPANY"
        AgencyClickedContinueToOverviewOnConnectWithCompany -> "AGENCY_CLICKED_CONTINUE_TO_OVERVIEW_ON_CONNECT_WITH_COMPANY"
        AgecnyClickedCreateMccConnectWithCompanyNotFound -> "AGECNY_CLICKED_CREATE_MCC_CONNECT_WITH_COMPANY_NOT_FOUND"
        AgecnyClickedGiveEditAccessConnectWithCompanyNotFound -> "AGECNY_CLICKED_GIVE_EDIT_ACCESS_CONNECT_WITH_COMPANY_NOT_FOUND"
        AgecnyClickedLogOutConnectWithCompanyNotFound -> "AGECNY_CLICKED_LOG_OUT_CONNECT_WITH_COMPANY_NOT_FOUND"
        AgencyClickedSkipForNowOnConnectWithCompanyPage -> "AGENCY_CLICKED_SKIP_FOR_NOW_ON_CONNECT_WITH_COMPANY_PAGE"
        AgencyClosedConnectedToCompanyXButtonWrongCompany -> "AGENCY_CLOSED_CONNECTED_TO_COMPANY_X_BUTTON_WRONG_COMPANY"
        AgencyCompletedFieldConnectWithCompany -> "AGENCY_COMPLETED_FIELD_CONNECT_WITH_COMPANY"
        AgecnyFoundCompanyToConnectWith -> "AGECNY_FOUND_COMPANY_TO_CONNECT_WITH"
        AgencySuccessfullyCreatedCompany -> "AGENCY_SUCCESSFULLY_CREATED_COMPANY"
        AgencyAddedNewCompanyLocation -> "AGENCY_ADDED_NEW_COMPANY_LOCATION"
        AgencyClickedCommUnityJoinNowLinkInPortalNotifications -> "AGENCY_CLICKED_COMMUNITY_JOIN_NOW_LINK_IN_PORTAL_NOTIFICATIONS"
        AgencyClickedConnectToCompanyLinkInPortalNotifications -> "AGENCY_CLICKED_CONNECT_TO_COMPANY_LINK_IN_PORTAL_NOTIFICATIONS"
        AgencyClickedGetCertifiedLinkInPortalNotifications -> "AGENCY_CLICKED_GET_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS"
        AgencyClickedGetVideoAdsCertifiedLinkInPortalNotifications -> "AGENCY_CLICKED_GET_VIDEO_ADS_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS"
        AgencyClickedLinkToMccLinkInPortalNotifications -> "AGENCY_CLICKED_LINK_TO_MCC_LINK_IN_PORTAL_NOTIFICATIONS"
        AgencyClickedInsightContentInPortal -> "AGENCY_CLICKED_INSIGHT_CONTENT_IN_PORTAL"
        AgencyClickedInsightsViewNowPitchDecksInPortal -> "AGENCY_CLICKED_INSIGHTS_VIEW_NOW_PITCH_DECKS_IN_PORTAL"
        AgencyClickedInsightsLeftNavInPortal -> "AGENCY_CLICKED_INSIGHTS_LEFT_NAV_IN_PORTAL"
        AgencyClickedInsightsUploadContent -> "AGENCY_CLICKED_INSIGHTS_UPLOAD_CONTENT"
        AgencyClickedInsightsViewedDeprecated -> "AGENCY_CLICKED_INSIGHTS_VIEWED_DEPRECATED"
        AgencyClickedCommUnityLeftNavInPortal -> "AGENCY_CLICKED_COMMUNITY_LEFT_NAV_IN_PORTAL"
        AgencyClickedJoinCommUnityButtonCommUnityPortal -> "AGENCY_CLICKED_JOIN_COMMUNITY_BUTTON_COMMUNITY_PORTAL"
        AgencyClickedCertificationsLeftNavInPortal -> "AGENCY_CLICKED_CERTIFICATIONS_LEFT_NAV_IN_PORTAL"
        AgencyClickedCertificationsProductLeftNavInPortal -> "AGENCY_CLICKED_CERTIFICATIONS_PRODUCT_LEFT_NAV_IN_PORTAL"
        AgencyClickedPartnerStatusLeftNavInPortal -> "AGENCY_CLICKED_PARTNER_STATUS_LEFT_NAV_IN_PORTAL"
        AgencyClickedPartnerStatusProductLeftNavInPortal -> "AGENCY_CLICKED_PARTNER_STATUS_PRODUCT_LEFT_NAV_IN_PORTAL"
        AgencyClickedOffersLeftNavInPortal -> "AGENCY_CLICKED_OFFERS_LEFT_NAV_IN_PORTAL"
        AgencyClickedSendButtonOnOffersPage -> "AGENCY_CLICKED_SEND_BUTTON_ON_OFFERS_PAGE"
        AgencyClickedExamDetailsOnCertAdwordsPage -> "AGENCY_CLICKED_EXAM_DETAILS_ON_CERT_ADWORDS_PAGE"
        AgencyClickedSeeExamsCertificationMainPage -> "AGENCY_CLICKED_SEE_EXAMS_CERTIFICATION_MAIN_PAGE"
        AgencyClickedTakeExamOnCertExamPage -> "AGENCY_CLICKED_TAKE_EXAM_ON_CERT_EXAM_PAGE"
        AgencyOpenedLastAdminDialog -> "AGENCY_OPENED_LAST_ADMIN_DIALOG"
        AgencyOpenedDialogWithNoUsers -> "AGENCY_OPENED_DIALOG_WITH_NO_USERS"
        AgencyPromotedUserToAdmin -> "AGENCY_PROMOTED_USER_TO_ADMIN"
        AgencyUnaffiliated -> "AGENCY_UNAFFILIATED"
        AgencyChangedRoles -> "AGENCY_CHANGED_ROLES"
        SmbClickedCompanyNameLinkToProFile -> "SMB_CLICKED_COMPANY_NAME_LINK_TO_PROFILE"
        SmbViewedAdwordsCertificate -> "SMB_VIEWED_ADWORDS_CERTIFICATE"
        SmbViewedAdwordsSearchCertificate -> "SMB_VIEWED_ADWORDS_SEARCH_CERTIFICATE"
        SmbViewedAdwordsDisplayCertificate -> "SMB_VIEWED_ADWORDS_DISPLAY_CERTIFICATE"
        SmbClickedAdwordsCertificateHelpIcon -> "SMB_CLICKED_ADWORDS_CERTIFICATE_HELP_ICON"
        SmbViewedAnalyticsCertificate -> "SMB_VIEWED_ANALYTICS_CERTIFICATE"
        SmbViewedDoubleClickCertificate -> "SMB_VIEWED_DOUBLECLICK_CERTIFICATE"
        SmbViewedMobileSitesCertificate -> "SMB_VIEWED_MOBILE_SITES_CERTIFICATE"
        SmbViewedVideoAdsCertificate -> "SMB_VIEWED_VIDEO_ADS_CERTIFICATE"
        SmbViewedShoppingCertificate -> "SMB_VIEWED_SHOPPING_CERTIFICATE"
        SmbClickedVideoAdsCertificateHelpIcon -> "SMB_CLICKED_VIDEO_ADS_CERTIFICATE_HELP_ICON"
        SmbViewedDigitalSalesCertificate -> "SMB_VIEWED_DIGITAL_SALES_CERTIFICATE"
        ClickedHelpAtBottom -> "CLICKED_HELP_AT_BOTTOM"
        ClickedHelpAtTop -> "CLICKED_HELP_AT_TOP"
        ClientError -> "CLIENT_ERROR"
        AgencyClickedLeftNavStories -> "AGENCY_CLICKED_LEFT_NAV_STORIES"
        Clicked -> "CLICKED"
        SmbViewedMobileCertificate -> "SMB_VIEWED_MOBILE_CERTIFICATE"
        AgencyFailedCompanyVerification -> "AGENCY_FAILED_COMPANY_VERIFICATION"
        VisitedLanding -> "VISITED_LANDING"
        VisitedGps -> "VISITED_GPS"
        VisitedAgencyPortal -> "VISITED_AGENCY_PORTAL"
        CancelledIndividualSignUp -> "CANCELLED_INDIVIDUAL_SIGN_UP"
        CancelledCompanySignUp -> "CANCELLED_COMPANY_SIGN_UP"
        AgencyClickedSignInButtonTop -> "AGENCY_CLICKED_SIGN_IN_BUTTON_TOP"
        AgencyClickedSaveAndContinueAtBotOfIncompleteProFile -> "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_INCOMPLETE_PROFILE"
        AgencyUnselectedOptInNewsInvitationsAndPromos -> "AGENCY_UNSELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS"
        AgencyUnselectedOptInBetaTestsAndMktResearch -> "AGENCY_UNSELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH"
        AgencyUnselectedOptInPerformanceSuggestions -> "AGENCY_UNSELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS"
        AgencySelectedOptOutUnselectAllEmailNotifications -> "AGENCY_SELECTED_OPT_OUT_UNSELECT_ALL_EMAIL_NOTIFICATIONS"
        AgencyLinkedIndividualMcc -> "AGENCY_LINKED_INDIVIDUAL_MCC"
        AgencySuggestedToUser -> "AGENCY_SUGGESTED_TO_USER"
        AgencyIgnoredSuggestedAgenciesAndSearched -> "AGENCY_IGNORED_SUGGESTED_AGENCIES_AND_SEARCHED"
        AgencyPickedSuggestedAgency -> "AGENCY_PICKED_SUGGESTED_AGENCY"
        AgencySearchedForAgencies -> "AGENCY_SEARCHED_FOR_AGENCIES"
        AgencyPickedSearchedAgency -> "AGENCY_PICKED_SEARCHED_AGENCY"
        AgencyDismissedAffiliationWidget -> "AGENCY_DISMISSED_AFFILIATION_WIDGET"
        AgencyClickedInsightsDownloadContent -> "AGENCY_CLICKED_INSIGHTS_DOWNLOAD_CONTENT"
        AgencyProgressInsightsViewContent -> "AGENCY_PROGRESS_INSIGHTS_VIEW_CONTENT"
        AgencyClickedCancelAcceptTosButton -> "AGENCY_CLICKED_CANCEL_ACCEPT_TOS_BUTTON"
        SmbEnteredWebsiteInContactPartnerForm -> "SMB_ENTERED_WEBSITE_IN_CONTACT_PARTNER_FORM"
        AgencySelectedOptInAfaMigration -> "AGENCY_SELECTED_OPT_IN_AFA_MIGRATION"
        AgencySelectedOptOutAfaMigration -> "AGENCY_SELECTED_OPT_OUT_AFA_MIGRATION"

instance FromJSON LogUserEventRequestEventAction where
    parseJSON = parseJSONText "LogUserEventRequestEventAction"

instance ToJSON LogUserEventRequestEventAction where
    toJSON = toJSONText

-- | Status of the offer.
data HistoricalOfferStatus
    = OfferStatusUnspecified
      -- ^ @OFFER_STATUS_UNSPECIFIED@
      -- Unset.
    | OfferStatusDistributed
      -- ^ @OFFER_STATUS_DISTRIBUTED@
      -- Offer distributed.
    | OfferStatusRedeemed
      -- ^ @OFFER_STATUS_REDEEMED@
      -- Offer redeemed.
    | OfferStatusAwarded
      -- ^ @OFFER_STATUS_AWARDED@
      -- Offer awarded.
    | OfferStatusExpired
      -- ^ @OFFER_STATUS_EXPIRED@
      -- Offer expired.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HistoricalOfferStatus

instance FromHttpApiData HistoricalOfferStatus where
    parseQueryParam = \case
        "OFFER_STATUS_UNSPECIFIED" -> Right OfferStatusUnspecified
        "OFFER_STATUS_DISTRIBUTED" -> Right OfferStatusDistributed
        "OFFER_STATUS_REDEEMED" -> Right OfferStatusRedeemed
        "OFFER_STATUS_AWARDED" -> Right OfferStatusAwarded
        "OFFER_STATUS_EXPIRED" -> Right OfferStatusExpired
        x -> Left ("Unable to parse HistoricalOfferStatus from: " <> x)

instance ToHttpApiData HistoricalOfferStatus where
    toQueryParam = \case
        OfferStatusUnspecified -> "OFFER_STATUS_UNSPECIFIED"
        OfferStatusDistributed -> "OFFER_STATUS_DISTRIBUTED"
        OfferStatusRedeemed -> "OFFER_STATUS_REDEEMED"
        OfferStatusAwarded -> "OFFER_STATUS_AWARDED"
        OfferStatusExpired -> "OFFER_STATUS_EXPIRED"

instance FromJSON HistoricalOfferStatus where
    parseJSON = parseJSONText "HistoricalOfferStatus"

instance ToJSON HistoricalOfferStatus where
    toJSON = toJSONText

-- | The public viewability status of the company\'s profile.
data CompanyProFileStatus
    = CompanyProFileStatusUnspecified
      -- ^ @COMPANY_PROFILE_STATUS_UNSPECIFIED@
      -- Unchosen.
    | Hidden
      -- ^ @HIDDEN@
      -- Company profile does not show up publicly.
    | Published
      -- ^ @PUBLISHED@
      -- Company profile can only be viewed by the profile\'s URL and not by
      -- Google Partner Search.
    | Searchable
      -- ^ @SEARCHABLE@
      -- Company profile can be viewed by the profile\'s URL and by Google
      -- Partner Search.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanyProFileStatus

instance FromHttpApiData CompanyProFileStatus where
    parseQueryParam = \case
        "COMPANY_PROFILE_STATUS_UNSPECIFIED" -> Right CompanyProFileStatusUnspecified
        "HIDDEN" -> Right Hidden
        "PUBLISHED" -> Right Published
        "SEARCHABLE" -> Right Searchable
        x -> Left ("Unable to parse CompanyProFileStatus from: " <> x)

instance ToHttpApiData CompanyProFileStatus where
    toQueryParam = \case
        CompanyProFileStatusUnspecified -> "COMPANY_PROFILE_STATUS_UNSPECIFIED"
        Hidden -> "HIDDEN"
        Published -> "PUBLISHED"
        Searchable -> "SEARCHABLE"

instance FromJSON CompanyProFileStatus where
    parseJSON = parseJSONText "CompanyProFileStatus"

instance ToJSON CompanyProFileStatus where
    toJSON = toJSONText

-- | Partner badge tier
data CompanyBadgeTier
    = BadgeTierNone
      -- ^ @BADGE_TIER_NONE@
      -- Tier badge is not set.
    | BadgeTierRegular
      -- ^ @BADGE_TIER_REGULAR@
      -- Agency has regular partner badge.
    | BadgeTierPremier
      -- ^ @BADGE_TIER_PREMIER@
      -- Agency has premier badge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanyBadgeTier

instance FromHttpApiData CompanyBadgeTier where
    parseQueryParam = \case
        "BADGE_TIER_NONE" -> Right BadgeTierNone
        "BADGE_TIER_REGULAR" -> Right BadgeTierRegular
        "BADGE_TIER_PREMIER" -> Right BadgeTierPremier
        x -> Left ("Unable to parse CompanyBadgeTier from: " <> x)

instance ToHttpApiData CompanyBadgeTier where
    toQueryParam = \case
        BadgeTierNone -> "BADGE_TIER_NONE"
        BadgeTierRegular -> "BADGE_TIER_REGULAR"
        BadgeTierPremier -> "BADGE_TIER_PREMIER"

instance FromJSON CompanyBadgeTier where
    parseJSON = parseJSONText "CompanyBadgeTier"

instance ToJSON CompanyBadgeTier where
    toJSON = toJSONText

-- | Whether the company is a Partner.
data CompanyRelationBadgeTier
    = CRBTBadgeTierNone
      -- ^ @BADGE_TIER_NONE@
      -- Tier badge is not set.
    | CRBTBadgeTierRegular
      -- ^ @BADGE_TIER_REGULAR@
      -- Agency has regular partner badge.
    | CRBTBadgeTierPremier
      -- ^ @BADGE_TIER_PREMIER@
      -- Agency has premier badge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanyRelationBadgeTier

instance FromHttpApiData CompanyRelationBadgeTier where
    parseQueryParam = \case
        "BADGE_TIER_NONE" -> Right CRBTBadgeTierNone
        "BADGE_TIER_REGULAR" -> Right CRBTBadgeTierRegular
        "BADGE_TIER_PREMIER" -> Right CRBTBadgeTierPremier
        x -> Left ("Unable to parse CompanyRelationBadgeTier from: " <> x)

instance ToHttpApiData CompanyRelationBadgeTier where
    toQueryParam = \case
        CRBTBadgeTierNone -> "BADGE_TIER_NONE"
        CRBTBadgeTierRegular -> "BADGE_TIER_REGULAR"
        CRBTBadgeTierPremier -> "BADGE_TIER_PREMIER"

instance FromJSON CompanyRelationBadgeTier where
    parseJSON = parseJSONText "CompanyRelationBadgeTier"

instance ToJSON CompanyRelationBadgeTier where
    toJSON = toJSONText

-- | The state of relationship, in terms of approvals.
data CompanyRelationState
    = UserCompanyReationStateNoneSpecified
      -- ^ @USER_COMPANY_REATION_STATE_NONE_SPECIFIED@
      -- Default unspecified value.
    | UserCompanyRelationStateAwaitEmail
      -- ^ @USER_COMPANY_RELATION_STATE_AWAIT_EMAIL@
      -- User has filled in a request to be associated with an company. Now
      -- waiting email confirmation.
    | UserCompanyRelationStateAwaitAdmin
      -- ^ @USER_COMPANY_RELATION_STATE_AWAIT_ADMIN@
      -- Pending approval from company. Email confirmation will not approve this
      -- one.
    | UserCompanyRelationStateApproved
      -- ^ @USER_COMPANY_RELATION_STATE_APPROVED@
      -- Approved by company.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanyRelationState

instance FromHttpApiData CompanyRelationState where
    parseQueryParam = \case
        "USER_COMPANY_REATION_STATE_NONE_SPECIFIED" -> Right UserCompanyReationStateNoneSpecified
        "USER_COMPANY_RELATION_STATE_AWAIT_EMAIL" -> Right UserCompanyRelationStateAwaitEmail
        "USER_COMPANY_RELATION_STATE_AWAIT_ADMIN" -> Right UserCompanyRelationStateAwaitAdmin
        "USER_COMPANY_RELATION_STATE_APPROVED" -> Right UserCompanyRelationStateApproved
        x -> Left ("Unable to parse CompanyRelationState from: " <> x)

instance ToHttpApiData CompanyRelationState where
    toQueryParam = \case
        UserCompanyReationStateNoneSpecified -> "USER_COMPANY_REATION_STATE_NONE_SPECIFIED"
        UserCompanyRelationStateAwaitEmail -> "USER_COMPANY_RELATION_STATE_AWAIT_EMAIL"
        UserCompanyRelationStateAwaitAdmin -> "USER_COMPANY_RELATION_STATE_AWAIT_ADMIN"
        UserCompanyRelationStateApproved -> "USER_COMPANY_RELATION_STATE_APPROVED"

instance FromJSON CompanyRelationState where
    parseJSON = parseJSONText "CompanyRelationState"

instance ToJSON CompanyRelationState where
    toJSON = toJSONText

-- | Type of offer country is eligible for.
data CountryOfferInfoOfferType
    = COIOTOfferTypeUnspecified
      -- ^ @OFFER_TYPE_UNSPECIFIED@
      -- Unset.
    | COIOTOfferTypeSpendXGetY
      -- ^ @OFFER_TYPE_SPEND_X_GET_Y@
      -- AdWords spend X get Y.
    | COIOTOfferTypeVideo
      -- ^ @OFFER_TYPE_VIDEO@
      -- Youtube video.
    | COIOTOfferTypeSpendMatch
      -- ^ @OFFER_TYPE_SPEND_MATCH@
      -- Spend Match up to Y.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CountryOfferInfoOfferType

instance FromHttpApiData CountryOfferInfoOfferType where
    parseQueryParam = \case
        "OFFER_TYPE_UNSPECIFIED" -> Right COIOTOfferTypeUnspecified
        "OFFER_TYPE_SPEND_X_GET_Y" -> Right COIOTOfferTypeSpendXGetY
        "OFFER_TYPE_VIDEO" -> Right COIOTOfferTypeVideo
        "OFFER_TYPE_SPEND_MATCH" -> Right COIOTOfferTypeSpendMatch
        x -> Left ("Unable to parse CountryOfferInfoOfferType from: " <> x)

instance ToHttpApiData CountryOfferInfoOfferType where
    toQueryParam = \case
        COIOTOfferTypeUnspecified -> "OFFER_TYPE_UNSPECIFIED"
        COIOTOfferTypeSpendXGetY -> "OFFER_TYPE_SPEND_X_GET_Y"
        COIOTOfferTypeVideo -> "OFFER_TYPE_VIDEO"
        COIOTOfferTypeSpendMatch -> "OFFER_TYPE_SPEND_MATCH"

instance FromJSON CountryOfferInfoOfferType where
    parseJSON = parseJSONText "CountryOfferInfoOfferType"

instance ToJSON CountryOfferInfoOfferType where
    toJSON = toJSONText

-- | The type of rank.
data RankType
    = RankTypeUnspecified
      -- ^ @RANK_TYPE_UNSPECIFIED@
      -- Unchosen.
    | RtFinalScore
      -- ^ @RT_FINAL_SCORE@
      -- Total final score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RankType

instance FromHttpApiData RankType where
    parseQueryParam = \case
        "RANK_TYPE_UNSPECIFIED" -> Right RankTypeUnspecified
        "RT_FINAL_SCORE" -> Right RtFinalScore
        x -> Left ("Unable to parse RankType from: " <> x)

instance ToHttpApiData RankType where
    toQueryParam = \case
        RankTypeUnspecified -> "RANK_TYPE_UNSPECIFIED"
        RtFinalScore -> "RT_FINAL_SCORE"

instance FromJSON RankType where
    parseJSON = parseJSONText "RankType"

instance ToJSON RankType where
    toJSON = toJSONText

-- | State of agency specialization.
data SpecializationStatusBadgeSpecializationState
    = BadgeSpecializationStateUnknown
      -- ^ @BADGE_SPECIALIZATION_STATE_UNKNOWN@
      -- Unknown state
    | BadgeSpecializationStatePassed
      -- ^ @BADGE_SPECIALIZATION_STATE_PASSED@
      -- Specialization passed
    | BadgeSpecializationStateNotPassed
      -- ^ @BADGE_SPECIALIZATION_STATE_NOT_PASSED@
      -- Specialization not passed
    | BadgeSpecializationStateInGrace
      -- ^ @BADGE_SPECIALIZATION_STATE_IN_GRACE@
      -- Specialization in grace
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpecializationStatusBadgeSpecializationState

instance FromHttpApiData SpecializationStatusBadgeSpecializationState where
    parseQueryParam = \case
        "BADGE_SPECIALIZATION_STATE_UNKNOWN" -> Right BadgeSpecializationStateUnknown
        "BADGE_SPECIALIZATION_STATE_PASSED" -> Right BadgeSpecializationStatePassed
        "BADGE_SPECIALIZATION_STATE_NOT_PASSED" -> Right BadgeSpecializationStateNotPassed
        "BADGE_SPECIALIZATION_STATE_IN_GRACE" -> Right BadgeSpecializationStateInGrace
        x -> Left ("Unable to parse SpecializationStatusBadgeSpecializationState from: " <> x)

instance ToHttpApiData SpecializationStatusBadgeSpecializationState where
    toQueryParam = \case
        BadgeSpecializationStateUnknown -> "BADGE_SPECIALIZATION_STATE_UNKNOWN"
        BadgeSpecializationStatePassed -> "BADGE_SPECIALIZATION_STATE_PASSED"
        BadgeSpecializationStateNotPassed -> "BADGE_SPECIALIZATION_STATE_NOT_PASSED"
        BadgeSpecializationStateInGrace -> "BADGE_SPECIALIZATION_STATE_IN_GRACE"

instance FromJSON SpecializationStatusBadgeSpecializationState where
    parseJSON = parseJSONText "SpecializationStatusBadgeSpecializationState"

instance ToJSON SpecializationStatusBadgeSpecializationState where
    toJSON = toJSONText

-- | Type of offer.
data AvailableOfferOfferType
    = AOOTOfferTypeUnspecified
      -- ^ @OFFER_TYPE_UNSPECIFIED@
      -- Unset.
    | AOOTOfferTypeSpendXGetY
      -- ^ @OFFER_TYPE_SPEND_X_GET_Y@
      -- AdWords spend X get Y.
    | AOOTOfferTypeVideo
      -- ^ @OFFER_TYPE_VIDEO@
      -- Youtube video.
    | AOOTOfferTypeSpendMatch
      -- ^ @OFFER_TYPE_SPEND_MATCH@
      -- Spend Match up to Y.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AvailableOfferOfferType

instance FromHttpApiData AvailableOfferOfferType where
    parseQueryParam = \case
        "OFFER_TYPE_UNSPECIFIED" -> Right AOOTOfferTypeUnspecified
        "OFFER_TYPE_SPEND_X_GET_Y" -> Right AOOTOfferTypeSpendXGetY
        "OFFER_TYPE_VIDEO" -> Right AOOTOfferTypeVideo
        "OFFER_TYPE_SPEND_MATCH" -> Right AOOTOfferTypeSpendMatch
        x -> Left ("Unable to parse AvailableOfferOfferType from: " <> x)

instance ToHttpApiData AvailableOfferOfferType where
    toQueryParam = \case
        AOOTOfferTypeUnspecified -> "OFFER_TYPE_UNSPECIFIED"
        AOOTOfferTypeSpendXGetY -> "OFFER_TYPE_SPEND_X_GET_Y"
        AOOTOfferTypeVideo -> "OFFER_TYPE_VIDEO"
        AOOTOfferTypeSpendMatch -> "OFFER_TYPE_SPEND_MATCH"

instance FromJSON AvailableOfferOfferType where
    parseJSON = parseJSONText "AvailableOfferOfferType"

instance ToJSON AvailableOfferOfferType where
    toJSON = toJSONText

-- | The specialization this status is for.
data SpecializationStatusBadgeSpecialization
    = BadgeSpecializationUnknown
      -- ^ @BADGE_SPECIALIZATION_UNKNOWN@
      -- Unknown specialization
    | BadgeSpecializationAdwordsSearch
      -- ^ @BADGE_SPECIALIZATION_ADWORDS_SEARCH@
      -- AdWords Search specialization
    | BadgeSpecializationAdwordsDisplay
      -- ^ @BADGE_SPECIALIZATION_ADWORDS_DISPLAY@
      -- AdWords Display specialization
    | BadgeSpecializationAdwordsMobile
      -- ^ @BADGE_SPECIALIZATION_ADWORDS_MOBILE@
      -- AdWords Mobile specialization
    | BadgeSpecializationAdwordsVideo
      -- ^ @BADGE_SPECIALIZATION_ADWORDS_VIDEO@
      -- AdWords Video specialization
    | BadgeSpecializationAdwordsShopping
      -- ^ @BADGE_SPECIALIZATION_ADWORDS_SHOPPING@
      -- AdWords Shopping specialization
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpecializationStatusBadgeSpecialization

instance FromHttpApiData SpecializationStatusBadgeSpecialization where
    parseQueryParam = \case
        "BADGE_SPECIALIZATION_UNKNOWN" -> Right BadgeSpecializationUnknown
        "BADGE_SPECIALIZATION_ADWORDS_SEARCH" -> Right BadgeSpecializationAdwordsSearch
        "BADGE_SPECIALIZATION_ADWORDS_DISPLAY" -> Right BadgeSpecializationAdwordsDisplay
        "BADGE_SPECIALIZATION_ADWORDS_MOBILE" -> Right BadgeSpecializationAdwordsMobile
        "BADGE_SPECIALIZATION_ADWORDS_VIDEO" -> Right BadgeSpecializationAdwordsVideo
        "BADGE_SPECIALIZATION_ADWORDS_SHOPPING" -> Right BadgeSpecializationAdwordsShopping
        x -> Left ("Unable to parse SpecializationStatusBadgeSpecialization from: " <> x)

instance ToHttpApiData SpecializationStatusBadgeSpecialization where
    toQueryParam = \case
        BadgeSpecializationUnknown -> "BADGE_SPECIALIZATION_UNKNOWN"
        BadgeSpecializationAdwordsSearch -> "BADGE_SPECIALIZATION_ADWORDS_SEARCH"
        BadgeSpecializationAdwordsDisplay -> "BADGE_SPECIALIZATION_ADWORDS_DISPLAY"
        BadgeSpecializationAdwordsMobile -> "BADGE_SPECIALIZATION_ADWORDS_MOBILE"
        BadgeSpecializationAdwordsVideo -> "BADGE_SPECIALIZATION_ADWORDS_VIDEO"
        BadgeSpecializationAdwordsShopping -> "BADGE_SPECIALIZATION_ADWORDS_SHOPPING"

instance FromJSON SpecializationStatusBadgeSpecialization where
    parseJSON = parseJSONText "SpecializationStatusBadgeSpecialization"

instance ToJSON SpecializationStatusBadgeSpecialization where
    toJSON = toJSONText

-- | The category the action belongs to.
data LogUserEventRequestEventCategory
    = EventCategoryUnspecified
      -- ^ @EVENT_CATEGORY_UNSPECIFIED@
      -- Unchosen.
    | GooglePartnerSearch
      -- ^ @GOOGLE_PARTNER_SEARCH@
      -- Google Partner Search category.
    | GooglePartnerSignupFlow
      -- ^ @GOOGLE_PARTNER_SIGNUP_FLOW@
      -- Google Partner sign-up flow category.
    | GooglePartnerPortal
      -- ^ @GOOGLE_PARTNER_PORTAL@
      -- Google Partner portal category.
    | GooglePartnerPortalMyProFile
      -- ^ @GOOGLE_PARTNER_PORTAL_MY_PROFILE@
      -- Google Partner portal my-profile category.
    | GooglePartnerPortalCertifications
      -- ^ @GOOGLE_PARTNER_PORTAL_CERTIFICATIONS@
      -- Google Partner portal certifications category.
    | GooglePartnerPortalCommUnity
      -- ^ @GOOGLE_PARTNER_PORTAL_COMMUNITY@
      -- Google Partner portal community category.
    | GooglePartnerPortalInsights
      -- ^ @GOOGLE_PARTNER_PORTAL_INSIGHTS@
      -- Google Partner portal insights category.
    | GooglePartnerPortalClients
      -- ^ @GOOGLE_PARTNER_PORTAL_CLIENTS@
      -- Google Partner portal clients category.
    | GooglePartnerPublicUserProFile
      -- ^ @GOOGLE_PARTNER_PUBLIC_USER_PROFILE@
      -- Google Partner portal public user profile category.
    | GooglePartnerPanel
      -- ^ @GOOGLE_PARTNER_PANEL@
      -- Google Partner panel category.
    | GooglePartnerPortalLastAdminDialog
      -- ^ @GOOGLE_PARTNER_PORTAL_LAST_ADMIN_DIALOG@
      -- Google Partner portal last admin dialog category.
    | GooglePartnerClient
      -- ^ @GOOGLE_PARTNER_CLIENT@
      -- Google Partner client category.
    | GooglePartnerPortalCompanyProFile
      -- ^ @GOOGLE_PARTNER_PORTAL_COMPANY_PROFILE@
      -- Google Partner portal company profile category.
    | ExternalLinks
      -- ^ @EXTERNAL_LINKS@
      -- External links category.
    | GooglePartnerLanding
      -- ^ @GOOGLE_PARTNER_LANDING@
      -- Google Partner landing category.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogUserEventRequestEventCategory

instance FromHttpApiData LogUserEventRequestEventCategory where
    parseQueryParam = \case
        "EVENT_CATEGORY_UNSPECIFIED" -> Right EventCategoryUnspecified
        "GOOGLE_PARTNER_SEARCH" -> Right GooglePartnerSearch
        "GOOGLE_PARTNER_SIGNUP_FLOW" -> Right GooglePartnerSignupFlow
        "GOOGLE_PARTNER_PORTAL" -> Right GooglePartnerPortal
        "GOOGLE_PARTNER_PORTAL_MY_PROFILE" -> Right GooglePartnerPortalMyProFile
        "GOOGLE_PARTNER_PORTAL_CERTIFICATIONS" -> Right GooglePartnerPortalCertifications
        "GOOGLE_PARTNER_PORTAL_COMMUNITY" -> Right GooglePartnerPortalCommUnity
        "GOOGLE_PARTNER_PORTAL_INSIGHTS" -> Right GooglePartnerPortalInsights
        "GOOGLE_PARTNER_PORTAL_CLIENTS" -> Right GooglePartnerPortalClients
        "GOOGLE_PARTNER_PUBLIC_USER_PROFILE" -> Right GooglePartnerPublicUserProFile
        "GOOGLE_PARTNER_PANEL" -> Right GooglePartnerPanel
        "GOOGLE_PARTNER_PORTAL_LAST_ADMIN_DIALOG" -> Right GooglePartnerPortalLastAdminDialog
        "GOOGLE_PARTNER_CLIENT" -> Right GooglePartnerClient
        "GOOGLE_PARTNER_PORTAL_COMPANY_PROFILE" -> Right GooglePartnerPortalCompanyProFile
        "EXTERNAL_LINKS" -> Right ExternalLinks
        "GOOGLE_PARTNER_LANDING" -> Right GooglePartnerLanding
        x -> Left ("Unable to parse LogUserEventRequestEventCategory from: " <> x)

instance ToHttpApiData LogUserEventRequestEventCategory where
    toQueryParam = \case
        EventCategoryUnspecified -> "EVENT_CATEGORY_UNSPECIFIED"
        GooglePartnerSearch -> "GOOGLE_PARTNER_SEARCH"
        GooglePartnerSignupFlow -> "GOOGLE_PARTNER_SIGNUP_FLOW"
        GooglePartnerPortal -> "GOOGLE_PARTNER_PORTAL"
        GooglePartnerPortalMyProFile -> "GOOGLE_PARTNER_PORTAL_MY_PROFILE"
        GooglePartnerPortalCertifications -> "GOOGLE_PARTNER_PORTAL_CERTIFICATIONS"
        GooglePartnerPortalCommUnity -> "GOOGLE_PARTNER_PORTAL_COMMUNITY"
        GooglePartnerPortalInsights -> "GOOGLE_PARTNER_PORTAL_INSIGHTS"
        GooglePartnerPortalClients -> "GOOGLE_PARTNER_PORTAL_CLIENTS"
        GooglePartnerPublicUserProFile -> "GOOGLE_PARTNER_PUBLIC_USER_PROFILE"
        GooglePartnerPanel -> "GOOGLE_PARTNER_PANEL"
        GooglePartnerPortalLastAdminDialog -> "GOOGLE_PARTNER_PORTAL_LAST_ADMIN_DIALOG"
        GooglePartnerClient -> "GOOGLE_PARTNER_CLIENT"
        GooglePartnerPortalCompanyProFile -> "GOOGLE_PARTNER_PORTAL_COMPANY_PROFILE"
        ExternalLinks -> "EXTERNAL_LINKS"
        GooglePartnerLanding -> "GOOGLE_PARTNER_LANDING"

instance FromJSON LogUserEventRequestEventCategory where
    parseJSON = parseJSONText "LogUserEventRequestEventCategory"

instance ToJSON LogUserEventRequestEventCategory where
    toJSON = toJSONText

-- | Type of offer.
data HistoricalOfferOfferType
    = HOOTOfferTypeUnspecified
      -- ^ @OFFER_TYPE_UNSPECIFIED@
      -- Unset.
    | HOOTOfferTypeSpendXGetY
      -- ^ @OFFER_TYPE_SPEND_X_GET_Y@
      -- AdWords spend X get Y.
    | HOOTOfferTypeVideo
      -- ^ @OFFER_TYPE_VIDEO@
      -- Youtube video.
    | HOOTOfferTypeSpendMatch
      -- ^ @OFFER_TYPE_SPEND_MATCH@
      -- Spend Match up to Y.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HistoricalOfferOfferType

instance FromHttpApiData HistoricalOfferOfferType where
    parseQueryParam = \case
        "OFFER_TYPE_UNSPECIFIED" -> Right HOOTOfferTypeUnspecified
        "OFFER_TYPE_SPEND_X_GET_Y" -> Right HOOTOfferTypeSpendXGetY
        "OFFER_TYPE_VIDEO" -> Right HOOTOfferTypeVideo
        "OFFER_TYPE_SPEND_MATCH" -> Right HOOTOfferTypeSpendMatch
        x -> Left ("Unable to parse HistoricalOfferOfferType from: " <> x)

instance ToHttpApiData HistoricalOfferOfferType where
    toQueryParam = \case
        HOOTOfferTypeUnspecified -> "OFFER_TYPE_UNSPECIFIED"
        HOOTOfferTypeSpendXGetY -> "OFFER_TYPE_SPEND_X_GET_Y"
        HOOTOfferTypeVideo -> "OFFER_TYPE_VIDEO"
        HOOTOfferTypeSpendMatch -> "OFFER_TYPE_SPEND_MATCH"

instance FromJSON HistoricalOfferOfferType where
    parseJSON = parseJSONText "HistoricalOfferOfferType"

instance ToJSON HistoricalOfferOfferType where
    toJSON = toJSONText

-- | The type of the certification.
data CertificationStatusType
    = CertificationTypeUnspecified
      -- ^ @CERTIFICATION_TYPE_UNSPECIFIED@
      -- Unchosen.
    | CtAdwords
      -- ^ @CT_ADWORDS@
      -- AdWords certified.
    | CtYouTube
      -- ^ @CT_YOUTUBE@
      -- YouTube certified.
    | CtVideoads
      -- ^ @CT_VIDEOADS@
      -- VideoAds certified.
    | CtAnalytics
      -- ^ @CT_ANALYTICS@
      -- Analytics certified.
    | CtDoubleClick
      -- ^ @CT_DOUBLECLICK@
      -- DoubleClick certified.
    | CtShopping
      -- ^ @CT_SHOPPING@
      -- Shopping certified.
    | CtMobile
      -- ^ @CT_MOBILE@
      -- Mobile certified.
    | CtDigitalSales
      -- ^ @CT_DIGITAL_SALES@
      -- Digital sales certified.
    | CtAdwordsSearch
      -- ^ @CT_ADWORDS_SEARCH@
      -- AdWords Search certified.
    | CtAdwordsDisplay
      -- ^ @CT_ADWORDS_DISPLAY@
      -- AdWords Display certified.
    | CtMobileSites
      -- ^ @CT_MOBILE_SITES@
      -- Mobile Sites certified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CertificationStatusType

instance FromHttpApiData CertificationStatusType where
    parseQueryParam = \case
        "CERTIFICATION_TYPE_UNSPECIFIED" -> Right CertificationTypeUnspecified
        "CT_ADWORDS" -> Right CtAdwords
        "CT_YOUTUBE" -> Right CtYouTube
        "CT_VIDEOADS" -> Right CtVideoads
        "CT_ANALYTICS" -> Right CtAnalytics
        "CT_DOUBLECLICK" -> Right CtDoubleClick
        "CT_SHOPPING" -> Right CtShopping
        "CT_MOBILE" -> Right CtMobile
        "CT_DIGITAL_SALES" -> Right CtDigitalSales
        "CT_ADWORDS_SEARCH" -> Right CtAdwordsSearch
        "CT_ADWORDS_DISPLAY" -> Right CtAdwordsDisplay
        "CT_MOBILE_SITES" -> Right CtMobileSites
        x -> Left ("Unable to parse CertificationStatusType from: " <> x)

instance ToHttpApiData CertificationStatusType where
    toQueryParam = \case
        CertificationTypeUnspecified -> "CERTIFICATION_TYPE_UNSPECIFIED"
        CtAdwords -> "CT_ADWORDS"
        CtYouTube -> "CT_YOUTUBE"
        CtVideoads -> "CT_VIDEOADS"
        CtAnalytics -> "CT_ANALYTICS"
        CtDoubleClick -> "CT_DOUBLECLICK"
        CtShopping -> "CT_SHOPPING"
        CtMobile -> "CT_MOBILE"
        CtDigitalSales -> "CT_DIGITAL_SALES"
        CtAdwordsSearch -> "CT_ADWORDS_SEARCH"
        CtAdwordsDisplay -> "CT_ADWORDS_DISPLAY"
        CtMobileSites -> "CT_MOBILE_SITES"

instance FromJSON CertificationStatusType where
    parseJSON = parseJSONText "CertificationStatusType"

instance ToJSON CertificationStatusType where
    toJSON = toJSONText

-- | The outcome of <https://www.google.com/recaptcha/ reCaptcha> validation.
data CreateLeadResponseRecaptchaStatus
    = RecaptchaStatusUnspecified
      -- ^ @RECAPTCHA_STATUS_UNSPECIFIED@
      -- Unchosen.
    | RsNotNeeded
      -- ^ @RS_NOT_NEEDED@
      -- No reCaptcha validation needed.
    | RsPassed
      -- ^ @RS_PASSED@
      -- reCaptcha challenge passed.
    | RsFailed
      -- ^ @RS_FAILED@
      -- reCaptcha challenge failed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateLeadResponseRecaptchaStatus

instance FromHttpApiData CreateLeadResponseRecaptchaStatus where
    parseQueryParam = \case
        "RECAPTCHA_STATUS_UNSPECIFIED" -> Right RecaptchaStatusUnspecified
        "RS_NOT_NEEDED" -> Right RsNotNeeded
        "RS_PASSED" -> Right RsPassed
        "RS_FAILED" -> Right RsFailed
        x -> Left ("Unable to parse CreateLeadResponseRecaptchaStatus from: " <> x)

instance ToHttpApiData CreateLeadResponseRecaptchaStatus where
    toQueryParam = \case
        RecaptchaStatusUnspecified -> "RECAPTCHA_STATUS_UNSPECIFIED"
        RsNotNeeded -> "RS_NOT_NEEDED"
        RsPassed -> "RS_PASSED"
        RsFailed -> "RS_FAILED"

instance FromJSON CreateLeadResponseRecaptchaStatus where
    parseJSON = parseJSONText "CreateLeadResponseRecaptchaStatus"

instance ToJSON CreateLeadResponseRecaptchaStatus where
    toJSON = toJSONText

-- | The type of the exam.
data ExamStatusExamType
    = CertificationExamTypeUnspecified
      -- ^ @CERTIFICATION_EXAM_TYPE_UNSPECIFIED@
      -- Unchosen.
    | CetAdwordsFundamentals
      -- ^ @CET_ADWORDS_FUNDAMENTALS@
      -- Adwords Fundamentals exam.
    | CetAdwordsAdvancedSearch
      -- ^ @CET_ADWORDS_ADVANCED_SEARCH@
      -- AdWords advanced search exam.
    | CetAdwordsAdvancedDisplay
      -- ^ @CET_ADWORDS_ADVANCED_DISPLAY@
      -- AdWords advanced display exam.
    | CetVideoAds
      -- ^ @CET_VIDEO_ADS@
      -- VideoAds exam.
    | CetDoubleClick
      -- ^ @CET_DOUBLECLICK@
      -- DoubleClick exam.
    | CetAnalytics
      -- ^ @CET_ANALYTICS@
      -- Analytics exam.
    | CetShopping
      -- ^ @CET_SHOPPING@
      -- Shopping exam.
    | CetMobile
      -- ^ @CET_MOBILE@
      -- Mobile exam.
    | CetDigitalSales
      -- ^ @CET_DIGITAL_SALES@
      -- Digital Sales exam.
    | CetMobileSites
      -- ^ @CET_MOBILE_SITES@
      -- Mobile Sites exam.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExamStatusExamType

instance FromHttpApiData ExamStatusExamType where
    parseQueryParam = \case
        "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" -> Right CertificationExamTypeUnspecified
        "CET_ADWORDS_FUNDAMENTALS" -> Right CetAdwordsFundamentals
        "CET_ADWORDS_ADVANCED_SEARCH" -> Right CetAdwordsAdvancedSearch
        "CET_ADWORDS_ADVANCED_DISPLAY" -> Right CetAdwordsAdvancedDisplay
        "CET_VIDEO_ADS" -> Right CetVideoAds
        "CET_DOUBLECLICK" -> Right CetDoubleClick
        "CET_ANALYTICS" -> Right CetAnalytics
        "CET_SHOPPING" -> Right CetShopping
        "CET_MOBILE" -> Right CetMobile
        "CET_DIGITAL_SALES" -> Right CetDigitalSales
        "CET_MOBILE_SITES" -> Right CetMobileSites
        x -> Left ("Unable to parse ExamStatusExamType from: " <> x)

instance ToHttpApiData ExamStatusExamType where
    toQueryParam = \case
        CertificationExamTypeUnspecified -> "CERTIFICATION_EXAM_TYPE_UNSPECIFIED"
        CetAdwordsFundamentals -> "CET_ADWORDS_FUNDAMENTALS"
        CetAdwordsAdvancedSearch -> "CET_ADWORDS_ADVANCED_SEARCH"
        CetAdwordsAdvancedDisplay -> "CET_ADWORDS_ADVANCED_DISPLAY"
        CetVideoAds -> "CET_VIDEO_ADS"
        CetDoubleClick -> "CET_DOUBLECLICK"
        CetAnalytics -> "CET_ANALYTICS"
        CetShopping -> "CET_SHOPPING"
        CetMobile -> "CET_MOBILE"
        CetDigitalSales -> "CET_DIGITAL_SALES"
        CetMobileSites -> "CET_MOBILE_SITES"

instance FromJSON ExamStatusExamType where
    parseJSON = parseJSONText "ExamStatusExamType"

instance ToJSON ExamStatusExamType where
    toJSON = toJSONText

-- | Reason why no Offers are available.
data ListOffersResponseNoOfferReason
    = NoOfferReasonUnspecified
      -- ^ @NO_OFFER_REASON_UNSPECIFIED@
      -- Unset.
    | NoOfferReasonNoMcc
      -- ^ @NO_OFFER_REASON_NO_MCC@
      -- Not an MCC.
    | NoOfferReasonLimitReached
      -- ^ @NO_OFFER_REASON_LIMIT_REACHED@
      -- Offer limit has been reached.
    | NoOfferReasonIneligible
      -- ^ @NO_OFFER_REASON_INELIGIBLE@
      -- Ineligible for offers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListOffersResponseNoOfferReason

instance FromHttpApiData ListOffersResponseNoOfferReason where
    parseQueryParam = \case
        "NO_OFFER_REASON_UNSPECIFIED" -> Right NoOfferReasonUnspecified
        "NO_OFFER_REASON_NO_MCC" -> Right NoOfferReasonNoMcc
        "NO_OFFER_REASON_LIMIT_REACHED" -> Right NoOfferReasonLimitReached
        "NO_OFFER_REASON_INELIGIBLE" -> Right NoOfferReasonIneligible
        x -> Left ("Unable to parse ListOffersResponseNoOfferReason from: " <> x)

instance ToHttpApiData ListOffersResponseNoOfferReason where
    toQueryParam = \case
        NoOfferReasonUnspecified -> "NO_OFFER_REASON_UNSPECIFIED"
        NoOfferReasonNoMcc -> "NO_OFFER_REASON_NO_MCC"
        NoOfferReasonLimitReached -> "NO_OFFER_REASON_LIMIT_REACHED"
        NoOfferReasonIneligible -> "NO_OFFER_REASON_INELIGIBLE"

instance FromJSON ListOffersResponseNoOfferReason where
    parseJSON = parseJSONText "ListOffersResponseNoOfferReason"

instance ToJSON ListOffersResponseNoOfferReason where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of certification exam.
data CertificationExamStatusType
    = CESTCertificationExamTypeUnspecified
      -- ^ @CERTIFICATION_EXAM_TYPE_UNSPECIFIED@
      -- Unchosen.
    | CESTCetAdwordsFundamentals
      -- ^ @CET_ADWORDS_FUNDAMENTALS@
      -- Adwords Fundamentals exam.
    | CESTCetAdwordsAdvancedSearch
      -- ^ @CET_ADWORDS_ADVANCED_SEARCH@
      -- AdWords advanced search exam.
    | CESTCetAdwordsAdvancedDisplay
      -- ^ @CET_ADWORDS_ADVANCED_DISPLAY@
      -- AdWords advanced display exam.
    | CESTCetVideoAds
      -- ^ @CET_VIDEO_ADS@
      -- VideoAds exam.
    | CESTCetDoubleClick
      -- ^ @CET_DOUBLECLICK@
      -- DoubleClick exam.
    | CESTCetAnalytics
      -- ^ @CET_ANALYTICS@
      -- Analytics exam.
    | CESTCetShopping
      -- ^ @CET_SHOPPING@
      -- Shopping exam.
    | CESTCetMobile
      -- ^ @CET_MOBILE@
      -- Mobile exam.
    | CESTCetDigitalSales
      -- ^ @CET_DIGITAL_SALES@
      -- Digital Sales exam.
    | CESTCetMobileSites
      -- ^ @CET_MOBILE_SITES@
      -- Mobile Sites exam.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CertificationExamStatusType

instance FromHttpApiData CertificationExamStatusType where
    parseQueryParam = \case
        "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" -> Right CESTCertificationExamTypeUnspecified
        "CET_ADWORDS_FUNDAMENTALS" -> Right CESTCetAdwordsFundamentals
        "CET_ADWORDS_ADVANCED_SEARCH" -> Right CESTCetAdwordsAdvancedSearch
        "CET_ADWORDS_ADVANCED_DISPLAY" -> Right CESTCetAdwordsAdvancedDisplay
        "CET_VIDEO_ADS" -> Right CESTCetVideoAds
        "CET_DOUBLECLICK" -> Right CESTCetDoubleClick
        "CET_ANALYTICS" -> Right CESTCetAnalytics
        "CET_SHOPPING" -> Right CESTCetShopping
        "CET_MOBILE" -> Right CESTCetMobile
        "CET_DIGITAL_SALES" -> Right CESTCetDigitalSales
        "CET_MOBILE_SITES" -> Right CESTCetMobileSites
        x -> Left ("Unable to parse CertificationExamStatusType from: " <> x)

instance ToHttpApiData CertificationExamStatusType where
    toQueryParam = \case
        CESTCertificationExamTypeUnspecified -> "CERTIFICATION_EXAM_TYPE_UNSPECIFIED"
        CESTCetAdwordsFundamentals -> "CET_ADWORDS_FUNDAMENTALS"
        CESTCetAdwordsAdvancedSearch -> "CET_ADWORDS_ADVANCED_SEARCH"
        CESTCetAdwordsAdvancedDisplay -> "CET_ADWORDS_ADVANCED_DISPLAY"
        CESTCetVideoAds -> "CET_VIDEO_ADS"
        CESTCetDoubleClick -> "CET_DOUBLECLICK"
        CESTCetAnalytics -> "CET_ANALYTICS"
        CESTCetShopping -> "CET_SHOPPING"
        CESTCetMobile -> "CET_MOBILE"
        CESTCetDigitalSales -> "CET_DIGITAL_SALES"
        CESTCetMobileSites -> "CET_MOBILE_SITES"

instance FromJSON CertificationExamStatusType where
    parseJSON = parseJSONText "CertificationExamStatusType"

instance ToJSON CertificationExamStatusType where
    toJSON = toJSONText

-- | Message level of client message.
data LogMessageRequestLevel
    = MessageLevelUnspecified
      -- ^ @MESSAGE_LEVEL_UNSPECIFIED@
      -- Unchosen.
    | MlFine
      -- ^ @ML_FINE@
      -- Message level for tracing information.
    | MlInfo
      -- ^ @ML_INFO@
      -- Message level for informational messages.
    | MlWarning
      -- ^ @ML_WARNING@
      -- Message level for potential problems.
    | MlSevere
      -- ^ @ML_SEVERE@
      -- Message level for serious failures.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogMessageRequestLevel

instance FromHttpApiData LogMessageRequestLevel where
    parseQueryParam = \case
        "MESSAGE_LEVEL_UNSPECIFIED" -> Right MessageLevelUnspecified
        "ML_FINE" -> Right MlFine
        "ML_INFO" -> Right MlInfo
        "ML_WARNING" -> Right MlWarning
        "ML_SEVERE" -> Right MlSevere
        x -> Left ("Unable to parse LogMessageRequestLevel from: " <> x)

instance ToHttpApiData LogMessageRequestLevel where
    toQueryParam = \case
        MessageLevelUnspecified -> "MESSAGE_LEVEL_UNSPECIFIED"
        MlFine -> "ML_FINE"
        MlInfo -> "ML_INFO"
        MlWarning -> "ML_WARNING"
        MlSevere -> "ML_SEVERE"

instance FromJSON LogMessageRequestLevel where
    parseJSON = parseJSONText "LogMessageRequestLevel"

instance ToJSON LogMessageRequestLevel where
    toJSON = toJSONText

-- | The type of certification, the area of expertise.
data CertificationCertificationType
    = CCTCertificationTypeUnspecified
      -- ^ @CERTIFICATION_TYPE_UNSPECIFIED@
      -- Unchosen.
    | CCTCtAdwords
      -- ^ @CT_ADWORDS@
      -- AdWords certified.
    | CCTCtYouTube
      -- ^ @CT_YOUTUBE@
      -- YouTube certified.
    | CCTCtVideoads
      -- ^ @CT_VIDEOADS@
      -- VideoAds certified.
    | CCTCtAnalytics
      -- ^ @CT_ANALYTICS@
      -- Analytics certified.
    | CCTCtDoubleClick
      -- ^ @CT_DOUBLECLICK@
      -- DoubleClick certified.
    | CCTCtShopping
      -- ^ @CT_SHOPPING@
      -- Shopping certified.
    | CCTCtMobile
      -- ^ @CT_MOBILE@
      -- Mobile certified.
    | CCTCtDigitalSales
      -- ^ @CT_DIGITAL_SALES@
      -- Digital sales certified.
    | CCTCtAdwordsSearch
      -- ^ @CT_ADWORDS_SEARCH@
      -- AdWords Search certified.
    | CCTCtAdwordsDisplay
      -- ^ @CT_ADWORDS_DISPLAY@
      -- AdWords Display certified.
    | CCTCtMobileSites
      -- ^ @CT_MOBILE_SITES@
      -- Mobile Sites certified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CertificationCertificationType

instance FromHttpApiData CertificationCertificationType where
    parseQueryParam = \case
        "CERTIFICATION_TYPE_UNSPECIFIED" -> Right CCTCertificationTypeUnspecified
        "CT_ADWORDS" -> Right CCTCtAdwords
        "CT_YOUTUBE" -> Right CCTCtYouTube
        "CT_VIDEOADS" -> Right CCTCtVideoads
        "CT_ANALYTICS" -> Right CCTCtAnalytics
        "CT_DOUBLECLICK" -> Right CCTCtDoubleClick
        "CT_SHOPPING" -> Right CCTCtShopping
        "CT_MOBILE" -> Right CCTCtMobile
        "CT_DIGITAL_SALES" -> Right CCTCtDigitalSales
        "CT_ADWORDS_SEARCH" -> Right CCTCtAdwordsSearch
        "CT_ADWORDS_DISPLAY" -> Right CCTCtAdwordsDisplay
        "CT_MOBILE_SITES" -> Right CCTCtMobileSites
        x -> Left ("Unable to parse CertificationCertificationType from: " <> x)

instance ToHttpApiData CertificationCertificationType where
    toQueryParam = \case
        CCTCertificationTypeUnspecified -> "CERTIFICATION_TYPE_UNSPECIFIED"
        CCTCtAdwords -> "CT_ADWORDS"
        CCTCtYouTube -> "CT_YOUTUBE"
        CCTCtVideoads -> "CT_VIDEOADS"
        CCTCtAnalytics -> "CT_ANALYTICS"
        CCTCtDoubleClick -> "CT_DOUBLECLICK"
        CCTCtShopping -> "CT_SHOPPING"
        CCTCtMobile -> "CT_MOBILE"
        CCTCtDigitalSales -> "CT_DIGITAL_SALES"
        CCTCtAdwordsSearch -> "CT_ADWORDS_SEARCH"
        CCTCtAdwordsDisplay -> "CT_ADWORDS_DISPLAY"
        CCTCtMobileSites -> "CT_MOBILE_SITES"

instance FromJSON CertificationCertificationType where
    parseJSON = parseJSONText "CertificationCertificationType"

instance ToJSON CertificationCertificationType where
    toJSON = toJSONText

-- | Data type.
data EventDataKey
    = EDKEventDataTypeUnspecified
      -- ^ @EVENT_DATA_TYPE_UNSPECIFIED@
      -- Unchosen.
    | EDKAction
      -- ^ @ACTION@
      -- Action data.
    | EDKAgencyId
      -- ^ @AGENCY_ID@
      -- Agency ID data.
    | EDKAgencyName
      -- ^ @AGENCY_NAME@
      -- Agency name data.
    | EDKAgencyPhoneNumber
      -- ^ @AGENCY_PHONE_NUMBER@
      -- Agency phone number data.
    | EDKAgencyWebsite
      -- ^ @AGENCY_WEBSITE@
      -- Agency website data.
    | EDKBudget
      -- ^ @BUDGET@
      -- Budget data.
    | EDKCenterPoint
      -- ^ @CENTER_POINT@
      -- Center-point data.
    | EDKCertification
      -- ^ @CERTIFICATION@
      -- Certification data.
    | EDKComment
      -- ^ @COMMENT@
      -- Comment data.
    | EDKCountry
      -- ^ @COUNTRY@
      -- Country data.
    | EDKCurrency
      -- ^ @CURRENCY@
      -- Currency data.
    | EDKCurrentlyViewedAgencyId
      -- ^ @CURRENTLY_VIEWED_AGENCY_ID@
      -- Currently viewed agency ID data.
    | EDKDistance
      -- ^ @DISTANCE@
      -- Distance data.
    | EDKDistanceType
      -- ^ @DISTANCE_TYPE@
      -- Distance type data.
    | EDKExam
      -- ^ @EXAM@
      -- Exam data.
    | EDKHistoryToken
      -- ^ @HISTORY_TOKEN@
      -- History token data.
    | EDKID
      -- ^ @ID@
      -- Identifier data.
    | EDKIndustry
      -- ^ @INDUSTRY@
      -- Industry data.
    | EDKInsightTag
      -- ^ @INSIGHT_TAG@
      -- Insight tag data.
    | EDKLanguage
      -- ^ @LANGUAGE@
      -- Language data.
    | EDKLocation
      -- ^ @LOCATION@
      -- Location data.
    | EDKMarketingOptIn
      -- ^ @MARKETING_OPT_IN@
      -- Marketing opt-in data.
    | EDKQuery
      -- ^ @QUERY@
      -- Query data.
    | EDKSearchStartIndex
      -- ^ @SEARCH_START_INDEX@
      -- Search start index data.
    | EDKService
      -- ^ @SERVICE@
      -- Service data.
    | EDKShowVow
      -- ^ @SHOW_VOW@
      -- Show vow data.
    | EDKSolution
      -- ^ @SOLUTION@
      -- Solution data.
    | EDKTrafficSourceId
      -- ^ @TRAFFIC_SOURCE_ID@
      -- Traffic source ID data.
    | EDKTrafficSubId
      -- ^ @TRAFFIC_SUB_ID@
      -- Traffic sub ID data.
    | EDKViewPort
      -- ^ @VIEW_PORT@
      -- Viewport data.
    | EDKWebsite
      -- ^ @WEBSITE@
      -- Website data.
    | EDKDetails
      -- ^ @DETAILS@
      -- Details data.
    | EDKExperimentId
      -- ^ @EXPERIMENT_ID@
      -- Experiment ID data.
    | EDKGpsMotivation
      -- ^ @GPS_MOTIVATION@
      -- Google Partner Search motivation data.
    | EDKURL
      -- ^ @URL@
      -- URL data.
    | EDKElementFocus
      -- ^ @ELEMENT_FOCUS@
      -- Element we wanted user to focus on.
    | EDKProgress
      -- ^ @PROGRESS@
      -- Progress when viewing an item \\[0-100\\].
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventDataKey

instance FromHttpApiData EventDataKey where
    parseQueryParam = \case
        "EVENT_DATA_TYPE_UNSPECIFIED" -> Right EDKEventDataTypeUnspecified
        "ACTION" -> Right EDKAction
        "AGENCY_ID" -> Right EDKAgencyId
        "AGENCY_NAME" -> Right EDKAgencyName
        "AGENCY_PHONE_NUMBER" -> Right EDKAgencyPhoneNumber
        "AGENCY_WEBSITE" -> Right EDKAgencyWebsite
        "BUDGET" -> Right EDKBudget
        "CENTER_POINT" -> Right EDKCenterPoint
        "CERTIFICATION" -> Right EDKCertification
        "COMMENT" -> Right EDKComment
        "COUNTRY" -> Right EDKCountry
        "CURRENCY" -> Right EDKCurrency
        "CURRENTLY_VIEWED_AGENCY_ID" -> Right EDKCurrentlyViewedAgencyId
        "DISTANCE" -> Right EDKDistance
        "DISTANCE_TYPE" -> Right EDKDistanceType
        "EXAM" -> Right EDKExam
        "HISTORY_TOKEN" -> Right EDKHistoryToken
        "ID" -> Right EDKID
        "INDUSTRY" -> Right EDKIndustry
        "INSIGHT_TAG" -> Right EDKInsightTag
        "LANGUAGE" -> Right EDKLanguage
        "LOCATION" -> Right EDKLocation
        "MARKETING_OPT_IN" -> Right EDKMarketingOptIn
        "QUERY" -> Right EDKQuery
        "SEARCH_START_INDEX" -> Right EDKSearchStartIndex
        "SERVICE" -> Right EDKService
        "SHOW_VOW" -> Right EDKShowVow
        "SOLUTION" -> Right EDKSolution
        "TRAFFIC_SOURCE_ID" -> Right EDKTrafficSourceId
        "TRAFFIC_SUB_ID" -> Right EDKTrafficSubId
        "VIEW_PORT" -> Right EDKViewPort
        "WEBSITE" -> Right EDKWebsite
        "DETAILS" -> Right EDKDetails
        "EXPERIMENT_ID" -> Right EDKExperimentId
        "GPS_MOTIVATION" -> Right EDKGpsMotivation
        "URL" -> Right EDKURL
        "ELEMENT_FOCUS" -> Right EDKElementFocus
        "PROGRESS" -> Right EDKProgress
        x -> Left ("Unable to parse EventDataKey from: " <> x)

instance ToHttpApiData EventDataKey where
    toQueryParam = \case
        EDKEventDataTypeUnspecified -> "EVENT_DATA_TYPE_UNSPECIFIED"
        EDKAction -> "ACTION"
        EDKAgencyId -> "AGENCY_ID"
        EDKAgencyName -> "AGENCY_NAME"
        EDKAgencyPhoneNumber -> "AGENCY_PHONE_NUMBER"
        EDKAgencyWebsite -> "AGENCY_WEBSITE"
        EDKBudget -> "BUDGET"
        EDKCenterPoint -> "CENTER_POINT"
        EDKCertification -> "CERTIFICATION"
        EDKComment -> "COMMENT"
        EDKCountry -> "COUNTRY"
        EDKCurrency -> "CURRENCY"
        EDKCurrentlyViewedAgencyId -> "CURRENTLY_VIEWED_AGENCY_ID"
        EDKDistance -> "DISTANCE"
        EDKDistanceType -> "DISTANCE_TYPE"
        EDKExam -> "EXAM"
        EDKHistoryToken -> "HISTORY_TOKEN"
        EDKID -> "ID"
        EDKIndustry -> "INDUSTRY"
        EDKInsightTag -> "INSIGHT_TAG"
        EDKLanguage -> "LANGUAGE"
        EDKLocation -> "LOCATION"
        EDKMarketingOptIn -> "MARKETING_OPT_IN"
        EDKQuery -> "QUERY"
        EDKSearchStartIndex -> "SEARCH_START_INDEX"
        EDKService -> "SERVICE"
        EDKShowVow -> "SHOW_VOW"
        EDKSolution -> "SOLUTION"
        EDKTrafficSourceId -> "TRAFFIC_SOURCE_ID"
        EDKTrafficSubId -> "TRAFFIC_SUB_ID"
        EDKViewPort -> "VIEW_PORT"
        EDKWebsite -> "WEBSITE"
        EDKDetails -> "DETAILS"
        EDKExperimentId -> "EXPERIMENT_ID"
        EDKGpsMotivation -> "GPS_MOTIVATION"
        EDKURL -> "URL"
        EDKElementFocus -> "ELEMENT_FOCUS"
        EDKProgress -> "PROGRESS"

instance FromJSON EventDataKey where
    parseJSON = parseJSONText "EventDataKey"

instance ToJSON EventDataKey where
    toJSON = toJSONText

-- | The lead\'s state in relation to the company.
data LeadState
    = LSLeadStateUnspecified
      -- ^ @LEAD_STATE_UNSPECIFIED@
      -- Unchosen.
    | LSLead
      -- ^ @LEAD@
      -- Lead not yet contacted.
    | LSContacted
      -- ^ @CONTACTED@
      -- Lead has been contacted.
    | LSClient
      -- ^ @CLIENT@
      -- Lead has become a client.
    | LSOther
      -- ^ @OTHER@
      -- Lead in a state not covered by other options.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LeadState

instance FromHttpApiData LeadState where
    parseQueryParam = \case
        "LEAD_STATE_UNSPECIFIED" -> Right LSLeadStateUnspecified
        "LEAD" -> Right LSLead
        "CONTACTED" -> Right LSContacted
        "CLIENT" -> Right LSClient
        "OTHER" -> Right LSOther
        x -> Left ("Unable to parse LeadState from: " <> x)

instance ToHttpApiData LeadState where
    toQueryParam = \case
        LSLeadStateUnspecified -> "LEAD_STATE_UNSPECIFIED"
        LSLead -> "LEAD"
        LSContacted -> "CONTACTED"
        LSClient -> "CLIENT"
        LSOther -> "OTHER"

instance FromJSON LeadState where
    parseJSON = parseJSONText "LeadState"

instance ToJSON LeadState where
    toJSON = toJSONText

-- | The scope of the event.
data LogUserEventRequestEventScope
    = EventScopeUnspecified
      -- ^ @EVENT_SCOPE_UNSPECIFIED@
      -- Unchosen.
    | Visitor
      -- ^ @VISITOR@
      -- Based on visitor.
    | Session
      -- ^ @SESSION@
      -- Based on session.
    | Page
      -- ^ @PAGE@
      -- Based on page visit.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogUserEventRequestEventScope

instance FromHttpApiData LogUserEventRequestEventScope where
    parseQueryParam = \case
        "EVENT_SCOPE_UNSPECIFIED" -> Right EventScopeUnspecified
        "VISITOR" -> Right Visitor
        "SESSION" -> Right Session
        "PAGE" -> Right Page
        x -> Left ("Unable to parse LogUserEventRequestEventScope from: " <> x)

instance ToHttpApiData LogUserEventRequestEventScope where
    toQueryParam = \case
        EventScopeUnspecified -> "EVENT_SCOPE_UNSPECIFIED"
        Visitor -> "VISITOR"
        Session -> "SESSION"
        Page -> "PAGE"

instance FromJSON LogUserEventRequestEventScope where
    parseJSON = parseJSONText "LogUserEventRequestEventScope"

instance ToJSON LogUserEventRequestEventScope where
    toJSON = toJSONText
