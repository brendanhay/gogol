{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vault.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vault.Types
    (
    -- * Service Configuration
      vaultService

    -- * OAuth Scopes
    , ediscoveryReadOnlyScope
    , ediscoveryScope

    -- * HeldAccount
    , HeldAccount
    , heldAccount
    , haEmail
    , haLastName
    , haAccountId
    , haHoldTime
    , haFirstName

    -- * HeldHangoutsChatQuery
    , HeldHangoutsChatQuery
    , heldHangoutsChatQuery
    , hhcqIncludeRooms

    -- * ExportOptionsRegion
    , ExportOptionsRegion (..)

    -- * Export
    , Export
    , export'
    , eStatus
    , eCloudStorageSink
    , eMatterId
    , eStats
    , eExportOptions
    , eName
    , eQuery
    , eId
    , eRequester
    , eCreateTime

    -- * MatterPermissionRole
    , MatterPermissionRole (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AccountInfo
    , AccountInfo
    , accountInfo
    , aiEmails

    -- * CloudStorageSink
    , CloudStorageSink
    , cloudStorageSink
    , cssFiles

    -- * HoldCorpus
    , HoldCorpus (..)

    -- * HangoutsChatExportOptions
    , HangoutsChatExportOptions
    , hangoutsChatExportOptions
    , hceoExportFormat

    -- * CountArtifactsRequest
    , CountArtifactsRequest
    , countArtifactsRequest
    , carQuery
    , carView

    -- * UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiDisplayName

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * TeamDriveInfo
    , TeamDriveInfo
    , teamDriveInfo
    , tdiTeamDriveIds

    -- * AddHeldAccountsRequest
    , AddHeldAccountsRequest
    , addHeldAccountsRequest
    , aharAccountIds
    , aharEmails

    -- * CorpusQuery
    , CorpusQuery
    , corpusQuery
    , cqGroupsQuery
    , cqDriveQuery
    , cqHangoutsChatQuery
    , cqVoiceQuery
    , cqMailQuery

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * QueryCorpus
    , QueryCorpus (..)

    -- * OrgUnitInfo
    , OrgUnitInfo
    , orgUnitInfo
    , ouiOrgUnitId

    -- * AccountCountErrorErrorType
    , AccountCountErrorErrorType (..)

    -- * RemoveHeldAccountsResponse
    , RemoveHeldAccountsResponse
    , removeHeldAccountsResponse
    , rharStatuses

    -- * MattersListState
    , MattersListState (..)

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * QueryMethod
    , QueryMethod (..)

    -- * Empty
    , Empty
    , empty

    -- * ExportStats
    , ExportStats
    , exportStats
    , esTotalArtifactCount
    , esSizeInBytes
    , esExportedArtifactCount

    -- * HangoutsChatInfo
    , HangoutsChatInfo
    , hangoutsChatInfo
    , hciRoomId

    -- * RemoveHeldAccountsRequest
    , RemoveHeldAccountsRequest
    , removeHeldAccountsRequest
    , rharAccountIds

    -- * HangoutsChatExportOptionsExportFormat
    , HangoutsChatExportOptionsExportFormat (..)

    -- * QueryDataScope
    , QueryDataScope (..)

    -- * ListSavedQueriesResponse
    , ListSavedQueriesResponse
    , listSavedQueriesResponse
    , lsqrNextPageToken
    , lsqrSavedQueries

    -- * ExportStatus
    , ExportStatus (..)

    -- * UndeleteMatterRequest
    , UndeleteMatterRequest
    , undeleteMatterRequest

    -- * MattersHoldsListView
    , MattersHoldsListView (..)

    -- * HeldDriveQuery
    , HeldDriveQuery
    , heldDriveQuery
    , hdqIncludeTeamDriveFiles
    , hdqIncludeSharedDriveFiles

    -- * HangoutsChatOptions
    , HangoutsChatOptions
    , hangoutsChatOptions
    , hcoIncludeRooms

    -- * QuerySearchMethod
    , QuerySearchMethod (..)

    -- * MailCountResult
    , MailCountResult
    , mailCountResult
    , mcrAccountCounts
    , mcrAccountCountErrors
    , mcrMatchingAccountsCount
    , mcrQueriedAccountsCount
    , mcrNonQueryableAccounts

    -- * CountArtifactsMetadata
    , CountArtifactsMetadata
    , countArtifactsMetadata
    , camStartTime
    , camMatterId
    , camEndTime
    , camQuery

    -- * AddMatterPermissionsRequest
    , AddMatterPermissionsRequest
    , addMatterPermissionsRequest
    , amprSendEmails
    , amprCcMe
    , amprMatterPermission

    -- * MattersGetView
    , MattersGetView (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Matter
    , Matter
    , matter
    , mState
    , mMatterPermissions
    , mMatterId
    , mName
    , mDescription

    -- * CloseMatterResponse
    , CloseMatterResponse
    , closeMatterResponse
    , cmrMatter

    -- * HeldMailQuery
    , HeldMailQuery
    , heldMailQuery
    , hmqStartTime
    , hmqTerms
    , hmqEndTime

    -- * ListHeldAccountsResponse
    , ListHeldAccountsResponse
    , listHeldAccountsResponse
    , lharAccounts

    -- * ListExportsResponse
    , ListExportsResponse
    , listExportsResponse
    , lerNextPageToken
    , lerExports

    -- * VoiceOptions
    , VoiceOptions
    , voiceOptions
    , voCoveredData

    -- * HeldOrgUnit
    , HeldOrgUnit
    , heldOrgUnit
    , houHoldTime
    , houOrgUnitId

    -- * ListMattersResponse
    , ListMattersResponse
    , listMattersResponse
    , lmrNextPageToken
    , lmrMatters

    -- * ReopenMatterRequest
    , ReopenMatterRequest
    , reopenMatterRequest

    -- * HeldVoiceQuery
    , HeldVoiceQuery
    , heldVoiceQuery
    , hvqCoveredData

    -- * RemoveMatterPermissionsRequest
    , RemoveMatterPermissionsRequest
    , removeMatterPermissionsRequest
    , rmprAccountId

    -- * ExportOptions
    , ExportOptions
    , exportOptions
    , eoHangoutsChatOptions
    , eoVoiceOptions
    , eoDriveOptions
    , eoGroupsOptions
    , eoRegion
    , eoMailOptions

    -- * MatterState
    , MatterState (..)

    -- * CloseMatterRequest
    , CloseMatterRequest
    , closeMatterRequest

    -- * DriveOptions
    , DriveOptions
    , driveOptions
    , doIncludeSharedDrives
    , doIncludeTeamDrives
    , doVersionDate

    -- * AddHeldAccountResult
    , AddHeldAccountResult
    , addHeldAccountResult
    , aharStatus
    , aharAccount

    -- * SavedQuery
    , SavedQuery
    , savedQuery
    , sqSavedQueryId
    , sqMatterId
    , sqQuery
    , sqDisplayName
    , sqCreateTime

    -- * Hold
    , Hold
    , hold
    , hOrgUnit
    , hHoldId
    , hAccounts
    , hUpdateTime
    , hName
    , hQuery
    , hCorpus

    -- * MattersListView
    , MattersListView (..)

    -- * VoiceOptionsCoveredDataItem
    , VoiceOptionsCoveredDataItem (..)

    -- * GroupsExportOptionsExportFormat
    , GroupsExportOptionsExportFormat (..)

    -- * MattersHoldsGetView
    , MattersHoldsGetView (..)

    -- * CountArtifactsRequestView
    , CountArtifactsRequestView (..)

    -- * Query
    , Query
    , query
    , qAccountInfo
    , qTeamDriveInfo
    , qOrgUnitInfo
    , qStartTime
    , qTerms
    , qHangoutsChatInfo
    , qHangoutsChatOptions
    , qVoiceOptions
    , qDriveOptions
    , qMethod
    , qEndTime
    , qDataScope
    , qCorpus
    , qTimeZone
    , qSharedDriveInfo
    , qMailOptions
    , qSearchMethod

    -- * Xgafv
    , Xgafv (..)

    -- * AccountCountError
    , AccountCountError
    , accountCountError
    , aceAccount
    , aceErrorType

    -- * AccountCount
    , AccountCount
    , accountCount
    , acCount
    , acAccount

    -- * VoiceExportOptions
    , VoiceExportOptions
    , voiceExportOptions
    , veoExportFormat

    -- * MailExportOptionsExportFormat
    , MailExportOptionsExportFormat (..)

    -- * AddHeldAccountsResponse
    , AddHeldAccountsResponse
    , addHeldAccountsResponse
    , aharResponses

    -- * MailExportOptions
    , MailExportOptions
    , mailExportOptions
    , meoExportFormat
    , meoShowConfidentialModeContent

    -- * CountArtifactsResponse
    , CountArtifactsResponse
    , countArtifactsResponse
    , carMailCountResult
    , carGroupsCountResult
    , carTotalCount

    -- * VoiceExportOptionsExportFormat
    , VoiceExportOptionsExportFormat (..)

    -- * ListHoldsResponse
    , ListHoldsResponse
    , listHoldsResponse
    , lhrNextPageToken
    , lhrHolds

    -- * GroupsExportOptions
    , GroupsExportOptions
    , groupsExportOptions
    , geoExportFormat

    -- * HeldVoiceQueryCoveredDataItem
    , HeldVoiceQueryCoveredDataItem (..)

    -- * MatterPermission
    , MatterPermission
    , matterPermission
    , mpRole
    , mpAccountId

    -- * DriveExportOptions
    , DriveExportOptions
    , driveExportOptions
    , deoIncludeAccessInfo

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * HeldGroupsQuery
    , HeldGroupsQuery
    , heldGroupsQuery
    , hgqStartTime
    , hgqTerms
    , hgqEndTime

    -- * SharedDriveInfo
    , SharedDriveInfo
    , sharedDriveInfo
    , sdiSharedDriveIds

    -- * ReopenMatterResponse
    , ReopenMatterResponse
    , reopenMatterResponse
    , rmrMatter

    -- * CloudStorageFile
    , CloudStorageFile
    , cloudStorageFile
    , csfObjectName
    , csfSize
    , csfBucketName
    , csfMD5Hash

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * GroupsCountResult
    , GroupsCountResult
    , groupsCountResult
    , gcrAccountCounts
    , gcrAccountCountErrors
    , gcrMatchingAccountsCount
    , gcrQueriedAccountsCount
    , gcrNonQueryableAccounts

    -- * MailOptions
    , MailOptions
    , mailOptions
    , moExcludeDrafts
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types.Product
import Network.Google.Vault.Types.Sum

-- | Default request referring to version 'v1' of the G Suite Vault API. This contains the host and root path used as a starting point for constructing service requests.
vaultService :: ServiceConfig
vaultService
  = defaultService (ServiceId "vault:v1")
      "vault.googleapis.com"

-- | View your eDiscovery data
ediscoveryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ediscovery.readonly"]
ediscoveryReadOnlyScope = Proxy

-- | Manage your eDiscovery data
ediscoveryScope :: Proxy '["https://www.googleapis.com/auth/ediscovery"]
ediscoveryScope = Proxy
