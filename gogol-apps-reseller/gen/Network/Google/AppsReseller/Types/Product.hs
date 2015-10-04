{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types.Product where

import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | Trial Settings of the subscription.
--
-- /See:/ 'subscriptionTrialSettings' smart constructor.
data SubscriptionTrialSettings = SubscriptionTrialSettings
    { _stsIsInTrial    :: !(Maybe Bool)
    , _stsTrialEndTime :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SubscriptionTrialSettings
    { _stsIsInTrial = Nothing
    , _stsTrialEndTime = Nothing
    }

-- | Whether the subscription is in trial.
stsIsInTrial :: Lens' SubscriptionTrialSettings (Maybe Bool)
stsIsInTrial
  = lens _stsIsInTrial (\ s a -> s{_stsIsInTrial = a})

-- | End time of the trial in milliseconds since Unix epoch.
stsTrialEndTime :: Lens' SubscriptionTrialSettings (Maybe Int64)
stsTrialEndTime
  = lens _stsTrialEndTime
      (\ s a -> s{_stsTrialEndTime = a})

instance FromJSON SubscriptionTrialSettings where
        parseJSON
          = withObject "SubscriptionTrialSettings"
              (\ o ->
                 SubscriptionTrialSettings <$>
                   (o .:? "isInTrial") <*> (o .:? "trialEndTime"))

instance ToJSON SubscriptionTrialSettings where
        toJSON SubscriptionTrialSettings{..}
          = object
              (catMaybes
                 [("isInTrial" .=) <$> _stsIsInTrial,
                  ("trialEndTime" .=) <$> _stsTrialEndTime])

-- | JSON template for address of a customer.
--
-- /See:/ 'address' smart constructor.
data Address = Address
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
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Address
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

-- | Name of the organization.
aOrganizationName :: Lens' Address (Maybe Text)
aOrganizationName
  = lens _aOrganizationName
      (\ s a -> s{_aOrganizationName = a})

-- | Identifies the resource as a customer address.
aKind :: Lens' Address Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The postal code. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode
  = lens _aPostalCode (\ s a -> s{_aPostalCode = a})

-- | Address line 1 of the address.
aAddressLine1 :: Lens' Address (Maybe Text)
aAddressLine1
  = lens _aAddressLine1
      (\ s a -> s{_aAddressLine1 = a})

-- | Name of the locality. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aLocality :: Lens' Address (Maybe Text)
aLocality
  = lens _aLocality (\ s a -> s{_aLocality = a})

-- | Name of the contact person.
aContactName :: Lens' Address (Maybe Text)
aContactName
  = lens _aContactName (\ s a -> s{_aContactName = a})

-- | Address line 2 of the address.
aAddressLine2 :: Lens' Address (Maybe Text)
aAddressLine2
  = lens _aAddressLine2
      (\ s a -> s{_aAddressLine2 = a})

-- | ISO 3166 country code.
aCountryCode :: Lens' Address (Maybe Text)
aCountryCode
  = lens _aCountryCode (\ s a -> s{_aCountryCode = a})

-- | Name of the region. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | Address line 3 of the address.
aAddressLine3 :: Lens' Address (Maybe Text)
aAddressLine3
  = lens _aAddressLine3
      (\ s a -> s{_aAddressLine3 = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address <$>
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
        toJSON Address{..}
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
data Customer = Customer
    { _cResourceUiURL  :: !(Maybe Text)
    , _cKind           :: !Text
    , _cCustomerId     :: !(Maybe Text)
    , _cAlternateEmail :: !(Maybe Text)
    , _cCustomerDomain :: !(Maybe Text)
    , _cPhoneNumber    :: !(Maybe Text)
    , _cPostalAddress  :: !(Maybe Address)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Customer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    Customer
    { _cResourceUiURL = Nothing
    , _cKind = "reseller#customer"
    , _cCustomerId = Nothing
    , _cAlternateEmail = Nothing
    , _cCustomerDomain = Nothing
    , _cPhoneNumber = Nothing
    , _cPostalAddress = Nothing
    }

-- | Ui url for customer resource.
cResourceUiURL :: Lens' Customer (Maybe Text)
cResourceUiURL
  = lens _cResourceUiURL
      (\ s a -> s{_cResourceUiURL = a})

-- | Identifies the resource as a customer.
cKind :: Lens' Customer Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The id of the customer.
cCustomerId :: Lens' Customer (Maybe Text)
cCustomerId
  = lens _cCustomerId (\ s a -> s{_cCustomerId = a})

-- | The alternate email of the customer.
cAlternateEmail :: Lens' Customer (Maybe Text)
cAlternateEmail
  = lens _cAlternateEmail
      (\ s a -> s{_cAlternateEmail = a})

-- | The domain name of the customer.
cCustomerDomain :: Lens' Customer (Maybe Text)
cCustomerDomain
  = lens _cCustomerDomain
      (\ s a -> s{_cCustomerDomain = a})

-- | The phone number of the customer.
cPhoneNumber :: Lens' Customer (Maybe Text)
cPhoneNumber
  = lens _cPhoneNumber (\ s a -> s{_cPhoneNumber = a})

-- | The postal address of the customer.
cPostalAddress :: Lens' Customer (Maybe Address)
cPostalAddress
  = lens _cPostalAddress
      (\ s a -> s{_cPostalAddress = a})

instance FromJSON Customer where
        parseJSON
          = withObject "Customer"
              (\ o ->
                 Customer <$>
                   (o .:? "resourceUiUrl") <*>
                     (o .:? "kind" .!= "reseller#customer")
                     <*> (o .:? "customerId")
                     <*> (o .:? "alternateEmail")
                     <*> (o .:? "customerDomain")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "postalAddress"))

instance ToJSON Customer where
        toJSON Customer{..}
          = object
              (catMaybes
                 [("resourceUiUrl" .=) <$> _cResourceUiURL,
                  Just ("kind" .= _cKind),
                  ("customerId" .=) <$> _cCustomerId,
                  ("alternateEmail" .=) <$> _cAlternateEmail,
                  ("customerDomain" .=) <$> _cCustomerDomain,
                  ("phoneNumber" .=) <$> _cPhoneNumber,
                  ("postalAddress" .=) <$> _cPostalAddress])

-- | JSON template for the ChangePlan rpc request.
--
-- /See:/ 'changePlanRequest' smart constructor.
data ChangePlanRequest = ChangePlanRequest
    { _cprKind            :: !Text
    , _cprPlanName        :: !(Maybe Text)
    , _cprPurchaseOrderId :: !(Maybe Text)
    , _cprSeats           :: !(Maybe Seats)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangePlanRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprKind'
--
-- * 'cprPlanName'
--
-- * 'cprPurchaseOrderId'
--
-- * 'cprSeats'
changePlanRequest
    :: ChangePlanRequest
changePlanRequest =
    ChangePlanRequest
    { _cprKind = "subscriptions#changePlanRequest"
    , _cprPlanName = Nothing
    , _cprPurchaseOrderId = Nothing
    , _cprSeats = Nothing
    }

-- | Identifies the resource as a subscription change plan request.
cprKind :: Lens' ChangePlanRequest Text
cprKind = lens _cprKind (\ s a -> s{_cprKind = a})

-- | Name of the plan to change to.
cprPlanName :: Lens' ChangePlanRequest (Maybe Text)
cprPlanName
  = lens _cprPlanName (\ s a -> s{_cprPlanName = a})

-- | Purchase order id for your order tracking purposes.
cprPurchaseOrderId :: Lens' ChangePlanRequest (Maybe Text)
cprPurchaseOrderId
  = lens _cprPurchaseOrderId
      (\ s a -> s{_cprPurchaseOrderId = a})

-- | Number\/Limit of seats in the new plan.
cprSeats :: Lens' ChangePlanRequest (Maybe Seats)
cprSeats = lens _cprSeats (\ s a -> s{_cprSeats = a})

instance FromJSON ChangePlanRequest where
        parseJSON
          = withObject "ChangePlanRequest"
              (\ o ->
                 ChangePlanRequest <$>
                   (o .:? "kind" .!= "subscriptions#changePlanRequest")
                     <*> (o .:? "planName")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats"))

instance ToJSON ChangePlanRequest where
        toJSON ChangePlanRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cprKind),
                  ("planName" .=) <$> _cprPlanName,
                  ("purchaseOrderId" .=) <$> _cprPurchaseOrderId,
                  ("seats" .=) <$> _cprSeats])

-- | Interval of the commitment if it is a commitment plan.
--
-- /See:/ 'subscriptionPlanCommitmentInterval' smart constructor.
data SubscriptionPlanCommitmentInterval = SubscriptionPlanCommitmentInterval
    { _spciStartTime :: !(Maybe Int64)
    , _spciEndTime   :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SubscriptionPlanCommitmentInterval
    { _spciStartTime = Nothing
    , _spciEndTime = Nothing
    }

-- | Start time of the commitment interval in milliseconds since Unix epoch.
spciStartTime :: Lens' SubscriptionPlanCommitmentInterval (Maybe Int64)
spciStartTime
  = lens _spciStartTime
      (\ s a -> s{_spciStartTime = a})

-- | End time of the commitment interval in milliseconds since Unix epoch.
spciEndTime :: Lens' SubscriptionPlanCommitmentInterval (Maybe Int64)
spciEndTime
  = lens _spciEndTime (\ s a -> s{_spciEndTime = a})

instance FromJSON SubscriptionPlanCommitmentInterval
         where
        parseJSON
          = withObject "SubscriptionPlanCommitmentInterval"
              (\ o ->
                 SubscriptionPlanCommitmentInterval <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON SubscriptionPlanCommitmentInterval
         where
        toJSON SubscriptionPlanCommitmentInterval{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _spciStartTime,
                  ("endTime" .=) <$> _spciEndTime])

-- | Plan details of the subscription
--
-- /See:/ 'subscriptionPlan' smart constructor.
data SubscriptionPlan = SubscriptionPlan
    { _spCommitmentInterval :: !(Maybe SubscriptionPlanCommitmentInterval)
    , _spIsCommitmentPlan   :: !(Maybe Bool)
    , _spPlanName           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SubscriptionPlan
    { _spCommitmentInterval = Nothing
    , _spIsCommitmentPlan = Nothing
    , _spPlanName = Nothing
    }

-- | Interval of the commitment if it is a commitment plan.
spCommitmentInterval :: Lens' SubscriptionPlan (Maybe SubscriptionPlanCommitmentInterval)
spCommitmentInterval
  = lens _spCommitmentInterval
      (\ s a -> s{_spCommitmentInterval = a})

-- | Whether the plan is a commitment plan or not.
spIsCommitmentPlan :: Lens' SubscriptionPlan (Maybe Bool)
spIsCommitmentPlan
  = lens _spIsCommitmentPlan
      (\ s a -> s{_spIsCommitmentPlan = a})

-- | The plan name of this subscription\'s plan.
spPlanName :: Lens' SubscriptionPlan (Maybe Text)
spPlanName
  = lens _spPlanName (\ s a -> s{_spPlanName = a})

instance FromJSON SubscriptionPlan where
        parseJSON
          = withObject "SubscriptionPlan"
              (\ o ->
                 SubscriptionPlan <$>
                   (o .:? "commitmentInterval") <*>
                     (o .:? "isCommitmentPlan")
                     <*> (o .:? "planName"))

instance ToJSON SubscriptionPlan where
        toJSON SubscriptionPlan{..}
          = object
              (catMaybes
                 [("commitmentInterval" .=) <$> _spCommitmentInterval,
                  ("isCommitmentPlan" .=) <$> _spIsCommitmentPlan,
                  ("planName" .=) <$> _spPlanName])

-- | JSON template for a subscription list.
--
-- /See:/ 'subscriptions' smart constructor.
data Subscriptions = Subscriptions
    { _sNextPageToken :: !(Maybe Text)
    , _sKind          :: !Text
    , _sSubscriptions :: !(Maybe [Subscription])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Subscriptions
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

-- | Identifies the resource as a collection of subscriptions.
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
                 Subscriptions <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "reseller#subscriptions")
                     <*> (o .:? "subscriptions" .!= mempty))

instance ToJSON Subscriptions where
        toJSON Subscriptions{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sNextPageToken,
                  Just ("kind" .= _sKind),
                  ("subscriptions" .=) <$> _sSubscriptions])

-- | JSON template for subscription seats.
--
-- /See:/ 'seats' smart constructor.
data Seats = Seats
    { _seaNumberOfSeats         :: !(Maybe Int32)
    , _seaMaximumNumberOfSeats  :: !(Maybe Int32)
    , _seaLicensedNumberOfSeats :: !(Maybe Int32)
    , _seaKind                  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Seats
    { _seaNumberOfSeats = Nothing
    , _seaMaximumNumberOfSeats = Nothing
    , _seaLicensedNumberOfSeats = Nothing
    , _seaKind = "subscriptions#seats"
    }

-- | Number of seats to purchase. This is applicable only for a commitment
-- plan.
seaNumberOfSeats :: Lens' Seats (Maybe Int32)
seaNumberOfSeats
  = lens _seaNumberOfSeats
      (\ s a -> s{_seaNumberOfSeats = a})

-- | Maximum number of seats that can be purchased. This needs to be provided
-- only for a non-commitment plan. For a commitment plan it is decided by
-- the contract.
seaMaximumNumberOfSeats :: Lens' Seats (Maybe Int32)
seaMaximumNumberOfSeats
  = lens _seaMaximumNumberOfSeats
      (\ s a -> s{_seaMaximumNumberOfSeats = a})

-- | Read-only field containing the current number of licensed seats for
-- FLEXIBLE Google-Apps subscriptions and secondary subscriptions such as
-- Google-Vault and Drive-storage.
seaLicensedNumberOfSeats :: Lens' Seats (Maybe Int32)
seaLicensedNumberOfSeats
  = lens _seaLicensedNumberOfSeats
      (\ s a -> s{_seaLicensedNumberOfSeats = a})

-- | Identifies the resource as a subscription change plan request.
seaKind :: Lens' Seats Text
seaKind = lens _seaKind (\ s a -> s{_seaKind = a})

instance FromJSON Seats where
        parseJSON
          = withObject "Seats"
              (\ o ->
                 Seats <$>
                   (o .:? "numberOfSeats") <*>
                     (o .:? "maximumNumberOfSeats")
                     <*> (o .:? "licensedNumberOfSeats")
                     <*> (o .:? "kind" .!= "subscriptions#seats"))

instance ToJSON Seats where
        toJSON Seats{..}
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
data RenewalSettings = RenewalSettings
    { _rsKind        :: !Text
    , _rsRenewalType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    RenewalSettings
    { _rsKind = "subscriptions#renewalSettings"
    , _rsRenewalType = Nothing
    }

-- | Identifies the resource as a subscription renewal setting.
rsKind :: Lens' RenewalSettings Text
rsKind = lens _rsKind (\ s a -> s{_rsKind = a})

-- | Subscription renewal type.
rsRenewalType :: Lens' RenewalSettings (Maybe Text)
rsRenewalType
  = lens _rsRenewalType
      (\ s a -> s{_rsRenewalType = a})

instance FromJSON RenewalSettings where
        parseJSON
          = withObject "RenewalSettings"
              (\ o ->
                 RenewalSettings <$>
                   (o .:? "kind" .!= "subscriptions#renewalSettings")
                     <*> (o .:? "renewalType"))

instance ToJSON RenewalSettings where
        toJSON RenewalSettings{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rsKind),
                  ("renewalType" .=) <$> _rsRenewalType])

-- | JSON template for a subscription.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription
    { _subCreationTime      :: !(Maybe Int64)
    , _subBillingMethod     :: !(Maybe Text)
    , _subStatus            :: !(Maybe Text)
    , _subTrialSettings     :: !(Maybe SubscriptionTrialSettings)
    , _subResourceUiURL     :: !(Maybe Text)
    , _subKind              :: !Text
    , _subSKUId             :: !(Maybe Text)
    , _subPlan              :: !(Maybe SubscriptionPlan)
    , _subCustomerId        :: !(Maybe Text)
    , _subSuspensionReasons :: !(Maybe [Text])
    , _subTransferInfo      :: !(Maybe SubscriptionTransferInfo)
    , _subPurchaseOrderId   :: !(Maybe Text)
    , _subSeats             :: !(Maybe Seats)
    , _subRenewalSettings   :: !(Maybe RenewalSettings)
    , _subSubscriptionId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'subResourceUiURL'
--
-- * 'subKind'
--
-- * 'subSKUId'
--
-- * 'subPlan'
--
-- * 'subCustomerId'
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
    Subscription
    { _subCreationTime = Nothing
    , _subBillingMethod = Nothing
    , _subStatus = Nothing
    , _subTrialSettings = Nothing
    , _subResourceUiURL = Nothing
    , _subKind = "reseller#subscription"
    , _subSKUId = Nothing
    , _subPlan = Nothing
    , _subCustomerId = Nothing
    , _subSuspensionReasons = Nothing
    , _subTransferInfo = Nothing
    , _subPurchaseOrderId = Nothing
    , _subSeats = Nothing
    , _subRenewalSettings = Nothing
    , _subSubscriptionId = Nothing
    }

-- | Creation time of this subscription in milliseconds since Unix epoch.
subCreationTime :: Lens' Subscription (Maybe Int64)
subCreationTime
  = lens _subCreationTime
      (\ s a -> s{_subCreationTime = a})

-- | Billing method of this subscription.
subBillingMethod :: Lens' Subscription (Maybe Text)
subBillingMethod
  = lens _subBillingMethod
      (\ s a -> s{_subBillingMethod = a})

-- | Status of the subscription.
subStatus :: Lens' Subscription (Maybe Text)
subStatus
  = lens _subStatus (\ s a -> s{_subStatus = a})

-- | Trial Settings of the subscription.
subTrialSettings :: Lens' Subscription (Maybe SubscriptionTrialSettings)
subTrialSettings
  = lens _subTrialSettings
      (\ s a -> s{_subTrialSettings = a})

-- | Ui url for subscription resource.
subResourceUiURL :: Lens' Subscription (Maybe Text)
subResourceUiURL
  = lens _subResourceUiURL
      (\ s a -> s{_subResourceUiURL = a})

-- | Identifies the resource as a Subscription.
subKind :: Lens' Subscription Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | Name of the sku for which this subscription is purchased.
subSKUId :: Lens' Subscription (Maybe Text)
subSKUId = lens _subSKUId (\ s a -> s{_subSKUId = a})

-- | Plan details of the subscription
subPlan :: Lens' Subscription (Maybe SubscriptionPlan)
subPlan = lens _subPlan (\ s a -> s{_subPlan = a})

-- | The id of the customer to whom the subscription belongs.
subCustomerId :: Lens' Subscription (Maybe Text)
subCustomerId
  = lens _subCustomerId
      (\ s a -> s{_subCustomerId = a})

-- | Suspension Reasons
subSuspensionReasons :: Lens' Subscription [Text]
subSuspensionReasons
  = lens _subSuspensionReasons
      (\ s a -> s{_subSuspensionReasons = a})
      . _Default
      . _Coerce

-- | Transfer related information for the subscription.
subTransferInfo :: Lens' Subscription (Maybe SubscriptionTransferInfo)
subTransferInfo
  = lens _subTransferInfo
      (\ s a -> s{_subTransferInfo = a})

-- | Purchase order id for your order tracking purposes.
subPurchaseOrderId :: Lens' Subscription (Maybe Text)
subPurchaseOrderId
  = lens _subPurchaseOrderId
      (\ s a -> s{_subPurchaseOrderId = a})

-- | Number\/Limit of seats in the new plan.
subSeats :: Lens' Subscription (Maybe Seats)
subSeats = lens _subSeats (\ s a -> s{_subSeats = a})

-- | Renewal settings of the subscription.
subRenewalSettings :: Lens' Subscription (Maybe RenewalSettings)
subRenewalSettings
  = lens _subRenewalSettings
      (\ s a -> s{_subRenewalSettings = a})

-- | The id of the subscription.
subSubscriptionId :: Lens' Subscription (Maybe Text)
subSubscriptionId
  = lens _subSubscriptionId
      (\ s a -> s{_subSubscriptionId = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription <$>
                   (o .:? "creationTime") <*> (o .:? "billingMethod")
                     <*> (o .:? "status")
                     <*> (o .:? "trialSettings")
                     <*> (o .:? "resourceUiUrl")
                     <*> (o .:? "kind" .!= "reseller#subscription")
                     <*> (o .:? "skuId")
                     <*> (o .:? "plan")
                     <*> (o .:? "customerId")
                     <*> (o .:? "suspensionReasons" .!= mempty)
                     <*> (o .:? "transferInfo")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats")
                     <*> (o .:? "renewalSettings")
                     <*> (o .:? "subscriptionId"))

instance ToJSON Subscription where
        toJSON Subscription{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _subCreationTime,
                  ("billingMethod" .=) <$> _subBillingMethod,
                  ("status" .=) <$> _subStatus,
                  ("trialSettings" .=) <$> _subTrialSettings,
                  ("resourceUiUrl" .=) <$> _subResourceUiURL,
                  Just ("kind" .= _subKind),
                  ("skuId" .=) <$> _subSKUId, ("plan" .=) <$> _subPlan,
                  ("customerId" .=) <$> _subCustomerId,
                  ("suspensionReasons" .=) <$> _subSuspensionReasons,
                  ("transferInfo" .=) <$> _subTransferInfo,
                  ("purchaseOrderId" .=) <$> _subPurchaseOrderId,
                  ("seats" .=) <$> _subSeats,
                  ("renewalSettings" .=) <$> _subRenewalSettings,
                  ("subscriptionId" .=) <$> _subSubscriptionId])

-- | Transfer related information for the subscription.
--
-- /See:/ 'subscriptionTransferInfo' smart constructor.
data SubscriptionTransferInfo = SubscriptionTransferInfo
    { _stiTransferabilityExpirationTime :: !(Maybe Int64)
    , _stiMinimumTransferableSeats      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SubscriptionTransferInfo
    { _stiTransferabilityExpirationTime = Nothing
    , _stiMinimumTransferableSeats = Nothing
    }

-- | Time when transfer token or intent to transfer will expire.
stiTransferabilityExpirationTime :: Lens' SubscriptionTransferInfo (Maybe Int64)
stiTransferabilityExpirationTime
  = lens _stiTransferabilityExpirationTime
      (\ s a -> s{_stiTransferabilityExpirationTime = a})

stiMinimumTransferableSeats :: Lens' SubscriptionTransferInfo (Maybe Int32)
stiMinimumTransferableSeats
  = lens _stiMinimumTransferableSeats
      (\ s a -> s{_stiMinimumTransferableSeats = a})

instance FromJSON SubscriptionTransferInfo where
        parseJSON
          = withObject "SubscriptionTransferInfo"
              (\ o ->
                 SubscriptionTransferInfo <$>
                   (o .:? "transferabilityExpirationTime") <*>
                     (o .:? "minimumTransferableSeats"))

instance ToJSON SubscriptionTransferInfo where
        toJSON SubscriptionTransferInfo{..}
          = object
              (catMaybes
                 [("transferabilityExpirationTime" .=) <$>
                    _stiTransferabilityExpirationTime,
                  ("minimumTransferableSeats" .=) <$>
                    _stiMinimumTransferableSeats])
