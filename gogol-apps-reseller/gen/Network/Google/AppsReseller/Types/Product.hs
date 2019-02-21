{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types.Product where

import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | The G Suite annual commitment and flexible payment plans can be in a
-- 30-day free trial. For more information, see the API concepts.
--
-- /See:/ 'subscriptionTrialSettings' smart constructor.
data SubscriptionTrialSettings =
  SubscriptionTrialSettings'
    { _stsIsInTrial    :: !(Maybe Bool)
    , _stsTrialEndTime :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionTrialSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stsIsInTrial'
--
-- * 'stsTrialEndTime'
subscriptionTrialSettings
    :: SubscriptionTrialSettings
subscriptionTrialSettings =
  SubscriptionTrialSettings'
    {_stsIsInTrial = Nothing, _stsTrialEndTime = Nothing}


-- | Determines if a subscription\'s plan is in a 30-day free trial or not: -
-- true — The plan is in trial. - false — The plan is not in trial.
stsIsInTrial :: Lens' SubscriptionTrialSettings (Maybe Bool)
stsIsInTrial
  = lens _stsIsInTrial (\ s a -> s{_stsIsInTrial = a})

-- | Date when the trial ends. The value is in milliseconds using the UNIX
-- Epoch format. See an example Epoch converter.
stsTrialEndTime :: Lens' SubscriptionTrialSettings (Maybe Int64)
stsTrialEndTime
  = lens _stsTrialEndTime
      (\ s a -> s{_stsTrialEndTime = a})
      . mapping _Coerce

instance FromJSON SubscriptionTrialSettings where
        parseJSON
          = withObject "SubscriptionTrialSettings"
              (\ o ->
                 SubscriptionTrialSettings' <$>
                   (o .:? "isInTrial") <*> (o .:? "trialEndTime"))

instance ToJSON SubscriptionTrialSettings where
        toJSON SubscriptionTrialSettings'{..}
          = object
              (catMaybes
                 [("isInTrial" .=) <$> _stsIsInTrial,
                  ("trialEndTime" .=) <$> _stsTrialEndTime])

-- | JSON template for resellernotify response.
--
-- /See:/ 'resellernotifyResource' smart constructor.
newtype ResellernotifyResource =
  ResellernotifyResource'
    { _rrTopicName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResellernotifyResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrTopicName'
resellernotifyResource
    :: ResellernotifyResource
resellernotifyResource = ResellernotifyResource' {_rrTopicName = Nothing}


-- | Topic name of the PubSub
rrTopicName :: Lens' ResellernotifyResource (Maybe Text)
rrTopicName
  = lens _rrTopicName (\ s a -> s{_rrTopicName = a})

instance FromJSON ResellernotifyResource where
        parseJSON
          = withObject "ResellernotifyResource"
              (\ o ->
                 ResellernotifyResource' <$> (o .:? "topicName"))

instance ToJSON ResellernotifyResource where
        toJSON ResellernotifyResource'{..}
          = object
              (catMaybes [("topicName" .=) <$> _rrTopicName])

-- | JSON template for resellernotify getwatchdetails response.
--
-- /See:/ 'resellernotifyGetwatchdetailsResponse' smart constructor.
data ResellernotifyGetwatchdetailsResponse =
  ResellernotifyGetwatchdetailsResponse'
    { _rgrTopicName                    :: !(Maybe Text)
    , _rgrServiceAccountEmailAddresses :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResellernotifyGetwatchdetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrTopicName'
--
-- * 'rgrServiceAccountEmailAddresses'
resellernotifyGetwatchdetailsResponse
    :: ResellernotifyGetwatchdetailsResponse
resellernotifyGetwatchdetailsResponse =
  ResellernotifyGetwatchdetailsResponse'
    {_rgrTopicName = Nothing, _rgrServiceAccountEmailAddresses = Nothing}


-- | Topic name of the PubSub
rgrTopicName :: Lens' ResellernotifyGetwatchdetailsResponse (Maybe Text)
rgrTopicName
  = lens _rgrTopicName (\ s a -> s{_rgrTopicName = a})

-- | List of registered service accounts.
rgrServiceAccountEmailAddresses :: Lens' ResellernotifyGetwatchdetailsResponse [Text]
rgrServiceAccountEmailAddresses
  = lens _rgrServiceAccountEmailAddresses
      (\ s a -> s{_rgrServiceAccountEmailAddresses = a})
      . _Default
      . _Coerce

instance FromJSON
           ResellernotifyGetwatchdetailsResponse
         where
        parseJSON
          = withObject "ResellernotifyGetwatchdetailsResponse"
              (\ o ->
                 ResellernotifyGetwatchdetailsResponse' <$>
                   (o .:? "topicName") <*>
                     (o .:? "serviceAccountEmailAddresses" .!= mempty))

instance ToJSON ResellernotifyGetwatchdetailsResponse
         where
        toJSON ResellernotifyGetwatchdetailsResponse'{..}
          = object
              (catMaybes
                 [("topicName" .=) <$> _rgrTopicName,
                  ("serviceAccountEmailAddresses" .=) <$>
                    _rgrServiceAccountEmailAddresses])

-- | JSON template for address of a customer.
--
-- /See:/ 'address' smart constructor.
data Address =
  Address'
    { _aOrganizationName :: !(Maybe Text)
    , _aKind             :: !Text
    , _aPostalCode       :: !(Maybe Text)
    , _aAddressLine1     :: !(Maybe Text)
    , _aLocality         :: !(Maybe Text)
    , _aContactName      :: !(Maybe Text)
    , _aAddressLine2     :: !(Maybe Text)
    , _aCountryCode      :: !(Maybe Text)
    , _aRegion           :: !(Maybe Text)
    , _aAddressLine3     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aOrganizationName'
--
-- * 'aKind'
--
-- * 'aPostalCode'
--
-- * 'aAddressLine1'
--
-- * 'aLocality'
--
-- * 'aContactName'
--
-- * 'aAddressLine2'
--
-- * 'aCountryCode'
--
-- * 'aRegion'
--
-- * 'aAddressLine3'
address
    :: Address
address =
  Address'
    { _aOrganizationName = Nothing
    , _aKind = "customers#address"
    , _aPostalCode = Nothing
    , _aAddressLine1 = Nothing
    , _aLocality = Nothing
    , _aContactName = Nothing
    , _aAddressLine2 = Nothing
    , _aCountryCode = Nothing
    , _aRegion = Nothing
    , _aAddressLine3 = Nothing
    }


-- | The company or company division name. This is required.
aOrganizationName :: Lens' Address (Maybe Text)
aOrganizationName
  = lens _aOrganizationName
      (\ s a -> s{_aOrganizationName = a})

-- | Identifies the resource as a customer address. Value: customers#address
aKind :: Lens' Address Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | A postalCode example is a postal zip code such as 94043. This property
-- is required when creating a new customer.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode
  = lens _aPostalCode (\ s a -> s{_aPostalCode = a})

-- | A customer\'s physical address. An address can be composed of one to
-- three lines. The addressline2 and addressLine3 are optional.
aAddressLine1 :: Lens' Address (Maybe Text)
aAddressLine1
  = lens _aAddressLine1
      (\ s a -> s{_aAddressLine1 = a})

-- | An example of a locality value is the city of San Francisco.
aLocality :: Lens' Address (Maybe Text)
aLocality
  = lens _aLocality (\ s a -> s{_aLocality = a})

-- | The customer contact\'s name. This is required.
aContactName :: Lens' Address (Maybe Text)
aContactName
  = lens _aContactName (\ s a -> s{_aContactName = a})

-- | Line 2 of the address.
aAddressLine2 :: Lens' Address (Maybe Text)
aAddressLine2
  = lens _aAddressLine2
      (\ s a -> s{_aAddressLine2 = a})

-- | For countryCode information, see the ISO 3166 country code elements.
-- Verify that country is approved for resale of Google products. This
-- property is required when creating a new customer.
aCountryCode :: Lens' Address (Maybe Text)
aCountryCode
  = lens _aCountryCode (\ s a -> s{_aCountryCode = a})

-- | An example of a region value is CA for the state of California.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | Line 3 of the address.
aAddressLine3 :: Lens' Address (Maybe Text)
aAddressLine3
  = lens _aAddressLine3
      (\ s a -> s{_aAddressLine3 = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address' <$>
                   (o .:? "organizationName") <*>
                     (o .:? "kind" .!= "customers#address")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "addressLine1")
                     <*> (o .:? "locality")
                     <*> (o .:? "contactName")
                     <*> (o .:? "addressLine2")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "region")
                     <*> (o .:? "addressLine3"))

instance ToJSON Address where
        toJSON Address'{..}
          = object
              (catMaybes
                 [("organizationName" .=) <$> _aOrganizationName,
                  Just ("kind" .= _aKind),
                  ("postalCode" .=) <$> _aPostalCode,
                  ("addressLine1" .=) <$> _aAddressLine1,
                  ("locality" .=) <$> _aLocality,
                  ("contactName" .=) <$> _aContactName,
                  ("addressLine2" .=) <$> _aAddressLine2,
                  ("countryCode" .=) <$> _aCountryCode,
                  ("region" .=) <$> _aRegion,
                  ("addressLine3" .=) <$> _aAddressLine3])

-- | JSON template for a customer.
--
-- /See:/ 'customer' smart constructor.
data Customer =
  Customer'
    { _cCustomerDomainVerified :: !(Maybe Bool)
    , _cResourceUiURL          :: !(Maybe Text)
    , _cKind                   :: !Text
    , _cCustomerId             :: !(Maybe Text)
    , _cAlternateEmail         :: !(Maybe Text)
    , _cCustomerDomain         :: !(Maybe Text)
    , _cPhoneNumber            :: !(Maybe Text)
    , _cPostalAddress          :: !(Maybe Address)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Customer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCustomerDomainVerified'
--
-- * 'cResourceUiURL'
--
-- * 'cKind'
--
-- * 'cCustomerId'
--
-- * 'cAlternateEmail'
--
-- * 'cCustomerDomain'
--
-- * 'cPhoneNumber'
--
-- * 'cPostalAddress'
customer
    :: Customer
customer =
  Customer'
    { _cCustomerDomainVerified = Nothing
    , _cResourceUiURL = Nothing
    , _cKind = "reseller#customer"
    , _cCustomerId = Nothing
    , _cAlternateEmail = Nothing
    , _cCustomerDomain = Nothing
    , _cPhoneNumber = Nothing
    , _cPostalAddress = Nothing
    }


-- | Whether the customer\'s primary domain has been verified.
cCustomerDomainVerified :: Lens' Customer (Maybe Bool)
cCustomerDomainVerified
  = lens _cCustomerDomainVerified
      (\ s a -> s{_cCustomerDomainVerified = a})

-- | URL to customer\'s Admin console dashboard. The read-only URL is
-- generated by the API service. This is used if your client application
-- requires the customer to complete a task in the Admin console.
cResourceUiURL :: Lens' Customer (Maybe Text)
cResourceUiURL
  = lens _cResourceUiURL
      (\ s a -> s{_cResourceUiURL = a})

-- | Identifies the resource as a customer. Value: reseller#customer
cKind :: Lens' Customer Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | This property will always be returned in a response as the unique
-- identifier generated by Google. In a request, this property can be
-- either the primary domain or the unique identifier generated by Google.
cCustomerId :: Lens' Customer (Maybe Text)
cCustomerId
  = lens _cCustomerId (\ s a -> s{_cCustomerId = a})

-- | Like the \"Customer email\" in the reseller tools, this email is the
-- secondary contact used if something happens to the customer\'s service
-- such as service outage or a security issue. This property is required
-- when creating a new customer and should not use the same domain as
-- customerDomain.
cAlternateEmail :: Lens' Customer (Maybe Text)
cAlternateEmail
  = lens _cAlternateEmail
      (\ s a -> s{_cAlternateEmail = a})

-- | The customer\'s primary domain name string. customerDomain is required
-- when creating a new customer. Do not include the www prefix in the
-- domain when adding a customer.
cCustomerDomain :: Lens' Customer (Maybe Text)
cCustomerDomain
  = lens _cCustomerDomain
      (\ s a -> s{_cCustomerDomain = a})

-- | Customer contact phone number. This can be continuous numbers, with
-- spaces, etc. But it must be a real phone number and not, for example,
-- \"123\". See phone local format conventions.
cPhoneNumber :: Lens' Customer (Maybe Text)
cPhoneNumber
  = lens _cPhoneNumber (\ s a -> s{_cPhoneNumber = a})

-- | A customer\'s address information. Each field has a limit of 255
-- charcters.
cPostalAddress :: Lens' Customer (Maybe Address)
cPostalAddress
  = lens _cPostalAddress
      (\ s a -> s{_cPostalAddress = a})

instance FromJSON Customer where
        parseJSON
          = withObject "Customer"
              (\ o ->
                 Customer' <$>
                   (o .:? "customerDomainVerified") <*>
                     (o .:? "resourceUiUrl")
                     <*> (o .:? "kind" .!= "reseller#customer")
                     <*> (o .:? "customerId")
                     <*> (o .:? "alternateEmail")
                     <*> (o .:? "customerDomain")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "postalAddress"))

instance ToJSON Customer where
        toJSON Customer'{..}
          = object
              (catMaybes
                 [("customerDomainVerified" .=) <$>
                    _cCustomerDomainVerified,
                  ("resourceUiUrl" .=) <$> _cResourceUiURL,
                  Just ("kind" .= _cKind),
                  ("customerId" .=) <$> _cCustomerId,
                  ("alternateEmail" .=) <$> _cAlternateEmail,
                  ("customerDomain" .=) <$> _cCustomerDomain,
                  ("phoneNumber" .=) <$> _cPhoneNumber,
                  ("postalAddress" .=) <$> _cPostalAddress])

-- | JSON template for the ChangePlan rpc request.
--
-- /See:/ 'changePlanRequest' smart constructor.
data ChangePlanRequest =
  ChangePlanRequest'
    { _cprKind            :: !Text
    , _cprDealCode        :: !(Maybe Text)
    , _cprPlanName        :: !(Maybe Text)
    , _cprPurchaseOrderId :: !(Maybe Text)
    , _cprSeats           :: !(Maybe Seats)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangePlanRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprKind'
--
-- * 'cprDealCode'
--
-- * 'cprPlanName'
--
-- * 'cprPurchaseOrderId'
--
-- * 'cprSeats'
changePlanRequest
    :: ChangePlanRequest
changePlanRequest =
  ChangePlanRequest'
    { _cprKind = "subscriptions#changePlanRequest"
    , _cprDealCode = Nothing
    , _cprPlanName = Nothing
    , _cprPurchaseOrderId = Nothing
    , _cprSeats = Nothing
    }


-- | Identifies the resource as a subscription change plan request. Value:
-- subscriptions#changePlanRequest
cprKind :: Lens' ChangePlanRequest Text
cprKind = lens _cprKind (\ s a -> s{_cprKind = a})

-- | Google-issued code (100 char max) for discounted pricing on subscription
-- plans. Deal code must be included in changePlan request in order to
-- receive discounted rate. This property is optional. If a deal code has
-- already been added to a subscription, this property may be left empty
-- and the existing discounted rate will still apply (if not empty, only
-- provide the deal code that is already present on the subscription). If a
-- deal code has never been added to a subscription and this property is
-- left blank, regular pricing will apply.
cprDealCode :: Lens' ChangePlanRequest (Maybe Text)
cprDealCode
  = lens _cprDealCode (\ s a -> s{_cprDealCode = a})

-- | The planName property is required. This is the name of the
-- subscription\'s payment plan. For more information about the Google
-- payment plans, see API concepts. Possible values are: -
-- ANNUAL_MONTHLY_PAY - The annual commitment plan with monthly payments -
-- ANNUAL_YEARLY_PAY - The annual commitment plan with yearly payments -
-- FLEXIBLE - The flexible plan - TRIAL - The 30-day free trial plan
cprPlanName :: Lens' ChangePlanRequest (Maybe Text)
cprPlanName
  = lens _cprPlanName (\ s a -> s{_cprPlanName = a})

-- | This is an optional property. This purchase order (PO) information is
-- for resellers to use for their company tracking usage. If a
-- purchaseOrderId value is given it appears in the API responses and shows
-- up in the invoice. The property accepts up to 80 plain text characters.
cprPurchaseOrderId :: Lens' ChangePlanRequest (Maybe Text)
cprPurchaseOrderId
  = lens _cprPurchaseOrderId
      (\ s a -> s{_cprPurchaseOrderId = a})

-- | This is a required property. The seats property is the number of user
-- seat licenses.
cprSeats :: Lens' ChangePlanRequest (Maybe Seats)
cprSeats = lens _cprSeats (\ s a -> s{_cprSeats = a})

instance FromJSON ChangePlanRequest where
        parseJSON
          = withObject "ChangePlanRequest"
              (\ o ->
                 ChangePlanRequest' <$>
                   (o .:? "kind" .!= "subscriptions#changePlanRequest")
                     <*> (o .:? "dealCode")
                     <*> (o .:? "planName")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats"))

instance ToJSON ChangePlanRequest where
        toJSON ChangePlanRequest'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cprKind),
                  ("dealCode" .=) <$> _cprDealCode,
                  ("planName" .=) <$> _cprPlanName,
                  ("purchaseOrderId" .=) <$> _cprPurchaseOrderId,
                  ("seats" .=) <$> _cprSeats])

-- | In this version of the API, annual commitment plan\'s interval is one
-- year.
--
-- /See:/ 'subscriptionPlanCommitmentInterval' smart constructor.
data SubscriptionPlanCommitmentInterval =
  SubscriptionPlanCommitmentInterval'
    { _spciStartTime :: !(Maybe (Textual Int64))
    , _spciEndTime   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPlanCommitmentInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spciStartTime'
--
-- * 'spciEndTime'
subscriptionPlanCommitmentInterval
    :: SubscriptionPlanCommitmentInterval
subscriptionPlanCommitmentInterval =
  SubscriptionPlanCommitmentInterval'
    {_spciStartTime = Nothing, _spciEndTime = Nothing}


-- | An annual commitment plan\'s interval\'s startTime in milliseconds using
-- UNIX Epoch format. See an example Epoch converter.
spciStartTime :: Lens' SubscriptionPlanCommitmentInterval (Maybe Int64)
spciStartTime
  = lens _spciStartTime
      (\ s a -> s{_spciStartTime = a})
      . mapping _Coerce

-- | An annual commitment plan\'s interval\'s endTime in milliseconds using
-- the UNIX Epoch format. See an example Epoch converter.
spciEndTime :: Lens' SubscriptionPlanCommitmentInterval (Maybe Int64)
spciEndTime
  = lens _spciEndTime (\ s a -> s{_spciEndTime = a}) .
      mapping _Coerce

instance FromJSON SubscriptionPlanCommitmentInterval
         where
        parseJSON
          = withObject "SubscriptionPlanCommitmentInterval"
              (\ o ->
                 SubscriptionPlanCommitmentInterval' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON SubscriptionPlanCommitmentInterval
         where
        toJSON SubscriptionPlanCommitmentInterval'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _spciStartTime,
                  ("endTime" .=) <$> _spciEndTime])

-- | The plan property is required. In this version of the API, the G Suite
-- plans are the flexible plan, annual commitment plan, and the 30-day free
-- trial plan. For more information about the API\"s payment plans, see the
-- API concepts.
--
-- /See:/ 'subscriptionPlan' smart constructor.
data SubscriptionPlan =
  SubscriptionPlan'
    { _spCommitmentInterval :: !(Maybe SubscriptionPlanCommitmentInterval)
    , _spIsCommitmentPlan   :: !(Maybe Bool)
    , _spPlanName           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spCommitmentInterval'
--
-- * 'spIsCommitmentPlan'
--
-- * 'spPlanName'
subscriptionPlan
    :: SubscriptionPlan
subscriptionPlan =
  SubscriptionPlan'
    { _spCommitmentInterval = Nothing
    , _spIsCommitmentPlan = Nothing
    , _spPlanName = Nothing
    }


-- | In this version of the API, annual commitment plan\'s interval is one
-- year.
spCommitmentInterval :: Lens' SubscriptionPlan (Maybe SubscriptionPlanCommitmentInterval)
spCommitmentInterval
  = lens _spCommitmentInterval
      (\ s a -> s{_spCommitmentInterval = a})

-- | The isCommitmentPlan property\'s boolean value identifies the plan as an
-- annual commitment plan: - true — The subscription\'s plan is an annual
-- commitment plan. - false — The plan is not an annual commitment plan.
spIsCommitmentPlan :: Lens' SubscriptionPlan (Maybe Bool)
spIsCommitmentPlan
  = lens _spIsCommitmentPlan
      (\ s a -> s{_spIsCommitmentPlan = a})

-- | The planName property is required. This is the name of the
-- subscription\'s plan. For more information about the Google payment
-- plans, see the API concepts. Possible values are: - ANNUAL_MONTHLY_PAY —
-- The annual commitment plan with monthly payments - ANNUAL_YEARLY_PAY —
-- The annual commitment plan with yearly payments - FLEXIBLE — The
-- flexible plan - TRIAL — The 30-day free trial plan. A subscription in
-- trial will be suspended after the 30th free day if no payment plan is
-- assigned. Calling changePlan will assign a payment plan to a trial but
-- will not activate the plan. A trial will automatically begin its
-- assigned payment plan after its 30th free day or immediately after
-- calling startPaidService.
spPlanName :: Lens' SubscriptionPlan (Maybe Text)
spPlanName
  = lens _spPlanName (\ s a -> s{_spPlanName = a})

instance FromJSON SubscriptionPlan where
        parseJSON
          = withObject "SubscriptionPlan"
              (\ o ->
                 SubscriptionPlan' <$>
                   (o .:? "commitmentInterval") <*>
                     (o .:? "isCommitmentPlan")
                     <*> (o .:? "planName"))

instance ToJSON SubscriptionPlan where
        toJSON SubscriptionPlan'{..}
          = object
              (catMaybes
                 [("commitmentInterval" .=) <$> _spCommitmentInterval,
                  ("isCommitmentPlan" .=) <$> _spIsCommitmentPlan,
                  ("planName" .=) <$> _spPlanName])

-- | JSON template for a subscription list.
--
-- /See:/ 'subscriptions' smart constructor.
data Subscriptions =
  Subscriptions'
    { _sNextPageToken :: !(Maybe Text)
    , _sKind          :: !Text
    , _sSubscriptions :: !(Maybe [Subscription])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Subscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextPageToken'
--
-- * 'sKind'
--
-- * 'sSubscriptions'
subscriptions
    :: Subscriptions
subscriptions =
  Subscriptions'
    { _sNextPageToken = Nothing
    , _sKind = "reseller#subscriptions"
    , _sSubscriptions = Nothing
    }


-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
sNextPageToken :: Lens' Subscriptions (Maybe Text)
sNextPageToken
  = lens _sNextPageToken
      (\ s a -> s{_sNextPageToken = a})

-- | Identifies the resource as a collection of subscriptions. Value:
-- reseller#subscriptions
sKind :: Lens' Subscriptions Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The subscriptions in this page of results.
sSubscriptions :: Lens' Subscriptions [Subscription]
sSubscriptions
  = lens _sSubscriptions
      (\ s a -> s{_sSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON Subscriptions where
        parseJSON
          = withObject "Subscriptions"
              (\ o ->
                 Subscriptions' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "reseller#subscriptions")
                     <*> (o .:? "subscriptions" .!= mempty))

instance ToJSON Subscriptions where
        toJSON Subscriptions'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sNextPageToken,
                  Just ("kind" .= _sKind),
                  ("subscriptions" .=) <$> _sSubscriptions])

-- | JSON template for subscription seats.
--
-- /See:/ 'seats' smart constructor.
data Seats =
  Seats'
    { _seaNumberOfSeats         :: !(Maybe (Textual Int32))
    , _seaMaximumNumberOfSeats  :: !(Maybe (Textual Int32))
    , _seaLicensedNumberOfSeats :: !(Maybe (Textual Int32))
    , _seaKind                  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Seats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seaNumberOfSeats'
--
-- * 'seaMaximumNumberOfSeats'
--
-- * 'seaLicensedNumberOfSeats'
--
-- * 'seaKind'
seats
    :: Seats
seats =
  Seats'
    { _seaNumberOfSeats = Nothing
    , _seaMaximumNumberOfSeats = Nothing
    , _seaLicensedNumberOfSeats = Nothing
    , _seaKind = "subscriptions#seats"
    }


-- | The numberOfSeats property holds the customer\'s number of user
-- licenses. How a user\'s licenses are managed depends on the
-- subscription\'s plan: - annual commitment plan (with monthly or yearly
-- pay) — For this plan, a reseller is invoiced on the number of user
-- licenses in the numberOfSeats property. This is the maximum number of
-- user licenses that a reseller\'s customer can create. The reseller can
-- add more licenses, but once set, the numberOfSeats can not be reduced
-- until renewal. The reseller is invoiced based on the numberOfSeats value
-- regardless of how many of these user licenses are provisioned users. -
-- flexible plan — For this plan, a reseller is invoiced on the actual
-- number of users which is capped by the maximumNumberOfSeats. The
-- numberOfSeats property is not used in the request or response for
-- flexible plan customers. - 30-day free trial plan — The numberOfSeats
-- property is not used in the request or response for an account in a
-- 30-day trial.
seaNumberOfSeats :: Lens' Seats (Maybe Int32)
seaNumberOfSeats
  = lens _seaNumberOfSeats
      (\ s a -> s{_seaNumberOfSeats = a})
      . mapping _Coerce

-- | The maximumNumberOfSeats property is the maximum number of licenses that
-- the customer can purchase. This property applies to plans other than the
-- annual commitment plan. How a user\'s licenses are managed depends on
-- the subscription\'s payment plan: - annual commitment plan (with monthly
-- or yearly payments) — For this plan, a reseller is invoiced on the
-- number of user licenses in the numberOfSeats property. The
-- maximumNumberOfSeats property is a read-only property in the API\'s
-- response. - flexible plan — For this plan, a reseller is invoiced on the
-- actual number of users which is capped by the maximumNumberOfSeats. This
-- is the maximum number of user licenses a customer has for user license
-- provisioning. This quantity can be increased up to the maximum limit
-- defined in the reseller\'s contract. And the minimum quantity is the
-- current number of users in the customer account. - 30-day free trial
-- plan — A subscription in a 30-day free trial is restricted to maximum 10
-- seats.
seaMaximumNumberOfSeats :: Lens' Seats (Maybe Int32)
seaMaximumNumberOfSeats
  = lens _seaMaximumNumberOfSeats
      (\ s a -> s{_seaMaximumNumberOfSeats = a})
      . mapping _Coerce

-- | Read-only field containing the current number of licensed seats for
-- FLEXIBLE Google-Apps subscriptions and secondary subscriptions such as
-- Google-Vault and Drive-storage.
seaLicensedNumberOfSeats :: Lens' Seats (Maybe Int32)
seaLicensedNumberOfSeats
  = lens _seaLicensedNumberOfSeats
      (\ s a -> s{_seaLicensedNumberOfSeats = a})
      . mapping _Coerce

-- | Identifies the resource as a subscription change plan request. Value:
-- subscriptions#seats
seaKind :: Lens' Seats Text
seaKind = lens _seaKind (\ s a -> s{_seaKind = a})

instance FromJSON Seats where
        parseJSON
          = withObject "Seats"
              (\ o ->
                 Seats' <$>
                   (o .:? "numberOfSeats") <*>
                     (o .:? "maximumNumberOfSeats")
                     <*> (o .:? "licensedNumberOfSeats")
                     <*> (o .:? "kind" .!= "subscriptions#seats"))

instance ToJSON Seats where
        toJSON Seats'{..}
          = object
              (catMaybes
                 [("numberOfSeats" .=) <$> _seaNumberOfSeats,
                  ("maximumNumberOfSeats" .=) <$>
                    _seaMaximumNumberOfSeats,
                  ("licensedNumberOfSeats" .=) <$>
                    _seaLicensedNumberOfSeats,
                  Just ("kind" .= _seaKind)])

-- | JSON template for a subscription renewal settings.
--
-- /See:/ 'renewalSettings' smart constructor.
data RenewalSettings =
  RenewalSettings'
    { _rsKind        :: !Text
    , _rsRenewalType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RenewalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsKind'
--
-- * 'rsRenewalType'
renewalSettings
    :: RenewalSettings
renewalSettings =
  RenewalSettings'
    {_rsKind = "subscriptions#renewalSettings", _rsRenewalType = Nothing}


-- | Identifies the resource as a subscription renewal setting. Value:
-- subscriptions#renewalSettings
rsKind :: Lens' RenewalSettings Text
rsKind = lens _rsKind (\ s a -> s{_rsKind = a})

-- | Renewal settings for the annual commitment plan. For more detailed
-- information, see renewal options in the administrator help center. When
-- renewing a subscription, the renewalType is a required property.
rsRenewalType :: Lens' RenewalSettings (Maybe Text)
rsRenewalType
  = lens _rsRenewalType
      (\ s a -> s{_rsRenewalType = a})

instance FromJSON RenewalSettings where
        parseJSON
          = withObject "RenewalSettings"
              (\ o ->
                 RenewalSettings' <$>
                   (o .:? "kind" .!= "subscriptions#renewalSettings")
                     <*> (o .:? "renewalType"))

instance ToJSON RenewalSettings where
        toJSON RenewalSettings'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rsKind),
                  ("renewalType" .=) <$> _rsRenewalType])

-- | JSON template for a subscription.
--
-- /See:/ 'subscription' smart constructor.
data Subscription =
  Subscription'
    { _subCreationTime      :: !(Maybe (Textual Int64))
    , _subBillingMethod     :: !(Maybe Text)
    , _subStatus            :: !(Maybe Text)
    , _subTrialSettings     :: !(Maybe SubscriptionTrialSettings)
    , _subSKUName           :: !(Maybe Text)
    , _subResourceUiURL     :: !(Maybe Text)
    , _subKind              :: !Text
    , _subSKUId             :: !(Maybe Text)
    , _subPlan              :: !(Maybe SubscriptionPlan)
    , _subDealCode          :: !(Maybe Text)
    , _subCustomerId        :: !(Maybe Text)
    , _subCustomerDomain    :: !(Maybe Text)
    , _subSuspensionReasons :: !(Maybe [Text])
    , _subTransferInfo      :: !(Maybe SubscriptionTransferInfo)
    , _subPurchaseOrderId   :: !(Maybe Text)
    , _subSeats             :: !(Maybe Seats)
    , _subRenewalSettings   :: !(Maybe RenewalSettings)
    , _subSubscriptionId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subCreationTime'
--
-- * 'subBillingMethod'
--
-- * 'subStatus'
--
-- * 'subTrialSettings'
--
-- * 'subSKUName'
--
-- * 'subResourceUiURL'
--
-- * 'subKind'
--
-- * 'subSKUId'
--
-- * 'subPlan'
--
-- * 'subDealCode'
--
-- * 'subCustomerId'
--
-- * 'subCustomerDomain'
--
-- * 'subSuspensionReasons'
--
-- * 'subTransferInfo'
--
-- * 'subPurchaseOrderId'
--
-- * 'subSeats'
--
-- * 'subRenewalSettings'
--
-- * 'subSubscriptionId'
subscription
    :: Subscription
subscription =
  Subscription'
    { _subCreationTime = Nothing
    , _subBillingMethod = Nothing
    , _subStatus = Nothing
    , _subTrialSettings = Nothing
    , _subSKUName = Nothing
    , _subResourceUiURL = Nothing
    , _subKind = "reseller#subscription"
    , _subSKUId = Nothing
    , _subPlan = Nothing
    , _subDealCode = Nothing
    , _subCustomerId = Nothing
    , _subCustomerDomain = Nothing
    , _subSuspensionReasons = Nothing
    , _subTransferInfo = Nothing
    , _subPurchaseOrderId = Nothing
    , _subSeats = Nothing
    , _subRenewalSettings = Nothing
    , _subSubscriptionId = Nothing
    }


-- | The creationTime property is the date when subscription was created. It
-- is in milliseconds using the Epoch format. See an example Epoch
-- converter.
subCreationTime :: Lens' Subscription (Maybe Int64)
subCreationTime
  = lens _subCreationTime
      (\ s a -> s{_subCreationTime = a})
      . mapping _Coerce

-- | Read-only field that returns the current billing method for a
-- subscription.
subBillingMethod :: Lens' Subscription (Maybe Text)
subBillingMethod
  = lens _subBillingMethod
      (\ s a -> s{_subBillingMethod = a})

-- | This is an optional property.
subStatus :: Lens' Subscription (Maybe Text)
subStatus
  = lens _subStatus (\ s a -> s{_subStatus = a})

-- | The G Suite annual commitment and flexible payment plans can be in a
-- 30-day free trial. For more information, see the API concepts.
subTrialSettings :: Lens' Subscription (Maybe SubscriptionTrialSettings)
subTrialSettings
  = lens _subTrialSettings
      (\ s a -> s{_subTrialSettings = a})

-- | Read-only external display name for a product\'s SKU assigned to a
-- customer in the subscription. SKU names are subject to change at
-- Google\'s discretion. For products and SKUs available in this version of
-- the API, see Product and SKU IDs.
subSKUName :: Lens' Subscription (Maybe Text)
subSKUName
  = lens _subSKUName (\ s a -> s{_subSKUName = a})

-- | URL to customer\'s Subscriptions page in the Admin console. The
-- read-only URL is generated by the API service. This is used if your
-- client application requires the customer to complete a task using the
-- Subscriptions page in the Admin console.
subResourceUiURL :: Lens' Subscription (Maybe Text)
subResourceUiURL
  = lens _subResourceUiURL
      (\ s a -> s{_subResourceUiURL = a})

-- | Identifies the resource as a Subscription. Value: reseller#subscription
subKind :: Lens' Subscription Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | A required property. The skuId is a unique system identifier for a
-- product\'s SKU assigned to a customer in the subscription. For products
-- and SKUs available in this version of the API, see Product and SKU IDs.
subSKUId :: Lens' Subscription (Maybe Text)
subSKUId = lens _subSKUId (\ s a -> s{_subSKUId = a})

-- | The plan property is required. In this version of the API, the G Suite
-- plans are the flexible plan, annual commitment plan, and the 30-day free
-- trial plan. For more information about the API\"s payment plans, see the
-- API concepts.
subPlan :: Lens' Subscription (Maybe SubscriptionPlan)
subPlan = lens _subPlan (\ s a -> s{_subPlan = a})

-- | Google-issued code (100 char max) for discounted pricing on subscription
-- plans. Deal code must be included in insert requests in order to receive
-- discounted rate. This property is optional, regular pricing applies if
-- left empty.
subDealCode :: Lens' Subscription (Maybe Text)
subDealCode
  = lens _subDealCode (\ s a -> s{_subDealCode = a})

-- | This property will always be returned in a response as the unique
-- identifier generated by Google. In a request, this property can be
-- either the primary domain or the unique identifier generated by Google.
subCustomerId :: Lens' Subscription (Maybe Text)
subCustomerId
  = lens _subCustomerId
      (\ s a -> s{_subCustomerId = a})

-- | Primary domain name of the customer
subCustomerDomain :: Lens' Subscription (Maybe Text)
subCustomerDomain
  = lens _subCustomerDomain
      (\ s a -> s{_subCustomerDomain = a})

-- | Read-only field containing an enumerable of all the current suspension
-- reasons for a subscription. It is possible for a subscription to have
-- many concurrent, overlapping suspension reasons. A subscription\'s
-- STATUS is SUSPENDED until all pending suspensions are removed. Possible
-- options include: - PENDING_TOS_ACCEPTANCE - The customer has not logged
-- in and accepted the G Suite Resold Terms of Services. -
-- RENEWAL_WITH_TYPE_CANCEL - The customer\'s commitment ended and their
-- service was cancelled at the end of their term. - RESELLER_INITIATED - A
-- manual suspension invoked by a Reseller. - TRIAL_ENDED - The customer\'s
-- trial expired without a plan selected. - OTHER - The customer is
-- suspended for an internal Google reason (e.g. abuse or otherwise).
subSuspensionReasons :: Lens' Subscription [Text]
subSuspensionReasons
  = lens _subSuspensionReasons
      (\ s a -> s{_subSuspensionReasons = a})
      . _Default
      . _Coerce

-- | Read-only transfer related information for the subscription. For more
-- information, see retrieve transferable subscriptions for a customer.
subTransferInfo :: Lens' Subscription (Maybe SubscriptionTransferInfo)
subTransferInfo
  = lens _subTransferInfo
      (\ s a -> s{_subTransferInfo = a})

-- | This is an optional property. This purchase order (PO) information is
-- for resellers to use for their company tracking usage. If a
-- purchaseOrderId value is given it appears in the API responses and shows
-- up in the invoice. The property accepts up to 80 plain text characters.
subPurchaseOrderId :: Lens' Subscription (Maybe Text)
subPurchaseOrderId
  = lens _subPurchaseOrderId
      (\ s a -> s{_subPurchaseOrderId = a})

-- | This is a required property. The number and limit of user seat licenses
-- in the plan.
subSeats :: Lens' Subscription (Maybe Seats)
subSeats = lens _subSeats (\ s a -> s{_subSeats = a})

-- | Renewal settings for the annual commitment plan. For more detailed
-- information, see renewal options in the administrator help center.
subRenewalSettings :: Lens' Subscription (Maybe RenewalSettings)
subRenewalSettings
  = lens _subRenewalSettings
      (\ s a -> s{_subRenewalSettings = a})

-- | The subscriptionId is the subscription identifier and is unique for each
-- customer. This is a required property. Since a subscriptionId changes
-- when a subscription is updated, we recommend not using this ID as a key
-- for persistent data. Use the subscriptionId as described in retrieve all
-- reseller subscriptions.
subSubscriptionId :: Lens' Subscription (Maybe Text)
subSubscriptionId
  = lens _subSubscriptionId
      (\ s a -> s{_subSubscriptionId = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription' <$>
                   (o .:? "creationTime") <*> (o .:? "billingMethod")
                     <*> (o .:? "status")
                     <*> (o .:? "trialSettings")
                     <*> (o .:? "skuName")
                     <*> (o .:? "resourceUiUrl")
                     <*> (o .:? "kind" .!= "reseller#subscription")
                     <*> (o .:? "skuId")
                     <*> (o .:? "plan")
                     <*> (o .:? "dealCode")
                     <*> (o .:? "customerId")
                     <*> (o .:? "customerDomain")
                     <*> (o .:? "suspensionReasons" .!= mempty)
                     <*> (o .:? "transferInfo")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats")
                     <*> (o .:? "renewalSettings")
                     <*> (o .:? "subscriptionId"))

instance ToJSON Subscription where
        toJSON Subscription'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _subCreationTime,
                  ("billingMethod" .=) <$> _subBillingMethod,
                  ("status" .=) <$> _subStatus,
                  ("trialSettings" .=) <$> _subTrialSettings,
                  ("skuName" .=) <$> _subSKUName,
                  ("resourceUiUrl" .=) <$> _subResourceUiURL,
                  Just ("kind" .= _subKind),
                  ("skuId" .=) <$> _subSKUId, ("plan" .=) <$> _subPlan,
                  ("dealCode" .=) <$> _subDealCode,
                  ("customerId" .=) <$> _subCustomerId,
                  ("customerDomain" .=) <$> _subCustomerDomain,
                  ("suspensionReasons" .=) <$> _subSuspensionReasons,
                  ("transferInfo" .=) <$> _subTransferInfo,
                  ("purchaseOrderId" .=) <$> _subPurchaseOrderId,
                  ("seats" .=) <$> _subSeats,
                  ("renewalSettings" .=) <$> _subRenewalSettings,
                  ("subscriptionId" .=) <$> _subSubscriptionId])

-- | Read-only transfer related information for the subscription. For more
-- information, see retrieve transferable subscriptions for a customer.
--
-- /See:/ 'subscriptionTransferInfo' smart constructor.
data SubscriptionTransferInfo =
  SubscriptionTransferInfo'
    { _stiTransferabilityExpirationTime :: !(Maybe (Textual Int64))
    , _stiMinimumTransferableSeats      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionTransferInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stiTransferabilityExpirationTime'
--
-- * 'stiMinimumTransferableSeats'
subscriptionTransferInfo
    :: SubscriptionTransferInfo
subscriptionTransferInfo =
  SubscriptionTransferInfo'
    { _stiTransferabilityExpirationTime = Nothing
    , _stiMinimumTransferableSeats = Nothing
    }


-- | The time when transfer token or intent to transfer will expire. The time
-- is in milliseconds using UNIX Epoch format.
stiTransferabilityExpirationTime :: Lens' SubscriptionTransferInfo (Maybe Int64)
stiTransferabilityExpirationTime
  = lens _stiTransferabilityExpirationTime
      (\ s a -> s{_stiTransferabilityExpirationTime = a})
      . mapping _Coerce

-- | When inserting a subscription, this is the minimum number of seats
-- listed in the transfer order for this product. For example, if the
-- customer has 20 users, the reseller cannot place a transfer order of 15
-- seats. The minimum is 20 seats.
stiMinimumTransferableSeats :: Lens' SubscriptionTransferInfo (Maybe Int32)
stiMinimumTransferableSeats
  = lens _stiMinimumTransferableSeats
      (\ s a -> s{_stiMinimumTransferableSeats = a})
      . mapping _Coerce

instance FromJSON SubscriptionTransferInfo where
        parseJSON
          = withObject "SubscriptionTransferInfo"
              (\ o ->
                 SubscriptionTransferInfo' <$>
                   (o .:? "transferabilityExpirationTime") <*>
                     (o .:? "minimumTransferableSeats"))

instance ToJSON SubscriptionTransferInfo where
        toJSON SubscriptionTransferInfo'{..}
          = object
              (catMaybes
                 [("transferabilityExpirationTime" .=) <$>
                    _stiTransferabilityExpirationTime,
                  ("minimumTransferableSeats" .=) <$>
                    _stiMinimumTransferableSeats])
