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
-- Module      : Gogol.StorageTransfer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.StorageTransfer.Internal.Product
  ( -- * AgentPool
    AgentPool (..),
    newAgentPool,

    -- * AwsAccessKey
    AwsAccessKey (..),
    newAwsAccessKey,

    -- * AwsS3Data
    AwsS3Data (..),
    newAwsS3Data,

    -- * AzureBlobStorageData
    AzureBlobStorageData (..),
    newAzureBlobStorageData,

    -- * AzureCredentials
    AzureCredentials (..),
    newAzureCredentials,

    -- * BandwidthLimit
    BandwidthLimit (..),
    newBandwidthLimit,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * Date
    Date (..),
    newDate,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ErrorLogEntry
    ErrorLogEntry (..),
    newErrorLogEntry,

    -- * ErrorSummary
    ErrorSummary (..),
    newErrorSummary,

    -- * GcsData
    GcsData (..),
    newGcsData,

    -- * GoogleServiceAccount
    GoogleServiceAccount (..),
    newGoogleServiceAccount,

    -- * HttpData
    HttpData (..),
    newHttpData,

    -- * ListAgentPoolsResponse
    ListAgentPoolsResponse (..),
    newListAgentPoolsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListTransferJobsResponse
    ListTransferJobsResponse (..),
    newListTransferJobsResponse,

    -- * LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- * MetadataOptions
    MetadataOptions (..),
    newMetadataOptions,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * ObjectConditions
    ObjectConditions (..),
    newObjectConditions,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PauseTransferOperationRequest
    PauseTransferOperationRequest (..),
    newPauseTransferOperationRequest,

    -- * PosixFilesystem
    PosixFilesystem (..),
    newPosixFilesystem,

    -- * ResumeTransferOperationRequest
    ResumeTransferOperationRequest (..),
    newResumeTransferOperationRequest,

    -- * RunTransferJobRequest
    RunTransferJobRequest (..),
    newRunTransferJobRequest,

    -- * Schedule
    Schedule (..),
    newSchedule,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TransferCounters
    TransferCounters (..),
    newTransferCounters,

    -- * TransferJob
    TransferJob (..),
    newTransferJob,

    -- * TransferManifest
    TransferManifest (..),
    newTransferManifest,

    -- * TransferOperation
    TransferOperation (..),
    newTransferOperation,

    -- * TransferOptions
    TransferOptions (..),
    newTransferOptions,

    -- * TransferSpec
    TransferSpec (..),
    newTransferSpec,

    -- * UpdateTransferJobRequest
    UpdateTransferJobRequest (..),
    newUpdateTransferJobRequest,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Internal.Sum

-- | Represents an On-Premises Agent pool.
--
-- /See:/ 'newAgentPool' smart constructor.
data AgentPool = AgentPool
  { -- | Specifies the bandwidth limit details. If this field is unspecified, the default value is set as \'No Limit\'.
    bandwidthLimit :: (Core.Maybe BandwidthLimit),
    -- | Specifies the client-specified AgentPool description.
    displayName :: (Core.Maybe Core.Text),
    -- | Required. Specifies a unique string that identifies the agent pool. Format: @projects\/{project_id}\/agentPools\/{agent_pool_id}@
    name :: (Core.Maybe Core.Text),
    -- | Output only. Specifies the state of the AgentPool.
    state :: (Core.Maybe AgentPool_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AgentPool' with the minimum fields required to make a request.
newAgentPool ::
  AgentPool
newAgentPool =
  AgentPool
    { bandwidthLimit = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON AgentPool where
  parseJSON =
    Core.withObject
      "AgentPool"
      ( \o ->
          AgentPool
            Core.<$> (o Core..:? "bandwidthLimit")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON AgentPool where
  toJSON AgentPool {..} =
    Core.object
      ( Core.catMaybes
          [ ("bandwidthLimit" Core..=) Core.<$> bandwidthLimit,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | AWS access key (see <https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html AWS Security Credentials>). For information on our data retention policy for user credentials, see </storage-transfer/docs/data-retention#user-credentials User credentials>.
--
-- /See:/ 'newAwsAccessKey' smart constructor.
data AwsAccessKey = AwsAccessKey
  { -- | Required. AWS access key ID.
    accessKeyId :: (Core.Maybe Core.Text),
    -- | Required. AWS secret access key. This field is not returned in RPC responses.
    secretAccessKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AwsAccessKey' with the minimum fields required to make a request.
newAwsAccessKey ::
  AwsAccessKey
newAwsAccessKey =
  AwsAccessKey {accessKeyId = Core.Nothing, secretAccessKey = Core.Nothing}

instance Core.FromJSON AwsAccessKey where
  parseJSON =
    Core.withObject
      "AwsAccessKey"
      ( \o ->
          AwsAccessKey
            Core.<$> (o Core..:? "accessKeyId")
            Core.<*> (o Core..:? "secretAccessKey")
      )

instance Core.ToJSON AwsAccessKey where
  toJSON AwsAccessKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessKeyId" Core..=) Core.<$> accessKeyId,
            ("secretAccessKey" Core..=)
              Core.<$> secretAccessKey
          ]
      )

-- | An AwsS3Data resource can be a data source, but not a data sink. In an AwsS3Data resource, an object\'s name is the S3 object\'s key name.
--
-- /See:/ 'newAwsS3Data' smart constructor.
data AwsS3Data = AwsS3Data
  { -- | Input only. AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the bucket must be granted to the access ID of the AWS access key. For information on our data retention policy for user credentials, see </storage-transfer/docs/data-retention#user-credentials User credentials>.
    awsAccessKey :: (Core.Maybe AwsAccessKey),
    -- | Required. S3 Bucket name (see <https://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html Creating a bucket>).
    bucketName :: (Core.Maybe Core.Text),
    -- | Root path to transfer objects. Must be an empty string or full path name that ends with a \'\/\'. This field is treated as an object prefix. As such, it should generally not begin with a \'\/\'.
    path :: (Core.Maybe Core.Text),
    -- | The Amazon Resource Name (ARN) of the role to support temporary credentials via @AssumeRoleWithWebIdentity@. For more information about ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns IAM ARNs>. When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a @AssumeRoleWithWebIdentity@ call for the provided role using the GoogleServiceAccount for this project.
    roleArn :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AwsS3Data' with the minimum fields required to make a request.
newAwsS3Data ::
  AwsS3Data
newAwsS3Data =
  AwsS3Data
    { awsAccessKey = Core.Nothing,
      bucketName = Core.Nothing,
      path = Core.Nothing,
      roleArn = Core.Nothing
    }

instance Core.FromJSON AwsS3Data where
  parseJSON =
    Core.withObject
      "AwsS3Data"
      ( \o ->
          AwsS3Data
            Core.<$> (o Core..:? "awsAccessKey")
            Core.<*> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "roleArn")
      )

instance Core.ToJSON AwsS3Data where
  toJSON AwsS3Data {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsAccessKey" Core..=) Core.<$> awsAccessKey,
            ("bucketName" Core..=) Core.<$> bucketName,
            ("path" Core..=) Core.<$> path,
            ("roleArn" Core..=) Core.<$> roleArn
          ]
      )

-- | An AzureBlobStorageData resource can be a data source, but not a data sink. An AzureBlobStorageData resource represents one Azure container. The storage account determines the <https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#storage-account-endpoints Azure endpoint>. In an AzureBlobStorageData resource, a blobs\'s name is the <https://docs.microsoft.com/en-us/rest/api/storageservices/naming-and-referencing-containers--blobs--and-metadata#blob-names Azure Blob Storage blob\'s key name>.
--
-- /See:/ 'newAzureBlobStorageData' smart constructor.
data AzureBlobStorageData = AzureBlobStorageData
  { -- | Required. Input only. Credentials used to authenticate API requests to Azure. For information on our data retention policy for user credentials, see </storage-transfer/docs/data-retention#user-credentials User credentials>.
    azureCredentials :: (Core.Maybe AzureCredentials),
    -- | Required. The container to transfer from the Azure Storage account.
    container :: (Core.Maybe Core.Text),
    -- | Root path to transfer objects. Must be an empty string or full path name that ends with a \'\/\'. This field is treated as an object prefix. As such, it should generally not begin with a \'\/\'.
    path :: (Core.Maybe Core.Text),
    -- | Required. The name of the Azure Storage account.
    storageAccount :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AzureBlobStorageData' with the minimum fields required to make a request.
newAzureBlobStorageData ::
  AzureBlobStorageData
newAzureBlobStorageData =
  AzureBlobStorageData
    { azureCredentials = Core.Nothing,
      container = Core.Nothing,
      path = Core.Nothing,
      storageAccount = Core.Nothing
    }

instance Core.FromJSON AzureBlobStorageData where
  parseJSON =
    Core.withObject
      "AzureBlobStorageData"
      ( \o ->
          AzureBlobStorageData
            Core.<$> (o Core..:? "azureCredentials")
            Core.<*> (o Core..:? "container")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "storageAccount")
      )

instance Core.ToJSON AzureBlobStorageData where
  toJSON AzureBlobStorageData {..} =
    Core.object
      ( Core.catMaybes
          [ ("azureCredentials" Core..=)
              Core.<$> azureCredentials,
            ("container" Core..=) Core.<$> container,
            ("path" Core..=) Core.<$> path,
            ("storageAccount" Core..=) Core.<$> storageAccount
          ]
      )

-- | Azure credentials For information on our data retention policy for user credentials, see </storage-transfer/docs/data-retention#user-credentials User credentials>.
--
-- /See:/ 'newAzureCredentials' smart constructor.
newtype AzureCredentials = AzureCredentials
  { -- | Required. Azure shared access signature (SAS). For more information about SAS, see <https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview Grant limited access to Azure Storage resources using shared access signatures (SAS)>.
    sasToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AzureCredentials' with the minimum fields required to make a request.
newAzureCredentials ::
  AzureCredentials
newAzureCredentials = AzureCredentials {sasToken = Core.Nothing}

instance Core.FromJSON AzureCredentials where
  parseJSON =
    Core.withObject
      "AzureCredentials"
      ( \o ->
          AzureCredentials Core.<$> (o Core..:? "sasToken")
      )

instance Core.ToJSON AzureCredentials where
  toJSON AzureCredentials {..} =
    Core.object
      ( Core.catMaybes
          [("sasToken" Core..=) Core.<$> sasToken]
      )

-- | Specifies a bandwidth limit for an agent pool.
--
-- /See:/ 'newBandwidthLimit' smart constructor.
newtype BandwidthLimit = BandwidthLimit
  { -- | Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
    limitMbps :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BandwidthLimit' with the minimum fields required to make a request.
newBandwidthLimit ::
  BandwidthLimit
newBandwidthLimit = BandwidthLimit {limitMbps = Core.Nothing}

instance Core.FromJSON BandwidthLimit where
  parseJSON =
    Core.withObject
      "BandwidthLimit"
      ( \o ->
          BandwidthLimit Core.<$> (o Core..:? "limitMbps")
      )

instance Core.ToJSON BandwidthLimit where
  toJSON BandwidthLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("limitMbps" Core..=) Core.. Core.AsText
              Core.<$> limitMbps
          ]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
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

-- | An entry describing an error that has occurred.
--
-- /See:/ 'newErrorLogEntry' smart constructor.
data ErrorLogEntry = ErrorLogEntry
  { -- | A list of messages that carry the error details.
    errorDetails :: (Core.Maybe [Core.Text]),
    -- | Required. A URL that refers to the target (a data source, a data sink, or an object) with which the error is associated.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorLogEntry' with the minimum fields required to make a request.
newErrorLogEntry ::
  ErrorLogEntry
newErrorLogEntry =
  ErrorLogEntry {errorDetails = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON ErrorLogEntry where
  parseJSON =
    Core.withObject
      "ErrorLogEntry"
      ( \o ->
          ErrorLogEntry
            Core.<$> (o Core..:? "errorDetails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ErrorLogEntry where
  toJSON ErrorLogEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorDetails" Core..=) Core.<$> errorDetails,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A summary of errors by error code, plus a count and sample error log entries.
--
-- /See:/ 'newErrorSummary' smart constructor.
data ErrorSummary = ErrorSummary
  { -- | Required.
    errorCode :: (Core.Maybe ErrorSummary_ErrorCode),
    -- | Required. Count of this type of error.
    errorCount :: (Core.Maybe Core.Int64),
    -- | Error samples. At most 5 error log entries are recorded for a given error code for a single transfer operation.
    errorLogEntries :: (Core.Maybe [ErrorLogEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorSummary' with the minimum fields required to make a request.
newErrorSummary ::
  ErrorSummary
newErrorSummary =
  ErrorSummary
    { errorCode = Core.Nothing,
      errorCount = Core.Nothing,
      errorLogEntries = Core.Nothing
    }

instance Core.FromJSON ErrorSummary where
  parseJSON =
    Core.withObject
      "ErrorSummary"
      ( \o ->
          ErrorSummary
            Core.<$> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "errorCount")
            Core.<*> (o Core..:? "errorLogEntries" Core..!= Core.mempty)
      )

instance Core.ToJSON ErrorSummary where
  toJSON ErrorSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCode" Core..=) Core.<$> errorCode,
            ("errorCount" Core..=) Core.. Core.AsText
              Core.<$> errorCount,
            ("errorLogEntries" Core..=)
              Core.<$> errorLogEntries
          ]
      )

-- | In a GcsData resource, an object\'s name is the Cloud Storage object\'s name and its \"last modification time\" refers to the object\'s @updated@ property of Cloud Storage objects, which changes when the content or the metadata of the object is updated.
--
-- /See:/ 'newGcsData' smart constructor.
data GcsData = GcsData
  { -- | Required. Cloud Storage bucket name. Must meet </storage/docs/naming#requirements Bucket Name Requirements>.
    bucketName :: (Core.Maybe Core.Text),
    -- | Root path to transfer objects. Must be an empty string or full path name that ends with a \'\/\'. This field is treated as an object prefix. As such, it should generally not begin with a \'\/\'. The root path value must meet </storage/docs/naming#objectnames Object Name Requirements>.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsData' with the minimum fields required to make a request.
newGcsData ::
  GcsData
newGcsData = GcsData {bucketName = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON GcsData where
  parseJSON =
    Core.withObject
      "GcsData"
      ( \o ->
          GcsData
            Core.<$> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON GcsData where
  toJSON GcsData {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketName" Core..=) Core.<$> bucketName,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | Google service account
--
-- /See:/ 'newGoogleServiceAccount' smart constructor.
data GoogleServiceAccount = GoogleServiceAccount
  { -- | Email address of the service account.
    accountEmail :: (Core.Maybe Core.Text),
    -- | Unique identifier for the service account.
    subjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleServiceAccount' with the minimum fields required to make a request.
newGoogleServiceAccount ::
  GoogleServiceAccount
newGoogleServiceAccount =
  GoogleServiceAccount {accountEmail = Core.Nothing, subjectId = Core.Nothing}

instance Core.FromJSON GoogleServiceAccount where
  parseJSON =
    Core.withObject
      "GoogleServiceAccount"
      ( \o ->
          GoogleServiceAccount
            Core.<$> (o Core..:? "accountEmail")
            Core.<*> (o Core..:? "subjectId")
      )

instance Core.ToJSON GoogleServiceAccount where
  toJSON GoogleServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountEmail" Core..=) Core.<$> accountEmail,
            ("subjectId" Core..=) Core.<$> subjectId
          ]
      )

-- | An HttpData resource specifies a list of objects on the web to be transferred over HTTP. The information of the objects to be transferred is contained in a file referenced by a URL. The first line in the file must be @\"TsvHttpData-1.0\"@, which specifies the format of the file. Subsequent lines specify the information of the list of objects, one object per list entry. Each entry has the following tab-delimited fields: * __HTTP URL__ — The location of the object. * __Length__ — The size of the object in bytes. * __MD5__ — The base64-encoded MD5 hash of the object. For an example of a valid TSV file, see <https://cloud.google.com/storage-transfer/docs/create-url-list Transferring data from URLs>. When transferring data based on a URL list, keep the following in mind: * When an object located at @http(s):\/\/hostname:port\/@ is transferred to a data sink, the name of the object at the data sink is @\/@. * If the specified size of an object does not match the actual size of the object fetched, the object is not
-- transferred. * If the specified MD5 does not match the MD5 computed from the transferred bytes, the object transfer fails. * Ensure that each URL you specify is publicly accessible. For example, in Cloud Storage you can [share an object publicly] (\/storage\/docs\/cloud-console#_sharingdata) and get a link to it. * Storage Transfer Service obeys @robots.txt@ rules and requires the source HTTP server to support @Range@ requests and to return a @Content-Length@ header in each response. * ObjectConditions have no effect when filtering objects to transfer.
--
-- /See:/ 'newHttpData' smart constructor.
newtype HttpData = HttpData
  { -- | Required. The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.
    listUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpData' with the minimum fields required to make a request.
newHttpData ::
  HttpData
newHttpData = HttpData {listUrl = Core.Nothing}

instance Core.FromJSON HttpData where
  parseJSON =
    Core.withObject
      "HttpData"
      (\o -> HttpData Core.<$> (o Core..:? "listUrl"))

instance Core.ToJSON HttpData where
  toJSON HttpData {..} =
    Core.object
      ( Core.catMaybes
          [("listUrl" Core..=) Core.<$> listUrl]
      )

-- | Response from ListAgentPools.
--
-- /See:/ 'newListAgentPoolsResponse' smart constructor.
data ListAgentPoolsResponse = ListAgentPoolsResponse
  { -- | A list of agent pools.
    agentPools :: (Core.Maybe [AgentPool]),
    -- | The list next page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAgentPoolsResponse' with the minimum fields required to make a request.
newListAgentPoolsResponse ::
  ListAgentPoolsResponse
newListAgentPoolsResponse =
  ListAgentPoolsResponse
    { agentPools = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAgentPoolsResponse where
  parseJSON =
    Core.withObject
      "ListAgentPoolsResponse"
      ( \o ->
          ListAgentPoolsResponse
            Core.<$> (o Core..:? "agentPools" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAgentPoolsResponse where
  toJSON ListAgentPoolsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("agentPools" Core..=) Core.<$> agentPools,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response from ListTransferJobs.
--
-- /See:/ 'newListTransferJobsResponse' smart constructor.
data ListTransferJobsResponse = ListTransferJobsResponse
  { -- | The list next page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of transfer jobs.
    transferJobs :: (Core.Maybe [TransferJob])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTransferJobsResponse' with the minimum fields required to make a request.
newListTransferJobsResponse ::
  ListTransferJobsResponse
newListTransferJobsResponse =
  ListTransferJobsResponse
    { nextPageToken = Core.Nothing,
      transferJobs = Core.Nothing
    }

instance Core.FromJSON ListTransferJobsResponse where
  parseJSON =
    Core.withObject
      "ListTransferJobsResponse"
      ( \o ->
          ListTransferJobsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "transferJobs" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTransferJobsResponse where
  toJSON ListTransferJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("transferJobs" Core..=) Core.<$> transferJobs
          ]
      )

-- | Specifies the logging behavior for transfer operations. For cloud-to-cloud transfers, logs are sent to Cloud Logging. See <https://cloud.google.com/storage-transfer/docs/read-transfer-logs Read transfer logs> for details. For transfers to or from a POSIX file system, logs are stored in the Cloud Storage bucket that is the source or sink of the transfer. See [Managing Transfer for on-premises jobs] (https:\/\/cloud.google.com\/storage-transfer\/docs\/managing-on-prem-jobs#viewing-logs) for details.
--
-- /See:/ 'newLoggingConfig' smart constructor.
data LoggingConfig = LoggingConfig
  { -- | For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
    enableOnpremGcsTransferLogs :: (Core.Maybe Core.Bool),
    -- | States in which @log_actions@ are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable/onprem/gcs/transfer/logs instead.
    logActionStates :: (Core.Maybe [LoggingConfig_LogActionStatesItem]),
    -- | Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable/onprem/gcs/transfer/logs instead.
    logActions :: (Core.Maybe [LoggingConfig_LogActionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingConfig' with the minimum fields required to make a request.
newLoggingConfig ::
  LoggingConfig
newLoggingConfig =
  LoggingConfig
    { enableOnpremGcsTransferLogs = Core.Nothing,
      logActionStates = Core.Nothing,
      logActions = Core.Nothing
    }

instance Core.FromJSON LoggingConfig where
  parseJSON =
    Core.withObject
      "LoggingConfig"
      ( \o ->
          LoggingConfig
            Core.<$> (o Core..:? "enableOnpremGcsTransferLogs")
            Core.<*> (o Core..:? "logActionStates" Core..!= Core.mempty)
            Core.<*> (o Core..:? "logActions" Core..!= Core.mempty)
      )

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableOnpremGcsTransferLogs" Core..=)
              Core.<$> enableOnpremGcsTransferLogs,
            ("logActionStates" Core..=) Core.<$> logActionStates,
            ("logActions" Core..=) Core.<$> logActions
          ]
      )

-- | Specifies the metadata options for running a transfer. These options only apply to transfers involving a POSIX filesystem and are ignored for other transfers.
--
-- /See:/ 'newMetadataOptions' smart constructor.
data MetadataOptions = MetadataOptions
  { -- | Specifies how each object\'s ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL/DESTINATION/BUCKET_DEFAULT.
    acl :: (Core.Maybe MetadataOptions_Acl),
    -- | Specifies how each file\'s POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved.
    gid :: (Core.Maybe MetadataOptions_Gid),
    -- | Specifies how each object\'s Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS/KEY/DESTINATION/BUCKET/DEFAULT.
    kmsKey :: (Core.Maybe MetadataOptions_KmsKey),
    -- | Specifies how each file\'s mode attribute should be handled by the transfer. By default, mode is not preserved.
    mode :: (Core.Maybe MetadataOptions_Mode),
    -- | Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE/CLASS/DESTINATION/BUCKET/DEFAULT.
    storageClass :: (Core.Maybe MetadataOptions_StorageClass),
    -- | Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved.
    symlink :: (Core.Maybe MetadataOptions_Symlink),
    -- | Specifies how each object\'s temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY/HOLD/PRESERVE.
    temporaryHold :: (Core.Maybe MetadataOptions_TemporaryHold),
    -- | Specifies how each object\'s @timeCreated@ metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME/CREATED/SKIP.
    timeCreated :: (Core.Maybe MetadataOptions_TimeCreated),
    -- | Specifies how each file\'s POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved.
    uid :: (Core.Maybe MetadataOptions_Uid)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetadataOptions' with the minimum fields required to make a request.
newMetadataOptions ::
  MetadataOptions
newMetadataOptions =
  MetadataOptions
    { acl = Core.Nothing,
      gid = Core.Nothing,
      kmsKey = Core.Nothing,
      mode = Core.Nothing,
      storageClass = Core.Nothing,
      symlink = Core.Nothing,
      temporaryHold = Core.Nothing,
      timeCreated = Core.Nothing,
      uid = Core.Nothing
    }

instance Core.FromJSON MetadataOptions where
  parseJSON =
    Core.withObject
      "MetadataOptions"
      ( \o ->
          MetadataOptions
            Core.<$> (o Core..:? "acl")
            Core.<*> (o Core..:? "gid")
            Core.<*> (o Core..:? "kmsKey")
            Core.<*> (o Core..:? "mode")
            Core.<*> (o Core..:? "storageClass")
            Core.<*> (o Core..:? "symlink")
            Core.<*> (o Core..:? "temporaryHold")
            Core.<*> (o Core..:? "timeCreated")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON MetadataOptions where
  toJSON MetadataOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("acl" Core..=) Core.<$> acl,
            ("gid" Core..=) Core.<$> gid,
            ("kmsKey" Core..=) Core.<$> kmsKey,
            ("mode" Core..=) Core.<$> mode,
            ("storageClass" Core..=) Core.<$> storageClass,
            ("symlink" Core..=) Core.<$> symlink,
            ("temporaryHold" Core..=) Core.<$> temporaryHold,
            ("timeCreated" Core..=) Core.<$> timeCreated,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Specification to configure notifications published to Pub\/Sub. Notifications are published to the customer-provided topic using the following @PubsubMessage.attributes@: * @\"eventType\"@: one of the EventType values * @\"payloadFormat\"@: one of the PayloadFormat values * @\"projectId\"@: the project/id of the @TransferOperation@ * @\"transferJobName\"@: the transfer/job_name of the @TransferOperation@ * @\"transferOperationName\"@: the name of the @TransferOperation@ The @PubsubMessage.data@ contains a TransferOperation resource formatted according to the specified @PayloadFormat@.
--
-- /See:/ 'newNotificationConfig' smart constructor.
data NotificationConfig = NotificationConfig
  { -- | Event types for which a notification is desired. If empty, send notifications for all event types.
    eventTypes :: (Core.Maybe [NotificationConfig_EventTypesItem]),
    -- | Required. The desired format of the notification message payloads.
    payloadFormat :: (Core.Maybe NotificationConfig_PayloadFormat),
    -- | Required. The @Topic.name@ of the Pub\/Sub topic to which to publish notifications. Must be of the format: @projects\/{project}\/topics\/{topic}@. Not matching this format results in an INVALID_ARGUMENT error.
    pubsubTopic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
newNotificationConfig ::
  NotificationConfig
newNotificationConfig =
  NotificationConfig
    { eventTypes = Core.Nothing,
      payloadFormat = Core.Nothing,
      pubsubTopic = Core.Nothing
    }

instance Core.FromJSON NotificationConfig where
  parseJSON =
    Core.withObject
      "NotificationConfig"
      ( \o ->
          NotificationConfig
            Core.<$> (o Core..:? "eventTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "payloadFormat")
            Core.<*> (o Core..:? "pubsubTopic")
      )

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventTypes" Core..=) Core.<$> eventTypes,
            ("payloadFormat" Core..=) Core.<$> payloadFormat,
            ("pubsubTopic" Core..=) Core.<$> pubsubTopic
          ]
      )

-- | Conditions that determine which objects are transferred. Applies only to Cloud Data Sources such as S3, Azure, and Cloud Storage. The \"last modification time\" refers to the time of the last change to the object\'s content or metadata — specifically, this is the @updated@ property of Cloud Storage objects, the @LastModified@ field of S3 objects, and the @Last-Modified@ header of Azure blobs. Transfers with a PosixFilesystem source or destination don\'t support @ObjectConditions@.
--
-- /See:/ 'newObjectConditions' smart constructor.
data ObjectConditions = ObjectConditions
  { -- | If you specify @exclude_prefixes@, Storage Transfer Service uses the items in the @exclude_prefixes@ array to determine which objects to exclude from a transfer. Objects must not start with one of the matching @exclude_prefixes@ for inclusion in a transfer. The following are requirements of @exclude_prefixes@: * Each exclude-prefix can contain any sequence of Unicode characters, to a max length of 1024 bytes when UTF8-encoded, and must not contain Carriage Return or Line Feed characters. Wildcard matching and regular expression matching are not supported. * Each exclude-prefix must omit the leading slash. For example, to exclude the object @s3:\/\/my-aws-bucket\/logs\/y=2015\/requests.gz@, specify the exclude-prefix as @logs\/y=2015\/requests.gz@. * None of the exclude-prefix values can be empty, if specified. * Each exclude-prefix must exclude a distinct portion of the object namespace. No exclude-prefix may be a prefix of another exclude-prefix. * If include_prefixes is specified, then each exclude-prefix
    -- must start with the value of a path explicitly included by @include_prefixes@. The max size of @exclude_prefixes@ is 1000. For more information, see </storage-transfer/docs/filtering-objects-from-transfers Filtering objects from transfers>.
    excludePrefixes :: (Core.Maybe [Core.Text]),
    -- | If you specify @include_prefixes@, Storage Transfer Service uses the items in the @include_prefixes@ array to determine which objects to include in a transfer. Objects must start with one of the matching @include_prefixes@ for inclusion in the transfer. If exclude_prefixes is specified, objects must not start with any of the @exclude_prefixes@ specified for inclusion in the transfer. The following are requirements of @include_prefixes@: * Each include-prefix can contain any sequence of Unicode characters, to a max length of 1024 bytes when UTF8-encoded, and must not contain Carriage Return or Line Feed characters. Wildcard matching and regular expression matching are not supported. * Each include-prefix must omit the leading slash. For example, to include the object @s3:\/\/my-aws-bucket\/logs\/y=2015\/requests.gz@, specify the include-prefix as @logs\/y=2015\/requests.gz@. * None of the include-prefix values can be empty, if specified. * Each include-prefix must include a distinct portion of the object
    -- namespace. No include-prefix may be a prefix of another include-prefix. The max size of @include_prefixes@ is 1000. For more information, see </storage-transfer/docs/filtering-objects-from-transfers Filtering objects from transfers>.
    includePrefixes :: (Core.Maybe [Core.Text]),
    -- | If specified, only objects with a \"last modification time\" before this timestamp and objects that don\'t have a \"last modification time\" are transferred.
    lastModifiedBefore :: (Core.Maybe Core.DateTime),
    -- | If specified, only objects with a \"last modification time\" on or after this timestamp and objects that don\'t have a \"last modification time\" are transferred. The @last_modified_since@ and @last_modified_before@ fields can be used together for chunked data processing. For example, consider a script that processes each day\'s worth of data at a time. For that you\'d set each of the fields as follows: * @last_modified_since@ to the start of the day * @last_modified_before@ to the end of the day
    lastModifiedSince :: (Core.Maybe Core.DateTime),
    -- | Ensures that objects are not transferred if a specific maximum time has elapsed since the \"last modification time\". When a TransferOperation begins, objects with a \"last modification time\" are transferred only if the elapsed time between the start/time of the @TransferOperation@and the \"last modification time\" of the object is less than the value of max/time/elapsed/since/last/modification\`. Objects that do not have a \"last modification time\" are also transferred.
    maxTimeElapsedSinceLastModification :: (Core.Maybe Core.Duration),
    -- | Ensures that objects are not transferred until a specific minimum time has elapsed after the \"last modification time\". When a TransferOperation begins, objects with a \"last modification time\" are transferred only if the elapsed time between the start/time of the @TransferOperation@ and the \"last modification time\" of the object is equal to or greater than the value of min/time/elapsed/since/last/modification\`. Objects that do not have a \"last modification time\" are also transferred.
    minTimeElapsedSinceLastModification :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectConditions' with the minimum fields required to make a request.
newObjectConditions ::
  ObjectConditions
newObjectConditions =
  ObjectConditions
    { excludePrefixes = Core.Nothing,
      includePrefixes = Core.Nothing,
      lastModifiedBefore = Core.Nothing,
      lastModifiedSince = Core.Nothing,
      maxTimeElapsedSinceLastModification = Core.Nothing,
      minTimeElapsedSinceLastModification = Core.Nothing
    }

instance Core.FromJSON ObjectConditions where
  parseJSON =
    Core.withObject
      "ObjectConditions"
      ( \o ->
          ObjectConditions
            Core.<$> (o Core..:? "excludePrefixes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "includePrefixes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "lastModifiedBefore")
            Core.<*> (o Core..:? "lastModifiedSince")
            Core.<*> (o Core..:? "maxTimeElapsedSinceLastModification")
            Core.<*> (o Core..:? "minTimeElapsedSinceLastModification")
      )

instance Core.ToJSON ObjectConditions where
  toJSON ObjectConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludePrefixes" Core..=)
              Core.<$> excludePrefixes,
            ("includePrefixes" Core..=) Core.<$> includePrefixes,
            ("lastModifiedBefore" Core..=)
              Core.<$> lastModifiedBefore,
            ("lastModifiedSince" Core..=)
              Core.<$> lastModifiedSince,
            ("maxTimeElapsedSinceLastModification" Core..=)
              Core.<$> maxTimeElapsedSinceLastModification,
            ("minTimeElapsedSinceLastModification" Core..=)
              Core.<$> minTimeElapsedSinceLastModification
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Represents the transfer operation object. To request a TransferOperation object, use transferOperations.get.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned unique name. The format of @name@ is @transferOperations\/some\/unique\/name@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | Represents the transfer operation object. To request a TransferOperation object, use transferOperations.get.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Request passed to PauseTransferOperation.
--
-- /See:/ 'newPauseTransferOperationRequest' smart constructor.
data PauseTransferOperationRequest = PauseTransferOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseTransferOperationRequest' with the minimum fields required to make a request.
newPauseTransferOperationRequest ::
  PauseTransferOperationRequest
newPauseTransferOperationRequest = PauseTransferOperationRequest

instance Core.FromJSON PauseTransferOperationRequest where
  parseJSON =
    Core.withObject
      "PauseTransferOperationRequest"
      (\o -> Core.pure PauseTransferOperationRequest)

instance Core.ToJSON PauseTransferOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | A POSIX filesystem resource.
--
-- /See:/ 'newPosixFilesystem' smart constructor.
newtype PosixFilesystem = PosixFilesystem
  { -- | Root directory path to the filesystem.
    rootDirectory :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosixFilesystem' with the minimum fields required to make a request.
newPosixFilesystem ::
  PosixFilesystem
newPosixFilesystem = PosixFilesystem {rootDirectory = Core.Nothing}

instance Core.FromJSON PosixFilesystem where
  parseJSON =
    Core.withObject
      "PosixFilesystem"
      ( \o ->
          PosixFilesystem
            Core.<$> (o Core..:? "rootDirectory")
      )

instance Core.ToJSON PosixFilesystem where
  toJSON PosixFilesystem {..} =
    Core.object
      ( Core.catMaybes
          [("rootDirectory" Core..=) Core.<$> rootDirectory]
      )

-- | Request passed to ResumeTransferOperation.
--
-- /See:/ 'newResumeTransferOperationRequest' smart constructor.
data ResumeTransferOperationRequest = ResumeTransferOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResumeTransferOperationRequest' with the minimum fields required to make a request.
newResumeTransferOperationRequest ::
  ResumeTransferOperationRequest
newResumeTransferOperationRequest = ResumeTransferOperationRequest

instance Core.FromJSON ResumeTransferOperationRequest where
  parseJSON =
    Core.withObject
      "ResumeTransferOperationRequest"
      (\o -> Core.pure ResumeTransferOperationRequest)

instance Core.ToJSON ResumeTransferOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Request passed to RunTransferJob.
--
-- /See:/ 'newRunTransferJobRequest' smart constructor.
newtype RunTransferJobRequest = RunTransferJobRequest
  { -- | Required. The ID of the Google Cloud project that owns the transfer job.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunTransferJobRequest' with the minimum fields required to make a request.
newRunTransferJobRequest ::
  RunTransferJobRequest
newRunTransferJobRequest = RunTransferJobRequest {projectId = Core.Nothing}

instance Core.FromJSON RunTransferJobRequest where
  parseJSON =
    Core.withObject
      "RunTransferJobRequest"
      ( \o ->
          RunTransferJobRequest
            Core.<$> (o Core..:? "projectId")
      )

instance Core.ToJSON RunTransferJobRequest where
  toJSON RunTransferJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [("projectId" Core..=) Core.<$> projectId]
      )

-- | Transfers can be scheduled to recur or to run just once.
--
-- /See:/ 'newSchedule' smart constructor.
data Schedule = Schedule
  { -- | The time in UTC that no further transfer operations are scheduled. Combined with schedule/end/date, @end_time_of_day@ specifies the end date and time for starting new transfer operations. This field must be greater than or equal to the timestamp corresponding to the combintation of schedule/start/date and start/time/of/day, and is subject to the following: * If @end_time_of_day@ is not set and @schedule_end_date@ is set, then a default value of @23:59:59@ is used for @end_time_of_day@. * If @end_time_of_day@ is set and @schedule_end_date@ is not set, then INVALID/ARGUMENT is returned.
    endTimeOfDay :: (Core.Maybe TimeOfDay'),
    -- | Interval between the start of each scheduled TransferOperation. If unspecified, the default value is 24 hours. This value may not be less than 1 hour.
    repeatInterval :: (Core.Maybe Core.Duration),
    -- | The last day a transfer runs. Date boundaries are determined relative to UTC time. A job runs once per 24 hours within the following guidelines: * If @schedule_end_date@ and schedule/start/date are the same and in the future relative to UTC, the transfer is executed only one time. * If @schedule_end_date@ is later than @schedule_start_date@ and @schedule_end_date@ is in the future relative to UTC, the job runs each day at start/time/of_day through @schedule_end_date@.
    scheduleEndDate :: (Core.Maybe Date),
    -- | Required. The start date of a transfer. Date boundaries are determined relative to UTC time. If @schedule_start_date@ and start/time/of_day are in the past relative to the job\'s creation time, the transfer starts the day after you schedule the transfer request. __Note:__ When starting jobs at or near midnight UTC it is possible that a job starts later than expected. For example, if you send an outbound request on June 1 one millisecond prior to midnight UTC and the Storage Transfer Service server receives the request on June 2, then it creates a TransferJob with @schedule_start_date@ set to June 2 and a @start_time_of_day@ set to midnight UTC. The first scheduled TransferOperation takes place on June 3 at midnight UTC.
    scheduleStartDate :: (Core.Maybe Date),
    -- | The time in UTC that a transfer job is scheduled to run. Transfers may start later than this time. If @start_time_of_day@ is not specified: * One-time transfers run immediately. * Recurring transfers run immediately, and each day at midnight UTC, through schedule/end/date. If @start_time_of_day@ is specified: * One-time transfers run at the specified time. * Recurring transfers run at the specified time each day, through @schedule_end_date@.
    startTimeOfDay :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
newSchedule ::
  Schedule
newSchedule =
  Schedule
    { endTimeOfDay = Core.Nothing,
      repeatInterval = Core.Nothing,
      scheduleEndDate = Core.Nothing,
      scheduleStartDate = Core.Nothing,
      startTimeOfDay = Core.Nothing
    }

instance Core.FromJSON Schedule where
  parseJSON =
    Core.withObject
      "Schedule"
      ( \o ->
          Schedule
            Core.<$> (o Core..:? "endTimeOfDay")
            Core.<*> (o Core..:? "repeatInterval")
            Core.<*> (o Core..:? "scheduleEndDate")
            Core.<*> (o Core..:? "scheduleStartDate")
            Core.<*> (o Core..:? "startTimeOfDay")
      )

instance Core.ToJSON Schedule where
  toJSON Schedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTimeOfDay" Core..=) Core.<$> endTimeOfDay,
            ("repeatInterval" Core..=) Core.<$> repeatInterval,
            ("scheduleEndDate" Core..=) Core.<$> scheduleEndDate,
            ("scheduleStartDate" Core..=)
              Core.<$> scheduleStartDate,
            ("startTimeOfDay" Core..=) Core.<$> startTimeOfDay
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
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | A collection of counters that report the progress of a transfer operation.
--
-- /See:/ 'newTransferCounters' smart constructor.
data TransferCounters = TransferCounters
  { -- | Bytes that are copied to the data sink.
    bytesCopiedToSink :: (Core.Maybe Core.Int64),
    -- | Bytes that are deleted from the data sink.
    bytesDeletedFromSink :: (Core.Maybe Core.Int64),
    -- | Bytes that are deleted from the data source.
    bytesDeletedFromSource :: (Core.Maybe Core.Int64),
    -- | Bytes that failed to be deleted from the data sink.
    bytesFailedToDeleteFromSink :: (Core.Maybe Core.Int64),
    -- | Bytes found in the data source that are scheduled to be transferred, excluding any that are filtered based on object conditions or skipped due to sync.
    bytesFoundFromSource :: (Core.Maybe Core.Int64),
    -- | Bytes found only in the data sink that are scheduled to be deleted.
    bytesFoundOnlyFromSink :: (Core.Maybe Core.Int64),
    -- | Bytes in the data source that failed to be transferred or that failed to be deleted after being transferred.
    bytesFromSourceFailed :: (Core.Maybe Core.Int64),
    -- | Bytes in the data source that are not transferred because they already exist in the data sink.
    bytesFromSourceSkippedBySync :: (Core.Maybe Core.Int64),
    -- | For transfers involving PosixFilesystem only. Number of listing failures for each directory found at the source. Potential failures when listing a directory include permission failure or block failure. If listing a directory fails, no files in the directory are transferred.
    directoriesFailedToListFromSource :: (Core.Maybe Core.Int64),
    -- | For transfers involving PosixFilesystem only. Number of directories found while listing. For example, if the root directory of the transfer is @base\/@ and there are two other directories, @a\/@ and @b\/@ under this directory, the count after listing @base\/@, @base\/a\/@ and @base\/b\/@ is 3.
    directoriesFoundFromSource :: (Core.Maybe Core.Int64),
    -- | For transfers involving PosixFilesystem only. Number of successful listings for each directory found at the source.
    directoriesSuccessfullyListedFromSource :: (Core.Maybe Core.Int64),
    -- | Number of successfully cleaned up intermediate objects.
    intermediateObjectsCleanedUp :: (Core.Maybe Core.Int64),
    -- | Number of intermediate objects failed cleaned up.
    intermediateObjectsFailedCleanedUp :: (Core.Maybe Core.Int64),
    -- | Objects that are copied to the data sink.
    objectsCopiedToSink :: (Core.Maybe Core.Int64),
    -- | Objects that are deleted from the data sink.
    objectsDeletedFromSink :: (Core.Maybe Core.Int64),
    -- | Objects that are deleted from the data source.
    objectsDeletedFromSource :: (Core.Maybe Core.Int64),
    -- | Objects that failed to be deleted from the data sink.
    objectsFailedToDeleteFromSink :: (Core.Maybe Core.Int64),
    -- | Objects found in the data source that are scheduled to be transferred, excluding any that are filtered based on object conditions or skipped due to sync.
    objectsFoundFromSource :: (Core.Maybe Core.Int64),
    -- | Objects found only in the data sink that are scheduled to be deleted.
    objectsFoundOnlyFromSink :: (Core.Maybe Core.Int64),
    -- | Objects in the data source that failed to be transferred or that failed to be deleted after being transferred.
    objectsFromSourceFailed :: (Core.Maybe Core.Int64),
    -- | Objects in the data source that are not transferred because they already exist in the data sink.
    objectsFromSourceSkippedBySync :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferCounters' with the minimum fields required to make a request.
newTransferCounters ::
  TransferCounters
newTransferCounters =
  TransferCounters
    { bytesCopiedToSink = Core.Nothing,
      bytesDeletedFromSink = Core.Nothing,
      bytesDeletedFromSource = Core.Nothing,
      bytesFailedToDeleteFromSink = Core.Nothing,
      bytesFoundFromSource = Core.Nothing,
      bytesFoundOnlyFromSink = Core.Nothing,
      bytesFromSourceFailed = Core.Nothing,
      bytesFromSourceSkippedBySync = Core.Nothing,
      directoriesFailedToListFromSource = Core.Nothing,
      directoriesFoundFromSource = Core.Nothing,
      directoriesSuccessfullyListedFromSource = Core.Nothing,
      intermediateObjectsCleanedUp = Core.Nothing,
      intermediateObjectsFailedCleanedUp = Core.Nothing,
      objectsCopiedToSink = Core.Nothing,
      objectsDeletedFromSink = Core.Nothing,
      objectsDeletedFromSource = Core.Nothing,
      objectsFailedToDeleteFromSink = Core.Nothing,
      objectsFoundFromSource = Core.Nothing,
      objectsFoundOnlyFromSink = Core.Nothing,
      objectsFromSourceFailed = Core.Nothing,
      objectsFromSourceSkippedBySync = Core.Nothing
    }

instance Core.FromJSON TransferCounters where
  parseJSON =
    Core.withObject
      "TransferCounters"
      ( \o ->
          TransferCounters
            Core.<$> (o Core..:? "bytesCopiedToSink")
            Core.<*> (o Core..:? "bytesDeletedFromSink")
            Core.<*> (o Core..:? "bytesDeletedFromSource")
            Core.<*> (o Core..:? "bytesFailedToDeleteFromSink")
            Core.<*> (o Core..:? "bytesFoundFromSource")
            Core.<*> (o Core..:? "bytesFoundOnlyFromSink")
            Core.<*> (o Core..:? "bytesFromSourceFailed")
            Core.<*> (o Core..:? "bytesFromSourceSkippedBySync")
            Core.<*> (o Core..:? "directoriesFailedToListFromSource")
            Core.<*> (o Core..:? "directoriesFoundFromSource")
            Core.<*> ( o
                         Core..:? "directoriesSuccessfullyListedFromSource"
                     )
            Core.<*> (o Core..:? "intermediateObjectsCleanedUp")
            Core.<*> (o Core..:? "intermediateObjectsFailedCleanedUp")
            Core.<*> (o Core..:? "objectsCopiedToSink")
            Core.<*> (o Core..:? "objectsDeletedFromSink")
            Core.<*> (o Core..:? "objectsDeletedFromSource")
            Core.<*> (o Core..:? "objectsFailedToDeleteFromSink")
            Core.<*> (o Core..:? "objectsFoundFromSource")
            Core.<*> (o Core..:? "objectsFoundOnlyFromSink")
            Core.<*> (o Core..:? "objectsFromSourceFailed")
            Core.<*> (o Core..:? "objectsFromSourceSkippedBySync")
      )

instance Core.ToJSON TransferCounters where
  toJSON TransferCounters {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesCopiedToSink" Core..=) Core.. Core.AsText
              Core.<$> bytesCopiedToSink,
            ("bytesDeletedFromSink" Core..=) Core.. Core.AsText
              Core.<$> bytesDeletedFromSink,
            ("bytesDeletedFromSource" Core..=) Core.. Core.AsText
              Core.<$> bytesDeletedFromSource,
            ("bytesFailedToDeleteFromSink" Core..=)
              Core.. Core.AsText
              Core.<$> bytesFailedToDeleteFromSink,
            ("bytesFoundFromSource" Core..=) Core.. Core.AsText
              Core.<$> bytesFoundFromSource,
            ("bytesFoundOnlyFromSink" Core..=) Core.. Core.AsText
              Core.<$> bytesFoundOnlyFromSink,
            ("bytesFromSourceFailed" Core..=) Core.. Core.AsText
              Core.<$> bytesFromSourceFailed,
            ("bytesFromSourceSkippedBySync" Core..=)
              Core.. Core.AsText
              Core.<$> bytesFromSourceSkippedBySync,
            ("directoriesFailedToListFromSource" Core..=)
              Core.. Core.AsText
              Core.<$> directoriesFailedToListFromSource,
            ("directoriesFoundFromSource" Core..=)
              Core.. Core.AsText
              Core.<$> directoriesFoundFromSource,
            ("directoriesSuccessfullyListedFromSource" Core..=)
              Core.. Core.AsText
              Core.<$> directoriesSuccessfullyListedFromSource,
            ("intermediateObjectsCleanedUp" Core..=)
              Core.. Core.AsText
              Core.<$> intermediateObjectsCleanedUp,
            ("intermediateObjectsFailedCleanedUp" Core..=)
              Core.. Core.AsText
              Core.<$> intermediateObjectsFailedCleanedUp,
            ("objectsCopiedToSink" Core..=) Core.. Core.AsText
              Core.<$> objectsCopiedToSink,
            ("objectsDeletedFromSink" Core..=) Core.. Core.AsText
              Core.<$> objectsDeletedFromSink,
            ("objectsDeletedFromSource" Core..=)
              Core.. Core.AsText
              Core.<$> objectsDeletedFromSource,
            ("objectsFailedToDeleteFromSink" Core..=)
              Core.. Core.AsText
              Core.<$> objectsFailedToDeleteFromSink,
            ("objectsFoundFromSource" Core..=) Core.. Core.AsText
              Core.<$> objectsFoundFromSource,
            ("objectsFoundOnlyFromSink" Core..=)
              Core.. Core.AsText
              Core.<$> objectsFoundOnlyFromSink,
            ("objectsFromSourceFailed" Core..=)
              Core.. Core.AsText
              Core.<$> objectsFromSourceFailed,
            ("objectsFromSourceSkippedBySync" Core..=)
              Core.. Core.AsText
              Core.<$> objectsFromSourceSkippedBySync
          ]
      )

-- | This resource represents the configuration of a transfer job that runs periodically.
--
-- /See:/ 'newTransferJob' smart constructor.
data TransferJob = TransferJob
  { -- | Output only. The time that the transfer job was created.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time that the transfer job was deleted.
    deletionTime :: (Core.Maybe Core.DateTime),
    -- | A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The time that the transfer job was last modified.
    lastModificationTime :: (Core.Maybe Core.DateTime),
    -- | The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
    latestOperationName :: (Core.Maybe Core.Text),
    -- | Logging configuration.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY/EXISTS error. This name must start with @\"transferJobs\/\"@ prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with @transferJobs\/OPI@ specifically. For all other transfer types, this name must not start with @transferJobs\/OPI@. Non-PosixFilesystem example: @\"transferJobs\/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$\"@ PosixFilesystem example: @\"transferJobs\/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$\"@ Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID/ARGUMENT error.
    name :: (Core.Maybe Core.Text),
    -- | Notification configuration. This is not supported for transfers involving PosixFilesystem.
    notificationConfig :: (Core.Maybe NotificationConfig),
    -- | The ID of the Google Cloud project that owns the job.
    projectId :: (Core.Maybe Core.Text),
    -- | Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
    schedule :: (Core.Maybe Schedule),
    -- | Status of the job. This value MUST be specified for @CreateTransferJobRequests@. __Note:__ The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
    status :: (Core.Maybe TransferJob_Status),
    -- | Transfer specification.
    transferSpec :: (Core.Maybe TransferSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferJob' with the minimum fields required to make a request.
newTransferJob ::
  TransferJob
newTransferJob =
  TransferJob
    { creationTime = Core.Nothing,
      deletionTime = Core.Nothing,
      description = Core.Nothing,
      lastModificationTime = Core.Nothing,
      latestOperationName = Core.Nothing,
      loggingConfig = Core.Nothing,
      name = Core.Nothing,
      notificationConfig = Core.Nothing,
      projectId = Core.Nothing,
      schedule = Core.Nothing,
      status = Core.Nothing,
      transferSpec = Core.Nothing
    }

instance Core.FromJSON TransferJob where
  parseJSON =
    Core.withObject
      "TransferJob"
      ( \o ->
          TransferJob
            Core.<$> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "deletionTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "lastModificationTime")
            Core.<*> (o Core..:? "latestOperationName")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationConfig")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "schedule")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "transferSpec")
      )

instance Core.ToJSON TransferJob where
  toJSON TransferJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationTime" Core..=) Core.<$> creationTime,
            ("deletionTime" Core..=) Core.<$> deletionTime,
            ("description" Core..=) Core.<$> description,
            ("lastModificationTime" Core..=)
              Core.<$> lastModificationTime,
            ("latestOperationName" Core..=)
              Core.<$> latestOperationName,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("name" Core..=) Core.<$> name,
            ("notificationConfig" Core..=)
              Core.<$> notificationConfig,
            ("projectId" Core..=) Core.<$> projectId,
            ("schedule" Core..=) Core.<$> schedule,
            ("status" Core..=) Core.<$> status,
            ("transferSpec" Core..=) Core.<$> transferSpec
          ]
      )

-- | Specifies where the manifest is located.
--
-- /See:/ 'newTransferManifest' smart constructor.
newtype TransferManifest = TransferManifest
  { -- | Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the transfer must have @storage.objects.get@ permission for this object. An example path is @gs:\/\/bucket_name\/path\/manifest.csv@.
    location :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferManifest' with the minimum fields required to make a request.
newTransferManifest ::
  TransferManifest
newTransferManifest = TransferManifest {location = Core.Nothing}

instance Core.FromJSON TransferManifest where
  parseJSON =
    Core.withObject
      "TransferManifest"
      ( \o ->
          TransferManifest Core.<$> (o Core..:? "location")
      )

instance Core.ToJSON TransferManifest where
  toJSON TransferManifest {..} =
    Core.object
      ( Core.catMaybes
          [("location" Core..=) Core.<$> location]
      )

-- | A description of the execution of a transfer.
--
-- /See:/ 'newTransferOperation' smart constructor.
data TransferOperation = TransferOperation
  { -- | Information about the progress of the transfer operation.
    counters :: (Core.Maybe TransferCounters),
    -- | End time of this transfer execution.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Summarizes errors encountered with sample error log entries.
    errorBreakdowns :: (Core.Maybe [ErrorSummary]),
    -- | A globally unique ID assigned by the system.
    name :: (Core.Maybe Core.Text),
    -- | Notification configuration.
    notificationConfig :: (Core.Maybe NotificationConfig),
    -- | The ID of the Google Cloud project that owns the operation.
    projectId :: (Core.Maybe Core.Text),
    -- | Start time of this transfer execution.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Status of the transfer operation.
    status :: (Core.Maybe TransferOperation_Status),
    -- | The name of the transfer job that triggers this transfer operation.
    transferJobName :: (Core.Maybe Core.Text),
    -- | Transfer specification.
    transferSpec :: (Core.Maybe TransferSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferOperation' with the minimum fields required to make a request.
newTransferOperation ::
  TransferOperation
newTransferOperation =
  TransferOperation
    { counters = Core.Nothing,
      endTime = Core.Nothing,
      errorBreakdowns = Core.Nothing,
      name = Core.Nothing,
      notificationConfig = Core.Nothing,
      projectId = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      transferJobName = Core.Nothing,
      transferSpec = Core.Nothing
    }

instance Core.FromJSON TransferOperation where
  parseJSON =
    Core.withObject
      "TransferOperation"
      ( \o ->
          TransferOperation
            Core.<$> (o Core..:? "counters")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errorBreakdowns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationConfig")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "transferJobName")
            Core.<*> (o Core..:? "transferSpec")
      )

instance Core.ToJSON TransferOperation where
  toJSON TransferOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("counters" Core..=) Core.<$> counters,
            ("endTime" Core..=) Core.<$> endTime,
            ("errorBreakdowns" Core..=) Core.<$> errorBreakdowns,
            ("name" Core..=) Core.<$> name,
            ("notificationConfig" Core..=)
              Core.<$> notificationConfig,
            ("projectId" Core..=) Core.<$> projectId,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("transferJobName" Core..=) Core.<$> transferJobName,
            ("transferSpec" Core..=) Core.<$> transferSpec
          ]
      )

-- | TransferOptions define the actions to be performed on objects in a transfer.
--
-- /See:/ 'newTransferOptions' smart constructor.
data TransferOptions = TransferOptions
  { -- | Whether objects should be deleted from the source after they are transferred to the sink. __Note:__ This option and delete/objects/unique/in/sink are mutually exclusive.
    deleteObjectsFromSourceAfterTransfer :: (Core.Maybe Core.Bool),
    -- | Whether objects that exist only in the sink should be deleted. __Note:__ This option and delete/objects/from/source/after_transfer are mutually exclusive.
    deleteObjectsUniqueInSink :: (Core.Maybe Core.Bool),
    -- | Represents the selected metadata options for a transfer job. This feature is in Preview.
    metadataOptions :: (Core.Maybe MetadataOptions),
    -- | When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
    overwriteObjectsAlreadyExistingInSink :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferOptions' with the minimum fields required to make a request.
newTransferOptions ::
  TransferOptions
newTransferOptions =
  TransferOptions
    { deleteObjectsFromSourceAfterTransfer = Core.Nothing,
      deleteObjectsUniqueInSink = Core.Nothing,
      metadataOptions = Core.Nothing,
      overwriteObjectsAlreadyExistingInSink = Core.Nothing
    }

instance Core.FromJSON TransferOptions where
  parseJSON =
    Core.withObject
      "TransferOptions"
      ( \o ->
          TransferOptions
            Core.<$> (o Core..:? "deleteObjectsFromSourceAfterTransfer")
            Core.<*> (o Core..:? "deleteObjectsUniqueInSink")
            Core.<*> (o Core..:? "metadataOptions")
            Core.<*> (o Core..:? "overwriteObjectsAlreadyExistingInSink")
      )

instance Core.ToJSON TransferOptions where
  toJSON TransferOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleteObjectsFromSourceAfterTransfer" Core..=)
              Core.<$> deleteObjectsFromSourceAfterTransfer,
            ("deleteObjectsUniqueInSink" Core..=)
              Core.<$> deleteObjectsUniqueInSink,
            ("metadataOptions" Core..=) Core.<$> metadataOptions,
            ("overwriteObjectsAlreadyExistingInSink" Core..=)
              Core.<$> overwriteObjectsAlreadyExistingInSink
          ]
      )

-- | Configuration for running a transfer.
--
-- /See:/ 'newTransferSpec' smart constructor.
data TransferSpec = TransferSpec
  { -- | An AWS S3 data source.
    awsS3DataSource :: (Core.Maybe AwsS3Data),
    -- | An Azure Blob Storage data source.
    azureBlobStorageDataSource :: (Core.Maybe AzureBlobStorageData),
    -- | A Cloud Storage data sink.
    gcsDataSink :: (Core.Maybe GcsData),
    -- | A Cloud Storage data source.
    gcsDataSource :: (Core.Maybe GcsData),
    -- | Cloud Storage intermediate data location.
    gcsIntermediateDataLocation :: (Core.Maybe GcsData),
    -- | An HTTP URL data source.
    httpDataSource :: (Core.Maybe HttpData),
    -- | Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects\' \"last modification time\" do not exclude objects in a data sink.
    objectConditions :: (Core.Maybe ObjectConditions),
    -- | A POSIX Filesystem data sink.
    posixDataSink :: (Core.Maybe PosixFilesystem),
    -- | A POSIX Filesystem data source.
    posixDataSource :: (Core.Maybe PosixFilesystem),
    -- | Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
    sinkAgentPoolName :: (Core.Maybe Core.Text),
    -- | Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
    sourceAgentPoolName :: (Core.Maybe Core.Text),
    -- | A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
    transferManifest :: (Core.Maybe TransferManifest),
    -- | If the option delete/objects/unique/in/sink is @true@ and time-based object conditions such as \'last modification time\' are specified, the request fails with an INVALID_ARGUMENT error.
    transferOptions :: (Core.Maybe TransferOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferSpec' with the minimum fields required to make a request.
newTransferSpec ::
  TransferSpec
newTransferSpec =
  TransferSpec
    { awsS3DataSource = Core.Nothing,
      azureBlobStorageDataSource = Core.Nothing,
      gcsDataSink = Core.Nothing,
      gcsDataSource = Core.Nothing,
      gcsIntermediateDataLocation = Core.Nothing,
      httpDataSource = Core.Nothing,
      objectConditions = Core.Nothing,
      posixDataSink = Core.Nothing,
      posixDataSource = Core.Nothing,
      sinkAgentPoolName = Core.Nothing,
      sourceAgentPoolName = Core.Nothing,
      transferManifest = Core.Nothing,
      transferOptions = Core.Nothing
    }

instance Core.FromJSON TransferSpec where
  parseJSON =
    Core.withObject
      "TransferSpec"
      ( \o ->
          TransferSpec
            Core.<$> (o Core..:? "awsS3DataSource")
            Core.<*> (o Core..:? "azureBlobStorageDataSource")
            Core.<*> (o Core..:? "gcsDataSink")
            Core.<*> (o Core..:? "gcsDataSource")
            Core.<*> (o Core..:? "gcsIntermediateDataLocation")
            Core.<*> (o Core..:? "httpDataSource")
            Core.<*> (o Core..:? "objectConditions")
            Core.<*> (o Core..:? "posixDataSink")
            Core.<*> (o Core..:? "posixDataSource")
            Core.<*> (o Core..:? "sinkAgentPoolName")
            Core.<*> (o Core..:? "sourceAgentPoolName")
            Core.<*> (o Core..:? "transferManifest")
            Core.<*> (o Core..:? "transferOptions")
      )

instance Core.ToJSON TransferSpec where
  toJSON TransferSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsS3DataSource" Core..=)
              Core.<$> awsS3DataSource,
            ("azureBlobStorageDataSource" Core..=)
              Core.<$> azureBlobStorageDataSource,
            ("gcsDataSink" Core..=) Core.<$> gcsDataSink,
            ("gcsDataSource" Core..=) Core.<$> gcsDataSource,
            ("gcsIntermediateDataLocation" Core..=)
              Core.<$> gcsIntermediateDataLocation,
            ("httpDataSource" Core..=) Core.<$> httpDataSource,
            ("objectConditions" Core..=)
              Core.<$> objectConditions,
            ("posixDataSink" Core..=) Core.<$> posixDataSink,
            ("posixDataSource" Core..=) Core.<$> posixDataSource,
            ("sinkAgentPoolName" Core..=)
              Core.<$> sinkAgentPoolName,
            ("sourceAgentPoolName" Core..=)
              Core.<$> sourceAgentPoolName,
            ("transferManifest" Core..=)
              Core.<$> transferManifest,
            ("transferOptions" Core..=)
              Core.<$> transferOptions
          ]
      )

-- | Request passed to UpdateTransferJob.
--
-- /See:/ 'newUpdateTransferJobRequest' smart constructor.
data UpdateTransferJobRequest = UpdateTransferJobRequest
  { -- | Required. The ID of the Google Cloud project that owns the job.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. The job to update. @transferJob@ is expected to specify one or more of five fields: description, transfer/spec, notification/config, logging/config, and status. An @UpdateTransferJobRequest@ that specifies other fields are rejected with the error INVALID/ARGUMENT. Updating a job status to DELETED requires @storagetransfer.jobs.delete@ permissions.
    transferJob :: (Core.Maybe TransferJob),
    -- | The field mask of the fields in @transferJob@ that are to be updated in this request. Fields in @transferJob@ that can be updated are: description, transfer/spec, notification/config, logging/config, and status. To update the @transfer_spec@ of the job, a complete transfer specification must be provided. An incomplete specification missing any required fields is rejected with the error INVALID/ARGUMENT.
    updateTransferJobFieldMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTransferJobRequest' with the minimum fields required to make a request.
newUpdateTransferJobRequest ::
  UpdateTransferJobRequest
newUpdateTransferJobRequest =
  UpdateTransferJobRequest
    { projectId = Core.Nothing,
      transferJob = Core.Nothing,
      updateTransferJobFieldMask = Core.Nothing
    }

instance Core.FromJSON UpdateTransferJobRequest where
  parseJSON =
    Core.withObject
      "UpdateTransferJobRequest"
      ( \o ->
          UpdateTransferJobRequest
            Core.<$> (o Core..:? "projectId")
            Core.<*> (o Core..:? "transferJob")
            Core.<*> (o Core..:? "updateTransferJobFieldMask")
      )

instance Core.ToJSON UpdateTransferJobRequest where
  toJSON UpdateTransferJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectId" Core..=) Core.<$> projectId,
            ("transferJob" Core..=) Core.<$> transferJob,
            ("updateTransferJobFieldMask" Core..=)
              Core.<$> updateTransferJobFieldMask
          ]
      )
