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
-- Module      : Gogol.AppsReseller.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsReseller.Internal.Product
  ( -- * Address
    Address (..),
    newAddress,

    -- * ChangePlanRequest
    ChangePlanRequest (..),
    newChangePlanRequest,

    -- * Customer
    Customer (..),
    newCustomer,

    -- * PrimaryAdmin
    PrimaryAdmin (..),
    newPrimaryAdmin,

    -- * RenewalSettings
    RenewalSettings (..),
    newRenewalSettings,

    -- * ResellernotifyGetwatchdetailsResponse
    ResellernotifyGetwatchdetailsResponse (..),
    newResellernotifyGetwatchdetailsResponse,

    -- * ResellernotifyResource
    ResellernotifyResource (..),
    newResellernotifyResource,

    -- * Seats
    Seats (..),
    newSeats,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * Subscription_Plan
    Subscription_Plan (..),
    newSubscription_Plan,

    -- * Subscription_Plan_CommitmentInterval
    Subscription_Plan_CommitmentInterval (..),
    newSubscription_Plan_CommitmentInterval,

    -- * Subscription_TransferInfo
    Subscription_TransferInfo (..),
    newSubscription_TransferInfo,

    -- * Subscription_TrialSettings
    Subscription_TrialSettings (..),
    newSubscription_TrialSettings,

    -- * Subscriptions
    Subscriptions (..),
    newSubscriptions,
  )
where

import Gogol.AppsReseller.Internal.Sum
import qualified Gogol.Prelude as Core

-- | JSON template for address of a customer.
--
-- /See:/ 'newAddress' smart constructor.
data Address = Address
  { -- | A customer\'s physical address. An address can be composed of one to three lines. The @addressline2@ and @addressLine3@ are optional.
    addressLine1 :: (Core.Maybe Core.Text),
    -- | Line 2 of the address.
    addressLine2 :: (Core.Maybe Core.Text),
    -- | Line 3 of the address.
    addressLine3 :: (Core.Maybe Core.Text),
    -- | The customer contact\'s name. This is required.
    contactName :: (Core.Maybe Core.Text),
    -- | For @countryCode@ information, see the ISO 3166 country code elements. Verify that country is approved for resale of Google products. This property is required when creating a new customer.
    countryCode :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a customer address. Value: @customers#address@
    kind :: Core.Text,
    -- | An example of a @locality@ value is the city of @San Francisco@.
    locality :: (Core.Maybe Core.Text),
    -- | The company or company division name. This is required.
    organizationName :: (Core.Maybe Core.Text),
    -- | A @postalCode@ example is a postal zip code such as @94043@. This property is required when creating a new customer.
    postalCode :: (Core.Maybe Core.Text),
    -- | An example of a @region@ value is @CA@ for the state of California.
    region :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
newAddress ::
  Address
newAddress =
  Address
    { addressLine1 = Core.Nothing,
      addressLine2 = Core.Nothing,
      addressLine3 = Core.Nothing,
      contactName = Core.Nothing,
      countryCode = Core.Nothing,
      kind = "customers#address",
      locality = Core.Nothing,
      organizationName = Core.Nothing,
      postalCode = Core.Nothing,
      region = Core.Nothing
    }

instance Core.FromJSON Address where
  parseJSON =
    Core.withObject
      "Address"
      ( \o ->
          Address
            Core.<$> (o Core..:? "addressLine1")
            Core.<*> (o Core..:? "addressLine2")
            Core.<*> (o Core..:? "addressLine3")
            Core.<*> (o Core..:? "contactName")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "kind" Core..!= "customers#address")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "organizationName")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "region")
      )

instance Core.ToJSON Address where
  toJSON Address {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressLine1" Core..=) Core.<$> addressLine1,
            ("addressLine2" Core..=) Core.<$> addressLine2,
            ("addressLine3" Core..=) Core.<$> addressLine3,
            ("contactName" Core..=) Core.<$> contactName,
            ("countryCode" Core..=) Core.<$> countryCode,
            Core.Just ("kind" Core..= kind),
            ("locality" Core..=) Core.<$> locality,
            ("organizationName" Core..=)
              Core.<$> organizationName,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("region" Core..=) Core.<$> region
          ]
      )

-- | JSON template for the ChangePlan rpc request.
--
-- /See:/ 'newChangePlanRequest' smart constructor.
data ChangePlanRequest = ChangePlanRequest
  { -- | Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be included in @changePlan@ request in order to receive discounted rate. This property is optional. If a deal code has already been added to a subscription, this property may be left empty and the existing discounted rate will still apply (if not empty, only provide the deal code that is already present on the subscription). If a deal code has never been added to a subscription and this property is left blank, regular pricing will apply.
    dealCode :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a subscription change plan request. Value: @subscriptions#changePlanRequest@
    kind :: Core.Text,
    -- | The @planName@ property is required. This is the name of the subscription\'s payment plan. For more information about the Google payment plans, see API concepts. Possible values are: - @ANNUAL_MONTHLY_PAY@ - The annual commitment plan with monthly payments /Caution: /@ANNUAL_MONTHLY_PAY@ is returned as @ANNUAL@ in all API responses. - @ANNUAL_YEARLY_PAY@ - The annual commitment plan with yearly payments - @FLEXIBLE@ - The flexible plan - @TRIAL@ - The 30-day free trial plan
    planName :: (Core.Maybe Core.Text),
    -- | This is an optional property. This purchase order (PO) information is for resellers to use for their company tracking usage. If a @purchaseOrderId@ value is given it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters.
    purchaseOrderId :: (Core.Maybe Core.Text),
    -- | This is a required property. The seats property is the number of user seat licenses.
    seats :: (Core.Maybe Seats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangePlanRequest' with the minimum fields required to make a request.
newChangePlanRequest ::
  ChangePlanRequest
newChangePlanRequest =
  ChangePlanRequest
    { dealCode = Core.Nothing,
      kind = "subscriptions#changePlanRequest",
      planName = Core.Nothing,
      purchaseOrderId = Core.Nothing,
      seats = Core.Nothing
    }

instance Core.FromJSON ChangePlanRequest where
  parseJSON =
    Core.withObject
      "ChangePlanRequest"
      ( \o ->
          ChangePlanRequest
            Core.<$> (o Core..:? "dealCode")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "subscriptions#changePlanRequest"
                     )
            Core.<*> (o Core..:? "planName")
            Core.<*> (o Core..:? "purchaseOrderId")
            Core.<*> (o Core..:? "seats")
      )

instance Core.ToJSON ChangePlanRequest where
  toJSON ChangePlanRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dealCode" Core..=) Core.<$> dealCode,
            Core.Just ("kind" Core..= kind),
            ("planName" Core..=) Core.<$> planName,
            ("purchaseOrderId" Core..=) Core.<$> purchaseOrderId,
            ("seats" Core..=) Core.<$> seats
          ]
      )

-- | When a Google customer\'s account is registered with a reseller, the customer\'s subscriptions for Google services are managed by this reseller. A customer is described by a primary domain name and a physical address.
--
-- /See:/ 'newCustomer' smart constructor.
data Customer = Customer
  { -- | Like the \"Customer email\" in the reseller tools, this email is the secondary contact used if something happens to the customer\'s service such as service outage or a security issue. This property is required when creating a new \"domain\" customer and should not use the same domain as @customerDomain@. The @alternateEmail@ field is not necessary to create a \"team\" customer.
    alternateEmail :: (Core.Maybe Core.Text),
    -- | The customer\'s primary domain name string. @customerDomain@ is required when creating a new customer. Do not include the @www@ prefix in the domain when adding a customer.
    customerDomain :: (Core.Maybe Core.Text),
    -- | Whether the customer\'s primary domain has been verified.
    customerDomainVerified :: (Core.Maybe Core.Bool),
    -- | This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google.
    customerId :: (Core.Maybe Core.Text),
    -- | Identifies the type of the customer. Acceptable values include: * @domain@: Implies a domain-verified customer (default). * @team@: Implies an email-verified customer. For more information, see <https://support.google.com/a/users/answer/9939479 managed teams>.
    customerType :: (Core.Maybe Customer_CustomerType),
    -- | Identifies the resource as a customer. Value: @reseller#customer@
    kind :: Core.Text,
    -- | Customer contact phone number. Must start with \"+\" followed by the country code. The rest of the number can be contiguous numbers or respect the phone local format conventions, but it must be a real phone number and not, for example, \"123\". This field is silently ignored if invalid.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | A customer\'s address information. Each field has a limit of 255 charcters.
    postalAddress :: (Core.Maybe Address),
    -- | The first admin details of the customer, present in case of TEAM customer.
    primaryAdmin :: (Core.Maybe PrimaryAdmin),
    -- | URL to customer\'s Admin console dashboard. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task in the Admin console.
    resourceUiUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Customer' with the minimum fields required to make a request.
newCustomer ::
  Customer
newCustomer =
  Customer
    { alternateEmail = Core.Nothing,
      customerDomain = Core.Nothing,
      customerDomainVerified = Core.Nothing,
      customerId = Core.Nothing,
      customerType = Core.Nothing,
      kind = "reseller#customer",
      phoneNumber = Core.Nothing,
      postalAddress = Core.Nothing,
      primaryAdmin = Core.Nothing,
      resourceUiUrl = Core.Nothing
    }

instance Core.FromJSON Customer where
  parseJSON =
    Core.withObject
      "Customer"
      ( \o ->
          Customer
            Core.<$> (o Core..:? "alternateEmail")
            Core.<*> (o Core..:? "customerDomain")
            Core.<*> (o Core..:? "customerDomainVerified")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "customerType")
            Core.<*> (o Core..:? "kind" Core..!= "reseller#customer")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "postalAddress")
            Core.<*> (o Core..:? "primaryAdmin")
            Core.<*> (o Core..:? "resourceUiUrl")
      )

instance Core.ToJSON Customer where
  toJSON Customer {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternateEmail" Core..=) Core.<$> alternateEmail,
            ("customerDomain" Core..=) Core.<$> customerDomain,
            ("customerDomainVerified" Core..=)
              Core.<$> customerDomainVerified,
            ("customerId" Core..=) Core.<$> customerId,
            ("customerType" Core..=) Core.<$> customerType,
            Core.Just ("kind" Core..= kind),
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("postalAddress" Core..=) Core.<$> postalAddress,
            ("primaryAdmin" Core..=) Core.<$> primaryAdmin,
            ("resourceUiUrl" Core..=) Core.<$> resourceUiUrl
          ]
      )

-- | JSON template for primary admin in case of TEAM customers
--
-- /See:/ 'newPrimaryAdmin' smart constructor.
newtype PrimaryAdmin = PrimaryAdmin
  { -- | The business email of the primary administrator of the customer. The email verification link is sent to this email address at the time of customer creation. Primary administrators have access to the customer\'s Admin Console, including the ability to invite and evict users and manage the administrative needs of the customer.
    primaryEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrimaryAdmin' with the minimum fields required to make a request.
newPrimaryAdmin ::
  PrimaryAdmin
newPrimaryAdmin = PrimaryAdmin {primaryEmail = Core.Nothing}

instance Core.FromJSON PrimaryAdmin where
  parseJSON =
    Core.withObject
      "PrimaryAdmin"
      ( \o ->
          PrimaryAdmin Core.<$> (o Core..:? "primaryEmail")
      )

instance Core.ToJSON PrimaryAdmin where
  toJSON PrimaryAdmin {..} =
    Core.object
      ( Core.catMaybes
          [("primaryEmail" Core..=) Core.<$> primaryEmail]
      )

-- | JSON template for a subscription renewal settings.
--
-- /See:/ 'newRenewalSettings' smart constructor.
data RenewalSettings = RenewalSettings
  { -- | Identifies the resource as a subscription renewal setting. Value: @subscriptions#renewalSettings@
    kind :: Core.Text,
    -- | Renewal settings for the annual commitment plan. For more detailed information, see renewal options in the administrator help center. When renewing a subscription, the @renewalType@ is a required property.
    renewalType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RenewalSettings' with the minimum fields required to make a request.
newRenewalSettings ::
  RenewalSettings
newRenewalSettings =
  RenewalSettings
    { kind = "subscriptions#renewalSettings",
      renewalType = Core.Nothing
    }

instance Core.FromJSON RenewalSettings where
  parseJSON =
    Core.withObject
      "RenewalSettings"
      ( \o ->
          RenewalSettings
            Core.<$> ( o Core..:? "kind"
                         Core..!= "subscriptions#renewalSettings"
                     )
            Core.<*> (o Core..:? "renewalType")
      )

instance Core.ToJSON RenewalSettings where
  toJSON RenewalSettings {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("renewalType" Core..=) Core.<$> renewalType
          ]
      )

-- | JSON template for resellernotify getwatchdetails response.
--
-- /See:/ 'newResellernotifyGetwatchdetailsResponse' smart constructor.
data ResellernotifyGetwatchdetailsResponse = ResellernotifyGetwatchdetailsResponse
  { -- | List of registered service accounts.
    serviceAccountEmailAddresses :: (Core.Maybe [Core.Text]),
    -- | Topic name of the PubSub
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellernotifyGetwatchdetailsResponse' with the minimum fields required to make a request.
newResellernotifyGetwatchdetailsResponse ::
  ResellernotifyGetwatchdetailsResponse
newResellernotifyGetwatchdetailsResponse =
  ResellernotifyGetwatchdetailsResponse
    { serviceAccountEmailAddresses = Core.Nothing,
      topicName = Core.Nothing
    }

instance
  Core.FromJSON
    ResellernotifyGetwatchdetailsResponse
  where
  parseJSON =
    Core.withObject
      "ResellernotifyGetwatchdetailsResponse"
      ( \o ->
          ResellernotifyGetwatchdetailsResponse
            Core.<$> ( o Core..:? "serviceAccountEmailAddresses"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "topicName")
      )

instance
  Core.ToJSON
    ResellernotifyGetwatchdetailsResponse
  where
  toJSON ResellernotifyGetwatchdetailsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("serviceAccountEmailAddresses" Core..=)
              Core.<$> serviceAccountEmailAddresses,
            ("topicName" Core..=) Core.<$> topicName
          ]
      )

-- | JSON template for resellernotify response.
--
-- /See:/ 'newResellernotifyResource' smart constructor.
newtype ResellernotifyResource = ResellernotifyResource
  { -- | Topic name of the PubSub
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellernotifyResource' with the minimum fields required to make a request.
newResellernotifyResource ::
  ResellernotifyResource
newResellernotifyResource = ResellernotifyResource {topicName = Core.Nothing}

instance Core.FromJSON ResellernotifyResource where
  parseJSON =
    Core.withObject
      "ResellernotifyResource"
      ( \o ->
          ResellernotifyResource
            Core.<$> (o Core..:? "topicName")
      )

instance Core.ToJSON ResellernotifyResource where
  toJSON ResellernotifyResource {..} =
    Core.object
      ( Core.catMaybes
          [("topicName" Core..=) Core.<$> topicName]
      )

-- | JSON template for subscription seats.
--
-- /See:/ 'newSeats' smart constructor.
data Seats = Seats
  { -- | Identifies the resource as a subscription seat setting. Value: @subscriptions#seats@
    kind :: Core.Text,
    -- | Read-only field containing the current number of users that are assigned a license for the product defined in @skuId@. This field\'s value is equivalent to the numerical count of users returned by the Enterprise License Manager API method: </admin-sdk/licensing/v1/reference/licenseAssignments/listForProductAndSku listForProductAndSku>.
    licensedNumberOfSeats :: (Core.Maybe Core.Int32),
    -- | This is a required property and is exclusive to subscriptions with @FLEXIBLE@ or @TRIAL@ plans. This property sets the maximum number of licensed users allowed on a subscription. This quantity can be increased up to the maximum limit defined in the reseller\'s contract. The minimum quantity is the current number of users in the customer account. /Note: /G Suite subscriptions automatically assign a license to every user.
    maximumNumberOfSeats :: (Core.Maybe Core.Int32),
    -- | This is a required property and is exclusive to subscriptions with @ANNUAL_MONTHLY_PAY@ and @ANNUAL_YEARLY_PAY@ plans. This property sets the maximum number of licenses assignable to users on a subscription. The reseller can add more licenses, but once set, the @numberOfSeats@ cannot be reduced until renewal. The reseller is invoiced based on the @numberOfSeats@ value regardless of how many of these user licenses are assigned. /Note: /Google Workspace subscriptions automatically assign a license to every user.
    numberOfSeats :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Seats' with the minimum fields required to make a request.
newSeats ::
  Seats
newSeats =
  Seats
    { kind = "subscriptions#seats",
      licensedNumberOfSeats = Core.Nothing,
      maximumNumberOfSeats = Core.Nothing,
      numberOfSeats = Core.Nothing
    }

instance Core.FromJSON Seats where
  parseJSON =
    Core.withObject
      "Seats"
      ( \o ->
          Seats
            Core.<$> (o Core..:? "kind" Core..!= "subscriptions#seats")
            Core.<*> (o Core..:? "licensedNumberOfSeats")
            Core.<*> (o Core..:? "maximumNumberOfSeats")
            Core.<*> (o Core..:? "numberOfSeats")
      )

instance Core.ToJSON Seats where
  toJSON Seats {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("licensedNumberOfSeats" Core..=)
              Core.<$> licensedNumberOfSeats,
            ("maximumNumberOfSeats" Core..=)
              Core.<$> maximumNumberOfSeats,
            ("numberOfSeats" Core..=) Core.<$> numberOfSeats
          ]
      )

-- | JSON template for a subscription.
--
-- /See:/ 'newSubscription' smart constructor.
data Subscription = Subscription
  { -- | Read-only field that returns the current billing method for a subscription.
    billingMethod :: (Core.Maybe Core.Text),
    -- | The @creationTime@ property is the date when subscription was created. It is in milliseconds using the Epoch format. See an example Epoch converter.
    creationTime :: (Core.Maybe Core.Int64),
    -- | Primary domain name of the customer
    customerDomain :: (Core.Maybe Core.Text),
    -- | This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google.
    customerId :: (Core.Maybe Core.Text),
    -- | Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be included in @insert@ requests in order to receive discounted rate. This property is optional, regular pricing applies if left empty.
    dealCode :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a Subscription. Value: @reseller#subscription@
    kind :: Core.Text,
    -- | The @plan@ property is required. In this version of the API, the G Suite plans are the flexible plan, annual commitment plan, and the 30-day free trial plan. For more information about the API\"s payment plans, see the API concepts.
    plan :: (Core.Maybe Subscription_Plan),
    -- | This is an optional property. This purchase order (PO) information is for resellers to use for their company tracking usage. If a @purchaseOrderId@ value is given it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters.
    purchaseOrderId :: (Core.Maybe Core.Text),
    -- | Renewal settings for the annual commitment plan. For more detailed information, see renewal options in the administrator help center.
    renewalSettings :: (Core.Maybe RenewalSettings),
    -- | URL to customer\'s Subscriptions page in the Admin console. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task using the Subscriptions page in the Admin console.
    resourceUiUrl :: (Core.Maybe Core.Text),
    -- | This is a required property. The number and limit of user seat licenses in the plan.
    seats :: (Core.Maybe Seats),
    -- | A required property. The @skuId@ is a unique system identifier for a product\'s SKU assigned to a customer in the subscription. For products and SKUs available in this version of the API, see Product and SKU IDs.
    skuId :: (Core.Maybe Core.Text),
    -- | Read-only external display name for a product\'s SKU assigned to a customer in the subscription. SKU names are subject to change at Google\'s discretion. For products and SKUs available in this version of the API, see Product and SKU IDs.
    skuName :: (Core.Maybe Core.Text),
    -- | This is an optional property.
    status :: (Core.Maybe Core.Text),
    -- | The @subscriptionId@ is the subscription identifier and is unique for each customer. This is a required property. Since a @subscriptionId@ changes when a subscription is updated, we recommend not using this ID as a key for persistent data. Use the @subscriptionId@ as described in retrieve all reseller subscriptions.
    subscriptionId :: (Core.Maybe Core.Text),
    -- | Read-only field containing an enumerable of all the current suspension reasons for a subscription. It is possible for a subscription to have many concurrent, overlapping suspension reasons. A subscription\'s @STATUS@ is @SUSPENDED@ until all pending suspensions are removed. Possible options include: - @PENDING_TOS_ACCEPTANCE@ - The customer has not logged in and accepted the G Suite Resold Terms of Services. - @RENEWAL_WITH_TYPE_CANCEL@ - The customer\'s commitment ended and their service was cancelled at the end of their term. - @RESELLER_INITIATED@ - A manual suspension invoked by a Reseller. - @TRIAL_ENDED@ - The customer\'s trial expired without a plan selected. - @OTHER@ - The customer is suspended for an internal Google reason (e.g. abuse or otherwise).
    suspensionReasons :: (Core.Maybe [Core.Text]),
    -- | Read-only transfer related information for the subscription. For more information, see retrieve transferable subscriptions for a customer.
    transferInfo :: (Core.Maybe Subscription_TransferInfo),
    -- | The G Suite annual commitment and flexible payment plans can be in a 30-day free trial. For more information, see the API concepts.
    trialSettings :: (Core.Maybe Subscription_TrialSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
newSubscription ::
  Subscription
newSubscription =
  Subscription
    { billingMethod = Core.Nothing,
      creationTime = Core.Nothing,
      customerDomain = Core.Nothing,
      customerId = Core.Nothing,
      dealCode = Core.Nothing,
      kind = "reseller#subscription",
      plan = Core.Nothing,
      purchaseOrderId = Core.Nothing,
      renewalSettings = Core.Nothing,
      resourceUiUrl = Core.Nothing,
      seats = Core.Nothing,
      skuId = Core.Nothing,
      skuName = Core.Nothing,
      status = Core.Nothing,
      subscriptionId = Core.Nothing,
      suspensionReasons = Core.Nothing,
      transferInfo = Core.Nothing,
      trialSettings = Core.Nothing
    }

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject
      "Subscription"
      ( \o ->
          Subscription
            Core.<$> (o Core..:? "billingMethod")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "customerDomain")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "dealCode")
            Core.<*> (o Core..:? "kind" Core..!= "reseller#subscription")
            Core.<*> (o Core..:? "plan")
            Core.<*> (o Core..:? "purchaseOrderId")
            Core.<*> (o Core..:? "renewalSettings")
            Core.<*> (o Core..:? "resourceUiUrl")
            Core.<*> (o Core..:? "seats")
            Core.<*> (o Core..:? "skuId")
            Core.<*> (o Core..:? "skuName")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "subscriptionId")
            Core.<*> (o Core..:? "suspensionReasons" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transferInfo")
            Core.<*> (o Core..:? "trialSettings")
      )

instance Core.ToJSON Subscription where
  toJSON Subscription {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingMethod" Core..=) Core.<$> billingMethod,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("customerDomain" Core..=) Core.<$> customerDomain,
            ("customerId" Core..=) Core.<$> customerId,
            ("dealCode" Core..=) Core.<$> dealCode,
            Core.Just ("kind" Core..= kind),
            ("plan" Core..=) Core.<$> plan,
            ("purchaseOrderId" Core..=) Core.<$> purchaseOrderId,
            ("renewalSettings" Core..=) Core.<$> renewalSettings,
            ("resourceUiUrl" Core..=) Core.<$> resourceUiUrl,
            ("seats" Core..=) Core.<$> seats,
            ("skuId" Core..=) Core.<$> skuId,
            ("skuName" Core..=) Core.<$> skuName,
            ("status" Core..=) Core.<$> status,
            ("subscriptionId" Core..=) Core.<$> subscriptionId,
            ("suspensionReasons" Core..=)
              Core.<$> suspensionReasons,
            ("transferInfo" Core..=) Core.<$> transferInfo,
            ("trialSettings" Core..=) Core.<$> trialSettings
          ]
      )

-- | The @plan@ property is required. In this version of the API, the G Suite plans are the flexible plan, annual commitment plan, and the 30-day free trial plan. For more information about the API\"s payment plans, see the API concepts.
--
-- /See:/ 'newSubscription_Plan' smart constructor.
data Subscription_Plan = Subscription_Plan
  { -- | In this version of the API, annual commitment plan\'s interval is one year. /Note: /When @billingMethod@ value is @OFFLINE@, the subscription property object @plan.commitmentInterval@ is omitted in all API responses.
    commitmentInterval :: (Core.Maybe Subscription_Plan_CommitmentInterval),
    -- | The @isCommitmentPlan@ property\'s boolean value identifies the plan as an annual commitment plan: - @true@ — The subscription\'s plan is an annual commitment plan. - @false@ — The plan is not an annual commitment plan.
    isCommitmentPlan :: (Core.Maybe Core.Bool),
    -- | The @planName@ property is required. This is the name of the subscription\'s plan. For more information about the Google payment plans, see the API concepts. Possible values are: - @ANNUAL_MONTHLY_PAY@ — The annual commitment plan with monthly payments. /Caution: /@ANNUAL_MONTHLY_PAY@ is returned as @ANNUAL@ in all API responses. - @ANNUAL_YEARLY_PAY@ — The annual commitment plan with yearly payments - @FLEXIBLE@ — The flexible plan - @TRIAL@ — The 30-day free trial plan. A subscription in trial will be suspended after the 30th free day if no payment plan is assigned. Calling @changePlan@ will assign a payment plan to a trial but will not activate the plan. A trial will automatically begin its assigned payment plan after its 30th free day or immediately after calling @startPaidService@. - @FREE@ — The free plan is exclusive to the Cloud Identity SKU and does not incur any billing.
    planName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription_Plan' with the minimum fields required to make a request.
newSubscription_Plan ::
  Subscription_Plan
newSubscription_Plan =
  Subscription_Plan
    { commitmentInterval = Core.Nothing,
      isCommitmentPlan = Core.Nothing,
      planName = Core.Nothing
    }

instance Core.FromJSON Subscription_Plan where
  parseJSON =
    Core.withObject
      "Subscription_Plan"
      ( \o ->
          Subscription_Plan
            Core.<$> (o Core..:? "commitmentInterval")
            Core.<*> (o Core..:? "isCommitmentPlan")
            Core.<*> (o Core..:? "planName")
      )

instance Core.ToJSON Subscription_Plan where
  toJSON Subscription_Plan {..} =
    Core.object
      ( Core.catMaybes
          [ ("commitmentInterval" Core..=)
              Core.<$> commitmentInterval,
            ("isCommitmentPlan" Core..=)
              Core.<$> isCommitmentPlan,
            ("planName" Core..=) Core.<$> planName
          ]
      )

-- | In this version of the API, annual commitment plan\'s interval is one year. /Note: /When @billingMethod@ value is @OFFLINE@, the subscription property object @plan.commitmentInterval@ is omitted in all API responses.
--
-- /See:/ 'newSubscription_Plan_CommitmentInterval' smart constructor.
data Subscription_Plan_CommitmentInterval = Subscription_Plan_CommitmentInterval
  { -- | An annual commitment plan\'s interval\'s @endTime@ in milliseconds using the UNIX Epoch format. See an example Epoch converter.
    endTime :: (Core.Maybe Core.Int64),
    -- | An annual commitment plan\'s interval\'s @startTime@ in milliseconds using UNIX Epoch format. See an example Epoch converter.
    startTime :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription_Plan_CommitmentInterval' with the minimum fields required to make a request.
newSubscription_Plan_CommitmentInterval ::
  Subscription_Plan_CommitmentInterval
newSubscription_Plan_CommitmentInterval =
  Subscription_Plan_CommitmentInterval
    { endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    Subscription_Plan_CommitmentInterval
  where
  parseJSON =
    Core.withObject
      "Subscription_Plan_CommitmentInterval"
      ( \o ->
          Subscription_Plan_CommitmentInterval
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance
  Core.ToJSON
    Subscription_Plan_CommitmentInterval
  where
  toJSON Subscription_Plan_CommitmentInterval {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.. Core.AsText
              Core.<$> endTime,
            ("startTime" Core..=) Core.. Core.AsText
              Core.<$> startTime
          ]
      )

-- | Read-only transfer related information for the subscription. For more information, see retrieve transferable subscriptions for a customer.
--
-- /See:/ 'newSubscription_TransferInfo' smart constructor.
data Subscription_TransferInfo = Subscription_TransferInfo
  { -- | The @skuId@ of the current resold subscription. This is populated only when the customer has a subscription with a legacy SKU and the subscription resource is populated with the @skuId@ of the SKU recommended for the transfer.
    currentLegacySkuId :: (Core.Maybe Core.Text),
    -- | When inserting a subscription, this is the minimum number of seats listed in the transfer order for this product. For example, if the customer has 20 users, the reseller cannot place a transfer order of 15 seats. The minimum is 20 seats.
    minimumTransferableSeats :: (Core.Maybe Core.Int32),
    -- | The time when transfer token or intent to transfer will expire. The time is in milliseconds using UNIX Epoch format.
    transferabilityExpirationTime :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription_TransferInfo' with the minimum fields required to make a request.
newSubscription_TransferInfo ::
  Subscription_TransferInfo
newSubscription_TransferInfo =
  Subscription_TransferInfo
    { currentLegacySkuId = Core.Nothing,
      minimumTransferableSeats = Core.Nothing,
      transferabilityExpirationTime = Core.Nothing
    }

instance Core.FromJSON Subscription_TransferInfo where
  parseJSON =
    Core.withObject
      "Subscription_TransferInfo"
      ( \o ->
          Subscription_TransferInfo
            Core.<$> (o Core..:? "currentLegacySkuId")
            Core.<*> (o Core..:? "minimumTransferableSeats")
            Core.<*> (o Core..:? "transferabilityExpirationTime")
      )

instance Core.ToJSON Subscription_TransferInfo where
  toJSON Subscription_TransferInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentLegacySkuId" Core..=)
              Core.<$> currentLegacySkuId,
            ("minimumTransferableSeats" Core..=)
              Core.<$> minimumTransferableSeats,
            ("transferabilityExpirationTime" Core..=)
              Core.. Core.AsText
              Core.<$> transferabilityExpirationTime
          ]
      )

-- | The G Suite annual commitment and flexible payment plans can be in a 30-day free trial. For more information, see the API concepts.
--
-- /See:/ 'newSubscription_TrialSettings' smart constructor.
data Subscription_TrialSettings = Subscription_TrialSettings
  { -- | Determines if a subscription\'s plan is in a 30-day free trial or not: - @true@ — The plan is in trial. - @false@ — The plan is not in trial.
    isInTrial :: (Core.Maybe Core.Bool),
    -- | Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example Epoch converter.
    trialEndTime :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription_TrialSettings' with the minimum fields required to make a request.
newSubscription_TrialSettings ::
  Subscription_TrialSettings
newSubscription_TrialSettings =
  Subscription_TrialSettings
    { isInTrial = Core.Nothing,
      trialEndTime = Core.Nothing
    }

instance Core.FromJSON Subscription_TrialSettings where
  parseJSON =
    Core.withObject
      "Subscription_TrialSettings"
      ( \o ->
          Subscription_TrialSettings
            Core.<$> (o Core..:? "isInTrial")
            Core.<*> (o Core..:? "trialEndTime")
      )

instance Core.ToJSON Subscription_TrialSettings where
  toJSON Subscription_TrialSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("isInTrial" Core..=) Core.<$> isInTrial,
            ("trialEndTime" Core..=) Core.. Core.AsText
              Core.<$> trialEndTime
          ]
      )

-- | A subscription manages the relationship of a Google customer\'s payment plan with a product\'s SKU, user licenses, 30-day free trial status, and renewal options. A primary role of a reseller is to manage the Google customer\'s subscriptions.
--
-- /See:/ 'newSubscriptions' smart constructor.
data Subscriptions = Subscriptions
  { -- | Identifies the resource as a collection of subscriptions. Value: reseller#subscriptions
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The subscriptions in this page of results.
    subscriptions :: (Core.Maybe [Subscription])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscriptions' with the minimum fields required to make a request.
newSubscriptions ::
  Subscriptions
newSubscriptions =
  Subscriptions
    { kind = "reseller#subscriptions",
      nextPageToken = Core.Nothing,
      subscriptions = Core.Nothing
    }

instance Core.FromJSON Subscriptions where
  parseJSON =
    Core.withObject
      "Subscriptions"
      ( \o ->
          Subscriptions
            Core.<$> (o Core..:? "kind" Core..!= "reseller#subscriptions")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subscriptions" Core..!= Core.mempty)
      )

instance Core.ToJSON Subscriptions where
  toJSON Subscriptions {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subscriptions" Core..=) Core.<$> subscriptions
          ]
      )
