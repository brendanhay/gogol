{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute.UserAccounts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for the Google Cloud User Accounts service.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference>
module Network.Google.Compute.UserAccounts
    (
    -- * Resources
      ComputeUserAccounts
    , GroupsAPI
    , GroupsInsert
    , GroupsList
    , GroupsGet
    , GroupsRemoveMember
    , GroupsDelete
    , GroupsAddMember
    , UsersAPI
    , UsersAddPublicKey
    , UsersInsert
    , UsersList
    , UsersRemovePublicKey
    , UsersGet
    , UsersDelete
    , GlobalAccountsOperationsAPI
    , GlobalAccountsOperationsList
    , GlobalAccountsOperationsGet
    , GlobalAccountsOperationsDelete
    , LinuxAPI
    , LinuxGetLinuxAccountViews
    , LinuxGetAuthorizedKeysView

    -- * Types

    -- ** AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys

    -- ** Group
    , Group
    , group'
    , gKind
    , gMembers
    , gSelfLink
    , gName
    , gCreationTimestamp
    , gId
    , gDescription

    -- ** GroupList
    , GroupList
    , groupList
    , glNextPageToken
    , glKind
    , glItems
    , glSelfLink
    , glId

    -- ** GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- ** GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- ** LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

    -- ** LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- ** LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- ** LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- ** LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkFingerprint
    , pkKey
    , pkCreationTimestamp
    , pkExpirationTimestamp
    , pkDescription

    -- ** User
    , User
    , user
    , uGroups
    , uPublicKeys
    , uKind
    , uOwner
    , uSelfLink
    , uName
    , uCreationTimestamp
    , uId
    , uDescription

    -- ** UserList
    , UserList
    , userList
    , ulNextPageToken
    , ulKind
    , ulItems
    , ulSelfLink
    , ulId
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type ComputeUserAccounts =
     GroupsAPI :<|> UsersAPI :<|>
       GlobalAccountsOperationsAPI
       :<|> LinuxAPI

type GroupsAPI =
     GroupsInsert :<|> GroupsList :<|> GroupsGet :<|>
       GroupsRemoveMember
       :<|> GroupsDelete
       :<|> GroupsAddMember

-- | Creates a Group resource in the specified project using the data
-- included in the request.
type GroupsInsert =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the list of groups contained within the specified project.
type GroupsList =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the specified Group resource.
type GroupsGet =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> Capture "groupName" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes users from the specified group.
type GroupsRemoveMember =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> Capture "groupName" Text
       :> "removeMember"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified Group resource.
type GroupsDelete =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> Capture "groupName" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Adds users to the specified group.
type GroupsAddMember =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "groups"
       :> Capture "groupName" Text
       :> "addMember"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UsersAPI =
     UsersAddPublicKey :<|> UsersInsert :<|> UsersList
       :<|> UsersRemovePublicKey
       :<|> UsersGet
       :<|> UsersDelete

-- | Adds a public key to the specified User resource with the data included
-- in the request.
type UsersAddPublicKey =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> Capture "user" Text
       :> "addPublicKey"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a User resource in the specified project using the data included
-- in the request.
type UsersInsert =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of users contained within the specified project.
type UsersList =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes the specified public key from the user.
type UsersRemovePublicKey =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> Capture "user" Text
       :> "removePublicKey"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "fingerprint" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the specified User resource.
type UsersGet =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> Capture "user" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified User resource.
type UsersDelete =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "users"
       :> Capture "user" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type GlobalAccountsOperationsAPI =
     GlobalAccountsOperationsList :<|>
       GlobalAccountsOperationsGet
       :<|> GlobalAccountsOperationsDelete

-- | Retrieves the list of operation resources contained within the specified
-- project.
type GlobalAccountsOperationsList =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the specified operation resource.
type GlobalAccountsOperationsGet =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified operation resource.
type GlobalAccountsOperationsDelete =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LinuxAPI =
     LinuxGetLinuxAccountViews :<|>
       LinuxGetAuthorizedKeysView

-- | Retrieves a list of user accounts for an instance within a specific
-- project.
type LinuxGetLinuxAccountViews =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "linuxAccountViews"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "instance" Text

-- | Returns a list of authorized public keys for a specific user account.
type LinuxGetAuthorizedKeysView =
     "clouduseraccounts" :> "vm_beta" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "authorizedKeysView"
       :> Capture "user" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "login" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "instance" Text
