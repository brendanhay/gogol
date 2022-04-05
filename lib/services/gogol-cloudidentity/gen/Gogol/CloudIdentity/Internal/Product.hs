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
-- Module      : Gogol.CloudIdentity.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudIdentity.Internal.Product
  ( -- * CheckTransitiveMembershipResponse
    CheckTransitiveMembershipResponse (..),
    newCheckTransitiveMembershipResponse,

    -- * CreateGroupMetadata
    CreateGroupMetadata (..),
    newCreateGroupMetadata,

    -- * CreateMembershipMetadata
    CreateMembershipMetadata (..),
    newCreateMembershipMetadata,

    -- * DeleteGroupMetadata
    DeleteGroupMetadata (..),
    newDeleteGroupMetadata,

    -- * DeleteMembershipMetadata
    DeleteMembershipMetadata (..),
    newDeleteMembershipMetadata,

    -- * DynamicGroupMetadata
    DynamicGroupMetadata (..),
    newDynamicGroupMetadata,

    -- * DynamicGroupQuery
    DynamicGroupQuery (..),
    newDynamicGroupQuery,

    -- * DynamicGroupStatus
    DynamicGroupStatus (..),
    newDynamicGroupStatus,

    -- * EntityKey
    EntityKey (..),
    newEntityKey,

    -- * ExpiryDetail
    ExpiryDetail (..),
    newExpiryDetail,

    -- * GetMembershipGraphMetadata
    GetMembershipGraphMetadata (..),
    newGetMembershipGraphMetadata,

    -- * GetMembershipGraphResponse
    GetMembershipGraphResponse (..),
    newGetMembershipGraphResponse,

    -- * GoogleAppsCloudidentityDevicesV1AndroidAttributes
    GoogleAppsCloudidentityDevicesV1AndroidAttributes (..),
    newGoogleAppsCloudidentityDevicesV1AndroidAttributes,

    -- * GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest,

    -- * GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse,

    -- * GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest,

    -- * GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest,

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse,

    -- * GoogleAppsCloudidentityDevicesV1ClientState
    GoogleAppsCloudidentityDevicesV1ClientState (..),
    newGoogleAppsCloudidentityDevicesV1ClientState,

    -- * GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs (..),
    newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs,

    -- * GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
    GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata,

    -- * GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue (..),
    newGoogleAppsCloudidentityDevicesV1CustomAttributeValue,

    -- * GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
    GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata,

    -- * GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1Device
    GoogleAppsCloudidentityDevicesV1Device (..),
    newGoogleAppsCloudidentityDevicesV1Device,

    -- * GoogleAppsCloudidentityDevicesV1DeviceUser
    GoogleAppsCloudidentityDevicesV1DeviceUser (..),
    newGoogleAppsCloudidentityDevicesV1DeviceUser,

    -- * GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse,

    -- * GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse,

    -- * GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse (..),
    newGoogleAppsCloudidentityDevicesV1ListDevicesResponse,

    -- * GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
    GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata (..),
    newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata,

    -- * GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse (..),
    newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse,

    -- * GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
    GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata (..),
    newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata,

    -- * GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
    GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
    GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest,

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse (..),
    newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse,

    -- * Group
    Group (..),
    newGroup,

    -- * Group_Labels
    Group_Labels (..),
    newGroup_Labels,

    -- * GroupRelation
    GroupRelation (..),
    newGroupRelation,

    -- * GroupRelation_Labels
    GroupRelation_Labels (..),
    newGroupRelation_Labels,

    -- * ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- * LookupGroupNameResponse
    LookupGroupNameResponse (..),
    newLookupGroupNameResponse,

    -- * LookupMembershipNameResponse
    LookupMembershipNameResponse (..),
    newLookupMembershipNameResponse,

    -- * MemberRelation
    MemberRelation (..),
    newMemberRelation,

    -- * MemberRestriction
    MemberRestriction (..),
    newMemberRestriction,

    -- * Membership
    Membership (..),
    newMembership,

    -- * MembershipAdjacencyList
    MembershipAdjacencyList (..),
    newMembershipAdjacencyList,

    -- * MembershipRole
    MembershipRole (..),
    newMembershipRole,

    -- * MembershipRoleRestrictionEvaluation
    MembershipRoleRestrictionEvaluation (..),
    newMembershipRoleRestrictionEvaluation,

    -- * ModifyMembershipRolesRequest
    ModifyMembershipRolesRequest (..),
    newModifyMembershipRolesRequest,

    -- * ModifyMembershipRolesResponse
    ModifyMembershipRolesResponse (..),
    newModifyMembershipRolesResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * RestrictionEvaluation
    RestrictionEvaluation (..),
    newRestrictionEvaluation,

    -- * RestrictionEvaluations
    RestrictionEvaluations (..),
    newRestrictionEvaluations,

    -- * SearchGroupsResponse
    SearchGroupsResponse (..),
    newSearchGroupsResponse,

    -- * SearchTransitiveGroupsResponse
    SearchTransitiveGroupsResponse (..),
    newSearchTransitiveGroupsResponse,

    -- * SearchTransitiveMembershipsResponse
    SearchTransitiveMembershipsResponse (..),
    newSearchTransitiveMembershipsResponse,

    -- * SecuritySettings
    SecuritySettings (..),
    newSecuritySettings,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TransitiveMembershipRole
    TransitiveMembershipRole (..),
    newTransitiveMembershipRole,

    -- * UpdateGroupMetadata
    UpdateGroupMetadata (..),
    newUpdateGroupMetadata,

    -- * UpdateMembershipMetadata
    UpdateMembershipMetadata (..),
    newUpdateMembershipMetadata,

    -- * UpdateMembershipRolesParams
    UpdateMembershipRolesParams (..),
    newUpdateMembershipRolesParams,
  )
where

import Gogol.CloudIdentity.Internal.Sum
import qualified Gogol.Prelude as Core

-- | The response message for MembershipsService.CheckTransitiveMembership.
--
-- /See:/ 'newCheckTransitiveMembershipResponse' smart constructor.
newtype CheckTransitiveMembershipResponse = CheckTransitiveMembershipResponse
  { -- | Response does not include the possible roles of a member since the behavior of this rpc is not all-or-nothing unlike the other rpcs. So, it may not be possible to list all the roles definitively, due to possible lack of authorization in some of the paths.
    hasMembership :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckTransitiveMembershipResponse' with the minimum fields required to make a request.
newCheckTransitiveMembershipResponse ::
  CheckTransitiveMembershipResponse
newCheckTransitiveMembershipResponse =
  CheckTransitiveMembershipResponse {hasMembership = Core.Nothing}

instance
  Core.FromJSON
    CheckTransitiveMembershipResponse
  where
  parseJSON =
    Core.withObject
      "CheckTransitiveMembershipResponse"
      ( \o ->
          CheckTransitiveMembershipResponse
            Core.<$> (o Core..:? "hasMembership")
      )

instance
  Core.ToJSON
    CheckTransitiveMembershipResponse
  where
  toJSON CheckTransitiveMembershipResponse {..} =
    Core.object
      ( Core.catMaybes
          [("hasMembership" Core..=) Core.<$> hasMembership]
      )

-- | Metadata for CreateGroup LRO.
--
-- /See:/ 'newCreateGroupMetadata' smart constructor.
data CreateGroupMetadata = CreateGroupMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateGroupMetadata' with the minimum fields required to make a request.
newCreateGroupMetadata ::
  CreateGroupMetadata
newCreateGroupMetadata = CreateGroupMetadata

instance Core.FromJSON CreateGroupMetadata where
  parseJSON =
    Core.withObject
      "CreateGroupMetadata"
      (\o -> Core.pure CreateGroupMetadata)

instance Core.ToJSON CreateGroupMetadata where
  toJSON = Core.const Core.emptyObject

-- | Metadata for CreateMembership LRO.
--
-- /See:/ 'newCreateMembershipMetadata' smart constructor.
data CreateMembershipMetadata = CreateMembershipMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateMembershipMetadata' with the minimum fields required to make a request.
newCreateMembershipMetadata ::
  CreateMembershipMetadata
newCreateMembershipMetadata = CreateMembershipMetadata

instance Core.FromJSON CreateMembershipMetadata where
  parseJSON =
    Core.withObject
      "CreateMembershipMetadata"
      (\o -> Core.pure CreateMembershipMetadata)

instance Core.ToJSON CreateMembershipMetadata where
  toJSON = Core.const Core.emptyObject

-- | Metadata for DeleteGroup LRO.
--
-- /See:/ 'newDeleteGroupMetadata' smart constructor.
data DeleteGroupMetadata = DeleteGroupMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteGroupMetadata' with the minimum fields required to make a request.
newDeleteGroupMetadata ::
  DeleteGroupMetadata
newDeleteGroupMetadata = DeleteGroupMetadata

instance Core.FromJSON DeleteGroupMetadata where
  parseJSON =
    Core.withObject
      "DeleteGroupMetadata"
      (\o -> Core.pure DeleteGroupMetadata)

instance Core.ToJSON DeleteGroupMetadata where
  toJSON = Core.const Core.emptyObject

-- | Metadata for DeleteMembership LRO.
--
-- /See:/ 'newDeleteMembershipMetadata' smart constructor.
data DeleteMembershipMetadata = DeleteMembershipMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteMembershipMetadata' with the minimum fields required to make a request.
newDeleteMembershipMetadata ::
  DeleteMembershipMetadata
newDeleteMembershipMetadata = DeleteMembershipMetadata

instance Core.FromJSON DeleteMembershipMetadata where
  parseJSON =
    Core.withObject
      "DeleteMembershipMetadata"
      (\o -> Core.pure DeleteMembershipMetadata)

instance Core.ToJSON DeleteMembershipMetadata where
  toJSON = Core.const Core.emptyObject

-- | Dynamic group metadata like queries and status.
--
-- /See:/ 'newDynamicGroupMetadata' smart constructor.
data DynamicGroupMetadata = DynamicGroupMetadata
  { -- | Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
    queries :: (Core.Maybe [DynamicGroupQuery]),
    -- | Output only. Status of the dynamic group.
    status :: (Core.Maybe DynamicGroupStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupMetadata' with the minimum fields required to make a request.
newDynamicGroupMetadata ::
  DynamicGroupMetadata
newDynamicGroupMetadata =
  DynamicGroupMetadata {queries = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON DynamicGroupMetadata where
  parseJSON =
    Core.withObject
      "DynamicGroupMetadata"
      ( \o ->
          DynamicGroupMetadata
            Core.<$> (o Core..:? "queries")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON DynamicGroupMetadata where
  toJSON DynamicGroupMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("queries" Core..=) Core.<$> queries,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Defines a query on a resource.
--
-- /See:/ 'newDynamicGroupQuery' smart constructor.
data DynamicGroupQuery = DynamicGroupQuery
  { -- | Query that determines the memberships of the dynamic group. Examples: All users with at least one @organizations.department@ of engineering. @user.organizations.exists(org, org.department==\'engineering\')@ All users with at least one location that has @area@ of @foo@ and @building_id@ of @bar@. @user.locations.exists(loc, loc.area==\'foo\' && loc.building_id==\'bar\')@ All users with any variation of the name John Doe (case-insensitive queries add @equalsIgnoreCase()@ to the value being queried). @user.name.value.equalsIgnoreCase(\'jOhn DoE\')@
    query :: (Core.Maybe Core.Text),
    -- | Resource type for the Dynamic Group Query
    resourceType :: (Core.Maybe DynamicGroupQuery_ResourceType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupQuery' with the minimum fields required to make a request.
newDynamicGroupQuery ::
  DynamicGroupQuery
newDynamicGroupQuery =
  DynamicGroupQuery {query = Core.Nothing, resourceType = Core.Nothing}

instance Core.FromJSON DynamicGroupQuery where
  parseJSON =
    Core.withObject
      "DynamicGroupQuery"
      ( \o ->
          DynamicGroupQuery
            Core.<$> (o Core..:? "query")
            Core.<*> (o Core..:? "resourceType")
      )

instance Core.ToJSON DynamicGroupQuery where
  toJSON DynamicGroupQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("query" Core..=) Core.<$> query,
            ("resourceType" Core..=) Core.<$> resourceType
          ]
      )

-- | The current status of a dynamic group along with timestamp.
--
-- /See:/ 'newDynamicGroupStatus' smart constructor.
data DynamicGroupStatus = DynamicGroupStatus
  { -- | Status of the dynamic group.
    status :: (Core.Maybe DynamicGroupStatus_Status),
    -- | The latest time at which the dynamic group is guaranteed to be in the given status. If status is @UP_TO_DATE@, the latest time at which the dynamic group was confirmed to be up-to-date. If status is @UPDATING_MEMBERSHIPS@, the time at which dynamic group was created.
    statusTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupStatus' with the minimum fields required to make a request.
newDynamicGroupStatus ::
  DynamicGroupStatus
newDynamicGroupStatus =
  DynamicGroupStatus {status = Core.Nothing, statusTime = Core.Nothing}

instance Core.FromJSON DynamicGroupStatus where
  parseJSON =
    Core.withObject
      "DynamicGroupStatus"
      ( \o ->
          DynamicGroupStatus
            Core.<$> (o Core..:? "status")
            Core.<*> (o Core..:? "statusTime")
      )

instance Core.ToJSON DynamicGroupStatus where
  toJSON DynamicGroupStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            ("statusTime" Core..=) Core.<$> statusTime
          ]
      )

-- | A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional @namespace@ or a user without a @namespace@. The combination of @id@ and @namespace@ must be unique; however, the same @id@ can be used with different @namespace@s.
--
-- /See:/ 'newEntityKey' smart constructor.
data EntityKey = EntityKey
  { -- | The ID of the entity. For Google-managed entities, the @id@ should be the email address of an existing group or user. For external-identity-mapped entities, the @id@ must be a string conforming to the Identity Source\'s requirements. Must be unique within a @namespace@.
    id :: (Core.Maybe Core.Text),
    -- | The namespace in which the entity exists. If not specified, the @EntityKey@ represents a Google-managed entity such as a Google user or a Google Group. If specified, the @EntityKey@ represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of @identitysources\/{identity_source}@.
    namespace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityKey' with the minimum fields required to make a request.
newEntityKey ::
  EntityKey
newEntityKey = EntityKey {id = Core.Nothing, namespace = Core.Nothing}

instance Core.FromJSON EntityKey where
  parseJSON =
    Core.withObject
      "EntityKey"
      ( \o ->
          EntityKey
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "namespace")
      )

instance Core.ToJSON EntityKey where
  toJSON EntityKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("namespace" Core..=) Core.<$> namespace
          ]
      )

-- | The @MembershipRole@ expiry details.
--
-- /See:/ 'newExpiryDetail' smart constructor.
newtype ExpiryDetail = ExpiryDetail
  { -- | The time at which the @MembershipRole@ will expire.
    expireTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpiryDetail' with the minimum fields required to make a request.
newExpiryDetail ::
  ExpiryDetail
newExpiryDetail = ExpiryDetail {expireTime = Core.Nothing}

instance Core.FromJSON ExpiryDetail where
  parseJSON =
    Core.withObject
      "ExpiryDetail"
      ( \o ->
          ExpiryDetail Core.<$> (o Core..:? "expireTime")
      )

instance Core.ToJSON ExpiryDetail where
  toJSON ExpiryDetail {..} =
    Core.object
      ( Core.catMaybes
          [("expireTime" Core..=) Core.<$> expireTime]
      )

-- | Metadata of GetMembershipGraphResponse LRO. This is currently empty to permit future extensibility.
--
-- /See:/ 'newGetMembershipGraphMetadata' smart constructor.
data GetMembershipGraphMetadata = GetMembershipGraphMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetMembershipGraphMetadata' with the minimum fields required to make a request.
newGetMembershipGraphMetadata ::
  GetMembershipGraphMetadata
newGetMembershipGraphMetadata = GetMembershipGraphMetadata

instance Core.FromJSON GetMembershipGraphMetadata where
  parseJSON =
    Core.withObject
      "GetMembershipGraphMetadata"
      (\o -> Core.pure GetMembershipGraphMetadata)

instance Core.ToJSON GetMembershipGraphMetadata where
  toJSON = Core.const Core.emptyObject

-- | The response message for MembershipsService.GetMembershipGraph.
--
-- /See:/ 'newGetMembershipGraphResponse' smart constructor.
data GetMembershipGraphResponse = GetMembershipGraphResponse
  { -- | The membership graph\'s path information represented as an adjacency list.
    adjacencyList :: (Core.Maybe [MembershipAdjacencyList]),
    -- | The resources representing each group in the adjacency list. Each group in this list can be correlated to a \'group\' of the MembershipAdjacencyList using the \'name\' of the Group resource.
    groups :: (Core.Maybe [Group])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetMembershipGraphResponse' with the minimum fields required to make a request.
newGetMembershipGraphResponse ::
  GetMembershipGraphResponse
newGetMembershipGraphResponse =
  GetMembershipGraphResponse
    { adjacencyList = Core.Nothing,
      groups = Core.Nothing
    }

instance Core.FromJSON GetMembershipGraphResponse where
  parseJSON =
    Core.withObject
      "GetMembershipGraphResponse"
      ( \o ->
          GetMembershipGraphResponse
            Core.<$> (o Core..:? "adjacencyList")
            Core.<*> (o Core..:? "groups")
      )

instance Core.ToJSON GetMembershipGraphResponse where
  toJSON GetMembershipGraphResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("adjacencyList" Core..=) Core.<$> adjacencyList,
            ("groups" Core..=) Core.<$> groups
          ]
      )

-- | Resource representing the Android specific attributes of a Device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1AndroidAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1AndroidAttributes = GoogleAppsCloudidentityDevicesV1AndroidAttributes
  { -- | Whether applications from unknown sources can be installed on device.
    enabledUnknownSources :: (Core.Maybe Core.Bool),
    -- | Whether this account is on an owner\/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
    ownerProfileAccount :: (Core.Maybe Core.Bool),
    -- | Ownership privileges on device.
    ownershipPrivilege ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
      ),
    -- | Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the \"Enforce Work Profile\" policy.
    supportsWorkProfile :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1AndroidAttributes' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1AndroidAttributes ::
  GoogleAppsCloudidentityDevicesV1AndroidAttributes
newGoogleAppsCloudidentityDevicesV1AndroidAttributes =
  GoogleAppsCloudidentityDevicesV1AndroidAttributes
    { enabledUnknownSources = Core.Nothing,
      ownerProfileAccount = Core.Nothing,
      ownershipPrivilege = Core.Nothing,
      supportsWorkProfile = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1AndroidAttributes
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1AndroidAttributes"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1AndroidAttributes
            Core.<$> (o Core..:? "enabledUnknownSources")
              Core.<*> (o Core..:? "ownerProfileAccount")
              Core.<*> (o Core..:? "ownershipPrivilege")
              Core.<*> (o Core..:? "supportsWorkProfile")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1AndroidAttributes
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1AndroidAttributes {..} =
      Core.object
        ( Core.catMaybes
            [ ("enabledUnknownSources" Core..=)
                Core.<$> enabledUnknownSources,
              ("ownerProfileAccount" Core..=)
                Core.<$> ownerProfileAccount,
              ("ownershipPrivilege" Core..=)
                Core.<$> ownershipPrivilege,
              ("supportsWorkProfile" Core..=)
                Core.<$> supportsWorkProfile
            ]
        )

-- | Metadata for ApproveDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for approving the device to access user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest ::
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    { customer = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
            Core.<$> (o Core..:? "customer")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [("customer" Core..=) Core.<$> customer]
        )

-- | Response message for approving the device to access user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
  { -- | Resultant DeviceUser object for the action.
    deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse ::
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    { deviceUser = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
            Core.<$> (o Core..:? "deviceUser")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse {..} =
      Core.object
        ( Core.catMaybes
            [("deviceUser" Core..=) Core.<$> deviceUser]
        )

-- | Metadata for BlockDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for blocking account on device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest ::
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    { customer = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
            Core.<$> (o Core..:? "customer")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [("customer" Core..=) Core.<$> customer]
        )

-- | Response message for blocking the device from accessing user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse = GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
  { -- | Resultant DeviceUser object for the action.
    deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse ::
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    { deviceUser = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
            Core.<$> (o Core..:? "deviceUser")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse {..} =
      Core.object
        ( Core.catMaybes
            [("deviceUser" Core..=) Core.<$> deviceUser]
        )

-- | Metadata for CancelWipeDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for cancelling an unfinished device wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    { customer = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
            Core.<$> (o Core..:? "customer")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest {..} =
      Core.object
        ( Core.catMaybes
            [("customer" Core..=) Core.<$> customer]
        )

-- | Response message for cancelling an unfinished device wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
  { -- | Resultant Device object for the action. Note that asset tags will not be returned in the device object.
    device :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    { device = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
            Core.<$> (o Core..:? "device")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse {..} =
      Core.object
        (Core.catMaybes [("device" Core..=) Core.<$> device])

-- | Metadata for CancelWipeDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for cancelling an unfinished user account wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    { customer = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
            Core.<$> (o Core..:? "customer")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [("customer" Core..=) Core.<$> customer]
        )

-- | Response message for cancelling an unfinished user account wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
  { -- | Resultant DeviceUser object for the action.
    deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse ::
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    { deviceUser = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
            Core.<$> (o Core..:? "deviceUser")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse {..} =
      Core.object
        ( Core.catMaybes
            [("deviceUser" Core..=) Core.<$> deviceUser]
        )

-- | Represents the state associated with an API client calling the Devices API. Resource representing ClientState and supports updates from API users
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ClientState' smart constructor.
data GoogleAppsCloudidentityDevicesV1ClientState = GoogleAppsCloudidentityDevicesV1ClientState
  { -- | The caller can specify asset tags for this resource
    assetTags :: (Core.Maybe [Core.Text]),
    -- | The compliance state of the resource as specified by the API client.
    complianceState ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
      ),
    -- | Output only. The time the client state data was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | This field may be used to store a unique identifier for the API resource within which these CustomAttributes are a field.
    customId :: (Core.Maybe Core.Text),
    -- | The token that needs to be passed back for concurrency control in updates. Token needs to be passed back in UpdateRequest
    etag :: (Core.Maybe Core.Text),
    -- | The Health score of the resource. The Health score is the callers specification of the condition of the device from a usability point of view. For example, a third-party device management provider may specify a health score based on its compliance with organizational policies.
    healthScore ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
      ),
    -- | The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map.
    keyValuePairs ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
      ),
    -- | Output only. The time the client state data was last updated.
    lastUpdateTime :: (Core.Maybe Core.DateTime),
    -- | The management state of the resource as specified by the API client.
    managed :: (Core.Maybe GoogleAppsCloudidentityDevicesV1ClientState_Managed),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientState\/{partner}@, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: @{customer}-suffix@, where @customer@ is your customer ID. The /suffix/ is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization\'s customer ID can be obtained from the URL: @GET https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer@ The @id@ field in the response contains the customer ID starting with the letter \'C\'. The customer ID to be used in this API is the string after the letter \'C\' (not including \'C\')
    name :: (Core.Maybe Core.Text),
    -- | Output only. The owner of the ClientState
    ownerType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1ClientState_OwnerType),
    -- | A descriptive cause of the health score.
    scoreReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientState' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ClientState ::
  GoogleAppsCloudidentityDevicesV1ClientState
newGoogleAppsCloudidentityDevicesV1ClientState =
  GoogleAppsCloudidentityDevicesV1ClientState
    { assetTags = Core.Nothing,
      complianceState = Core.Nothing,
      createTime = Core.Nothing,
      customId = Core.Nothing,
      etag = Core.Nothing,
      healthScore = Core.Nothing,
      keyValuePairs = Core.Nothing,
      lastUpdateTime = Core.Nothing,
      managed = Core.Nothing,
      name = Core.Nothing,
      ownerType = Core.Nothing,
      scoreReason = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ClientState
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ClientState"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ClientState
            Core.<$> (o Core..:? "assetTags")
            Core.<*> (o Core..:? "complianceState")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "customId")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "healthScore")
            Core.<*> (o Core..:? "keyValuePairs")
            Core.<*> (o Core..:? "lastUpdateTime")
            Core.<*> (o Core..:? "managed")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ownerType")
            Core.<*> (o Core..:? "scoreReason")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ClientState
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ClientState {..} =
      Core.object
        ( Core.catMaybes
            [ ("assetTags" Core..=) Core.<$> assetTags,
              ("complianceState" Core..=) Core.<$> complianceState,
              ("createTime" Core..=) Core.<$> createTime,
              ("customId" Core..=) Core.<$> customId,
              ("etag" Core..=) Core.<$> etag,
              ("healthScore" Core..=) Core.<$> healthScore,
              ("keyValuePairs" Core..=) Core.<$> keyValuePairs,
              ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
              ("managed" Core..=) Core.<$> managed,
              ("name" Core..=) Core.<$> name,
              ("ownerType" Core..=) Core.<$> ownerType,
              ("scoreReason" Core..=) Core.<$> scoreReason
            ]
        )

-- | The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs = GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
  { -- |
    additional ::
      ( Core.HashMap
          Core.Text
          GoogleAppsCloudidentityDevicesV1CustomAttributeValue
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GoogleAppsCloudidentityDevicesV1CustomAttributeValue ->
  GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs additional =
  GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs {..} =
      Core.toJSON additional

-- | Metadata for CreateDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata = GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata ::
  GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Additional custom attribute values may be one of these types
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CustomAttributeValue' smart constructor.
data GoogleAppsCloudidentityDevicesV1CustomAttributeValue = GoogleAppsCloudidentityDevicesV1CustomAttributeValue
  { -- | Represents a boolean value.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Represents a double value.
    numberValue :: (Core.Maybe Core.Double),
    -- | Represents a string value.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CustomAttributeValue' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CustomAttributeValue ::
  GoogleAppsCloudidentityDevicesV1CustomAttributeValue
newGoogleAppsCloudidentityDevicesV1CustomAttributeValue =
  GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    { boolValue = Core.Nothing,
      numberValue = Core.Nothing,
      stringValue = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1CustomAttributeValue"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1CustomAttributeValue
            Core.<$> (o Core..:? "boolValue")
              Core.<*> (o Core..:? "numberValue")
              Core.<*> (o Core..:? "stringValue")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue {..} =
      Core.object
        ( Core.catMaybes
            [ ("boolValue" Core..=) Core.<$> boolValue,
              ("numberValue" Core..=) Core.<$> numberValue,
              ("stringValue" Core..=) Core.<$> stringValue
            ]
        )

-- | Metadata for DeleteDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata = GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata ::
  GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Metadata for DeleteDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1Device' smart constructor.
data GoogleAppsCloudidentityDevicesV1Device = GoogleAppsCloudidentityDevicesV1Device
  { -- | Output only. Attributes specific to Android devices.
    androidSpecificAttributes :: (Core.Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributes),
    -- | Asset tag of the device.
    assetTag :: (Core.Maybe Core.Text),
    -- | Output only. Baseband version of the device.
    basebandVersion :: (Core.Maybe Core.Text),
    -- | Output only. Device bootloader version. Example: 0.6.7.
    bootloaderVersion :: (Core.Maybe Core.Text),
    -- | Output only. Device brand. Example: Samsung.
    brand :: (Core.Maybe Core.Text),
    -- | Output only. Build number of the device.
    buildNumber :: (Core.Maybe Core.Text),
    -- | Output only. Represents whether the Device is compromised.
    compromisedState ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1Device_CompromisedState
      ),
    -- | Output only. When the Company-Owned device was imported. This field is empty for BYOD devices.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Type of device.
    deviceType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_DeviceType),
    -- | Output only. Whether developer options is enabled on device.
    enabledDeveloperOptions :: (Core.Maybe Core.Bool),
    -- | Output only. Whether USB debugging is enabled on device.
    enabledUsbDebugging :: (Core.Maybe Core.Bool),
    -- | Output only. Device encryption state.
    encryptionState :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_EncryptionState),
    -- | Output only. IMEI number of device if GSM device; empty otherwise.
    imei :: (Core.Maybe Core.Text),
    -- | Output only. Kernel version of the device.
    kernelVersion :: (Core.Maybe Core.Text),
    -- | Most recent time when device synced with this service.
    lastSyncTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Management state of the device
    managementState :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_ManagementState),
    -- | Output only. Device manufacturer. Example: Motorola.
    manufacturer :: (Core.Maybe Core.Text),
    -- | Output only. MEID number of device if CDMA device; empty otherwise.
    meid :: (Core.Maybe Core.Text),
    -- | Output only. Model name of device. Example: Pixel 3.
    model :: (Core.Maybe Core.Text),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}@, where device is the unique id assigned to the Device.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Mobile or network operator of device, if available.
    networkOperator :: (Core.Maybe Core.Text),
    -- | Output only. OS version of the device. Example: Android 8.1.0.
    osVersion :: (Core.Maybe Core.Text),
    -- | Output only. Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership/privilege| is |PROFILE/OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account\'s domain has only one account. Examples: \"com.example\", \"xyz.com\".
    otherAccounts :: (Core.Maybe [Core.Text]),
    -- | Output only. Whether the device is owned by the company or an individual
    ownerType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_OwnerType),
    -- | Output only. OS release version. Example: 6.0.
    releaseVersion :: (Core.Maybe Core.Text),
    -- | Output only. OS security patch update time on device.
    securityPatchTime :: (Core.Maybe Core.DateTime),
    -- | Serial Number of device. Example: HT82V1A01076.
    serialNumber :: (Core.Maybe Core.Text),
    -- | WiFi MAC addresses of device.
    wifiMacAddresses :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1Device' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1Device ::
  GoogleAppsCloudidentityDevicesV1Device
newGoogleAppsCloudidentityDevicesV1Device =
  GoogleAppsCloudidentityDevicesV1Device
    { androidSpecificAttributes = Core.Nothing,
      assetTag = Core.Nothing,
      basebandVersion = Core.Nothing,
      bootloaderVersion = Core.Nothing,
      brand = Core.Nothing,
      buildNumber = Core.Nothing,
      compromisedState = Core.Nothing,
      createTime = Core.Nothing,
      deviceType = Core.Nothing,
      enabledDeveloperOptions = Core.Nothing,
      enabledUsbDebugging = Core.Nothing,
      encryptionState = Core.Nothing,
      imei = Core.Nothing,
      kernelVersion = Core.Nothing,
      lastSyncTime = Core.Nothing,
      managementState = Core.Nothing,
      manufacturer = Core.Nothing,
      meid = Core.Nothing,
      model = Core.Nothing,
      name = Core.Nothing,
      networkOperator = Core.Nothing,
      osVersion = Core.Nothing,
      otherAccounts = Core.Nothing,
      ownerType = Core.Nothing,
      releaseVersion = Core.Nothing,
      securityPatchTime = Core.Nothing,
      serialNumber = Core.Nothing,
      wifiMacAddresses = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1Device
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1Device"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1Device
            Core.<$> (o Core..:? "androidSpecificAttributes")
            Core.<*> (o Core..:? "assetTag")
            Core.<*> (o Core..:? "basebandVersion")
            Core.<*> (o Core..:? "bootloaderVersion")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "buildNumber")
            Core.<*> (o Core..:? "compromisedState")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deviceType")
            Core.<*> (o Core..:? "enabledDeveloperOptions")
            Core.<*> (o Core..:? "enabledUsbDebugging")
            Core.<*> (o Core..:? "encryptionState")
            Core.<*> (o Core..:? "imei")
            Core.<*> (o Core..:? "kernelVersion")
            Core.<*> (o Core..:? "lastSyncTime")
            Core.<*> (o Core..:? "managementState")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "meid")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkOperator")
            Core.<*> (o Core..:? "osVersion")
            Core.<*> (o Core..:? "otherAccounts")
            Core.<*> (o Core..:? "ownerType")
            Core.<*> (o Core..:? "releaseVersion")
            Core.<*> (o Core..:? "securityPatchTime")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "wifiMacAddresses")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1Device
  where
  toJSON GoogleAppsCloudidentityDevicesV1Device {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidSpecificAttributes" Core..=)
              Core.<$> androidSpecificAttributes,
            ("assetTag" Core..=) Core.<$> assetTag,
            ("basebandVersion" Core..=) Core.<$> basebandVersion,
            ("bootloaderVersion" Core..=)
              Core.<$> bootloaderVersion,
            ("brand" Core..=) Core.<$> brand,
            ("buildNumber" Core..=) Core.<$> buildNumber,
            ("compromisedState" Core..=)
              Core.<$> compromisedState,
            ("createTime" Core..=) Core.<$> createTime,
            ("deviceType" Core..=) Core.<$> deviceType,
            ("enabledDeveloperOptions" Core..=)
              Core.<$> enabledDeveloperOptions,
            ("enabledUsbDebugging" Core..=)
              Core.<$> enabledUsbDebugging,
            ("encryptionState" Core..=) Core.<$> encryptionState,
            ("imei" Core..=) Core.<$> imei,
            ("kernelVersion" Core..=) Core.<$> kernelVersion,
            ("lastSyncTime" Core..=) Core.<$> lastSyncTime,
            ("managementState" Core..=) Core.<$> managementState,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("meid" Core..=) Core.<$> meid,
            ("model" Core..=) Core.<$> model,
            ("name" Core..=) Core.<$> name,
            ("networkOperator" Core..=) Core.<$> networkOperator,
            ("osVersion" Core..=) Core.<$> osVersion,
            ("otherAccounts" Core..=) Core.<$> otherAccounts,
            ("ownerType" Core..=) Core.<$> ownerType,
            ("releaseVersion" Core..=) Core.<$> releaseVersion,
            ("securityPatchTime" Core..=)
              Core.<$> securityPatchTime,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("wifiMacAddresses" Core..=)
              Core.<$> wifiMacAddresses
          ]
      )

-- | Represents a user\'s use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user\'s use of a Device
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeviceUser' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser
  { -- | Compromised State of the DeviceUser object
    compromisedState ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
      ),
    -- | When the user first signed in to the device
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Most recent time when user registered with this service.
    firstSyncTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Default locale used on device, in IETF BCP-47 format.
    languageCode :: (Core.Maybe Core.Text),
    -- | Output only. Last time when user synced with policies.
    lastSyncTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Management state of the user on the device.
    managementState ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
      ),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the DeviceUser in format: @devices\/{device}\/deviceUsers\/{device_user}@, where @device_user@ uniquely identifies a user\'s use of a device.
    name :: (Core.Maybe Core.Text),
    -- | Password state of the DeviceUser object
    passwordState ::
      ( Core.Maybe
          GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
      ),
    -- | Output only. User agent on the device for this specific user
    userAgent :: (Core.Maybe Core.Text),
    -- | Email address of the user registered on the device.
    userEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeviceUser' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeviceUser ::
  GoogleAppsCloudidentityDevicesV1DeviceUser
newGoogleAppsCloudidentityDevicesV1DeviceUser =
  GoogleAppsCloudidentityDevicesV1DeviceUser
    { compromisedState = Core.Nothing,
      createTime = Core.Nothing,
      firstSyncTime = Core.Nothing,
      languageCode = Core.Nothing,
      lastSyncTime = Core.Nothing,
      managementState = Core.Nothing,
      name = Core.Nothing,
      passwordState = Core.Nothing,
      userAgent = Core.Nothing,
      userEmail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1DeviceUser
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1DeviceUser"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1DeviceUser
            Core.<$> (o Core..:? "compromisedState")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "firstSyncTime")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "lastSyncTime")
            Core.<*> (o Core..:? "managementState")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "passwordState")
            Core.<*> (o Core..:? "userAgent")
            Core.<*> (o Core..:? "userEmail")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1DeviceUser
  where
  toJSON GoogleAppsCloudidentityDevicesV1DeviceUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("compromisedState" Core..=)
              Core.<$> compromisedState,
            ("createTime" Core..=) Core.<$> createTime,
            ("firstSyncTime" Core..=) Core.<$> firstSyncTime,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("lastSyncTime" Core..=) Core.<$> lastSyncTime,
            ("managementState" Core..=) Core.<$> managementState,
            ("name" Core..=) Core.<$> name,
            ("passwordState" Core..=) Core.<$> passwordState,
            ("userAgent" Core..=) Core.<$> userAgent,
            ("userEmail" Core..=) Core.<$> userEmail
          ]
      )

-- | Response message that is returned in ListClientStates.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListClientStatesResponse = GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
  { -- | Client states meeting the list restrictions.
    clientStates :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1ClientState]),
    -- | Token to retrieve the next page of results. Empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListClientStatesResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse ::
  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    { clientStates = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ListClientStatesResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
            Core.<$> (o Core..:? "clientStates")
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("clientStates" Core..=) Core.<$> clientStates,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response message that is returned from the ListDeviceUsers method.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse = GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
  { -- | Devices meeting the list restrictions.
    deviceUsers :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1DeviceUser]),
    -- | Token to retrieve the next page of results. Empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse ::
  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    { deviceUsers = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
            Core.<$> (o Core..:? "deviceUsers")
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("deviceUsers" Core..=) Core.<$> deviceUsers,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response message that is returned from the ListDevices method.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListDevicesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDevicesResponse = GoogleAppsCloudidentityDevicesV1ListDevicesResponse
  { -- | Devices meeting the list restrictions.
    devices :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1Device]),
    -- | Token to retrieve the next page of results. Empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDevicesResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListDevicesResponse ::
  GoogleAppsCloudidentityDevicesV1ListDevicesResponse
newGoogleAppsCloudidentityDevicesV1ListDevicesResponse =
  GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    { devices = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ListDevicesResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1ListDevicesResponse
            Core.<$> (o Core..:? "devices")
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("devices" Core..=) Core.<$> devices,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Metadata for ListEndpointApps LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata = GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata ::
  GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata =
  GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Response containing resource names of the DeviceUsers associated with the caller\'s credentials.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse = GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
  { -- | The obfuscated customer Id that may be passed back to other Devices API methods such as List, Get, etc.
    customer :: (Core.Maybe Core.Text),
    -- | <https://cloud.google.com/apis/design/resource_names Resource names> of the DeviceUsers in the format: @devices\/{device}\/deviceUsers\/{user_resource}@, where device is the unique ID assigned to a Device and user_resource is the unique user ID
    names :: (Core.Maybe [Core.Text]),
    -- | Token to retrieve the next page of results. Empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse ::
  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    { customer = Core.Nothing,
      names = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
            Core.<$> (o Core..:? "customer") Core.<*> (o Core..:? "names")
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("customer" Core..=) Core.<$> customer,
              ("names" Core..=) Core.<$> names,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Metadata for SignoutDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Metadata for UpdateClientState LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata = GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata ::
  GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata =
  GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Metadata for UpdateDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata = GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata ::
  GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Metadata for WipeDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata = GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for wiping all data on the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceRequest = GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Optional. Specifies if a user is able to factory reset a device after a Device Wipe. On iOS, this is called \"Activation Lock\", while on Android, this is known as \"Factory Reset Protection\". If true, this protection will be removed from the device, so that a user can successfully factory reset. If false, the setting is untouched on the device.
    removeResetLock :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    { customer = Core.Nothing,
      removeResetLock = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
            Core.<$> (o Core..:? "customer")
              Core.<*> (o Core..:? "removeResetLock")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("customer" Core..=) Core.<$> customer,
              ("removeResetLock" Core..=)
                Core.<$> removeResetLock
            ]
        )

-- | Response message for wiping all data on the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceResponse = GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
  { -- | Resultant Device object for the action. Note that asset tags will not be returned in the device object.
    device :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse {device = Core.Nothing}

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
            Core.<$> (o Core..:? "device")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse {..} =
      Core.object
        (Core.catMaybes [("device" Core..=) Core.<$> device])

-- | Metadata for WipeDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata"
      ( \o ->
          Core.pure
            GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for starting an account wipe on device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
  { -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    { customer = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
            Core.<$> (o Core..:? "customer")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [("customer" Core..=) Core.<$> customer]
        )

-- | Response message for wiping the user\'s account from the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
  { -- | Resultant DeviceUser object for the action.
    deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse ::
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    { deviceUser = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse"
      ( \o ->
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
            Core.<$> (o Core..:? "deviceUser")
      )

instance
  Core.ToJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
  where
  toJSON
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse {..} =
      Core.object
        ( Core.catMaybes
            [("deviceUser" Core..=) Core.<$> deviceUser]
        )

-- | A group within the Cloud Identity Groups API. A @Group@ is a collection of entities, where each entity is either a user, another group, or a service account.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
  { -- | Output only. The time when the @Group@ was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | An extended description to help users determine the purpose of a @Group@. Must not be longer than 4,096 characters.
    description :: (Core.Maybe Core.Text),
    -- | The display name of the @Group@.
    displayName :: (Core.Maybe Core.Text),
    -- | Optional. Dynamic group metadata like queries and status.
    dynamicGroupMetadata :: (Core.Maybe DynamicGroupMetadata),
    -- | Required. The @EntityKey@ of the @Group@.
    groupKey :: (Core.Maybe EntityKey),
    -- | Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of @cloudidentity.googleapis.com\/groups.discussion_forum@ and an empty value. Existing Google Groups can have an additional label with a key of @cloudidentity.googleapis.com\/groups.security@ and an empty value added to them. __This is an immutable change and the security label cannot be removed once added.__ Dynamic groups have a label with a key of @cloudidentity.googleapis.com\/groups.dynamic@. Identity-mapped groups for Cloud Search have a label with a key of @system\/groups\/external@ and an empty value.
    labels :: (Core.Maybe Group_Labels),
    -- | Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@. Shall be of the form @groups\/{group}@.
    name :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The resource name of the entity under which this @Group@ resides in the Cloud Identity resource hierarchy. Must be of the form @identitysources\/{identity_source}@ for external- identity-mapped groups or @customers\/{customer}@ for Google Groups. The @customer@ must begin with \"C\" (for example, \'C046psxkn\').
    parent :: (Core.Maybe Core.Text),
    -- | Output only. The time when the @Group@ was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup ::
  Group
newGroup =
  Group
    { createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      dynamicGroupMetadata = Core.Nothing,
      groupKey = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \o ->
          Group
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "dynamicGroupMetadata")
            Core.<*> (o Core..:? "groupKey")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Group where
  toJSON Group {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("dynamicGroupMetadata" Core..=)
              Core.<$> dynamicGroupMetadata,
            ("groupKey" Core..=) Core.<$> groupKey,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of @cloudidentity.googleapis.com\/groups.discussion_forum@ and an empty value. Existing Google Groups can have an additional label with a key of @cloudidentity.googleapis.com\/groups.security@ and an empty value added to them. __This is an immutable change and the security label cannot be removed once added.__ Dynamic groups have a label with a key of @cloudidentity.googleapis.com\/groups.dynamic@. Identity-mapped groups for Cloud Search have a label with a key of @system\/groups\/external@ and an empty value.
--
-- /See:/ 'newGroup_Labels' smart constructor.
newtype Group_Labels = Group_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group_Labels' with the minimum fields required to make a request.
newGroup_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Group_Labels
newGroup_Labels additional = Group_Labels {additional = additional}

instance Core.FromJSON Group_Labels where
  parseJSON =
    Core.withObject
      "Group_Labels"
      ( \o ->
          Group_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Group_Labels where
  toJSON Group_Labels {..} = Core.toJSON additional

-- | Message representing a transitive group of a user or a group.
--
-- /See:/ 'newGroupRelation' smart constructor.
data GroupRelation = GroupRelation
  { -- | Display name for this group.
    displayName :: (Core.Maybe Core.Text),
    -- | Resource name for this group.
    group' :: (Core.Maybe Core.Text),
    -- | Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.
    groupKey :: (Core.Maybe EntityKey),
    -- | Labels for Group resource.
    labels :: (Core.Maybe GroupRelation_Labels),
    -- | The relation between the member and the transitive group.
    relationType :: (Core.Maybe GroupRelation_RelationType),
    -- | Membership roles of the member for the group.
    roles :: (Core.Maybe [TransitiveMembershipRole])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupRelation' with the minimum fields required to make a request.
newGroupRelation ::
  GroupRelation
newGroupRelation =
  GroupRelation
    { displayName = Core.Nothing,
      group' = Core.Nothing,
      groupKey = Core.Nothing,
      labels = Core.Nothing,
      relationType = Core.Nothing,
      roles = Core.Nothing
    }

instance Core.FromJSON GroupRelation where
  parseJSON =
    Core.withObject
      "GroupRelation"
      ( \o ->
          GroupRelation
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "group")
            Core.<*> (o Core..:? "groupKey")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "relationType")
            Core.<*> (o Core..:? "roles")
      )

instance Core.ToJSON GroupRelation where
  toJSON GroupRelation {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("group" Core..=) Core.<$> group',
            ("groupKey" Core..=) Core.<$> groupKey,
            ("labels" Core..=) Core.<$> labels,
            ("relationType" Core..=) Core.<$> relationType,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | Labels for Group resource.
--
-- /See:/ 'newGroupRelation_Labels' smart constructor.
newtype GroupRelation_Labels = GroupRelation_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupRelation_Labels' with the minimum fields required to make a request.
newGroupRelation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GroupRelation_Labels
newGroupRelation_Labels additional =
  GroupRelation_Labels {additional = additional}

instance Core.FromJSON GroupRelation_Labels where
  parseJSON =
    Core.withObject
      "GroupRelation_Labels"
      ( \o ->
          GroupRelation_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GroupRelation_Labels where
  toJSON GroupRelation_Labels {..} =
    Core.toJSON additional

-- | Response message for ListGroups operation.
--
-- /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse
  { -- | Groups returned in response to list request. The results are not sorted.
    groups :: (Core.Maybe [Group]),
    -- | Token to retrieve the next page of results, or empty if there are no more results available for listing.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
newListGroupsResponse ::
  ListGroupsResponse
newListGroupsResponse =
  ListGroupsResponse {groups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListGroupsResponse where
  parseJSON =
    Core.withObject
      "ListGroupsResponse"
      ( \o ->
          ListGroupsResponse
            Core.<$> (o Core..:? "groups")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListGroupsResponse where
  toJSON ListGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("groups" Core..=) Core.<$> groups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for MembershipsService.ListMemberships.
--
-- /See:/ 'newListMembershipsResponse' smart constructor.
data ListMembershipsResponse = ListMembershipsResponse
  { -- | The @Membership@s under the specified @parent@.
    memberships :: (Core.Maybe [Membership]),
    -- | A continuation token to retrieve the next page of results, or empty if there are no more results available.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
newListMembershipsResponse ::
  ListMembershipsResponse
newListMembershipsResponse =
  ListMembershipsResponse
    { memberships = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListMembershipsResponse where
  parseJSON =
    Core.withObject
      "ListMembershipsResponse"
      ( \o ->
          ListMembershipsResponse
            Core.<$> (o Core..:? "memberships")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListMembershipsResponse where
  toJSON ListMembershipsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberships" Core..=) Core.<$> memberships,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for GroupsService.LookupGroupName.
--
-- /See:/ 'newLookupGroupNameResponse' smart constructor.
newtype LookupGroupNameResponse = LookupGroupNameResponse
  { -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the looked-up @Group@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupGroupNameResponse' with the minimum fields required to make a request.
newLookupGroupNameResponse ::
  LookupGroupNameResponse
newLookupGroupNameResponse = LookupGroupNameResponse {name = Core.Nothing}

instance Core.FromJSON LookupGroupNameResponse where
  parseJSON =
    Core.withObject
      "LookupGroupNameResponse"
      ( \o ->
          LookupGroupNameResponse Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON LookupGroupNameResponse where
  toJSON LookupGroupNameResponse {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | The response message for MembershipsService.LookupMembershipName.
--
-- /See:/ 'newLookupMembershipNameResponse' smart constructor.
newtype LookupMembershipNameResponse = LookupMembershipNameResponse
  { -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the looked-up @Membership@. Must be of the form @groups\/{group}\/memberships\/{membership}@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupMembershipNameResponse' with the minimum fields required to make a request.
newLookupMembershipNameResponse ::
  LookupMembershipNameResponse
newLookupMembershipNameResponse =
  LookupMembershipNameResponse {name = Core.Nothing}

instance Core.FromJSON LookupMembershipNameResponse where
  parseJSON =
    Core.withObject
      "LookupMembershipNameResponse"
      ( \o ->
          LookupMembershipNameResponse
            Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON LookupMembershipNameResponse where
  toJSON LookupMembershipNameResponse {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Message representing a transitive membership of a group.
--
-- /See:/ 'newMemberRelation' smart constructor.
data MemberRelation = MemberRelation
  { -- | Resource name for this member.
    member :: (Core.Maybe Core.Text),
    -- | Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.
    preferredMemberKey :: (Core.Maybe [EntityKey]),
    -- | The relation between the group and the transitive member.
    relationType :: (Core.Maybe MemberRelation_RelationType),
    -- | The membership role details (i.e name of role and expiry time).
    roles :: (Core.Maybe [TransitiveMembershipRole])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberRelation' with the minimum fields required to make a request.
newMemberRelation ::
  MemberRelation
newMemberRelation =
  MemberRelation
    { member = Core.Nothing,
      preferredMemberKey = Core.Nothing,
      relationType = Core.Nothing,
      roles = Core.Nothing
    }

instance Core.FromJSON MemberRelation where
  parseJSON =
    Core.withObject
      "MemberRelation"
      ( \o ->
          MemberRelation
            Core.<$> (o Core..:? "member")
            Core.<*> (o Core..:? "preferredMemberKey")
            Core.<*> (o Core..:? "relationType")
            Core.<*> (o Core..:? "roles")
      )

instance Core.ToJSON MemberRelation where
  toJSON MemberRelation {..} =
    Core.object
      ( Core.catMaybes
          [ ("member" Core..=) Core.<$> member,
            ("preferredMemberKey" Core..=)
              Core.<$> preferredMemberKey,
            ("relationType" Core..=) Core.<$> relationType,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | The definition of MemberRestriction
--
-- /See:/ 'newMemberRestriction' smart constructor.
data MemberRestriction = MemberRestriction
  { -- | The evaluated state of this restriction on a group.
    evaluation :: (Core.Maybe RestrictionEvaluation),
    -- | Member Restriction as defined by CEL expression. Supported restrictions are: @member.customer_id@ and @member.type@. Valid values for @member.type@ are @1@, @2@ and @3@. They correspond to USER, SERVICE_ACCOUNT, and GROUP respectively. The value for @member.customer_id@ only supports @groupCustomerId()@ currently which means the customer id of the group will be used for restriction. Supported operators are @&&@, @||@ and @==@, corresponding to AND, OR, and EQUAL. Examples: Allow only service accounts of given customer to be members. @member.type == 2 && member.customer_id == groupCustomerId()@ Allow only users or groups to be members. @member.type == 1 || member.type == 3@
    query :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberRestriction' with the minimum fields required to make a request.
newMemberRestriction ::
  MemberRestriction
newMemberRestriction =
  MemberRestriction {evaluation = Core.Nothing, query = Core.Nothing}

instance Core.FromJSON MemberRestriction where
  parseJSON =
    Core.withObject
      "MemberRestriction"
      ( \o ->
          MemberRestriction
            Core.<$> (o Core..:? "evaluation")
            Core.<*> (o Core..:? "query")
      )

instance Core.ToJSON MemberRestriction where
  toJSON MemberRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluation" Core..=) Core.<$> evaluation,
            ("query" Core..=) Core.<$> query
          ]
      )

-- | A membership within the Cloud Identity Groups API. A @Membership@ defines a relationship between a @Group@ and an entity belonging to that @Group@, referred to as a \"member\".
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
  { -- | Output only. The time when the @Membership@ was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@. Shall be of the form @groups\/{group}\/memberships\/{membership}@.
    name :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The @EntityKey@ of the member.
    preferredMemberKey :: (Core.Maybe EntityKey),
    -- | The @MembershipRole@s that apply to the @Membership@. If unspecified, defaults to a single @MembershipRole@ with @name@ @MEMBER@. Must not contain duplicate @MembershipRole@s with the same @name@.
    roles :: (Core.Maybe [MembershipRole]),
    -- | Output only. The type of the membership.
    type' :: (Core.Maybe Membership_Type),
    -- | Output only. The time when the @Membership@ was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership ::
  Membership
newMembership =
  Membership
    { createTime = Core.Nothing,
      name = Core.Nothing,
      preferredMemberKey = Core.Nothing,
      roles = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Membership where
  parseJSON =
    Core.withObject
      "Membership"
      ( \o ->
          Membership
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "preferredMemberKey")
            Core.<*> (o Core..:? "roles")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Membership where
  toJSON Membership {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("name" Core..=) Core.<$> name,
            ("preferredMemberKey" Core..=)
              Core.<$> preferredMemberKey,
            ("roles" Core..=) Core.<$> roles,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Membership graph\'s path information as an adjacency list.
--
-- /See:/ 'newMembershipAdjacencyList' smart constructor.
data MembershipAdjacencyList = MembershipAdjacencyList
  { -- | Each edge contains information about the member that belongs to this group. Note: Fields returned here will help identify the specific Membership resource (e.g name, preferred/member/key and role), but may not be a comprehensive list of all fields.
    edges :: (Core.Maybe [Membership]),
    -- | Resource name of the group that the members belong to.
    group' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipAdjacencyList' with the minimum fields required to make a request.
newMembershipAdjacencyList ::
  MembershipAdjacencyList
newMembershipAdjacencyList =
  MembershipAdjacencyList {edges = Core.Nothing, group' = Core.Nothing}

instance Core.FromJSON MembershipAdjacencyList where
  parseJSON =
    Core.withObject
      "MembershipAdjacencyList"
      ( \o ->
          MembershipAdjacencyList
            Core.<$> (o Core..:? "edges") Core.<*> (o Core..:? "group")
      )

instance Core.ToJSON MembershipAdjacencyList where
  toJSON MembershipAdjacencyList {..} =
    Core.object
      ( Core.catMaybes
          [ ("edges" Core..=) Core.<$> edges,
            ("group" Core..=) Core.<$> group'
          ]
      )

-- | A membership role within the Cloud Identity Groups API. A @MembershipRole@ defines the privileges granted to a @Membership@.
--
-- /See:/ 'newMembershipRole' smart constructor.
data MembershipRole = MembershipRole
  { -- | The expiry details of the @MembershipRole@. Expiry details are only supported for @MEMBER@ @MembershipRoles@. May be set if @name@ is @MEMBER@. Must not be set if @name@ is any other value.
    expiryDetail :: (Core.Maybe ExpiryDetail),
    -- | The name of the @MembershipRole@. Must be one of @OWNER@, @MANAGER@, @MEMBER@.
    name :: (Core.Maybe Core.Text),
    -- | Evaluations of restrictions applied to parent group on this membership.
    restrictionEvaluations :: (Core.Maybe RestrictionEvaluations)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRole' with the minimum fields required to make a request.
newMembershipRole ::
  MembershipRole
newMembershipRole =
  MembershipRole
    { expiryDetail = Core.Nothing,
      name = Core.Nothing,
      restrictionEvaluations = Core.Nothing
    }

instance Core.FromJSON MembershipRole where
  parseJSON =
    Core.withObject
      "MembershipRole"
      ( \o ->
          MembershipRole
            Core.<$> (o Core..:? "expiryDetail")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "restrictionEvaluations")
      )

instance Core.ToJSON MembershipRole where
  toJSON MembershipRole {..} =
    Core.object
      ( Core.catMaybes
          [ ("expiryDetail" Core..=) Core.<$> expiryDetail,
            ("name" Core..=) Core.<$> name,
            ("restrictionEvaluations" Core..=)
              Core.<$> restrictionEvaluations
          ]
      )

-- | The evaluated state of this restriction.
--
-- /See:/ 'newMembershipRoleRestrictionEvaluation' smart constructor.
newtype MembershipRoleRestrictionEvaluation = MembershipRoleRestrictionEvaluation
  { -- | Output only. The current state of the restriction
    state :: (Core.Maybe MembershipRoleRestrictionEvaluation_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRoleRestrictionEvaluation' with the minimum fields required to make a request.
newMembershipRoleRestrictionEvaluation ::
  MembershipRoleRestrictionEvaluation
newMembershipRoleRestrictionEvaluation =
  MembershipRoleRestrictionEvaluation {state = Core.Nothing}

instance
  Core.FromJSON
    MembershipRoleRestrictionEvaluation
  where
  parseJSON =
    Core.withObject
      "MembershipRoleRestrictionEvaluation"
      ( \o ->
          MembershipRoleRestrictionEvaluation
            Core.<$> (o Core..:? "state")
      )

instance
  Core.ToJSON
    MembershipRoleRestrictionEvaluation
  where
  toJSON MembershipRoleRestrictionEvaluation {..} =
    Core.object
      (Core.catMaybes [("state" Core..=) Core.<$> state])

-- | The request message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'newModifyMembershipRolesRequest' smart constructor.
data ModifyMembershipRolesRequest = ModifyMembershipRolesRequest
  { -- | The @MembershipRole@s to be added. Adding or removing roles in the same request as updating roles is not supported. Must not be set if @update_roles_params@ is set.
    addRoles :: (Core.Maybe [MembershipRole]),
    -- | The @name@s of the @MembershipRole@s to be removed. Adding or removing roles in the same request as updating roles is not supported. It is not possible to remove the @MEMBER@ @MembershipRole@. If you wish to delete a @Membership@, call MembershipsService.DeleteMembership instead. Must not contain @MEMBER@. Must not be set if @update_roles_params@ is set.
    removeRoles :: (Core.Maybe [Core.Text]),
    -- | The @MembershipRole@s to be updated. Updating roles in the same request as adding or removing roles is not supported. Must not be set if either @add_roles@ or @remove_roles@ is set.
    updateRolesParams :: (Core.Maybe [UpdateMembershipRolesParams])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyMembershipRolesRequest' with the minimum fields required to make a request.
newModifyMembershipRolesRequest ::
  ModifyMembershipRolesRequest
newModifyMembershipRolesRequest =
  ModifyMembershipRolesRequest
    { addRoles = Core.Nothing,
      removeRoles = Core.Nothing,
      updateRolesParams = Core.Nothing
    }

instance Core.FromJSON ModifyMembershipRolesRequest where
  parseJSON =
    Core.withObject
      "ModifyMembershipRolesRequest"
      ( \o ->
          ModifyMembershipRolesRequest
            Core.<$> (o Core..:? "addRoles")
            Core.<*> (o Core..:? "removeRoles")
            Core.<*> (o Core..:? "updateRolesParams")
      )

instance Core.ToJSON ModifyMembershipRolesRequest where
  toJSON ModifyMembershipRolesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("addRoles" Core..=) Core.<$> addRoles,
            ("removeRoles" Core..=) Core.<$> removeRoles,
            ("updateRolesParams" Core..=)
              Core.<$> updateRolesParams
          ]
      )

-- | The response message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'newModifyMembershipRolesResponse' smart constructor.
newtype ModifyMembershipRolesResponse = ModifyMembershipRolesResponse
  { -- | The @Membership@ resource after modifying its @MembershipRole@s.
    membership :: (Core.Maybe Membership)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyMembershipRolesResponse' with the minimum fields required to make a request.
newModifyMembershipRolesResponse ::
  ModifyMembershipRolesResponse
newModifyMembershipRolesResponse =
  ModifyMembershipRolesResponse {membership = Core.Nothing}

instance Core.FromJSON ModifyMembershipRolesResponse where
  parseJSON =
    Core.withObject
      "ModifyMembershipRolesResponse"
      ( \o ->
          ModifyMembershipRolesResponse
            Core.<$> (o Core..:? "membership")
      )

instance Core.ToJSON ModifyMembershipRolesResponse where
  toJSON ModifyMembershipRolesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("membership" Core..=) Core.<$> membership]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | The evaluated state of this restriction.
--
-- /See:/ 'newRestrictionEvaluation' smart constructor.
newtype RestrictionEvaluation = RestrictionEvaluation
  { -- | Output only. The current state of the restriction
    state :: (Core.Maybe RestrictionEvaluation_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictionEvaluation' with the minimum fields required to make a request.
newRestrictionEvaluation ::
  RestrictionEvaluation
newRestrictionEvaluation = RestrictionEvaluation {state = Core.Nothing}

instance Core.FromJSON RestrictionEvaluation where
  parseJSON =
    Core.withObject
      "RestrictionEvaluation"
      ( \o ->
          RestrictionEvaluation Core.<$> (o Core..:? "state")
      )

instance Core.ToJSON RestrictionEvaluation where
  toJSON RestrictionEvaluation {..} =
    Core.object
      (Core.catMaybes [("state" Core..=) Core.<$> state])

-- | Evaluations of restrictions applied to parent group on this membership.
--
-- /See:/ 'newRestrictionEvaluations' smart constructor.
newtype RestrictionEvaluations = RestrictionEvaluations
  { -- | Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
    memberRestrictionEvaluation :: (Core.Maybe MembershipRoleRestrictionEvaluation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictionEvaluations' with the minimum fields required to make a request.
newRestrictionEvaluations ::
  RestrictionEvaluations
newRestrictionEvaluations =
  RestrictionEvaluations {memberRestrictionEvaluation = Core.Nothing}

instance Core.FromJSON RestrictionEvaluations where
  parseJSON =
    Core.withObject
      "RestrictionEvaluations"
      ( \o ->
          RestrictionEvaluations
            Core.<$> (o Core..:? "memberRestrictionEvaluation")
      )

instance Core.ToJSON RestrictionEvaluations where
  toJSON RestrictionEvaluations {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberRestrictionEvaluation" Core..=)
              Core.<$> memberRestrictionEvaluation
          ]
      )

-- | The response message for GroupsService.SearchGroups.
--
-- /See:/ 'newSearchGroupsResponse' smart constructor.
data SearchGroupsResponse = SearchGroupsResponse
  { -- | The @Group@ resources that match the search query.
    groups :: (Core.Maybe [Group]),
    -- | A continuation token to retrieve the next page of results, or empty if there are no more results available.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchGroupsResponse' with the minimum fields required to make a request.
newSearchGroupsResponse ::
  SearchGroupsResponse
newSearchGroupsResponse =
  SearchGroupsResponse {groups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON SearchGroupsResponse where
  parseJSON =
    Core.withObject
      "SearchGroupsResponse"
      ( \o ->
          SearchGroupsResponse
            Core.<$> (o Core..:? "groups")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SearchGroupsResponse where
  toJSON SearchGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("groups" Core..=) Core.<$> groups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for MembershipsService.SearchTransitiveGroups.
--
-- /See:/ 'newSearchTransitiveGroupsResponse' smart constructor.
data SearchTransitiveGroupsResponse = SearchTransitiveGroupsResponse
  { -- | List of transitive groups satisfying the query.
    memberships :: (Core.Maybe [GroupRelation]),
    -- | Token to retrieve the next page of results, or empty if there are no more results available for listing.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchTransitiveGroupsResponse' with the minimum fields required to make a request.
newSearchTransitiveGroupsResponse ::
  SearchTransitiveGroupsResponse
newSearchTransitiveGroupsResponse =
  SearchTransitiveGroupsResponse
    { memberships = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON SearchTransitiveGroupsResponse where
  parseJSON =
    Core.withObject
      "SearchTransitiveGroupsResponse"
      ( \o ->
          SearchTransitiveGroupsResponse
            Core.<$> (o Core..:? "memberships")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SearchTransitiveGroupsResponse where
  toJSON SearchTransitiveGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberships" Core..=) Core.<$> memberships,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for MembershipsService.SearchTransitiveMemberships.
--
-- /See:/ 'newSearchTransitiveMembershipsResponse' smart constructor.
data SearchTransitiveMembershipsResponse = SearchTransitiveMembershipsResponse
  { -- | List of transitive members satisfying the query.
    memberships :: (Core.Maybe [MemberRelation]),
    -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchTransitiveMembershipsResponse' with the minimum fields required to make a request.
newSearchTransitiveMembershipsResponse ::
  SearchTransitiveMembershipsResponse
newSearchTransitiveMembershipsResponse =
  SearchTransitiveMembershipsResponse
    { memberships = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    SearchTransitiveMembershipsResponse
  where
  parseJSON =
    Core.withObject
      "SearchTransitiveMembershipsResponse"
      ( \o ->
          SearchTransitiveMembershipsResponse
            Core.<$> (o Core..:? "memberships")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    SearchTransitiveMembershipsResponse
  where
  toJSON SearchTransitiveMembershipsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberships" Core..=) Core.<$> memberships,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The definition of security settings.
--
-- /See:/ 'newSecuritySettings' smart constructor.
data SecuritySettings = SecuritySettings
  { -- | The Member Restriction value
    memberRestriction :: (Core.Maybe MemberRestriction),
    -- | Output only. The resource name of the security settings. Shall be of the form @groups\/{group_id}\/securitySettings@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecuritySettings' with the minimum fields required to make a request.
newSecuritySettings ::
  SecuritySettings
newSecuritySettings =
  SecuritySettings {memberRestriction = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON SecuritySettings where
  parseJSON =
    Core.withObject
      "SecuritySettings"
      ( \o ->
          SecuritySettings
            Core.<$> (o Core..:? "memberRestriction")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SecuritySettings where
  toJSON SecuritySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberRestriction" Core..=)
              Core.<$> memberRestriction,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Message representing the role of a TransitiveMembership.
--
-- /See:/ 'newTransitiveMembershipRole' smart constructor.
newtype TransitiveMembershipRole = TransitiveMembershipRole
  { -- | TransitiveMembershipRole in string format. Currently supported TransitiveMembershipRoles: @\"MEMBER\"@, @\"OWNER\"@, and @\"MANAGER\"@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransitiveMembershipRole' with the minimum fields required to make a request.
newTransitiveMembershipRole ::
  TransitiveMembershipRole
newTransitiveMembershipRole = TransitiveMembershipRole {role' = Core.Nothing}

instance Core.FromJSON TransitiveMembershipRole where
  parseJSON =
    Core.withObject
      "TransitiveMembershipRole"
      ( \o ->
          TransitiveMembershipRole
            Core.<$> (o Core..:? "role")
      )

instance Core.ToJSON TransitiveMembershipRole where
  toJSON TransitiveMembershipRole {..} =
    Core.object
      (Core.catMaybes [("role" Core..=) Core.<$> role'])

-- | Metadata for UpdateGroup LRO.
--
-- /See:/ 'newUpdateGroupMetadata' smart constructor.
data UpdateGroupMetadata = UpdateGroupMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateGroupMetadata' with the minimum fields required to make a request.
newUpdateGroupMetadata ::
  UpdateGroupMetadata
newUpdateGroupMetadata = UpdateGroupMetadata

instance Core.FromJSON UpdateGroupMetadata where
  parseJSON =
    Core.withObject
      "UpdateGroupMetadata"
      (\o -> Core.pure UpdateGroupMetadata)

instance Core.ToJSON UpdateGroupMetadata where
  toJSON = Core.const Core.emptyObject

-- | Metadata for UpdateMembership LRO.
--
-- /See:/ 'newUpdateMembershipMetadata' smart constructor.
data UpdateMembershipMetadata = UpdateMembershipMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMembershipMetadata' with the minimum fields required to make a request.
newUpdateMembershipMetadata ::
  UpdateMembershipMetadata
newUpdateMembershipMetadata = UpdateMembershipMetadata

instance Core.FromJSON UpdateMembershipMetadata where
  parseJSON =
    Core.withObject
      "UpdateMembershipMetadata"
      (\o -> Core.pure UpdateMembershipMetadata)

instance Core.ToJSON UpdateMembershipMetadata where
  toJSON = Core.const Core.emptyObject

-- | The details of an update to a @MembershipRole@.
--
-- /See:/ 'newUpdateMembershipRolesParams' smart constructor.
data UpdateMembershipRolesParams = UpdateMembershipRolesParams
  { -- | The fully-qualified names of fields to update. May only contain the field @expiry_detail.expire_time@.
    fieldMask :: (Core.Maybe Core.FieldMask),
    -- | The @MembershipRole@s to be updated. Only @MEMBER@ @MembershipRole@ can currently be updated.
    membershipRole :: (Core.Maybe MembershipRole)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMembershipRolesParams' with the minimum fields required to make a request.
newUpdateMembershipRolesParams ::
  UpdateMembershipRolesParams
newUpdateMembershipRolesParams =
  UpdateMembershipRolesParams
    { fieldMask = Core.Nothing,
      membershipRole = Core.Nothing
    }

instance Core.FromJSON UpdateMembershipRolesParams where
  parseJSON =
    Core.withObject
      "UpdateMembershipRolesParams"
      ( \o ->
          UpdateMembershipRolesParams
            Core.<$> (o Core..:? "fieldMask")
            Core.<*> (o Core..:? "membershipRole")
      )

instance Core.ToJSON UpdateMembershipRolesParams where
  toJSON UpdateMembershipRolesParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldMask" Core..=) Core.<$> fieldMask,
            ("membershipRole" Core..=) Core.<$> membershipRole
          ]
      )
