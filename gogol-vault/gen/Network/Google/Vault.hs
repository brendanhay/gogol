{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Vault
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Archiving and eDiscovery for G Suite.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference>
module Network.Google.Vault
    (
    -- * Service Configuration
      vaultService

    -- * OAuth Scopes
    , ediscoveryReadOnlyScope
    , ediscoveryScope

    -- * API Declaration
    , VaultAPI

    -- * Resources

    -- ** vault.matters.addPermissions
    , module Network.Google.Resource.Vault.Matters.AddPermissions

    -- ** vault.matters.close
    , module Network.Google.Resource.Vault.Matters.Close

    -- ** vault.matters.create
    , module Network.Google.Resource.Vault.Matters.Create

    -- ** vault.matters.delete
    , module Network.Google.Resource.Vault.Matters.Delete

    -- ** vault.matters.exports.create
    , module Network.Google.Resource.Vault.Matters.Exports.Create

    -- ** vault.matters.exports.delete
    , module Network.Google.Resource.Vault.Matters.Exports.Delete

    -- ** vault.matters.exports.get
    , module Network.Google.Resource.Vault.Matters.Exports.Get

    -- ** vault.matters.exports.list
    , module Network.Google.Resource.Vault.Matters.Exports.List

    -- ** vault.matters.get
    , module Network.Google.Resource.Vault.Matters.Get

    -- ** vault.matters.holds.accounts.create
    , module Network.Google.Resource.Vault.Matters.Holds.Accounts.Create

    -- ** vault.matters.holds.accounts.delete
    , module Network.Google.Resource.Vault.Matters.Holds.Accounts.Delete

    -- ** vault.matters.holds.accounts.list
    , module Network.Google.Resource.Vault.Matters.Holds.Accounts.List

    -- ** vault.matters.holds.addHeldAccounts
    , module Network.Google.Resource.Vault.Matters.Holds.AddHeldAccounts

    -- ** vault.matters.holds.create
    , module Network.Google.Resource.Vault.Matters.Holds.Create

    -- ** vault.matters.holds.delete
    , module Network.Google.Resource.Vault.Matters.Holds.Delete

    -- ** vault.matters.holds.get
    , module Network.Google.Resource.Vault.Matters.Holds.Get

    -- ** vault.matters.holds.list
    , module Network.Google.Resource.Vault.Matters.Holds.List

    -- ** vault.matters.holds.removeHeldAccounts
    , module Network.Google.Resource.Vault.Matters.Holds.RemoveHeldAccounts

    -- ** vault.matters.holds.update
    , module Network.Google.Resource.Vault.Matters.Holds.Update

    -- ** vault.matters.list
    , module Network.Google.Resource.Vault.Matters.List

    -- ** vault.matters.removePermissions
    , module Network.Google.Resource.Vault.Matters.RemovePermissions

    -- ** vault.matters.reopen
    , module Network.Google.Resource.Vault.Matters.Reopen

    -- ** vault.matters.savedQueries.create
    , module Network.Google.Resource.Vault.Matters.SavedQueries.Create

    -- ** vault.matters.savedQueries.delete
    , module Network.Google.Resource.Vault.Matters.SavedQueries.Delete

    -- ** vault.matters.savedQueries.get
    , module Network.Google.Resource.Vault.Matters.SavedQueries.Get

    -- ** vault.matters.savedQueries.list
    , module Network.Google.Resource.Vault.Matters.SavedQueries.List

    -- ** vault.matters.undelete
    , module Network.Google.Resource.Vault.Matters.Undelete

    -- ** vault.matters.update
    , module Network.Google.Resource.Vault.Matters.Update

    -- * Types

    -- ** HeldAccount
    , HeldAccount
    , heldAccount
    , haAccountId
    , haHoldTime

    -- ** HeldHangoutsChatQuery
    , HeldHangoutsChatQuery
    , heldHangoutsChatQuery
    , hhcqIncludeRooms

    -- ** ExportOptionsRegion
    , ExportOptionsRegion (..)

    -- ** Export
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

    -- ** MatterPermissionRole
    , MatterPermissionRole (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AccountInfo
    , AccountInfo
    , accountInfo
    , aiEmails

    -- ** CloudStorageSink
    , CloudStorageSink
    , cloudStorageSink
    , cssFiles

    -- ** HoldCorpus
    , HoldCorpus (..)

    -- ** HangoutsChatExportOptions
    , HangoutsChatExportOptions
    , hangoutsChatExportOptions
    , hceoExportFormat

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiDisplayName

    -- ** TeamDriveInfo
    , TeamDriveInfo
    , teamDriveInfo
    , tdiTeamDriveIds

    -- ** AddHeldAccountsRequest
    , AddHeldAccountsRequest
    , addHeldAccountsRequest
    , aharAccountIds
    , aharEmails

    -- ** CorpusQuery
    , CorpusQuery
    , corpusQuery
    , cqGroupsQuery
    , cqDriveQuery
    , cqHangoutsChatQuery
    , cqMailQuery

    -- ** QueryCorpus
    , QueryCorpus (..)

    -- ** OrgUnitInfo
    , OrgUnitInfo
    , orgUnitInfo
    , ouiOrgUnitId

    -- ** RemoveHeldAccountsResponse
    , RemoveHeldAccountsResponse
    , removeHeldAccountsResponse
    , rharStatuses

    -- ** Empty
    , Empty
    , empty

    -- ** ExportStats
    , ExportStats
    , exportStats
    , esTotalArtifactCount
    , esSizeInBytes
    , esExportedArtifactCount

    -- ** HangoutsChatInfo
    , HangoutsChatInfo
    , hangoutsChatInfo
    , hciRoomId

    -- ** RemoveHeldAccountsRequest
    , RemoveHeldAccountsRequest
    , removeHeldAccountsRequest
    , rharAccountIds

    -- ** HangoutsChatExportOptionsExportFormat
    , HangoutsChatExportOptionsExportFormat (..)

    -- ** QueryDataScope
    , QueryDataScope (..)

    -- ** ListSavedQueriesResponse
    , ListSavedQueriesResponse
    , listSavedQueriesResponse
    , lsqrNextPageToken
    , lsqrSavedQueries

    -- ** ExportStatus
    , ExportStatus (..)

    -- ** UndeleteMatterRequest
    , UndeleteMatterRequest
    , undeleteMatterRequest

    -- ** HeldDriveQuery
    , HeldDriveQuery
    , heldDriveQuery
    , hdqIncludeTeamDriveFiles

    -- ** HangoutsChatOptions
    , HangoutsChatOptions
    , hangoutsChatOptions
    , hcoIncludeRooms

    -- ** QuerySearchMethod
    , QuerySearchMethod (..)

    -- ** AddMatterPermissionsRequest
    , AddMatterPermissionsRequest
    , addMatterPermissionsRequest
    , amprSendEmails
    , amprCcMe
    , amprMatterPermission

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Matter
    , Matter
    , matter
    , mState
    , mMatterPermissions
    , mMatterId
    , mName
    , mDescription

    -- ** CloseMatterResponse
    , CloseMatterResponse
    , closeMatterResponse
    , cmrMatter

    -- ** HeldMailQuery
    , HeldMailQuery
    , heldMailQuery
    , hmqStartTime
    , hmqTerms
    , hmqEndTime

    -- ** ListHeldAccountsResponse
    , ListHeldAccountsResponse
    , listHeldAccountsResponse
    , lharAccounts

    -- ** ListExportsResponse
    , ListExportsResponse
    , listExportsResponse
    , lerNextPageToken
    , lerExports

    -- ** HeldOrgUnit
    , HeldOrgUnit
    , heldOrgUnit
    , houHoldTime
    , houOrgUnitId

    -- ** ListMattersResponse
    , ListMattersResponse
    , listMattersResponse
    , lmrNextPageToken
    , lmrMatters

    -- ** ReopenMatterRequest
    , ReopenMatterRequest
    , reopenMatterRequest

    -- ** RemoveMatterPermissionsRequest
    , RemoveMatterPermissionsRequest
    , removeMatterPermissionsRequest
    , rmprAccountId

    -- ** ExportOptions
    , ExportOptions
    , exportOptions
    , eoHangoutsChatOptions
    , eoDriveOptions
    , eoGroupsOptions
    , eoRegion
    , eoMailOptions

    -- ** MatterState
    , MatterState (..)

    -- ** CloseMatterRequest
    , CloseMatterRequest
    , closeMatterRequest

    -- ** DriveOptions
    , DriveOptions
    , driveOptions
    , doIncludeTeamDrives
    , doVersionDate

    -- ** AddHeldAccountResult
    , AddHeldAccountResult
    , addHeldAccountResult
    , aharStatus
    , aharAccount

    -- ** SavedQuery
    , SavedQuery
    , savedQuery
    , sqSavedQueryId
    , sqMatterId
    , sqQuery
    , sqDisplayName
    , sqCreateTime

    -- ** Hold
    , Hold
    , hold
    , hOrgUnit
    , hHoldId
    , hAccounts
    , hUpdateTime
    , hName
    , hQuery
    , hCorpus

    -- ** GroupsExportOptionsExportFormat
    , GroupsExportOptionsExportFormat (..)

    -- ** Query
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** MailExportOptionsExportFormat
    , MailExportOptionsExportFormat (..)

    -- ** AddHeldAccountsResponse
    , AddHeldAccountsResponse
    , addHeldAccountsResponse
    , aharResponses

    -- ** MailExportOptions
    , MailExportOptions
    , mailExportOptions
    , meoExportFormat

    -- ** ListHoldsResponse
    , ListHoldsResponse
    , listHoldsResponse
    , lhrNextPageToken
    , lhrHolds

    -- ** GroupsExportOptions
    , GroupsExportOptions
    , groupsExportOptions
    , geoExportFormat

    -- ** MatterPermission
    , MatterPermission
    , matterPermission
    , mpRole
    , mpAccountId

    -- ** DriveExportOptions
    , DriveExportOptions
    , driveExportOptions
    , deoIncludeAccessInfo

    -- ** HeldGroupsQuery
    , HeldGroupsQuery
    , heldGroupsQuery
    , hgqStartTime
    , hgqTerms
    , hgqEndTime

    -- ** ReopenMatterResponse
    , ReopenMatterResponse
    , reopenMatterResponse
    , rmrMatter

    -- ** CloudStorageFile
    , CloudStorageFile
    , cloudStorageFile
    , csfObjectName
    , csfSize
    , csfBucketName
    , csfMD5Hash

    -- ** MailOptions
    , MailOptions
    , mailOptions
    , moExcludeDrafts
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Vault.Matters.AddPermissions
import           Network.Google.Resource.Vault.Matters.Close
import           Network.Google.Resource.Vault.Matters.Create
import           Network.Google.Resource.Vault.Matters.Delete
import           Network.Google.Resource.Vault.Matters.Exports.Create
import           Network.Google.Resource.Vault.Matters.Exports.Delete
import           Network.Google.Resource.Vault.Matters.Exports.Get
import           Network.Google.Resource.Vault.Matters.Exports.List
import           Network.Google.Resource.Vault.Matters.Get
import           Network.Google.Resource.Vault.Matters.Holds.Accounts.Create
import           Network.Google.Resource.Vault.Matters.Holds.Accounts.Delete
import           Network.Google.Resource.Vault.Matters.Holds.Accounts.List
import           Network.Google.Resource.Vault.Matters.Holds.AddHeldAccounts
import           Network.Google.Resource.Vault.Matters.Holds.Create
import           Network.Google.Resource.Vault.Matters.Holds.Delete
import           Network.Google.Resource.Vault.Matters.Holds.Get
import           Network.Google.Resource.Vault.Matters.Holds.List
import           Network.Google.Resource.Vault.Matters.Holds.RemoveHeldAccounts
import           Network.Google.Resource.Vault.Matters.Holds.Update
import           Network.Google.Resource.Vault.Matters.List
import           Network.Google.Resource.Vault.Matters.RemovePermissions
import           Network.Google.Resource.Vault.Matters.Reopen
import           Network.Google.Resource.Vault.Matters.SavedQueries.Create
import           Network.Google.Resource.Vault.Matters.SavedQueries.Delete
import           Network.Google.Resource.Vault.Matters.SavedQueries.Get
import           Network.Google.Resource.Vault.Matters.SavedQueries.List
import           Network.Google.Resource.Vault.Matters.Undelete
import           Network.Google.Resource.Vault.Matters.Update
import           Network.Google.Vault.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the G Suite Vault API service.
type VaultAPI =
     MattersSavedQueriesListResource :<|>
       MattersSavedQueriesGetResource
       :<|> MattersSavedQueriesCreateResource
       :<|> MattersSavedQueriesDeleteResource
       :<|> MattersHoldsAccountsListResource
       :<|> MattersHoldsAccountsCreateResource
       :<|> MattersHoldsAccountsDeleteResource
       :<|> MattersHoldsListResource
       :<|> MattersHoldsGetResource
       :<|> MattersHoldsAddHeldAccountsResource
       :<|> MattersHoldsRemoveHeldAccountsResource
       :<|> MattersHoldsCreateResource
       :<|> MattersHoldsDeleteResource
       :<|> MattersHoldsUpdateResource
       :<|> MattersExportsListResource
       :<|> MattersExportsGetResource
       :<|> MattersExportsCreateResource
       :<|> MattersExportsDeleteResource
       :<|> MattersListResource
       :<|> MattersUndeleteResource
       :<|> MattersGetResource
       :<|> MattersCloseResource
       :<|> MattersAddPermissionsResource
       :<|> MattersCreateResource
       :<|> MattersReopenResource
       :<|> MattersRemovePermissionsResource
       :<|> MattersDeleteResource
       :<|> MattersUpdateResource
