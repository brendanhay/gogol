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
-- Module      : Network.Google.AndroidDeviceProvisioning.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AndroidDeviceProvisioning.Internal.Product
  ( -- * ClaimDeviceRequest
    ClaimDeviceRequest (..),
    newClaimDeviceRequest,

    -- * ClaimDeviceResponse
    ClaimDeviceResponse (..),
    newClaimDeviceResponse,

    -- * ClaimDevicesRequest
    ClaimDevicesRequest (..),
    newClaimDevicesRequest,

    -- * Company
    Company (..),
    newCompany,

    -- * Configuration
    Configuration (..),
    newConfiguration,

    -- * CreateCustomerRequest
    CreateCustomerRequest (..),
    newCreateCustomerRequest,

    -- * CustomerApplyConfigurationRequest
    CustomerApplyConfigurationRequest (..),
    newCustomerApplyConfigurationRequest,

    -- * CustomerListConfigurationsResponse
    CustomerListConfigurationsResponse (..),
    newCustomerListConfigurationsResponse,

    -- * CustomerListCustomersResponse
    CustomerListCustomersResponse (..),
    newCustomerListCustomersResponse,

    -- * CustomerListDevicesResponse
    CustomerListDevicesResponse (..),
    newCustomerListDevicesResponse,

    -- * CustomerListDpcsResponse
    CustomerListDpcsResponse (..),
    newCustomerListDpcsResponse,

    -- * CustomerRemoveConfigurationRequest
    CustomerRemoveConfigurationRequest (..),
    newCustomerRemoveConfigurationRequest,

    -- * CustomerUnclaimDeviceRequest
    CustomerUnclaimDeviceRequest (..),
    newCustomerUnclaimDeviceRequest,

    -- * Device
    Device (..),
    newDevice,

    -- * DeviceClaim
    DeviceClaim (..),
    newDeviceClaim,

    -- * DeviceIdentifier
    DeviceIdentifier (..),
    newDeviceIdentifier,

    -- * DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- * DeviceMetadata_Entries
    DeviceMetadata_Entries (..),
    newDeviceMetadata_Entries,

    -- * DeviceReference
    DeviceReference (..),
    newDeviceReference,

    -- * DevicesLongRunningOperationMetadata
    DevicesLongRunningOperationMetadata (..),
    newDevicesLongRunningOperationMetadata,

    -- * DevicesLongRunningOperationResponse
    DevicesLongRunningOperationResponse (..),
    newDevicesLongRunningOperationResponse,

    -- * Dpc
    Dpc (..),
    newDpc,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FindDevicesByDeviceIdentifierRequest
    FindDevicesByDeviceIdentifierRequest (..),
    newFindDevicesByDeviceIdentifierRequest,

    -- * FindDevicesByDeviceIdentifierResponse
    FindDevicesByDeviceIdentifierResponse (..),
    newFindDevicesByDeviceIdentifierResponse,

    -- * FindDevicesByOwnerRequest
    FindDevicesByOwnerRequest (..),
    newFindDevicesByOwnerRequest,

    -- * FindDevicesByOwnerResponse
    FindDevicesByOwnerResponse (..),
    newFindDevicesByOwnerResponse,

    -- * ListCustomersResponse
    ListCustomersResponse (..),
    newListCustomersResponse,

    -- * ListVendorCustomersResponse
    ListVendorCustomersResponse (..),
    newListVendorCustomersResponse,

    -- * ListVendorsResponse
    ListVendorsResponse (..),
    newListVendorsResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationPerDevice
    OperationPerDevice (..),
    newOperationPerDevice,

    -- * PartnerClaim
    PartnerClaim (..),
    newPartnerClaim,

    -- * PartnerUnclaim
    PartnerUnclaim (..),
    newPartnerUnclaim,

    -- * PerDeviceStatusInBatch
    PerDeviceStatusInBatch (..),
    newPerDeviceStatusInBatch,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * UnclaimDeviceRequest
    UnclaimDeviceRequest (..),
    newUnclaimDeviceRequest,

    -- * UnclaimDevicesRequest
    UnclaimDevicesRequest (..),
    newUnclaimDevicesRequest,

    -- * UpdateDeviceMetadataInBatchRequest
    UpdateDeviceMetadataInBatchRequest (..),
    newUpdateDeviceMetadataInBatchRequest,

    -- * UpdateDeviceMetadataRequest
    UpdateDeviceMetadataRequest (..),
    newUpdateDeviceMetadataRequest,

    -- * UpdateMetadataArguments
    UpdateMetadataArguments (..),
    newUpdateMetadataArguments,
  )
where

import Network.Google.AndroidDeviceProvisioning.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Request message to claim a device on behalf of a customer.
--
-- /See:/ 'newClaimDeviceRequest' smart constructor.
data ClaimDeviceRequest = ClaimDeviceRequest
  { -- | Required. The ID of the customer for whom the device is being claimed.
    customerId :: (Core.Maybe Core.Int64),
    -- | Required. Required. The device identifier of the device to claim.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Optional. The metadata to attach to the device.
    deviceMetadata :: (Core.Maybe DeviceMetadata),
    -- | Required. The section type of the device\'s provisioning record.
    sectionType :: (Core.Maybe ClaimDeviceRequest_SectionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClaimDeviceRequest' with the minimum fields required to make a request.
newClaimDeviceRequest ::
  ClaimDeviceRequest
newClaimDeviceRequest =
  ClaimDeviceRequest
    { customerId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      deviceMetadata = Core.Nothing,
      sectionType = Core.Nothing
    }

instance Core.FromJSON ClaimDeviceRequest where
  parseJSON =
    Core.withObject
      "ClaimDeviceRequest"
      ( \o ->
          ClaimDeviceRequest
            Core.<$> (o Core..:? "customerId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "deviceMetadata")
            Core.<*> (o Core..:? "sectionType")
      )

instance Core.ToJSON ClaimDeviceRequest where
  toJSON ClaimDeviceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerId" Core..=) Core.. Core.AsText
              Core.<$> customerId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("deviceMetadata" Core..=) Core.<$> deviceMetadata,
            ("sectionType" Core..=) Core.<$> sectionType
          ]
      )

-- | Response message containing device id of the claim.
--
-- /See:/ 'newClaimDeviceResponse' smart constructor.
data ClaimDeviceResponse = ClaimDeviceResponse
  { -- | The device ID of the claimed device.
    deviceId :: (Core.Maybe Core.Int64),
    -- | The resource name of the device in the format @partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]@.
    deviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClaimDeviceResponse' with the minimum fields required to make a request.
newClaimDeviceResponse ::
  ClaimDeviceResponse
newClaimDeviceResponse =
  ClaimDeviceResponse {deviceId = Core.Nothing, deviceName = Core.Nothing}

instance Core.FromJSON ClaimDeviceResponse where
  parseJSON =
    Core.withObject
      "ClaimDeviceResponse"
      ( \o ->
          ClaimDeviceResponse
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceName")
      )

instance Core.ToJSON ClaimDeviceResponse where
  toJSON ClaimDeviceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceName" Core..=) Core.<$> deviceName
          ]
      )

-- | Request to claim devices asynchronously in batch. Claiming a device adds the device to zero-touch enrollment and shows the device in the customer\'s view of the portal.
--
-- /See:/ 'newClaimDevicesRequest' smart constructor.
newtype ClaimDevicesRequest = ClaimDevicesRequest
  { -- | Required. A list of device claims.
    claims :: (Core.Maybe [PartnerClaim])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClaimDevicesRequest' with the minimum fields required to make a request.
newClaimDevicesRequest ::
  ClaimDevicesRequest
newClaimDevicesRequest = ClaimDevicesRequest {claims = Core.Nothing}

instance Core.FromJSON ClaimDevicesRequest where
  parseJSON =
    Core.withObject
      "ClaimDevicesRequest"
      ( \o ->
          ClaimDevicesRequest
            Core.<$> (o Core..:? "claims" Core..!= Core.mempty)
      )

instance Core.ToJSON ClaimDevicesRequest where
  toJSON ClaimDevicesRequest {..} =
    Core.object
      (Core.catMaybes [("claims" Core..=) Core.<$> claims])

-- | A reseller, vendor, or customer in the zero-touch reseller and customer APIs.
--
-- /See:/ 'newCompany' smart constructor.
data Company = Company
  { -- | Optional. Email address of customer\'s users in the admin role. Each email address must be associated with a Google Account.
    adminEmails :: (Core.Maybe [Core.Text]),
    -- | Output only. The ID of the company. Assigned by the server.
    companyId :: (Core.Maybe Core.Int64),
    -- | Required. The name of the company. For example /XYZ Corp/. Displayed to the company\'s employees in the zero-touch enrollment portal.
    companyName :: (Core.Maybe Core.Text),
    -- | Input only. The preferred locale of the customer represented as a BCP47 language code. This field is validated on input and requests containing unsupported language codes will be rejected. Supported language codes: Arabic (ar) Chinese (Hong Kong) (zh-HK) Chinese (Simplified) (zh-CN) Chinese (Traditional) (zh-TW) Czech (cs) Danish (da) Dutch (nl) English (UK) (en-GB) English (US) (en-US) Filipino (fil) Finnish (fi) French (fr) German (de) Hebrew (iw) Hindi (hi) Hungarian (hu) Indonesian (id) Italian (it) Japanese (ja) Korean (ko) Norwegian (Bokmal) (no) Polish (pl) Portuguese (Brazil) (pt-BR) Portuguese (Portugal) (pt-PT) Russian (ru) Spanish (es) Spanish (Latin America) (es-419) Swedish (sv) Thai (th) Turkish (tr) Ukrainian (uk) Vietnamese (vi)
    languageCode :: (Core.Maybe Core.Text),
    -- | Output only. The API resource name of the company. The resource name is one of the following formats: * @partners\/[PARTNER_ID]\/customers\/[CUSTOMER_ID]@ * @partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]@ * @partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]\/customers\/[CUSTOMER_ID]@ Assigned by the server.
    name :: (Core.Maybe Core.Text),
    -- | Required. Input only. Email address of customer\'s users in the owner role. At least one @owner_email@ is required. Owners share the same access as admins but can also add, delete, and edit your organization\'s portal users.
    ownerEmails :: (Core.Maybe [Core.Text]),
    -- | Input only. If set to true, welcome email will not be sent to the customer. It is recommended to skip the welcome email if devices will be claimed with additional DEVICE_PROTECTION service, as the customer will receive separate emails at device claim time. This field is ignored if this is not a Zero-touch customer.
    skipWelcomeEmail :: (Core.Maybe Core.Bool),
    -- | Output only. Whether any user from the company has accepted the latest Terms of Service (ToS). See TermsStatus.
    termsStatus :: (Core.Maybe Company_TermsStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
newCompany ::
  Company
newCompany =
  Company
    { adminEmails = Core.Nothing,
      companyId = Core.Nothing,
      companyName = Core.Nothing,
      languageCode = Core.Nothing,
      name = Core.Nothing,
      ownerEmails = Core.Nothing,
      skipWelcomeEmail = Core.Nothing,
      termsStatus = Core.Nothing
    }

instance Core.FromJSON Company where
  parseJSON =
    Core.withObject
      "Company"
      ( \o ->
          Company
            Core.<$> (o Core..:? "adminEmails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "companyId")
            Core.<*> (o Core..:? "companyName")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ownerEmails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "skipWelcomeEmail")
            Core.<*> (o Core..:? "termsStatus")
      )

instance Core.ToJSON Company where
  toJSON Company {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminEmails" Core..=) Core.<$> adminEmails,
            ("companyId" Core..=) Core.. Core.AsText
              Core.<$> companyId,
            ("companyName" Core..=) Core.<$> companyName,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("name" Core..=) Core.<$> name,
            ("ownerEmails" Core..=) Core.<$> ownerEmails,
            ("skipWelcomeEmail" Core..=)
              Core.<$> skipWelcomeEmail,
            ("termsStatus" Core..=) Core.<$> termsStatus
          ]
      )

-- | A configuration collects the provisioning options for Android devices. Each configuration combines the following: * The EMM device policy controller (DPC) installed on the devices. * EMM policies enforced on the devices. * Metadata displayed on the device to help users during setup. Customers can add as many configurations as they need. However, zero-touch enrollment works best when a customer sets a default configuration that\'s applied to any new devices the organization purchases.
--
-- /See:/ 'newConfiguration' smart constructor.
data Configuration = Configuration
  { -- | Required. The name of the organization. Zero-touch enrollment shows this organization name to device users during device provisioning.
    companyName :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the configuration. Assigned by the server.
    configurationId :: (Core.Maybe Core.Int64),
    -- | Required. A short name that describes the configuration\'s purpose. For example, /Sales team/ or /Temporary employees/. The zero-touch enrollment portal displays this name to IT admins.
    configurationName :: (Core.Maybe Core.Text),
    -- | Required. The email address that device users can contact to get help. Zero-touch enrollment shows this email address to device users before device provisioning. The value is validated on input.
    contactEmail :: (Core.Maybe Core.Text),
    -- | Required. The telephone number that device users can call, using another device, to get help. Zero-touch enrollment shows this number to device users before device provisioning. Accepts numerals, spaces, the plus sign, hyphens, and parentheses.
    contactPhone :: (Core.Maybe Core.Text),
    -- | A message, containing one or two sentences, to help device users get help or give them more details about what’s happening to their device. Zero-touch enrollment shows this message before the device is provisioned.
    customMessage :: (Core.Maybe Core.Text),
    -- | The JSON-formatted EMM provisioning extras that are passed to the DPC.
    dpcExtras :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the selected DPC (device policy controller) in the format @customers\/[CUSTOMER_ID]\/dpcs\/*@. To list the supported DPCs, call @customers.dpcs.list@.
    dpcResourcePath :: (Core.Maybe Core.Text),
    -- | Required. Whether this is the default configuration that zero-touch enrollment applies to any new devices the organization purchases in the future. Only one customer configuration can be the default. Setting this value to @true@, changes the previous default configuration\'s @isDefault@ value to @false@.
    isDefault :: (Core.Maybe Core.Bool),
    -- | Output only. The API resource name in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@. Assigned by the server.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Configuration' with the minimum fields required to make a request.
newConfiguration ::
  Configuration
newConfiguration =
  Configuration
    { companyName = Core.Nothing,
      configurationId = Core.Nothing,
      configurationName = Core.Nothing,
      contactEmail = Core.Nothing,
      contactPhone = Core.Nothing,
      customMessage = Core.Nothing,
      dpcExtras = Core.Nothing,
      dpcResourcePath = Core.Nothing,
      isDefault = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Configuration where
  parseJSON =
    Core.withObject
      "Configuration"
      ( \o ->
          Configuration
            Core.<$> (o Core..:? "companyName")
            Core.<*> (o Core..:? "configurationId")
            Core.<*> (o Core..:? "configurationName")
            Core.<*> (o Core..:? "contactEmail")
            Core.<*> (o Core..:? "contactPhone")
            Core.<*> (o Core..:? "customMessage")
            Core.<*> (o Core..:? "dpcExtras")
            Core.<*> (o Core..:? "dpcResourcePath")
            Core.<*> (o Core..:? "isDefault")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Configuration where
  toJSON Configuration {..} =
    Core.object
      ( Core.catMaybes
          [ ("companyName" Core..=) Core.<$> companyName,
            ("configurationId" Core..=) Core.. Core.AsText
              Core.<$> configurationId,
            ("configurationName" Core..=)
              Core.<$> configurationName,
            ("contactEmail" Core..=) Core.<$> contactEmail,
            ("contactPhone" Core..=) Core.<$> contactPhone,
            ("customMessage" Core..=) Core.<$> customMessage,
            ("dpcExtras" Core..=) Core.<$> dpcExtras,
            ("dpcResourcePath" Core..=) Core.<$> dpcResourcePath,
            ("isDefault" Core..=) Core.<$> isDefault,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Request message to create a customer.
--
-- /See:/ 'newCreateCustomerRequest' smart constructor.
newtype CreateCustomerRequest = CreateCustomerRequest
  { -- | Required. The company data to populate the new customer. Must contain a value for @companyName@ and at least one @owner_email@ that\'s associated with a Google Account. The values for @companyId@ and @name@ must be empty.
    customer :: (Core.Maybe Company)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateCustomerRequest' with the minimum fields required to make a request.
newCreateCustomerRequest ::
  CreateCustomerRequest
newCreateCustomerRequest = CreateCustomerRequest {customer = Core.Nothing}

instance Core.FromJSON CreateCustomerRequest where
  parseJSON =
    Core.withObject
      "CreateCustomerRequest"
      ( \o ->
          CreateCustomerRequest
            Core.<$> (o Core..:? "customer")
      )

instance Core.ToJSON CreateCustomerRequest where
  toJSON CreateCustomerRequest {..} =
    Core.object
      ( Core.catMaybes
          [("customer" Core..=) Core.<$> customer]
      )

-- | Request message for customer to assign a configuration to device.
--
-- /See:/ 'newCustomerApplyConfigurationRequest' smart constructor.
data CustomerApplyConfigurationRequest = CustomerApplyConfigurationRequest
  { -- | Required. The configuration applied to the device in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@.
    configuration :: (Core.Maybe Core.Text),
    -- | Required. The device the configuration is applied to. There are custom validations in ApplyConfigurationRequestValidator
    device :: (Core.Maybe DeviceReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerApplyConfigurationRequest' with the minimum fields required to make a request.
newCustomerApplyConfigurationRequest ::
  CustomerApplyConfigurationRequest
newCustomerApplyConfigurationRequest =
  CustomerApplyConfigurationRequest
    { configuration = Core.Nothing,
      device = Core.Nothing
    }

instance
  Core.FromJSON
    CustomerApplyConfigurationRequest
  where
  parseJSON =
    Core.withObject
      "CustomerApplyConfigurationRequest"
      ( \o ->
          CustomerApplyConfigurationRequest
            Core.<$> (o Core..:? "configuration")
            Core.<*> (o Core..:? "device")
      )

instance
  Core.ToJSON
    CustomerApplyConfigurationRequest
  where
  toJSON CustomerApplyConfigurationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("configuration" Core..=) Core.<$> configuration,
            ("device" Core..=) Core.<$> device
          ]
      )

-- | Response message of customer\'s listing configuration.
--
-- /See:/ 'newCustomerListConfigurationsResponse' smart constructor.
newtype CustomerListConfigurationsResponse = CustomerListConfigurationsResponse
  { -- | The configurations.
    configurations :: (Core.Maybe [Configuration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerListConfigurationsResponse' with the minimum fields required to make a request.
newCustomerListConfigurationsResponse ::
  CustomerListConfigurationsResponse
newCustomerListConfigurationsResponse =
  CustomerListConfigurationsResponse {configurations = Core.Nothing}

instance
  Core.FromJSON
    CustomerListConfigurationsResponse
  where
  parseJSON =
    Core.withObject
      "CustomerListConfigurationsResponse"
      ( \o ->
          CustomerListConfigurationsResponse
            Core.<$> (o Core..:? "configurations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    CustomerListConfigurationsResponse
  where
  toJSON CustomerListConfigurationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("configurations" Core..=) Core.<$> configurations]
      )

-- | Response message for listing my customers.
--
-- /See:/ 'newCustomerListCustomersResponse' smart constructor.
data CustomerListCustomersResponse = CustomerListCustomersResponse
  { -- | The customer accounts the calling user is a member of.
    customers :: (Core.Maybe [Company]),
    -- | A token used to access the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerListCustomersResponse' with the minimum fields required to make a request.
newCustomerListCustomersResponse ::
  CustomerListCustomersResponse
newCustomerListCustomersResponse =
  CustomerListCustomersResponse
    { customers = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CustomerListCustomersResponse where
  parseJSON =
    Core.withObject
      "CustomerListCustomersResponse"
      ( \o ->
          CustomerListCustomersResponse
            Core.<$> (o Core..:? "customers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CustomerListCustomersResponse where
  toJSON CustomerListCustomersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("customers" Core..=) Core.<$> customers,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message of customer\'s liting devices.
--
-- /See:/ 'newCustomerListDevicesResponse' smart constructor.
data CustomerListDevicesResponse = CustomerListDevicesResponse
  { -- | The customer\'s devices.
    devices :: (Core.Maybe [Device]),
    -- | A token used to access the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerListDevicesResponse' with the minimum fields required to make a request.
newCustomerListDevicesResponse ::
  CustomerListDevicesResponse
newCustomerListDevicesResponse =
  CustomerListDevicesResponse
    { devices = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CustomerListDevicesResponse where
  parseJSON =
    Core.withObject
      "CustomerListDevicesResponse"
      ( \o ->
          CustomerListDevicesResponse
            Core.<$> (o Core..:? "devices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CustomerListDevicesResponse where
  toJSON CustomerListDevicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("devices" Core..=) Core.<$> devices,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message of customer\'s listing DPCs.
--
-- /See:/ 'newCustomerListDpcsResponse' smart constructor.
newtype CustomerListDpcsResponse = CustomerListDpcsResponse
  { -- | The list of DPCs available to the customer that support zero-touch enrollment.
    dpcs :: (Core.Maybe [Dpc])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerListDpcsResponse' with the minimum fields required to make a request.
newCustomerListDpcsResponse ::
  CustomerListDpcsResponse
newCustomerListDpcsResponse = CustomerListDpcsResponse {dpcs = Core.Nothing}

instance Core.FromJSON CustomerListDpcsResponse where
  parseJSON =
    Core.withObject
      "CustomerListDpcsResponse"
      ( \o ->
          CustomerListDpcsResponse
            Core.<$> (o Core..:? "dpcs" Core..!= Core.mempty)
      )

instance Core.ToJSON CustomerListDpcsResponse where
  toJSON CustomerListDpcsResponse {..} =
    Core.object
      (Core.catMaybes [("dpcs" Core..=) Core.<$> dpcs])

-- | Request message for customer to remove the configuration from device.
--
-- /See:/ 'newCustomerRemoveConfigurationRequest' smart constructor.
newtype CustomerRemoveConfigurationRequest = CustomerRemoveConfigurationRequest
  { -- | Required. The device to remove the configuration from. There are custom validations in RemoveConfigurationRequestValidator
    device :: (Core.Maybe DeviceReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerRemoveConfigurationRequest' with the minimum fields required to make a request.
newCustomerRemoveConfigurationRequest ::
  CustomerRemoveConfigurationRequest
newCustomerRemoveConfigurationRequest =
  CustomerRemoveConfigurationRequest {device = Core.Nothing}

instance
  Core.FromJSON
    CustomerRemoveConfigurationRequest
  where
  parseJSON =
    Core.withObject
      "CustomerRemoveConfigurationRequest"
      ( \o ->
          CustomerRemoveConfigurationRequest
            Core.<$> (o Core..:? "device")
      )

instance
  Core.ToJSON
    CustomerRemoveConfigurationRequest
  where
  toJSON CustomerRemoveConfigurationRequest {..} =
    Core.object
      (Core.catMaybes [("device" Core..=) Core.<$> device])

-- | Request message for customer to unclaim a device.
--
-- /See:/ 'newCustomerUnclaimDeviceRequest' smart constructor.
newtype CustomerUnclaimDeviceRequest = CustomerUnclaimDeviceRequest
  { -- | Required. The device to unclaim. There are custom validations in UnclaimDeviceRequestValidator.
    device :: (Core.Maybe DeviceReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerUnclaimDeviceRequest' with the minimum fields required to make a request.
newCustomerUnclaimDeviceRequest ::
  CustomerUnclaimDeviceRequest
newCustomerUnclaimDeviceRequest =
  CustomerUnclaimDeviceRequest {device = Core.Nothing}

instance Core.FromJSON CustomerUnclaimDeviceRequest where
  parseJSON =
    Core.withObject
      "CustomerUnclaimDeviceRequest"
      ( \o ->
          CustomerUnclaimDeviceRequest
            Core.<$> (o Core..:? "device")
      )

instance Core.ToJSON CustomerUnclaimDeviceRequest where
  toJSON CustomerUnclaimDeviceRequest {..} =
    Core.object
      (Core.catMaybes [("device" Core..=) Core.<$> device])

-- | An Android device registered for zero-touch enrollment.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device
  { -- | Output only. The provisioning claims for a device. Devices claimed for zero-touch enrollment have a claim with the type @SECTION_TYPE_ZERO_TOUCH@. Call @partners.devices.unclaim@ or @partners.devices.unclaimAsync@ to remove the device from zero-touch enrollment.
    claims :: (Core.Maybe [DeviceClaim]),
    -- | Not available to resellers.
    configuration :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the device. Assigned by the server.
    deviceId :: (Core.Maybe Core.Int64),
    -- | The hardware IDs that identify a manufactured device. To learn more, read <https://developers.google.com/zero-touch/guides/identifiers Identifiers>.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | The metadata attached to the device. Structured as key-value pairs. To learn more, read <https://developers.google.com/zero-touch/guides/metadata Device metadata>.
    deviceMetadata :: (Core.Maybe DeviceMetadata),
    -- | Output only. The API resource name in the format @partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]@. Assigned by the server.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
newDevice ::
  Device
newDevice =
  Device
    { claims = Core.Nothing,
      configuration = Core.Nothing,
      deviceId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      deviceMetadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \o ->
          Device
            Core.<$> (o Core..:? "claims" Core..!= Core.mempty)
            Core.<*> (o Core..:? "configuration")
            Core.<*> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "deviceMetadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Device where
  toJSON Device {..} =
    Core.object
      ( Core.catMaybes
          [ ("claims" Core..=) Core.<$> claims,
            ("configuration" Core..=) Core.<$> configuration,
            ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("deviceMetadata" Core..=) Core.<$> deviceMetadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A record of a device claimed by a reseller for a customer. Devices claimed for zero-touch enrollment have a claim with the type @SECTION_TYPE_ZERO_TOUCH@. To learn more, read </zero-touch/guides/how-it-works#claim Claim devices for customers>.
--
-- /See:/ 'newDeviceClaim' smart constructor.
data DeviceClaim = DeviceClaim
  { -- | The Additional service registered for the device.
    additionalService :: (Core.Maybe DeviceClaim_AdditionalService),
    -- | The ID of the Customer that purchased the device.
    ownerCompanyId :: (Core.Maybe Core.Int64),
    -- | The ID of the reseller that claimed the device.
    resellerId :: (Core.Maybe Core.Int64),
    -- | Output only. The type of claim made on the device.
    sectionType :: (Core.Maybe DeviceClaim_SectionType),
    -- | The timestamp when the device will exit ‘vacation mode’. This value is present iff the device is in \'vacation mode\'.
    vacationModeExpireTime :: (Core.Maybe Core.DateTime'),
    -- | The timestamp when the device was put into ‘vacation mode’. This value is present iff the device is in \'vacation mode\'.
    vacationModeStartTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceClaim' with the minimum fields required to make a request.
newDeviceClaim ::
  DeviceClaim
newDeviceClaim =
  DeviceClaim
    { additionalService = Core.Nothing,
      ownerCompanyId = Core.Nothing,
      resellerId = Core.Nothing,
      sectionType = Core.Nothing,
      vacationModeExpireTime = Core.Nothing,
      vacationModeStartTime = Core.Nothing
    }

instance Core.FromJSON DeviceClaim where
  parseJSON =
    Core.withObject
      "DeviceClaim"
      ( \o ->
          DeviceClaim
            Core.<$> (o Core..:? "additionalService")
            Core.<*> (o Core..:? "ownerCompanyId")
            Core.<*> (o Core..:? "resellerId")
            Core.<*> (o Core..:? "sectionType")
            Core.<*> (o Core..:? "vacationModeExpireTime")
            Core.<*> (o Core..:? "vacationModeStartTime")
      )

instance Core.ToJSON DeviceClaim where
  toJSON DeviceClaim {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalService" Core..=)
              Core.<$> additionalService,
            ("ownerCompanyId" Core..=) Core.. Core.AsText
              Core.<$> ownerCompanyId,
            ("resellerId" Core..=) Core.. Core.AsText
              Core.<$> resellerId,
            ("sectionType" Core..=) Core.<$> sectionType,
            ("vacationModeExpireTime" Core..=)
              Core.<$> vacationModeExpireTime,
            ("vacationModeStartTime" Core..=)
              Core.<$> vacationModeStartTime
          ]
      )

-- | Encapsulates hardware and product IDs to identify a manufactured device. To understand requirements on identifier sets, read <https://developers.google.com/zero-touch/guides/identifiers Identifiers>.
--
-- /See:/ 'newDeviceIdentifier' smart constructor.
data DeviceIdentifier = DeviceIdentifier
  { -- | The device’s IMEI number. Validated on input.
    imei :: (Core.Maybe Core.Text),
    -- | The device manufacturer’s name. Matches the device\'s built-in value returned from @android.os.Build.MANUFACTURER@. Allowed values are listed in </zero-touch/resources/manufacturer-names#manufacturers-names manufacturers>.
    manufacturer :: (Core.Maybe Core.Text),
    -- | The device’s MEID number.
    meid :: (Core.Maybe Core.Text),
    -- | The device model\'s name. Matches the device\'s built-in value returned from @android.os.Build.MODEL@. Allowed values are listed in </zero-touch/resources/manufacturer-names#model-names models>.
    model :: (Core.Maybe Core.Text),
    -- | The manufacturer\'s serial number for the device. This value might not be unique across different device models.
    serialNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceIdentifier' with the minimum fields required to make a request.
newDeviceIdentifier ::
  DeviceIdentifier
newDeviceIdentifier =
  DeviceIdentifier
    { imei = Core.Nothing,
      manufacturer = Core.Nothing,
      meid = Core.Nothing,
      model = Core.Nothing,
      serialNumber = Core.Nothing
    }

instance Core.FromJSON DeviceIdentifier where
  parseJSON =
    Core.withObject
      "DeviceIdentifier"
      ( \o ->
          DeviceIdentifier
            Core.<$> (o Core..:? "imei")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "meid")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "serialNumber")
      )

instance Core.ToJSON DeviceIdentifier where
  toJSON DeviceIdentifier {..} =
    Core.object
      ( Core.catMaybes
          [ ("imei" Core..=) Core.<$> imei,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("meid" Core..=) Core.<$> meid,
            ("model" Core..=) Core.<$> model,
            ("serialNumber" Core..=) Core.<$> serialNumber
          ]
      )

-- | Metadata entries that can be attached to a @Device@. To learn more, read <https://developers.google.com/zero-touch/guides/metadata Device metadata>.
--
-- /See:/ 'newDeviceMetadata' smart constructor.
newtype DeviceMetadata = DeviceMetadata
  { -- | Metadata entries recorded as key-value pairs.
    entries :: (Core.Maybe DeviceMetadata_Entries)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceMetadata' with the minimum fields required to make a request.
newDeviceMetadata ::
  DeviceMetadata
newDeviceMetadata = DeviceMetadata {entries = Core.Nothing}

instance Core.FromJSON DeviceMetadata where
  parseJSON =
    Core.withObject
      "DeviceMetadata"
      ( \o ->
          DeviceMetadata Core.<$> (o Core..:? "entries")
      )

instance Core.ToJSON DeviceMetadata where
  toJSON DeviceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("entries" Core..=) Core.<$> entries]
      )

-- | Metadata entries recorded as key-value pairs.
--
-- /See:/ 'newDeviceMetadata_Entries' smart constructor.
newtype DeviceMetadata_Entries = DeviceMetadata_Entries
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceMetadata_Entries' with the minimum fields required to make a request.
newDeviceMetadata_Entries ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  DeviceMetadata_Entries
newDeviceMetadata_Entries addtional =
  DeviceMetadata_Entries {addtional = addtional}

instance Core.FromJSON DeviceMetadata_Entries where
  parseJSON =
    Core.withObject
      "DeviceMetadata_Entries"
      ( \o ->
          DeviceMetadata_Entries
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DeviceMetadata_Entries where
  toJSON DeviceMetadata_Entries {..} =
    Core.toJSON addtional

-- | A @DeviceReference@ is an API abstraction that lets you supply a /device/ argument to a method using one of the following identifier types: * A numeric API resource ID. * Real-world hardware IDs, such as IMEI number, belonging to the manufactured device. Methods that operate on devices take a @DeviceReference@ as a parameter type because it\'s more flexible for the caller. To learn more about device identifiers, read <https://developers.google.com/zero-touch/guides/identifiers Identifiers>.
--
-- /See:/ 'newDeviceReference' smart constructor.
data DeviceReference = DeviceReference
  { -- | The ID of the device.
    deviceId :: (Core.Maybe Core.Int64),
    -- | The hardware IDs of the device.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceReference' with the minimum fields required to make a request.
newDeviceReference ::
  DeviceReference
newDeviceReference =
  DeviceReference {deviceId = Core.Nothing, deviceIdentifier = Core.Nothing}

instance Core.FromJSON DeviceReference where
  parseJSON =
    Core.withObject
      "DeviceReference"
      ( \o ->
          DeviceReference
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceIdentifier")
      )

instance Core.ToJSON DeviceReference where
  toJSON DeviceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier
          ]
      )

-- | Tracks the status of a long-running operation to asynchronously update a batch of reseller metadata attached to devices. To learn more, read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ 'newDevicesLongRunningOperationMetadata' smart constructor.
data DevicesLongRunningOperationMetadata = DevicesLongRunningOperationMetadata
  { -- | The number of metadata updates in the operation. This might be different from the number of updates in the request if the API can\'t parse some of the updates.
    devicesCount :: (Core.Maybe Core.Int32),
    -- | The processing status of the operation.
    processingStatus :: (Core.Maybe DevicesLongRunningOperationMetadata_ProcessingStatus),
    -- | The processing progress of the operation. Measured as a number from 0 to 100. A value of 10O doesnt always mean the operation completed—check for the inclusion of a @done@ field.
    progress :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DevicesLongRunningOperationMetadata' with the minimum fields required to make a request.
newDevicesLongRunningOperationMetadata ::
  DevicesLongRunningOperationMetadata
newDevicesLongRunningOperationMetadata =
  DevicesLongRunningOperationMetadata
    { devicesCount = Core.Nothing,
      processingStatus = Core.Nothing,
      progress = Core.Nothing
    }

instance
  Core.FromJSON
    DevicesLongRunningOperationMetadata
  where
  parseJSON =
    Core.withObject
      "DevicesLongRunningOperationMetadata"
      ( \o ->
          DevicesLongRunningOperationMetadata
            Core.<$> (o Core..:? "devicesCount")
            Core.<*> (o Core..:? "processingStatus")
            Core.<*> (o Core..:? "progress")
      )

instance
  Core.ToJSON
    DevicesLongRunningOperationMetadata
  where
  toJSON DevicesLongRunningOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("devicesCount" Core..=) Core.<$> devicesCount,
            ("processingStatus" Core..=)
              Core.<$> processingStatus,
            ("progress" Core..=) Core.<$> progress
          ]
      )

-- | Tracks the status of a long-running operation to claim, unclaim, or attach metadata to devices. To learn more, read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ 'newDevicesLongRunningOperationResponse' smart constructor.
data DevicesLongRunningOperationResponse = DevicesLongRunningOperationResponse
  { -- | The processing status for each device in the operation. One @PerDeviceStatus@ per device. The list order matches the items in the original request.
    perDeviceStatus :: (Core.Maybe [OperationPerDevice]),
    -- | A summary of how many items in the operation the server processed successfully. Updated as the operation progresses.
    successCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DevicesLongRunningOperationResponse' with the minimum fields required to make a request.
newDevicesLongRunningOperationResponse ::
  DevicesLongRunningOperationResponse
newDevicesLongRunningOperationResponse =
  DevicesLongRunningOperationResponse
    { perDeviceStatus = Core.Nothing,
      successCount = Core.Nothing
    }

instance
  Core.FromJSON
    DevicesLongRunningOperationResponse
  where
  parseJSON =
    Core.withObject
      "DevicesLongRunningOperationResponse"
      ( \o ->
          DevicesLongRunningOperationResponse
            Core.<$> (o Core..:? "perDeviceStatus" Core..!= Core.mempty)
            Core.<*> (o Core..:? "successCount")
      )

instance
  Core.ToJSON
    DevicesLongRunningOperationResponse
  where
  toJSON DevicesLongRunningOperationResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("perDeviceStatus" Core..=)
              Core.<$> perDeviceStatus,
            ("successCount" Core..=) Core.<$> successCount
          ]
      )

-- | An EMM\'s DPC (<http://developer.android.com/work/dpc/build-dpc.html device policy controller>). Zero-touch enrollment installs a DPC (listed in the @Configuration@) on a device to maintain the customer\'s mobile policies. All the DPCs listed by the API support zero-touch enrollment and are available in Google Play.
--
-- /See:/ 'newDpc' smart constructor.
data Dpc = Dpc
  { -- | Output only. The title of the DPC app in Google Play. For example, /Google Apps Device Policy/. Useful in an application\'s user interface.
    dpcName :: (Core.Maybe Core.Text),
    -- | Output only. The API resource name in the format @customers\/[CUSTOMER_ID]\/dpcs\/[DPC_ID]@. Assigned by the server. To maintain a reference to a DPC across customer accounts, persist and match the last path component (@DPC_ID@).
    name :: (Core.Maybe Core.Text),
    -- | Output only. The DPC\'s Android application ID that looks like a Java package name. Zero-touch enrollment installs the DPC app onto a device using this identifier.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dpc' with the minimum fields required to make a request.
newDpc ::
  Dpc
newDpc =
  Dpc {dpcName = Core.Nothing, name = Core.Nothing, packageName = Core.Nothing}

instance Core.FromJSON Dpc where
  parseJSON =
    Core.withObject
      "Dpc"
      ( \o ->
          Dpc
            Core.<$> (o Core..:? "dpcName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON Dpc where
  toJSON Dpc {..} =
    Core.object
      ( Core.catMaybes
          [ ("dpcName" Core..=) Core.<$> dpcName,
            ("name" Core..=) Core.<$> name,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
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

-- | Request to find devices.
--
-- /See:/ 'newFindDevicesByDeviceIdentifierRequest' smart constructor.
data FindDevicesByDeviceIdentifierRequest = FindDevicesByDeviceIdentifierRequest
  { -- | Required. Required. The device identifier to search for.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.
    limit :: (Core.Maybe Core.Int64),
    -- | A token specifying which result page to return.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindDevicesByDeviceIdentifierRequest' with the minimum fields required to make a request.
newFindDevicesByDeviceIdentifierRequest ::
  FindDevicesByDeviceIdentifierRequest
newFindDevicesByDeviceIdentifierRequest =
  FindDevicesByDeviceIdentifierRequest
    { deviceIdentifier = Core.Nothing,
      limit = Core.Nothing,
      pageToken = Core.Nothing
    }

instance
  Core.FromJSON
    FindDevicesByDeviceIdentifierRequest
  where
  parseJSON =
    Core.withObject
      "FindDevicesByDeviceIdentifierRequest"
      ( \o ->
          FindDevicesByDeviceIdentifierRequest
            Core.<$> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "limit")
            Core.<*> (o Core..:? "pageToken")
      )

instance
  Core.ToJSON
    FindDevicesByDeviceIdentifierRequest
  where
  toJSON FindDevicesByDeviceIdentifierRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
            ("pageToken" Core..=) Core.<$> pageToken
          ]
      )

-- | Response containing found devices.
--
-- /See:/ 'newFindDevicesByDeviceIdentifierResponse' smart constructor.
data FindDevicesByDeviceIdentifierResponse = FindDevicesByDeviceIdentifierResponse
  { -- | Found devices.
    devices :: (Core.Maybe [Device]),
    -- | A token used to access the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total count of items in the list irrespective of pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindDevicesByDeviceIdentifierResponse' with the minimum fields required to make a request.
newFindDevicesByDeviceIdentifierResponse ::
  FindDevicesByDeviceIdentifierResponse
newFindDevicesByDeviceIdentifierResponse =
  FindDevicesByDeviceIdentifierResponse
    { devices = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance
  Core.FromJSON
    FindDevicesByDeviceIdentifierResponse
  where
  parseJSON =
    Core.withObject
      "FindDevicesByDeviceIdentifierResponse"
      ( \o ->
          FindDevicesByDeviceIdentifierResponse
            Core.<$> (o Core..:? "devices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance
  Core.ToJSON
    FindDevicesByDeviceIdentifierResponse
  where
  toJSON FindDevicesByDeviceIdentifierResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("devices" Core..=) Core.<$> devices,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Request to find devices by customers.
--
-- /See:/ 'newFindDevicesByOwnerRequest' smart constructor.
data FindDevicesByOwnerRequest = FindDevicesByOwnerRequest
  { -- | Required. The list of customer IDs to search for.
    customerId :: (Core.Maybe [Core.Int64]),
    -- | Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.
    limit :: (Core.Maybe Core.Int64),
    -- | A token specifying which result page to return.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The section type of the device\'s provisioning record.
    sectionType :: (Core.Maybe FindDevicesByOwnerRequest_SectionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindDevicesByOwnerRequest' with the minimum fields required to make a request.
newFindDevicesByOwnerRequest ::
  FindDevicesByOwnerRequest
newFindDevicesByOwnerRequest =
  FindDevicesByOwnerRequest
    { customerId = Core.Nothing,
      limit = Core.Nothing,
      pageToken = Core.Nothing,
      sectionType = Core.Nothing
    }

instance Core.FromJSON FindDevicesByOwnerRequest where
  parseJSON =
    Core.withObject
      "FindDevicesByOwnerRequest"
      ( \o ->
          FindDevicesByOwnerRequest
            Core.<$> (o Core..:? "customerId" Core..!= Core.mempty)
            Core.<*> (o Core..:? "limit")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "sectionType")
      )

instance Core.ToJSON FindDevicesByOwnerRequest where
  toJSON FindDevicesByOwnerRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerId" Core..=) Core.<$> customerId,
            ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("sectionType" Core..=) Core.<$> sectionType
          ]
      )

-- | Response containing found devices.
--
-- /See:/ 'newFindDevicesByOwnerResponse' smart constructor.
data FindDevicesByOwnerResponse = FindDevicesByOwnerResponse
  { -- | The customer\'s devices.
    devices :: (Core.Maybe [Device]),
    -- | A token used to access the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total count of items in the list irrespective of pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindDevicesByOwnerResponse' with the minimum fields required to make a request.
newFindDevicesByOwnerResponse ::
  FindDevicesByOwnerResponse
newFindDevicesByOwnerResponse =
  FindDevicesByOwnerResponse
    { devices = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON FindDevicesByOwnerResponse where
  parseJSON =
    Core.withObject
      "FindDevicesByOwnerResponse"
      ( \o ->
          FindDevicesByOwnerResponse
            Core.<$> (o Core..:? "devices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON FindDevicesByOwnerResponse where
  toJSON FindDevicesByOwnerResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("devices" Core..=) Core.<$> devices,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message of all customers related to this partner.
--
-- /See:/ 'newListCustomersResponse' smart constructor.
data ListCustomersResponse = ListCustomersResponse
  { -- | List of customers related to this reseller partner.
    customers :: (Core.Maybe [Company]),
    -- | A token to retrieve the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total count of items in the list irrespective of pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCustomersResponse' with the minimum fields required to make a request.
newListCustomersResponse ::
  ListCustomersResponse
newListCustomersResponse =
  ListCustomersResponse
    { customers = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListCustomersResponse where
  parseJSON =
    Core.withObject
      "ListCustomersResponse"
      ( \o ->
          ListCustomersResponse
            Core.<$> (o Core..:? "customers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListCustomersResponse where
  toJSON ListCustomersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("customers" Core..=) Core.<$> customers,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message to list customers of the vendor.
--
-- /See:/ 'newListVendorCustomersResponse' smart constructor.
data ListVendorCustomersResponse = ListVendorCustomersResponse
  { -- | List of customers of the vendor.
    customers :: (Core.Maybe [Company]),
    -- | A token to retrieve the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total count of items in the list irrespective of pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVendorCustomersResponse' with the minimum fields required to make a request.
newListVendorCustomersResponse ::
  ListVendorCustomersResponse
newListVendorCustomersResponse =
  ListVendorCustomersResponse
    { customers = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListVendorCustomersResponse where
  parseJSON =
    Core.withObject
      "ListVendorCustomersResponse"
      ( \o ->
          ListVendorCustomersResponse
            Core.<$> (o Core..:? "customers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListVendorCustomersResponse where
  toJSON ListVendorCustomersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("customers" Core..=) Core.<$> customers,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message to list vendors of the partner.
--
-- /See:/ 'newListVendorsResponse' smart constructor.
data ListVendorsResponse = ListVendorsResponse
  { -- | A token to retrieve the next page of results. Omitted if no further results are available.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total count of items in the list irrespective of pagination.
    totalSize :: (Core.Maybe Core.Int32),
    -- | List of vendors of the reseller partner. Fields @name@, @companyId@ and @companyName@ are populated to the Company object.
    vendors :: (Core.Maybe [Company])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVendorsResponse' with the minimum fields required to make a request.
newListVendorsResponse ::
  ListVendorsResponse
newListVendorsResponse =
  ListVendorsResponse
    { nextPageToken = Core.Nothing,
      totalSize = Core.Nothing,
      vendors = Core.Nothing
    }

instance Core.FromJSON ListVendorsResponse where
  parseJSON =
    Core.withObject
      "ListVendorsResponse"
      ( \o ->
          ListVendorsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
            Core.<*> (o Core..:? "vendors" Core..!= Core.mempty)
      )

instance Core.ToJSON ListVendorsResponse where
  toJSON ListVendorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize,
            ("vendors" Core..=) Core.<$> vendors
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | This field will always be not set if the operation is created by @claimAsync@, @unclaimAsync@, or @updateMetadataAsync@. In this case, error information for each device is set in @response.perDeviceStatus.result.status@.
    error :: (Core.Maybe Status),
    -- | This field will contain a @DevicesLongRunningOperationMetadata@ object if the operation is created by @claimAsync@, @unclaimAsync@, or @updateMetadataAsync@.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | This field will contain a @DevicesLongRunningOperationResponse@ object if the operation is created by @claimAsync@, @unclaimAsync@, or @updateMetadataAsync@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | This field will contain a @DevicesLongRunningOperationMetadata@ object if the operation is created by @claimAsync@, @unclaimAsync@, or @updateMetadataAsync@.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | This field will contain a @DevicesLongRunningOperationResponse@ object if the operation is created by @claimAsync@, @unclaimAsync@, or @updateMetadataAsync@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | A task for each device in the operation. Corresponds to each device change in the request.
--
-- /See:/ 'newOperationPerDevice' smart constructor.
data OperationPerDevice = OperationPerDevice
  { -- | A copy of the original device-claim request received by the server.
    claim :: (Core.Maybe PartnerClaim),
    -- | The processing result for each device.
    result :: (Core.Maybe PerDeviceStatusInBatch),
    -- | A copy of the original device-unclaim request received by the server.
    unclaim :: (Core.Maybe PartnerUnclaim),
    -- | A copy of the original metadata-update request received by the server.
    updateMetadata :: (Core.Maybe UpdateMetadataArguments)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationPerDevice' with the minimum fields required to make a request.
newOperationPerDevice ::
  OperationPerDevice
newOperationPerDevice =
  OperationPerDevice
    { claim = Core.Nothing,
      result = Core.Nothing,
      unclaim = Core.Nothing,
      updateMetadata = Core.Nothing
    }

instance Core.FromJSON OperationPerDevice where
  parseJSON =
    Core.withObject
      "OperationPerDevice"
      ( \o ->
          OperationPerDevice
            Core.<$> (o Core..:? "claim")
            Core.<*> (o Core..:? "result")
            Core.<*> (o Core..:? "unclaim")
            Core.<*> (o Core..:? "updateMetadata")
      )

instance Core.ToJSON OperationPerDevice where
  toJSON OperationPerDevice {..} =
    Core.object
      ( Core.catMaybes
          [ ("claim" Core..=) Core.<$> claim,
            ("result" Core..=) Core.<$> result,
            ("unclaim" Core..=) Core.<$> unclaim,
            ("updateMetadata" Core..=) Core.<$> updateMetadata
          ]
      )

-- | Identifies one claim request.
--
-- /See:/ 'newPartnerClaim' smart constructor.
data PartnerClaim = PartnerClaim
  { -- | Required. The ID of the customer for whom the device is being claimed.
    customerId :: (Core.Maybe Core.Int64),
    -- | Required. Required. Device identifier of the device.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Required. The metadata to attach to the device at claim.
    deviceMetadata :: (Core.Maybe DeviceMetadata),
    -- | Required. The section type of the device\'s provisioning record.
    sectionType :: (Core.Maybe PartnerClaim_SectionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnerClaim' with the minimum fields required to make a request.
newPartnerClaim ::
  PartnerClaim
newPartnerClaim =
  PartnerClaim
    { customerId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      deviceMetadata = Core.Nothing,
      sectionType = Core.Nothing
    }

instance Core.FromJSON PartnerClaim where
  parseJSON =
    Core.withObject
      "PartnerClaim"
      ( \o ->
          PartnerClaim
            Core.<$> (o Core..:? "customerId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "deviceMetadata")
            Core.<*> (o Core..:? "sectionType")
      )

instance Core.ToJSON PartnerClaim where
  toJSON PartnerClaim {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerId" Core..=) Core.. Core.AsText
              Core.<$> customerId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("deviceMetadata" Core..=) Core.<$> deviceMetadata,
            ("sectionType" Core..=) Core.<$> sectionType
          ]
      )

-- | Identifies one unclaim request.
--
-- /See:/ 'newPartnerUnclaim' smart constructor.
data PartnerUnclaim = PartnerUnclaim
  { -- | Required. Device ID of the device.
    deviceId :: (Core.Maybe Core.Int64),
    -- | Required. Device identifier of the device.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Required. The section type of the device\'s provisioning record.
    sectionType :: (Core.Maybe PartnerUnclaim_SectionType),
    -- | Optional. The duration of the vacation unlock starting from when the request is processed. (1 day is treated as 24 hours)
    vacationModeDays :: (Core.Maybe Core.Int32),
    -- | Optional. The expiration time of the vacation unlock.
    vacationModeExpireTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnerUnclaim' with the minimum fields required to make a request.
newPartnerUnclaim ::
  PartnerUnclaim
newPartnerUnclaim =
  PartnerUnclaim
    { deviceId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      sectionType = Core.Nothing,
      vacationModeDays = Core.Nothing,
      vacationModeExpireTime = Core.Nothing
    }

instance Core.FromJSON PartnerUnclaim where
  parseJSON =
    Core.withObject
      "PartnerUnclaim"
      ( \o ->
          PartnerUnclaim
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "sectionType")
            Core.<*> (o Core..:? "vacationModeDays")
            Core.<*> (o Core..:? "vacationModeExpireTime")
      )

instance Core.ToJSON PartnerUnclaim where
  toJSON PartnerUnclaim {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("sectionType" Core..=) Core.<$> sectionType,
            ("vacationModeDays" Core..=)
              Core.<$> vacationModeDays,
            ("vacationModeExpireTime" Core..=)
              Core.<$> vacationModeExpireTime
          ]
      )

-- | Captures the processing status for each device in the operation.
--
-- /See:/ 'newPerDeviceStatusInBatch' smart constructor.
data PerDeviceStatusInBatch = PerDeviceStatusInBatch
  { -- | If processing succeeds, the device ID of the device.
    deviceId :: (Core.Maybe Core.Int64),
    -- | If processing fails, the error type.
    errorIdentifier :: (Core.Maybe Core.Text),
    -- | If processing fails, a developer message explaining what went wrong.
    errorMessage :: (Core.Maybe Core.Text),
    -- | The result status of the device after processing.
    status :: (Core.Maybe PerDeviceStatusInBatch_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerDeviceStatusInBatch' with the minimum fields required to make a request.
newPerDeviceStatusInBatch ::
  PerDeviceStatusInBatch
newPerDeviceStatusInBatch =
  PerDeviceStatusInBatch
    { deviceId = Core.Nothing,
      errorIdentifier = Core.Nothing,
      errorMessage = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON PerDeviceStatusInBatch where
  parseJSON =
    Core.withObject
      "PerDeviceStatusInBatch"
      ( \o ->
          PerDeviceStatusInBatch
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "errorIdentifier")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON PerDeviceStatusInBatch where
  toJSON PerDeviceStatusInBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("errorIdentifier" Core..=) Core.<$> errorIdentifier,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | Request message to unclaim a device.
--
-- /See:/ 'newUnclaimDeviceRequest' smart constructor.
data UnclaimDeviceRequest = UnclaimDeviceRequest
  { -- | Required. The device ID returned by @ClaimDevice@.
    deviceId :: (Core.Maybe Core.Int64),
    -- | Required. The device identifier you used when you claimed this device.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Required. The section type of the device\'s provisioning record.
    sectionType :: (Core.Maybe UnclaimDeviceRequest_SectionType),
    -- | The duration of the vacation unlock starting from when the request is processed. (1 day is treated as 24 hours)
    vacationModeDays :: (Core.Maybe Core.Int32),
    -- | The expiration time of the vacation unlock.
    vacationModeExpireTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnclaimDeviceRequest' with the minimum fields required to make a request.
newUnclaimDeviceRequest ::
  UnclaimDeviceRequest
newUnclaimDeviceRequest =
  UnclaimDeviceRequest
    { deviceId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      sectionType = Core.Nothing,
      vacationModeDays = Core.Nothing,
      vacationModeExpireTime = Core.Nothing
    }

instance Core.FromJSON UnclaimDeviceRequest where
  parseJSON =
    Core.withObject
      "UnclaimDeviceRequest"
      ( \o ->
          UnclaimDeviceRequest
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "sectionType")
            Core.<*> (o Core..:? "vacationModeDays")
            Core.<*> (o Core..:? "vacationModeExpireTime")
      )

instance Core.ToJSON UnclaimDeviceRequest where
  toJSON UnclaimDeviceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("sectionType" Core..=) Core.<$> sectionType,
            ("vacationModeDays" Core..=)
              Core.<$> vacationModeDays,
            ("vacationModeExpireTime" Core..=)
              Core.<$> vacationModeExpireTime
          ]
      )

-- | Request to unclaim devices asynchronously in batch.
--
-- /See:/ 'newUnclaimDevicesRequest' smart constructor.
newtype UnclaimDevicesRequest = UnclaimDevicesRequest
  { -- | Required. The list of devices to unclaim.
    unclaims :: (Core.Maybe [PartnerUnclaim])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnclaimDevicesRequest' with the minimum fields required to make a request.
newUnclaimDevicesRequest ::
  UnclaimDevicesRequest
newUnclaimDevicesRequest = UnclaimDevicesRequest {unclaims = Core.Nothing}

instance Core.FromJSON UnclaimDevicesRequest where
  parseJSON =
    Core.withObject
      "UnclaimDevicesRequest"
      ( \o ->
          UnclaimDevicesRequest
            Core.<$> (o Core..:? "unclaims" Core..!= Core.mempty)
      )

instance Core.ToJSON UnclaimDevicesRequest where
  toJSON UnclaimDevicesRequest {..} =
    Core.object
      ( Core.catMaybes
          [("unclaims" Core..=) Core.<$> unclaims]
      )

-- | Request to update device metadata in batch.
--
-- /See:/ 'newUpdateDeviceMetadataInBatchRequest' smart constructor.
newtype UpdateDeviceMetadataInBatchRequest = UpdateDeviceMetadataInBatchRequest
  { -- | Required. The list of metadata updates.
    updates :: (Core.Maybe [UpdateMetadataArguments])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDeviceMetadataInBatchRequest' with the minimum fields required to make a request.
newUpdateDeviceMetadataInBatchRequest ::
  UpdateDeviceMetadataInBatchRequest
newUpdateDeviceMetadataInBatchRequest =
  UpdateDeviceMetadataInBatchRequest {updates = Core.Nothing}

instance
  Core.FromJSON
    UpdateDeviceMetadataInBatchRequest
  where
  parseJSON =
    Core.withObject
      "UpdateDeviceMetadataInBatchRequest"
      ( \o ->
          UpdateDeviceMetadataInBatchRequest
            Core.<$> (o Core..:? "updates" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    UpdateDeviceMetadataInBatchRequest
  where
  toJSON UpdateDeviceMetadataInBatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [("updates" Core..=) Core.<$> updates]
      )

-- | Request to set metadata for a device.
--
-- /See:/ 'newUpdateDeviceMetadataRequest' smart constructor.
newtype UpdateDeviceMetadataRequest = UpdateDeviceMetadataRequest
  { -- | Required. The metadata to attach to the device.
    deviceMetadata :: (Core.Maybe DeviceMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDeviceMetadataRequest' with the minimum fields required to make a request.
newUpdateDeviceMetadataRequest ::
  UpdateDeviceMetadataRequest
newUpdateDeviceMetadataRequest =
  UpdateDeviceMetadataRequest {deviceMetadata = Core.Nothing}

instance Core.FromJSON UpdateDeviceMetadataRequest where
  parseJSON =
    Core.withObject
      "UpdateDeviceMetadataRequest"
      ( \o ->
          UpdateDeviceMetadataRequest
            Core.<$> (o Core..:? "deviceMetadata")
      )

instance Core.ToJSON UpdateDeviceMetadataRequest where
  toJSON UpdateDeviceMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [("deviceMetadata" Core..=) Core.<$> deviceMetadata]
      )

-- | Identifies metadata updates to one device.
--
-- /See:/ 'newUpdateMetadataArguments' smart constructor.
data UpdateMetadataArguments = UpdateMetadataArguments
  { -- | Required. Device ID of the device.
    deviceId :: (Core.Maybe Core.Int64),
    -- | Required. Device identifier.
    deviceIdentifier :: (Core.Maybe DeviceIdentifier),
    -- | Required. The metadata to update.
    deviceMetadata :: (Core.Maybe DeviceMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMetadataArguments' with the minimum fields required to make a request.
newUpdateMetadataArguments ::
  UpdateMetadataArguments
newUpdateMetadataArguments =
  UpdateMetadataArguments
    { deviceId = Core.Nothing,
      deviceIdentifier = Core.Nothing,
      deviceMetadata = Core.Nothing
    }

instance Core.FromJSON UpdateMetadataArguments where
  parseJSON =
    Core.withObject
      "UpdateMetadataArguments"
      ( \o ->
          UpdateMetadataArguments
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "deviceIdentifier")
            Core.<*> (o Core..:? "deviceMetadata")
      )

instance Core.ToJSON UpdateMetadataArguments where
  toJSON UpdateMetadataArguments {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.. Core.AsText
              Core.<$> deviceId,
            ("deviceIdentifier" Core..=)
              Core.<$> deviceIdentifier,
            ("deviceMetadata" Core..=) Core.<$> deviceMetadata
          ]
      )
