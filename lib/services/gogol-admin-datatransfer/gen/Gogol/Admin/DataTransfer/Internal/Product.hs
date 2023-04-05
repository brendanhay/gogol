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
-- Module      : Gogol.Admin.DataTransfer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.DataTransfer.Internal.Product
  ( -- * Application
    Application (..),
    newApplication,

    -- * ApplicationDataTransfer
    ApplicationDataTransfer (..),
    newApplicationDataTransfer,

    -- * ApplicationTransferParam
    ApplicationTransferParam (..),
    newApplicationTransferParam,

    -- * ApplicationsListResponse
    ApplicationsListResponse (..),
    newApplicationsListResponse,

    -- * DataTransfer
    DataTransfer (..),
    newDataTransfer,

    -- * DataTransfersListResponse
    DataTransfersListResponse (..),
    newDataTransfersListResponse,
  )
where

import Gogol.Admin.DataTransfer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Application resources represent applications installed on the domain that support transferring ownership of user data.
--
-- /See:/ 'newApplication' smart constructor.
data Application = Application
  { -- | Etag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The application\'s ID. Retrievable by using the </admin-sdk/data-transfer/reference/rest/v1/applications/list applications.list()> method.
    id :: (Core.Maybe Core.Int64),
    -- | Identifies the resource as a DataTransfer Application Resource.
    kind :: Core.Text,
    -- | The application\'s name.
    name :: (Core.Maybe Core.Text),
    -- | The list of all possible transfer parameters for this application. These parameters select which categories of the user\'s data to transfer.
    transferParams :: (Core.Maybe [ApplicationTransferParam])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
newApplication ::
  Application
newApplication =
  Application
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#datatransfer#ApplicationResource",
      name = Core.Nothing,
      transferParams = Core.Nothing
    }

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \o ->
          Application
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#datatransfer#ApplicationResource"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "transferParams")
      )

instance Core.ToJSON Application where
  toJSON Application {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("transferParams" Core..=) Core.<$> transferParams
          ]
      )

-- | Template to map fields of ApplicationDataTransfer resource.
--
-- /See:/ 'newApplicationDataTransfer' smart constructor.
data ApplicationDataTransfer = ApplicationDataTransfer
  { -- | The application\'s ID.
    applicationId :: (Core.Maybe Core.Int64),
    -- | The transfer parameters for the application. These parameters are used to select the data which will get transferred in context of this application. For more information about the specific values available for each application, see the </admin-sdk/data-transfer/v1/parameters Transfer parameters> reference.
    applicationTransferParams :: (Core.Maybe [ApplicationTransferParam]),
    -- | Read-only. Current status of transfer for this application.
    applicationTransferStatus :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationDataTransfer' with the minimum fields required to make a request.
newApplicationDataTransfer ::
  ApplicationDataTransfer
newApplicationDataTransfer =
  ApplicationDataTransfer
    { applicationId = Core.Nothing,
      applicationTransferParams = Core.Nothing,
      applicationTransferStatus = Core.Nothing
    }

instance Core.FromJSON ApplicationDataTransfer where
  parseJSON =
    Core.withObject
      "ApplicationDataTransfer"
      ( \o ->
          ApplicationDataTransfer
            Core.<$> ( o Core..:? "applicationId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "applicationTransferParams")
            Core.<*> (o Core..:? "applicationTransferStatus")
      )

instance Core.ToJSON ApplicationDataTransfer where
  toJSON ApplicationDataTransfer {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationId" Core..=) Core.. Core.AsText
              Core.<$> applicationId,
            ("applicationTransferParams" Core..=)
              Core.<$> applicationTransferParams,
            ("applicationTransferStatus" Core..=)
              Core.<$> applicationTransferStatus
          ]
      )

-- | Template for application transfer parameters.
--
-- /See:/ 'newApplicationTransferParam' smart constructor.
data ApplicationTransferParam = ApplicationTransferParam
  { -- | The type of the transfer parameter, such as @PRIVACY_LEVEL@.
    key :: (Core.Maybe Core.Text),
    -- | The value of the transfer parameter, such as @PRIVATE@ or @SHARED@.
    value :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationTransferParam' with the minimum fields required to make a request.
newApplicationTransferParam ::
  ApplicationTransferParam
newApplicationTransferParam =
  ApplicationTransferParam {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ApplicationTransferParam where
  parseJSON =
    Core.withObject
      "ApplicationTransferParam"
      ( \o ->
          ApplicationTransferParam
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ApplicationTransferParam where
  toJSON ApplicationTransferParam {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Template for a collection of Applications.
--
-- /See:/ 'newApplicationsListResponse' smart constructor.
data ApplicationsListResponse = ApplicationsListResponse
  { -- | The list of applications that support data transfer and are also installed for the customer.
    applications :: (Core.Maybe [Application]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a collection of Applications.
    kind :: Core.Text,
    -- | Token to specify the next page in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationsListResponse' with the minimum fields required to make a request.
newApplicationsListResponse ::
  ApplicationsListResponse
newApplicationsListResponse =
  ApplicationsListResponse
    { applications = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#datatransfer#applicationsList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ApplicationsListResponse where
  parseJSON =
    Core.withObject
      "ApplicationsListResponse"
      ( \o ->
          ApplicationsListResponse
            Core.<$> (o Core..:? "applications")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#datatransfer#applicationsList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ApplicationsListResponse where
  toJSON ApplicationsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("applications" Core..=) Core.<$> applications,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A Transfer resource represents the transfer of the ownership of user data between users.
--
-- /See:/ 'newDataTransfer' smart constructor.
data DataTransfer = DataTransfer
  { -- | The list of per-application data transfer resources. It contains details of the applications associated with this transfer resource, and also specifies the applications for which data transfer has to be done at the time of the transfer resource creation.
    applicationDataTransfers :: (Core.Maybe [ApplicationDataTransfer]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Read-only. The transfer\'s ID.
    id :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a DataTransfer request.
    kind :: Core.Text,
    -- | ID of the user to whom the data is being transferred.
    newOwnerUserId' :: (Core.Maybe Core.Text),
    -- | ID of the user whose data is being transferred.
    oldOwnerUserId :: (Core.Maybe Core.Text),
    -- | Read-only. Overall transfer status.
    overallTransferStatusCode :: (Core.Maybe Core.Text),
    -- | Read-only. The time at which the data transfer was requested.
    requestTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataTransfer' with the minimum fields required to make a request.
newDataTransfer ::
  DataTransfer
newDataTransfer =
  DataTransfer
    { applicationDataTransfers = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#datatransfer#DataTransfer",
      newOwnerUserId' = Core.Nothing,
      oldOwnerUserId = Core.Nothing,
      overallTransferStatusCode = Core.Nothing,
      requestTime = Core.Nothing
    }

instance Core.FromJSON DataTransfer where
  parseJSON =
    Core.withObject
      "DataTransfer"
      ( \o ->
          DataTransfer
            Core.<$> (o Core..:? "applicationDataTransfers")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#datatransfer#DataTransfer"
                     )
            Core.<*> (o Core..:? "newOwnerUserId")
            Core.<*> (o Core..:? "oldOwnerUserId")
            Core.<*> (o Core..:? "overallTransferStatusCode")
            Core.<*> (o Core..:? "requestTime")
      )

instance Core.ToJSON DataTransfer where
  toJSON DataTransfer {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationDataTransfers" Core..=)
              Core.<$> applicationDataTransfers,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("newOwnerUserId" Core..=) Core.<$> newOwnerUserId',
            ("oldOwnerUserId" Core..=) Core.<$> oldOwnerUserId,
            ("overallTransferStatusCode" Core..=)
              Core.<$> overallTransferStatusCode,
            ("requestTime" Core..=) Core.<$> requestTime
          ]
      )

-- | Template for a collection of DataTransfer resources.
--
-- /See:/ 'newDataTransfersListResponse' smart constructor.
data DataTransfersListResponse = DataTransfersListResponse
  { -- | List of data transfer requests.
    dataTransfers :: (Core.Maybe [DataTransfer]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a collection of data transfer requests.
    kind :: Core.Text,
    -- | Token to specify the next page in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataTransfersListResponse' with the minimum fields required to make a request.
newDataTransfersListResponse ::
  DataTransfersListResponse
newDataTransfersListResponse =
  DataTransfersListResponse
    { dataTransfers = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#datatransfer#dataTransfersList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON DataTransfersListResponse where
  parseJSON =
    Core.withObject
      "DataTransfersListResponse"
      ( \o ->
          DataTransfersListResponse
            Core.<$> (o Core..:? "dataTransfers")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#datatransfer#dataTransfersList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON DataTransfersListResponse where
  toJSON DataTransfersListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataTransfers" Core..=) Core.<$> dataTransfers,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )
