{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidDeviceProvisioning.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidDeviceProvisioning.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The result status of the device after processing.
data PerDeviceStatusInBatchStatus
    = SingleDeviceStatusUnspecified
      -- ^ @SINGLE_DEVICE_STATUS_UNSPECIFIED@
      -- Invalid code. Shouldn\'t be used.
    | SingleDeviceStatusUnknownError
      -- ^ @SINGLE_DEVICE_STATUS_UNKNOWN_ERROR@
      -- Unknown error. We don\'t expect this error to occur here.
    | SingleDeviceStatusOtherError
      -- ^ @SINGLE_DEVICE_STATUS_OTHER_ERROR@
      -- Other error. We know\/expect this error, but there\'s no defined error
      -- code for the error.
    | SingleDeviceStatusSuccess
      -- ^ @SINGLE_DEVICE_STATUS_SUCCESS@
      -- Success.
    | SingleDeviceStatusPermissionDenied
      -- ^ @SINGLE_DEVICE_STATUS_PERMISSION_DENIED@
      -- Permission denied.
    | SingleDeviceStatusInvalidDeviceIdentifier
      -- ^ @SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER@
      -- Invalid device identifier.
    | SingleDeviceStatusInvalidSectionType
      -- ^ @SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE@
      -- Invalid section type.
    | SingleDeviceStatusSectionNotYours
      -- ^ @SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS@
      -- This section is claimed by another company.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PerDeviceStatusInBatchStatus

instance FromHttpApiData PerDeviceStatusInBatchStatus where
    parseQueryParam = \case
        "SINGLE_DEVICE_STATUS_UNSPECIFIED" -> Right SingleDeviceStatusUnspecified
        "SINGLE_DEVICE_STATUS_UNKNOWN_ERROR" -> Right SingleDeviceStatusUnknownError
        "SINGLE_DEVICE_STATUS_OTHER_ERROR" -> Right SingleDeviceStatusOtherError
        "SINGLE_DEVICE_STATUS_SUCCESS" -> Right SingleDeviceStatusSuccess
        "SINGLE_DEVICE_STATUS_PERMISSION_DENIED" -> Right SingleDeviceStatusPermissionDenied
        "SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER" -> Right SingleDeviceStatusInvalidDeviceIdentifier
        "SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE" -> Right SingleDeviceStatusInvalidSectionType
        "SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS" -> Right SingleDeviceStatusSectionNotYours
        x -> Left ("Unable to parse PerDeviceStatusInBatchStatus from: " <> x)

instance ToHttpApiData PerDeviceStatusInBatchStatus where
    toQueryParam = \case
        SingleDeviceStatusUnspecified -> "SINGLE_DEVICE_STATUS_UNSPECIFIED"
        SingleDeviceStatusUnknownError -> "SINGLE_DEVICE_STATUS_UNKNOWN_ERROR"
        SingleDeviceStatusOtherError -> "SINGLE_DEVICE_STATUS_OTHER_ERROR"
        SingleDeviceStatusSuccess -> "SINGLE_DEVICE_STATUS_SUCCESS"
        SingleDeviceStatusPermissionDenied -> "SINGLE_DEVICE_STATUS_PERMISSION_DENIED"
        SingleDeviceStatusInvalidDeviceIdentifier -> "SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER"
        SingleDeviceStatusInvalidSectionType -> "SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE"
        SingleDeviceStatusSectionNotYours -> "SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS"

instance FromJSON PerDeviceStatusInBatchStatus where
    parseJSON = parseJSONText "PerDeviceStatusInBatchStatus"

instance ToJSON PerDeviceStatusInBatchStatus where
    toJSON = toJSONText

-- | Required. The section type of the device\'s provisioning record.
data FindDevicesByOwnerRequestSectionType
    = SectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | SectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | SectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FindDevicesByOwnerRequestSectionType

instance FromHttpApiData FindDevicesByOwnerRequestSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right SectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right SectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right SectionTypeZeroTouch
        x -> Left ("Unable to parse FindDevicesByOwnerRequestSectionType from: " <> x)

instance ToHttpApiData FindDevicesByOwnerRequestSectionType where
    toQueryParam = \case
        SectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        SectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        SectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON FindDevicesByOwnerRequestSectionType where
    parseJSON = parseJSONText "FindDevicesByOwnerRequestSectionType"

instance ToJSON FindDevicesByOwnerRequestSectionType where
    toJSON = toJSONText

-- | Required. The section type of the device\'s provisioning record.
data PartnerClaimSectionType
    = PCSTSectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | PCSTSectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | PCSTSectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartnerClaimSectionType

instance FromHttpApiData PartnerClaimSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right PCSTSectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right PCSTSectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right PCSTSectionTypeZeroTouch
        x -> Left ("Unable to parse PartnerClaimSectionType from: " <> x)

instance ToHttpApiData PartnerClaimSectionType where
    toQueryParam = \case
        PCSTSectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        PCSTSectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        PCSTSectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON PartnerClaimSectionType where
    parseJSON = parseJSONText "PartnerClaimSectionType"

instance ToJSON PartnerClaimSectionType where
    toJSON = toJSONText

-- | Required. The section type of the device\'s provisioning record.
data PartnerUnclaimSectionType
    = PUSTSectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | PUSTSectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | PUSTSectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartnerUnclaimSectionType

instance FromHttpApiData PartnerUnclaimSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right PUSTSectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right PUSTSectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right PUSTSectionTypeZeroTouch
        x -> Left ("Unable to parse PartnerUnclaimSectionType from: " <> x)

instance ToHttpApiData PartnerUnclaimSectionType where
    toQueryParam = \case
        PUSTSectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        PUSTSectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        PUSTSectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON PartnerUnclaimSectionType where
    parseJSON = parseJSONText "PartnerUnclaimSectionType"

instance ToJSON PartnerUnclaimSectionType where
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

-- | Required. The section type of the device\'s provisioning record.
data ClaimDeviceRequestSectionType
    = CDRSTSectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | CDRSTSectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | CDRSTSectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClaimDeviceRequestSectionType

instance FromHttpApiData ClaimDeviceRequestSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right CDRSTSectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right CDRSTSectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right CDRSTSectionTypeZeroTouch
        x -> Left ("Unable to parse ClaimDeviceRequestSectionType from: " <> x)

instance ToHttpApiData ClaimDeviceRequestSectionType where
    toQueryParam = \case
        CDRSTSectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        CDRSTSectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        CDRSTSectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON ClaimDeviceRequestSectionType where
    parseJSON = parseJSONText "ClaimDeviceRequestSectionType"

instance ToJSON ClaimDeviceRequestSectionType where
    toJSON = toJSONText

-- | Output only. The type of claim made on the device.
data DeviceClaimSectionType
    = DCSTSectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | DCSTSectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | DCSTSectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceClaimSectionType

instance FromHttpApiData DeviceClaimSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right DCSTSectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right DCSTSectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right DCSTSectionTypeZeroTouch
        x -> Left ("Unable to parse DeviceClaimSectionType from: " <> x)

instance ToHttpApiData DeviceClaimSectionType where
    toQueryParam = \case
        DCSTSectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        DCSTSectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        DCSTSectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON DeviceClaimSectionType where
    parseJSON = parseJSONText "DeviceClaimSectionType"

instance ToJSON DeviceClaimSectionType where
    toJSON = toJSONText

-- | Output only. Whether any user from the company has accepted the latest
-- Terms of Service (ToS). See TermsStatus.
data CompanyTermsStatus
    = TermsStatusUnspecified
      -- ^ @TERMS_STATUS_UNSPECIFIED@
      -- Default value. This value should never be set if the enum is present.
    | TermsStatusNotAccepted
      -- ^ @TERMS_STATUS_NOT_ACCEPTED@
      -- None of the company\'s users have accepted the ToS.
    | TermsStatusAccepted
      -- ^ @TERMS_STATUS_ACCEPTED@
      -- One (or more) of the company\'s users has accepted the ToS.
    | TermsStatusStale
      -- ^ @TERMS_STATUS_STALE@
      -- None of the company\'s users has accepted the current ToS but at least
      -- one user accepted a previous ToS.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanyTermsStatus

instance FromHttpApiData CompanyTermsStatus where
    parseQueryParam = \case
        "TERMS_STATUS_UNSPECIFIED" -> Right TermsStatusUnspecified
        "TERMS_STATUS_NOT_ACCEPTED" -> Right TermsStatusNotAccepted
        "TERMS_STATUS_ACCEPTED" -> Right TermsStatusAccepted
        "TERMS_STATUS_STALE" -> Right TermsStatusStale
        x -> Left ("Unable to parse CompanyTermsStatus from: " <> x)

instance ToHttpApiData CompanyTermsStatus where
    toQueryParam = \case
        TermsStatusUnspecified -> "TERMS_STATUS_UNSPECIFIED"
        TermsStatusNotAccepted -> "TERMS_STATUS_NOT_ACCEPTED"
        TermsStatusAccepted -> "TERMS_STATUS_ACCEPTED"
        TermsStatusStale -> "TERMS_STATUS_STALE"

instance FromJSON CompanyTermsStatus where
    parseJSON = parseJSONText "CompanyTermsStatus"

instance ToJSON CompanyTermsStatus where
    toJSON = toJSONText

-- | The Additional service registered for the device.
data DeviceClaimAdditionalService
    = AdditionalServiceUnspecified
      -- ^ @ADDITIONAL_SERVICE_UNSPECIFIED@
      -- No additional service.
    | DeviceProtection
      -- ^ @DEVICE_PROTECTION@
      -- Device protection service, as known as Android Enterprise Essentials. To
      -- claim a device with the device protection service you must enroll with
      -- the partnership team.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceClaimAdditionalService

instance FromHttpApiData DeviceClaimAdditionalService where
    parseQueryParam = \case
        "ADDITIONAL_SERVICE_UNSPECIFIED" -> Right AdditionalServiceUnspecified
        "DEVICE_PROTECTION" -> Right DeviceProtection
        x -> Left ("Unable to parse DeviceClaimAdditionalService from: " <> x)

instance ToHttpApiData DeviceClaimAdditionalService where
    toQueryParam = \case
        AdditionalServiceUnspecified -> "ADDITIONAL_SERVICE_UNSPECIFIED"
        DeviceProtection -> "DEVICE_PROTECTION"

instance FromJSON DeviceClaimAdditionalService where
    parseJSON = parseJSONText "DeviceClaimAdditionalService"

instance ToJSON DeviceClaimAdditionalService where
    toJSON = toJSONText

-- | Required. The section type of the device\'s provisioning record.
data UnclaimDeviceRequestSectionType
    = UDRSTSectionTypeUnspecified
      -- ^ @SECTION_TYPE_UNSPECIFIED@
      -- Unspecified section type.
    | UDRSTSectionTypeSimLock
      -- ^ @SECTION_TYPE_SIM_LOCK@
      -- SIM-lock section type.
    | UDRSTSectionTypeZeroTouch
      -- ^ @SECTION_TYPE_ZERO_TOUCH@
      -- Zero-touch enrollment section type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UnclaimDeviceRequestSectionType

instance FromHttpApiData UnclaimDeviceRequestSectionType where
    parseQueryParam = \case
        "SECTION_TYPE_UNSPECIFIED" -> Right UDRSTSectionTypeUnspecified
        "SECTION_TYPE_SIM_LOCK" -> Right UDRSTSectionTypeSimLock
        "SECTION_TYPE_ZERO_TOUCH" -> Right UDRSTSectionTypeZeroTouch
        x -> Left ("Unable to parse UnclaimDeviceRequestSectionType from: " <> x)

instance ToHttpApiData UnclaimDeviceRequestSectionType where
    toQueryParam = \case
        UDRSTSectionTypeUnspecified -> "SECTION_TYPE_UNSPECIFIED"
        UDRSTSectionTypeSimLock -> "SECTION_TYPE_SIM_LOCK"
        UDRSTSectionTypeZeroTouch -> "SECTION_TYPE_ZERO_TOUCH"

instance FromJSON UnclaimDeviceRequestSectionType where
    parseJSON = parseJSONText "UnclaimDeviceRequestSectionType"

instance ToJSON UnclaimDeviceRequestSectionType where
    toJSON = toJSONText

-- | The processing status of the operation.
data DevicesLongRunningOperationMetadataProcessingStatus
    = BatchProcessStatusUnspecified
      -- ^ @BATCH_PROCESS_STATUS_UNSPECIFIED@
      -- Invalid code. Shouldn\'t be used.
    | BatchProcessPending
      -- ^ @BATCH_PROCESS_PENDING@
      -- Pending.
    | BatchProcessInProgress
      -- ^ @BATCH_PROCESS_IN_PROGRESS@
      -- In progress.
    | BatchProcessProcessed
      -- ^ @BATCH_PROCESS_PROCESSED@
      -- Processed. This doesn\'t mean all items were processed successfully, you
      -- should check the \`response\` field for the result of every item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DevicesLongRunningOperationMetadataProcessingStatus

instance FromHttpApiData DevicesLongRunningOperationMetadataProcessingStatus where
    parseQueryParam = \case
        "BATCH_PROCESS_STATUS_UNSPECIFIED" -> Right BatchProcessStatusUnspecified
        "BATCH_PROCESS_PENDING" -> Right BatchProcessPending
        "BATCH_PROCESS_IN_PROGRESS" -> Right BatchProcessInProgress
        "BATCH_PROCESS_PROCESSED" -> Right BatchProcessProcessed
        x -> Left ("Unable to parse DevicesLongRunningOperationMetadataProcessingStatus from: " <> x)

instance ToHttpApiData DevicesLongRunningOperationMetadataProcessingStatus where
    toQueryParam = \case
        BatchProcessStatusUnspecified -> "BATCH_PROCESS_STATUS_UNSPECIFIED"
        BatchProcessPending -> "BATCH_PROCESS_PENDING"
        BatchProcessInProgress -> "BATCH_PROCESS_IN_PROGRESS"
        BatchProcessProcessed -> "BATCH_PROCESS_PROCESSED"

instance FromJSON DevicesLongRunningOperationMetadataProcessingStatus where
    parseJSON = parseJSONText "DevicesLongRunningOperationMetadataProcessingStatus"

instance ToJSON DevicesLongRunningOperationMetadataProcessingStatus where
    toJSON = toJSONText
