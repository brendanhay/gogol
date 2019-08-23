{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vault.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiDisplayName

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
    , cqMailQuery

    -- * QueryCorpus
    , QueryCorpus (..)

    -- * OrgUnitInfo
    , OrgUnitInfo
    , orgUnitInfo
    , ouiOrgUnitId

    -- * RemoveHeldAccountsResponse
    , RemoveHeldAccountsResponse
    , removeHeldAccountsResponse
    , rharStatuses

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

    -- * HeldDriveQuery
    , HeldDriveQuery
    , heldDriveQuery
    , hdqIncludeTeamDriveFiles

    -- * HangoutsChatOptions
    , HangoutsChatOptions
    , hangoutsChatOptions
    , hcoIncludeRooms

    -- * QuerySearchMethod
    , QuerySearchMethod (..)

    -- * AddMatterPermissionsRequest
    , AddMatterPermissionsRequest
    , addMatterPermissionsRequest
    , amprSendEmails
    , amprCcMe
    , amprMatterPermission

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

    -- * RemoveMatterPermissionsRequest
    , RemoveMatterPermissionsRequest
    , removeMatterPermissionsRequest
    , rmprAccountId

    -- * ExportOptions
    , ExportOptions
    , exportOptions
    , eoHangoutsChatOptions
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

    -- * GroupsExportOptionsExportFormat
    , GroupsExportOptionsExportFormat (..)

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
    , qDriveOptions
    , qEndTime
    , qDataScope
    , qCorpus
    , qTimeZone
    , qMailOptions
    , qSearchMethod

    -- * Xgafv
    , Xgafv (..)

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

    -- * ListHoldsResponse
    , ListHoldsResponse
    , listHoldsResponse
    , lhrNextPageToken
    , lhrHolds

    -- * GroupsExportOptions
    , GroupsExportOptions
    , groupsExportOptions
    , geoExportFormat

    -- * MatterPermission
    , MatterPermission
    , matterPermission
    , mpRole
    , mpAccountId

    -- * DriveExportOptions
    , DriveExportOptions
    , driveExportOptions
    , deoIncludeAccessInfo

    -- * HeldGroupsQuery
    , HeldGroupsQuery
    , heldGroupsQuery
    , hgqStartTime
    , hgqTerms
    , hgqEndTime

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

    -- * MailOptions
    , MailOptions
    , mailOptions
    , moExcludeDrafts
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types.Product
import           Network.Google.Vault.Types.Sum

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
