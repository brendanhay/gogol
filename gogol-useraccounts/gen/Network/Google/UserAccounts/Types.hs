{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      userAccountsURL

    -- * Status
    , Status (..)

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

    -- * Error'
    , Error'
    , error'
    , eErrors

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

    -- * WarningsItemCode
    , WarningsItemCode (..)

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

    -- * LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

    -- * LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- * GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- * WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- * LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- * LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- * DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

    -- * LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- * GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- * ErrorsItem
    , ErrorsItem
    , errorsItem
    , eiLocation
    , eiCode
    , eiMessage

    -- * AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types.Product
import           Network.Google.UserAccounts.Types.Sum

-- | URL referring to version 'vm_beta' of the Cloud User Accounts API.
userAccountsURL :: BaseUrl
userAccountsURL
  = BaseUrl Https
      "https://www.googleapis.com/clouduseraccounts/vm_beta/projects/"
      443
