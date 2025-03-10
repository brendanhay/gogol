{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIdentity.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudIdentity.Types
  ( -- * Configuration
    cloudIdentityService,

    -- * OAuth Scopes
    CloudIdentity'Devices,
    CloudIdentity'Devices'Lookup,
    CloudIdentity'Devices'Readonly,
    CloudIdentity'Groups,
    CloudIdentity'Groups'Readonly,
    CloudIdentity'Inboundsso,
    CloudIdentity'Inboundsso'Readonly,
    CloudIdentity'Policies,
    CloudIdentity'Policies'Readonly,
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddIdpCredentialOperationMetadata
    AddIdpCredentialOperationMetadata (..),
    newAddIdpCredentialOperationMetadata,

    -- ** AddIdpCredentialRequest
    AddIdpCredentialRequest (..),
    newAddIdpCredentialRequest,

    -- ** CancelUserInvitationRequest
    CancelUserInvitationRequest (..),
    newCancelUserInvitationRequest,

    -- ** CheckTransitiveMembershipResponse
    CheckTransitiveMembershipResponse (..),
    newCheckTransitiveMembershipResponse,

    -- ** CreateGroupMetadata
    CreateGroupMetadata (..),
    newCreateGroupMetadata,

    -- ** CreateInboundSamlSsoProfileOperationMetadata
    CreateInboundSamlSsoProfileOperationMetadata (..),
    newCreateInboundSamlSsoProfileOperationMetadata,

    -- ** CreateInboundSsoAssignmentOperationMetadata
    CreateInboundSsoAssignmentOperationMetadata (..),
    newCreateInboundSsoAssignmentOperationMetadata,

    -- ** CreateMembershipMetadata
    CreateMembershipMetadata (..),
    newCreateMembershipMetadata,

    -- ** DeleteGroupMetadata
    DeleteGroupMetadata (..),
    newDeleteGroupMetadata,

    -- ** DeleteIdpCredentialOperationMetadata
    DeleteIdpCredentialOperationMetadata (..),
    newDeleteIdpCredentialOperationMetadata,

    -- ** DeleteInboundSamlSsoProfileOperationMetadata
    DeleteInboundSamlSsoProfileOperationMetadata (..),
    newDeleteInboundSamlSsoProfileOperationMetadata,

    -- ** DeleteInboundSsoAssignmentOperationMetadata
    DeleteInboundSsoAssignmentOperationMetadata (..),
    newDeleteInboundSsoAssignmentOperationMetadata,

    -- ** DeleteMembershipMetadata
    DeleteMembershipMetadata (..),
    newDeleteMembershipMetadata,

    -- ** DsaPublicKeyInfo
    DsaPublicKeyInfo (..),
    newDsaPublicKeyInfo,

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

    -- ** GoogleAppsCloudidentityDevicesV1BrowserAttributes
    GoogleAppsCloudidentityDevicesV1BrowserAttributes (..),
    newGoogleAppsCloudidentityDevicesV1BrowserAttributes,

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo
    GoogleAppsCloudidentityDevicesV1BrowserInfo (..),
    newGoogleAppsCloudidentityDevicesV1BrowserInfo,

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_BrowserManagementState
    GoogleAppsCloudidentityDevicesV1BrowserInfo_BrowserManagementState (..),

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_PasswordProtectionWarningTrigger
    GoogleAppsCloudidentityDevicesV1BrowserInfo_PasswordProtectionWarningTrigger (..),

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_SafeBrowsingProtectionLevel
    GoogleAppsCloudidentityDevicesV1BrowserInfo_SafeBrowsingProtectionLevel (..),

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

    -- ** GoogleAppsCloudidentityDevicesV1CertificateAttributes
    GoogleAppsCloudidentityDevicesV1CertificateAttributes (..),
    newGoogleAppsCloudidentityDevicesV1CertificateAttributes,

    -- ** GoogleAppsCloudidentityDevicesV1CertificateAttributes_ValidationState
    GoogleAppsCloudidentityDevicesV1CertificateAttributes_ValidationState (..),

    -- ** GoogleAppsCloudidentityDevicesV1CertificateTemplate
    GoogleAppsCloudidentityDevicesV1CertificateTemplate (..),
    newGoogleAppsCloudidentityDevicesV1CertificateTemplate,

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

    -- ** GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes (..),
    newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes,

    -- ** GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
    GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals (..),
    newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals,

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

    -- ** IdpCredential
    IdpCredential (..),
    newIdpCredential,

    -- ** InboundSamlSsoProfile
    InboundSamlSsoProfile (..),
    newInboundSamlSsoProfile,

    -- ** InboundSsoAssignment
    InboundSsoAssignment (..),
    newInboundSsoAssignment,

    -- ** InboundSsoAssignment_SsoMode
    InboundSsoAssignment_SsoMode (..),

    -- ** IsInvitableUserResponse
    IsInvitableUserResponse (..),
    newIsInvitableUserResponse,

    -- ** ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- ** ListIdpCredentialsResponse
    ListIdpCredentialsResponse (..),
    newListIdpCredentialsResponse,

    -- ** ListInboundSamlSsoProfilesResponse
    ListInboundSamlSsoProfilesResponse (..),
    newListInboundSamlSsoProfilesResponse,

    -- ** ListInboundSsoAssignmentsResponse
    ListInboundSsoAssignmentsResponse (..),
    newListInboundSsoAssignmentsResponse,

    -- ** ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- ** ListPoliciesResponse
    ListPoliciesResponse (..),
    newListPoliciesResponse,

    -- ** ListUserInvitationsResponse
    ListUserInvitationsResponse (..),
    newListUserInvitationsResponse,

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

    -- ** Membership_DeliverySetting
    Membership_DeliverySetting (..),

    -- ** Membership_Type
    Membership_Type (..),

    -- ** MembershipAdjacencyList
    MembershipAdjacencyList (..),
    newMembershipAdjacencyList,

    -- ** MembershipRelation
    MembershipRelation (..),
    newMembershipRelation,

    -- ** MembershipRelation_Labels
    MembershipRelation_Labels (..),
    newMembershipRelation_Labels,

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

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_Type
    Policy_Type (..),

    -- ** PolicyQuery
    PolicyQuery (..),
    newPolicyQuery,

    -- ** RestrictionEvaluation
    RestrictionEvaluation (..),
    newRestrictionEvaluation,

    -- ** RestrictionEvaluation_State
    RestrictionEvaluation_State (..),

    -- ** RestrictionEvaluations
    RestrictionEvaluations (..),
    newRestrictionEvaluations,

    -- ** RsaPublicKeyInfo
    RsaPublicKeyInfo (..),
    newRsaPublicKeyInfo,

    -- ** SamlIdpConfig
    SamlIdpConfig (..),
    newSamlIdpConfig,

    -- ** SamlSpConfig
    SamlSpConfig (..),
    newSamlSpConfig,

    -- ** SamlSsoInfo
    SamlSsoInfo (..),
    newSamlSsoInfo,

    -- ** SearchDirectGroupsResponse
    SearchDirectGroupsResponse (..),
    newSearchDirectGroupsResponse,

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

    -- ** SendUserInvitationRequest
    SendUserInvitationRequest (..),
    newSendUserInvitationRequest,

    -- ** Setting
    Setting (..),
    newSetting,

    -- ** Setting_Value
    Setting_Value (..),
    newSetting_Value,

    -- ** SignInBehavior
    SignInBehavior (..),
    newSignInBehavior,

    -- ** SignInBehavior_RedirectCondition
    SignInBehavior_RedirectCondition (..),

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

    -- ** UpdateInboundSamlSsoProfileOperationMetadata
    UpdateInboundSamlSsoProfileOperationMetadata (..),
    newUpdateInboundSamlSsoProfileOperationMetadata,

    -- ** UpdateInboundSsoAssignmentOperationMetadata
    UpdateInboundSsoAssignmentOperationMetadata (..),
    newUpdateInboundSsoAssignmentOperationMetadata,

    -- ** UpdateMembershipMetadata
    UpdateMembershipMetadata (..),
    newUpdateMembershipMetadata,

    -- ** UpdateMembershipRolesParams
    UpdateMembershipRolesParams (..),
    newUpdateMembershipRolesParams,

    -- ** UserInvitation
    UserInvitation (..),
    newUserInvitation,

    -- ** UserInvitation_State
    UserInvitation_State (..),

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

import Gogol.CloudIdentity.Internal.Product
import Gogol.CloudIdentity.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Cloud Identity API. This contains the host and root path used as a starting point for constructing service requests.
cloudIdentityService :: Core.ServiceConfig
cloudIdentityService =
  Core.defaultService
    (Core.ServiceId "cloudidentity:v1")
    "cloudidentity.googleapis.com"

-- | Private Service: https:\/\/www.googleapis.com\/auth\/cloud-identity.devices
type CloudIdentity'Devices =
  "https://www.googleapis.com/auth/cloud-identity.devices"

-- | See your device details
type CloudIdentity'Devices'Lookup =
  "https://www.googleapis.com/auth/cloud-identity.devices.lookup"

-- | Private Service: https:\/\/www.googleapis.com\/auth\/cloud-identity.devices.readonly
type CloudIdentity'Devices'Readonly =
  "https://www.googleapis.com/auth/cloud-identity.devices.readonly"

-- | See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group
type CloudIdentity'Groups =
  "https://www.googleapis.com/auth/cloud-identity.groups"

-- | See any Cloud Identity Groups that you can access, including group members and their emails
type CloudIdentity'Groups'Readonly =
  "https://www.googleapis.com/auth/cloud-identity.groups.readonly"

-- | See and edit all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
type CloudIdentity'Inboundsso =
  "https://www.googleapis.com/auth/cloud-identity.inboundsso"

-- | See all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
type CloudIdentity'Inboundsso'Readonly =
  "https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly"

-- | See and edit policies in your Cloud Identity Organization.
type CloudIdentity'Policies =
  "https://www.googleapis.com/auth/cloud-identity.policies"

-- | See policies in your Cloud Identity Organization.
type CloudIdentity'Policies'Readonly =
  "https://www.googleapis.com/auth/cloud-identity.policies.readonly"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
