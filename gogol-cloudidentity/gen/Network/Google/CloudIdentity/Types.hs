{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIdentity.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIdentity.Types
    (
    -- * Service Configuration
      cloudIdentityService

    -- * OAuth Scopes
    , cloudIdentityGroupsReadOnlyScope
    , cloudIdentityGroupsScope

    -- * LookupMembershipNameResponse
    , LookupMembershipNameResponse
    , lookupMembershipNameResponse
    , lmnrName

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * Group
    , Group
    , group'
    , gParent
    , gGroupKey
    , gUpdateTime
    , gName
    , gDisplayName
    , gLabels
    , gDescription
    , gCreateTime

    -- * Membership
    , Membership
    , membership
    , mRoles
    , mUpdateTime
    , mName
    , mPreferredMemberKey
    , mCreateTime

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrGroups
    , lgrNextPageToken

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * MembershipRole
    , MembershipRole
    , membershipRole
    , mrName

    -- * LookupGroupNameResponse
    , LookupGroupNameResponse
    , lookupGroupNameResponse
    , lgnrName

    -- * SearchGroupsResponse
    , SearchGroupsResponse
    , searchGroupsResponse
    , sgrGroups
    , sgrNextPageToken

    -- * EntityKey
    , EntityKey
    , entityKey
    , ekNamespace
    , ekId

    -- * Xgafv
    , Xgafv (..)

    -- * GroupLabels
    , GroupLabels
    , groupLabels
    , glAddtional

    -- * ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.CloudIdentity.Types.Product
import           Network.Google.CloudIdentity.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Identity API. This contains the host and root path used as a starting point for constructing service requests.
cloudIdentityService :: ServiceConfig
cloudIdentityService
  = defaultService (ServiceId "cloudidentity:v1")
      "cloudidentity.googleapis.com"

-- | See any Cloud Identity Groups that you can access, including group
-- members and their emails
cloudIdentityGroupsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-identity.groups.readonly"]
cloudIdentityGroupsReadOnlyScope = Proxy

-- | See, change, create, and delete any of the Cloud Identity Groups that
-- you can access, including the members of each group
cloudIdentityGroupsScope :: Proxy '["https://www.googleapis.com/auth/cloud-identity.groups"]
cloudIdentityGroupsScope = Proxy
