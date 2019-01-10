{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidDeviceProvisioning.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidDeviceProvisioning.Types.Product where

import           Network.Google.AndroidDeviceProvisioning.Types.Sum
import           Network.Google.Prelude

-- | Identifies metdata updates to one device.
--
-- /See:/ 'updateMetadataArguments' smart constructor.
data UpdateMetadataArguments = UpdateMetadataArguments'
    { _umaDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _umaDeviceId         :: !(Maybe (Textual Int64))
    , _umaDeviceMetadata   :: !(Maybe DeviceMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateMetadataArguments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaDeviceIdentifier'
--
-- * 'umaDeviceId'
--
-- * 'umaDeviceMetadata'
updateMetadataArguments
    :: UpdateMetadataArguments
updateMetadataArguments =
    UpdateMetadataArguments'
    { _umaDeviceIdentifier = Nothing
    , _umaDeviceId = Nothing
    , _umaDeviceMetadata = Nothing
    }

-- | Device identifier.
umaDeviceIdentifier :: Lens' UpdateMetadataArguments (Maybe DeviceIdentifier)
umaDeviceIdentifier
  = lens _umaDeviceIdentifier
      (\ s a -> s{_umaDeviceIdentifier = a})

-- | Device ID of the device.
umaDeviceId :: Lens' UpdateMetadataArguments (Maybe Int64)
umaDeviceId
  = lens _umaDeviceId (\ s a -> s{_umaDeviceId = a}) .
      mapping _Coerce

-- | Required. The metadata to update.
umaDeviceMetadata :: Lens' UpdateMetadataArguments (Maybe DeviceMetadata)
umaDeviceMetadata
  = lens _umaDeviceMetadata
      (\ s a -> s{_umaDeviceMetadata = a})

instance FromJSON UpdateMetadataArguments where
        parseJSON
          = withObject "UpdateMetadataArguments"
              (\ o ->
                 UpdateMetadataArguments' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "deviceId") <*>
                     (o .:? "deviceMetadata"))

instance ToJSON UpdateMetadataArguments where
        toJSON UpdateMetadataArguments'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _umaDeviceIdentifier,
                  ("deviceId" .=) <$> _umaDeviceId,
                  ("deviceMetadata" .=) <$> _umaDeviceMetadata])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Identifies one claim request.
--
-- /See:/ 'partnerClaim' smart constructor.
data PartnerClaim = PartnerClaim'
    { _pcDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _pcSectionType      :: !(Maybe PartnerClaimSectionType)
    , _pcCustomerId       :: !(Maybe (Textual Int64))
    , _pcDeviceMetadata   :: !(Maybe DeviceMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnerClaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcDeviceIdentifier'
--
-- * 'pcSectionType'
--
-- * 'pcCustomerId'
--
-- * 'pcDeviceMetadata'
partnerClaim
    :: PartnerClaim
partnerClaim =
    PartnerClaim'
    { _pcDeviceIdentifier = Nothing
    , _pcSectionType = Nothing
    , _pcCustomerId = Nothing
    , _pcDeviceMetadata = Nothing
    }

-- | Required. Device identifier of the device.
pcDeviceIdentifier :: Lens' PartnerClaim (Maybe DeviceIdentifier)
pcDeviceIdentifier
  = lens _pcDeviceIdentifier
      (\ s a -> s{_pcDeviceIdentifier = a})

-- | Required. The section type of the device\'s provisioning record.
pcSectionType :: Lens' PartnerClaim (Maybe PartnerClaimSectionType)
pcSectionType
  = lens _pcSectionType
      (\ s a -> s{_pcSectionType = a})

-- | Required. The ID of the customer for whom the device is being claimed.
pcCustomerId :: Lens' PartnerClaim (Maybe Int64)
pcCustomerId
  = lens _pcCustomerId (\ s a -> s{_pcCustomerId = a})
      . mapping _Coerce

-- | Required. The metadata to attach to the device at claim.
pcDeviceMetadata :: Lens' PartnerClaim (Maybe DeviceMetadata)
pcDeviceMetadata
  = lens _pcDeviceMetadata
      (\ s a -> s{_pcDeviceMetadata = a})

instance FromJSON PartnerClaim where
        parseJSON
          = withObject "PartnerClaim"
              (\ o ->
                 PartnerClaim' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "sectionType")
                     <*> (o .:? "customerId")
                     <*> (o .:? "deviceMetadata"))

instance ToJSON PartnerClaim where
        toJSON PartnerClaim'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _pcDeviceIdentifier,
                  ("sectionType" .=) <$> _pcSectionType,
                  ("customerId" .=) <$> _pcCustomerId,
                  ("deviceMetadata" .=) <$> _pcDeviceMetadata])

-- | Request message for customer to unclaim a device.
--
-- /See:/ 'customerUnclaimDeviceRequest' smart constructor.
newtype CustomerUnclaimDeviceRequest = CustomerUnclaimDeviceRequest'
    { _cudrDevice :: Maybe DeviceReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerUnclaimDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cudrDevice'
customerUnclaimDeviceRequest
    :: CustomerUnclaimDeviceRequest
customerUnclaimDeviceRequest =
    CustomerUnclaimDeviceRequest'
    { _cudrDevice = Nothing
    }

-- | Required. The device to unclaim.
cudrDevice :: Lens' CustomerUnclaimDeviceRequest (Maybe DeviceReference)
cudrDevice
  = lens _cudrDevice (\ s a -> s{_cudrDevice = a})

instance FromJSON CustomerUnclaimDeviceRequest where
        parseJSON
          = withObject "CustomerUnclaimDeviceRequest"
              (\ o ->
                 CustomerUnclaimDeviceRequest' <$> (o .:? "device"))

instance ToJSON CustomerUnclaimDeviceRequest where
        toJSON CustomerUnclaimDeviceRequest'{..}
          = object (catMaybes [("device" .=) <$> _cudrDevice])

-- | Request to find devices.
--
-- /See:/ 'findDevicesByDeviceIdentifierRequest' smart constructor.
data FindDevicesByDeviceIdentifierRequest = FindDevicesByDeviceIdentifierRequest'
    { _fdbdirDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _fdbdirLimit            :: !(Maybe (Textual Int64))
    , _fdbdirPageToken        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindDevicesByDeviceIdentifierRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdbdirDeviceIdentifier'
--
-- * 'fdbdirLimit'
--
-- * 'fdbdirPageToken'
findDevicesByDeviceIdentifierRequest
    :: FindDevicesByDeviceIdentifierRequest
findDevicesByDeviceIdentifierRequest =
    FindDevicesByDeviceIdentifierRequest'
    { _fdbdirDeviceIdentifier = Nothing
    , _fdbdirLimit = Nothing
    , _fdbdirPageToken = Nothing
    }

-- | Required. The device identifier to search for.
fdbdirDeviceIdentifier :: Lens' FindDevicesByDeviceIdentifierRequest (Maybe DeviceIdentifier)
fdbdirDeviceIdentifier
  = lens _fdbdirDeviceIdentifier
      (\ s a -> s{_fdbdirDeviceIdentifier = a})

-- | Required. The maximum number of devices to show in a page of results.
-- Must be between 1 and 100 inclusive.
fdbdirLimit :: Lens' FindDevicesByDeviceIdentifierRequest (Maybe Int64)
fdbdirLimit
  = lens _fdbdirLimit (\ s a -> s{_fdbdirLimit = a}) .
      mapping _Coerce

-- | A token specifying which result page to return.
fdbdirPageToken :: Lens' FindDevicesByDeviceIdentifierRequest (Maybe Text)
fdbdirPageToken
  = lens _fdbdirPageToken
      (\ s a -> s{_fdbdirPageToken = a})

instance FromJSON
         FindDevicesByDeviceIdentifierRequest where
        parseJSON
          = withObject "FindDevicesByDeviceIdentifierRequest"
              (\ o ->
                 FindDevicesByDeviceIdentifierRequest' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "limit") <*>
                     (o .:? "pageToken"))

instance ToJSON FindDevicesByDeviceIdentifierRequest
         where
        toJSON FindDevicesByDeviceIdentifierRequest'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _fdbdirDeviceIdentifier,
                  ("limit" .=) <$> _fdbdirLimit,
                  ("pageToken" .=) <$> _fdbdirPageToken])

-- | Response containing found devices.
--
-- /See:/ 'findDevicesByOwnerResponse' smart constructor.
data FindDevicesByOwnerResponse = FindDevicesByOwnerResponse'
    { _fdborNextPageToken :: !(Maybe Text)
    , _fdborTotalSize     :: !(Maybe (Textual Int32))
    , _fdborDevices       :: !(Maybe [Device])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindDevicesByOwnerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdborNextPageToken'
--
-- * 'fdborTotalSize'
--
-- * 'fdborDevices'
findDevicesByOwnerResponse
    :: FindDevicesByOwnerResponse
findDevicesByOwnerResponse =
    FindDevicesByOwnerResponse'
    { _fdborNextPageToken = Nothing
    , _fdborTotalSize = Nothing
    , _fdborDevices = Nothing
    }

-- | A token used to access the next page of results. Omitted if no further
-- results are available.
fdborNextPageToken :: Lens' FindDevicesByOwnerResponse (Maybe Text)
fdborNextPageToken
  = lens _fdborNextPageToken
      (\ s a -> s{_fdborNextPageToken = a})

-- | The total count of items in the list irrespective of pagination.
fdborTotalSize :: Lens' FindDevicesByOwnerResponse (Maybe Int32)
fdborTotalSize
  = lens _fdborTotalSize
      (\ s a -> s{_fdborTotalSize = a})
      . mapping _Coerce

-- | The customer\'s devices.
fdborDevices :: Lens' FindDevicesByOwnerResponse [Device]
fdborDevices
  = lens _fdborDevices (\ s a -> s{_fdborDevices = a})
      . _Default
      . _Coerce

instance FromJSON FindDevicesByOwnerResponse where
        parseJSON
          = withObject "FindDevicesByOwnerResponse"
              (\ o ->
                 FindDevicesByOwnerResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "devices" .!= mempty))

instance ToJSON FindDevicesByOwnerResponse where
        toJSON FindDevicesByOwnerResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _fdborNextPageToken,
                  ("totalSize" .=) <$> _fdborTotalSize,
                  ("devices" .=) <$> _fdborDevices])

-- | Metadata entries recorded as key-value pairs.
--
-- /See:/ 'deviceMetadataEntries' smart constructor.
newtype DeviceMetadataEntries = DeviceMetadataEntries'
    { _dmeAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceMetadataEntries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmeAddtional'
deviceMetadataEntries
    :: HashMap Text Text -- ^ 'dmeAddtional'
    -> DeviceMetadataEntries
deviceMetadataEntries pDmeAddtional_ =
    DeviceMetadataEntries'
    { _dmeAddtional = _Coerce # pDmeAddtional_
    }

dmeAddtional :: Lens' DeviceMetadataEntries (HashMap Text Text)
dmeAddtional
  = lens _dmeAddtional (\ s a -> s{_dmeAddtional = a})
      . _Coerce

instance FromJSON DeviceMetadataEntries where
        parseJSON
          = withObject "DeviceMetadataEntries"
              (\ o ->
                 DeviceMetadataEntries' <$> (parseJSONObject o))

instance ToJSON DeviceMetadataEntries where
        toJSON = toJSON . _dmeAddtional

-- | Identifies one unclaim request.
--
-- /See:/ 'partnerUnclaim' smart constructor.
data PartnerUnclaim = PartnerUnclaim'
    { _puDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _puSectionType      :: !(Maybe PartnerUnclaimSectionType)
    , _puDeviceId         :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnerUnclaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puDeviceIdentifier'
--
-- * 'puSectionType'
--
-- * 'puDeviceId'
partnerUnclaim
    :: PartnerUnclaim
partnerUnclaim =
    PartnerUnclaim'
    { _puDeviceIdentifier = Nothing
    , _puSectionType = Nothing
    , _puDeviceId = Nothing
    }

-- | Device identifier of the device.
puDeviceIdentifier :: Lens' PartnerUnclaim (Maybe DeviceIdentifier)
puDeviceIdentifier
  = lens _puDeviceIdentifier
      (\ s a -> s{_puDeviceIdentifier = a})

-- | Required. The section type of the device\'s provisioning record.
puSectionType :: Lens' PartnerUnclaim (Maybe PartnerUnclaimSectionType)
puSectionType
  = lens _puSectionType
      (\ s a -> s{_puSectionType = a})

-- | Device ID of the device.
puDeviceId :: Lens' PartnerUnclaim (Maybe Int64)
puDeviceId
  = lens _puDeviceId (\ s a -> s{_puDeviceId = a}) .
      mapping _Coerce

instance FromJSON PartnerUnclaim where
        parseJSON
          = withObject "PartnerUnclaim"
              (\ o ->
                 PartnerUnclaim' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "sectionType")
                     <*> (o .:? "deviceId"))

instance ToJSON PartnerUnclaim where
        toJSON PartnerUnclaim'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _puDeviceIdentifier,
                  ("sectionType" .=) <$> _puSectionType,
                  ("deviceId" .=) <$> _puDeviceId])

-- | An EMM\'s DPC ([device policy
-- controller](http:\/\/developer.android.com\/work\/dpc\/build-dpc.html)).
-- Zero-touch enrollment installs a DPC (listed in the \`Configuration\`)
-- on a device to maintain the customer\'s mobile policies. All the DPCs
-- listed by the API support zero-touch enrollment and are available in
-- Google Play.
--
-- /See:/ 'dpc' smart constructor.
data Dpc = Dpc'
    { _dPackageName :: !(Maybe Text)
    , _dName        :: !(Maybe Text)
    , _dDpcName     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dpc' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dPackageName'
--
-- * 'dName'
--
-- * 'dDpcName'
dpc
    :: Dpc
dpc =
    Dpc'
    { _dPackageName = Nothing
    , _dName = Nothing
    , _dDpcName = Nothing
    }

-- | Output only. The DPC\'s Android application ID that looks like a Java
-- package name. Zero-touch enrollment installs the DPC app onto a device
-- using this identifier.
dPackageName :: Lens' Dpc (Maybe Text)
dPackageName
  = lens _dPackageName (\ s a -> s{_dPackageName = a})

-- | Output only. The API resource name in the format
-- \`customers\/[CUSTOMER_ID]\/dpcs\/[DPC_ID]\`. Assigned by the server. To
-- maintain a reference to a DPC across customer accounts, persist and
-- match the last path component (\`DPC_ID\`).
dName :: Lens' Dpc (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | Output only. The title of the DPC app in Google Play. For example,
-- _Google Apps Device Policy_. Useful in an application\'s user interface.
dDpcName :: Lens' Dpc (Maybe Text)
dDpcName = lens _dDpcName (\ s a -> s{_dDpcName = a})

instance FromJSON Dpc where
        parseJSON
          = withObject "Dpc"
              (\ o ->
                 Dpc' <$>
                   (o .:? "packageName") <*> (o .:? "name") <*>
                     (o .:? "dpcName"))

instance ToJSON Dpc where
        toJSON Dpc'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _dPackageName,
                  ("name" .=) <$> _dName,
                  ("dpcName" .=) <$> _dDpcName])

-- | Response message to list customers of the vendor.
--
-- /See:/ 'listVendorCustomersResponse' smart constructor.
data ListVendorCustomersResponse = ListVendorCustomersResponse'
    { _lvcrCustomers     :: !(Maybe [Company])
    , _lvcrNextPageToken :: !(Maybe Text)
    , _lvcrTotalSize     :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListVendorCustomersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvcrCustomers'
--
-- * 'lvcrNextPageToken'
--
-- * 'lvcrTotalSize'
listVendorCustomersResponse
    :: ListVendorCustomersResponse
listVendorCustomersResponse =
    ListVendorCustomersResponse'
    { _lvcrCustomers = Nothing
    , _lvcrNextPageToken = Nothing
    , _lvcrTotalSize = Nothing
    }

-- | List of customers of the vendor.
lvcrCustomers :: Lens' ListVendorCustomersResponse [Company]
lvcrCustomers
  = lens _lvcrCustomers
      (\ s a -> s{_lvcrCustomers = a})
      . _Default
      . _Coerce

-- | A token to retrieve the next page of results. Omitted if no further
-- results are available.
lvcrNextPageToken :: Lens' ListVendorCustomersResponse (Maybe Text)
lvcrNextPageToken
  = lens _lvcrNextPageToken
      (\ s a -> s{_lvcrNextPageToken = a})

-- | The total count of items in the list irrespective of pagination.
lvcrTotalSize :: Lens' ListVendorCustomersResponse (Maybe Int32)
lvcrTotalSize
  = lens _lvcrTotalSize
      (\ s a -> s{_lvcrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListVendorCustomersResponse where
        parseJSON
          = withObject "ListVendorCustomersResponse"
              (\ o ->
                 ListVendorCustomersResponse' <$>
                   (o .:? "customers" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "totalSize"))

instance ToJSON ListVendorCustomersResponse where
        toJSON ListVendorCustomersResponse'{..}
          = object
              (catMaybes
                 [("customers" .=) <$> _lvcrCustomers,
                  ("nextPageToken" .=) <$> _lvcrNextPageToken,
                  ("totalSize" .=) <$> _lvcrTotalSize])

-- | A task for each device in the operation. Corresponds to each device
-- change in the request.
--
-- /See:/ 'operationPerDevice' smart constructor.
data OperationPerDevice = OperationPerDevice'
    { _opdUpdateMetadata :: !(Maybe UpdateMetadataArguments)
    , _opdResult         :: !(Maybe PerDeviceStatusInBatch)
    , _opdClaim          :: !(Maybe PartnerClaim)
    , _opdUnclaim        :: !(Maybe PartnerUnclaim)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationPerDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opdUpdateMetadata'
--
-- * 'opdResult'
--
-- * 'opdClaim'
--
-- * 'opdUnclaim'
operationPerDevice
    :: OperationPerDevice
operationPerDevice =
    OperationPerDevice'
    { _opdUpdateMetadata = Nothing
    , _opdResult = Nothing
    , _opdClaim = Nothing
    , _opdUnclaim = Nothing
    }

-- | A copy of the original metadata-update request received by the server.
opdUpdateMetadata :: Lens' OperationPerDevice (Maybe UpdateMetadataArguments)
opdUpdateMetadata
  = lens _opdUpdateMetadata
      (\ s a -> s{_opdUpdateMetadata = a})

-- | The processing result for each device.
opdResult :: Lens' OperationPerDevice (Maybe PerDeviceStatusInBatch)
opdResult
  = lens _opdResult (\ s a -> s{_opdResult = a})

-- | A copy of the original device-claim request received by the server.
opdClaim :: Lens' OperationPerDevice (Maybe PartnerClaim)
opdClaim = lens _opdClaim (\ s a -> s{_opdClaim = a})

-- | A copy of the original device-unclaim request received by the server.
opdUnclaim :: Lens' OperationPerDevice (Maybe PartnerUnclaim)
opdUnclaim
  = lens _opdUnclaim (\ s a -> s{_opdUnclaim = a})

instance FromJSON OperationPerDevice where
        parseJSON
          = withObject "OperationPerDevice"
              (\ o ->
                 OperationPerDevice' <$>
                   (o .:? "updateMetadata") <*> (o .:? "result") <*>
                     (o .:? "claim")
                     <*> (o .:? "unclaim"))

instance ToJSON OperationPerDevice where
        toJSON OperationPerDevice'{..}
          = object
              (catMaybes
                 [("updateMetadata" .=) <$> _opdUpdateMetadata,
                  ("result" .=) <$> _opdResult,
                  ("claim" .=) <$> _opdClaim,
                  ("unclaim" .=) <$> _opdUnclaim])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
    Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | This field will always be not set if the operation is created by
-- \`claimAsync\`, \`unclaimAsync\`, or \`updateMetadataAsync\`. In this
-- case, error information for each device is set in
-- \`response.perDeviceStatus.result.status\`.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | This field will contain a \`DevicesLongRunningOperationResponse\` object
-- if the operation is created by \`claimAsync\`, \`unclaimAsync\`, or
-- \`updateMetadataAsync\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | This field will contain a \`DevicesLongRunningOperationMetadata\` object
-- if the operation is created by \`claimAsync\`, \`unclaimAsync\`, or
-- \`updateMetadataAsync\`.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Captures the processing status for each device in the operation.
--
-- /See:/ 'perDeviceStatusInBatch' smart constructor.
data PerDeviceStatusInBatch = PerDeviceStatusInBatch'
    { _pdsibStatus          :: !(Maybe PerDeviceStatusInBatchStatus)
    , _pdsibErrorIdentifier :: !(Maybe Text)
    , _pdsibDeviceId        :: !(Maybe (Textual Int64))
    , _pdsibErrorMessage    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PerDeviceStatusInBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdsibStatus'
--
-- * 'pdsibErrorIdentifier'
--
-- * 'pdsibDeviceId'
--
-- * 'pdsibErrorMessage'
perDeviceStatusInBatch
    :: PerDeviceStatusInBatch
perDeviceStatusInBatch =
    PerDeviceStatusInBatch'
    { _pdsibStatus = Nothing
    , _pdsibErrorIdentifier = Nothing
    , _pdsibDeviceId = Nothing
    , _pdsibErrorMessage = Nothing
    }

-- | The result status of the device after processing.
pdsibStatus :: Lens' PerDeviceStatusInBatch (Maybe PerDeviceStatusInBatchStatus)
pdsibStatus
  = lens _pdsibStatus (\ s a -> s{_pdsibStatus = a})

-- | If processing fails, the error type.
pdsibErrorIdentifier :: Lens' PerDeviceStatusInBatch (Maybe Text)
pdsibErrorIdentifier
  = lens _pdsibErrorIdentifier
      (\ s a -> s{_pdsibErrorIdentifier = a})

-- | If processing succeeds, the device ID of the device.
pdsibDeviceId :: Lens' PerDeviceStatusInBatch (Maybe Int64)
pdsibDeviceId
  = lens _pdsibDeviceId
      (\ s a -> s{_pdsibDeviceId = a})
      . mapping _Coerce

-- | If processing fails, a developer message explaining what went wrong.
pdsibErrorMessage :: Lens' PerDeviceStatusInBatch (Maybe Text)
pdsibErrorMessage
  = lens _pdsibErrorMessage
      (\ s a -> s{_pdsibErrorMessage = a})

instance FromJSON PerDeviceStatusInBatch where
        parseJSON
          = withObject "PerDeviceStatusInBatch"
              (\ o ->
                 PerDeviceStatusInBatch' <$>
                   (o .:? "status") <*> (o .:? "errorIdentifier") <*>
                     (o .:? "deviceId")
                     <*> (o .:? "errorMessage"))

instance ToJSON PerDeviceStatusInBatch where
        toJSON PerDeviceStatusInBatch'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pdsibStatus,
                  ("errorIdentifier" .=) <$> _pdsibErrorIdentifier,
                  ("deviceId" .=) <$> _pdsibDeviceId,
                  ("errorMessage" .=) <$> _pdsibErrorMessage])

-- | Request to claim devices asynchronously in batch. Claiming a device adds
-- the device to zero-touch enrollment and shows the device in the
-- customer\'s view of the portal.
--
-- /See:/ 'claimDevicesRequest' smart constructor.
newtype ClaimDevicesRequest = ClaimDevicesRequest'
    { _cdrClaims :: Maybe [PartnerClaim]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClaimDevicesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrClaims'
claimDevicesRequest
    :: ClaimDevicesRequest
claimDevicesRequest =
    ClaimDevicesRequest'
    { _cdrClaims = Nothing
    }

-- | Required. A list of device claims.
cdrClaims :: Lens' ClaimDevicesRequest [PartnerClaim]
cdrClaims
  = lens _cdrClaims (\ s a -> s{_cdrClaims = a}) .
      _Default
      . _Coerce

instance FromJSON ClaimDevicesRequest where
        parseJSON
          = withObject "ClaimDevicesRequest"
              (\ o ->
                 ClaimDevicesRequest' <$> (o .:? "claims" .!= mempty))

instance ToJSON ClaimDevicesRequest where
        toJSON ClaimDevicesRequest'{..}
          = object (catMaybes [("claims" .=) <$> _cdrClaims])

-- | An Android device registered for zero-touch enrollment.
--
-- /See:/ 'device' smart constructor.
data Device = Device'
    { _devDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _devClaims           :: !(Maybe [DeviceClaim])
    , _devName             :: !(Maybe Text)
    , _devDeviceId         :: !(Maybe (Textual Int64))
    , _devDeviceMetadata   :: !(Maybe DeviceMetadata)
    , _devConfiguration    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'devDeviceIdentifier'
--
-- * 'devClaims'
--
-- * 'devName'
--
-- * 'devDeviceId'
--
-- * 'devDeviceMetadata'
--
-- * 'devConfiguration'
device
    :: Device
device =
    Device'
    { _devDeviceIdentifier = Nothing
    , _devClaims = Nothing
    , _devName = Nothing
    , _devDeviceId = Nothing
    , _devDeviceMetadata = Nothing
    , _devConfiguration = Nothing
    }

-- | The hardware IDs that identify a manufactured device. To learn more,
-- read [Identifiers](\/zero-touch\/guides\/identifiers).
devDeviceIdentifier :: Lens' Device (Maybe DeviceIdentifier)
devDeviceIdentifier
  = lens _devDeviceIdentifier
      (\ s a -> s{_devDeviceIdentifier = a})

-- | Output only. The provisioning claims for a device. Devices claimed for
-- zero-touch enrollment have a claim with the type
-- \`SECTION_TYPE_ZERO_TOUCH\`. Call \`partners.devices.unclaim\` or
-- \`partners.devices.unclaimAsync\` to remove the device from zero-touch
-- enrollment.
devClaims :: Lens' Device [DeviceClaim]
devClaims
  = lens _devClaims (\ s a -> s{_devClaims = a}) .
      _Default
      . _Coerce

-- | Output only. The API resource name in the format
-- \`partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]\`. Assigned by the
-- server.
devName :: Lens' Device (Maybe Text)
devName = lens _devName (\ s a -> s{_devName = a})

-- | Output only. The ID of the device. Assigned by the server.
devDeviceId :: Lens' Device (Maybe Int64)
devDeviceId
  = lens _devDeviceId (\ s a -> s{_devDeviceId = a}) .
      mapping _Coerce

-- | The metadata attached to the device. Structured as key-value pairs. To
-- learn more, read [Device metadata](\/zero-touch\/guides\/metadata).
devDeviceMetadata :: Lens' Device (Maybe DeviceMetadata)
devDeviceMetadata
  = lens _devDeviceMetadata
      (\ s a -> s{_devDeviceMetadata = a})

-- | Not available to resellers.
devConfiguration :: Lens' Device (Maybe Text)
devConfiguration
  = lens _devConfiguration
      (\ s a -> s{_devConfiguration = a})

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "deviceIdentifier") <*>
                     (o .:? "claims" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "deviceMetadata")
                     <*> (o .:? "configuration"))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _devDeviceIdentifier,
                  ("claims" .=) <$> _devClaims,
                  ("name" .=) <$> _devName,
                  ("deviceId" .=) <$> _devDeviceId,
                  ("deviceMetadata" .=) <$> _devDeviceMetadata,
                  ("configuration" .=) <$> _devConfiguration])

-- | Request message to claim a device on behalf of a customer.
--
-- /See:/ 'claimDeviceRequest' smart constructor.
data ClaimDeviceRequest = ClaimDeviceRequest'
    { _cdrDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _cdrSectionType      :: !(Maybe ClaimDeviceRequestSectionType)
    , _cdrCustomerId       :: !(Maybe (Textual Int64))
    , _cdrDeviceMetadata   :: !(Maybe DeviceMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClaimDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrDeviceIdentifier'
--
-- * 'cdrSectionType'
--
-- * 'cdrCustomerId'
--
-- * 'cdrDeviceMetadata'
claimDeviceRequest
    :: ClaimDeviceRequest
claimDeviceRequest =
    ClaimDeviceRequest'
    { _cdrDeviceIdentifier = Nothing
    , _cdrSectionType = Nothing
    , _cdrCustomerId = Nothing
    , _cdrDeviceMetadata = Nothing
    }

-- | Required. The device identifier of the device to claim.
cdrDeviceIdentifier :: Lens' ClaimDeviceRequest (Maybe DeviceIdentifier)
cdrDeviceIdentifier
  = lens _cdrDeviceIdentifier
      (\ s a -> s{_cdrDeviceIdentifier = a})

-- | Required. The section type of the device\'s provisioning record.
cdrSectionType :: Lens' ClaimDeviceRequest (Maybe ClaimDeviceRequestSectionType)
cdrSectionType
  = lens _cdrSectionType
      (\ s a -> s{_cdrSectionType = a})

-- | Required. The ID of the customer for whom the device is being claimed.
cdrCustomerId :: Lens' ClaimDeviceRequest (Maybe Int64)
cdrCustomerId
  = lens _cdrCustomerId
      (\ s a -> s{_cdrCustomerId = a})
      . mapping _Coerce

-- | Optional. The metadata to attach to the device.
cdrDeviceMetadata :: Lens' ClaimDeviceRequest (Maybe DeviceMetadata)
cdrDeviceMetadata
  = lens _cdrDeviceMetadata
      (\ s a -> s{_cdrDeviceMetadata = a})

instance FromJSON ClaimDeviceRequest where
        parseJSON
          = withObject "ClaimDeviceRequest"
              (\ o ->
                 ClaimDeviceRequest' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "sectionType")
                     <*> (o .:? "customerId")
                     <*> (o .:? "deviceMetadata"))

instance ToJSON ClaimDeviceRequest where
        toJSON ClaimDeviceRequest'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _cdrDeviceIdentifier,
                  ("sectionType" .=) <$> _cdrSectionType,
                  ("customerId" .=) <$> _cdrCustomerId,
                  ("deviceMetadata" .=) <$> _cdrDeviceMetadata])

-- | A \`DeviceReference\` is an API abstraction that lets you supply a
-- _device_ argument to a method using one of the following identifier
-- types: * A numeric API resource ID. * Real-world hardware IDs, such as
-- IMEI number, belonging to the manufactured device. Methods that operate
-- on devices take a \`DeviceReference\` as a parameter type because it\'s
-- more flexible for the caller. To learn more about device identifiers,
-- read [Identifiers](\/zero-touch\/guides\/identifiers).
--
-- /See:/ 'deviceReference' smart constructor.
data DeviceReference = DeviceReference'
    { _drDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _drDeviceId         :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDeviceIdentifier'
--
-- * 'drDeviceId'
deviceReference
    :: DeviceReference
deviceReference =
    DeviceReference'
    { _drDeviceIdentifier = Nothing
    , _drDeviceId = Nothing
    }

-- | The hardware IDs of the device.
drDeviceIdentifier :: Lens' DeviceReference (Maybe DeviceIdentifier)
drDeviceIdentifier
  = lens _drDeviceIdentifier
      (\ s a -> s{_drDeviceIdentifier = a})

-- | The ID of the device.
drDeviceId :: Lens' DeviceReference (Maybe Int64)
drDeviceId
  = lens _drDeviceId (\ s a -> s{_drDeviceId = a}) .
      mapping _Coerce

instance FromJSON DeviceReference where
        parseJSON
          = withObject "DeviceReference"
              (\ o ->
                 DeviceReference' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "deviceId"))

instance ToJSON DeviceReference where
        toJSON DeviceReference'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _drDeviceIdentifier,
                  ("deviceId" .=) <$> _drDeviceId])

-- | Request message for customer to remove the configuration from device.
--
-- /See:/ 'customerRemoveConfigurationRequest' smart constructor.
newtype CustomerRemoveConfigurationRequest = CustomerRemoveConfigurationRequest'
    { _crcrDevice :: Maybe DeviceReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerRemoveConfigurationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcrDevice'
customerRemoveConfigurationRequest
    :: CustomerRemoveConfigurationRequest
customerRemoveConfigurationRequest =
    CustomerRemoveConfigurationRequest'
    { _crcrDevice = Nothing
    }

-- | Required. The device to remove the configuration from.
crcrDevice :: Lens' CustomerRemoveConfigurationRequest (Maybe DeviceReference)
crcrDevice
  = lens _crcrDevice (\ s a -> s{_crcrDevice = a})

instance FromJSON CustomerRemoveConfigurationRequest
         where
        parseJSON
          = withObject "CustomerRemoveConfigurationRequest"
              (\ o ->
                 CustomerRemoveConfigurationRequest' <$>
                   (o .:? "device"))

instance ToJSON CustomerRemoveConfigurationRequest
         where
        toJSON CustomerRemoveConfigurationRequest'{..}
          = object (catMaybes [("device" .=) <$> _crcrDevice])

-- | Encapsulates hardware and product IDs to identify a manufactured device.
-- To understand requirements on identifier sets, read
-- [Identifiers](\/zero-touch\/guides\/identifiers).
--
-- /See:/ 'deviceIdentifier' smart constructor.
data DeviceIdentifier = DeviceIdentifier'
    { _diManufacturer :: !(Maybe Text)
    , _diModel        :: !(Maybe Text)
    , _diMeid         :: !(Maybe Text)
    , _diImei         :: !(Maybe Text)
    , _diSerialNumber :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diManufacturer'
--
-- * 'diModel'
--
-- * 'diMeid'
--
-- * 'diImei'
--
-- * 'diSerialNumber'
deviceIdentifier
    :: DeviceIdentifier
deviceIdentifier =
    DeviceIdentifier'
    { _diManufacturer = Nothing
    , _diModel = Nothing
    , _diMeid = Nothing
    , _diImei = Nothing
    , _diSerialNumber = Nothing
    }

-- | The device manufacturer’s name. Matches the device\'s built-in value
-- returned from \`android.os.Build.MANUFACTURER\`. Allowed values are
-- listed in
-- [manufacturers](\/zero-touch\/resources\/manufacturer-names#manufacturers-names).
diManufacturer :: Lens' DeviceIdentifier (Maybe Text)
diManufacturer
  = lens _diManufacturer
      (\ s a -> s{_diManufacturer = a})

-- | The device model\'s name. Matches the device\'s built-in value returned
-- from \`android.os.Build.MODEL\`. Allowed values are listed in
-- [models](\/zero-touch\/resources\/manufacturer-names#model-names).
diModel :: Lens' DeviceIdentifier (Maybe Text)
diModel = lens _diModel (\ s a -> s{_diModel = a})

-- | The device’s MEID number.
diMeid :: Lens' DeviceIdentifier (Maybe Text)
diMeid = lens _diMeid (\ s a -> s{_diMeid = a})

-- | The device’s IMEI number. Validated on input.
diImei :: Lens' DeviceIdentifier (Maybe Text)
diImei = lens _diImei (\ s a -> s{_diImei = a})

-- | The manufacturer\'s serial number for the device. This value might not
-- be unique across different device models.
diSerialNumber :: Lens' DeviceIdentifier (Maybe Text)
diSerialNumber
  = lens _diSerialNumber
      (\ s a -> s{_diSerialNumber = a})

instance FromJSON DeviceIdentifier where
        parseJSON
          = withObject "DeviceIdentifier"
              (\ o ->
                 DeviceIdentifier' <$>
                   (o .:? "manufacturer") <*> (o .:? "model") <*>
                     (o .:? "meid")
                     <*> (o .:? "imei")
                     <*> (o .:? "serialNumber"))

instance ToJSON DeviceIdentifier where
        toJSON DeviceIdentifier'{..}
          = object
              (catMaybes
                 [("manufacturer" .=) <$> _diManufacturer,
                  ("model" .=) <$> _diModel, ("meid" .=) <$> _diMeid,
                  ("imei" .=) <$> _diImei,
                  ("serialNumber" .=) <$> _diSerialNumber])

-- | Request to unclaim devices asynchronously in batch.
--
-- /See:/ 'unclaimDevicesRequest' smart constructor.
newtype UnclaimDevicesRequest = UnclaimDevicesRequest'
    { _udrUnclaims :: Maybe [PartnerUnclaim]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnclaimDevicesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrUnclaims'
unclaimDevicesRequest
    :: UnclaimDevicesRequest
unclaimDevicesRequest =
    UnclaimDevicesRequest'
    { _udrUnclaims = Nothing
    }

-- | Required. The list of devices to unclaim.
udrUnclaims :: Lens' UnclaimDevicesRequest [PartnerUnclaim]
udrUnclaims
  = lens _udrUnclaims (\ s a -> s{_udrUnclaims = a}) .
      _Default
      . _Coerce

instance FromJSON UnclaimDevicesRequest where
        parseJSON
          = withObject "UnclaimDevicesRequest"
              (\ o ->
                 UnclaimDevicesRequest' <$>
                   (o .:? "unclaims" .!= mempty))

instance ToJSON UnclaimDevicesRequest where
        toJSON UnclaimDevicesRequest'{..}
          = object
              (catMaybes [("unclaims" .=) <$> _udrUnclaims])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Response message to list vendors of the partner.
--
-- /See:/ 'listVendorsResponse' smart constructor.
data ListVendorsResponse = ListVendorsResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrTotalSize     :: !(Maybe (Textual Int32))
    , _lvrVendors       :: !(Maybe [Company])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListVendorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrNextPageToken'
--
-- * 'lvrTotalSize'
--
-- * 'lvrVendors'
listVendorsResponse
    :: ListVendorsResponse
listVendorsResponse =
    ListVendorsResponse'
    { _lvrNextPageToken = Nothing
    , _lvrTotalSize = Nothing
    , _lvrVendors = Nothing
    }

-- | A token to retrieve the next page of results. Omitted if no further
-- results are available.
lvrNextPageToken :: Lens' ListVendorsResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | The total count of items in the list irrespective of pagination.
lvrTotalSize :: Lens' ListVendorsResponse (Maybe Int32)
lvrTotalSize
  = lens _lvrTotalSize (\ s a -> s{_lvrTotalSize = a})
      . mapping _Coerce

-- | List of vendors of the reseller partner. Fields \`name\`, \`companyId\`
-- and \`companyName\` are populated to the Company object.
lvrVendors :: Lens' ListVendorsResponse [Company]
lvrVendors
  = lens _lvrVendors (\ s a -> s{_lvrVendors = a}) .
      _Default
      . _Coerce

instance FromJSON ListVendorsResponse where
        parseJSON
          = withObject "ListVendorsResponse"
              (\ o ->
                 ListVendorsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "vendors" .!= mempty))

instance ToJSON ListVendorsResponse where
        toJSON ListVendorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvrNextPageToken,
                  ("totalSize" .=) <$> _lvrTotalSize,
                  ("vendors" .=) <$> _lvrVendors])

-- | Response message of customer\'s listing configuration.
--
-- /See:/ 'customerListConfigurationsResponse' smart constructor.
newtype CustomerListConfigurationsResponse = CustomerListConfigurationsResponse'
    { _clcrConfigurations :: Maybe [Configuration]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerListConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clcrConfigurations'
customerListConfigurationsResponse
    :: CustomerListConfigurationsResponse
customerListConfigurationsResponse =
    CustomerListConfigurationsResponse'
    { _clcrConfigurations = Nothing
    }

-- | The configurations.
clcrConfigurations :: Lens' CustomerListConfigurationsResponse [Configuration]
clcrConfigurations
  = lens _clcrConfigurations
      (\ s a -> s{_clcrConfigurations = a})
      . _Default
      . _Coerce

instance FromJSON CustomerListConfigurationsResponse
         where
        parseJSON
          = withObject "CustomerListConfigurationsResponse"
              (\ o ->
                 CustomerListConfigurationsResponse' <$>
                   (o .:? "configurations" .!= mempty))

instance ToJSON CustomerListConfigurationsResponse
         where
        toJSON CustomerListConfigurationsResponse'{..}
          = object
              (catMaybes
                 [("configurations" .=) <$> _clcrConfigurations])

-- | Request message for customer to assign a configuration to device.
--
-- /See:/ 'customerApplyConfigurationRequest' smart constructor.
data CustomerApplyConfigurationRequest = CustomerApplyConfigurationRequest'
    { _cacrDevice        :: !(Maybe DeviceReference)
    , _cacrConfiguration :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerApplyConfigurationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacrDevice'
--
-- * 'cacrConfiguration'
customerApplyConfigurationRequest
    :: CustomerApplyConfigurationRequest
customerApplyConfigurationRequest =
    CustomerApplyConfigurationRequest'
    { _cacrDevice = Nothing
    , _cacrConfiguration = Nothing
    }

-- | Required. The device the configuration is applied to.
cacrDevice :: Lens' CustomerApplyConfigurationRequest (Maybe DeviceReference)
cacrDevice
  = lens _cacrDevice (\ s a -> s{_cacrDevice = a})

-- | Required. The configuration applied to the device in the format
-- \`customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]\`.
cacrConfiguration :: Lens' CustomerApplyConfigurationRequest (Maybe Text)
cacrConfiguration
  = lens _cacrConfiguration
      (\ s a -> s{_cacrConfiguration = a})

instance FromJSON CustomerApplyConfigurationRequest
         where
        parseJSON
          = withObject "CustomerApplyConfigurationRequest"
              (\ o ->
                 CustomerApplyConfigurationRequest' <$>
                   (o .:? "device") <*> (o .:? "configuration"))

instance ToJSON CustomerApplyConfigurationRequest
         where
        toJSON CustomerApplyConfigurationRequest'{..}
          = object
              (catMaybes
                 [("device" .=) <$> _cacrDevice,
                  ("configuration" .=) <$> _cacrConfiguration])

-- | A reseller, vendor, or customer in the zero-touch reseller and customer
-- APIs.
--
-- /See:/ 'company' smart constructor.
data Company = Company'
    { _cCompanyId   :: !(Maybe (Textual Int64))
    , _cCompanyName :: !(Maybe Text)
    , _cOwnerEmails :: !(Maybe [Text])
    , _cTermsStatus :: !(Maybe CompanyTermsStatus)
    , _cName        :: !(Maybe Text)
    , _cAdminEmails :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCompanyId'
--
-- * 'cCompanyName'
--
-- * 'cOwnerEmails'
--
-- * 'cTermsStatus'
--
-- * 'cName'
--
-- * 'cAdminEmails'
company
    :: Company
company =
    Company'
    { _cCompanyId = Nothing
    , _cCompanyName = Nothing
    , _cOwnerEmails = Nothing
    , _cTermsStatus = Nothing
    , _cName = Nothing
    , _cAdminEmails = Nothing
    }

-- | Output only. The ID of the company. Assigned by the server.
cCompanyId :: Lens' Company (Maybe Int64)
cCompanyId
  = lens _cCompanyId (\ s a -> s{_cCompanyId = a}) .
      mapping _Coerce

-- | Required. The name of the company. For example _XYZ Corp_. Displayed to
-- the company\'s employees in the zero-touch enrollment portal.
cCompanyName :: Lens' Company (Maybe Text)
cCompanyName
  = lens _cCompanyName (\ s a -> s{_cCompanyName = a})

-- | Input only. Email address of customer\'s users in the owner role. At
-- least one \`owner_email\` is required. Each email address must be
-- associated with a Google Account. Owners share the same access as admins
-- but can also add, delete, and edit your organization\'s portal users.
cOwnerEmails :: Lens' Company [Text]
cOwnerEmails
  = lens _cOwnerEmails (\ s a -> s{_cOwnerEmails = a})
      . _Default
      . _Coerce

-- | Output only. Whether any user from the company has accepted the latest
-- Terms of Service (ToS). See TermsStatus.
cTermsStatus :: Lens' Company (Maybe CompanyTermsStatus)
cTermsStatus
  = lens _cTermsStatus (\ s a -> s{_cTermsStatus = a})

-- | Output only. The API resource name of the company. The resource name is
-- one of the following formats: *
-- \`partners\/[PARTNER_ID]\/customers\/[CUSTOMER_ID]\` *
-- \`partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]\` *
-- \`partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]\/customers\/[CUSTOMER_ID]\`
-- Assigned by the server.
cName :: Lens' Company (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Input only. Optional. Email address of customer\'s users in the admin
-- role. Each email address must be associated with a Google Account.
cAdminEmails :: Lens' Company [Text]
cAdminEmails
  = lens _cAdminEmails (\ s a -> s{_cAdminEmails = a})
      . _Default
      . _Coerce

instance FromJSON Company where
        parseJSON
          = withObject "Company"
              (\ o ->
                 Company' <$>
                   (o .:? "companyId") <*> (o .:? "companyName") <*>
                     (o .:? "ownerEmails" .!= mempty)
                     <*> (o .:? "termsStatus")
                     <*> (o .:? "name")
                     <*> (o .:? "adminEmails" .!= mempty))

instance ToJSON Company where
        toJSON Company'{..}
          = object
              (catMaybes
                 [("companyId" .=) <$> _cCompanyId,
                  ("companyName" .=) <$> _cCompanyName,
                  ("ownerEmails" .=) <$> _cOwnerEmails,
                  ("termsStatus" .=) <$> _cTermsStatus,
                  ("name" .=) <$> _cName,
                  ("adminEmails" .=) <$> _cAdminEmails])

-- | Response message for listing my customers.
--
-- /See:/ 'customerListCustomersResponse' smart constructor.
data CustomerListCustomersResponse = CustomerListCustomersResponse'
    { _clcrCustomers     :: !(Maybe [Company])
    , _clcrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerListCustomersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clcrCustomers'
--
-- * 'clcrNextPageToken'
customerListCustomersResponse
    :: CustomerListCustomersResponse
customerListCustomersResponse =
    CustomerListCustomersResponse'
    { _clcrCustomers = Nothing
    , _clcrNextPageToken = Nothing
    }

-- | The customer accounts the calling user is a member of.
clcrCustomers :: Lens' CustomerListCustomersResponse [Company]
clcrCustomers
  = lens _clcrCustomers
      (\ s a -> s{_clcrCustomers = a})
      . _Default
      . _Coerce

-- | A token used to access the next page of results. Omitted if no further
-- results are available.
clcrNextPageToken :: Lens' CustomerListCustomersResponse (Maybe Text)
clcrNextPageToken
  = lens _clcrNextPageToken
      (\ s a -> s{_clcrNextPageToken = a})

instance FromJSON CustomerListCustomersResponse where
        parseJSON
          = withObject "CustomerListCustomersResponse"
              (\ o ->
                 CustomerListCustomersResponse' <$>
                   (o .:? "customers" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON CustomerListCustomersResponse where
        toJSON CustomerListCustomersResponse'{..}
          = object
              (catMaybes
                 [("customers" .=) <$> _clcrCustomers,
                  ("nextPageToken" .=) <$> _clcrNextPageToken])

-- | A record of a device claimed by a reseller for a customer. Devices
-- claimed for zero-touch enrollment have a claim with the type
-- \`SECTION_TYPE_ZERO_TOUCH\`. To learn more, read [Claim devices for
-- customers](\/zero-touch\/guides\/how-it-works#claim).
--
-- /See:/ 'deviceClaim' smart constructor.
data DeviceClaim = DeviceClaim'
    { _dcSectionType    :: !(Maybe DeviceClaimSectionType)
    , _dcOwnerCompanyId :: !(Maybe (Textual Int64))
    , _dcResellerId     :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceClaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcSectionType'
--
-- * 'dcOwnerCompanyId'
--
-- * 'dcResellerId'
deviceClaim
    :: DeviceClaim
deviceClaim =
    DeviceClaim'
    { _dcSectionType = Nothing
    , _dcOwnerCompanyId = Nothing
    , _dcResellerId = Nothing
    }

-- | Output only. The type of claim made on the device.
dcSectionType :: Lens' DeviceClaim (Maybe DeviceClaimSectionType)
dcSectionType
  = lens _dcSectionType
      (\ s a -> s{_dcSectionType = a})

-- | The ID of the Customer that purchased the device.
dcOwnerCompanyId :: Lens' DeviceClaim (Maybe Int64)
dcOwnerCompanyId
  = lens _dcOwnerCompanyId
      (\ s a -> s{_dcOwnerCompanyId = a})
      . mapping _Coerce

-- | The ID of the reseller that claimed the device.
dcResellerId :: Lens' DeviceClaim (Maybe Int64)
dcResellerId
  = lens _dcResellerId (\ s a -> s{_dcResellerId = a})
      . mapping _Coerce

instance FromJSON DeviceClaim where
        parseJSON
          = withObject "DeviceClaim"
              (\ o ->
                 DeviceClaim' <$>
                   (o .:? "sectionType") <*> (o .:? "ownerCompanyId")
                     <*> (o .:? "resellerId"))

instance ToJSON DeviceClaim where
        toJSON DeviceClaim'{..}
          = object
              (catMaybes
                 [("sectionType" .=) <$> _dcSectionType,
                  ("ownerCompanyId" .=) <$> _dcOwnerCompanyId,
                  ("resellerId" .=) <$> _dcResellerId])

-- | Request to set metadata for a device.
--
-- /See:/ 'updateDeviceMetadataRequest' smart constructor.
newtype UpdateDeviceMetadataRequest = UpdateDeviceMetadataRequest'
    { _udmrDeviceMetadata :: Maybe DeviceMetadata
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateDeviceMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmrDeviceMetadata'
updateDeviceMetadataRequest
    :: UpdateDeviceMetadataRequest
updateDeviceMetadataRequest =
    UpdateDeviceMetadataRequest'
    { _udmrDeviceMetadata = Nothing
    }

-- | Required. The metdata to attach to the device.
udmrDeviceMetadata :: Lens' UpdateDeviceMetadataRequest (Maybe DeviceMetadata)
udmrDeviceMetadata
  = lens _udmrDeviceMetadata
      (\ s a -> s{_udmrDeviceMetadata = a})

instance FromJSON UpdateDeviceMetadataRequest where
        parseJSON
          = withObject "UpdateDeviceMetadataRequest"
              (\ o ->
                 UpdateDeviceMetadataRequest' <$>
                   (o .:? "deviceMetadata"))

instance ToJSON UpdateDeviceMetadataRequest where
        toJSON UpdateDeviceMetadataRequest'{..}
          = object
              (catMaybes
                 [("deviceMetadata" .=) <$> _udmrDeviceMetadata])

-- | Metadata entries that can be attached to a \`Device\`. To learn more,
-- read [Device metadata](\/zero-touch\/guides\/metadata).
--
-- /See:/ 'deviceMetadata' smart constructor.
newtype DeviceMetadata = DeviceMetadata'
    { _dmEntries :: Maybe DeviceMetadataEntries
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmEntries'
deviceMetadata
    :: DeviceMetadata
deviceMetadata =
    DeviceMetadata'
    { _dmEntries = Nothing
    }

-- | Metadata entries recorded as key-value pairs.
dmEntries :: Lens' DeviceMetadata (Maybe DeviceMetadataEntries)
dmEntries
  = lens _dmEntries (\ s a -> s{_dmEntries = a})

instance FromJSON DeviceMetadata where
        parseJSON
          = withObject "DeviceMetadata"
              (\ o -> DeviceMetadata' <$> (o .:? "entries"))

instance ToJSON DeviceMetadata where
        toJSON DeviceMetadata'{..}
          = object (catMaybes [("entries" .=) <$> _dmEntries])

-- | Request to find devices by customers.
--
-- /See:/ 'findDevicesByOwnerRequest' smart constructor.
data FindDevicesByOwnerRequest = FindDevicesByOwnerRequest'
    { _fdborSectionType :: !(Maybe FindDevicesByOwnerRequestSectionType)
    , _fdborCustomerId  :: !(Maybe [Textual Int64])
    , _fdborLimit       :: !(Maybe (Textual Int64))
    , _fdborPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindDevicesByOwnerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdborSectionType'
--
-- * 'fdborCustomerId'
--
-- * 'fdborLimit'
--
-- * 'fdborPageToken'
findDevicesByOwnerRequest
    :: FindDevicesByOwnerRequest
findDevicesByOwnerRequest =
    FindDevicesByOwnerRequest'
    { _fdborSectionType = Nothing
    , _fdborCustomerId = Nothing
    , _fdborLimit = Nothing
    , _fdborPageToken = Nothing
    }

-- | Required. The section type of the device\'s provisioning record.
fdborSectionType :: Lens' FindDevicesByOwnerRequest (Maybe FindDevicesByOwnerRequestSectionType)
fdborSectionType
  = lens _fdborSectionType
      (\ s a -> s{_fdborSectionType = a})

-- | Required. The list of customer IDs to search for.
fdborCustomerId :: Lens' FindDevicesByOwnerRequest [Int64]
fdborCustomerId
  = lens _fdborCustomerId
      (\ s a -> s{_fdborCustomerId = a})
      . _Default
      . _Coerce

-- | Required. The maximum number of devices to show in a page of results.
-- Must be between 1 and 100 inclusive.
fdborLimit :: Lens' FindDevicesByOwnerRequest (Maybe Int64)
fdborLimit
  = lens _fdborLimit (\ s a -> s{_fdborLimit = a}) .
      mapping _Coerce

-- | A token specifying which result page to return.
fdborPageToken :: Lens' FindDevicesByOwnerRequest (Maybe Text)
fdborPageToken
  = lens _fdborPageToken
      (\ s a -> s{_fdborPageToken = a})

instance FromJSON FindDevicesByOwnerRequest where
        parseJSON
          = withObject "FindDevicesByOwnerRequest"
              (\ o ->
                 FindDevicesByOwnerRequest' <$>
                   (o .:? "sectionType") <*>
                     (o .:? "customerId" .!= mempty)
                     <*> (o .:? "limit")
                     <*> (o .:? "pageToken"))

instance ToJSON FindDevicesByOwnerRequest where
        toJSON FindDevicesByOwnerRequest'{..}
          = object
              (catMaybes
                 [("sectionType" .=) <$> _fdborSectionType,
                  ("customerId" .=) <$> _fdborCustomerId,
                  ("limit" .=) <$> _fdborLimit,
                  ("pageToken" .=) <$> _fdborPageToken])

-- | Response containing found devices.
--
-- /See:/ 'findDevicesByDeviceIdentifierResponse' smart constructor.
data FindDevicesByDeviceIdentifierResponse = FindDevicesByDeviceIdentifierResponse'
    { _fdbdirNextPageToken :: !(Maybe Text)
    , _fdbdirTotalSize     :: !(Maybe (Textual Int32))
    , _fdbdirDevices       :: !(Maybe [Device])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindDevicesByDeviceIdentifierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdbdirNextPageToken'
--
-- * 'fdbdirTotalSize'
--
-- * 'fdbdirDevices'
findDevicesByDeviceIdentifierResponse
    :: FindDevicesByDeviceIdentifierResponse
findDevicesByDeviceIdentifierResponse =
    FindDevicesByDeviceIdentifierResponse'
    { _fdbdirNextPageToken = Nothing
    , _fdbdirTotalSize = Nothing
    , _fdbdirDevices = Nothing
    }

-- | A token used to access the next page of results. Omitted if no further
-- results are available.
fdbdirNextPageToken :: Lens' FindDevicesByDeviceIdentifierResponse (Maybe Text)
fdbdirNextPageToken
  = lens _fdbdirNextPageToken
      (\ s a -> s{_fdbdirNextPageToken = a})

-- | The total count of items in the list irrespective of pagination.
fdbdirTotalSize :: Lens' FindDevicesByDeviceIdentifierResponse (Maybe Int32)
fdbdirTotalSize
  = lens _fdbdirTotalSize
      (\ s a -> s{_fdbdirTotalSize = a})
      . mapping _Coerce

-- | Found devices.
fdbdirDevices :: Lens' FindDevicesByDeviceIdentifierResponse [Device]
fdbdirDevices
  = lens _fdbdirDevices
      (\ s a -> s{_fdbdirDevices = a})
      . _Default
      . _Coerce

instance FromJSON
         FindDevicesByDeviceIdentifierResponse where
        parseJSON
          = withObject "FindDevicesByDeviceIdentifierResponse"
              (\ o ->
                 FindDevicesByDeviceIdentifierResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "devices" .!= mempty))

instance ToJSON FindDevicesByDeviceIdentifierResponse
         where
        toJSON FindDevicesByDeviceIdentifierResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _fdbdirNextPageToken,
                  ("totalSize" .=) <$> _fdbdirTotalSize,
                  ("devices" .=) <$> _fdbdirDevices])

-- | Request message to unclaim a device.
--
-- /See:/ 'unclaimDeviceRequest' smart constructor.
data UnclaimDeviceRequest = UnclaimDeviceRequest'
    { _udrDeviceIdentifier :: !(Maybe DeviceIdentifier)
    , _udrSectionType      :: !(Maybe UnclaimDeviceRequestSectionType)
    , _udrDeviceId         :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnclaimDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrDeviceIdentifier'
--
-- * 'udrSectionType'
--
-- * 'udrDeviceId'
unclaimDeviceRequest
    :: UnclaimDeviceRequest
unclaimDeviceRequest =
    UnclaimDeviceRequest'
    { _udrDeviceIdentifier = Nothing
    , _udrSectionType = Nothing
    , _udrDeviceId = Nothing
    }

-- | The device identifier you used when you claimed this device.
udrDeviceIdentifier :: Lens' UnclaimDeviceRequest (Maybe DeviceIdentifier)
udrDeviceIdentifier
  = lens _udrDeviceIdentifier
      (\ s a -> s{_udrDeviceIdentifier = a})

-- | Required. The section type of the device\'s provisioning record.
udrSectionType :: Lens' UnclaimDeviceRequest (Maybe UnclaimDeviceRequestSectionType)
udrSectionType
  = lens _udrSectionType
      (\ s a -> s{_udrSectionType = a})

-- | The device ID returned by \`ClaimDevice\`.
udrDeviceId :: Lens' UnclaimDeviceRequest (Maybe Int64)
udrDeviceId
  = lens _udrDeviceId (\ s a -> s{_udrDeviceId = a}) .
      mapping _Coerce

instance FromJSON UnclaimDeviceRequest where
        parseJSON
          = withObject "UnclaimDeviceRequest"
              (\ o ->
                 UnclaimDeviceRequest' <$>
                   (o .:? "deviceIdentifier") <*> (o .:? "sectionType")
                     <*> (o .:? "deviceId"))

instance ToJSON UnclaimDeviceRequest where
        toJSON UnclaimDeviceRequest'{..}
          = object
              (catMaybes
                 [("deviceIdentifier" .=) <$> _udrDeviceIdentifier,
                  ("sectionType" .=) <$> _udrSectionType,
                  ("deviceId" .=) <$> _udrDeviceId])

-- | Tracks the status of a long-running operation to claim, unclaim, or
-- attach metadata to devices. To learn more, read [Long‑running batch
-- operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ 'devicesLongRunningOperationResponse' smart constructor.
data DevicesLongRunningOperationResponse = DevicesLongRunningOperationResponse'
    { _dlrorSuccessCount    :: !(Maybe (Textual Int32))
    , _dlrorPerDeviceStatus :: !(Maybe [OperationPerDevice])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesLongRunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrorSuccessCount'
--
-- * 'dlrorPerDeviceStatus'
devicesLongRunningOperationResponse
    :: DevicesLongRunningOperationResponse
devicesLongRunningOperationResponse =
    DevicesLongRunningOperationResponse'
    { _dlrorSuccessCount = Nothing
    , _dlrorPerDeviceStatus = Nothing
    }

-- | A summary of how many items in the operation the server processed
-- successfully. Updated as the operation progresses.
dlrorSuccessCount :: Lens' DevicesLongRunningOperationResponse (Maybe Int32)
dlrorSuccessCount
  = lens _dlrorSuccessCount
      (\ s a -> s{_dlrorSuccessCount = a})
      . mapping _Coerce

-- | The processing status for each device in the operation. One
-- \`PerDeviceStatus\` per device. The list order matches the items in the
-- original request.
dlrorPerDeviceStatus :: Lens' DevicesLongRunningOperationResponse [OperationPerDevice]
dlrorPerDeviceStatus
  = lens _dlrorPerDeviceStatus
      (\ s a -> s{_dlrorPerDeviceStatus = a})
      . _Default
      . _Coerce

instance FromJSON DevicesLongRunningOperationResponse
         where
        parseJSON
          = withObject "DevicesLongRunningOperationResponse"
              (\ o ->
                 DevicesLongRunningOperationResponse' <$>
                   (o .:? "successCount") <*>
                     (o .:? "perDeviceStatus" .!= mempty))

instance ToJSON DevicesLongRunningOperationResponse
         where
        toJSON DevicesLongRunningOperationResponse'{..}
          = object
              (catMaybes
                 [("successCount" .=) <$> _dlrorSuccessCount,
                  ("perDeviceStatus" .=) <$> _dlrorPerDeviceStatus])

-- | A configuration collects the provisioning options for Android devices.
-- Each configuration combines the following: * The EMM device policy
-- controller (DPC) installed on the devices. * EMM policies enforced on
-- the devices. * Metadata displayed on the device to help users during
-- setup. Customers can add as many configurations as they need. However,
-- zero-touch enrollment works best when a customer sets a default
-- configuration that\'s applied to any new devices the organization
-- purchases.
--
-- /See:/ 'configuration' smart constructor.
data Configuration = Configuration'
    { _conContactPhone      :: !(Maybe Text)
    , _conContactEmail      :: !(Maybe Text)
    , _conConfigurationName :: !(Maybe Text)
    , _conConfigurationId   :: !(Maybe (Textual Int64))
    , _conCustomMessage     :: !(Maybe Text)
    , _conCompanyName       :: !(Maybe Text)
    , _conDpcExtras         :: !(Maybe Text)
    , _conName              :: !(Maybe Text)
    , _conDpcResourcePath   :: !(Maybe Text)
    , _conIsDefault         :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Configuration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conContactPhone'
--
-- * 'conContactEmail'
--
-- * 'conConfigurationName'
--
-- * 'conConfigurationId'
--
-- * 'conCustomMessage'
--
-- * 'conCompanyName'
--
-- * 'conDpcExtras'
--
-- * 'conName'
--
-- * 'conDpcResourcePath'
--
-- * 'conIsDefault'
configuration
    :: Configuration
configuration =
    Configuration'
    { _conContactPhone = Nothing
    , _conContactEmail = Nothing
    , _conConfigurationName = Nothing
    , _conConfigurationId = Nothing
    , _conCustomMessage = Nothing
    , _conCompanyName = Nothing
    , _conDpcExtras = Nothing
    , _conName = Nothing
    , _conDpcResourcePath = Nothing
    , _conIsDefault = Nothing
    }

-- | Required. The telephone number that device users can call, using another
-- device, to get help. Zero-touch enrollment shows this number to device
-- users before device provisioning. Accepts numerals, spaces, the plus
-- sign, hyphens, and parentheses.
conContactPhone :: Lens' Configuration (Maybe Text)
conContactPhone
  = lens _conContactPhone
      (\ s a -> s{_conContactPhone = a})

-- | Required. The email address that device users can contact to get help.
-- Zero-touch enrollment shows this email address to device users before
-- device provisioning. The value is validated on input.
conContactEmail :: Lens' Configuration (Maybe Text)
conContactEmail
  = lens _conContactEmail
      (\ s a -> s{_conContactEmail = a})

-- | Required. A short name that describes the configuration\'s purpose. For
-- example, _Sales team_ or _Temporary employees_. The zero-touch
-- enrollment portal displays this name to IT admins.
conConfigurationName :: Lens' Configuration (Maybe Text)
conConfigurationName
  = lens _conConfigurationName
      (\ s a -> s{_conConfigurationName = a})

-- | Output only. The ID of the configuration. Assigned by the server.
conConfigurationId :: Lens' Configuration (Maybe Int64)
conConfigurationId
  = lens _conConfigurationId
      (\ s a -> s{_conConfigurationId = a})
      . mapping _Coerce

-- | A message, containing one or two sentences, to help device users get
-- help or give them more details about what’s happening to their device.
-- Zero-touch enrollment shows this message before the device is
-- provisioned.
conCustomMessage :: Lens' Configuration (Maybe Text)
conCustomMessage
  = lens _conCustomMessage
      (\ s a -> s{_conCustomMessage = a})

-- | Required. The name of the organization. Zero-touch enrollment shows this
-- organization name to device users during device provisioning.
conCompanyName :: Lens' Configuration (Maybe Text)
conCompanyName
  = lens _conCompanyName
      (\ s a -> s{_conCompanyName = a})

-- | The JSON-formatted EMM provisioning extras that are passed to the DPC.
conDpcExtras :: Lens' Configuration (Maybe Text)
conDpcExtras
  = lens _conDpcExtras (\ s a -> s{_conDpcExtras = a})

-- | Output only. The API resource name in the format
-- \`customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]\`.
-- Assigned by the server.
conName :: Lens' Configuration (Maybe Text)
conName = lens _conName (\ s a -> s{_conName = a})

-- | Required. The resource name of the selected DPC (device policy
-- controller) in the format \`customers\/[CUSTOMER_ID]\/dpcs\/*\`. To list
-- the supported DPCs, call \`customers.dpcs.list\`.
conDpcResourcePath :: Lens' Configuration (Maybe Text)
conDpcResourcePath
  = lens _conDpcResourcePath
      (\ s a -> s{_conDpcResourcePath = a})

-- | Required. Whether this is the default configuration that zero-touch
-- enrollment applies to any new devices the organization purchases in the
-- future. Only one customer configuration can be the default. Setting this
-- value to \`true\`, changes the previous default configuration\'s
-- \`isDefault\` value to \`false\`.
conIsDefault :: Lens' Configuration (Maybe Bool)
conIsDefault
  = lens _conIsDefault (\ s a -> s{_conIsDefault = a})

instance FromJSON Configuration where
        parseJSON
          = withObject "Configuration"
              (\ o ->
                 Configuration' <$>
                   (o .:? "contactPhone") <*> (o .:? "contactEmail") <*>
                     (o .:? "configurationName")
                     <*> (o .:? "configurationId")
                     <*> (o .:? "customMessage")
                     <*> (o .:? "companyName")
                     <*> (o .:? "dpcExtras")
                     <*> (o .:? "name")
                     <*> (o .:? "dpcResourcePath")
                     <*> (o .:? "isDefault"))

instance ToJSON Configuration where
        toJSON Configuration'{..}
          = object
              (catMaybes
                 [("contactPhone" .=) <$> _conContactPhone,
                  ("contactEmail" .=) <$> _conContactEmail,
                  ("configurationName" .=) <$> _conConfigurationName,
                  ("configurationId" .=) <$> _conConfigurationId,
                  ("customMessage" .=) <$> _conCustomMessage,
                  ("companyName" .=) <$> _conCompanyName,
                  ("dpcExtras" .=) <$> _conDpcExtras,
                  ("name" .=) <$> _conName,
                  ("dpcResourcePath" .=) <$> _conDpcResourcePath,
                  ("isDefault" .=) <$> _conIsDefault])

-- | This field will contain a \`DevicesLongRunningOperationMetadata\` object
-- if the operation is created by \`claimAsync\`, \`unclaimAsync\`, or
-- \`updateMetadataAsync\`.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata = OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
    OperationMetadata'
    { _omAddtional = _Coerce # pOmAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Response message of all customers related to this partner.
--
-- /See:/ 'listCustomersResponse' smart constructor.
data ListCustomersResponse = ListCustomersResponse'
    { _lcrCustomers     :: !(Maybe [Company])
    , _lcrNextPageToken :: !(Maybe Text)
    , _lcrTotalSize     :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCustomersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrCustomers'
--
-- * 'lcrNextPageToken'
--
-- * 'lcrTotalSize'
listCustomersResponse
    :: ListCustomersResponse
listCustomersResponse =
    ListCustomersResponse'
    { _lcrCustomers = Nothing
    , _lcrNextPageToken = Nothing
    , _lcrTotalSize = Nothing
    }

-- | List of customers related to this reseller partner.
lcrCustomers :: Lens' ListCustomersResponse [Company]
lcrCustomers
  = lens _lcrCustomers (\ s a -> s{_lcrCustomers = a})
      . _Default
      . _Coerce

-- | A token to retrieve the next page of results. Omitted if no further
-- results are available.
lcrNextPageToken :: Lens' ListCustomersResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The total count of items in the list irrespective of pagination.
lcrTotalSize :: Lens' ListCustomersResponse (Maybe Int32)
lcrTotalSize
  = lens _lcrTotalSize (\ s a -> s{_lcrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListCustomersResponse where
        parseJSON
          = withObject "ListCustomersResponse"
              (\ o ->
                 ListCustomersResponse' <$>
                   (o .:? "customers" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "totalSize"))

instance ToJSON ListCustomersResponse where
        toJSON ListCustomersResponse'{..}
          = object
              (catMaybes
                 [("customers" .=) <$> _lcrCustomers,
                  ("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("totalSize" .=) <$> _lcrTotalSize])

-- | Tracks the status of a long-running operation to asynchronously update a
-- batch of reseller metadata attached to devices. To learn more, read
-- [Long‑running batch
-- operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ 'devicesLongRunningOperationMetadata' smart constructor.
data DevicesLongRunningOperationMetadata = DevicesLongRunningOperationMetadata'
    { _dlromProgress         :: !(Maybe (Textual Int32))
    , _dlromDevicesCount     :: !(Maybe (Textual Int32))
    , _dlromProcessingStatus :: !(Maybe DevicesLongRunningOperationMetadataProcessingStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesLongRunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlromProgress'
--
-- * 'dlromDevicesCount'
--
-- * 'dlromProcessingStatus'
devicesLongRunningOperationMetadata
    :: DevicesLongRunningOperationMetadata
devicesLongRunningOperationMetadata =
    DevicesLongRunningOperationMetadata'
    { _dlromProgress = Nothing
    , _dlromDevicesCount = Nothing
    , _dlromProcessingStatus = Nothing
    }

-- | The processing progress of the operation. Measured as a number from 0 to
-- 100. A value of 10O doesnt always mean the operation completed—check for
-- the inclusion of a \`done\` field.
dlromProgress :: Lens' DevicesLongRunningOperationMetadata (Maybe Int32)
dlromProgress
  = lens _dlromProgress
      (\ s a -> s{_dlromProgress = a})
      . mapping _Coerce

-- | The number of metadata updates in the operation. This might be different
-- from the number of updates in the request if the API can\'t parse some
-- of the updates.
dlromDevicesCount :: Lens' DevicesLongRunningOperationMetadata (Maybe Int32)
dlromDevicesCount
  = lens _dlromDevicesCount
      (\ s a -> s{_dlromDevicesCount = a})
      . mapping _Coerce

-- | The processing status of the operation.
dlromProcessingStatus :: Lens' DevicesLongRunningOperationMetadata (Maybe DevicesLongRunningOperationMetadataProcessingStatus)
dlromProcessingStatus
  = lens _dlromProcessingStatus
      (\ s a -> s{_dlromProcessingStatus = a})

instance FromJSON DevicesLongRunningOperationMetadata
         where
        parseJSON
          = withObject "DevicesLongRunningOperationMetadata"
              (\ o ->
                 DevicesLongRunningOperationMetadata' <$>
                   (o .:? "progress") <*> (o .:? "devicesCount") <*>
                     (o .:? "processingStatus"))

instance ToJSON DevicesLongRunningOperationMetadata
         where
        toJSON DevicesLongRunningOperationMetadata'{..}
          = object
              (catMaybes
                 [("progress" .=) <$> _dlromProgress,
                  ("devicesCount" .=) <$> _dlromDevicesCount,
                  ("processingStatus" .=) <$> _dlromProcessingStatus])

-- | This field will contain a \`DevicesLongRunningOperationResponse\` object
-- if the operation is created by \`claimAsync\`, \`unclaimAsync\`, or
-- \`updateMetadataAsync\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Response message of customer\'s liting devices.
--
-- /See:/ 'customerListDevicesResponse' smart constructor.
data CustomerListDevicesResponse = CustomerListDevicesResponse'
    { _cldrNextPageToken :: !(Maybe Text)
    , _cldrDevices       :: !(Maybe [Device])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldrNextPageToken'
--
-- * 'cldrDevices'
customerListDevicesResponse
    :: CustomerListDevicesResponse
customerListDevicesResponse =
    CustomerListDevicesResponse'
    { _cldrNextPageToken = Nothing
    , _cldrDevices = Nothing
    }

-- | A token used to access the next page of results. Omitted if no further
-- results are available.
cldrNextPageToken :: Lens' CustomerListDevicesResponse (Maybe Text)
cldrNextPageToken
  = lens _cldrNextPageToken
      (\ s a -> s{_cldrNextPageToken = a})

-- | The customer\'s devices.
cldrDevices :: Lens' CustomerListDevicesResponse [Device]
cldrDevices
  = lens _cldrDevices (\ s a -> s{_cldrDevices = a}) .
      _Default
      . _Coerce

instance FromJSON CustomerListDevicesResponse where
        parseJSON
          = withObject "CustomerListDevicesResponse"
              (\ o ->
                 CustomerListDevicesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "devices" .!= mempty))

instance ToJSON CustomerListDevicesResponse where
        toJSON CustomerListDevicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _cldrNextPageToken,
                  ("devices" .=) <$> _cldrDevices])

-- | Request to update device metadata in batch.
--
-- /See:/ 'updateDeviceMetadataInBatchRequest' smart constructor.
newtype UpdateDeviceMetadataInBatchRequest = UpdateDeviceMetadataInBatchRequest'
    { _udmibrUpdates :: Maybe [UpdateMetadataArguments]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateDeviceMetadataInBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmibrUpdates'
updateDeviceMetadataInBatchRequest
    :: UpdateDeviceMetadataInBatchRequest
updateDeviceMetadataInBatchRequest =
    UpdateDeviceMetadataInBatchRequest'
    { _udmibrUpdates = Nothing
    }

-- | Required. The list of metadata updates.
udmibrUpdates :: Lens' UpdateDeviceMetadataInBatchRequest [UpdateMetadataArguments]
udmibrUpdates
  = lens _udmibrUpdates
      (\ s a -> s{_udmibrUpdates = a})
      . _Default
      . _Coerce

instance FromJSON UpdateDeviceMetadataInBatchRequest
         where
        parseJSON
          = withObject "UpdateDeviceMetadataInBatchRequest"
              (\ o ->
                 UpdateDeviceMetadataInBatchRequest' <$>
                   (o .:? "updates" .!= mempty))

instance ToJSON UpdateDeviceMetadataInBatchRequest
         where
        toJSON UpdateDeviceMetadataInBatchRequest'{..}
          = object
              (catMaybes [("updates" .=) <$> _udmibrUpdates])

-- | Response message of customer\'s listing DPCs.
--
-- /See:/ 'customerListDpcsResponse' smart constructor.
newtype CustomerListDpcsResponse = CustomerListDpcsResponse'
    { _cldrDpcs :: Maybe [Dpc]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerListDpcsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldrDpcs'
customerListDpcsResponse
    :: CustomerListDpcsResponse
customerListDpcsResponse =
    CustomerListDpcsResponse'
    { _cldrDpcs = Nothing
    }

-- | The list of DPCs available to the customer that support zero-touch
-- enrollment.
cldrDpcs :: Lens' CustomerListDpcsResponse [Dpc]
cldrDpcs
  = lens _cldrDpcs (\ s a -> s{_cldrDpcs = a}) .
      _Default
      . _Coerce

instance FromJSON CustomerListDpcsResponse where
        parseJSON
          = withObject "CustomerListDpcsResponse"
              (\ o ->
                 CustomerListDpcsResponse' <$>
                   (o .:? "dpcs" .!= mempty))

instance ToJSON CustomerListDpcsResponse where
        toJSON CustomerListDpcsResponse'{..}
          = object (catMaybes [("dpcs" .=) <$> _cldrDpcs])

-- | Response message containing device id of the claim.
--
-- /See:/ 'claimDeviceResponse' smart constructor.
data ClaimDeviceResponse = ClaimDeviceResponse'
    { _cdrDeviceName :: !(Maybe Text)
    , _cdrDeviceId   :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClaimDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrDeviceName'
--
-- * 'cdrDeviceId'
claimDeviceResponse
    :: ClaimDeviceResponse
claimDeviceResponse =
    ClaimDeviceResponse'
    { _cdrDeviceName = Nothing
    , _cdrDeviceId = Nothing
    }

-- | The resource name of the device in the format
-- \`partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]\`.
cdrDeviceName :: Lens' ClaimDeviceResponse (Maybe Text)
cdrDeviceName
  = lens _cdrDeviceName
      (\ s a -> s{_cdrDeviceName = a})

-- | The device ID of the claimed device.
cdrDeviceId :: Lens' ClaimDeviceResponse (Maybe Int64)
cdrDeviceId
  = lens _cdrDeviceId (\ s a -> s{_cdrDeviceId = a}) .
      mapping _Coerce

instance FromJSON ClaimDeviceResponse where
        parseJSON
          = withObject "ClaimDeviceResponse"
              (\ o ->
                 ClaimDeviceResponse' <$>
                   (o .:? "deviceName") <*> (o .:? "deviceId"))

instance ToJSON ClaimDeviceResponse where
        toJSON ClaimDeviceResponse'{..}
          = object
              (catMaybes
                 [("deviceName" .=) <$> _cdrDeviceName,
                  ("deviceId" .=) <$> _cdrDeviceId])

-- | Request message to create a customer.
--
-- /See:/ 'createCustomerRequest' smart constructor.
newtype CreateCustomerRequest = CreateCustomerRequest'
    { _ccrCustomer :: Maybe Company
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateCustomerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrCustomer'
createCustomerRequest
    :: CreateCustomerRequest
createCustomerRequest =
    CreateCustomerRequest'
    { _ccrCustomer = Nothing
    }

-- | Required. The company data to populate the new customer. Must contain a
-- value for \`companyName\` and at least one \`owner_email\` that\'s
-- associated with a Google Account. The values for \`companyId\` and
-- \`name\` must be empty.
ccrCustomer :: Lens' CreateCustomerRequest (Maybe Company)
ccrCustomer
  = lens _ccrCustomer (\ s a -> s{_ccrCustomer = a})

instance FromJSON CreateCustomerRequest where
        parseJSON
          = withObject "CreateCustomerRequest"
              (\ o ->
                 CreateCustomerRequest' <$> (o .:? "customer"))

instance ToJSON CreateCustomerRequest where
        toJSON CreateCustomerRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _ccrCustomer])
