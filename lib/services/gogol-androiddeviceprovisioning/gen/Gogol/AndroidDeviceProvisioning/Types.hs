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
-- Module      : Gogol.AndroidDeviceProvisioning.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidDeviceProvisioning.Types
  ( -- * Configuration
    androidDeviceProvisioningService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ClaimDeviceRequest
    ClaimDeviceRequest (..),
    newClaimDeviceRequest,

    -- ** ClaimDeviceRequest_SectionType
    ClaimDeviceRequest_SectionType (..),

    -- ** ClaimDeviceResponse
    ClaimDeviceResponse (..),
    newClaimDeviceResponse,

    -- ** ClaimDevicesRequest
    ClaimDevicesRequest (..),
    newClaimDevicesRequest,

    -- ** Company
    Company (..),
    newCompany,

    -- ** Company_TermsStatus
    Company_TermsStatus (..),

    -- ** Configuration
    Configuration (..),
    newConfiguration,

    -- ** CreateCustomerRequest
    CreateCustomerRequest (..),
    newCreateCustomerRequest,

    -- ** CustomerApplyConfigurationRequest
    CustomerApplyConfigurationRequest (..),
    newCustomerApplyConfigurationRequest,

    -- ** CustomerListConfigurationsResponse
    CustomerListConfigurationsResponse (..),
    newCustomerListConfigurationsResponse,

    -- ** CustomerListCustomersResponse
    CustomerListCustomersResponse (..),
    newCustomerListCustomersResponse,

    -- ** CustomerListDevicesResponse
    CustomerListDevicesResponse (..),
    newCustomerListDevicesResponse,

    -- ** CustomerListDpcsResponse
    CustomerListDpcsResponse (..),
    newCustomerListDpcsResponse,

    -- ** CustomerRemoveConfigurationRequest
    CustomerRemoveConfigurationRequest (..),
    newCustomerRemoveConfigurationRequest,

    -- ** CustomerUnclaimDeviceRequest
    CustomerUnclaimDeviceRequest (..),
    newCustomerUnclaimDeviceRequest,

    -- ** Device
    Device (..),
    newDevice,

    -- ** DeviceClaim
    DeviceClaim (..),
    newDeviceClaim,

    -- ** DeviceClaim_AdditionalService
    DeviceClaim_AdditionalService (..),

    -- ** DeviceClaim_SectionType
    DeviceClaim_SectionType (..),

    -- ** DeviceIdentifier
    DeviceIdentifier (..),
    newDeviceIdentifier,

    -- ** DeviceIdentifier_DeviceType
    DeviceIdentifier_DeviceType (..),

    -- ** DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- ** DeviceMetadata_Entries
    DeviceMetadata_Entries (..),
    newDeviceMetadata_Entries,

    -- ** DeviceReference
    DeviceReference (..),
    newDeviceReference,

    -- ** DevicesLongRunningOperationMetadata
    DevicesLongRunningOperationMetadata (..),
    newDevicesLongRunningOperationMetadata,

    -- ** DevicesLongRunningOperationMetadata_ProcessingStatus
    DevicesLongRunningOperationMetadata_ProcessingStatus (..),

    -- ** DevicesLongRunningOperationResponse
    DevicesLongRunningOperationResponse (..),
    newDevicesLongRunningOperationResponse,

    -- ** Dpc
    Dpc (..),
    newDpc,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FindDevicesByDeviceIdentifierRequest
    FindDevicesByDeviceIdentifierRequest (..),
    newFindDevicesByDeviceIdentifierRequest,

    -- ** FindDevicesByDeviceIdentifierResponse
    FindDevicesByDeviceIdentifierResponse (..),
    newFindDevicesByDeviceIdentifierResponse,

    -- ** FindDevicesByOwnerRequest
    FindDevicesByOwnerRequest (..),
    newFindDevicesByOwnerRequest,

    -- ** FindDevicesByOwnerRequest_SectionType
    FindDevicesByOwnerRequest_SectionType (..),

    -- ** FindDevicesByOwnerResponse
    FindDevicesByOwnerResponse (..),
    newFindDevicesByOwnerResponse,

    -- ** GoogleWorkspaceAccount
    GoogleWorkspaceAccount (..),
    newGoogleWorkspaceAccount,

    -- ** ListCustomersResponse
    ListCustomersResponse (..),
    newListCustomersResponse,

    -- ** ListVendorCustomersResponse
    ListVendorCustomersResponse (..),
    newListVendorCustomersResponse,

    -- ** ListVendorsResponse
    ListVendorsResponse (..),
    newListVendorsResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationPerDevice
    OperationPerDevice (..),
    newOperationPerDevice,

    -- ** PartnerClaim
    PartnerClaim (..),
    newPartnerClaim,

    -- ** PartnerClaim_SectionType
    PartnerClaim_SectionType (..),

    -- ** PartnerUnclaim
    PartnerUnclaim (..),
    newPartnerUnclaim,

    -- ** PartnerUnclaim_SectionType
    PartnerUnclaim_SectionType (..),

    -- ** PerDeviceStatusInBatch
    PerDeviceStatusInBatch (..),
    newPerDeviceStatusInBatch,

    -- ** PerDeviceStatusInBatch_Status
    PerDeviceStatusInBatch_Status (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** UnclaimDeviceRequest
    UnclaimDeviceRequest (..),
    newUnclaimDeviceRequest,

    -- ** UnclaimDeviceRequest_SectionType
    UnclaimDeviceRequest_SectionType (..),

    -- ** UnclaimDevicesRequest
    UnclaimDevicesRequest (..),
    newUnclaimDevicesRequest,

    -- ** UpdateDeviceMetadataInBatchRequest
    UpdateDeviceMetadataInBatchRequest (..),
    newUpdateDeviceMetadataInBatchRequest,

    -- ** UpdateDeviceMetadataRequest
    UpdateDeviceMetadataRequest (..),
    newUpdateDeviceMetadataRequest,

    -- ** UpdateMetadataArguments
    UpdateMetadataArguments (..),
    newUpdateMetadataArguments,
  )
where

import Gogol.AndroidDeviceProvisioning.Internal.Product
import Gogol.AndroidDeviceProvisioning.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Android Device Provisioning Partner API. This contains the host and root path used as a starting point for constructing service requests.
androidDeviceProvisioningService :: Core.ServiceConfig
androidDeviceProvisioningService =
  Core.defaultService
    (Core.ServiceId "androiddeviceprovisioning:v1")
    "androiddeviceprovisioning.googleapis.com"
