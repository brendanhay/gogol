{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudIdentity
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * OAuth Scopes
    , cloudIdentityDevicesLookupScope
    , cloudPlatformScope
    , cloudIdentityGroupsReadOnlyScope
    , cloudIdentityGroupsScope

    -- * API Declaration
    , CloudIdentityAPI

    -- * Resources

    -- ** cloudidentity.devices.cancelWipe
    , module Network.Google.Resource.CloudIdentity.Devices.CancelWipe

    -- ** cloudidentity.devices.create
    , module Network.Google.Resource.CloudIdentity.Devices.Create

    -- ** cloudidentity.devices.delete
    , module Network.Google.Resource.CloudIdentity.Devices.Delete

    -- ** cloudidentity.devices.deviceUsers.approve
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Approve

    -- ** cloudidentity.devices.deviceUsers.block
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Block

    -- ** cloudidentity.devices.deviceUsers.cancelWipe
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.CancelWipe

    -- ** cloudidentity.devices.deviceUsers.clientStates.get
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Get

    -- ** cloudidentity.devices.deviceUsers.clientStates.list
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.List

    -- ** cloudidentity.devices.deviceUsers.clientStates.patch
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch

    -- ** cloudidentity.devices.deviceUsers.delete
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Delete

    -- ** cloudidentity.devices.deviceUsers.get
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Get

    -- ** cloudidentity.devices.deviceUsers.list
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.List

    -- ** cloudidentity.devices.deviceUsers.lookup
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Lookup

    -- ** cloudidentity.devices.deviceUsers.wipe
    , module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Wipe

    -- ** cloudidentity.devices.get
    , module Network.Google.Resource.CloudIdentity.Devices.Get

    -- ** cloudidentity.devices.list
    , module Network.Google.Resource.CloudIdentity.Devices.List

    -- ** cloudidentity.devices.wipe
    , module Network.Google.Resource.CloudIdentity.Devices.Wipe

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

    -- ** cloudidentity.groups.memberships.checkTransitiveMembership
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.CheckTransitiveMembership

    -- ** cloudidentity.groups.memberships.create
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Create

    -- ** cloudidentity.groups.memberships.delete
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete

    -- ** cloudidentity.groups.memberships.get
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Get

    -- ** cloudidentity.groups.memberships.getMembershipGraph
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.GetMembershipGraph

    -- ** cloudidentity.groups.memberships.list
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.List

    -- ** cloudidentity.groups.memberships.lookup
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup

    -- ** cloudidentity.groups.memberships.modifyMembershipRoles
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.ModifyMembershipRoles

    -- ** cloudidentity.groups.memberships.searchTransitiveGroups
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveGroups

    -- ** cloudidentity.groups.memberships.searchTransitiveMemberships
    , module Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships

    -- ** cloudidentity.groups.patch
    , module Network.Google.Resource.CloudIdentity.Groups.Patch

    -- ** cloudidentity.groups.search
    , module Network.Google.Resource.CloudIdentity.Groups.Search

    -- * Types

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState
    , GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState (..)

    -- ** GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    , GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    , googleAppsCloudidentityDevicesV1CustomAttributeValue
    , gacdvcavBoolValue
    , gacdvcavNumberValue
    , gacdvcavStringValue

    -- ** LookupMembershipNameResponse
    , LookupMembershipNameResponse
    , lookupMembershipNameResponse
    , lmnrName

    -- ** DevicesListView
    , DevicesListView (..)

    -- ** SearchTransitiveGroupsResponse
    , SearchTransitiveGroupsResponse
    , searchTransitiveGroupsResponse
    , stgrNextPageToken
    , stgrMemberships

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributes
    , GoogleAppsCloudidentityDevicesV1AndroidAttributes
    , googleAppsCloudidentityDevicesV1AndroidAttributes
    , gacdvaaOwnershipPrivilege
    , gacdvaaOwnerProFileAccount
    , gacdvaaEnabledUnknownSources
    , gacdvaaSupportsWorkProFile

    -- ** GroupRelationLabels
    , GroupRelationLabels
    , groupRelationLabels
    , grlAddtional

    -- ** GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , googleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , gacdvlsdurNextPageToken
    , gacdvlsdurNames
    , gacdvlsdurCustomer

    -- ** DynamicGroupMetadata
    , DynamicGroupMetadata
    , dynamicGroupMetadata
    , dgmStatus
    , dgmQueries

    -- ** UserInvitationState
    , UserInvitationState (..)

    -- ** Group
    , Group
    , group'
    , gParent
    , gDynamicGroupMetadata
    , gGroupKey
    , gUpdateTime
    , gName
    , gDisplayName
    , gLabels
    , gDescription
    , gCreateTime

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , googleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , gacdvadurCustomer

    -- ** GroupsMembershipsListView
    , GroupsMembershipsListView (..)

    -- ** Membership
    , Membership
    , membership
    , mRoles
    , mUpdateTime
    , mName
    , mPreferredMemberKey
    , mType
    , mCreateTime

    -- ** DynamicGroupQueryResourceType
    , DynamicGroupQueryResourceType (..)

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , gacdvcwdurCustomer

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

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUserManagementState
    , GoogleAppsCloudidentityDevicesV1DeviceUserManagementState (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceCompromisedState
    , GoogleAppsCloudidentityDevicesV1DeviceCompromisedState (..)

    -- ** GoogleAppsCloudidentityDevicesV1Device
    , GoogleAppsCloudidentityDevicesV1Device
    , googleAppsCloudidentityDevicesV1Device
    , gacdvdAndroidSpecificAttributes
    , gacdvdManufacturer
    , gacdvdAssetTag
    , gacdvdBuildNumber
    , gacdvdCompromisedState
    , gacdvdEncryptionState
    , gacdvdLastSyncTime
    , gacdvdReleaseVersion
    , gacdvdBrand
    , gacdvdNetworkOperator
    , gacdvdKernelVersion
    , gacdvdManagementState
    , gacdvdName
    , gacdvdModel
    , gacdvdEnabledUsbDebugging
    , gacdvdMeid
    , gacdvdBootLoaderVersion
    , gacdvdSecurityPatchTime
    , gacdvdImei
    , gacdvdDeviceType
    , gacdvdSerialNumber
    , gacdvdEnabledDeveloperOptions
    , gacdvdBasebandVersion
    , gacdvdOtherAccounts
    , gacdvdOSVersion
    , gacdvdWifiMACAddresses
    , gacdvdCreateTime
    , gacdvdOwnerType

    -- ** DynamicGroupQuery
    , DynamicGroupQuery
    , dynamicGroupQuery
    , dgqResourceType
    , dgqQuery

    -- ** UserInvitation
    , UserInvitation
    , userInvitation
    , uiState
    , uiMailsSentCount
    , uiUpdateTime
    , uiName

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege
    , GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege (..)

    -- ** MemberRelationRelationType
    , MemberRelationRelationType (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceEncryptionState
    , GoogleAppsCloudidentityDevicesV1DeviceEncryptionState (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientStateManaged
    , GoogleAppsCloudidentityDevicesV1ClientStateManaged (..)

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , googleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , gacdvwdurCustomer

    -- ** GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , googleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , gacdvcskvpAddtional

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , googleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , gacdvbdurDeviceUser

    -- ** GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , googleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , gacdvldurNextPageToken
    , gacdvldurDeviceUsers

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** DynamicGroupStatus
    , DynamicGroupStatus
    , dynamicGroupStatus
    , dgsStatus
    , dgsStatusTime

    -- ** MembershipRole
    , MembershipRole
    , membershipRole
    , mrExpiryDetail
    , mrName

    -- ** ModifyMembershipRolesResponse
    , ModifyMembershipRolesResponse
    , modifyMembershipRolesResponse
    , mmrrMembership

    -- ** ExpiryDetail
    , ExpiryDetail
    , expiryDetail
    , edExpireTime

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , gacdvcwdrDevice

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser
    , GoogleAppsCloudidentityDevicesV1DeviceUser
    , googleAppsCloudidentityDevicesV1DeviceUser
    , gacdvduLanguageCode
    , gacdvduCompromisedState
    , gacdvduPasswordState
    , gacdvduLastSyncTime
    , gacdvduManagementState
    , gacdvduName
    , gacdvduUserEmail
    , gacdvduUserAgent
    , gacdvduFirstSyncTime
    , gacdvduCreateTime

    -- ** SearchTransitiveMembershipsResponse
    , SearchTransitiveMembershipsResponse
    , searchTransitiveMembershipsResponse
    , stmrNextPageToken
    , stmrMemberships

    -- ** LookupGroupNameResponse
    , LookupGroupNameResponse
    , lookupGroupNameResponse
    , lgnrName

    -- ** SearchGroupsResponse
    , SearchGroupsResponse
    , searchGroupsResponse
    , sgrGroups
    , sgrNextPageToken

    -- ** MembershipAdjacencyList
    , MembershipAdjacencyList
    , membershipAdjacencyList
    , malGroup
    , malEdges

    -- ** EntityKey
    , EntityKey
    , entityKey
    , ekNamespace
    , ekId

    -- ** ModifyMembershipRolesRequest
    , ModifyMembershipRolesRequest
    , modifyMembershipRolesRequest
    , mmrrAddRoles
    , mmrrUpdateRolesParams
    , mmrrRemoveRoles

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , gacdvcwdrCustomer

    -- ** GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    , GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    , googleAppsCloudidentityDevicesV1ListClientStatesResponse
    , gacdvlcsrNextPageToken
    , gacdvlcsrClientStates

    -- ** GoogleAppsCloudidentityDevicesV1ClientStateComplianceState
    , GoogleAppsCloudidentityDevicesV1ClientStateComplianceState (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceManagementState
    , GoogleAppsCloudidentityDevicesV1DeviceManagementState (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientStateOwnerType
    , GoogleAppsCloudidentityDevicesV1ClientStateOwnerType (..)

    -- ** GroupRelationRelationType
    , GroupRelationRelationType (..)

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , gacdvcwdurDeviceUser

    -- ** GroupsSearchView
    , GroupsSearchView (..)

    -- ** DynamicGroupStatusStatus
    , DynamicGroupStatusStatus (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientStateHealthScore
    , GoogleAppsCloudidentityDevicesV1ClientStateHealthScore (..)

    -- ** CheckTransitiveMembershipResponse
    , CheckTransitiveMembershipResponse
    , checkTransitiveMembershipResponse
    , ctmrHasMembership

    -- ** GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    , GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    , googleAppsCloudidentityDevicesV1ListDevicesResponse
    , gacdvldrNextPageToken
    , gacdvldrDevices

    -- ** MembershipType
    , MembershipType (..)

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , googleAppsCloudidentityDevicesV1WipeDeviceRequest
    , gacdvwdrCustomer

    -- ** GroupLabels
    , GroupLabels
    , groupLabels
    , glAddtional

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , googleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , gacdvadurDeviceUser

    -- ** UpdateMembershipRolesParams
    , UpdateMembershipRolesParams
    , updateMembershipRolesParams
    , umrpFieldMask
    , umrpMembershipRole

    -- ** GoogleAppsCloudidentityDevicesV1DeviceDeviceType
    , GoogleAppsCloudidentityDevicesV1DeviceDeviceType (..)

    -- ** ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    , googleAppsCloudidentityDevicesV1WipeDeviceResponse
    , gacdvwdrDevice

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** TransitiveMembershipRole
    , TransitiveMembershipRole
    , transitiveMembershipRole
    , tmrRole

    -- ** GroupsCreateInitialGroupConfig
    , GroupsCreateInitialGroupConfig (..)

    -- ** GroupsListView
    , GroupsListView (..)

    -- ** GetMembershipGraphResponse
    , GetMembershipGraphResponse
    , getMembershipGraphResponse
    , gmgrGroups
    , gmgrAdjacencyList

    -- ** GoogleAppsCloudidentityDevicesV1ClientState
    , GoogleAppsCloudidentityDevicesV1ClientState
    , googleAppsCloudidentityDevicesV1ClientState
    , gacdvcsEtag
    , gacdvcsKeyValuePairs
    , gacdvcsManaged
    , gacdvcsCustomId
    , gacdvcsHealthScore
    , gacdvcsScoreReason
    , gacdvcsName
    , gacdvcsComplianceState
    , gacdvcsLastUpdateTime
    , gacdvcsAssetTags
    , gacdvcsCreateTime
    , gacdvcsOwnerType

    -- ** MemberRelation
    , MemberRelation
    , memberRelation
    , mrRoles
    , mrPreferredMemberKey
    , mrMember
    , mrRelationType

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , googleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , gacdvbdurCustomer

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , googleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , gacdvwdurDeviceUser

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState
    , GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState (..)

    -- ** GroupRelation
    , GroupRelation
    , groupRelation
    , grRoles
    , grGroup
    , grGroupKey
    , grDisplayName
    , grLabels
    , grRelationType

    -- ** GoogleAppsCloudidentityDevicesV1DeviceOwnerType
    , GoogleAppsCloudidentityDevicesV1DeviceOwnerType (..)
    ) where

import Network.Google.Prelude
import Network.Google.CloudIdentity.Types
import Network.Google.Resource.CloudIdentity.Devices.CancelWipe
import Network.Google.Resource.CloudIdentity.Devices.Create
import Network.Google.Resource.CloudIdentity.Devices.Delete
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Approve
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Block
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.CancelWipe
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.List
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Delete
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Get
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.List
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Lookup
import Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Wipe
import Network.Google.Resource.CloudIdentity.Devices.Get
import Network.Google.Resource.CloudIdentity.Devices.List
import Network.Google.Resource.CloudIdentity.Devices.Wipe
import Network.Google.Resource.CloudIdentity.Groups.Create
import Network.Google.Resource.CloudIdentity.Groups.Delete
import Network.Google.Resource.CloudIdentity.Groups.Get
import Network.Google.Resource.CloudIdentity.Groups.List
import Network.Google.Resource.CloudIdentity.Groups.Lookup
import Network.Google.Resource.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
import Network.Google.Resource.CloudIdentity.Groups.Memberships.Create
import Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete
import Network.Google.Resource.CloudIdentity.Groups.Memberships.Get
import Network.Google.Resource.CloudIdentity.Groups.Memberships.GetMembershipGraph
import Network.Google.Resource.CloudIdentity.Groups.Memberships.List
import Network.Google.Resource.CloudIdentity.Groups.Memberships.Lookup
import Network.Google.Resource.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
import Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
import Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
import Network.Google.Resource.CloudIdentity.Groups.Patch
import Network.Google.Resource.CloudIdentity.Groups.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Identity API service.
type CloudIdentityAPI =
     GroupsMembershipsSearchTransitiveGroupsResource :<|>
       GroupsMembershipsListResource
       :<|>
       GroupsMembershipsSearchTransitiveMembershipsResource
       :<|> GroupsMembershipsGetResource
       :<|> GroupsMembershipsCreateResource
       :<|> GroupsMembershipsLookupResource
       :<|> GroupsMembershipsModifyMembershipRolesResource
       :<|> GroupsMembershipsGetMembershipGraphResource
       :<|> GroupsMembershipsDeleteResource
       :<|>
       GroupsMembershipsCheckTransitiveMembershipResource
       :<|> GroupsListResource
       :<|> GroupsPatchResource
       :<|> GroupsGetResource
       :<|> GroupsCreateResource
       :<|> GroupsLookupResource
       :<|> GroupsSearchResource
       :<|> GroupsDeleteResource
       :<|> DevicesDeviceUsersClientStatesListResource
       :<|> DevicesDeviceUsersClientStatesPatchResource
       :<|> DevicesDeviceUsersClientStatesGetResource
       :<|> DevicesDeviceUsersListResource
       :<|> DevicesDeviceUsersGetResource
       :<|> DevicesDeviceUsersBlockResource
       :<|> DevicesDeviceUsersApproveResource
       :<|> DevicesDeviceUsersLookupResource
       :<|> DevicesDeviceUsersCancelWipeResource
       :<|> DevicesDeviceUsersWipeResource
       :<|> DevicesDeviceUsersDeleteResource
       :<|> DevicesListResource
       :<|> DevicesGetResource
       :<|> DevicesCreateResource
       :<|> DevicesCancelWipeResource
       :<|> DevicesWipeResource
       :<|> DevicesDeleteResource
