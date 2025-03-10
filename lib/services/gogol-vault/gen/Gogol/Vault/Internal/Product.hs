{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Vault.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Vault.Internal.Product
  ( -- * AccountCount
    AccountCount (..),
    newAccountCount,

    -- * AccountCountError
    AccountCountError (..),
    newAccountCountError,

    -- * AccountInfo
    AccountInfo (..),
    newAccountInfo,

    -- * AddHeldAccountResult
    AddHeldAccountResult (..),
    newAddHeldAccountResult,

    -- * AddHeldAccountsRequest
    AddHeldAccountsRequest (..),
    newAddHeldAccountsRequest,

    -- * AddHeldAccountsResponse
    AddHeldAccountsResponse (..),
    newAddHeldAccountsResponse,

    -- * AddMatterPermissionsRequest
    AddMatterPermissionsRequest (..),
    newAddMatterPermissionsRequest,

    -- * CalendarExportOptions
    CalendarExportOptions (..),
    newCalendarExportOptions,

    -- * CalendarOptions
    CalendarOptions (..),
    newCalendarOptions,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CloseMatterRequest
    CloseMatterRequest (..),
    newCloseMatterRequest,

    -- * CloseMatterResponse
    CloseMatterResponse (..),
    newCloseMatterResponse,

    -- * CloudStorageFile
    CloudStorageFile (..),
    newCloudStorageFile,

    -- * CloudStorageSink
    CloudStorageSink (..),
    newCloudStorageSink,

    -- * CorpusQuery
    CorpusQuery (..),
    newCorpusQuery,

    -- * CountArtifactsMetadata
    CountArtifactsMetadata (..),
    newCountArtifactsMetadata,

    -- * CountArtifactsRequest
    CountArtifactsRequest (..),
    newCountArtifactsRequest,

    -- * CountArtifactsResponse
    CountArtifactsResponse (..),
    newCountArtifactsResponse,

    -- * DriveDocumentIds
    DriveDocumentIds (..),
    newDriveDocumentIds,

    -- * DriveDocumentInfo
    DriveDocumentInfo (..),
    newDriveDocumentInfo,

    -- * DriveExportOptions
    DriveExportOptions (..),
    newDriveExportOptions,

    -- * DriveOptions
    DriveOptions (..),
    newDriveOptions,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Export
    Export (..),
    newExport,

    -- * ExportOptions
    ExportOptions (..),
    newExportOptions,

    -- * ExportStats
    ExportStats (..),
    newExportStats,

    -- * GeminiExportOptions
    GeminiExportOptions (..),
    newGeminiExportOptions,

    -- * GeminiOptions
    GeminiOptions (..),
    newGeminiOptions,

    -- * GroupsCountResult
    GroupsCountResult (..),
    newGroupsCountResult,

    -- * GroupsExportOptions
    GroupsExportOptions (..),
    newGroupsExportOptions,

    -- * HangoutsChatExportOptions
    HangoutsChatExportOptions (..),
    newHangoutsChatExportOptions,

    -- * HangoutsChatInfo
    HangoutsChatInfo (..),
    newHangoutsChatInfo,

    -- * HangoutsChatOptions
    HangoutsChatOptions (..),
    newHangoutsChatOptions,

    -- * HeldAccount
    HeldAccount (..),
    newHeldAccount,

    -- * HeldCalendarQuery
    HeldCalendarQuery (..),
    newHeldCalendarQuery,

    -- * HeldDriveQuery
    HeldDriveQuery (..),
    newHeldDriveQuery,

    -- * HeldGroupsQuery
    HeldGroupsQuery (..),
    newHeldGroupsQuery,

    -- * HeldHangoutsChatQuery
    HeldHangoutsChatQuery (..),
    newHeldHangoutsChatQuery,

    -- * HeldMailQuery
    HeldMailQuery (..),
    newHeldMailQuery,

    -- * HeldOrgUnit
    HeldOrgUnit (..),
    newHeldOrgUnit,

    -- * HeldVoiceQuery
    HeldVoiceQuery (..),
    newHeldVoiceQuery,

    -- * Hold
    Hold (..),
    newHold,

    -- * ListExportsResponse
    ListExportsResponse (..),
    newListExportsResponse,

    -- * ListHeldAccountsResponse
    ListHeldAccountsResponse (..),
    newListHeldAccountsResponse,

    -- * ListHoldsResponse
    ListHoldsResponse (..),
    newListHoldsResponse,

    -- * ListMattersResponse
    ListMattersResponse (..),
    newListMattersResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListSavedQueriesResponse
    ListSavedQueriesResponse (..),
    newListSavedQueriesResponse,

    -- * MailCountResult
    MailCountResult (..),
    newMailCountResult,

    -- * MailExportOptions
    MailExportOptions (..),
    newMailExportOptions,

    -- * MailOptions
    MailOptions (..),
    newMailOptions,

    -- * Matter
    Matter (..),
    newMatter,

    -- * MatterPermission
    MatterPermission (..),
    newMatterPermission,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OrgUnitInfo
    OrgUnitInfo (..),
    newOrgUnitInfo,

    -- * Query
    Query (..),
    newQuery,

    -- * RemoveHeldAccountsRequest
    RemoveHeldAccountsRequest (..),
    newRemoveHeldAccountsRequest,

    -- * RemoveHeldAccountsResponse
    RemoveHeldAccountsResponse (..),
    newRemoveHeldAccountsResponse,

    -- * RemoveMatterPermissionsRequest
    RemoveMatterPermissionsRequest (..),
    newRemoveMatterPermissionsRequest,

    -- * ReopenMatterRequest
    ReopenMatterRequest (..),
    newReopenMatterRequest,

    -- * ReopenMatterResponse
    ReopenMatterResponse (..),
    newReopenMatterResponse,

    -- * SavedQuery
    SavedQuery (..),
    newSavedQuery,

    -- * SharedDriveInfo
    SharedDriveInfo (..),
    newSharedDriveInfo,

    -- * SitesUrlInfo
    SitesUrlInfo (..),
    newSitesUrlInfo,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TeamDriveInfo
    TeamDriveInfo (..),
    newTeamDriveInfo,

    -- * UndeleteMatterRequest
    UndeleteMatterRequest (..),
    newUndeleteMatterRequest,

    -- * UserInfo
    UserInfo (..),
    newUserInfo,

    -- * VoiceExportOptions
    VoiceExportOptions (..),
    newVoiceExportOptions,

    -- * VoiceOptions
    VoiceOptions (..),
    newVoiceOptions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vault.Internal.Sum

-- | The results count for each account.
--
-- /See:/ 'newAccountCount' smart constructor.
data AccountCount = AccountCount
  { -- | Account owner.
    account :: (Core.Maybe UserInfo),
    -- | The number of results (messages or files) found for this account.
    count :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountCount' with the minimum fields required to make a request.
newAccountCount ::
  AccountCount
newAccountCount =
  AccountCount {account = Core.Nothing, count = Core.Nothing}

instance Core.FromJSON AccountCount where
  parseJSON =
    Core.withObject
      "AccountCount"
      ( \o ->
          AccountCount
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON AccountCount where
  toJSON AccountCount {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("count" Core..=) Core.. Core.AsText Core.<$> count
          ]
      )

-- | An error that occurred when querying a specific account
--
-- /See:/ 'newAccountCountError' smart constructor.
data AccountCountError = AccountCountError
  { -- | Account owner.
    account :: (Core.Maybe UserInfo),
    -- | Account query error.
    errorType :: (Core.Maybe AccountCountError_ErrorType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountCountError' with the minimum fields required to make a request.
newAccountCountError ::
  AccountCountError
newAccountCountError =
  AccountCountError
    { account = Core.Nothing,
      errorType = Core.Nothing
    }

instance Core.FromJSON AccountCountError where
  parseJSON =
    Core.withObject
      "AccountCountError"
      ( \o ->
          AccountCountError
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "errorType")
      )

instance Core.ToJSON AccountCountError where
  toJSON AccountCountError {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("errorType" Core..=) Core.<$> errorType
          ]
      )

-- | The accounts to search
--
-- /See:/ 'newAccountInfo' smart constructor.
newtype AccountInfo = AccountInfo
  { -- | A set of accounts to search.
    emails :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountInfo' with the minimum fields required to make a request.
newAccountInfo ::
  AccountInfo
newAccountInfo = AccountInfo {emails = Core.Nothing}

instance Core.FromJSON AccountInfo where
  parseJSON =
    Core.withObject
      "AccountInfo"
      (\o -> AccountInfo Core.<$> (o Core..:? "emails"))

instance Core.ToJSON AccountInfo where
  toJSON AccountInfo {..} =
    Core.object (Core.catMaybes [("emails" Core..=) Core.<$> emails])

-- | The status of each account creation, and the __HeldAccount__, if successful.
--
-- /See:/ 'newAddHeldAccountResult' smart constructor.
data AddHeldAccountResult = AddHeldAccountResult
  { -- | Returned when the account was successfully created.
    account :: (Core.Maybe HeldAccount),
    -- | Reports the request status. If it failed, returns an error message.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddHeldAccountResult' with the minimum fields required to make a request.
newAddHeldAccountResult ::
  AddHeldAccountResult
newAddHeldAccountResult =
  AddHeldAccountResult
    { account = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON AddHeldAccountResult where
  parseJSON =
    Core.withObject
      "AddHeldAccountResult"
      ( \o ->
          AddHeldAccountResult
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AddHeldAccountResult where
  toJSON AddHeldAccountResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Add a list of accounts to a hold.
--
-- /See:/ 'newAddHeldAccountsRequest' smart constructor.
data AddHeldAccountsRequest = AddHeldAccountsRequest
  { -- | A comma-separated list of the account IDs of the accounts to add to the hold. Specify either __emails__ or **account_ids**, but not both.
    accountIds :: (Core.Maybe [Core.Text]),
    -- | A comma-separated list of the emails of the accounts to add to the hold. Specify either __emails__ or **account_ids**, but not both.
    emails :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddHeldAccountsRequest' with the minimum fields required to make a request.
newAddHeldAccountsRequest ::
  AddHeldAccountsRequest
newAddHeldAccountsRequest =
  AddHeldAccountsRequest
    { accountIds = Core.Nothing,
      emails = Core.Nothing
    }

instance Core.FromJSON AddHeldAccountsRequest where
  parseJSON =
    Core.withObject
      "AddHeldAccountsRequest"
      ( \o ->
          AddHeldAccountsRequest
            Core.<$> (o Core..:? "accountIds")
            Core.<*> (o Core..:? "emails")
      )

instance Core.ToJSON AddHeldAccountsRequest where
  toJSON AddHeldAccountsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountIds" Core..=) Core.<$> accountIds,
            ("emails" Core..=) Core.<$> emails
          ]
      )

-- | Response for batch create held accounts.
--
-- /See:/ 'newAddHeldAccountsResponse' smart constructor.
newtype AddHeldAccountsResponse = AddHeldAccountsResponse
  { -- | The list of responses, in the same order as the batch request.
    responses :: (Core.Maybe [AddHeldAccountResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddHeldAccountsResponse' with the minimum fields required to make a request.
newAddHeldAccountsResponse ::
  AddHeldAccountsResponse
newAddHeldAccountsResponse =
  AddHeldAccountsResponse {responses = Core.Nothing}

instance Core.FromJSON AddHeldAccountsResponse where
  parseJSON =
    Core.withObject
      "AddHeldAccountsResponse"
      (\o -> AddHeldAccountsResponse Core.<$> (o Core..:? "responses"))

instance Core.ToJSON AddHeldAccountsResponse where
  toJSON AddHeldAccountsResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Add an account with the permission specified. The role cannot be owner. If an account already has a role in the matter, the existing role is overwritten.
--
-- /See:/ 'newAddMatterPermissionsRequest' smart constructor.
data AddMatterPermissionsRequest = AddMatterPermissionsRequest
  { -- | Only relevant if __sendEmails__ is __true__. To CC the requestor in the email message, set to __true__. To not CC requestor, set to __false__.
    ccMe :: (Core.Maybe Core.Bool),
    -- | The account and its role to add.
    matterPermission :: (Core.Maybe MatterPermission),
    -- | To send a notification email to the added account, set to __true__. To not send a notification email, set to __false__.
    sendEmails :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddMatterPermissionsRequest' with the minimum fields required to make a request.
newAddMatterPermissionsRequest ::
  AddMatterPermissionsRequest
newAddMatterPermissionsRequest =
  AddMatterPermissionsRequest
    { ccMe = Core.Nothing,
      matterPermission = Core.Nothing,
      sendEmails = Core.Nothing
    }

instance Core.FromJSON AddMatterPermissionsRequest where
  parseJSON =
    Core.withObject
      "AddMatterPermissionsRequest"
      ( \o ->
          AddMatterPermissionsRequest
            Core.<$> (o Core..:? "ccMe")
            Core.<*> (o Core..:? "matterPermission")
            Core.<*> (o Core..:? "sendEmails")
      )

instance Core.ToJSON AddMatterPermissionsRequest where
  toJSON AddMatterPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ccMe" Core..=) Core.<$> ccMe,
            ("matterPermission" Core..=) Core.<$> matterPermission,
            ("sendEmails" Core..=) Core.<$> sendEmails
          ]
      )

-- | The options for Calendar exports.
--
-- /See:/ 'newCalendarExportOptions' smart constructor.
newtype CalendarExportOptions = CalendarExportOptions
  { -- | The file format for exported text messages.
    exportFormat :: (Core.Maybe CalendarExportOptions_ExportFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarExportOptions' with the minimum fields required to make a request.
newCalendarExportOptions ::
  CalendarExportOptions
newCalendarExportOptions =
  CalendarExportOptions {exportFormat = Core.Nothing}

instance Core.FromJSON CalendarExportOptions where
  parseJSON =
    Core.withObject
      "CalendarExportOptions"
      (\o -> CalendarExportOptions Core.<$> (o Core..:? "exportFormat"))

instance Core.ToJSON CalendarExportOptions where
  toJSON CalendarExportOptions {..} =
    Core.object
      (Core.catMaybes [("exportFormat" Core..=) Core.<$> exportFormat])

-- | Additional options for Calendar search
--
-- /See:/ 'newCalendarOptions' smart constructor.
data CalendarOptions = CalendarOptions
  { -- | Matches only those events whose location contains all of the words in the given set. If the string contains quoted phrases, this method only matches those events whose location contain the exact phrase. Entries in the set are considered in \"and\". Word splitting example: [\"New Zealand\"] vs [\"New\",\"Zealand\"] \"New Zealand\": matched by both \"New and better Zealand\": only matched by the later
    locationQuery :: (Core.Maybe [Core.Text]),
    -- | Matches only those events that do not contain any of the words in the given set in title, description, location, or attendees. Entries in the set are considered in \"or\".
    minusWords :: (Core.Maybe [Core.Text]),
    -- | Matches only those events whose attendees contain all of the words in the given set. Entries in the set are considered in \"and\".
    peopleQuery :: (Core.Maybe [Core.Text]),
    -- | Matches only events for which the custodian gave one of these responses. If the set is empty or contains ATTENDEE/RESPONSE/UNSPECIFIED there will be no filtering on responses.
    responseStatuses :: (Core.Maybe [CalendarOptions_ResponseStatusesItem]),
    -- | Search the current version of the Calendar event, but export the contents of the last version saved before 12:00 AM UTC on the specified date. Enter the date in UTC.
    versionDate :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarOptions' with the minimum fields required to make a request.
newCalendarOptions ::
  CalendarOptions
newCalendarOptions =
  CalendarOptions
    { locationQuery = Core.Nothing,
      minusWords = Core.Nothing,
      peopleQuery = Core.Nothing,
      responseStatuses = Core.Nothing,
      versionDate = Core.Nothing
    }

instance Core.FromJSON CalendarOptions where
  parseJSON =
    Core.withObject
      "CalendarOptions"
      ( \o ->
          CalendarOptions
            Core.<$> (o Core..:? "locationQuery")
            Core.<*> (o Core..:? "minusWords")
            Core.<*> (o Core..:? "peopleQuery")
            Core.<*> (o Core..:? "responseStatuses")
            Core.<*> (o Core..:? "versionDate")
      )

instance Core.ToJSON CalendarOptions where
  toJSON CalendarOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("locationQuery" Core..=) Core.<$> locationQuery,
            ("minusWords" Core..=) Core.<$> minusWords,
            ("peopleQuery" Core..=) Core.<$> peopleQuery,
            ("responseStatuses" Core..=) Core.<$> responseStatuses,
            ("versionDate" Core..=) Core.<$> versionDate
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

-- | Close a matter by ID.
--
-- /See:/ 'newCloseMatterRequest' smart constructor.
data CloseMatterRequest = CloseMatterRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloseMatterRequest' with the minimum fields required to make a request.
newCloseMatterRequest ::
  CloseMatterRequest
newCloseMatterRequest = CloseMatterRequest

instance Core.FromJSON CloseMatterRequest where
  parseJSON =
    Core.withObject
      "CloseMatterRequest"
      (\o -> Core.pure CloseMatterRequest)

instance Core.ToJSON CloseMatterRequest where
  toJSON = Core.const Core.emptyObject

-- | Response to a CloseMatterRequest.
--
-- /See:/ 'newCloseMatterResponse' smart constructor.
newtype CloseMatterResponse = CloseMatterResponse
  { -- | The updated matter, with state __CLOSED__.
    matter :: (Core.Maybe Matter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloseMatterResponse' with the minimum fields required to make a request.
newCloseMatterResponse ::
  CloseMatterResponse
newCloseMatterResponse = CloseMatterResponse {matter = Core.Nothing}

instance Core.FromJSON CloseMatterResponse where
  parseJSON =
    Core.withObject
      "CloseMatterResponse"
      (\o -> CloseMatterResponse Core.<$> (o Core..:? "matter"))

instance Core.ToJSON CloseMatterResponse where
  toJSON CloseMatterResponse {..} =
    Core.object (Core.catMaybes [("matter" Core..=) Core.<$> matter])

-- | The export file in Cloud Storage
--
-- /See:/ 'newCloudStorageFile' smart constructor.
data CloudStorageFile = CloudStorageFile
  { -- | The name of the Cloud Storage bucket for the export file. You can use this value in the Cloud Storage <https://cloud.google.com/storage/docs/json_api JSON API> or <https://cloud.google.com/storage/docs/xml-api XML API>, but not to list the bucket contents. Instead, you can <https://cloud.google.com/storage/docs/json_api/v1/objects/get get individual export files> by object name.
    bucketName :: (Core.Maybe Core.Text),
    -- | The md5 hash of the file.
    md5Hash :: (Core.Maybe Core.Text),
    -- | The name of the Cloud Storage object for the export file. You can use this value in the Cloud Storage <https://cloud.google.com/storage/docs/json_api JSON API> or <https://cloud.google.com/storage/docs/xml-api XML API>.
    objectName :: (Core.Maybe Core.Text),
    -- | The export file size.
    size :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudStorageFile' with the minimum fields required to make a request.
newCloudStorageFile ::
  CloudStorageFile
newCloudStorageFile =
  CloudStorageFile
    { bucketName = Core.Nothing,
      md5Hash = Core.Nothing,
      objectName = Core.Nothing,
      size = Core.Nothing
    }

instance Core.FromJSON CloudStorageFile where
  parseJSON =
    Core.withObject
      "CloudStorageFile"
      ( \o ->
          CloudStorageFile
            Core.<$> (o Core..:? "bucketName")
            Core.<*> (o Core..:? "md5Hash")
            Core.<*> (o Core..:? "objectName")
            Core.<*> (o Core..:? "size" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON CloudStorageFile where
  toJSON CloudStorageFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketName" Core..=) Core.<$> bucketName,
            ("md5Hash" Core..=) Core.<$> md5Hash,
            ("objectName" Core..=) Core.<$> objectName,
            ("size" Core..=) Core.. Core.AsText Core.<$> size
          ]
      )

-- | Export sink for Cloud Storage files.
--
-- /See:/ 'newCloudStorageSink' smart constructor.
newtype CloudStorageSink = CloudStorageSink
  { -- | Output only. The exported files in Cloud Storage.
    files :: (Core.Maybe [CloudStorageFile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudStorageSink' with the minimum fields required to make a request.
newCloudStorageSink ::
  CloudStorageSink
newCloudStorageSink = CloudStorageSink {files = Core.Nothing}

instance Core.FromJSON CloudStorageSink where
  parseJSON =
    Core.withObject
      "CloudStorageSink"
      (\o -> CloudStorageSink Core.<$> (o Core..:? "files"))

instance Core.ToJSON CloudStorageSink where
  toJSON CloudStorageSink {..} =
    Core.object (Core.catMaybes [("files" Core..=) Core.<$> files])

-- | Service-specific options for holds.
--
-- /See:/ 'newCorpusQuery' smart constructor.
data CorpusQuery = CorpusQuery
  { -- | Service-specific options for Calendar holds. If set, __CorpusType__ must be __CALENDAR__.
    calendarQuery :: (Core.Maybe HeldCalendarQuery),
    -- | Service-specific options for Drive holds. If set, __CorpusType__ must be __DRIVE__.
    driveQuery :: (Core.Maybe HeldDriveQuery),
    -- | Service-specific options for Groups holds. If set, __CorpusType__ must be __GROUPS__.
    groupsQuery :: (Core.Maybe HeldGroupsQuery),
    -- | Service-specific options for Chat holds. If set, __CorpusType__ must be **HANGOUTS_CHAT**.
    hangoutsChatQuery :: (Core.Maybe HeldHangoutsChatQuery),
    -- | Service-specific options for Gmail holds. If set, __CorpusType__ must be __MAIL__.
    mailQuery :: (Core.Maybe HeldMailQuery),
    -- | Service-specific options for Voice holds. If set, __CorpusType__ must be __VOICE__.
    voiceQuery :: (Core.Maybe HeldVoiceQuery)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CorpusQuery' with the minimum fields required to make a request.
newCorpusQuery ::
  CorpusQuery
newCorpusQuery =
  CorpusQuery
    { calendarQuery = Core.Nothing,
      driveQuery = Core.Nothing,
      groupsQuery = Core.Nothing,
      hangoutsChatQuery = Core.Nothing,
      mailQuery = Core.Nothing,
      voiceQuery = Core.Nothing
    }

instance Core.FromJSON CorpusQuery where
  parseJSON =
    Core.withObject
      "CorpusQuery"
      ( \o ->
          CorpusQuery
            Core.<$> (o Core..:? "calendarQuery")
            Core.<*> (o Core..:? "driveQuery")
            Core.<*> (o Core..:? "groupsQuery")
            Core.<*> (o Core..:? "hangoutsChatQuery")
            Core.<*> (o Core..:? "mailQuery")
            Core.<*> (o Core..:? "voiceQuery")
      )

instance Core.ToJSON CorpusQuery where
  toJSON CorpusQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendarQuery" Core..=) Core.<$> calendarQuery,
            ("driveQuery" Core..=) Core.<$> driveQuery,
            ("groupsQuery" Core..=) Core.<$> groupsQuery,
            ("hangoutsChatQuery" Core..=) Core.<$> hangoutsChatQuery,
            ("mailQuery" Core..=) Core.<$> mailQuery,
            ("voiceQuery" Core..=) Core.<$> voiceQuery
          ]
      )

-- | Long running operation metadata for CountArtifacts.
--
-- /See:/ 'newCountArtifactsMetadata' smart constructor.
data CountArtifactsMetadata = CountArtifactsMetadata
  { -- | End time of count operation. Available when operation is done.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The matter ID of the associated matter.
    matterId :: (Core.Maybe Core.Text),
    -- | The search query from the request.
    query :: (Core.Maybe Query),
    -- | Creation time of count operation.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountArtifactsMetadata' with the minimum fields required to make a request.
newCountArtifactsMetadata ::
  CountArtifactsMetadata
newCountArtifactsMetadata =
  CountArtifactsMetadata
    { endTime = Core.Nothing,
      matterId = Core.Nothing,
      query = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON CountArtifactsMetadata where
  parseJSON =
    Core.withObject
      "CountArtifactsMetadata"
      ( \o ->
          CountArtifactsMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "matterId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON CountArtifactsMetadata where
  toJSON CountArtifactsMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("matterId" Core..=) Core.<$> matterId,
            ("query" Core..=) Core.<$> query,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Count artifacts request.
--
-- /See:/ 'newCountArtifactsRequest' smart constructor.
data CountArtifactsRequest = CountArtifactsRequest
  { -- | The search query.
    query :: (Core.Maybe Query),
    -- | Sets the granularity of the count results.
    view :: (Core.Maybe CountArtifactsRequest_View)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountArtifactsRequest' with the minimum fields required to make a request.
newCountArtifactsRequest ::
  CountArtifactsRequest
newCountArtifactsRequest =
  CountArtifactsRequest {query = Core.Nothing, view = Core.Nothing}

instance Core.FromJSON CountArtifactsRequest where
  parseJSON =
    Core.withObject
      "CountArtifactsRequest"
      ( \o ->
          CountArtifactsRequest
            Core.<$> (o Core..:? "query")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON CountArtifactsRequest where
  toJSON CountArtifactsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("query" Core..=) Core.<$> query, ("view" Core..=) Core.<$> view]
      )

-- | Definition of the response for method CountArtifacts.
--
-- /See:/ 'newCountArtifactsResponse' smart constructor.
data CountArtifactsResponse = CountArtifactsResponse
  { -- | Count metrics for Groups.
    groupsCountResult :: (Core.Maybe GroupsCountResult),
    -- | Count metrics for Gmail and classic Hangouts.
    mailCountResult :: (Core.Maybe MailCountResult),
    -- | Total count of messages.
    totalCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountArtifactsResponse' with the minimum fields required to make a request.
newCountArtifactsResponse ::
  CountArtifactsResponse
newCountArtifactsResponse =
  CountArtifactsResponse
    { groupsCountResult = Core.Nothing,
      mailCountResult = Core.Nothing,
      totalCount = Core.Nothing
    }

instance Core.FromJSON CountArtifactsResponse where
  parseJSON =
    Core.withObject
      "CountArtifactsResponse"
      ( \o ->
          CountArtifactsResponse
            Core.<$> (o Core..:? "groupsCountResult")
            Core.<*> (o Core..:? "mailCountResult")
            Core.<*> (o Core..:? "totalCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON CountArtifactsResponse where
  toJSON CountArtifactsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupsCountResult" Core..=) Core.<$> groupsCountResult,
            ("mailCountResult" Core..=) Core.<$> mailCountResult,
            ("totalCount" Core..=) Core.. Core.AsText Core.<$> totalCount
          ]
      )

-- | Specify Drive documents by document ID.
--
-- /See:/ 'newDriveDocumentIds' smart constructor.
newtype DriveDocumentIds = DriveDocumentIds
  { -- | Required. A list of Drive document IDs.
    ids :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDocumentIds' with the minimum fields required to make a request.
newDriveDocumentIds ::
  DriveDocumentIds
newDriveDocumentIds = DriveDocumentIds {ids = Core.Nothing}

instance Core.FromJSON DriveDocumentIds where
  parseJSON =
    Core.withObject
      "DriveDocumentIds"
      (\o -> DriveDocumentIds Core.<$> (o Core..:? "ids"))

instance Core.ToJSON DriveDocumentIds where
  toJSON DriveDocumentIds {..} =
    Core.object (Core.catMaybes [("ids" Core..=) Core.<$> ids])

-- | The Drive documents to search.
--
-- /See:/ 'newDriveDocumentInfo' smart constructor.
newtype DriveDocumentInfo = DriveDocumentInfo
  { -- | Specify Drive documents by document ID.
    documentIds :: (Core.Maybe DriveDocumentIds)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDocumentInfo' with the minimum fields required to make a request.
newDriveDocumentInfo ::
  DriveDocumentInfo
newDriveDocumentInfo =
  DriveDocumentInfo {documentIds = Core.Nothing}

instance Core.FromJSON DriveDocumentInfo where
  parseJSON =
    Core.withObject
      "DriveDocumentInfo"
      (\o -> DriveDocumentInfo Core.<$> (o Core..:? "documentIds"))

instance Core.ToJSON DriveDocumentInfo where
  toJSON DriveDocumentInfo {..} =
    Core.object
      (Core.catMaybes [("documentIds" Core..=) Core.<$> documentIds])

-- | Options for Drive exports.
--
-- /See:/ 'newDriveExportOptions' smart constructor.
newtype DriveExportOptions = DriveExportOptions
  { -- | To include access level information for users with <https://support.google.com/vault/answer/6099459#metadata indirect access> to files, set to __true__.
    includeAccessInfo :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveExportOptions' with the minimum fields required to make a request.
newDriveExportOptions ::
  DriveExportOptions
newDriveExportOptions =
  DriveExportOptions {includeAccessInfo = Core.Nothing}

instance Core.FromJSON DriveExportOptions where
  parseJSON =
    Core.withObject
      "DriveExportOptions"
      ( \o ->
          DriveExportOptions Core.<$> (o Core..:? "includeAccessInfo")
      )

instance Core.ToJSON DriveExportOptions where
  toJSON DriveExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [("includeAccessInfo" Core..=) Core.<$> includeAccessInfo]
      )

-- | Additional options for Drive search.
--
-- /See:/ 'newDriveOptions' smart constructor.
data DriveOptions = DriveOptions
  { -- | Set whether the results include only content encrypted with <https://support.google.com/a?p=cse_ov Google Workspace Client-side encryption> content, only unencrypted content, or both. Defaults to both. Currently supported for Drive.
    clientSideEncryptedOption :: (Core.Maybe DriveOptions_ClientSideEncryptedOption),
    -- | Set to __true__ to include shared drives.
    includeSharedDrives :: (Core.Maybe Core.Bool),
    -- | Set to true to include Team Drive.
    includeTeamDrives :: (Core.Maybe Core.Bool),
    -- | Search the current version of the Drive file, but export the contents of the last version saved before 12:00 AM UTC on the specified date. Enter the date in UTC.
    versionDate :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveOptions' with the minimum fields required to make a request.
newDriveOptions ::
  DriveOptions
newDriveOptions =
  DriveOptions
    { clientSideEncryptedOption = Core.Nothing,
      includeSharedDrives = Core.Nothing,
      includeTeamDrives = Core.Nothing,
      versionDate = Core.Nothing
    }

instance Core.FromJSON DriveOptions where
  parseJSON =
    Core.withObject
      "DriveOptions"
      ( \o ->
          DriveOptions
            Core.<$> (o Core..:? "clientSideEncryptedOption")
            Core.<*> (o Core..:? "includeSharedDrives")
            Core.<*> (o Core..:? "includeTeamDrives")
            Core.<*> (o Core..:? "versionDate")
      )

instance Core.ToJSON DriveOptions where
  toJSON DriveOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientSideEncryptedOption" Core..=)
              Core.<$> clientSideEncryptedOption,
            ("includeSharedDrives" Core..=) Core.<$> includeSharedDrives,
            ("includeTeamDrives" Core..=) Core.<$> includeTeamDrives,
            ("versionDate" Core..=) Core.<$> versionDate
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | An export. To work with Vault resources, the account must have the <https://support.google.com/vault/answer/2799699 required Vault privileges> and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege.
--
-- /See:/ 'newExport' smart constructor.
data Export = Export
  { -- | Output only. The sink for export files in Cloud Storage.
    cloudStorageSink :: (Core.Maybe CloudStorageSink),
    -- | Output only. The time when the export was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Additional export options.
    exportOptions :: (Core.Maybe ExportOptions),
    -- | Output only. The generated export ID.
    id :: (Core.Maybe Core.Text),
    -- | Output only. The matter ID.
    matterId :: (Core.Maybe Core.Text),
    -- | The export name. Don\'t use special characters (~!$\'(),;\@:\/?) in the name, they can prevent you from downloading exports.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Identifies the parent export that spawned this child export. This is only set on child exports.
    parentExportId :: (Core.Maybe Core.Text),
    -- | The query parameters used to create the export.
    query :: (Core.Maybe Query),
    -- | Output only. The requester of the export.
    requester :: (Core.Maybe UserInfo),
    -- | Output only. Details about the export progress and size.
    stats :: (Core.Maybe ExportStats),
    -- | Output only. The status of the export.
    status :: (Core.Maybe Export_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Export' with the minimum fields required to make a request.
newExport ::
  Export
newExport =
  Export
    { cloudStorageSink = Core.Nothing,
      createTime = Core.Nothing,
      exportOptions = Core.Nothing,
      id = Core.Nothing,
      matterId = Core.Nothing,
      name = Core.Nothing,
      parentExportId = Core.Nothing,
      query = Core.Nothing,
      requester = Core.Nothing,
      stats = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON Export where
  parseJSON =
    Core.withObject
      "Export"
      ( \o ->
          Export
            Core.<$> (o Core..:? "cloudStorageSink")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "exportOptions")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "matterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentExportId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "requester")
            Core.<*> (o Core..:? "stats")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Export where
  toJSON Export {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudStorageSink" Core..=) Core.<$> cloudStorageSink,
            ("createTime" Core..=) Core.<$> createTime,
            ("exportOptions" Core..=) Core.<$> exportOptions,
            ("id" Core..=) Core.<$> id,
            ("matterId" Core..=) Core.<$> matterId,
            ("name" Core..=) Core.<$> name,
            ("parentExportId" Core..=) Core.<$> parentExportId,
            ("query" Core..=) Core.<$> query,
            ("requester" Core..=) Core.<$> requester,
            ("stats" Core..=) Core.<$> stats,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Additional options for exports
--
-- /See:/ 'newExportOptions' smart constructor.
data ExportOptions = ExportOptions
  { -- | Option available for Calendar export.
    calendarOptions :: (Core.Maybe CalendarExportOptions),
    -- | Options for Drive exports.
    driveOptions :: (Core.Maybe DriveExportOptions),
    -- | Option available for Gemini export.
    geminiOptions :: (Core.Maybe GeminiExportOptions),
    -- | Options for Groups exports.
    groupsOptions :: (Core.Maybe GroupsExportOptions),
    -- | Options for Chat exports.
    hangoutsChatOptions :: (Core.Maybe HangoutsChatExportOptions),
    -- | Options for Gmail exports.
    mailOptions :: (Core.Maybe MailExportOptions),
    -- | The requested data region for the export.
    region :: (Core.Maybe ExportOptions_Region),
    -- | Options for Voice exports.
    voiceOptions :: (Core.Maybe VoiceExportOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportOptions' with the minimum fields required to make a request.
newExportOptions ::
  ExportOptions
newExportOptions =
  ExportOptions
    { calendarOptions = Core.Nothing,
      driveOptions = Core.Nothing,
      geminiOptions = Core.Nothing,
      groupsOptions = Core.Nothing,
      hangoutsChatOptions = Core.Nothing,
      mailOptions = Core.Nothing,
      region = Core.Nothing,
      voiceOptions = Core.Nothing
    }

instance Core.FromJSON ExportOptions where
  parseJSON =
    Core.withObject
      "ExportOptions"
      ( \o ->
          ExportOptions
            Core.<$> (o Core..:? "calendarOptions")
            Core.<*> (o Core..:? "driveOptions")
            Core.<*> (o Core..:? "geminiOptions")
            Core.<*> (o Core..:? "groupsOptions")
            Core.<*> (o Core..:? "hangoutsChatOptions")
            Core.<*> (o Core..:? "mailOptions")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "voiceOptions")
      )

instance Core.ToJSON ExportOptions where
  toJSON ExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendarOptions" Core..=) Core.<$> calendarOptions,
            ("driveOptions" Core..=) Core.<$> driveOptions,
            ("geminiOptions" Core..=) Core.<$> geminiOptions,
            ("groupsOptions" Core..=) Core.<$> groupsOptions,
            ("hangoutsChatOptions" Core..=) Core.<$> hangoutsChatOptions,
            ("mailOptions" Core..=) Core.<$> mailOptions,
            ("region" Core..=) Core.<$> region,
            ("voiceOptions" Core..=) Core.<$> voiceOptions
          ]
      )

-- | Progress information for an export.
--
-- /See:/ 'newExportStats' smart constructor.
data ExportStats = ExportStats
  { -- | The number of messages or files already processed for export.
    exportedArtifactCount :: (Core.Maybe Core.Int64),
    -- | The size of export in bytes.
    sizeInBytes :: (Core.Maybe Core.Int64),
    -- | The number of messages or files to be exported.
    totalArtifactCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportStats' with the minimum fields required to make a request.
newExportStats ::
  ExportStats
newExportStats =
  ExportStats
    { exportedArtifactCount = Core.Nothing,
      sizeInBytes = Core.Nothing,
      totalArtifactCount = Core.Nothing
    }

instance Core.FromJSON ExportStats where
  parseJSON =
    Core.withObject
      "ExportStats"
      ( \o ->
          ExportStats
            Core.<$> ( o
                         Core..:? "exportedArtifactCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "sizeInBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "totalArtifactCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ExportStats where
  toJSON ExportStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportedArtifactCount" Core..=)
              Core.. Core.AsText
              Core.<$> exportedArtifactCount,
            ("sizeInBytes" Core..=) Core.. Core.AsText Core.<$> sizeInBytes,
            ("totalArtifactCount" Core..=)
              Core.. Core.AsText
              Core.<$> totalArtifactCount
          ]
      )

-- | The options for Gemini exports.
--
-- /See:/ 'newGeminiExportOptions' smart constructor.
newtype GeminiExportOptions = GeminiExportOptions
  { -- | The file format for exported messages.
    exportFormat :: (Core.Maybe GeminiExportOptions_ExportFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeminiExportOptions' with the minimum fields required to make a request.
newGeminiExportOptions ::
  GeminiExportOptions
newGeminiExportOptions =
  GeminiExportOptions {exportFormat = Core.Nothing}

instance Core.FromJSON GeminiExportOptions where
  parseJSON =
    Core.withObject
      "GeminiExportOptions"
      (\o -> GeminiExportOptions Core.<$> (o Core..:? "exportFormat"))

instance Core.ToJSON GeminiExportOptions where
  toJSON GeminiExportOptions {..} =
    Core.object
      (Core.catMaybes [("exportFormat" Core..=) Core.<$> exportFormat])

-- | Additional options for Gemini search
--
-- /See:/ 'newGeminiOptions' smart constructor.
data GeminiOptions = GeminiOptions
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeminiOptions' with the minimum fields required to make a request.
newGeminiOptions ::
  GeminiOptions
newGeminiOptions = GeminiOptions

instance Core.FromJSON GeminiOptions where
  parseJSON =
    Core.withObject "GeminiOptions" (\o -> Core.pure GeminiOptions)

instance Core.ToJSON GeminiOptions where
  toJSON = Core.const Core.emptyObject

-- | Groups specific count metrics.
--
-- /See:/ 'newGroupsCountResult' smart constructor.
data GroupsCountResult = GroupsCountResult
  { -- | Error occurred when querying these accounts.
    accountCountErrors :: (Core.Maybe [AccountCountError]),
    -- | Subtotal count per matching account that have more than zero messages.
    accountCounts :: (Core.Maybe [AccountCount]),
    -- | Total number of accounts that can be queried and have more than zero messages.
    matchingAccountsCount :: (Core.Maybe Core.Int64),
    -- | When __DataScope__ is **HELD_DATA**, these accounts in the request are not queried because they are not on hold. For other data scope, this field is not set.
    nonQueryableAccounts :: (Core.Maybe [Core.Text]),
    -- | Total number of accounts involved in this count operation.
    queriedAccountsCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsCountResult' with the minimum fields required to make a request.
newGroupsCountResult ::
  GroupsCountResult
newGroupsCountResult =
  GroupsCountResult
    { accountCountErrors = Core.Nothing,
      accountCounts = Core.Nothing,
      matchingAccountsCount = Core.Nothing,
      nonQueryableAccounts = Core.Nothing,
      queriedAccountsCount = Core.Nothing
    }

instance Core.FromJSON GroupsCountResult where
  parseJSON =
    Core.withObject
      "GroupsCountResult"
      ( \o ->
          GroupsCountResult
            Core.<$> (o Core..:? "accountCountErrors")
            Core.<*> (o Core..:? "accountCounts")
            Core.<*> ( o
                         Core..:? "matchingAccountsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "nonQueryableAccounts")
            Core.<*> ( o
                         Core..:? "queriedAccountsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GroupsCountResult where
  toJSON GroupsCountResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountCountErrors" Core..=) Core.<$> accountCountErrors,
            ("accountCounts" Core..=) Core.<$> accountCounts,
            ("matchingAccountsCount" Core..=)
              Core.. Core.AsText
              Core.<$> matchingAccountsCount,
            ("nonQueryableAccounts" Core..=) Core.<$> nonQueryableAccounts,
            ("queriedAccountsCount" Core..=)
              Core.. Core.AsText
              Core.<$> queriedAccountsCount
          ]
      )

-- | Options for Groups exports.
--
-- /See:/ 'newGroupsExportOptions' smart constructor.
newtype GroupsExportOptions = GroupsExportOptions
  { -- | The file format for exported messages.
    exportFormat :: (Core.Maybe GroupsExportOptions_ExportFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsExportOptions' with the minimum fields required to make a request.
newGroupsExportOptions ::
  GroupsExportOptions
newGroupsExportOptions =
  GroupsExportOptions {exportFormat = Core.Nothing}

instance Core.FromJSON GroupsExportOptions where
  parseJSON =
    Core.withObject
      "GroupsExportOptions"
      (\o -> GroupsExportOptions Core.<$> (o Core..:? "exportFormat"))

instance Core.ToJSON GroupsExportOptions where
  toJSON GroupsExportOptions {..} =
    Core.object
      (Core.catMaybes [("exportFormat" Core..=) Core.<$> exportFormat])

-- | Options for Chat exports.
--
-- /See:/ 'newHangoutsChatExportOptions' smart constructor.
newtype HangoutsChatExportOptions = HangoutsChatExportOptions
  { -- | The file format for exported messages.
    exportFormat :: (Core.Maybe HangoutsChatExportOptions_ExportFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HangoutsChatExportOptions' with the minimum fields required to make a request.
newHangoutsChatExportOptions ::
  HangoutsChatExportOptions
newHangoutsChatExportOptions =
  HangoutsChatExportOptions {exportFormat = Core.Nothing}

instance Core.FromJSON HangoutsChatExportOptions where
  parseJSON =
    Core.withObject
      "HangoutsChatExportOptions"
      ( \o ->
          HangoutsChatExportOptions Core.<$> (o Core..:? "exportFormat")
      )

instance Core.ToJSON HangoutsChatExportOptions where
  toJSON HangoutsChatExportOptions {..} =
    Core.object
      (Core.catMaybes [("exportFormat" Core..=) Core.<$> exportFormat])

-- | The Chat spaces to search
--
-- /See:/ 'newHangoutsChatInfo' smart constructor.
newtype HangoutsChatInfo = HangoutsChatInfo
  { -- | A list of Chat spaces IDs, as provided by the <https://developers.google.com/chat Chat API>. There is a limit of exporting from 500 Chat spaces per request.
    roomId :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HangoutsChatInfo' with the minimum fields required to make a request.
newHangoutsChatInfo ::
  HangoutsChatInfo
newHangoutsChatInfo = HangoutsChatInfo {roomId = Core.Nothing}

instance Core.FromJSON HangoutsChatInfo where
  parseJSON =
    Core.withObject
      "HangoutsChatInfo"
      (\o -> HangoutsChatInfo Core.<$> (o Core..:? "roomId"))

instance Core.ToJSON HangoutsChatInfo where
  toJSON HangoutsChatInfo {..} =
    Core.object (Core.catMaybes [("roomId" Core..=) Core.<$> roomId])

-- | Additional options for Google Chat search
--
-- /See:/ 'newHangoutsChatOptions' smart constructor.
newtype HangoutsChatOptions = HangoutsChatOptions
  { -- | For searches by account or organizational unit, set to __true__ to include rooms.
    includeRooms :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HangoutsChatOptions' with the minimum fields required to make a request.
newHangoutsChatOptions ::
  HangoutsChatOptions
newHangoutsChatOptions =
  HangoutsChatOptions {includeRooms = Core.Nothing}

instance Core.FromJSON HangoutsChatOptions where
  parseJSON =
    Core.withObject
      "HangoutsChatOptions"
      (\o -> HangoutsChatOptions Core.<$> (o Core..:? "includeRooms"))

instance Core.ToJSON HangoutsChatOptions where
  toJSON HangoutsChatOptions {..} =
    Core.object
      (Core.catMaybes [("includeRooms" Core..=) Core.<$> includeRooms])

-- | An account covered by a hold. This structure is immutable. It can be an individual account or a Google Group, depending on the service. To work with Vault resources, the account must have the [required Vault privileges] (https:\/\/support.google.com\/vault\/answer\/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege.
--
-- /See:/ 'newHeldAccount' smart constructor.
data HeldAccount = HeldAccount
  { -- | The account ID, as provided by the <https://developers.google.com/admin-sdk/ Admin SDK>.
    accountId :: (Core.Maybe Core.Text),
    -- | The primary email address of the account. If used as an input, this takes precedence over __accountId__.
    email :: (Core.Maybe Core.Text),
    -- | Output only. The first name of the account holder.
    firstName :: (Core.Maybe Core.Text),
    -- | Output only. When the account was put on hold.
    holdTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The last name of the account holder.
    lastName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldAccount' with the minimum fields required to make a request.
newHeldAccount ::
  HeldAccount
newHeldAccount =
  HeldAccount
    { accountId = Core.Nothing,
      email = Core.Nothing,
      firstName = Core.Nothing,
      holdTime = Core.Nothing,
      lastName = Core.Nothing
    }

instance Core.FromJSON HeldAccount where
  parseJSON =
    Core.withObject
      "HeldAccount"
      ( \o ->
          HeldAccount
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "firstName")
            Core.<*> (o Core..:? "holdTime")
            Core.<*> (o Core..:? "lastName")
      )

instance Core.ToJSON HeldAccount where
  toJSON HeldAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("email" Core..=) Core.<$> email,
            ("firstName" Core..=) Core.<$> firstName,
            ("holdTime" Core..=) Core.<$> holdTime,
            ("lastName" Core..=) Core.<$> lastName
          ]
      )

-- | Options for Calendar holds.
--
-- /See:/ 'newHeldCalendarQuery' smart constructor.
data HeldCalendarQuery = HeldCalendarQuery
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldCalendarQuery' with the minimum fields required to make a request.
newHeldCalendarQuery ::
  HeldCalendarQuery
newHeldCalendarQuery = HeldCalendarQuery

instance Core.FromJSON HeldCalendarQuery where
  parseJSON =
    Core.withObject
      "HeldCalendarQuery"
      (\o -> Core.pure HeldCalendarQuery)

instance Core.ToJSON HeldCalendarQuery where
  toJSON = Core.const Core.emptyObject

-- | Options for Drive holds.
--
-- /See:/ 'newHeldDriveQuery' smart constructor.
data HeldDriveQuery = HeldDriveQuery
  { -- | To include files in shared drives in the hold, set to __true__.
    includeSharedDriveFiles :: (Core.Maybe Core.Bool),
    -- | To include files in Team Drives in the hold, set to __true__.
    includeTeamDriveFiles :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldDriveQuery' with the minimum fields required to make a request.
newHeldDriveQuery ::
  HeldDriveQuery
newHeldDriveQuery =
  HeldDriveQuery
    { includeSharedDriveFiles = Core.Nothing,
      includeTeamDriveFiles = Core.Nothing
    }

instance Core.FromJSON HeldDriveQuery where
  parseJSON =
    Core.withObject
      "HeldDriveQuery"
      ( \o ->
          HeldDriveQuery
            Core.<$> (o Core..:? "includeSharedDriveFiles")
            Core.<*> (o Core..:? "includeTeamDriveFiles")
      )

instance Core.ToJSON HeldDriveQuery where
  toJSON HeldDriveQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeSharedDriveFiles" Core..=)
              Core.<$> includeSharedDriveFiles,
            ("includeTeamDriveFiles" Core..=) Core.<$> includeTeamDriveFiles
          ]
      )

-- | Query options for group holds.
--
-- /See:/ 'newHeldGroupsQuery' smart constructor.
data HeldGroupsQuery = HeldGroupsQuery
  { -- | The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The <https://support.google.com/vault/answer/2474474 search operators> used to refine the messages covered by the hold.
    terms :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldGroupsQuery' with the minimum fields required to make a request.
newHeldGroupsQuery ::
  HeldGroupsQuery
newHeldGroupsQuery =
  HeldGroupsQuery
    { endTime = Core.Nothing,
      startTime = Core.Nothing,
      terms = Core.Nothing
    }

instance Core.FromJSON HeldGroupsQuery where
  parseJSON =
    Core.withObject
      "HeldGroupsQuery"
      ( \o ->
          HeldGroupsQuery
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "terms")
      )

instance Core.ToJSON HeldGroupsQuery where
  toJSON HeldGroupsQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("terms" Core..=) Core.<$> terms
          ]
      )

-- | Options for Chat holds.
--
-- /See:/ 'newHeldHangoutsChatQuery' smart constructor.
newtype HeldHangoutsChatQuery = HeldHangoutsChatQuery
  { -- | To include messages in Chat spaces the user was a member of, set to __true__.
    includeRooms :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldHangoutsChatQuery' with the minimum fields required to make a request.
newHeldHangoutsChatQuery ::
  HeldHangoutsChatQuery
newHeldHangoutsChatQuery =
  HeldHangoutsChatQuery {includeRooms = Core.Nothing}

instance Core.FromJSON HeldHangoutsChatQuery where
  parseJSON =
    Core.withObject
      "HeldHangoutsChatQuery"
      (\o -> HeldHangoutsChatQuery Core.<$> (o Core..:? "includeRooms"))

instance Core.ToJSON HeldHangoutsChatQuery where
  toJSON HeldHangoutsChatQuery {..} =
    Core.object
      (Core.catMaybes [("includeRooms" Core..=) Core.<$> includeRooms])

-- | Query options for Gmail holds.
--
-- /See:/ 'newHeldMailQuery' smart constructor.
data HeldMailQuery = HeldMailQuery
  { -- | The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The <https://support.google.com/vault/answer/2474474 search operators> used to refine the messages covered by the hold.
    terms :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldMailQuery' with the minimum fields required to make a request.
newHeldMailQuery ::
  HeldMailQuery
newHeldMailQuery =
  HeldMailQuery
    { endTime = Core.Nothing,
      startTime = Core.Nothing,
      terms = Core.Nothing
    }

instance Core.FromJSON HeldMailQuery where
  parseJSON =
    Core.withObject
      "HeldMailQuery"
      ( \o ->
          HeldMailQuery
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "terms")
      )

instance Core.ToJSON HeldMailQuery where
  toJSON HeldMailQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("terms" Core..=) Core.<$> terms
          ]
      )

-- | The organizational unit covered by a hold. This structure is immutable.
--
-- /See:/ 'newHeldOrgUnit' smart constructor.
data HeldOrgUnit = HeldOrgUnit
  { -- | When the organizational unit was put on hold. This property is immutable.
    holdTime :: (Core.Maybe Core.DateTime),
    -- | The organizational unit\'s immutable ID as provided by the <https://developers.google.com/admin-sdk/ Admin SDK>.
    orgUnitId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldOrgUnit' with the minimum fields required to make a request.
newHeldOrgUnit ::
  HeldOrgUnit
newHeldOrgUnit =
  HeldOrgUnit {holdTime = Core.Nothing, orgUnitId = Core.Nothing}

instance Core.FromJSON HeldOrgUnit where
  parseJSON =
    Core.withObject
      "HeldOrgUnit"
      ( \o ->
          HeldOrgUnit
            Core.<$> (o Core..:? "holdTime")
            Core.<*> (o Core..:? "orgUnitId")
      )

instance Core.ToJSON HeldOrgUnit where
  toJSON HeldOrgUnit {..} =
    Core.object
      ( Core.catMaybes
          [ ("holdTime" Core..=) Core.<$> holdTime,
            ("orgUnitId" Core..=) Core.<$> orgUnitId
          ]
      )

-- | Options for Voice holds.
--
-- /See:/ 'newHeldVoiceQuery' smart constructor.
newtype HeldVoiceQuery = HeldVoiceQuery
  { -- | A list of data types covered by the hold. Should be non-empty. Order does not matter and duplicates are ignored.
    coveredData :: (Core.Maybe [HeldVoiceQuery_CoveredDataItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeldVoiceQuery' with the minimum fields required to make a request.
newHeldVoiceQuery ::
  HeldVoiceQuery
newHeldVoiceQuery = HeldVoiceQuery {coveredData = Core.Nothing}

instance Core.FromJSON HeldVoiceQuery where
  parseJSON =
    Core.withObject
      "HeldVoiceQuery"
      (\o -> HeldVoiceQuery Core.<$> (o Core..:? "coveredData"))

instance Core.ToJSON HeldVoiceQuery where
  toJSON HeldVoiceQuery {..} =
    Core.object
      (Core.catMaybes [("coveredData" Core..=) Core.<$> coveredData])

-- | A hold. A hold prevents the specified Google Workspace service from purging data for specific accounts or all members of an organizational unit. To work with Vault resources, the account must have the [required Vault privileges] (https:\/\/support.google.com\/vault\/answer\/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege.
--
-- /See:/ 'newHold' smart constructor.
data Hold = Hold
  { -- | If set, the hold applies to the specified accounts and __orgUnit__ must be empty.
    accounts :: (Core.Maybe [HeldAccount]),
    -- | The service to be searched.
    corpus :: (Core.Maybe Hold_Corpus),
    -- | The unique immutable ID of the hold. Assigned during creation.
    holdId :: (Core.Maybe Core.Text),
    -- | The name of the hold.
    name :: (Core.Maybe Core.Text),
    -- | If set, the hold applies to all members of the organizational unit and __accounts__ must be empty. This property is mutable. For Groups holds, set __accounts__.
    orgUnit :: (Core.Maybe HeldOrgUnit),
    -- | Service-specific options. If set, __CorpusQuery__ must match __CorpusType__.
    query :: (Core.Maybe CorpusQuery),
    -- | The last time this hold was modified.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hold' with the minimum fields required to make a request.
newHold ::
  Hold
newHold =
  Hold
    { accounts = Core.Nothing,
      corpus = Core.Nothing,
      holdId = Core.Nothing,
      name = Core.Nothing,
      orgUnit = Core.Nothing,
      query = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Hold where
  parseJSON =
    Core.withObject
      "Hold"
      ( \o ->
          Hold
            Core.<$> (o Core..:? "accounts")
            Core.<*> (o Core..:? "corpus")
            Core.<*> (o Core..:? "holdId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgUnit")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Hold where
  toJSON Hold {..} =
    Core.object
      ( Core.catMaybes
          [ ("accounts" Core..=) Core.<$> accounts,
            ("corpus" Core..=) Core.<$> corpus,
            ("holdId" Core..=) Core.<$> holdId,
            ("name" Core..=) Core.<$> name,
            ("orgUnit" Core..=) Core.<$> orgUnit,
            ("query" Core..=) Core.<$> query,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The exports for a matter.
--
-- /See:/ 'newListExportsResponse' smart constructor.
data ListExportsResponse = ListExportsResponse
  { -- | The list of exports.
    exports :: (Core.Maybe [Export]),
    -- | Page token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListExportsResponse' with the minimum fields required to make a request.
newListExportsResponse ::
  ListExportsResponse
newListExportsResponse =
  ListExportsResponse
    { exports = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListExportsResponse where
  parseJSON =
    Core.withObject
      "ListExportsResponse"
      ( \o ->
          ListExportsResponse
            Core.<$> (o Core..:? "exports")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListExportsResponse where
  toJSON ListExportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("exports" Core..=) Core.<$> exports,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Returns a list of the accounts covered by a hold.
--
-- /See:/ 'newListHeldAccountsResponse' smart constructor.
newtype ListHeldAccountsResponse = ListHeldAccountsResponse
  { -- | The held accounts on a hold.
    accounts :: (Core.Maybe [HeldAccount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHeldAccountsResponse' with the minimum fields required to make a request.
newListHeldAccountsResponse ::
  ListHeldAccountsResponse
newListHeldAccountsResponse =
  ListHeldAccountsResponse {accounts = Core.Nothing}

instance Core.FromJSON ListHeldAccountsResponse where
  parseJSON =
    Core.withObject
      "ListHeldAccountsResponse"
      (\o -> ListHeldAccountsResponse Core.<$> (o Core..:? "accounts"))

instance Core.ToJSON ListHeldAccountsResponse where
  toJSON ListHeldAccountsResponse {..} =
    Core.object
      (Core.catMaybes [("accounts" Core..=) Core.<$> accounts])

-- | The holds for a matter.
--
-- /See:/ 'newListHoldsResponse' smart constructor.
data ListHoldsResponse = ListHoldsResponse
  { -- | The list of holds.
    holds :: (Core.Maybe [Hold]),
    -- | Page token to retrieve the next page of results in the list. If this is empty, then there are no more holds to list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHoldsResponse' with the minimum fields required to make a request.
newListHoldsResponse ::
  ListHoldsResponse
newListHoldsResponse =
  ListHoldsResponse
    { holds = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListHoldsResponse where
  parseJSON =
    Core.withObject
      "ListHoldsResponse"
      ( \o ->
          ListHoldsResponse
            Core.<$> (o Core..:? "holds")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListHoldsResponse where
  toJSON ListHoldsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("holds" Core..=) Core.<$> holds,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Provides the list of matters.
--
-- /See:/ 'newListMattersResponse' smart constructor.
data ListMattersResponse = ListMattersResponse
  { -- | List of matters.
    matters :: (Core.Maybe [Matter]),
    -- | Page token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMattersResponse' with the minimum fields required to make a request.
newListMattersResponse ::
  ListMattersResponse
newListMattersResponse =
  ListMattersResponse
    { matters = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListMattersResponse where
  parseJSON =
    Core.withObject
      "ListMattersResponse"
      ( \o ->
          ListMattersResponse
            Core.<$> (o Core..:? "matters")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListMattersResponse where
  toJSON ListMattersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("matters" Core..=) Core.<$> matters,
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
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Definition of the response for method ListSaveQuery.
--
-- /See:/ 'newListSavedQueriesResponse' smart constructor.
data ListSavedQueriesResponse = ListSavedQueriesResponse
  { -- | Page token to retrieve the next page of results in the list. If this is empty, then there are no more saved queries to list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of saved queries.
    savedQueries :: (Core.Maybe [SavedQuery])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSavedQueriesResponse' with the minimum fields required to make a request.
newListSavedQueriesResponse ::
  ListSavedQueriesResponse
newListSavedQueriesResponse =
  ListSavedQueriesResponse
    { nextPageToken = Core.Nothing,
      savedQueries = Core.Nothing
    }

instance Core.FromJSON ListSavedQueriesResponse where
  parseJSON =
    Core.withObject
      "ListSavedQueriesResponse"
      ( \o ->
          ListSavedQueriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "savedQueries")
      )

instance Core.ToJSON ListSavedQueriesResponse where
  toJSON ListSavedQueriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("savedQueries" Core..=) Core.<$> savedQueries
          ]
      )

-- | Gmail and classic Hangouts-specific count metrics.
--
-- /See:/ 'newMailCountResult' smart constructor.
data MailCountResult = MailCountResult
  { -- | Errors occurred when querying these accounts.
    accountCountErrors :: (Core.Maybe [AccountCountError]),
    -- | Subtotal count per matching account that have more than zero messages.
    accountCounts :: (Core.Maybe [AccountCount]),
    -- | Total number of accounts that can be queried and have more than zero messages.
    matchingAccountsCount :: (Core.Maybe Core.Int64),
    -- | When __DataScope__ is **HELD_DATA** and when account emails are passed in explicitly, the list of accounts in the request that are not queried because they are not on hold in the matter. For other data scopes, this field is not set.
    nonQueryableAccounts :: (Core.Maybe [Core.Text]),
    -- | Total number of accounts involved in this count operation.
    queriedAccountsCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MailCountResult' with the minimum fields required to make a request.
newMailCountResult ::
  MailCountResult
newMailCountResult =
  MailCountResult
    { accountCountErrors = Core.Nothing,
      accountCounts = Core.Nothing,
      matchingAccountsCount = Core.Nothing,
      nonQueryableAccounts = Core.Nothing,
      queriedAccountsCount = Core.Nothing
    }

instance Core.FromJSON MailCountResult where
  parseJSON =
    Core.withObject
      "MailCountResult"
      ( \o ->
          MailCountResult
            Core.<$> (o Core..:? "accountCountErrors")
            Core.<*> (o Core..:? "accountCounts")
            Core.<*> ( o
                         Core..:? "matchingAccountsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "nonQueryableAccounts")
            Core.<*> ( o
                         Core..:? "queriedAccountsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MailCountResult where
  toJSON MailCountResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountCountErrors" Core..=) Core.<$> accountCountErrors,
            ("accountCounts" Core..=) Core.<$> accountCounts,
            ("matchingAccountsCount" Core..=)
              Core.. Core.AsText
              Core.<$> matchingAccountsCount,
            ("nonQueryableAccounts" Core..=) Core.<$> nonQueryableAccounts,
            ("queriedAccountsCount" Core..=)
              Core.. Core.AsText
              Core.<$> queriedAccountsCount
          ]
      )

-- | Options for Gmail exports.
--
-- /See:/ 'newMailExportOptions' smart constructor.
data MailExportOptions = MailExportOptions
  { -- | The file format for exported messages.
    exportFormat :: (Core.Maybe MailExportOptions_ExportFormat),
    -- | Optional. To enable exporting linked Drive files, set to __true__.
    exportLinkedDriveFiles :: (Core.Maybe Core.Bool),
    -- | To export confidential mode content, set to __true__.
    showConfidentialModeContent :: (Core.Maybe Core.Bool),
    -- | To use the new export system, set to __true__.
    useNewExport :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MailExportOptions' with the minimum fields required to make a request.
newMailExportOptions ::
  MailExportOptions
newMailExportOptions =
  MailExportOptions
    { exportFormat = Core.Nothing,
      exportLinkedDriveFiles = Core.Nothing,
      showConfidentialModeContent = Core.Nothing,
      useNewExport = Core.Nothing
    }

instance Core.FromJSON MailExportOptions where
  parseJSON =
    Core.withObject
      "MailExportOptions"
      ( \o ->
          MailExportOptions
            Core.<$> (o Core..:? "exportFormat")
            Core.<*> (o Core..:? "exportLinkedDriveFiles")
            Core.<*> (o Core..:? "showConfidentialModeContent")
            Core.<*> (o Core..:? "useNewExport")
      )

instance Core.ToJSON MailExportOptions where
  toJSON MailExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportFormat" Core..=) Core.<$> exportFormat,
            ("exportLinkedDriveFiles" Core..=) Core.<$> exportLinkedDriveFiles,
            ("showConfidentialModeContent" Core..=)
              Core.<$> showConfidentialModeContent,
            ("useNewExport" Core..=) Core.<$> useNewExport
          ]
      )

-- | Additional options for Gmail search
--
-- /See:/ 'newMailOptions' smart constructor.
data MailOptions = MailOptions
  { -- | Specifies whether the results should include encrypted content, unencrypted content, or both. Defaults to including both.
    clientSideEncryptedOption :: (Core.Maybe MailOptions_ClientSideEncryptedOption),
    -- | Set to __true__ to exclude drafts.
    excludeDrafts :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MailOptions' with the minimum fields required to make a request.
newMailOptions ::
  MailOptions
newMailOptions =
  MailOptions
    { clientSideEncryptedOption = Core.Nothing,
      excludeDrafts = Core.Nothing
    }

instance Core.FromJSON MailOptions where
  parseJSON =
    Core.withObject
      "MailOptions"
      ( \o ->
          MailOptions
            Core.<$> (o Core..:? "clientSideEncryptedOption")
            Core.<*> (o Core..:? "excludeDrafts")
      )

instance Core.ToJSON MailOptions where
  toJSON MailOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientSideEncryptedOption" Core..=)
              Core.<$> clientSideEncryptedOption,
            ("excludeDrafts" Core..=) Core.<$> excludeDrafts
          ]
      )

-- | Represents a matter. To work with Vault resources, the account must have the [required Vault privileges] (https:\/\/support.google.com\/vault\/answer\/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege.
--
-- /See:/ 'newMatter' smart constructor.
data Matter = Matter
  { -- | An optional description for the matter.
    description :: (Core.Maybe Core.Text),
    -- | The matter ID, which is generated by the server. Leave blank when creating a matter.
    matterId :: (Core.Maybe Core.Text),
    -- | Lists the users and their permission for the matter. Currently there is no programmer defined limit on the number of permissions a matter can have.
    matterPermissions :: (Core.Maybe [MatterPermission]),
    -- | Optional. The requested data region for the matter.
    matterRegion :: (Core.Maybe Matter_MatterRegion),
    -- | The name of the matter.
    name :: (Core.Maybe Core.Text),
    -- | The state of the matter.
    state :: (Core.Maybe Matter_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Matter' with the minimum fields required to make a request.
newMatter ::
  Matter
newMatter =
  Matter
    { description = Core.Nothing,
      matterId = Core.Nothing,
      matterPermissions = Core.Nothing,
      matterRegion = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Matter where
  parseJSON =
    Core.withObject
      "Matter"
      ( \o ->
          Matter
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "matterId")
            Core.<*> (o Core..:? "matterPermissions")
            Core.<*> (o Core..:? "matterRegion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Matter where
  toJSON Matter {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("matterId" Core..=) Core.<$> matterId,
            ("matterPermissions" Core..=) Core.<$> matterPermissions,
            ("matterRegion" Core..=) Core.<$> matterRegion,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Users can be matter owners or collaborators. Each matter has only one owner. All others users who can access the matter are collaborators. When an account is purged, its corresponding MatterPermission resources cease to exist.
--
-- /See:/ 'newMatterPermission' smart constructor.
data MatterPermission = MatterPermission
  { -- | The account ID, as provided by the <https://developers.google.com/admin-sdk/ Admin SDK>.
    accountId :: (Core.Maybe Core.Text),
    -- | The user\'s role for the matter.
    role' :: (Core.Maybe MatterPermission_Role)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatterPermission' with the minimum fields required to make a request.
newMatterPermission ::
  MatterPermission
newMatterPermission =
  MatterPermission {accountId = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON MatterPermission where
  parseJSON =
    Core.withObject
      "MatterPermission"
      ( \o ->
          MatterPermission
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON MatterPermission where
  toJSON MatterPermission {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("role" Core..=) Core.<$> role'
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
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
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
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | The organizational unit to search
--
-- /See:/ 'newOrgUnitInfo' smart constructor.
newtype OrgUnitInfo = OrgUnitInfo
  { -- | The name of the organizational unit to search, as provided by the <https://developers.google.com/admin-sdk/directory/ Admin SDK Directory API>.
    orgUnitId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgUnitInfo' with the minimum fields required to make a request.
newOrgUnitInfo ::
  OrgUnitInfo
newOrgUnitInfo = OrgUnitInfo {orgUnitId = Core.Nothing}

instance Core.FromJSON OrgUnitInfo where
  parseJSON =
    Core.withObject
      "OrgUnitInfo"
      (\o -> OrgUnitInfo Core.<$> (o Core..:? "orgUnitId"))

instance Core.ToJSON OrgUnitInfo where
  toJSON OrgUnitInfo {..} =
    Core.object
      (Core.catMaybes [("orgUnitId" Core..=) Core.<$> orgUnitId])

-- | The query definition used for search and export.
--
-- /See:/ 'newQuery' smart constructor.
data Query = Query
  { -- | Required when __SearchMethod__ is __ACCOUNT__.
    accountInfo :: (Core.Maybe AccountInfo),
    -- | Set Calendar search-specific options.
    calendarOptions :: (Core.Maybe CalendarOptions),
    -- | The Google Workspace service to search.
    corpus :: (Core.Maybe Query_Corpus),
    -- | The data source to search.
    dataScope :: (Core.Maybe Query_DataScope),
    -- | Required when __SearchMethod__ is **DRIVE_DOCUMENT**.
    driveDocumentInfo :: (Core.Maybe DriveDocumentInfo),
    -- | Set Drive search-specific options.
    driveOptions :: (Core.Maybe DriveOptions),
    -- | The end time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Set Gemini search-specific options.
    geminiOptions :: (Core.Maybe GeminiOptions),
    -- | Required when __SearchMethod__ is __ROOM__. (read-only)
    hangoutsChatInfo :: (Core.Maybe HangoutsChatInfo),
    -- | Set Chat search-specific options. (read-only)
    hangoutsChatOptions :: (Core.Maybe HangoutsChatOptions),
    -- | Set Gmail search-specific options.
    mailOptions :: (Core.Maybe MailOptions),
    -- | The entity to search. This field replaces __searchMethod__ to support shared drives. When __searchMethod__ is __TEAM/DRIVE__, the response of this field is __SHARED/DRIVE__.
    method :: (Core.Maybe Query_Method),
    -- | Required when __SearchMethod__ is **ORG_UNIT**.
    orgUnitInfo :: (Core.Maybe OrgUnitInfo),
    -- | The search method to use.
    searchMethod :: (Core.Maybe Query_SearchMethod),
    -- | Required when __SearchMethod__ is **SHARED_DRIVE**.
    sharedDriveInfo :: (Core.Maybe SharedDriveInfo),
    -- | Required when __SearchMethod__ is **SITES_URL**.
    sitesUrlInfo :: (Core.Maybe SitesUrlInfo),
    -- | The start time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Required when __SearchMethod__ is **TEAM_DRIVE**.
    teamDriveInfo :: (Core.Maybe TeamDriveInfo),
    -- | Service-specific <https://support.google.com/vault/answer/2474474 search operators> to filter search results.
    terms :: (Core.Maybe Core.Text),
    -- | The time zone name. It should be an IANA TZ name, such as \"America\/Los_Angeles\". For a list of time zone names, see <https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Time Zone>. For more information about how Vault uses time zones, see <https://support.google.com/vault/answer/6092995#time the Vault help center>.
    timeZone :: (Core.Maybe Core.Text),
    -- | Set Voice search-specific options.
    voiceOptions :: (Core.Maybe VoiceOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
newQuery ::
  Query
newQuery =
  Query
    { accountInfo = Core.Nothing,
      calendarOptions = Core.Nothing,
      corpus = Core.Nothing,
      dataScope = Core.Nothing,
      driveDocumentInfo = Core.Nothing,
      driveOptions = Core.Nothing,
      endTime = Core.Nothing,
      geminiOptions = Core.Nothing,
      hangoutsChatInfo = Core.Nothing,
      hangoutsChatOptions = Core.Nothing,
      mailOptions = Core.Nothing,
      method = Core.Nothing,
      orgUnitInfo = Core.Nothing,
      searchMethod = Core.Nothing,
      sharedDriveInfo = Core.Nothing,
      sitesUrlInfo = Core.Nothing,
      startTime = Core.Nothing,
      teamDriveInfo = Core.Nothing,
      terms = Core.Nothing,
      timeZone = Core.Nothing,
      voiceOptions = Core.Nothing
    }

instance Core.FromJSON Query where
  parseJSON =
    Core.withObject
      "Query"
      ( \o ->
          Query
            Core.<$> (o Core..:? "accountInfo")
            Core.<*> (o Core..:? "calendarOptions")
            Core.<*> (o Core..:? "corpus")
            Core.<*> (o Core..:? "dataScope")
            Core.<*> (o Core..:? "driveDocumentInfo")
            Core.<*> (o Core..:? "driveOptions")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "geminiOptions")
            Core.<*> (o Core..:? "hangoutsChatInfo")
            Core.<*> (o Core..:? "hangoutsChatOptions")
            Core.<*> (o Core..:? "mailOptions")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "orgUnitInfo")
            Core.<*> (o Core..:? "searchMethod")
            Core.<*> (o Core..:? "sharedDriveInfo")
            Core.<*> (o Core..:? "sitesUrlInfo")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "teamDriveInfo")
            Core.<*> (o Core..:? "terms")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "voiceOptions")
      )

instance Core.ToJSON Query where
  toJSON Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountInfo" Core..=) Core.<$> accountInfo,
            ("calendarOptions" Core..=) Core.<$> calendarOptions,
            ("corpus" Core..=) Core.<$> corpus,
            ("dataScope" Core..=) Core.<$> dataScope,
            ("driveDocumentInfo" Core..=) Core.<$> driveDocumentInfo,
            ("driveOptions" Core..=) Core.<$> driveOptions,
            ("endTime" Core..=) Core.<$> endTime,
            ("geminiOptions" Core..=) Core.<$> geminiOptions,
            ("hangoutsChatInfo" Core..=) Core.<$> hangoutsChatInfo,
            ("hangoutsChatOptions" Core..=) Core.<$> hangoutsChatOptions,
            ("mailOptions" Core..=) Core.<$> mailOptions,
            ("method" Core..=) Core.<$> method,
            ("orgUnitInfo" Core..=) Core.<$> orgUnitInfo,
            ("searchMethod" Core..=) Core.<$> searchMethod,
            ("sharedDriveInfo" Core..=) Core.<$> sharedDriveInfo,
            ("sitesUrlInfo" Core..=) Core.<$> sitesUrlInfo,
            ("startTime" Core..=) Core.<$> startTime,
            ("teamDriveInfo" Core..=) Core.<$> teamDriveInfo,
            ("terms" Core..=) Core.<$> terms,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("voiceOptions" Core..=) Core.<$> voiceOptions
          ]
      )

-- | Remove a list of accounts from a hold.
--
-- /See:/ 'newRemoveHeldAccountsRequest' smart constructor.
newtype RemoveHeldAccountsRequest = RemoveHeldAccountsRequest
  { -- | The account IDs of the accounts to remove from the hold.
    accountIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoveHeldAccountsRequest' with the minimum fields required to make a request.
newRemoveHeldAccountsRequest ::
  RemoveHeldAccountsRequest
newRemoveHeldAccountsRequest =
  RemoveHeldAccountsRequest {accountIds = Core.Nothing}

instance Core.FromJSON RemoveHeldAccountsRequest where
  parseJSON =
    Core.withObject
      "RemoveHeldAccountsRequest"
      ( \o ->
          RemoveHeldAccountsRequest Core.<$> (o Core..:? "accountIds")
      )

instance Core.ToJSON RemoveHeldAccountsRequest where
  toJSON RemoveHeldAccountsRequest {..} =
    Core.object
      (Core.catMaybes [("accountIds" Core..=) Core.<$> accountIds])

-- | Response for batch delete held accounts.
--
-- /See:/ 'newRemoveHeldAccountsResponse' smart constructor.
newtype RemoveHeldAccountsResponse = RemoveHeldAccountsResponse
  { -- | A list of statuses for the deleted accounts. Results have the same order as the request.
    statuses :: (Core.Maybe [Status])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoveHeldAccountsResponse' with the minimum fields required to make a request.
newRemoveHeldAccountsResponse ::
  RemoveHeldAccountsResponse
newRemoveHeldAccountsResponse =
  RemoveHeldAccountsResponse {statuses = Core.Nothing}

instance Core.FromJSON RemoveHeldAccountsResponse where
  parseJSON =
    Core.withObject
      "RemoveHeldAccountsResponse"
      ( \o ->
          RemoveHeldAccountsResponse Core.<$> (o Core..:? "statuses")
      )

instance Core.ToJSON RemoveHeldAccountsResponse where
  toJSON RemoveHeldAccountsResponse {..} =
    Core.object
      (Core.catMaybes [("statuses" Core..=) Core.<$> statuses])

-- | Remove an account as a matter collaborator.
--
-- /See:/ 'newRemoveMatterPermissionsRequest' smart constructor.
newtype RemoveMatterPermissionsRequest = RemoveMatterPermissionsRequest
  { -- | The account ID.
    accountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoveMatterPermissionsRequest' with the minimum fields required to make a request.
newRemoveMatterPermissionsRequest ::
  RemoveMatterPermissionsRequest
newRemoveMatterPermissionsRequest =
  RemoveMatterPermissionsRequest {accountId = Core.Nothing}

instance Core.FromJSON RemoveMatterPermissionsRequest where
  parseJSON =
    Core.withObject
      "RemoveMatterPermissionsRequest"
      ( \o ->
          RemoveMatterPermissionsRequest Core.<$> (o Core..:? "accountId")
      )

instance Core.ToJSON RemoveMatterPermissionsRequest where
  toJSON RemoveMatterPermissionsRequest {..} =
    Core.object
      (Core.catMaybes [("accountId" Core..=) Core.<$> accountId])

-- | Reopen a matter by ID.
--
-- /See:/ 'newReopenMatterRequest' smart constructor.
data ReopenMatterRequest = ReopenMatterRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReopenMatterRequest' with the minimum fields required to make a request.
newReopenMatterRequest ::
  ReopenMatterRequest
newReopenMatterRequest = ReopenMatterRequest

instance Core.FromJSON ReopenMatterRequest where
  parseJSON =
    Core.withObject
      "ReopenMatterRequest"
      (\o -> Core.pure ReopenMatterRequest)

instance Core.ToJSON ReopenMatterRequest where
  toJSON = Core.const Core.emptyObject

-- | Response to a ReopenMatterRequest.
--
-- /See:/ 'newReopenMatterResponse' smart constructor.
newtype ReopenMatterResponse = ReopenMatterResponse
  { -- | The updated matter, with state __OPEN__.
    matter :: (Core.Maybe Matter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReopenMatterResponse' with the minimum fields required to make a request.
newReopenMatterResponse ::
  ReopenMatterResponse
newReopenMatterResponse =
  ReopenMatterResponse {matter = Core.Nothing}

instance Core.FromJSON ReopenMatterResponse where
  parseJSON =
    Core.withObject
      "ReopenMatterResponse"
      (\o -> ReopenMatterResponse Core.<$> (o Core..:? "matter"))

instance Core.ToJSON ReopenMatterResponse where
  toJSON ReopenMatterResponse {..} =
    Core.object (Core.catMaybes [("matter" Core..=) Core.<$> matter])

-- | The definition of a saved query. To work with Vault resources, the account must have the <https://support.google.com/vault/answer/2799699 required Vault privileges> and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege.
--
-- /See:/ 'newSavedQuery' smart constructor.
data SavedQuery = SavedQuery
  { -- | Output only. The server-generated timestamp when the saved query was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The name of the saved query.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The matter ID of the matter the saved query is saved in. The server does not use this field during create and always uses matter ID in the URL.
    matterId :: (Core.Maybe Core.Text),
    -- | The search parameters of the saved query.
    query :: (Core.Maybe Query),
    -- | A unique identifier for the saved query.
    savedQueryId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedQuery' with the minimum fields required to make a request.
newSavedQuery ::
  SavedQuery
newSavedQuery =
  SavedQuery
    { createTime = Core.Nothing,
      displayName = Core.Nothing,
      matterId = Core.Nothing,
      query = Core.Nothing,
      savedQueryId = Core.Nothing
    }

instance Core.FromJSON SavedQuery where
  parseJSON =
    Core.withObject
      "SavedQuery"
      ( \o ->
          SavedQuery
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "matterId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "savedQueryId")
      )

instance Core.ToJSON SavedQuery where
  toJSON SavedQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("matterId" Core..=) Core.<$> matterId,
            ("query" Core..=) Core.<$> query,
            ("savedQueryId" Core..=) Core.<$> savedQueryId
          ]
      )

-- | The shared drives to search
--
-- /See:/ 'newSharedDriveInfo' smart constructor.
newtype SharedDriveInfo = SharedDriveInfo
  { -- | A list of shared drive IDs, as provided by the <https://developers.google.com/drive Drive API>.
    sharedDriveIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SharedDriveInfo' with the minimum fields required to make a request.
newSharedDriveInfo ::
  SharedDriveInfo
newSharedDriveInfo = SharedDriveInfo {sharedDriveIds = Core.Nothing}

instance Core.FromJSON SharedDriveInfo where
  parseJSON =
    Core.withObject
      "SharedDriveInfo"
      (\o -> SharedDriveInfo Core.<$> (o Core..:? "sharedDriveIds"))

instance Core.ToJSON SharedDriveInfo where
  toJSON SharedDriveInfo {..} =
    Core.object
      ( Core.catMaybes
          [("sharedDriveIds" Core..=) Core.<$> sharedDriveIds]
      )

-- | The published site URLs of new Google Sites to search
--
-- /See:/ 'newSitesUrlInfo' smart constructor.
newtype SitesUrlInfo = SitesUrlInfo
  { -- | A list of published site URLs.
    urls :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SitesUrlInfo' with the minimum fields required to make a request.
newSitesUrlInfo ::
  SitesUrlInfo
newSitesUrlInfo = SitesUrlInfo {urls = Core.Nothing}

instance Core.FromJSON SitesUrlInfo where
  parseJSON =
    Core.withObject
      "SitesUrlInfo"
      (\o -> SitesUrlInfo Core.<$> (o Core..:? "urls"))

instance Core.ToJSON SitesUrlInfo where
  toJSON SitesUrlInfo {..} =
    Core.object (Core.catMaybes [("urls" Core..=) Core.<$> urls])

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
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
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
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Team Drives to search
--
-- /See:/ 'newTeamDriveInfo' smart constructor.
newtype TeamDriveInfo = TeamDriveInfo
  { -- | List of Team Drive IDs, as provided by the <https://developers.google.com/drive Drive API>.
    teamDriveIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDriveInfo' with the minimum fields required to make a request.
newTeamDriveInfo ::
  TeamDriveInfo
newTeamDriveInfo = TeamDriveInfo {teamDriveIds = Core.Nothing}

instance Core.FromJSON TeamDriveInfo where
  parseJSON =
    Core.withObject
      "TeamDriveInfo"
      (\o -> TeamDriveInfo Core.<$> (o Core..:? "teamDriveIds"))

instance Core.ToJSON TeamDriveInfo where
  toJSON TeamDriveInfo {..} =
    Core.object
      (Core.catMaybes [("teamDriveIds" Core..=) Core.<$> teamDriveIds])

-- | Undelete a matter by ID.
--
-- /See:/ 'newUndeleteMatterRequest' smart constructor.
data UndeleteMatterRequest = UndeleteMatterRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteMatterRequest' with the minimum fields required to make a request.
newUndeleteMatterRequest ::
  UndeleteMatterRequest
newUndeleteMatterRequest = UndeleteMatterRequest

instance Core.FromJSON UndeleteMatterRequest where
  parseJSON =
    Core.withObject
      "UndeleteMatterRequest"
      (\o -> Core.pure UndeleteMatterRequest)

instance Core.ToJSON UndeleteMatterRequest where
  toJSON = Core.const Core.emptyObject

-- | User\'s information.
--
-- /See:/ 'newUserInfo' smart constructor.
data UserInfo = UserInfo
  { -- | The displayed name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email address of the user.
    email :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
newUserInfo ::
  UserInfo
newUserInfo =
  UserInfo {displayName = Core.Nothing, email = Core.Nothing}

instance Core.FromJSON UserInfo where
  parseJSON =
    Core.withObject
      "UserInfo"
      ( \o ->
          UserInfo
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
      )

instance Core.ToJSON UserInfo where
  toJSON UserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email
          ]
      )

-- | The options for Voice exports.
--
-- /See:/ 'newVoiceExportOptions' smart constructor.
newtype VoiceExportOptions = VoiceExportOptions
  { -- | The file format for exported text messages.
    exportFormat :: (Core.Maybe VoiceExportOptions_ExportFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoiceExportOptions' with the minimum fields required to make a request.
newVoiceExportOptions ::
  VoiceExportOptions
newVoiceExportOptions =
  VoiceExportOptions {exportFormat = Core.Nothing}

instance Core.FromJSON VoiceExportOptions where
  parseJSON =
    Core.withObject
      "VoiceExportOptions"
      (\o -> VoiceExportOptions Core.<$> (o Core..:? "exportFormat"))

instance Core.ToJSON VoiceExportOptions where
  toJSON VoiceExportOptions {..} =
    Core.object
      (Core.catMaybes [("exportFormat" Core..=) Core.<$> exportFormat])

-- | Additional options for Voice search
--
-- /See:/ 'newVoiceOptions' smart constructor.
newtype VoiceOptions = VoiceOptions
  { -- | Datatypes to search
    coveredData :: (Core.Maybe [VoiceOptions_CoveredDataItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoiceOptions' with the minimum fields required to make a request.
newVoiceOptions ::
  VoiceOptions
newVoiceOptions = VoiceOptions {coveredData = Core.Nothing}

instance Core.FromJSON VoiceOptions where
  parseJSON =
    Core.withObject
      "VoiceOptions"
      (\o -> VoiceOptions Core.<$> (o Core..:? "coveredData"))

instance Core.ToJSON VoiceOptions where
  toJSON VoiceOptions {..} =
    Core.object
      (Core.catMaybes [("coveredData" Core..=) Core.<$> coveredData])
