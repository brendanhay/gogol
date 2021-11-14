{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIdentity.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIdentity.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Compromised State of the DeviceUser object
data GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState
    = CompromisedStateUnspecified
      -- ^ @COMPROMISED_STATE_UNSPECIFIED@
      -- Compromised state of Device User account is unknown or unspecified.
    | Compromised
      -- ^ @COMPROMISED@
      -- Device User Account is compromised.
    | NotCompromised
      -- ^ @NOT_COMPROMISED@
      -- Device User Account is not compromised.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState where
    parseQueryParam = \case
        "COMPROMISED_STATE_UNSPECIFIED" -> Right CompromisedStateUnspecified
        "COMPROMISED" -> Right Compromised
        "NOT_COMPROMISED" -> Right NotCompromised
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState where
    toQueryParam = \case
        CompromisedStateUnspecified -> "COMPROMISED_STATE_UNSPECIFIED"
        Compromised -> "COMPROMISED"
        NotCompromised -> "NOT_COMPROMISED"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState where
    toJSON = toJSONText

-- | Optional. The view to use for the List request.
data DevicesListView
    = ViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Default value. The value is unused.
    | CompanyInventory
      -- ^ @COMPANY_INVENTORY@
      -- This view contains all devices imported by the company admin. Each
      -- device in the response contains all information specified by the company
      -- admin when importing the device (i.e. asset tags). This includes devices
      -- that may be unaassigned or assigned to users.
    | UserAssignedDevices
      -- ^ @USER_ASSIGNED_DEVICES@
      -- This view contains all devices with at least one user registered on the
      -- device. Each device in the response contains all device information,
      -- except for asset tags.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DevicesListView

instance FromHttpApiData DevicesListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right ViewUnspecified
        "COMPANY_INVENTORY" -> Right CompanyInventory
        "USER_ASSIGNED_DEVICES" -> Right UserAssignedDevices
        x -> Left ("Unable to parse DevicesListView from: " <> x)

instance ToHttpApiData DevicesListView where
    toQueryParam = \case
        ViewUnspecified -> "VIEW_UNSPECIFIED"
        CompanyInventory -> "COMPANY_INVENTORY"
        UserAssignedDevices -> "USER_ASSIGNED_DEVICES"

instance FromJSON DevicesListView where
    parseJSON = parseJSONText "DevicesListView"

instance ToJSON DevicesListView where
    toJSON = toJSONText

-- | State of the \`UserInvitation\`.
data UserInvitationState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The default value. This value is used if the state is omitted.
    | NotYetSent
      -- ^ @NOT_YET_SENT@
      -- The \`UserInvitation\` has been created and is ready for sending as an
      -- email.
    | Invited
      -- ^ @INVITED@
      -- The user has been invited by email.
    | Accepted
      -- ^ @ACCEPTED@
      -- The user has accepted the invitation and is part of the organization.
    | Declined
      -- ^ @DECLINED@
      -- The user declined the invitation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserInvitationState

instance FromHttpApiData UserInvitationState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "NOT_YET_SENT" -> Right NotYetSent
        "INVITED" -> Right Invited
        "ACCEPTED" -> Right Accepted
        "DECLINED" -> Right Declined
        x -> Left ("Unable to parse UserInvitationState from: " <> x)

instance ToHttpApiData UserInvitationState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        NotYetSent -> "NOT_YET_SENT"
        Invited -> "INVITED"
        Accepted -> "ACCEPTED"
        Declined -> "DECLINED"

instance FromJSON UserInvitationState where
    parseJSON = parseJSONText "UserInvitationState"

instance ToJSON UserInvitationState where
    toJSON = toJSONText

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
data GroupsMembershipsListView
    = GMLVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Default. Should not be used.
    | GMLVBasic
      -- ^ @BASIC@
      -- Only basic resource information is returned.
    | GMLVFull
      -- ^ @FULL@
      -- All resource information is returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsMembershipsListView

instance FromHttpApiData GroupsMembershipsListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right GMLVViewUnspecified
        "BASIC" -> Right GMLVBasic
        "FULL" -> Right GMLVFull
        x -> Left ("Unable to parse GroupsMembershipsListView from: " <> x)

instance ToHttpApiData GroupsMembershipsListView where
    toQueryParam = \case
        GMLVViewUnspecified -> "VIEW_UNSPECIFIED"
        GMLVBasic -> "BASIC"
        GMLVFull -> "FULL"

instance FromJSON GroupsMembershipsListView where
    parseJSON = parseJSONText "GroupsMembershipsListView"

instance ToJSON GroupsMembershipsListView where
    toJSON = toJSONText

-- | Resource type for the Dynamic Group Query
data DynamicGroupQueryResourceType
    = ResourceTypeUnspecified
      -- ^ @RESOURCE_TYPE_UNSPECIFIED@
      -- Default value (not valid)
    | User
      -- ^ @USER@
      -- For queries on User
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicGroupQueryResourceType

instance FromHttpApiData DynamicGroupQueryResourceType where
    parseQueryParam = \case
        "RESOURCE_TYPE_UNSPECIFIED" -> Right ResourceTypeUnspecified
        "USER" -> Right User
        x -> Left ("Unable to parse DynamicGroupQueryResourceType from: " <> x)

instance ToHttpApiData DynamicGroupQueryResourceType where
    toQueryParam = \case
        ResourceTypeUnspecified -> "RESOURCE_TYPE_UNSPECIFIED"
        User -> "USER"

instance FromJSON DynamicGroupQueryResourceType where
    parseJSON = parseJSONText "DynamicGroupQueryResourceType"

instance ToJSON DynamicGroupQueryResourceType where
    toJSON = toJSONText

-- | Output only. Management state of the user on the device.
data GoogleAppsCloudidentityDevicesV1DeviceUserManagementState
    = ManagementStateUnspecified
      -- ^ @MANAGEMENT_STATE_UNSPECIFIED@
      -- Default value. This value is unused.
    | Wiping
      -- ^ @WIPING@
      -- This user\'s data and profile is being removed from the device.
    | Wiped
      -- ^ @WIPED@
      -- This user\'s data and profile is removed from the device.
    | Approved
      -- ^ @APPROVED@
      -- User is approved to access data on the device.
    | Blocked
      -- ^ @BLOCKED@
      -- User is blocked from accessing data on the device.
    | PendingApproval
      -- ^ @PENDING_APPROVAL@
      -- User is awaiting approval.
    | Unenrolled
      -- ^ @UNENROLLED@
      -- User is unenrolled from Advanced Windows Management, but the Windows
      -- account is still intact.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceUserManagementState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserManagementState where
    parseQueryParam = \case
        "MANAGEMENT_STATE_UNSPECIFIED" -> Right ManagementStateUnspecified
        "WIPING" -> Right Wiping
        "WIPED" -> Right Wiped
        "APPROVED" -> Right Approved
        "BLOCKED" -> Right Blocked
        "PENDING_APPROVAL" -> Right PendingApproval
        "UNENROLLED" -> Right Unenrolled
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceUserManagementState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserManagementState where
    toQueryParam = \case
        ManagementStateUnspecified -> "MANAGEMENT_STATE_UNSPECIFIED"
        Wiping -> "WIPING"
        Wiped -> "WIPED"
        Approved -> "APPROVED"
        Blocked -> "BLOCKED"
        PendingApproval -> "PENDING_APPROVAL"
        Unenrolled -> "UNENROLLED"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceUserManagementState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceUserManagementState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceUserManagementState where
    toJSON = toJSONText

-- | Output only. Represents whether the Device is compromised.
data GoogleAppsCloudidentityDevicesV1DeviceCompromisedState
    = GACDVDCSCompromisedStateUnspecified
      -- ^ @COMPROMISED_STATE_UNSPECIFIED@
      -- Default value.
    | GACDVDCSCompromised
      -- ^ @COMPROMISED@
      -- The device is compromised (currently, this means Android device is
      -- rooted).
    | GACDVDCSUncompromised
      -- ^ @UNCOMPROMISED@
      -- The device is safe (currently, this means Android device is unrooted).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceCompromisedState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceCompromisedState where
    parseQueryParam = \case
        "COMPROMISED_STATE_UNSPECIFIED" -> Right GACDVDCSCompromisedStateUnspecified
        "COMPROMISED" -> Right GACDVDCSCompromised
        "UNCOMPROMISED" -> Right GACDVDCSUncompromised
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceCompromisedState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceCompromisedState where
    toQueryParam = \case
        GACDVDCSCompromisedStateUnspecified -> "COMPROMISED_STATE_UNSPECIFIED"
        GACDVDCSCompromised -> "COMPROMISED"
        GACDVDCSUncompromised -> "UNCOMPROMISED"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceCompromisedState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceCompromisedState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceCompromisedState where
    toJSON = toJSONText

-- | Ownership privileges on device.
data GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege
    = OwnershipPrivilegeUnspecified
      -- ^ @OWNERSHIP_PRIVILEGE_UNSPECIFIED@
      -- Ownership privilege is not set.
    | DeviceAdministrator
      -- ^ @DEVICE_ADMINISTRATOR@
      -- Active device administrator privileges on the device.
    | ProFileOwner
      -- ^ @PROFILE_OWNER@
      -- Profile Owner privileges. The account is in a managed corporate profile.
    | DeviceOwner
      -- ^ @DEVICE_OWNER@
      -- Device Owner privileges on the device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege where
    parseQueryParam = \case
        "OWNERSHIP_PRIVILEGE_UNSPECIFIED" -> Right OwnershipPrivilegeUnspecified
        "DEVICE_ADMINISTRATOR" -> Right DeviceAdministrator
        "PROFILE_OWNER" -> Right ProFileOwner
        "DEVICE_OWNER" -> Right DeviceOwner
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege where
    toQueryParam = \case
        OwnershipPrivilegeUnspecified -> "OWNERSHIP_PRIVILEGE_UNSPECIFIED"
        DeviceAdministrator -> "DEVICE_ADMINISTRATOR"
        ProFileOwner -> "PROFILE_OWNER"
        DeviceOwner -> "DEVICE_OWNER"

instance FromJSON GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege"

instance ToJSON GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege where
    toJSON = toJSONText

-- | The relation between the group and the transitive member.
data MemberRelationRelationType
    = RelationTypeUnspecified
      -- ^ @RELATION_TYPE_UNSPECIFIED@
      -- The relation type is undefined or undetermined.
    | Direct
      -- ^ @DIRECT@
      -- The two entities have only a direct membership with each other.
    | Indirect
      -- ^ @INDIRECT@
      -- The two entities have only an indirect membership with each other.
    | DirectAndIndirect
      -- ^ @DIRECT_AND_INDIRECT@
      -- The two entities have both a direct and an indirect membership with each
      -- other.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MemberRelationRelationType

instance FromHttpApiData MemberRelationRelationType where
    parseQueryParam = \case
        "RELATION_TYPE_UNSPECIFIED" -> Right RelationTypeUnspecified
        "DIRECT" -> Right Direct
        "INDIRECT" -> Right Indirect
        "DIRECT_AND_INDIRECT" -> Right DirectAndIndirect
        x -> Left ("Unable to parse MemberRelationRelationType from: " <> x)

instance ToHttpApiData MemberRelationRelationType where
    toQueryParam = \case
        RelationTypeUnspecified -> "RELATION_TYPE_UNSPECIFIED"
        Direct -> "DIRECT"
        Indirect -> "INDIRECT"
        DirectAndIndirect -> "DIRECT_AND_INDIRECT"

instance FromJSON MemberRelationRelationType where
    parseJSON = parseJSONText "MemberRelationRelationType"

instance ToJSON MemberRelationRelationType where
    toJSON = toJSONText

-- | Output only. Device encryption state.
data GoogleAppsCloudidentityDevicesV1DeviceEncryptionState
    = EncryptionStateUnspecified
      -- ^ @ENCRYPTION_STATE_UNSPECIFIED@
      -- Encryption Status is not set.
    | UnsupportedByDevice
      -- ^ @UNSUPPORTED_BY_DEVICE@
      -- Device doesn\'t support encryption.
    | Encrypted
      -- ^ @ENCRYPTED@
      -- Device is encrypted.
    | NotEncrypted
      -- ^ @NOT_ENCRYPTED@
      -- Device is not encrypted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceEncryptionState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceEncryptionState where
    parseQueryParam = \case
        "ENCRYPTION_STATE_UNSPECIFIED" -> Right EncryptionStateUnspecified
        "UNSUPPORTED_BY_DEVICE" -> Right UnsupportedByDevice
        "ENCRYPTED" -> Right Encrypted
        "NOT_ENCRYPTED" -> Right NotEncrypted
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceEncryptionState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceEncryptionState where
    toQueryParam = \case
        EncryptionStateUnspecified -> "ENCRYPTION_STATE_UNSPECIFIED"
        UnsupportedByDevice -> "UNSUPPORTED_BY_DEVICE"
        Encrypted -> "ENCRYPTED"
        NotEncrypted -> "NOT_ENCRYPTED"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceEncryptionState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceEncryptionState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceEncryptionState where
    toJSON = toJSONText

-- | The management state of the resource as specified by the API client.
data GoogleAppsCloudidentityDevicesV1ClientStateManaged
    = ManagedStateUnspecified
      -- ^ @MANAGED_STATE_UNSPECIFIED@
      -- The management state of the resource is unknown or unspecified.
    | Managed
      -- ^ @MANAGED@
      -- The resource is managed.
    | Unmanaged
      -- ^ @UNMANAGED@
      -- The resource is not managed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1ClientStateManaged

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateManaged where
    parseQueryParam = \case
        "MANAGED_STATE_UNSPECIFIED" -> Right ManagedStateUnspecified
        "MANAGED" -> Right Managed
        "UNMANAGED" -> Right Unmanaged
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1ClientStateManaged from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateManaged where
    toQueryParam = \case
        ManagedStateUnspecified -> "MANAGED_STATE_UNSPECIFIED"
        Managed -> "MANAGED"
        Unmanaged -> "UNMANAGED"

instance FromJSON GoogleAppsCloudidentityDevicesV1ClientStateManaged where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1ClientStateManaged"

instance ToJSON GoogleAppsCloudidentityDevicesV1ClientStateManaged where
    toJSON = toJSONText

-- | The compliance state of the resource as specified by the API client.
data GoogleAppsCloudidentityDevicesV1ClientStateComplianceState
    = ComplianceStateUnspecified
      -- ^ @COMPLIANCE_STATE_UNSPECIFIED@
      -- The compliance state of the resource is unknown or unspecified.
    | Compliant
      -- ^ @COMPLIANT@
      -- Device is compliant with third party policies
    | NonCompliant
      -- ^ @NON_COMPLIANT@
      -- Device is not compliant with third party policies
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1ClientStateComplianceState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateComplianceState where
    parseQueryParam = \case
        "COMPLIANCE_STATE_UNSPECIFIED" -> Right ComplianceStateUnspecified
        "COMPLIANT" -> Right Compliant
        "NON_COMPLIANT" -> Right NonCompliant
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1ClientStateComplianceState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateComplianceState where
    toQueryParam = \case
        ComplianceStateUnspecified -> "COMPLIANCE_STATE_UNSPECIFIED"
        Compliant -> "COMPLIANT"
        NonCompliant -> "NON_COMPLIANT"

instance FromJSON GoogleAppsCloudidentityDevicesV1ClientStateComplianceState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1ClientStateComplianceState"

instance ToJSON GoogleAppsCloudidentityDevicesV1ClientStateComplianceState where
    toJSON = toJSONText

-- | Output only. Management state of the device
data GoogleAppsCloudidentityDevicesV1DeviceManagementState
    = GACDVDMSManagementStateUnspecified
      -- ^ @MANAGEMENT_STATE_UNSPECIFIED@
      -- Default value. This value is unused.
    | GACDVDMSApproved
      -- ^ @APPROVED@
      -- Device is approved.
    | GACDVDMSBlocked
      -- ^ @BLOCKED@
      -- Device is blocked.
    | GACDVDMSPending
      -- ^ @PENDING@
      -- Device is pending approval.
    | GACDVDMSUnprovisioned
      -- ^ @UNPROVISIONED@
      -- The device is not provisioned. Device will start from this state until
      -- some action is taken (i.e. a user starts using the device).
    | GACDVDMSWiping
      -- ^ @WIPING@
      -- Data and settings on the device are being removed.
    | GACDVDMSWiped
      -- ^ @WIPED@
      -- All data and settings on the device are removed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceManagementState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceManagementState where
    parseQueryParam = \case
        "MANAGEMENT_STATE_UNSPECIFIED" -> Right GACDVDMSManagementStateUnspecified
        "APPROVED" -> Right GACDVDMSApproved
        "BLOCKED" -> Right GACDVDMSBlocked
        "PENDING" -> Right GACDVDMSPending
        "UNPROVISIONED" -> Right GACDVDMSUnprovisioned
        "WIPING" -> Right GACDVDMSWiping
        "WIPED" -> Right GACDVDMSWiped
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceManagementState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceManagementState where
    toQueryParam = \case
        GACDVDMSManagementStateUnspecified -> "MANAGEMENT_STATE_UNSPECIFIED"
        GACDVDMSApproved -> "APPROVED"
        GACDVDMSBlocked -> "BLOCKED"
        GACDVDMSPending -> "PENDING"
        GACDVDMSUnprovisioned -> "UNPROVISIONED"
        GACDVDMSWiping -> "WIPING"
        GACDVDMSWiped -> "WIPED"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceManagementState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceManagementState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceManagementState where
    toJSON = toJSONText

-- | Output only. The owner of the ClientState
data GoogleAppsCloudidentityDevicesV1ClientStateOwnerType
    = OwnerTypeUnspecified
      -- ^ @OWNER_TYPE_UNSPECIFIED@
      -- Unknown owner type
    | OwnerTypeCustomer
      -- ^ @OWNER_TYPE_CUSTOMER@
      -- Customer is the owner
    | OwnerTypePartner
      -- ^ @OWNER_TYPE_PARTNER@
      -- Partner is the owner
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1ClientStateOwnerType

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateOwnerType where
    parseQueryParam = \case
        "OWNER_TYPE_UNSPECIFIED" -> Right OwnerTypeUnspecified
        "OWNER_TYPE_CUSTOMER" -> Right OwnerTypeCustomer
        "OWNER_TYPE_PARTNER" -> Right OwnerTypePartner
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1ClientStateOwnerType from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateOwnerType where
    toQueryParam = \case
        OwnerTypeUnspecified -> "OWNER_TYPE_UNSPECIFIED"
        OwnerTypeCustomer -> "OWNER_TYPE_CUSTOMER"
        OwnerTypePartner -> "OWNER_TYPE_PARTNER"

instance FromJSON GoogleAppsCloudidentityDevicesV1ClientStateOwnerType where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1ClientStateOwnerType"

instance ToJSON GoogleAppsCloudidentityDevicesV1ClientStateOwnerType where
    toJSON = toJSONText

-- | The relation between the member and the transitive group.
data GroupRelationRelationType
    = GRRTRelationTypeUnspecified
      -- ^ @RELATION_TYPE_UNSPECIFIED@
      -- The relation type is undefined or undetermined.
    | GRRTDirect
      -- ^ @DIRECT@
      -- The two entities have only a direct membership with each other.
    | GRRTIndirect
      -- ^ @INDIRECT@
      -- The two entities have only an indirect membership with each other.
    | GRRTDirectAndIndirect
      -- ^ @DIRECT_AND_INDIRECT@
      -- The two entities have both a direct and an indirect membership with each
      -- other.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupRelationRelationType

instance FromHttpApiData GroupRelationRelationType where
    parseQueryParam = \case
        "RELATION_TYPE_UNSPECIFIED" -> Right GRRTRelationTypeUnspecified
        "DIRECT" -> Right GRRTDirect
        "INDIRECT" -> Right GRRTIndirect
        "DIRECT_AND_INDIRECT" -> Right GRRTDirectAndIndirect
        x -> Left ("Unable to parse GroupRelationRelationType from: " <> x)

instance ToHttpApiData GroupRelationRelationType where
    toQueryParam = \case
        GRRTRelationTypeUnspecified -> "RELATION_TYPE_UNSPECIFIED"
        GRRTDirect -> "DIRECT"
        GRRTIndirect -> "INDIRECT"
        GRRTDirectAndIndirect -> "DIRECT_AND_INDIRECT"

instance FromJSON GroupRelationRelationType where
    parseJSON = parseJSONText "GroupRelationRelationType"

instance ToJSON GroupRelationRelationType where
    toJSON = toJSONText

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
data GroupsSearchView
    = GSVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Default. Should not be used.
    | GSVBasic
      -- ^ @BASIC@
      -- Only basic resource information is returned.
    | GSVFull
      -- ^ @FULL@
      -- All resource information is returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsSearchView

instance FromHttpApiData GroupsSearchView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right GSVViewUnspecified
        "BASIC" -> Right GSVBasic
        "FULL" -> Right GSVFull
        x -> Left ("Unable to parse GroupsSearchView from: " <> x)

instance ToHttpApiData GroupsSearchView where
    toQueryParam = \case
        GSVViewUnspecified -> "VIEW_UNSPECIFIED"
        GSVBasic -> "BASIC"
        GSVFull -> "FULL"

instance FromJSON GroupsSearchView where
    parseJSON = parseJSONText "GroupsSearchView"

instance ToJSON GroupsSearchView where
    toJSON = toJSONText

-- | Status of the dynamic group.
data DynamicGroupStatusStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Default.
    | UpToDate
      -- ^ @UP_TO_DATE@
      -- The dynamic group is up-to-date.
    | UpdatingMemberships
      -- ^ @UPDATING_MEMBERSHIPS@
      -- The dynamic group has just been created and memberships are being
      -- updated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicGroupStatusStatus

instance FromHttpApiData DynamicGroupStatusStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "UP_TO_DATE" -> Right UpToDate
        "UPDATING_MEMBERSHIPS" -> Right UpdatingMemberships
        x -> Left ("Unable to parse DynamicGroupStatusStatus from: " <> x)

instance ToHttpApiData DynamicGroupStatusStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        UpToDate -> "UP_TO_DATE"
        UpdatingMemberships -> "UPDATING_MEMBERSHIPS"

instance FromJSON DynamicGroupStatusStatus where
    parseJSON = parseJSONText "DynamicGroupStatusStatus"

instance ToJSON DynamicGroupStatusStatus where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The Health score of the resource. The Health score is the callers
-- specification of the condition of the device from a usability point of
-- view. For example, a third-party device management provider may specify
-- a health score based on its compliance with organizational policies.
data GoogleAppsCloudidentityDevicesV1ClientStateHealthScore
    = HealthScoreUnspecified
      -- ^ @HEALTH_SCORE_UNSPECIFIED@
      -- Default value
    | VeryPoor
      -- ^ @VERY_POOR@
      -- The object is in very poor health as defined by the caller.
    | Poor
      -- ^ @POOR@
      -- The object is in poor health as defined by the caller.
    | Neutral
      -- ^ @NEUTRAL@
      -- The object health is neither good nor poor, as defined by the caller.
    | Good
      -- ^ @GOOD@
      -- The object is in good health as defined by the caller.
    | VeryGood
      -- ^ @VERY_GOOD@
      -- The object is in very good health as defined by the caller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1ClientStateHealthScore

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateHealthScore where
    parseQueryParam = \case
        "HEALTH_SCORE_UNSPECIFIED" -> Right HealthScoreUnspecified
        "VERY_POOR" -> Right VeryPoor
        "POOR" -> Right Poor
        "NEUTRAL" -> Right Neutral
        "GOOD" -> Right Good
        "VERY_GOOD" -> Right VeryGood
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1ClientStateHealthScore from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1ClientStateHealthScore where
    toQueryParam = \case
        HealthScoreUnspecified -> "HEALTH_SCORE_UNSPECIFIED"
        VeryPoor -> "VERY_POOR"
        Poor -> "POOR"
        Neutral -> "NEUTRAL"
        Good -> "GOOD"
        VeryGood -> "VERY_GOOD"

instance FromJSON GoogleAppsCloudidentityDevicesV1ClientStateHealthScore where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1ClientStateHealthScore"

instance ToJSON GoogleAppsCloudidentityDevicesV1ClientStateHealthScore where
    toJSON = toJSONText

-- | Output only. The type of the membership.
data MembershipType
    = MTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default. Should not be used.
    | MTUser
      -- ^ @USER@
      -- Represents user type.
    | MTServiceAccount
      -- ^ @SERVICE_ACCOUNT@
      -- Represents service account type.
    | MTGroup
      -- ^ @GROUP@
      -- Represents group type.
    | MTSharedDrive
      -- ^ @SHARED_DRIVE@
      -- Represents Shared drive.
    | MTOther
      -- ^ @OTHER@
      -- Represents other type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MembershipType

instance FromHttpApiData MembershipType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right MTTypeUnspecified
        "USER" -> Right MTUser
        "SERVICE_ACCOUNT" -> Right MTServiceAccount
        "GROUP" -> Right MTGroup
        "SHARED_DRIVE" -> Right MTSharedDrive
        "OTHER" -> Right MTOther
        x -> Left ("Unable to parse MembershipType from: " <> x)

instance ToHttpApiData MembershipType where
    toQueryParam = \case
        MTTypeUnspecified -> "TYPE_UNSPECIFIED"
        MTUser -> "USER"
        MTServiceAccount -> "SERVICE_ACCOUNT"
        MTGroup -> "GROUP"
        MTSharedDrive -> "SHARED_DRIVE"
        MTOther -> "OTHER"

instance FromJSON MembershipType where
    parseJSON = parseJSONText "MembershipType"

instance ToJSON MembershipType where
    toJSON = toJSONText

-- | Output only. Type of device.
data GoogleAppsCloudidentityDevicesV1DeviceDeviceType
    = DeviceTypeUnspecified
      -- ^ @DEVICE_TYPE_UNSPECIFIED@
      -- Unknown device type
    | Android
      -- ^ @ANDROID@
      -- Device is an Android device
    | Ios
      -- ^ @IOS@
      -- Device is an iOS device
    | GoogleSync
      -- ^ @GOOGLE_SYNC@
      -- Device is a Google Sync device.
    | Windows
      -- ^ @WINDOWS@
      -- Device is a Windows device.
    | MACOS
      -- ^ @MAC_OS@
      -- Device is a MacOS device.
    | Linux
      -- ^ @LINUX@
      -- Device is a Linux device.
    | ChromeOS
      -- ^ @CHROME_OS@
      -- Device is a ChromeOS device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceDeviceType

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceDeviceType where
    parseQueryParam = \case
        "DEVICE_TYPE_UNSPECIFIED" -> Right DeviceTypeUnspecified
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        "GOOGLE_SYNC" -> Right GoogleSync
        "WINDOWS" -> Right Windows
        "MAC_OS" -> Right MACOS
        "LINUX" -> Right Linux
        "CHROME_OS" -> Right ChromeOS
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceDeviceType from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceDeviceType where
    toQueryParam = \case
        DeviceTypeUnspecified -> "DEVICE_TYPE_UNSPECIFIED"
        Android -> "ANDROID"
        Ios -> "IOS"
        GoogleSync -> "GOOGLE_SYNC"
        Windows -> "WINDOWS"
        MACOS -> "MAC_OS"
        Linux -> "LINUX"
        ChromeOS -> "CHROME_OS"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceDeviceType where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceDeviceType"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceDeviceType where
    toJSON = toJSONText

-- | Optional. The initial configuration option for the \`Group\`.
data GroupsCreateInitialGroupConfig
    = InitialGroupConfigUnspecified
      -- ^ @INITIAL_GROUP_CONFIG_UNSPECIFIED@
      -- Default. Should not be used.
    | WithInitialOwner
      -- ^ @WITH_INITIAL_OWNER@
      -- The end user making the request will be added as the initial owner of
      -- the \`Group\`.
    | Empty
      -- ^ @EMPTY@
      -- An empty group is created without any initial owners. This can only be
      -- used by admins of the domain.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsCreateInitialGroupConfig

instance FromHttpApiData GroupsCreateInitialGroupConfig where
    parseQueryParam = \case
        "INITIAL_GROUP_CONFIG_UNSPECIFIED" -> Right InitialGroupConfigUnspecified
        "WITH_INITIAL_OWNER" -> Right WithInitialOwner
        "EMPTY" -> Right Empty
        x -> Left ("Unable to parse GroupsCreateInitialGroupConfig from: " <> x)

instance ToHttpApiData GroupsCreateInitialGroupConfig where
    toQueryParam = \case
        InitialGroupConfigUnspecified -> "INITIAL_GROUP_CONFIG_UNSPECIFIED"
        WithInitialOwner -> "WITH_INITIAL_OWNER"
        Empty -> "EMPTY"

instance FromJSON GroupsCreateInitialGroupConfig where
    parseJSON = parseJSONText "GroupsCreateInitialGroupConfig"

instance ToJSON GroupsCreateInitialGroupConfig where
    toJSON = toJSONText

-- | The level of detail to be returned. If unspecified, defaults to
-- \`View.BASIC\`.
data GroupsListView
    = GLVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Default. Should not be used.
    | GLVBasic
      -- ^ @BASIC@
      -- Only basic resource information is returned.
    | GLVFull
      -- ^ @FULL@
      -- All resource information is returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsListView

instance FromHttpApiData GroupsListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right GLVViewUnspecified
        "BASIC" -> Right GLVBasic
        "FULL" -> Right GLVFull
        x -> Left ("Unable to parse GroupsListView from: " <> x)

instance ToHttpApiData GroupsListView where
    toQueryParam = \case
        GLVViewUnspecified -> "VIEW_UNSPECIFIED"
        GLVBasic -> "BASIC"
        GLVFull -> "FULL"

instance FromJSON GroupsListView where
    parseJSON = parseJSONText "GroupsListView"

instance ToJSON GroupsListView where
    toJSON = toJSONText

-- | Password state of the DeviceUser object
data GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState
    = PasswordStateUnspecified
      -- ^ @PASSWORD_STATE_UNSPECIFIED@
      -- Password state not set.
    | PasswordSet
      -- ^ @PASSWORD_SET@
      -- Password set in object.
    | PasswordNotSet
      -- ^ @PASSWORD_NOT_SET@
      -- Password not set in object.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState where
    parseQueryParam = \case
        "PASSWORD_STATE_UNSPECIFIED" -> Right PasswordStateUnspecified
        "PASSWORD_SET" -> Right PasswordSet
        "PASSWORD_NOT_SET" -> Right PasswordNotSet
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState where
    toQueryParam = \case
        PasswordStateUnspecified -> "PASSWORD_STATE_UNSPECIFIED"
        PasswordSet -> "PASSWORD_SET"
        PasswordNotSet -> "PASSWORD_NOT_SET"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState where
    toJSON = toJSONText

-- | Output only. Whether the device is owned by the company or an individual
data GoogleAppsCloudidentityDevicesV1DeviceOwnerType
    = DeviceOwnershipUnspecified
      -- ^ @DEVICE_OWNERSHIP_UNSPECIFIED@
      -- Default value. The value is unused.
    | Company
      -- ^ @COMPANY@
      -- Company owns the device.
    | Byod
      -- ^ @BYOD@
      -- Bring Your Own Device (i.e. individual owns the device)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCloudidentityDevicesV1DeviceOwnerType

instance FromHttpApiData GoogleAppsCloudidentityDevicesV1DeviceOwnerType where
    parseQueryParam = \case
        "DEVICE_OWNERSHIP_UNSPECIFIED" -> Right DeviceOwnershipUnspecified
        "COMPANY" -> Right Company
        "BYOD" -> Right Byod
        x -> Left ("Unable to parse GoogleAppsCloudidentityDevicesV1DeviceOwnerType from: " <> x)

instance ToHttpApiData GoogleAppsCloudidentityDevicesV1DeviceOwnerType where
    toQueryParam = \case
        DeviceOwnershipUnspecified -> "DEVICE_OWNERSHIP_UNSPECIFIED"
        Company -> "COMPANY"
        Byod -> "BYOD"

instance FromJSON GoogleAppsCloudidentityDevicesV1DeviceOwnerType where
    parseJSON = parseJSONText "GoogleAppsCloudidentityDevicesV1DeviceOwnerType"

instance ToJSON GoogleAppsCloudidentityDevicesV1DeviceOwnerType where
    toJSON = toJSONText
