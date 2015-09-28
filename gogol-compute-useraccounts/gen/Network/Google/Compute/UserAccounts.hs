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
    -- * REST Resources

    -- ** Cloud User Accounts API
      ComputeUserAccounts
    , computeUserAccounts
    , computeUserAccountsURL

    -- ** clouduseraccounts.globalAccountsOperations.delete
    , module Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Delete

    -- ** clouduseraccounts.globalAccountsOperations.get
    , module Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Get

    -- ** clouduseraccounts.globalAccountsOperations.list
    , module Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.List

    -- ** clouduseraccounts.groups.addMember
    , module Network.Google.API.Clouduseraccounts.Groups.AddMember

    -- ** clouduseraccounts.groups.delete
    , module Network.Google.API.Clouduseraccounts.Groups.Delete

    -- ** clouduseraccounts.groups.get
    , module Network.Google.API.Clouduseraccounts.Groups.Get

    -- ** clouduseraccounts.groups.insert
    , module Network.Google.API.Clouduseraccounts.Groups.Insert

    -- ** clouduseraccounts.groups.list
    , module Network.Google.API.Clouduseraccounts.Groups.List

    -- ** clouduseraccounts.groups.removeMember
    , module Network.Google.API.Clouduseraccounts.Groups.RemoveMember

    -- ** clouduseraccounts.linux.getAuthorizedKeysView
    , module Network.Google.API.Clouduseraccounts.Linux.GetAuthorizedKeysView

    -- ** clouduseraccounts.linux.getLinuxAccountViews
    , module Network.Google.API.Clouduseraccounts.Linux.GetLinuxAccountViews

    -- ** clouduseraccounts.users.addPublicKey
    , module Network.Google.API.Clouduseraccounts.Users.AddPublicKey

    -- ** clouduseraccounts.users.delete
    , module Network.Google.API.Clouduseraccounts.Users.Delete

    -- ** clouduseraccounts.users.get
    , module Network.Google.API.Clouduseraccounts.Users.Get

    -- ** clouduseraccounts.users.insert
    , module Network.Google.API.Clouduseraccounts.Users.Insert

    -- ** clouduseraccounts.users.list
    , module Network.Google.API.Clouduseraccounts.Users.List

    -- ** clouduseraccounts.users.removePublicKey
    , module Network.Google.API.Clouduseraccounts.Users.RemovePublicKey

    -- * Types

    -- ** GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- ** LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** Alt
    , Alt (..)

    -- ** LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkFingerprint
    , pkKey
    , pkCreationTimestamp
    , pkExpirationTimestamp
    , pkDescription

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- ** LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** GroupList
    , GroupList
    , groupList
    , glNextPageToken
    , glKind
    , glItems
    , glSelfLink
    , glId

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

    -- ** UserList
    , UserList
    , userList
    , ulNextPageToken
    , ulKind
    , ulItems
    , ulSelfLink
    , ulId

    -- ** AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys

    -- ** LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

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
    ) where

import           Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Delete
import           Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Get
import           Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.List
import           Network.Google.API.Clouduseraccounts.Groups.AddMember
import           Network.Google.API.Clouduseraccounts.Groups.Delete
import           Network.Google.API.Clouduseraccounts.Groups.Get
import           Network.Google.API.Clouduseraccounts.Groups.Insert
import           Network.Google.API.Clouduseraccounts.Groups.List
import           Network.Google.API.Clouduseraccounts.Groups.RemoveMember
import           Network.Google.API.Clouduseraccounts.Linux.GetAuthorizedKeysView
import           Network.Google.API.Clouduseraccounts.Linux.GetLinuxAccountViews
import           Network.Google.API.Clouduseraccounts.Users.AddPublicKey
import           Network.Google.API.Clouduseraccounts.Users.Delete
import           Network.Google.API.Clouduseraccounts.Users.Get
import           Network.Google.API.Clouduseraccounts.Users.Insert
import           Network.Google.API.Clouduseraccounts.Users.List
import           Network.Google.API.Clouduseraccounts.Users.RemovePublicKey
import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type ComputeUserAccounts =
     GroupsGetAPI :<|> UsersGetAPI :<|>
       GlobalAccountsOperationsListAPI
       :<|> UsersInsertAPI
       :<|> UsersAddPublicKeyAPI
       :<|> GroupsInsertAPI
       :<|> GlobalAccountsOperationsDeleteAPI
       :<|> GroupsListAPI
       :<|> UsersListAPI
       :<|> GroupsAddMemberAPI
       :<|> GroupsRemoveMemberAPI
       :<|> LinuxGetLinuxAccountViewsAPI
       :<|> LinuxGetAuthorizedKeysViewAPI
       :<|> UsersRemovePublicKeyAPI
       :<|> GroupsDeleteAPI
       :<|> GlobalAccountsOperationsGetAPI
       :<|> UsersDeleteAPI

computeUserAccounts :: Proxy ComputeUserAccounts
computeUserAccounts = Proxy
