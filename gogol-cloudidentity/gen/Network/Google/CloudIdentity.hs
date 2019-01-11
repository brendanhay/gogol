{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudIdentity
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for provisioning and managing identity resources.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference>
module Network.Google.CloudIdentity
    (
    -- * Service Configuration
      cloudIdentityService

    -- * API Declaration
    , CloudIdentityAPI

    -- * Resources

    -- ** cloudidentity.groups.create
    , module Network.Google.Resource.CloudIdentity.Groups.Create

    -- ** cloudidentity.groups.delete
    , module Network.Google.Resource.CloudIdentity.Groups.Delete

    -- ** cloudidentity.groups.get
    , module Network.Google.Resource.CloudIdentity.Groups.Get

    -- ** cloudidentity.groups.list
    , module Network.Google.Resource.CloudIdentity.Groups.List

    -- ** cloudidentity.groups.lookup
    , module Network.Google.Resource.CloudIdentity.Groups.Lookup

    -- ** cloudidentity.groups.memberships.create
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Create

    -- ** cloudidentity.groups.memberships.delete
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete

    -- ** cloudidentity.groups.memberships.get
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Get

    -- ** cloudidentity.groups.memberships.list
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.List

    -- ** cloudidentity.groups.memberships.lookup
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup

    -- ** cloudidentity.groups.patch
    , module Network.Google.Resource.CloudIdentity.Groups.Patch

    -- ** cloudidentity.groups.search
    , module Network.Google.Resource.CloudIdentity.Groups.Search

    -- * Types

    -- ** LookupMembershipNameResponse
    , LookupMembershipNameResponse
    , lookupMembershipNameResponse
    , lmnrName

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Group
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

    -- ** Membership
    , Membership
    , membership
    , mRoles
    , mUpdateTime
    , mName
    , mPreferredMemberKey
    , mCreateTime

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrGroups
    , lgrNextPageToken

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** MembershipRole
    , MembershipRole
    , membershipRole
    , mrName

    -- ** LookupGroupNameResponse
    , LookupGroupNameResponse
    , lookupGroupNameResponse
    , lgnrName

    -- ** SearchGroupsResponse
    , SearchGroupsResponse
    , searchGroupsResponse
    , sgrGroups
    , sgrNextPageToken

    -- ** EntityKey
    , EntityKey
    , entityKey
    , ekNamespace
    , ekId

    -- ** Xgafv
    , Xgafv (..)

    -- ** GroupLabels
    , GroupLabels
    , groupLabels
    , glAddtional

    -- ** ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudIdentity.Groups.Create
import           Network.Google.Resource.CloudIdentity.Groups.Delete
import           Network.Google.Resource.CloudIdentity.Groups.Get
import           Network.Google.Resource.CloudIdentity.Groups.List
import           Network.Google.Resource.CloudIdentity.Groups.Lookup
import           Network.Google.Resource.CloudIdentity.Groups.Memberships.Create
import           Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete
import           Network.Google.Resource.CloudIdentity.Groups.Memberships.Get
import           Network.Google.Resource.CloudIdentity.Groups.Memberships.List
import           Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup
import           Network.Google.Resource.CloudIdentity.Groups.Patch
import           Network.Google.Resource.CloudIdentity.Groups.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Identity API service.
type CloudIdentityAPI =
     GroupsMembershipsListResource :<|>
       GroupsMembershipsGetResource
       :<|> GroupsMembershipsCreateResource
       :<|> GroupsMembershipsLookupResource
       :<|> GroupsMembershipsDeleteResource
       :<|> GroupsListResource
       :<|> GroupsPatchResource
       :<|> GroupsGetResource
       :<|> GroupsCreateResource
       :<|> GroupsLookupResource
       :<|> GroupsSearchResource
       :<|> GroupsDeleteResource
