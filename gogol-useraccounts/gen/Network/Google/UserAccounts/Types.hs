{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.UserAccounts.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.UserAccounts.Types
    (
    -- * Service Request
      userAccountsRequest

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * Group
    , Group
    , group'
    , gKind
    , gMembers
    , gSelfLink
    , gName
    , gCreationTimestamp
    , gId
    , gDescription

    -- * GroupList
    , GroupList
    , groupList
    , glNextPageToken
    , glKind
    , glItems
    , glSelfLink
    , glId

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
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

    -- * UserList
    , UserList
    , userList
    , ulNextPageToken
    , ulKind
    , ulItems
    , ulSelfLink
    , ulId

    -- * PublicKey
    , PublicKey
    , publicKey
    , pkFingerprint
    , pkKey
    , pkCreationTimestamp
    , pkExpirationTimestamp
    , pkDescription

    -- * OperationStatus
    , OperationStatus (..)

    -- * LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

    -- * User
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

    -- * GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- * LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- * LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- * LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- * OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- * GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- * AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types.Product
import           Network.Google.UserAccounts.Types.Sum

-- | Default request referring to version 'vm_beta' of the Cloud User Accounts API. This contains the host and root path used as a starting point for constructing service requests.
userAccountsRequest :: RequestBuilder
userAccountsRequest
  = defaultRequest "https://www.googleapis.com/"
      "clouduseraccounts/vm_beta/projects/"
