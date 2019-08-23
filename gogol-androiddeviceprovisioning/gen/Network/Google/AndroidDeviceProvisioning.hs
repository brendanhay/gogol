{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidDeviceProvisioning
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Automates Android zero-touch enrollment for device resellers, customers,
-- and EMMs.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference>
module Network.Google.AndroidDeviceProvisioning
    (
    -- * Service Configuration
      androidDeviceProvisioningService

    -- * API Declaration
    , AndroidDeviceProvisioningAPI

    -- * Resources

    -- ** androiddeviceprovisioning.customers.configurations.create
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Create

    -- ** androiddeviceprovisioning.customers.configurations.delete
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Delete

    -- ** androiddeviceprovisioning.customers.configurations.get
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Get

    -- ** androiddeviceprovisioning.customers.configurations.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.List

    -- ** androiddeviceprovisioning.customers.configurations.patch
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Patch

    -- ** androiddeviceprovisioning.customers.devices.applyConfiguration
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration

    -- ** androiddeviceprovisioning.customers.devices.get
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Get

    -- ** androiddeviceprovisioning.customers.devices.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.List

    -- ** androiddeviceprovisioning.customers.devices.removeConfiguration
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration

    -- ** androiddeviceprovisioning.customers.devices.unclaim
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Unclaim

    -- ** androiddeviceprovisioning.customers.dpcs.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Dpcs.List

    -- ** androiddeviceprovisioning.customers.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Customers.List

    -- ** androiddeviceprovisioning.operations.get
    , module Network.Google.Resource.AndroidDeviceProvisioning.Operations.Get

    -- ** androiddeviceprovisioning.partners.customers.create
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.Create

    -- ** androiddeviceprovisioning.partners.customers.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.List

    -- ** androiddeviceprovisioning.partners.devices.claim
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Claim

    -- ** androiddeviceprovisioning.partners.devices.claimAsync
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.ClaimAsync

    -- ** androiddeviceprovisioning.partners.devices.findByIdentifier
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier

    -- ** androiddeviceprovisioning.partners.devices.findByOwner
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByOwner

    -- ** androiddeviceprovisioning.partners.devices.get
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Get

    -- ** androiddeviceprovisioning.partners.devices.metadata
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Metadata

    -- ** androiddeviceprovisioning.partners.devices.unclaim
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Unclaim

    -- ** androiddeviceprovisioning.partners.devices.unclaimAsync
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync

    -- ** androiddeviceprovisioning.partners.devices.updateMetadataAsync
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync

    -- ** androiddeviceprovisioning.partners.vendors.customers.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.Customers.List

    -- ** androiddeviceprovisioning.partners.vendors.list
    , module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.List

    -- * Types

    -- ** UpdateMetadataArguments
    , UpdateMetadataArguments
    , updateMetadataArguments
    , umaDeviceIdentifier
    , umaDeviceId
    , umaDeviceMetadata

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** PartnerClaim
    , PartnerClaim
    , partnerClaim
    , pcDeviceIdentifier
    , pcSectionType
    , pcCustomerId
    , pcDeviceMetadata

    -- ** CustomerUnclaimDeviceRequest
    , CustomerUnclaimDeviceRequest
    , customerUnclaimDeviceRequest
    , cudrDevice

    -- ** PerDeviceStatusInBatchStatus
    , PerDeviceStatusInBatchStatus (..)

    -- ** FindDevicesByOwnerRequestSectionType
    , FindDevicesByOwnerRequestSectionType (..)

    -- ** FindDevicesByDeviceIdentifierRequest
    , FindDevicesByDeviceIdentifierRequest
    , findDevicesByDeviceIdentifierRequest
    , fdbdirDeviceIdentifier
    , fdbdirLimit
    , fdbdirPageToken

    -- ** FindDevicesByOwnerResponse
    , FindDevicesByOwnerResponse
    , findDevicesByOwnerResponse
    , fdborNextPageToken
    , fdborTotalSize
    , fdborDevices

    -- ** DeviceMetadataEntries
    , DeviceMetadataEntries
    , deviceMetadataEntries
    , dmeAddtional

    -- ** PartnerUnclaim
    , PartnerUnclaim
    , partnerUnclaim
    , puDeviceIdentifier
    , puSectionType
    , puVacationModeExpireTime
    , puVacationModeDays
    , puDeviceId

    -- ** Dpc
    , Dpc
    , dpc
    , dPackageName
    , dName
    , dDpcName

    -- ** ListVendorCustomersResponse
    , ListVendorCustomersResponse
    , listVendorCustomersResponse
    , lvcrCustomers
    , lvcrNextPageToken
    , lvcrTotalSize

    -- ** OperationPerDevice
    , OperationPerDevice
    , operationPerDevice
    , opdUpdateMetadata
    , opdResult
    , opdClaim
    , opdUnclaim

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** PartnerClaimSectionType
    , PartnerClaimSectionType (..)

    -- ** PerDeviceStatusInBatch
    , PerDeviceStatusInBatch
    , perDeviceStatusInBatch
    , pdsibStatus
    , pdsibErrorIdentifier
    , pdsibDeviceId
    , pdsibErrorMessage

    -- ** ClaimDevicesRequest
    , ClaimDevicesRequest
    , claimDevicesRequest
    , cdrClaims

    -- ** Device
    , Device
    , device
    , devDeviceIdentifier
    , devClaims
    , devName
    , devDeviceId
    , devDeviceMetadata
    , devConfiguration

    -- ** ClaimDeviceRequest
    , ClaimDeviceRequest
    , claimDeviceRequest
    , cdrDeviceIdentifier
    , cdrSectionType
    , cdrCustomerId
    , cdrDeviceMetadata

    -- ** DeviceReference
    , DeviceReference
    , deviceReference
    , drDeviceIdentifier
    , drDeviceId

    -- ** CustomerRemoveConfigurationRequest
    , CustomerRemoveConfigurationRequest
    , customerRemoveConfigurationRequest
    , crcrDevice

    -- ** DeviceIdentifier
    , DeviceIdentifier
    , deviceIdentifier
    , diManufacturer
    , diModel
    , diMeid
    , diImei
    , diSerialNumber

    -- ** UnclaimDevicesRequest
    , UnclaimDevicesRequest
    , unclaimDevicesRequest
    , udrUnclaims

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ListVendorsResponse
    , ListVendorsResponse
    , listVendorsResponse
    , lvrNextPageToken
    , lvrTotalSize
    , lvrVendors

    -- ** CustomerListConfigurationsResponse
    , CustomerListConfigurationsResponse
    , customerListConfigurationsResponse
    , clcrConfigurations

    -- ** PartnerUnclaimSectionType
    , PartnerUnclaimSectionType (..)

    -- ** CustomerApplyConfigurationRequest
    , CustomerApplyConfigurationRequest
    , customerApplyConfigurationRequest
    , cacrDevice
    , cacrConfiguration

    -- ** Company
    , Company
    , company
    , cCompanyId
    , cCompanyName
    , cOwnerEmails
    , cTermsStatus
    , cName
    , cAdminEmails

    -- ** Xgafv
    , Xgafv (..)

    -- ** ClaimDeviceRequestSectionType
    , ClaimDeviceRequestSectionType (..)

    -- ** CustomerListCustomersResponse
    , CustomerListCustomersResponse
    , customerListCustomersResponse
    , clcrCustomers
    , clcrNextPageToken

    -- ** DeviceClaim
    , DeviceClaim
    , deviceClaim
    , dcSectionType
    , dcVacationModeExpireTime
    , dcVacationModeStartTime
    , dcOwnerCompanyId
    , dcResellerId

    -- ** UpdateDeviceMetadataRequest
    , UpdateDeviceMetadataRequest
    , updateDeviceMetadataRequest
    , udmrDeviceMetadata

    -- ** DeviceMetadata
    , DeviceMetadata
    , deviceMetadata
    , dmEntries

    -- ** FindDevicesByOwnerRequest
    , FindDevicesByOwnerRequest
    , findDevicesByOwnerRequest
    , fdborSectionType
    , fdborCustomerId
    , fdborLimit
    , fdborPageToken

    -- ** FindDevicesByDeviceIdentifierResponse
    , FindDevicesByDeviceIdentifierResponse
    , findDevicesByDeviceIdentifierResponse
    , fdbdirNextPageToken
    , fdbdirTotalSize
    , fdbdirDevices

    -- ** UnclaimDeviceRequest
    , UnclaimDeviceRequest
    , unclaimDeviceRequest
    , udrDeviceIdentifier
    , udrSectionType
    , udrVacationModeExpireTime
    , udrVacationModeDays
    , udrDeviceId

    -- ** DevicesLongRunningOperationResponse
    , DevicesLongRunningOperationResponse
    , devicesLongRunningOperationResponse
    , dlrorSuccessCount
    , dlrorPerDeviceStatus

    -- ** Configuration
    , Configuration
    , configuration
    , conContactPhone
    , conContactEmail
    , conConfigurationName
    , conConfigurationId
    , conCustomMessage
    , conCompanyName
    , conDpcExtras
    , conName
    , conDpcResourcePath
    , conIsDefault

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** DeviceClaimSectionType
    , DeviceClaimSectionType (..)

    -- ** ListCustomersResponse
    , ListCustomersResponse
    , listCustomersResponse
    , lcrCustomers
    , lcrNextPageToken
    , lcrTotalSize

    -- ** DevicesLongRunningOperationMetadata
    , DevicesLongRunningOperationMetadata
    , devicesLongRunningOperationMetadata
    , dlromProgress
    , dlromDevicesCount
    , dlromProcessingStatus

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CompanyTermsStatus
    , CompanyTermsStatus (..)

    -- ** CustomerListDevicesResponse
    , CustomerListDevicesResponse
    , customerListDevicesResponse
    , cldrNextPageToken
    , cldrDevices

    -- ** UpdateDeviceMetadataInBatchRequest
    , UpdateDeviceMetadataInBatchRequest
    , updateDeviceMetadataInBatchRequest
    , udmibrUpdates

    -- ** UnclaimDeviceRequestSectionType
    , UnclaimDeviceRequestSectionType (..)

    -- ** CustomerListDpcsResponse
    , CustomerListDpcsResponse
    , customerListDpcsResponse
    , cldrDpcs

    -- ** ClaimDeviceResponse
    , ClaimDeviceResponse
    , claimDeviceResponse
    , cdrDeviceName
    , cdrDeviceId

    -- ** CreateCustomerRequest
    , CreateCustomerRequest
    , createCustomerRequest
    , ccrCustomer

    -- ** DevicesLongRunningOperationMetadataProcessingStatus
    , DevicesLongRunningOperationMetadataProcessingStatus (..)
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Create
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Delete
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Get
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Patch
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Get
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Unclaim
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.Dpcs.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Customers.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Operations.Get
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.Create
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Claim
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.ClaimAsync
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Get
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Metadata
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Unclaim
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
import           Network.Google.Resource.AndroidDeviceProvisioning.Partners.Vendors.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Android Device Provisioning Partner API service.
type AndroidDeviceProvisioningAPI =
     CustomersDpcsListResource :<|>
       CustomersConfigurationsListResource
       :<|> CustomersConfigurationsPatchResource
       :<|> CustomersConfigurationsGetResource
       :<|> CustomersConfigurationsCreateResource
       :<|> CustomersConfigurationsDeleteResource
       :<|> CustomersDevicesApplyConfigurationResource
       :<|> CustomersDevicesListResource
       :<|> CustomersDevicesGetResource
       :<|> CustomersDevicesRemoveConfigurationResource
       :<|> CustomersDevicesUnclaimResource
       :<|> CustomersListResource
       :<|> PartnersCustomersListResource
       :<|> PartnersCustomersCreateResource
       :<|> PartnersVendorsCustomersListResource
       :<|> PartnersVendorsListResource
       :<|> PartnersDevicesClaimAsyncResource
       :<|> PartnersDevicesGetResource
       :<|> PartnersDevicesUnclaimAsyncResource
       :<|> PartnersDevicesFindByOwnerResource
       :<|> PartnersDevicesClaimResource
       :<|> PartnersDevicesUpdateMetadataAsyncResource
       :<|> PartnersDevicesMetadataResource
       :<|> PartnersDevicesFindByIdentifierResource
       :<|> PartnersDevicesUnclaimResource
       :<|> OperationsGetResource
