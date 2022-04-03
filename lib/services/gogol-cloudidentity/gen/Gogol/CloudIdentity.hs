{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIdentity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for provisioning and managing identity resources.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference>
module Gogol.CloudIdentity
  ( -- * Configuration
    cloudIdentityService,

    -- * OAuth Scopes
    CloudIdentity'Devices,
    CloudIdentity'Devices'Lookup,
    CloudIdentity'Devices'Readonly,
    CloudIdentity'Groups,
    CloudIdentity'Groups'Readonly,
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudidentity.devices.cancelWipe
    CloudIdentityDevicesCancelWipeResource,
    CloudIdentityDevicesCancelWipe (..),
    newCloudIdentityDevicesCancelWipe,

    -- ** cloudidentity.devices.create
    CloudIdentityDevicesCreateResource,
    CloudIdentityDevicesCreate (..),
    newCloudIdentityDevicesCreate,

    -- ** cloudidentity.devices.delete
    CloudIdentityDevicesDeleteResource,
    CloudIdentityDevicesDelete (..),
    newCloudIdentityDevicesDelete,

    -- ** cloudidentity.devices.deviceUsers.approve
    CloudIdentityDevicesDeviceUsersApproveResource,
    CloudIdentityDevicesDeviceUsersApprove (..),
    newCloudIdentityDevicesDeviceUsersApprove,

    -- ** cloudidentity.devices.deviceUsers.block
    CloudIdentityDevicesDeviceUsersBlockResource,
    CloudIdentityDevicesDeviceUsersBlock (..),
    newCloudIdentityDevicesDeviceUsersBlock,

    -- ** cloudidentity.devices.deviceUsers.cancelWipe
    CloudIdentityDevicesDeviceUsersCancelWipeResource,
    CloudIdentityDevicesDeviceUsersCancelWipe (..),
    newCloudIdentityDevicesDeviceUsersCancelWipe,

    -- ** cloudidentity.devices.deviceUsers.clientStates.get
    CloudIdentityDevicesDeviceUsersClientStatesGetResource,
    CloudIdentityDevicesDeviceUsersClientStatesGet (..),
    newCloudIdentityDevicesDeviceUsersClientStatesGet,

    -- ** cloudidentity.devices.deviceUsers.clientStates.list
    CloudIdentityDevicesDeviceUsersClientStatesListResource,
    CloudIdentityDevicesDeviceUsersClientStatesList (..),
    newCloudIdentityDevicesDeviceUsersClientStatesList,

    -- ** cloudidentity.devices.deviceUsers.clientStates.patch
    CloudIdentityDevicesDeviceUsersClientStatesPatchResource,
    CloudIdentityDevicesDeviceUsersClientStatesPatch (..),
    newCloudIdentityDevicesDeviceUsersClientStatesPatch,

    -- ** cloudidentity.devices.deviceUsers.delete
    CloudIdentityDevicesDeviceUsersDeleteResource,
    CloudIdentityDevicesDeviceUsersDelete (..),
    newCloudIdentityDevicesDeviceUsersDelete,

    -- ** cloudidentity.devices.deviceUsers.get
    CloudIdentityDevicesDeviceUsersGetResource,
    CloudIdentityDevicesDeviceUsersGet (..),
    newCloudIdentityDevicesDeviceUsersGet,

    -- ** cloudidentity.devices.deviceUsers.list
    CloudIdentityDevicesDeviceUsersListResource,
    CloudIdentityDevicesDeviceUsersList (..),
    newCloudIdentityDevicesDeviceUsersList,

    -- ** cloudidentity.devices.deviceUsers.lookup
    CloudIdentityDevicesDeviceUsersLookupResource,
    CloudIdentityDevicesDeviceUsersLookup (..),
    newCloudIdentityDevicesDeviceUsersLookup,

    -- ** cloudidentity.devices.deviceUsers.wipe
    CloudIdentityDevicesDeviceUsersWipeResource,
    CloudIdentityDevicesDeviceUsersWipe (..),
    newCloudIdentityDevicesDeviceUsersWipe,

    -- ** cloudidentity.devices.get
    CloudIdentityDevicesGetResource,
    CloudIdentityDevicesGet (..),
    newCloudIdentityDevicesGet,

    -- ** cloudidentity.devices.list
    CloudIdentityDevicesListResource,
    CloudIdentityDevicesList (..),
    newCloudIdentityDevicesList,

    -- ** cloudidentity.devices.wipe
    CloudIdentityDevicesWipeResource,
    CloudIdentityDevicesWipe (..),
    newCloudIdentityDevicesWipe,

    -- ** cloudidentity.groups.create
    CloudIdentityGroupsCreateResource,
    CloudIdentityGroupsCreate (..),
    newCloudIdentityGroupsCreate,

    -- ** cloudidentity.groups.delete
    CloudIdentityGroupsDeleteResource,
    CloudIdentityGroupsDelete (..),
    newCloudIdentityGroupsDelete,

    -- ** cloudidentity.groups.get
    CloudIdentityGroupsGetResource,
    CloudIdentityGroupsGet (..),
    newCloudIdentityGroupsGet,

    -- ** cloudidentity.groups.getSecuritySettings
    CloudIdentityGroupsGetSecuritySettingsResource,
    CloudIdentityGroupsGetSecuritySettings (..),
    newCloudIdentityGroupsGetSecuritySettings,

    -- ** cloudidentity.groups.list
    CloudIdentityGroupsListResource,
    CloudIdentityGroupsList (..),
    newCloudIdentityGroupsList,

    -- ** cloudidentity.groups.lookup
    CloudIdentityGroupsLookupResource,
    CloudIdentityGroupsLookup (..),
    newCloudIdentityGroupsLookup,

    -- ** cloudidentity.groups.memberships.checkTransitiveMembership
    CloudIdentityGroupsMembershipsCheckTransitiveMembershipResource,
    CloudIdentityGroupsMembershipsCheckTransitiveMembership (..),
    newCloudIdentityGroupsMembershipsCheckTransitiveMembership,

    -- ** cloudidentity.groups.memberships.create
    CloudIdentityGroupsMembershipsCreateResource,
    CloudIdentityGroupsMembershipsCreate (..),
    newCloudIdentityGroupsMembershipsCreate,

    -- ** cloudidentity.groups.memberships.delete
    CloudIdentityGroupsMembershipsDeleteResource,
    CloudIdentityGroupsMembershipsDelete (..),
    newCloudIdentityGroupsMembershipsDelete,

    -- ** cloudidentity.groups.memberships.get
    CloudIdentityGroupsMembershipsGetResource,
    CloudIdentityGroupsMembershipsGet (..),
    newCloudIdentityGroupsMembershipsGet,

    -- ** cloudidentity.groups.memberships.getMembershipGraph
    CloudIdentityGroupsMembershipsGetMembershipGraphResource,
    CloudIdentityGroupsMembershipsGetMembershipGraph (..),
    newCloudIdentityGroupsMembershipsGetMembershipGraph,

    -- ** cloudidentity.groups.memberships.list
    CloudIdentityGroupsMembershipsListResource,
    CloudIdentityGroupsMembershipsList (..),
    newCloudIdentityGroupsMembershipsList,

    -- ** cloudidentity.groups.memberships.lookup
    CloudIdentityGroupsMembershipsLookupResource,
    CloudIdentityGroupsMembershipsLookup (..),
    newCloudIdentityGroupsMembershipsLookup,

    -- ** cloudidentity.groups.memberships.modifyMembershipRoles
    CloudIdentityGroupsMembershipsModifyMembershipRolesResource,
    CloudIdentityGroupsMembershipsModifyMembershipRoles (..),
    newCloudIdentityGroupsMembershipsModifyMembershipRoles,

    -- ** cloudidentity.groups.memberships.searchTransitiveGroups
    CloudIdentityGroupsMembershipsSearchTransitiveGroupsResource,
    CloudIdentityGroupsMembershipsSearchTransitiveGroups (..),
    newCloudIdentityGroupsMembershipsSearchTransitiveGroups,

    -- ** cloudidentity.groups.memberships.searchTransitiveMemberships
    CloudIdentityGroupsMembershipsSearchTransitiveMembershipsResource,
    CloudIdentityGroupsMembershipsSearchTransitiveMemberships (..),
    newCloudIdentityGroupsMembershipsSearchTransitiveMemberships,

    -- ** cloudidentity.groups.patch
    CloudIdentityGroupsPatchResource,
    CloudIdentityGroupsPatch (..),
    newCloudIdentityGroupsPatch,

    -- ** cloudidentity.groups.search
    CloudIdentityGroupsSearchResource,
    CloudIdentityGroupsSearch (..),
    newCloudIdentityGroupsSearch,

    -- ** cloudidentity.groups.updateSecuritySettings
    CloudIdentityGroupsUpdateSecuritySettingsResource,
    CloudIdentityGroupsUpdateSecuritySettings (..),
    newCloudIdentityGroupsUpdateSecuritySettings,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CheckTransitiveMembershipResponse
    CheckTransitiveMembershipResponse (..),
    newCheckTransitiveMembershipResponse,

    -- ** CreateGroupMetadata
    CreateGroupMetadata (..),
    newCreateGroupMetadata,

    -- ** CreateMembershipMetadata
    CreateMembershipMetadata (..),
    newCreateMembershipMetadata,

    -- ** DeleteGroupMetadata
    DeleteGroupMetadata (..),
    newDeleteGroupMetadata,

    -- ** DeleteMembershipMetadata
    DeleteMembershipMetadata (..),
    newDeleteMembershipMetadata,

    -- ** DynamicGroupMetadata
    DynamicGroupMetadata (..),
    newDynamicGroupMetadata,

    -- ** DynamicGroupQuery
    DynamicGroupQuery (..),
    newDynamicGroupQuery,

    -- ** DynamicGroupQuery_ResourceType
    DynamicGroupQuery_ResourceType (..),

    -- ** DynamicGroupStatus
    DynamicGroupStatus (..),
    newDynamicGroupStatus,

    -- ** DynamicGroupStatus_Status
    DynamicGroupStatus_Status (..),

    -- ** EntityKey
    EntityKey (..),
    newEntityKey,

    -- ** ExpiryDetail
    ExpiryDetail (..),
    newExpiryDetail,

    -- ** GetMembershipGraphMetadata
    GetMembershipGraphMetadata (..),
    newGetMembershipGraphMetadata,

    -- ** GetMembershipGraphResponse
    GetMembershipGraphResponse (..),
    newGetMembershipGraphResponse,

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributes
    GoogleAppsCloudidentityDevicesV1AndroidAttributes (..),
    newGoogleAppsCloudidentityDevicesV1AndroidAttributes,

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
    GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege (..),

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest,

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse,

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest,

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest,

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse,

    -- ** GoogleAppsCloudidentityDevicesV1ClientState
    GoogleAppsCloudidentityDevicesV1ClientState (..),
    newGoogleAppsCloudidentityDevicesV1ClientState,

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
    GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState (..),

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
    GoogleAppsCloudidentityDevicesV1ClientState_HealthScore (..),

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs (..),
    newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs,

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_Managed
    GoogleAppsCloudidentityDevicesV1ClientState_Managed (..),

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
    GoogleAppsCloudidentityDevicesV1ClientState_OwnerType (..),

    -- ** GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
    GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue (..),
    newGoogleAppsCloudidentityDevicesV1CustomAttributeValue,

    -- ** GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
    GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1Device
    GoogleAppsCloudidentityDevicesV1Device (..),
    newGoogleAppsCloudidentityDevicesV1Device,

    -- ** GoogleAppsCloudidentityDevicesV1Device_CompromisedState
    GoogleAppsCloudidentityDevicesV1Device_CompromisedState (..),

    -- ** GoogleAppsCloudidentityDevicesV1Device_DeviceType
    GoogleAppsCloudidentityDevicesV1Device_DeviceType (..),

    -- ** GoogleAppsCloudidentityDevicesV1Device_EncryptionState
    GoogleAppsCloudidentityDevicesV1Device_EncryptionState (..),

    -- ** GoogleAppsCloudidentityDevicesV1Device_ManagementState
    GoogleAppsCloudidentityDevicesV1Device_ManagementState (..),

    -- ** GoogleAppsCloudidentityDevicesV1Device_OwnerType
    GoogleAppsCloudidentityDevicesV1Device_OwnerType (..),

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser
    GoogleAppsCloudidentityDevicesV1DeviceUser (..),
    newGoogleAppsCloudidentityDevicesV1DeviceUser,

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
    GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState (..),

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
    GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState (..),

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
    GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState (..),

    -- ** GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse,

    -- ** GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse,

    -- ** GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListDevicesResponse,

    -- ** GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
    GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata (..),
    newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse (..),
    newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse,

    -- ** GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
    GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata (..),
    newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
    GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
    GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest,

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse,

    -- ** Group
    Group (..),
    newGroup,

    -- ** Group_Labels
    Group_Labels (..),
    newGroup_Labels,

    -- ** GroupRelation
    GroupRelation (..),
    newGroupRelation,

    -- ** GroupRelation_Labels
    GroupRelation_Labels (..),
    newGroupRelation_Labels,

    -- ** GroupRelation_RelationType
    GroupRelation_RelationType (..),

    -- ** ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- ** ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- ** LookupGroupNameResponse
    LookupGroupNameResponse (..),
    newLookupGroupNameResponse,

    -- ** LookupMembershipNameResponse
    LookupMembershipNameResponse (..),
    newLookupMembershipNameResponse,

    -- ** MemberRelation
    MemberRelation (..),
    newMemberRelation,

    -- ** MemberRelation_RelationType
    MemberRelation_RelationType (..),

    -- ** MemberRestriction
    MemberRestriction (..),
    newMemberRestriction,

    -- ** Membership
    Membership (..),
    newMembership,

    -- ** Membership_Type
    Membership_Type (..),

    -- ** MembershipAdjacencyList
    MembershipAdjacencyList (..),
    newMembershipAdjacencyList,

    -- ** MembershipRole
    MembershipRole (..),
    newMembershipRole,

    -- ** MembershipRoleRestrictionEvaluation
    MembershipRoleRestrictionEvaluation (..),
    newMembershipRoleRestrictionEvaluation,

    -- ** MembershipRoleRestrictionEvaluation_State
    MembershipRoleRestrictionEvaluation_State (..),

    -- ** ModifyMembershipRolesRequest
    ModifyMembershipRolesRequest (..),
    newModifyMembershipRolesRequest,

    -- ** ModifyMembershipRolesResponse
    ModifyMembershipRolesResponse (..),
    newModifyMembershipRolesResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** RestrictionEvaluation
    RestrictionEvaluation (..),
    newRestrictionEvaluation,

    -- ** RestrictionEvaluation_State
    RestrictionEvaluation_State (..),

    -- ** RestrictionEvaluations
    RestrictionEvaluations (..),
    newRestrictionEvaluations,

    -- ** SearchGroupsResponse
    SearchGroupsResponse (..),
    newSearchGroupsResponse,

    -- ** SearchTransitiveGroupsResponse
    SearchTransitiveGroupsResponse (..),
    newSearchTransitiveGroupsResponse,

    -- ** SearchTransitiveMembershipsResponse
    SearchTransitiveMembershipsResponse (..),
    newSearchTransitiveMembershipsResponse,

    -- ** SecuritySettings
    SecuritySettings (..),
    newSecuritySettings,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TransitiveMembershipRole
    TransitiveMembershipRole (..),
    newTransitiveMembershipRole,

    -- ** UpdateGroupMetadata
    UpdateGroupMetadata (..),
    newUpdateGroupMetadata,

    -- ** UpdateMembershipMetadata
    UpdateMembershipMetadata (..),
    newUpdateMembershipMetadata,

    -- ** UpdateMembershipRolesParams
    UpdateMembershipRolesParams (..),
    newUpdateMembershipRolesParams,

    -- ** DevicesListView
    DevicesListView (..),

    -- ** GroupsCreateInitialGroupConfig
    GroupsCreateInitialGroupConfig (..),

    -- ** GroupsListView
    GroupsListView (..),

    -- ** GroupsMembershipsListView
    GroupsMembershipsListView (..),

    -- ** GroupsSearchView
    GroupsSearchView (..),
  )
where

import Gogol.CloudIdentity.Devices.CancelWipe
import Gogol.CloudIdentity.Devices.Create
import Gogol.CloudIdentity.Devices.Delete
import Gogol.CloudIdentity.Devices.DeviceUsers.Approve
import Gogol.CloudIdentity.Devices.DeviceUsers.Block
import Gogol.CloudIdentity.Devices.DeviceUsers.CancelWipe
import Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
import Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.List
import Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
import Gogol.CloudIdentity.Devices.DeviceUsers.Delete
import Gogol.CloudIdentity.Devices.DeviceUsers.Get
import Gogol.CloudIdentity.Devices.DeviceUsers.List
import Gogol.CloudIdentity.Devices.DeviceUsers.Lookup
import Gogol.CloudIdentity.Devices.DeviceUsers.Wipe
import Gogol.CloudIdentity.Devices.Get
import Gogol.CloudIdentity.Devices.List
import Gogol.CloudIdentity.Devices.Wipe
import Gogol.CloudIdentity.Groups.Create
import Gogol.CloudIdentity.Groups.Delete
import Gogol.CloudIdentity.Groups.Get
import Gogol.CloudIdentity.Groups.GetSecuritySettings
import Gogol.CloudIdentity.Groups.List
import Gogol.CloudIdentity.Groups.Lookup
import Gogol.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
import Gogol.CloudIdentity.Groups.Memberships.Create
import Gogol.CloudIdentity.Groups.Memberships.Delete
import Gogol.CloudIdentity.Groups.Memberships.Get
import Gogol.CloudIdentity.Groups.Memberships.GetMembershipGraph
import Gogol.CloudIdentity.Groups.Memberships.List
import Gogol.CloudIdentity.Groups.Memberships.Lookup
import Gogol.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
import Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
import Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
import Gogol.CloudIdentity.Groups.Patch
import Gogol.CloudIdentity.Groups.Search
import Gogol.CloudIdentity.Groups.UpdateSecuritySettings
import Gogol.CloudIdentity.Types
