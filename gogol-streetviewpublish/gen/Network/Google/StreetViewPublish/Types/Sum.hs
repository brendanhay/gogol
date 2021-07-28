{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StreetViewPublish.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StreetViewPublish.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Required. Specifies if a download URL for the photo bytes should be
-- returned in the Photo response.
data PhotoGetView
    = Basic
      -- ^ @BASIC@
      -- Server responses do not include the download URL for the photo bytes.
      -- The default value.
    | IncludeDownloadURL
      -- ^ @INCLUDE_DOWNLOAD_URL@
      -- Server responses include the download URL for the photo bytes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PhotoGetView

instance FromHttpApiData PhotoGetView where
    parseQueryParam = \case
        "BASIC" -> Right Basic
        "INCLUDE_DOWNLOAD_URL" -> Right IncludeDownloadURL
        x -> Left ("Unable to parse PhotoGetView from: " <> x)

instance ToHttpApiData PhotoGetView where
    toQueryParam = \case
        Basic -> "BASIC"
        IncludeDownloadURL -> "INCLUDE_DOWNLOAD_URL"

instance FromJSON PhotoGetView where
    parseJSON = parseJSONText "PhotoGetView"

instance ToJSON PhotoGetView where
    toJSON = toJSONText

-- | Required. Specifies if a download URL for the photos bytes should be
-- returned in the Photos response.
data PhotosListView
    = PLVBasic
      -- ^ @BASIC@
      -- Server responses do not include the download URL for the photo bytes.
      -- The default value.
    | PLVIncludeDownloadURL
      -- ^ @INCLUDE_DOWNLOAD_URL@
      -- Server responses include the download URL for the photo bytes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PhotosListView

instance FromHttpApiData PhotosListView where
    parseQueryParam = \case
        "BASIC" -> Right PLVBasic
        "INCLUDE_DOWNLOAD_URL" -> Right PLVIncludeDownloadURL
        x -> Left ("Unable to parse PhotosListView from: " <> x)

instance ToHttpApiData PhotosListView where
    toQueryParam = \case
        PLVBasic -> "BASIC"
        PLVIncludeDownloadURL -> "INCLUDE_DOWNLOAD_URL"

instance FromJSON PhotosListView where
    parseJSON = parseJSONText "PhotosListView"

instance ToJSON PhotosListView where
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

-- | Required. Specifies if a download URL for the photo bytes should be
-- returned in the Photo response.
data PhotosBatchGetView
    = PBGVBasic
      -- ^ @BASIC@
      -- Server responses do not include the download URL for the photo bytes.
      -- The default value.
    | PBGVIncludeDownloadURL
      -- ^ @INCLUDE_DOWNLOAD_URL@
      -- Server responses include the download URL for the photo bytes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PhotosBatchGetView

instance FromHttpApiData PhotosBatchGetView where
    parseQueryParam = \case
        "BASIC" -> Right PBGVBasic
        "INCLUDE_DOWNLOAD_URL" -> Right PBGVIncludeDownloadURL
        x -> Left ("Unable to parse PhotosBatchGetView from: " <> x)

instance ToHttpApiData PhotosBatchGetView where
    toQueryParam = \case
        PBGVBasic -> "BASIC"
        PBGVIncludeDownloadURL -> "INCLUDE_DOWNLOAD_URL"

instance FromJSON PhotosBatchGetView where
    parseJSON = parseJSONText "PhotosBatchGetView"

instance ToJSON PhotosBatchGetView where
    toJSON = toJSONText

-- | Output only. Status of rights transfer on this photo.
data PhotoTransferStatus
    = TransferStatusUnknown
      -- ^ @TRANSFER_STATUS_UNKNOWN@
      -- The status of this transfer is unspecified.
    | NeverTransferred
      -- ^ @NEVER_TRANSFERRED@
      -- This photo has never been in a transfer.
    | Pending
      -- ^ @PENDING@
      -- This photo transfer has been initiated, but the receiver has not yet
      -- responded.
    | Completed
      -- ^ @COMPLETED@
      -- The photo transfer has been completed, and this photo has been
      -- transferred to the recipient.
    | Rejected
      -- ^ @REJECTED@
      -- The recipient rejected this photo transfer.
    | Expired
      -- ^ @EXPIRED@
      -- The photo transfer expired before the recipient took any action.
    | Cancelled
      -- ^ @CANCELLED@
      -- The sender cancelled this photo transfer.
    | ReceivedViaTransfer
      -- ^ @RECEIVED_VIA_TRANSFER@
      -- The recipient owns this photo due to a rights transfer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PhotoTransferStatus

instance FromHttpApiData PhotoTransferStatus where
    parseQueryParam = \case
        "TRANSFER_STATUS_UNKNOWN" -> Right TransferStatusUnknown
        "NEVER_TRANSFERRED" -> Right NeverTransferred
        "PENDING" -> Right Pending
        "COMPLETED" -> Right Completed
        "REJECTED" -> Right Rejected
        "EXPIRED" -> Right Expired
        "CANCELLED" -> Right Cancelled
        "RECEIVED_VIA_TRANSFER" -> Right ReceivedViaTransfer
        x -> Left ("Unable to parse PhotoTransferStatus from: " <> x)

instance ToHttpApiData PhotoTransferStatus where
    toQueryParam = \case
        TransferStatusUnknown -> "TRANSFER_STATUS_UNKNOWN"
        NeverTransferred -> "NEVER_TRANSFERRED"
        Pending -> "PENDING"
        Completed -> "COMPLETED"
        Rejected -> "REJECTED"
        Expired -> "EXPIRED"
        Cancelled -> "CANCELLED"
        ReceivedViaTransfer -> "RECEIVED_VIA_TRANSFER"

instance FromJSON PhotoTransferStatus where
    parseJSON = parseJSONText "PhotoTransferStatus"

instance ToJSON PhotoTransferStatus where
    toJSON = toJSONText

-- | Output only. Status in Google Maps, whether this photo was published or
-- rejected. Not currently populated.
data PhotoMapsPublishStatus
    = UnspecifiedMapsPublishStatus
      -- ^ @UNSPECIFIED_MAPS_PUBLISH_STATUS@
      -- The status of the photo is unknown.
    | Published
      -- ^ @PUBLISHED@
      -- The photo is published to the public through Google Maps.
    | RejectedUnknown
      -- ^ @REJECTED_UNKNOWN@
      -- The photo has been rejected for an unknown reason.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PhotoMapsPublishStatus

instance FromHttpApiData PhotoMapsPublishStatus where
    parseQueryParam = \case
        "UNSPECIFIED_MAPS_PUBLISH_STATUS" -> Right UnspecifiedMapsPublishStatus
        "PUBLISHED" -> Right Published
        "REJECTED_UNKNOWN" -> Right RejectedUnknown
        x -> Left ("Unable to parse PhotoMapsPublishStatus from: " <> x)

instance ToHttpApiData PhotoMapsPublishStatus where
    toQueryParam = \case
        UnspecifiedMapsPublishStatus -> "UNSPECIFIED_MAPS_PUBLISH_STATUS"
        Published -> "PUBLISHED"
        RejectedUnknown -> "REJECTED_UNKNOWN"

instance FromJSON PhotoMapsPublishStatus where
    parseJSON = parseJSONText "PhotoMapsPublishStatus"

instance ToJSON PhotoMapsPublishStatus where
    toJSON = toJSONText
