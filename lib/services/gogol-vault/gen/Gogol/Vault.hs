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
    (
    -- * Configuration
      vaultService

    -- * OAuth Scopes
    , ediscoveryScope
    , ediscoveryReadOnlyScope

    -- * Resources

    -- ** vault.matters.addPermissions
    , VaultMattersAddPermissionsResource
    , newVaultMattersAddPermissions
    , VaultMattersAddPermissions

    -- ** vault.matters.close
    , VaultMattersCloseResource
    , newVaultMattersClose
    , VaultMattersClose

    -- ** vault.matters.count
    , VaultMattersCountResource
    , newVaultMattersCount
    , VaultMattersCount

    -- ** vault.matters.create
    , VaultMattersCreateResource
    , newVaultMattersCreate
    , VaultMattersCreate

    -- ** vault.matters.delete
    , VaultMattersDeleteResource
    , newVaultMattersDelete
    , VaultMattersDelete

    -- ** vault.matters.exports.create
    , VaultMattersExportsCreateResource
    , newVaultMattersExportsCreate
    , VaultMattersExportsCreate

    -- ** vault.matters.exports.delete
    , VaultMattersExportsDeleteResource
    , newVaultMattersExportsDelete
    , VaultMattersExportsDelete

    -- ** vault.matters.exports.get
    , VaultMattersExportsGetResource
    , newVaultMattersExportsGet
    , VaultMattersExportsGet

    -- ** vault.matters.exports.list
    , VaultMattersExportsListResource
    , newVaultMattersExportsList
    , VaultMattersExportsList

    -- ** vault.matters.get
    , VaultMattersGetResource
    , newVaultMattersGet
    , VaultMattersGet

    -- ** vault.matters.holds.accounts.create
    , VaultMattersHoldsAccountsCreateResource
    , newVaultMattersHoldsAccountsCreate
    , VaultMattersHoldsAccountsCreate

    -- ** vault.matters.holds.accounts.delete
    , VaultMattersHoldsAccountsDeleteResource
    , newVaultMattersHoldsAccountsDelete
    , VaultMattersHoldsAccountsDelete

    -- ** vault.matters.holds.accounts.list
    , VaultMattersHoldsAccountsListResource
    , newVaultMattersHoldsAccountsList
    , VaultMattersHoldsAccountsList

    -- ** vault.matters.holds.addHeldAccounts
    , VaultMattersHoldsAddHeldAccountsResource
    , newVaultMattersHoldsAddHeldAccounts
    , VaultMattersHoldsAddHeldAccounts

    -- ** vault.matters.holds.create
    , VaultMattersHoldsCreateResource
    , newVaultMattersHoldsCreate
    , VaultMattersHoldsCreate

    -- ** vault.matters.holds.delete
    , VaultMattersHoldsDeleteResource
    , newVaultMattersHoldsDelete
    , VaultMattersHoldsDelete

    -- ** vault.matters.holds.get
    , VaultMattersHoldsGetResource
    , newVaultMattersHoldsGet
    , VaultMattersHoldsGet

    -- ** vault.matters.holds.list
    , VaultMattersHoldsListResource
    , newVaultMattersHoldsList
    , VaultMattersHoldsList

    -- ** vault.matters.holds.removeHeldAccounts
    , VaultMattersHoldsRemoveHeldAccountsResource
    , newVaultMattersHoldsRemoveHeldAccounts
    , VaultMattersHoldsRemoveHeldAccounts

    -- ** vault.matters.holds.update
    , VaultMattersHoldsUpdateResource
    , newVaultMattersHoldsUpdate
    , VaultMattersHoldsUpdate

    -- ** vault.matters.list
    , VaultMattersListResource
    , newVaultMattersList
    , VaultMattersList

    -- ** vault.matters.removePermissions
    , VaultMattersRemovePermissionsResource
    , newVaultMattersRemovePermissions
    , VaultMattersRemovePermissions

    -- ** vault.matters.reopen
    , VaultMattersReopenResource
    , newVaultMattersReopen
    , VaultMattersReopen

    -- ** vault.matters.savedQueries.create
    , VaultMattersSavedQueriesCreateResource
    , newVaultMattersSavedQueriesCreate
    , VaultMattersSavedQueriesCreate

    -- ** vault.matters.savedQueries.delete
    , VaultMattersSavedQueriesDeleteResource
    , newVaultMattersSavedQueriesDelete
    , VaultMattersSavedQueriesDelete

    -- ** vault.matters.savedQueries.get
    , VaultMattersSavedQueriesGetResource
    , newVaultMattersSavedQueriesGet
    , VaultMattersSavedQueriesGet

    -- ** vault.matters.savedQueries.list
    , VaultMattersSavedQueriesListResource
    , newVaultMattersSavedQueriesList
    , VaultMattersSavedQueriesList

    -- ** vault.matters.undelete
    , VaultMattersUndeleteResource
    , newVaultMattersUndelete
    , VaultMattersUndelete

    -- ** vault.matters.update
    , VaultMattersUpdateResource
    , newVaultMattersUpdate
    , VaultMattersUpdate

    -- ** vault.operations.cancel
    , VaultOperationsCancelResource
    , newVaultOperationsCancel
    , VaultOperationsCancel

    -- ** vault.operations.delete
    , VaultOperationsDeleteResource
    , newVaultOperationsDelete
    , VaultOperationsDelete

    -- ** vault.operations.get
    , VaultOperationsGetResource
    , newVaultOperationsGet
    , VaultOperationsGet

    -- ** vault.operations.list
    , VaultOperationsListResource
    , newVaultOperationsList
    , VaultOperationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccountCount
    , AccountCount (..)
    , newAccountCount

    -- ** AccountCountError
    , AccountCountError (..)
    , newAccountCountError

    -- ** AccountCountError_ErrorType
    , AccountCountError_ErrorType (..)

    -- ** AccountInfo
    , AccountInfo (..)
    , newAccountInfo

    -- ** AddHeldAccountResult
    , AddHeldAccountResult (..)
    , newAddHeldAccountResult

    -- ** AddHeldAccountsRequest
    , AddHeldAccountsRequest (..)
    , newAddHeldAccountsRequest

    -- ** AddHeldAccountsResponse
    , AddHeldAccountsResponse (..)
    , newAddHeldAccountsResponse

    -- ** AddMatterPermissionsRequest
    , AddMatterPermissionsRequest (..)
    , newAddMatterPermissionsRequest

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CloseMatterRequest
    , CloseMatterRequest (..)
    , newCloseMatterRequest

    -- ** CloseMatterResponse
    , CloseMatterResponse (..)
    , newCloseMatterResponse

    -- ** CloudStorageFile
    , CloudStorageFile (..)
    , newCloudStorageFile

    -- ** CloudStorageSink
    , CloudStorageSink (..)
    , newCloudStorageSink

    -- ** CorpusQuery
    , CorpusQuery (..)
    , newCorpusQuery

    -- ** CountArtifactsMetadata
    , CountArtifactsMetadata (..)
    , newCountArtifactsMetadata

    -- ** CountArtifactsRequest
    , CountArtifactsRequest (..)
    , newCountArtifactsRequest

    -- ** CountArtifactsRequest_View
    , CountArtifactsRequest_View (..)

    -- ** CountArtifactsResponse
    , CountArtifactsResponse (..)
    , newCountArtifactsResponse

    -- ** DriveExportOptions
    , DriveExportOptions (..)
    , newDriveExportOptions

    -- ** DriveOptions
    , DriveOptions (..)
    , newDriveOptions

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Export
    , Export (..)
    , newExport

    -- ** Export_Status
    , Export_Status (..)

    -- ** ExportOptions
    , ExportOptions (..)
    , newExportOptions

    -- ** ExportOptions_Region
    , ExportOptions_Region (..)

    -- ** ExportStats
    , ExportStats (..)
    , newExportStats

    -- ** GroupsCountResult
    , GroupsCountResult (..)
    , newGroupsCountResult

    -- ** GroupsExportOptions
    , GroupsExportOptions (..)
    , newGroupsExportOptions

    -- ** GroupsExportOptions_ExportFormat
    , GroupsExportOptions_ExportFormat (..)

    -- ** HangoutsChatExportOptions
    , HangoutsChatExportOptions (..)
    , newHangoutsChatExportOptions

    -- ** HangoutsChatExportOptions_ExportFormat
    , HangoutsChatExportOptions_ExportFormat (..)

    -- ** HangoutsChatInfo
    , HangoutsChatInfo (..)
    , newHangoutsChatInfo

    -- ** HangoutsChatOptions
    , HangoutsChatOptions (..)
    , newHangoutsChatOptions

    -- ** HeldAccount
    , HeldAccount (..)
    , newHeldAccount

    -- ** HeldDriveQuery
    , HeldDriveQuery (..)
    , newHeldDriveQuery

    -- ** HeldGroupsQuery
    , HeldGroupsQuery (..)
    , newHeldGroupsQuery

    -- ** HeldHangoutsChatQuery
    , HeldHangoutsChatQuery (..)
    , newHeldHangoutsChatQuery

    -- ** HeldMailQuery
    , HeldMailQuery (..)
    , newHeldMailQuery

    -- ** HeldOrgUnit
    , HeldOrgUnit (..)
    , newHeldOrgUnit

    -- ** HeldVoiceQuery
    , HeldVoiceQuery (..)
    , newHeldVoiceQuery

    -- ** HeldVoiceQuery_CoveredDataItem
    , HeldVoiceQuery_CoveredDataItem (..)

    -- ** Hold
    , Hold (..)
    , newHold

    -- ** Hold_Corpus
    , Hold_Corpus (..)

    -- ** ListExportsResponse
    , ListExportsResponse (..)
    , newListExportsResponse

    -- ** ListHeldAccountsResponse
    , ListHeldAccountsResponse (..)
    , newListHeldAccountsResponse

    -- ** ListHoldsResponse
    , ListHoldsResponse (..)
    , newListHoldsResponse

    -- ** ListMattersResponse
    , ListMattersResponse (..)
    , newListMattersResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListSavedQueriesResponse
    , ListSavedQueriesResponse (..)
    , newListSavedQueriesResponse

    -- ** MailCountResult
    , MailCountResult (..)
    , newMailCountResult

    -- ** MailExportOptions
    , MailExportOptions (..)
    , newMailExportOptions

    -- ** MailExportOptions_ExportFormat
    , MailExportOptions_ExportFormat (..)

    -- ** MailOptions
    , MailOptions (..)
    , newMailOptions

    -- ** Matter
    , Matter (..)
    , newMatter

    -- ** Matter_State
    , Matter_State (..)

    -- ** MatterPermission
    , MatterPermission (..)
    , newMatterPermission

    -- ** MatterPermission_Role
    , MatterPermission_Role (..)

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OrgUnitInfo
    , OrgUnitInfo (..)
    , newOrgUnitInfo

    -- ** Query
    , Query (..)
    , newQuery

    -- ** Query_Corpus
    , Query_Corpus (..)

    -- ** Query_DataScope
    , Query_DataScope (..)

    -- ** Query_Method
    , Query_Method (..)

    -- ** Query_SearchMethod
    , Query_SearchMethod (..)

    -- ** RemoveHeldAccountsRequest
    , RemoveHeldAccountsRequest (..)
    , newRemoveHeldAccountsRequest

    -- ** RemoveHeldAccountsResponse
    , RemoveHeldAccountsResponse (..)
    , newRemoveHeldAccountsResponse

    -- ** RemoveMatterPermissionsRequest
    , RemoveMatterPermissionsRequest (..)
    , newRemoveMatterPermissionsRequest

    -- ** ReopenMatterRequest
    , ReopenMatterRequest (..)
    , newReopenMatterRequest

    -- ** ReopenMatterResponse
    , ReopenMatterResponse (..)
    , newReopenMatterResponse

    -- ** SavedQuery
    , SavedQuery (..)
    , newSavedQuery

    -- ** SharedDriveInfo
    , SharedDriveInfo (..)
    , newSharedDriveInfo

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TeamDriveInfo
    , TeamDriveInfo (..)
    , newTeamDriveInfo

    -- ** UndeleteMatterRequest
    , UndeleteMatterRequest (..)
    , newUndeleteMatterRequest

    -- ** UserInfo
    , UserInfo (..)
    , newUserInfo

    -- ** VoiceExportOptions
    , VoiceExportOptions (..)
    , newVoiceExportOptions

    -- ** VoiceExportOptions_ExportFormat
    , VoiceExportOptions_ExportFormat (..)

    -- ** VoiceOptions
    , VoiceOptions (..)
    , newVoiceOptions

    -- ** VoiceOptions_CoveredDataItem
    , VoiceOptions_CoveredDataItem (..)

    -- ** MattersGetView
    , MattersGetView (..)

    -- ** MattersHoldsGetView
    , MattersHoldsGetView (..)

    -- ** MattersHoldsListView
    , MattersHoldsListView (..)

    -- ** MattersListState
    , MattersListState (..)

    -- ** MattersListView
    , MattersListView (..)
    ) where

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
