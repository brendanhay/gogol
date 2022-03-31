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
-- Module      : Gogol.Vault.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Vault.Types
  ( -- * Configuration
    vaultService,

    -- * OAuth Scopes
    Ediscovery'FullControl,
    Ediscovery'Readonly,

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

import qualified Gogol.Prelude as Core
import Gogol.Vault.Internal.Product
import Gogol.Vault.Internal.Sum

-- | Default request referring to version @v1@ of the Google Vault API. This contains the host and root path used as a starting point for constructing service requests.
vaultService :: Core.ServiceConfig
vaultService =
  Core.defaultService
    (Core.ServiceId "vault:v1")
    "vault.googleapis.com"

-- | Manage your eDiscovery data
type Ediscovery'FullControl = "https://www.googleapis.com/auth/ediscovery"

-- | View your eDiscovery data
type Ediscovery'Readonly = "https://www.googleapis.com/auth/ediscovery.readonly"
