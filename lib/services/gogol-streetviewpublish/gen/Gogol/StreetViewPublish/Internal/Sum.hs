{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.StreetViewPublish.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Photo_MapsPublishStatus
    Photo_MapsPublishStatus
      (
        Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS,
        Photo_MapsPublishStatus_Published,
        Photo_MapsPublishStatus_REJECTEDUNKNOWN,
        ..
      ),

    -- * Photo_TransferStatus
    Photo_TransferStatus
      (
        Photo_TransferStatus_TRANSFERSTATUSUNKNOWN,
        Photo_TransferStatus_NEVERTRANSFERRED,
        Photo_TransferStatus_Pending,
        Photo_TransferStatus_Completed,
        Photo_TransferStatus_Rejected,
        Photo_TransferStatus_Expired,
        Photo_TransferStatus_Cancelled,
        Photo_TransferStatus_RECEIVEDVIATRANSFER,
        ..
      ),

    -- * PhotoGetView
    PhotoGetView
      (
        PhotoGetView_Basic,
        PhotoGetView_INCLUDEDOWNLOADURL,
        ..
      ),

    -- * PhotosBatchGetView
    PhotosBatchGetView
      (
        PhotosBatchGetView_Basic,
        PhotosBatchGetView_INCLUDEDOWNLOADURL,
        ..
      ),

    -- * PhotosListView
    PhotosListView
      (
        PhotosListView_Basic,
        PhotosListView_INCLUDEDOWNLOADURL,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Output only. Status in Google Maps, whether this photo was published or rejected.
newtype Photo_MapsPublishStatus = Photo_MapsPublishStatus { fromPhoto_MapsPublishStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The status of the photo is unknown.
pattern Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS = Photo_MapsPublishStatus "UNSPECIFIED_MAPS_PUBLISH_STATUS"

-- | The photo is published to the public through Google Maps.
pattern Photo_MapsPublishStatus_Published :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_Published = Photo_MapsPublishStatus "PUBLISHED"

-- | The photo has been rejected for an unknown reason.
pattern Photo_MapsPublishStatus_REJECTEDUNKNOWN :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_REJECTEDUNKNOWN = Photo_MapsPublishStatus "REJECTED_UNKNOWN"

{-# COMPLETE
  Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS,
  Photo_MapsPublishStatus_Published,
  Photo_MapsPublishStatus_REJECTEDUNKNOWN,
  Photo_MapsPublishStatus #-}

-- | Output only. Status of rights transfer on this photo.
newtype Photo_TransferStatus = Photo_TransferStatus { fromPhoto_TransferStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The status of this transfer is unspecified.
pattern Photo_TransferStatus_TRANSFERSTATUSUNKNOWN :: Photo_TransferStatus
pattern Photo_TransferStatus_TRANSFERSTATUSUNKNOWN = Photo_TransferStatus "TRANSFER_STATUS_UNKNOWN"

-- | This photo has never been in a transfer.
pattern Photo_TransferStatus_NEVERTRANSFERRED :: Photo_TransferStatus
pattern Photo_TransferStatus_NEVERTRANSFERRED = Photo_TransferStatus "NEVER_TRANSFERRED"

-- | This photo transfer has been initiated, but the receiver has not yet responded.
pattern Photo_TransferStatus_Pending :: Photo_TransferStatus
pattern Photo_TransferStatus_Pending = Photo_TransferStatus "PENDING"

-- | The photo transfer has been completed, and this photo has been transferred to the recipient.
pattern Photo_TransferStatus_Completed :: Photo_TransferStatus
pattern Photo_TransferStatus_Completed = Photo_TransferStatus "COMPLETED"

-- | The recipient rejected this photo transfer.
pattern Photo_TransferStatus_Rejected :: Photo_TransferStatus
pattern Photo_TransferStatus_Rejected = Photo_TransferStatus "REJECTED"

-- | The photo transfer expired before the recipient took any action.
pattern Photo_TransferStatus_Expired :: Photo_TransferStatus
pattern Photo_TransferStatus_Expired = Photo_TransferStatus "EXPIRED"

-- | The sender cancelled this photo transfer.
pattern Photo_TransferStatus_Cancelled :: Photo_TransferStatus
pattern Photo_TransferStatus_Cancelled = Photo_TransferStatus "CANCELLED"

-- | The recipient owns this photo due to a rights transfer.
pattern Photo_TransferStatus_RECEIVEDVIATRANSFER :: Photo_TransferStatus
pattern Photo_TransferStatus_RECEIVEDVIATRANSFER = Photo_TransferStatus "RECEIVED_VIA_TRANSFER"

{-# COMPLETE
  Photo_TransferStatus_TRANSFERSTATUSUNKNOWN,
  Photo_TransferStatus_NEVERTRANSFERRED,
  Photo_TransferStatus_Pending,
  Photo_TransferStatus_Completed,
  Photo_TransferStatus_Rejected,
  Photo_TransferStatus_Expired,
  Photo_TransferStatus_Cancelled,
  Photo_TransferStatus_RECEIVEDVIATRANSFER,
  Photo_TransferStatus #-}

-- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
newtype PhotoGetView = PhotoGetView { fromPhotoGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotoGetView_Basic :: PhotoGetView
pattern PhotoGetView_Basic = PhotoGetView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotoGetView_INCLUDEDOWNLOADURL :: PhotoGetView
pattern PhotoGetView_INCLUDEDOWNLOADURL = PhotoGetView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotoGetView_Basic,
  PhotoGetView_INCLUDEDOWNLOADURL,
  PhotoGetView #-}

-- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
newtype PhotosBatchGetView = PhotosBatchGetView { fromPhotosBatchGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotosBatchGetView_Basic :: PhotosBatchGetView
pattern PhotosBatchGetView_Basic = PhotosBatchGetView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotosBatchGetView_INCLUDEDOWNLOADURL :: PhotosBatchGetView
pattern PhotosBatchGetView_INCLUDEDOWNLOADURL = PhotosBatchGetView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotosBatchGetView_Basic,
  PhotosBatchGetView_INCLUDEDOWNLOADURL,
  PhotosBatchGetView #-}

-- | Required. Specifies if a download URL for the photos bytes should be returned in the Photos response.
newtype PhotosListView = PhotosListView { fromPhotosListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotosListView_Basic :: PhotosListView
pattern PhotosListView_Basic = PhotosListView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotosListView_INCLUDEDOWNLOADURL :: PhotosListView
pattern PhotosListView_INCLUDEDOWNLOADURL = PhotosListView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotosListView_Basic,
  PhotosListView_INCLUDEDOWNLOADURL,
  PhotosListView #-}
