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
-- Module      : Gogol.Vault
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retention and eDiscovery for Google Workspace. To work with Vault resources, the account must have the <https://support.google.com/vault/answer/2799699 required Vault privileges> and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the __View All Matters__ privilege. For example, to download an export, an account needs the __Manage Exports__ privilege and the matter shared with them.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference>
module Gogol.Vault
  ( -- * Configuration
    vaultService,

    -- * OAuth Scopes
    Ediscovery'FullControl,
    Ediscovery'Readonly,

    -- * Resources

    -- ** vault.matters.addPermissions
    VaultMattersAddPermissionsResource,
    VaultMattersAddPermissions (..),
    newVaultMattersAddPermissions,

    -- ** vault.matters.close
    VaultMattersCloseResource,
    VaultMattersClose (..),
    newVaultMattersClose,

    -- ** vault.matters.count
    VaultMattersCountResource,
    VaultMattersCount (..),
    newVaultMattersCount,

    -- ** vault.matters.create
    VaultMattersCreateResource,
    VaultMattersCreate (..),
    newVaultMattersCreate,

    -- ** vault.matters.delete
    VaultMattersDeleteResource,
    VaultMattersDelete (..),
    newVaultMattersDelete,

    -- ** vault.matters.exports.create
    VaultMattersExportsCreateResource,
    VaultMattersExportsCreate (..),
    newVaultMattersExportsCreate,

    -- ** vault.matters.exports.delete
    VaultMattersExportsDeleteResource,
    VaultMattersExportsDelete (..),
    newVaultMattersExportsDelete,

    -- ** vault.matters.exports.get
    VaultMattersExportsGetResource,
    VaultMattersExportsGet (..),
    newVaultMattersExportsGet,

    -- ** vault.matters.exports.list
    VaultMattersExportsListResource,
    VaultMattersExportsList (..),
    newVaultMattersExportsList,

    -- ** vault.matters.get
    VaultMattersGetResource,
    VaultMattersGet (..),
    newVaultMattersGet,

    -- ** vault.matters.holds.accounts.create
    VaultMattersHoldsAccountsCreateResource,
    VaultMattersHoldsAccountsCreate (..),
    newVaultMattersHoldsAccountsCreate,

    -- ** vault.matters.holds.accounts.delete
    VaultMattersHoldsAccountsDeleteResource,
    VaultMattersHoldsAccountsDelete (..),
    newVaultMattersHoldsAccountsDelete,

    -- ** vault.matters.holds.accounts.list
    VaultMattersHoldsAccountsListResource,
    VaultMattersHoldsAccountsList (..),
    newVaultMattersHoldsAccountsList,

    -- ** vault.matters.holds.addHeldAccounts
    VaultMattersHoldsAddHeldAccountsResource,
    VaultMattersHoldsAddHeldAccounts (..),
    newVaultMattersHoldsAddHeldAccounts,

    -- ** vault.matters.holds.create
    VaultMattersHoldsCreateResource,
    VaultMattersHoldsCreate (..),
    newVaultMattersHoldsCreate,

    -- ** vault.matters.holds.delete
    VaultMattersHoldsDeleteResource,
    VaultMattersHoldsDelete (..),
    newVaultMattersHoldsDelete,

    -- ** vault.matters.holds.get
    VaultMattersHoldsGetResource,
    VaultMattersHoldsGet (..),
    newVaultMattersHoldsGet,

    -- ** vault.matters.holds.list
    VaultMattersHoldsListResource,
    VaultMattersHoldsList (..),
    newVaultMattersHoldsList,

    -- ** vault.matters.holds.removeHeldAccounts
    VaultMattersHoldsRemoveHeldAccountsResource,
    VaultMattersHoldsRemoveHeldAccounts (..),
    newVaultMattersHoldsRemoveHeldAccounts,

    -- ** vault.matters.holds.update
    VaultMattersHoldsUpdateResource,
    VaultMattersHoldsUpdate (..),
    newVaultMattersHoldsUpdate,

    -- ** vault.matters.list
    VaultMattersListResource,
    VaultMattersList (..),
    newVaultMattersList,

    -- ** vault.matters.removePermissions
    VaultMattersRemovePermissionsResource,
    VaultMattersRemovePermissions (..),
    newVaultMattersRemovePermissions,

    -- ** vault.matters.reopen
    VaultMattersReopenResource,
    VaultMattersReopen (..),
    newVaultMattersReopen,

    -- ** vault.matters.savedQueries.create
    VaultMattersSavedQueriesCreateResource,
    VaultMattersSavedQueriesCreate (..),
    newVaultMattersSavedQueriesCreate,

    -- ** vault.matters.savedQueries.delete
    VaultMattersSavedQueriesDeleteResource,
    VaultMattersSavedQueriesDelete (..),
    newVaultMattersSavedQueriesDelete,

    -- ** vault.matters.savedQueries.get
    VaultMattersSavedQueriesGetResource,
    VaultMattersSavedQueriesGet (..),
    newVaultMattersSavedQueriesGet,

    -- ** vault.matters.savedQueries.list
    VaultMattersSavedQueriesListResource,
    VaultMattersSavedQueriesList (..),
    newVaultMattersSavedQueriesList,

    -- ** vault.matters.undelete
    VaultMattersUndeleteResource,
    VaultMattersUndelete (..),
    newVaultMattersUndelete,

    -- ** vault.matters.update
    VaultMattersUpdateResource,
    VaultMattersUpdate (..),
    newVaultMattersUpdate,

    -- ** vault.operations.cancel
    VaultOperationsCancelResource,
    VaultOperationsCancel (..),
    newVaultOperationsCancel,

    -- ** vault.operations.delete
    VaultOperationsDeleteResource,
    VaultOperationsDelete (..),
    newVaultOperationsDelete,

    -- ** vault.operations.get
    VaultOperationsGetResource,
    VaultOperationsGet (..),
    newVaultOperationsGet,

    -- ** vault.operations.list
    VaultOperationsListResource,
    VaultOperationsList (..),
    newVaultOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccountCount
    AccountCount (..),
    newAccountCount,

    -- ** AccountCountError
    AccountCountError (..),
    newAccountCountError,

    -- ** AccountCountError_ErrorType
    AccountCountError_ErrorType (..),

    -- ** AccountInfo
    AccountInfo (..),
    newAccountInfo,

    -- ** AddHeldAccountResult
    AddHeldAccountResult (..),
    newAddHeldAccountResult,

    -- ** AddHeldAccountsRequest
    AddHeldAccountsRequest (..),
    newAddHeldAccountsRequest,

    -- ** AddHeldAccountsResponse
    AddHeldAccountsResponse (..),
    newAddHeldAccountsResponse,

    -- ** AddMatterPermissionsRequest
    AddMatterPermissionsRequest (..),
    newAddMatterPermissionsRequest,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CloseMatterRequest
    CloseMatterRequest (..),
    newCloseMatterRequest,

    -- ** CloseMatterResponse
    CloseMatterResponse (..),
    newCloseMatterResponse,

    -- ** CloudStorageFile
    CloudStorageFile (..),
    newCloudStorageFile,

    -- ** CloudStorageSink
    CloudStorageSink (..),
    newCloudStorageSink,

    -- ** CorpusQuery
    CorpusQuery (..),
    newCorpusQuery,

    -- ** CountArtifactsMetadata
    CountArtifactsMetadata (..),
    newCountArtifactsMetadata,

    -- ** CountArtifactsRequest
    CountArtifactsRequest (..),
    newCountArtifactsRequest,

    -- ** CountArtifactsRequest_View
    CountArtifactsRequest_View (..),

    -- ** CountArtifactsResponse
    CountArtifactsResponse (..),
    newCountArtifactsResponse,

    -- ** DriveExportOptions
    DriveExportOptions (..),
    newDriveExportOptions,

    -- ** DriveOptions
    DriveOptions (..),
    newDriveOptions,

    -- ** DriveOptions_ClientSideEncryptedOption
    DriveOptions_ClientSideEncryptedOption (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Export
    Export (..),
    newExport,

    -- ** Export_Status
    Export_Status (..),

    -- ** ExportOptions
    ExportOptions (..),
    newExportOptions,

    -- ** ExportOptions_Region
    ExportOptions_Region (..),

    -- ** ExportStats
    ExportStats (..),
    newExportStats,

    -- ** GroupsCountResult
    GroupsCountResult (..),
    newGroupsCountResult,

    -- ** GroupsExportOptions
    GroupsExportOptions (..),
    newGroupsExportOptions,

    -- ** GroupsExportOptions_ExportFormat
    GroupsExportOptions_ExportFormat (..),

    -- ** HangoutsChatExportOptions
    HangoutsChatExportOptions (..),
    newHangoutsChatExportOptions,

    -- ** HangoutsChatExportOptions_ExportFormat
    HangoutsChatExportOptions_ExportFormat (..),

    -- ** HangoutsChatInfo
    HangoutsChatInfo (..),
    newHangoutsChatInfo,

    -- ** HangoutsChatOptions
    HangoutsChatOptions (..),
    newHangoutsChatOptions,

    -- ** HeldAccount
    HeldAccount (..),
    newHeldAccount,

    -- ** HeldDriveQuery
    HeldDriveQuery (..),
    newHeldDriveQuery,

    -- ** HeldGroupsQuery
    HeldGroupsQuery (..),
    newHeldGroupsQuery,

    -- ** HeldHangoutsChatQuery
    HeldHangoutsChatQuery (..),
    newHeldHangoutsChatQuery,

    -- ** HeldMailQuery
    HeldMailQuery (..),
    newHeldMailQuery,

    -- ** HeldOrgUnit
    HeldOrgUnit (..),
    newHeldOrgUnit,

    -- ** HeldVoiceQuery
    HeldVoiceQuery (..),
    newHeldVoiceQuery,

    -- ** HeldVoiceQuery_CoveredDataItem
    HeldVoiceQuery_CoveredDataItem (..),

    -- ** Hold
    Hold (..),
    newHold,

    -- ** Hold_Corpus
    Hold_Corpus (..),

    -- ** ListExportsResponse
    ListExportsResponse (..),
    newListExportsResponse,

    -- ** ListHeldAccountsResponse
    ListHeldAccountsResponse (..),
    newListHeldAccountsResponse,

    -- ** ListHoldsResponse
    ListHoldsResponse (..),
    newListHoldsResponse,

    -- ** ListMattersResponse
    ListMattersResponse (..),
    newListMattersResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListSavedQueriesResponse
    ListSavedQueriesResponse (..),
    newListSavedQueriesResponse,

    -- ** MailCountResult
    MailCountResult (..),
    newMailCountResult,

    -- ** MailExportOptions
    MailExportOptions (..),
    newMailExportOptions,

    -- ** MailExportOptions_ExportFormat
    MailExportOptions_ExportFormat (..),

    -- ** MailOptions
    MailOptions (..),
    newMailOptions,

    -- ** Matter
    Matter (..),
    newMatter,

    -- ** Matter_State
    Matter_State (..),

    -- ** MatterPermission
    MatterPermission (..),
    newMatterPermission,

    -- ** MatterPermission_Role
    MatterPermission_Role (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OrgUnitInfo
    OrgUnitInfo (..),
    newOrgUnitInfo,

    -- ** Query
    Query (..),
    newQuery,

    -- ** Query_Corpus
    Query_Corpus (..),

    -- ** Query_DataScope
    Query_DataScope (..),

    -- ** Query_Method
    Query_Method (..),

    -- ** Query_SearchMethod
    Query_SearchMethod (..),

    -- ** RemoveHeldAccountsRequest
    RemoveHeldAccountsRequest (..),
    newRemoveHeldAccountsRequest,

    -- ** RemoveHeldAccountsResponse
    RemoveHeldAccountsResponse (..),
    newRemoveHeldAccountsResponse,

    -- ** RemoveMatterPermissionsRequest
    RemoveMatterPermissionsRequest (..),
    newRemoveMatterPermissionsRequest,

    -- ** ReopenMatterRequest
    ReopenMatterRequest (..),
    newReopenMatterRequest,

    -- ** ReopenMatterResponse
    ReopenMatterResponse (..),
    newReopenMatterResponse,

    -- ** SavedQuery
    SavedQuery (..),
    newSavedQuery,

    -- ** SharedDriveInfo
    SharedDriveInfo (..),
    newSharedDriveInfo,

    -- ** SitesUrlInfo
    SitesUrlInfo (..),
    newSitesUrlInfo,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TeamDriveInfo
    TeamDriveInfo (..),
    newTeamDriveInfo,

    -- ** UndeleteMatterRequest
    UndeleteMatterRequest (..),
    newUndeleteMatterRequest,

    -- ** UserInfo
    UserInfo (..),
    newUserInfo,

    -- ** VoiceExportOptions
    VoiceExportOptions (..),
    newVoiceExportOptions,

    -- ** VoiceExportOptions_ExportFormat
    VoiceExportOptions_ExportFormat (..),

    -- ** VoiceOptions
    VoiceOptions (..),
    newVoiceOptions,

    -- ** VoiceOptions_CoveredDataItem
    VoiceOptions_CoveredDataItem (..),

    -- ** MattersGetView
    MattersGetView (..),

    -- ** MattersHoldsGetView
    MattersHoldsGetView (..),

    -- ** MattersHoldsListView
    MattersHoldsListView (..),

    -- ** MattersListState
    MattersListState (..),

    -- ** MattersListView
    MattersListView (..),
  )
where

import Gogol.Vault.Matters.AddPermissions
import Gogol.Vault.Matters.Close
import Gogol.Vault.Matters.Count
import Gogol.Vault.Matters.Create
import Gogol.Vault.Matters.Delete
import Gogol.Vault.Matters.Exports.Create
import Gogol.Vault.Matters.Exports.Delete
import Gogol.Vault.Matters.Exports.Get
import Gogol.Vault.Matters.Exports.List
import Gogol.Vault.Matters.Get
import Gogol.Vault.Matters.Holds.Accounts.Create
import Gogol.Vault.Matters.Holds.Accounts.Delete
import Gogol.Vault.Matters.Holds.Accounts.List
import Gogol.Vault.Matters.Holds.AddHeldAccounts
import Gogol.Vault.Matters.Holds.Create
import Gogol.Vault.Matters.Holds.Delete
import Gogol.Vault.Matters.Holds.Get
import Gogol.Vault.Matters.Holds.List
import Gogol.Vault.Matters.Holds.RemoveHeldAccounts
import Gogol.Vault.Matters.Holds.Update
import Gogol.Vault.Matters.List
import Gogol.Vault.Matters.RemovePermissions
import Gogol.Vault.Matters.Reopen
import Gogol.Vault.Matters.SavedQueries.Create
import Gogol.Vault.Matters.SavedQueries.Delete
import Gogol.Vault.Matters.SavedQueries.Get
import Gogol.Vault.Matters.SavedQueries.List
import Gogol.Vault.Matters.Undelete
import Gogol.Vault.Matters.Update
import Gogol.Vault.Operations.Cancel
import Gogol.Vault.Operations.Delete
import Gogol.Vault.Operations.Get
import Gogol.Vault.Operations.List
import Gogol.Vault.Types
