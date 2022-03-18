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
-- Module      : Network.Google.AndroidDeviceProvisioning.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AndroidDeviceProvisioning.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ClaimDeviceRequest_SectionType
    ClaimDeviceRequest_SectionType
      ( ClaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED,
        ClaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK,
        ClaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),

    -- * Company_TermsStatus
    Company_TermsStatus
      ( Company_TermsStatus_TERMSSTATUSUNSPECIFIED,
        Company_TermsStatus_TERMSSTATUSNOTACCEPTED,
        Company_TermsStatus_TERMSSTATUSACCEPTED,
        Company_TermsStatus_TERMSSTATUSSTALE,
        ..
      ),

    -- * DeviceClaim_AdditionalService
    DeviceClaim_AdditionalService
      ( DeviceClaim_AdditionalService_ADDITIONALSERVICEUNSPECIFIED,
        DeviceClaim_AdditionalService_DEVICEPROTECTION,
        ..
      ),

    -- * DeviceClaim_SectionType
    DeviceClaim_SectionType
      ( DeviceClaim_SectionType_SECTIONTYPEUNSPECIFIED,
        DeviceClaim_SectionType_SECTIONTYPESIMLOCK,
        DeviceClaim_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),

    -- * DevicesLongRunningOperationMetadata_ProcessingStatus
    DevicesLongRunningOperationMetadata_ProcessingStatus
      ( DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSSTATUSUNSPECIFIED,
        DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPENDING,
        DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSINPROGRESS,
        DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPROCESSED,
        ..
      ),

    -- * FindDevicesByOwnerRequest_SectionType
    FindDevicesByOwnerRequest_SectionType
      ( FindDevicesByOwnerRequest_SectionType_SECTIONTYPEUNSPECIFIED,
        FindDevicesByOwnerRequest_SectionType_SECTIONTYPESIMLOCK,
        FindDevicesByOwnerRequest_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),

    -- * PartnerClaim_SectionType
    PartnerClaim_SectionType
      ( PartnerClaim_SectionType_SECTIONTYPEUNSPECIFIED,
        PartnerClaim_SectionType_SECTIONTYPESIMLOCK,
        PartnerClaim_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),

    -- * PartnerUnclaim_SectionType
    PartnerUnclaim_SectionType
      ( PartnerUnclaim_SectionType_SECTIONTYPEUNSPECIFIED,
        PartnerUnclaim_SectionType_SECTIONTYPESIMLOCK,
        PartnerUnclaim_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),

    -- * PerDeviceStatusInBatch_Status
    PerDeviceStatusInBatch_Status
      ( PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNSPECIFIED,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNKNOWNERROR,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSOTHERERROR,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSUCCESS,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSPERMISSIONDENIED,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDDEVICEIDENTIFIER,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDSECTIONTYPE,
        PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSECTIONNOTYOURS,
        ..
      ),

    -- * UnclaimDeviceRequest_SectionType
    UnclaimDeviceRequest_SectionType
      ( UnclaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED,
        UnclaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK,
        UnclaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Required. The section type of the device\'s provisioning record.
newtype ClaimDeviceRequest_SectionType = ClaimDeviceRequest_SectionType {fromClaimDeviceRequest_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern ClaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED :: ClaimDeviceRequest_SectionType
pattern ClaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED = ClaimDeviceRequest_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern ClaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK :: ClaimDeviceRequest_SectionType
pattern ClaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK = ClaimDeviceRequest_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern ClaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH :: ClaimDeviceRequest_SectionType
pattern ClaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH = ClaimDeviceRequest_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  ClaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED,
  ClaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK,
  ClaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH,
  ClaimDeviceRequest_SectionType
  #-}

-- | Output only. Whether any user from the company has accepted the latest Terms of Service (ToS). See TermsStatus.
newtype Company_TermsStatus = Company_TermsStatus {fromCompany_TermsStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value should never be set if the enum is present.
pattern Company_TermsStatus_TERMSSTATUSUNSPECIFIED :: Company_TermsStatus
pattern Company_TermsStatus_TERMSSTATUSUNSPECIFIED = Company_TermsStatus "TERMS_STATUS_UNSPECIFIED"

-- | None of the company\'s users have accepted the ToS.
pattern Company_TermsStatus_TERMSSTATUSNOTACCEPTED :: Company_TermsStatus
pattern Company_TermsStatus_TERMSSTATUSNOTACCEPTED = Company_TermsStatus "TERMS_STATUS_NOT_ACCEPTED"

-- | One (or more) of the company\'s users has accepted the ToS.
pattern Company_TermsStatus_TERMSSTATUSACCEPTED :: Company_TermsStatus
pattern Company_TermsStatus_TERMSSTATUSACCEPTED = Company_TermsStatus "TERMS_STATUS_ACCEPTED"

-- | None of the company\'s users has accepted the current ToS but at least one user accepted a previous ToS.
pattern Company_TermsStatus_TERMSSTATUSSTALE :: Company_TermsStatus
pattern Company_TermsStatus_TERMSSTATUSSTALE = Company_TermsStatus "TERMS_STATUS_STALE"

{-# COMPLETE
  Company_TermsStatus_TERMSSTATUSUNSPECIFIED,
  Company_TermsStatus_TERMSSTATUSNOTACCEPTED,
  Company_TermsStatus_TERMSSTATUSACCEPTED,
  Company_TermsStatus_TERMSSTATUSSTALE,
  Company_TermsStatus
  #-}

-- | The Additional service registered for the device.
newtype DeviceClaim_AdditionalService = DeviceClaim_AdditionalService {fromDeviceClaim_AdditionalService :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No additional service.
pattern DeviceClaim_AdditionalService_ADDITIONALSERVICEUNSPECIFIED :: DeviceClaim_AdditionalService
pattern DeviceClaim_AdditionalService_ADDITIONALSERVICEUNSPECIFIED = DeviceClaim_AdditionalService "ADDITIONAL_SERVICE_UNSPECIFIED"

-- | Device protection service, also known as Android Enterprise Essentials. To claim a device with the device protection service you must enroll with the partnership team.
pattern DeviceClaim_AdditionalService_DEVICEPROTECTION :: DeviceClaim_AdditionalService
pattern DeviceClaim_AdditionalService_DEVICEPROTECTION = DeviceClaim_AdditionalService "DEVICE_PROTECTION"

{-# COMPLETE
  DeviceClaim_AdditionalService_ADDITIONALSERVICEUNSPECIFIED,
  DeviceClaim_AdditionalService_DEVICEPROTECTION,
  DeviceClaim_AdditionalService
  #-}

-- | Output only. The type of claim made on the device.
newtype DeviceClaim_SectionType = DeviceClaim_SectionType {fromDeviceClaim_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern DeviceClaim_SectionType_SECTIONTYPEUNSPECIFIED :: DeviceClaim_SectionType
pattern DeviceClaim_SectionType_SECTIONTYPEUNSPECIFIED = DeviceClaim_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern DeviceClaim_SectionType_SECTIONTYPESIMLOCK :: DeviceClaim_SectionType
pattern DeviceClaim_SectionType_SECTIONTYPESIMLOCK = DeviceClaim_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern DeviceClaim_SectionType_SECTIONTYPEZEROTOUCH :: DeviceClaim_SectionType
pattern DeviceClaim_SectionType_SECTIONTYPEZEROTOUCH = DeviceClaim_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  DeviceClaim_SectionType_SECTIONTYPEUNSPECIFIED,
  DeviceClaim_SectionType_SECTIONTYPESIMLOCK,
  DeviceClaim_SectionType_SECTIONTYPEZEROTOUCH,
  DeviceClaim_SectionType
  #-}

-- | The processing status of the operation.
newtype DevicesLongRunningOperationMetadata_ProcessingStatus = DevicesLongRunningOperationMetadata_ProcessingStatus {fromDevicesLongRunningOperationMetadata_ProcessingStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid code. Shouldn\'t be used.
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSSTATUSUNSPECIFIED :: DevicesLongRunningOperationMetadata_ProcessingStatus
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSSTATUSUNSPECIFIED = DevicesLongRunningOperationMetadata_ProcessingStatus "BATCH_PROCESS_STATUS_UNSPECIFIED"

-- | Pending.
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPENDING :: DevicesLongRunningOperationMetadata_ProcessingStatus
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPENDING = DevicesLongRunningOperationMetadata_ProcessingStatus "BATCH_PROCESS_PENDING"

-- | In progress.
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSINPROGRESS :: DevicesLongRunningOperationMetadata_ProcessingStatus
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSINPROGRESS = DevicesLongRunningOperationMetadata_ProcessingStatus "BATCH_PROCESS_IN_PROGRESS"

-- | Processed. This doesn\'t mean all items were processed successfully, you should check the @response@ field for the result of every item.
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPROCESSED :: DevicesLongRunningOperationMetadata_ProcessingStatus
pattern DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPROCESSED = DevicesLongRunningOperationMetadata_ProcessingStatus "BATCH_PROCESS_PROCESSED"

{-# COMPLETE
  DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSSTATUSUNSPECIFIED,
  DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPENDING,
  DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSINPROGRESS,
  DevicesLongRunningOperationMetadata_ProcessingStatus_BATCHPROCESSPROCESSED,
  DevicesLongRunningOperationMetadata_ProcessingStatus
  #-}

-- | Required. The section type of the device\'s provisioning record.
newtype FindDevicesByOwnerRequest_SectionType = FindDevicesByOwnerRequest_SectionType {fromFindDevicesByOwnerRequest_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPEUNSPECIFIED :: FindDevicesByOwnerRequest_SectionType
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPEUNSPECIFIED = FindDevicesByOwnerRequest_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPESIMLOCK :: FindDevicesByOwnerRequest_SectionType
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPESIMLOCK = FindDevicesByOwnerRequest_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPEZEROTOUCH :: FindDevicesByOwnerRequest_SectionType
pattern FindDevicesByOwnerRequest_SectionType_SECTIONTYPEZEROTOUCH = FindDevicesByOwnerRequest_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  FindDevicesByOwnerRequest_SectionType_SECTIONTYPEUNSPECIFIED,
  FindDevicesByOwnerRequest_SectionType_SECTIONTYPESIMLOCK,
  FindDevicesByOwnerRequest_SectionType_SECTIONTYPEZEROTOUCH,
  FindDevicesByOwnerRequest_SectionType
  #-}

-- | Required. The section type of the device\'s provisioning record.
newtype PartnerClaim_SectionType = PartnerClaim_SectionType {fromPartnerClaim_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern PartnerClaim_SectionType_SECTIONTYPEUNSPECIFIED :: PartnerClaim_SectionType
pattern PartnerClaim_SectionType_SECTIONTYPEUNSPECIFIED = PartnerClaim_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern PartnerClaim_SectionType_SECTIONTYPESIMLOCK :: PartnerClaim_SectionType
pattern PartnerClaim_SectionType_SECTIONTYPESIMLOCK = PartnerClaim_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern PartnerClaim_SectionType_SECTIONTYPEZEROTOUCH :: PartnerClaim_SectionType
pattern PartnerClaim_SectionType_SECTIONTYPEZEROTOUCH = PartnerClaim_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  PartnerClaim_SectionType_SECTIONTYPEUNSPECIFIED,
  PartnerClaim_SectionType_SECTIONTYPESIMLOCK,
  PartnerClaim_SectionType_SECTIONTYPEZEROTOUCH,
  PartnerClaim_SectionType
  #-}

-- | Required. The section type of the device\'s provisioning record.
newtype PartnerUnclaim_SectionType = PartnerUnclaim_SectionType {fromPartnerUnclaim_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern PartnerUnclaim_SectionType_SECTIONTYPEUNSPECIFIED :: PartnerUnclaim_SectionType
pattern PartnerUnclaim_SectionType_SECTIONTYPEUNSPECIFIED = PartnerUnclaim_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern PartnerUnclaim_SectionType_SECTIONTYPESIMLOCK :: PartnerUnclaim_SectionType
pattern PartnerUnclaim_SectionType_SECTIONTYPESIMLOCK = PartnerUnclaim_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern PartnerUnclaim_SectionType_SECTIONTYPEZEROTOUCH :: PartnerUnclaim_SectionType
pattern PartnerUnclaim_SectionType_SECTIONTYPEZEROTOUCH = PartnerUnclaim_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  PartnerUnclaim_SectionType_SECTIONTYPEUNSPECIFIED,
  PartnerUnclaim_SectionType_SECTIONTYPESIMLOCK,
  PartnerUnclaim_SectionType_SECTIONTYPEZEROTOUCH,
  PartnerUnclaim_SectionType
  #-}

-- | The result status of the device after processing.
newtype PerDeviceStatusInBatch_Status = PerDeviceStatusInBatch_Status {fromPerDeviceStatusInBatch_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid code. Shouldn\'t be used.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNSPECIFIED :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNSPECIFIED = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_UNSPECIFIED"

-- | Unknown error. We don\'t expect this error to occur here.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNKNOWNERROR :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNKNOWNERROR = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_UNKNOWN_ERROR"

-- | Other error. We know\/expect this error, but there\'s no defined error code for the error.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSOTHERERROR :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSOTHERERROR = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_OTHER_ERROR"

-- | Success.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSUCCESS :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSUCCESS = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_SUCCESS"

-- | Permission denied.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSPERMISSIONDENIED :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSPERMISSIONDENIED = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_PERMISSION_DENIED"

-- | Invalid device identifier.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDDEVICEIDENTIFIER :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDDEVICEIDENTIFIER = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER"

-- | Invalid section type.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDSECTIONTYPE :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDSECTIONTYPE = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE"

-- | This section is claimed by another company.
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSECTIONNOTYOURS :: PerDeviceStatusInBatch_Status
pattern PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSECTIONNOTYOURS = PerDeviceStatusInBatch_Status "SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS"

{-# COMPLETE
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNSPECIFIED,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSUNKNOWNERROR,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSOTHERERROR,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSUCCESS,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSPERMISSIONDENIED,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDDEVICEIDENTIFIER,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSINVALIDSECTIONTYPE,
  PerDeviceStatusInBatch_Status_SINGLEDEVICESTATUSSECTIONNOTYOURS,
  PerDeviceStatusInBatch_Status
  #-}

-- | Required. The section type of the device\'s provisioning record.
newtype UnclaimDeviceRequest_SectionType = UnclaimDeviceRequest_SectionType {fromUnclaimDeviceRequest_SectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified section type.
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED :: UnclaimDeviceRequest_SectionType
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED = UnclaimDeviceRequest_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | SIM-lock section type.
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK :: UnclaimDeviceRequest_SectionType
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK = UnclaimDeviceRequest_SectionType "SECTION_TYPE_SIM_LOCK"

-- | Zero-touch enrollment section type.
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH :: UnclaimDeviceRequest_SectionType
pattern UnclaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH = UnclaimDeviceRequest_SectionType "SECTION_TYPE_ZERO_TOUCH"

{-# COMPLETE
  UnclaimDeviceRequest_SectionType_SECTIONTYPEUNSPECIFIED,
  UnclaimDeviceRequest_SectionType_SECTIONTYPESIMLOCK,
  UnclaimDeviceRequest_SectionType_SECTIONTYPEZEROTOUCH,
  UnclaimDeviceRequest_SectionType
  #-}
