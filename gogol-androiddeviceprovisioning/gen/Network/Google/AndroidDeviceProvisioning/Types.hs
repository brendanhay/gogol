{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidDeviceProvisioning.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidDeviceProvisioning.Types
    (
    -- * Service Configuration
      androidDeviceProvisioningService

    -- * UpdateMetadataArguments
    , UpdateMetadataArguments
    , updateMetadataArguments
    , umaDeviceIdentifier
    , umaDeviceId
    , umaDeviceMetadata

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * PartnerClaim
    , PartnerClaim
    , partnerClaim
    , pcDeviceIdentifier
    , pcSectionType
    , pcCustomerId
    , pcDeviceMetadata

    -- * CustomerUnclaimDeviceRequest
    , CustomerUnclaimDeviceRequest
    , customerUnclaimDeviceRequest
    , cudrDevice

    -- * PerDeviceStatusInBatchStatus
    , PerDeviceStatusInBatchStatus (..)

    -- * FindDevicesByOwnerRequestSectionType
    , FindDevicesByOwnerRequestSectionType (..)

    -- * FindDevicesByDeviceIdentifierRequest
    , FindDevicesByDeviceIdentifierRequest
    , findDevicesByDeviceIdentifierRequest
    , fdbdirDeviceIdentifier
    , fdbdirLimit
    , fdbdirPageToken

    -- * FindDevicesByOwnerResponse
    , FindDevicesByOwnerResponse
    , findDevicesByOwnerResponse
    , fdborNextPageToken
    , fdborTotalSize
    , fdborDevices

    -- * DeviceMetadataEntries
    , DeviceMetadataEntries
    , deviceMetadataEntries
    , dmeAddtional

    -- * PartnerUnclaim
    , PartnerUnclaim
    , partnerUnclaim
    , puDeviceIdentifier
    , puSectionType
    , puDeviceId

    -- * Dpc
    , Dpc
    , dpc
    , dPackageName
    , dName
    , dDpcName

    -- * ListVendorCustomersResponse
    , ListVendorCustomersResponse
    , listVendorCustomersResponse
    , lvcrCustomers
    , lvcrNextPageToken
    , lvcrTotalSize

    -- * OperationPerDevice
    , OperationPerDevice
    , operationPerDevice
    , opdUpdateMetadata
    , opdResult
    , opdClaim
    , opdUnclaim

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * PartnerClaimSectionType
    , PartnerClaimSectionType (..)

    -- * PerDeviceStatusInBatch
    , PerDeviceStatusInBatch
    , perDeviceStatusInBatch
    , pdsibStatus
    , pdsibErrorIdentifier
    , pdsibDeviceId
    , pdsibErrorMessage

    -- * ClaimDevicesRequest
    , ClaimDevicesRequest
    , claimDevicesRequest
    , cdrClaims

    -- * Device
    , Device
    , device
    , devDeviceIdentifier
    , devClaims
    , devName
    , devDeviceId
    , devDeviceMetadata
    , devConfiguration

    -- * ClaimDeviceRequest
    , ClaimDeviceRequest
    , claimDeviceRequest
    , cdrDeviceIdentifier
    , cdrSectionType
    , cdrCustomerId
    , cdrDeviceMetadata

    -- * DeviceReference
    , DeviceReference
    , deviceReference
    , drDeviceIdentifier
    , drDeviceId

    -- * CustomerRemoveConfigurationRequest
    , CustomerRemoveConfigurationRequest
    , customerRemoveConfigurationRequest
    , crcrDevice

    -- * DeviceIdentifier
    , DeviceIdentifier
    , deviceIdentifier
    , diManufacturer
    , diModel
    , diMeid
    , diImei
    , diSerialNumber

    -- * UnclaimDevicesRequest
    , UnclaimDevicesRequest
    , unclaimDevicesRequest
    , udrUnclaims

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ListVendorsResponse
    , ListVendorsResponse
    , listVendorsResponse
    , lvrNextPageToken
    , lvrTotalSize
    , lvrVendors

    -- * CustomerListConfigurationsResponse
    , CustomerListConfigurationsResponse
    , customerListConfigurationsResponse
    , clcrConfigurations

    -- * PartnerUnclaimSectionType
    , PartnerUnclaimSectionType (..)

    -- * CustomerApplyConfigurationRequest
    , CustomerApplyConfigurationRequest
    , customerApplyConfigurationRequest
    , cacrDevice
    , cacrConfiguration

    -- * Company
    , Company
    , company
    , cCompanyId
    , cCompanyName
    , cOwnerEmails
    , cTermsStatus
    , cName
    , cAdminEmails

    -- * Xgafv
    , Xgafv (..)

    -- * ClaimDeviceRequestSectionType
    , ClaimDeviceRequestSectionType (..)

    -- * CustomerListCustomersResponse
    , CustomerListCustomersResponse
    , customerListCustomersResponse
    , clcrCustomers
    , clcrNextPageToken

    -- * DeviceClaim
    , DeviceClaim
    , deviceClaim
    , dcSectionType
    , dcOwnerCompanyId
    , dcResellerId

    -- * UpdateDeviceMetadataRequest
    , UpdateDeviceMetadataRequest
    , updateDeviceMetadataRequest
    , udmrDeviceMetadata

    -- * DeviceMetadata
    , DeviceMetadata
    , deviceMetadata
    , dmEntries

    -- * FindDevicesByOwnerRequest
    , FindDevicesByOwnerRequest
    , findDevicesByOwnerRequest
    , fdborSectionType
    , fdborCustomerId
    , fdborLimit
    , fdborPageToken

    -- * FindDevicesByDeviceIdentifierResponse
    , FindDevicesByDeviceIdentifierResponse
    , findDevicesByDeviceIdentifierResponse
    , fdbdirNextPageToken
    , fdbdirTotalSize
    , fdbdirDevices

    -- * UnclaimDeviceRequest
    , UnclaimDeviceRequest
    , unclaimDeviceRequest
    , udrDeviceIdentifier
    , udrSectionType
    , udrDeviceId

    -- * DevicesLongRunningOperationResponse
    , DevicesLongRunningOperationResponse
    , devicesLongRunningOperationResponse
    , dlrorSuccessCount
    , dlrorPerDeviceStatus

    -- * Configuration
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

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * DeviceClaimSectionType
    , DeviceClaimSectionType (..)

    -- * ListCustomersResponse
    , ListCustomersResponse
    , listCustomersResponse
    , lcrCustomers
    , lcrNextPageToken
    , lcrTotalSize

    -- * DevicesLongRunningOperationMetadata
    , DevicesLongRunningOperationMetadata
    , devicesLongRunningOperationMetadata
    , dlromProgress
    , dlromDevicesCount
    , dlromProcessingStatus

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CompanyTermsStatus
    , CompanyTermsStatus (..)

    -- * CustomerListDevicesResponse
    , CustomerListDevicesResponse
    , customerListDevicesResponse
    , cldrNextPageToken
    , cldrDevices

    -- * UpdateDeviceMetadataInBatchRequest
    , UpdateDeviceMetadataInBatchRequest
    , updateDeviceMetadataInBatchRequest
    , udmibrUpdates

    -- * UnclaimDeviceRequestSectionType
    , UnclaimDeviceRequestSectionType (..)

    -- * CustomerListDpcsResponse
    , CustomerListDpcsResponse
    , customerListDpcsResponse
    , cldrDpcs

    -- * ClaimDeviceResponse
    , ClaimDeviceResponse
    , claimDeviceResponse
    , cdrDeviceName
    , cdrDeviceId

    -- * CreateCustomerRequest
    , CreateCustomerRequest
    , createCustomerRequest
    , ccrCustomer

    -- * DevicesLongRunningOperationMetadataProcessingStatus
    , DevicesLongRunningOperationMetadataProcessingStatus (..)
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types.Product
import           Network.Google.AndroidDeviceProvisioning.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Android Device Provisioning Partner API. This contains the host and root path used as a starting point for constructing service requests.
androidDeviceProvisioningService :: ServiceConfig
androidDeviceProvisioningService
  = defaultService
      (ServiceId "androiddeviceprovisioning:v1")
      "androiddeviceprovisioning.googleapis.com"
