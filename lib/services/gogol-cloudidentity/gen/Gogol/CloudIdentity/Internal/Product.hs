{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
--
module Gogol.CloudIdentity.Internal.Product
  (

    -- * AddIdpCredentialOperationMetadata
    AddIdpCredentialOperationMetadata (..),
    newAddIdpCredentialOperationMetadata,

    -- * AddIdpCredentialRequest
    AddIdpCredentialRequest (..),
    newAddIdpCredentialRequest,

    -- * CancelUserInvitationRequest
    CancelUserInvitationRequest (..),
    newCancelUserInvitationRequest,

    -- * CheckTransitiveMembershipResponse
    CheckTransitiveMembershipResponse (..),
    newCheckTransitiveMembershipResponse,

    -- * CreateGroupMetadata
    CreateGroupMetadata (..),
    newCreateGroupMetadata,

    -- * CreateInboundSamlSsoProfileOperationMetadata
    CreateInboundSamlSsoProfileOperationMetadata (..),
    newCreateInboundSamlSsoProfileOperationMetadata,

    -- * CreateInboundSsoAssignmentOperationMetadata
    CreateInboundSsoAssignmentOperationMetadata (..),
    newCreateInboundSsoAssignmentOperationMetadata,

    -- * CreateMembershipMetadata
    CreateMembershipMetadata (..),
    newCreateMembershipMetadata,

    -- * DeleteGroupMetadata
    DeleteGroupMetadata (..),
    newDeleteGroupMetadata,

    -- * DeleteIdpCredentialOperationMetadata
    DeleteIdpCredentialOperationMetadata (..),
    newDeleteIdpCredentialOperationMetadata,

    -- * DeleteInboundSamlSsoProfileOperationMetadata
    DeleteInboundSamlSsoProfileOperationMetadata (..),
    newDeleteInboundSamlSsoProfileOperationMetadata,

    -- * DeleteInboundSsoAssignmentOperationMetadata
    DeleteInboundSsoAssignmentOperationMetadata (..),
    newDeleteInboundSsoAssignmentOperationMetadata,

    -- * DeleteMembershipMetadata
    DeleteMembershipMetadata (..),
    newDeleteMembershipMetadata,

    -- * DsaPublicKeyInfo
    DsaPublicKeyInfo (..),
    newDsaPublicKeyInfo,

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

    -- * GoogleAppsCloudidentityDevicesV1BrowserAttributes
    GoogleAppsCloudidentityDevicesV1BrowserAttributes (..),
    newGoogleAppsCloudidentityDevicesV1BrowserAttributes,

    -- * GoogleAppsCloudidentityDevicesV1BrowserInfo
    GoogleAppsCloudidentityDevicesV1BrowserInfo (..),
    newGoogleAppsCloudidentityDevicesV1BrowserInfo,

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

    -- * GoogleAppsCloudidentityDevicesV1CertificateAttributes
    GoogleAppsCloudidentityDevicesV1CertificateAttributes (..),
    newGoogleAppsCloudidentityDevicesV1CertificateAttributes,

    -- * GoogleAppsCloudidentityDevicesV1CertificateTemplate
    GoogleAppsCloudidentityDevicesV1CertificateTemplate (..),
    newGoogleAppsCloudidentityDevicesV1CertificateTemplate,

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

    -- * GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes (..),
    newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes,

    -- * GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
    GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals (..),
    newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals,

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

    -- * IdpCredential
    IdpCredential (..),
    newIdpCredential,

    -- * InboundSamlSsoProfile
    InboundSamlSsoProfile (..),
    newInboundSamlSsoProfile,

    -- * InboundSsoAssignment
    InboundSsoAssignment (..),
    newInboundSsoAssignment,

    -- * IsInvitableUserResponse
    IsInvitableUserResponse (..),
    newIsInvitableUserResponse,

    -- * ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * ListIdpCredentialsResponse
    ListIdpCredentialsResponse (..),
    newListIdpCredentialsResponse,

    -- * ListInboundSamlSsoProfilesResponse
    ListInboundSamlSsoProfilesResponse (..),
    newListInboundSamlSsoProfilesResponse,

    -- * ListInboundSsoAssignmentsResponse
    ListInboundSsoAssignmentsResponse (..),
    newListInboundSsoAssignmentsResponse,

    -- * ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- * ListPoliciesResponse
    ListPoliciesResponse (..),
    newListPoliciesResponse,

    -- * ListUserInvitationsResponse
    ListUserInvitationsResponse (..),
    newListUserInvitationsResponse,

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

    -- * MembershipRelation
    MembershipRelation (..),
    newMembershipRelation,

    -- * MembershipRelation_Labels
    MembershipRelation_Labels (..),
    newMembershipRelation_Labels,

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

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyQuery
    PolicyQuery (..),
    newPolicyQuery,

    -- * RestrictionEvaluation
    RestrictionEvaluation (..),
    newRestrictionEvaluation,

    -- * RestrictionEvaluations
    RestrictionEvaluations (..),
    newRestrictionEvaluations,

    -- * RsaPublicKeyInfo
    RsaPublicKeyInfo (..),
    newRsaPublicKeyInfo,

    -- * SamlIdpConfig
    SamlIdpConfig (..),
    newSamlIdpConfig,

    -- * SamlSpConfig
    SamlSpConfig (..),
    newSamlSpConfig,

    -- * SamlSsoInfo
    SamlSsoInfo (..),
    newSamlSsoInfo,

    -- * SearchDirectGroupsResponse
    SearchDirectGroupsResponse (..),
    newSearchDirectGroupsResponse,

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

    -- * SendUserInvitationRequest
    SendUserInvitationRequest (..),
    newSendUserInvitationRequest,

    -- * Setting
    Setting (..),
    newSetting,

    -- * Setting_Value
    Setting_Value (..),
    newSetting_Value,

    -- * SignInBehavior
    SignInBehavior (..),
    newSignInBehavior,

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

    -- * UpdateInboundSamlSsoProfileOperationMetadata
    UpdateInboundSamlSsoProfileOperationMetadata (..),
    newUpdateInboundSamlSsoProfileOperationMetadata,

    -- * UpdateInboundSsoAssignmentOperationMetadata
    UpdateInboundSsoAssignmentOperationMetadata (..),
    newUpdateInboundSsoAssignmentOperationMetadata,

    -- * UpdateMembershipMetadata
    UpdateMembershipMetadata (..),
    newUpdateMembershipMetadata,

    -- * UpdateMembershipRolesParams
    UpdateMembershipRolesParams (..),
    newUpdateMembershipRolesParams,

    -- * UserInvitation
    UserInvitation (..),
    newUserInvitation,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Internal.Sum

-- | LRO response metadata for InboundSamlSsoProfilesService.AddIdpCredential.
--
-- /See:/ 'newAddIdpCredentialOperationMetadata' smart constructor.
newtype AddIdpCredentialOperationMetadata = AddIdpCredentialOperationMetadata
    {
      -- | State of this Operation Will be \"awaiting-multi-party-approval\" when the operation is deferred due to the target customer having enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>.
      state :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddIdpCredentialOperationMetadata' with the minimum fields required to make a request.
newAddIdpCredentialOperationMetadata 
    ::  AddIdpCredentialOperationMetadata
newAddIdpCredentialOperationMetadata =
  AddIdpCredentialOperationMetadata {state = Core.Nothing}

instance Core.FromJSON
           AddIdpCredentialOperationMetadata
         where
        parseJSON
          = Core.withObject "AddIdpCredentialOperationMetadata"
              (\ o ->
                 AddIdpCredentialOperationMetadata Core.<$>
                   (o Core..:? "state"))

instance Core.ToJSON
           AddIdpCredentialOperationMetadata
         where
        toJSON AddIdpCredentialOperationMetadata{..}
          = Core.object
              (Core.catMaybes [("state" Core..=) Core.<$> state])


-- | The request for creating an IdpCredential with its associated payload. An InboundSamlSsoProfile can own up to 2 credentials.
--
-- /See:/ 'newAddIdpCredentialRequest' smart constructor.
newtype AddIdpCredentialRequest = AddIdpCredentialRequest
    {
      -- | PEM encoded x509 certificate containing the public key for verifying IdP signatures.
      pemData :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddIdpCredentialRequest' with the minimum fields required to make a request.
newAddIdpCredentialRequest 
    ::  AddIdpCredentialRequest
newAddIdpCredentialRequest = AddIdpCredentialRequest {pemData = Core.Nothing}

instance Core.FromJSON AddIdpCredentialRequest where
        parseJSON
          = Core.withObject "AddIdpCredentialRequest"
              (\ o ->
                 AddIdpCredentialRequest Core.<$>
                   (o Core..:? "pemData"))

instance Core.ToJSON AddIdpCredentialRequest where
        toJSON AddIdpCredentialRequest{..}
          = Core.object
              (Core.catMaybes
                 [("pemData" Core..=) Core.<$> pemData])


-- | Request to cancel sent invitation for target email in UserInvitation.
--
-- /See:/ 'newCancelUserInvitationRequest' smart constructor.
data CancelUserInvitationRequest = CancelUserInvitationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelUserInvitationRequest' with the minimum fields required to make a request.
newCancelUserInvitationRequest 
    ::  CancelUserInvitationRequest
newCancelUserInvitationRequest = CancelUserInvitationRequest

instance Core.FromJSON CancelUserInvitationRequest
         where
        parseJSON
          = Core.withObject "CancelUserInvitationRequest"
              (\ o -> Core.pure CancelUserInvitationRequest)

instance Core.ToJSON CancelUserInvitationRequest
         where
        toJSON = Core.const Core.emptyObject


-- | The response message for MembershipsService.CheckTransitiveMembership.
--
-- /See:/ 'newCheckTransitiveMembershipResponse' smart constructor.
newtype CheckTransitiveMembershipResponse = CheckTransitiveMembershipResponse
    {
      -- | Response does not include the possible roles of a member since the behavior of this rpc is not all-or-nothing unlike the other rpcs. So, it may not be possible to list all the roles definitively, due to possible lack of authorization in some of the paths.
      hasMembership :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckTransitiveMembershipResponse' with the minimum fields required to make a request.
newCheckTransitiveMembershipResponse 
    ::  CheckTransitiveMembershipResponse
newCheckTransitiveMembershipResponse =
  CheckTransitiveMembershipResponse {hasMembership = Core.Nothing}

instance Core.FromJSON
           CheckTransitiveMembershipResponse
         where
        parseJSON
          = Core.withObject "CheckTransitiveMembershipResponse"
              (\ o ->
                 CheckTransitiveMembershipResponse Core.<$>
                   (o Core..:? "hasMembership"))

instance Core.ToJSON
           CheckTransitiveMembershipResponse
         where
        toJSON CheckTransitiveMembershipResponse{..}
          = Core.object
              (Core.catMaybes
                 [("hasMembership" Core..=) Core.<$> hasMembership])


-- | Metadata for CreateGroup LRO.
--
-- /See:/ 'newCreateGroupMetadata' smart constructor.
data CreateGroupMetadata = CreateGroupMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateGroupMetadata' with the minimum fields required to make a request.
newCreateGroupMetadata 
    ::  CreateGroupMetadata
newCreateGroupMetadata = CreateGroupMetadata

instance Core.FromJSON CreateGroupMetadata where
        parseJSON
          = Core.withObject "CreateGroupMetadata"
              (\ o -> Core.pure CreateGroupMetadata)

instance Core.ToJSON CreateGroupMetadata where
        toJSON = Core.const Core.emptyObject


-- | LRO response metadata for InboundSamlSsoProfilesService.CreateInboundSamlSsoProfile.
--
-- /See:/ 'newCreateInboundSamlSsoProfileOperationMetadata' smart constructor.
newtype CreateInboundSamlSsoProfileOperationMetadata = CreateInboundSamlSsoProfileOperationMetadata
    {
      -- | State of this Operation Will be \"awaiting-multi-party-approval\" when the operation is deferred due to the target customer having enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>.
      state :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInboundSamlSsoProfileOperationMetadata' with the minimum fields required to make a request.
newCreateInboundSamlSsoProfileOperationMetadata 
    ::  CreateInboundSamlSsoProfileOperationMetadata
newCreateInboundSamlSsoProfileOperationMetadata =
  CreateInboundSamlSsoProfileOperationMetadata {state = Core.Nothing}

instance Core.FromJSON
           CreateInboundSamlSsoProfileOperationMetadata
         where
        parseJSON
          = Core.withObject
              "CreateInboundSamlSsoProfileOperationMetadata"
              (\ o ->
                 CreateInboundSamlSsoProfileOperationMetadata Core.<$>
                   (o Core..:? "state"))

instance Core.ToJSON
           CreateInboundSamlSsoProfileOperationMetadata
         where
        toJSON
          CreateInboundSamlSsoProfileOperationMetadata{..}
          = Core.object
              (Core.catMaybes [("state" Core..=) Core.<$> state])


-- | LRO response metadata for InboundSsoAssignmentsService.CreateInboundSsoAssignment.
--
-- /See:/ 'newCreateInboundSsoAssignmentOperationMetadata' smart constructor.
data CreateInboundSsoAssignmentOperationMetadata = CreateInboundSsoAssignmentOperationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInboundSsoAssignmentOperationMetadata' with the minimum fields required to make a request.
newCreateInboundSsoAssignmentOperationMetadata 
    ::  CreateInboundSsoAssignmentOperationMetadata
newCreateInboundSsoAssignmentOperationMetadata =
  CreateInboundSsoAssignmentOperationMetadata

instance Core.FromJSON
           CreateInboundSsoAssignmentOperationMetadata
         where
        parseJSON
          = Core.withObject
              "CreateInboundSsoAssignmentOperationMetadata"
              (\ o ->
                 Core.pure
                   CreateInboundSsoAssignmentOperationMetadata)

instance Core.ToJSON
           CreateInboundSsoAssignmentOperationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for CreateMembership LRO.
--
-- /See:/ 'newCreateMembershipMetadata' smart constructor.
data CreateMembershipMetadata = CreateMembershipMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateMembershipMetadata' with the minimum fields required to make a request.
newCreateMembershipMetadata 
    ::  CreateMembershipMetadata
newCreateMembershipMetadata = CreateMembershipMetadata

instance Core.FromJSON CreateMembershipMetadata where
        parseJSON
          = Core.withObject "CreateMembershipMetadata"
              (\ o -> Core.pure CreateMembershipMetadata)

instance Core.ToJSON CreateMembershipMetadata where
        toJSON = Core.const Core.emptyObject


-- | Metadata for DeleteGroup LRO.
--
-- /See:/ 'newDeleteGroupMetadata' smart constructor.
data DeleteGroupMetadata = DeleteGroupMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteGroupMetadata' with the minimum fields required to make a request.
newDeleteGroupMetadata 
    ::  DeleteGroupMetadata
newDeleteGroupMetadata = DeleteGroupMetadata

instance Core.FromJSON DeleteGroupMetadata where
        parseJSON
          = Core.withObject "DeleteGroupMetadata"
              (\ o -> Core.pure DeleteGroupMetadata)

instance Core.ToJSON DeleteGroupMetadata where
        toJSON = Core.const Core.emptyObject


-- | LRO response metadata for InboundSamlSsoProfilesService.DeleteIdpCredential.
--
-- /See:/ 'newDeleteIdpCredentialOperationMetadata' smart constructor.
data DeleteIdpCredentialOperationMetadata = DeleteIdpCredentialOperationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteIdpCredentialOperationMetadata' with the minimum fields required to make a request.
newDeleteIdpCredentialOperationMetadata 
    ::  DeleteIdpCredentialOperationMetadata
newDeleteIdpCredentialOperationMetadata = DeleteIdpCredentialOperationMetadata

instance Core.FromJSON
           DeleteIdpCredentialOperationMetadata
         where
        parseJSON
          = Core.withObject
              "DeleteIdpCredentialOperationMetadata"
              (\ o ->
                 Core.pure DeleteIdpCredentialOperationMetadata)

instance Core.ToJSON
           DeleteIdpCredentialOperationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | LRO response metadata for InboundSamlSsoProfilesService.DeleteInboundSamlSsoProfile.
--
-- /See:/ 'newDeleteInboundSamlSsoProfileOperationMetadata' smart constructor.
data DeleteInboundSamlSsoProfileOperationMetadata = DeleteInboundSamlSsoProfileOperationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteInboundSamlSsoProfileOperationMetadata' with the minimum fields required to make a request.
newDeleteInboundSamlSsoProfileOperationMetadata 
    ::  DeleteInboundSamlSsoProfileOperationMetadata
newDeleteInboundSamlSsoProfileOperationMetadata =
  DeleteInboundSamlSsoProfileOperationMetadata

instance Core.FromJSON
           DeleteInboundSamlSsoProfileOperationMetadata
         where
        parseJSON
          = Core.withObject
              "DeleteInboundSamlSsoProfileOperationMetadata"
              (\ o ->
                 Core.pure
                   DeleteInboundSamlSsoProfileOperationMetadata)

instance Core.ToJSON
           DeleteInboundSamlSsoProfileOperationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | LRO response metadata for InboundSsoAssignmentsService.DeleteInboundSsoAssignment.
--
-- /See:/ 'newDeleteInboundSsoAssignmentOperationMetadata' smart constructor.
data DeleteInboundSsoAssignmentOperationMetadata = DeleteInboundSsoAssignmentOperationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteInboundSsoAssignmentOperationMetadata' with the minimum fields required to make a request.
newDeleteInboundSsoAssignmentOperationMetadata 
    ::  DeleteInboundSsoAssignmentOperationMetadata
newDeleteInboundSsoAssignmentOperationMetadata =
  DeleteInboundSsoAssignmentOperationMetadata

instance Core.FromJSON
           DeleteInboundSsoAssignmentOperationMetadata
         where
        parseJSON
          = Core.withObject
              "DeleteInboundSsoAssignmentOperationMetadata"
              (\ o ->
                 Core.pure
                   DeleteInboundSsoAssignmentOperationMetadata)

instance Core.ToJSON
           DeleteInboundSsoAssignmentOperationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for DeleteMembership LRO.
--
-- /See:/ 'newDeleteMembershipMetadata' smart constructor.
data DeleteMembershipMetadata = DeleteMembershipMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteMembershipMetadata' with the minimum fields required to make a request.
newDeleteMembershipMetadata 
    ::  DeleteMembershipMetadata
newDeleteMembershipMetadata = DeleteMembershipMetadata

instance Core.FromJSON DeleteMembershipMetadata where
        parseJSON
          = Core.withObject "DeleteMembershipMetadata"
              (\ o -> Core.pure DeleteMembershipMetadata)

instance Core.ToJSON DeleteMembershipMetadata where
        toJSON = Core.const Core.emptyObject


-- | Information of a DSA public key.
--
-- /See:/ 'newDsaPublicKeyInfo' smart constructor.
newtype DsaPublicKeyInfo = DsaPublicKeyInfo
    {
      -- | Key size in bits (size of parameter P).
      keySize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DsaPublicKeyInfo' with the minimum fields required to make a request.
newDsaPublicKeyInfo 
    ::  DsaPublicKeyInfo
newDsaPublicKeyInfo = DsaPublicKeyInfo {keySize = Core.Nothing}

instance Core.FromJSON DsaPublicKeyInfo where
        parseJSON
          = Core.withObject "DsaPublicKeyInfo"
              (\ o ->
                 DsaPublicKeyInfo Core.<$> (o Core..:? "keySize"))

instance Core.ToJSON DsaPublicKeyInfo where
        toJSON DsaPublicKeyInfo{..}
          = Core.object
              (Core.catMaybes
                 [("keySize" Core..=) Core.<$> keySize])


-- | Dynamic group metadata like queries and status.
--
-- /See:/ 'newDynamicGroupMetadata' smart constructor.
data DynamicGroupMetadata = DynamicGroupMetadata
    {
      -- | Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 500 dynamic groups.
      queries :: (Core.Maybe [DynamicGroupQuery])
      -- | Output only. Status of the dynamic group.
    , status :: (Core.Maybe DynamicGroupStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupMetadata' with the minimum fields required to make a request.
newDynamicGroupMetadata 
    ::  DynamicGroupMetadata
newDynamicGroupMetadata =
  DynamicGroupMetadata {queries = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON DynamicGroupMetadata where
        parseJSON
          = Core.withObject "DynamicGroupMetadata"
              (\ o ->
                 DynamicGroupMetadata Core.<$>
                   (o Core..:? "queries") Core.<*>
                     (o Core..:? "status"))

instance Core.ToJSON DynamicGroupMetadata where
        toJSON DynamicGroupMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("queries" Core..=) Core.<$> queries,
                  ("status" Core..=) Core.<$> status])


-- | Defines a query on a resource.
--
-- /See:/ 'newDynamicGroupQuery' smart constructor.
data DynamicGroupQuery = DynamicGroupQuery
    {
      -- | Query that determines the memberships of the dynamic group. Examples: All users with at least one @organizations.department@ of engineering. @user.organizations.exists(org, org.department==\'engineering\')@ All users with at least one location that has @area@ of @foo@ and @building_id@ of @bar@. @user.locations.exists(loc, loc.area==\'foo\' && loc.building_id==\'bar\')@ All users with any variation of the name John Doe (case-insensitive queries add @equalsIgnoreCase()@ to the value being queried). @user.name.value.equalsIgnoreCase(\'jOhn DoE\')@
      query :: (Core.Maybe Core.Text)
      -- | Resource type for the Dynamic Group Query
    , resourceType :: (Core.Maybe DynamicGroupQuery_ResourceType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupQuery' with the minimum fields required to make a request.
newDynamicGroupQuery 
    ::  DynamicGroupQuery
newDynamicGroupQuery =
  DynamicGroupQuery {query = Core.Nothing, resourceType = Core.Nothing}

instance Core.FromJSON DynamicGroupQuery where
        parseJSON
          = Core.withObject "DynamicGroupQuery"
              (\ o ->
                 DynamicGroupQuery Core.<$>
                   (o Core..:? "query") Core.<*>
                     (o Core..:? "resourceType"))

instance Core.ToJSON DynamicGroupQuery where
        toJSON DynamicGroupQuery{..}
          = Core.object
              (Core.catMaybes
                 [("query" Core..=) Core.<$> query,
                  ("resourceType" Core..=) Core.<$> resourceType])


-- | The current status of a dynamic group along with timestamp.
--
-- /See:/ 'newDynamicGroupStatus' smart constructor.
data DynamicGroupStatus = DynamicGroupStatus
    {
      -- | Status of the dynamic group.
      status :: (Core.Maybe DynamicGroupStatus_Status)
      -- | The latest time at which the dynamic group is guaranteed to be in the given status. If status is @UP_TO_DATE@, the latest time at which the dynamic group was confirmed to be up-to-date. If status is @UPDATING_MEMBERSHIPS@, the time at which dynamic group was created.
    , statusTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicGroupStatus' with the minimum fields required to make a request.
newDynamicGroupStatus 
    ::  DynamicGroupStatus
newDynamicGroupStatus =
  DynamicGroupStatus {status = Core.Nothing, statusTime = Core.Nothing}

instance Core.FromJSON DynamicGroupStatus where
        parseJSON
          = Core.withObject "DynamicGroupStatus"
              (\ o ->
                 DynamicGroupStatus Core.<$>
                   (o Core..:? "status") Core.<*>
                     (o Core..:? "statusTime"))

instance Core.ToJSON DynamicGroupStatus where
        toJSON DynamicGroupStatus{..}
          = Core.object
              (Core.catMaybes
                 [("status" Core..=) Core.<$> status,
                  ("statusTime" Core..=) Core.<$> statusTime])


-- | A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional @namespace@ or a user without a @namespace@. The combination of @id@ and @namespace@ must be unique; however, the same @id@ can be used with different @namespace@s.
--
-- /See:/ 'newEntityKey' smart constructor.
data EntityKey = EntityKey
    {
      -- | The ID of the entity. For Google-managed entities, the @id@ should be the email address of an existing group or user. Email addresses need to adhere to <https://support.google.com/a/answer/9193374 name guidelines for users and groups>. For external-identity-mapped entities, the @id@ must be a string conforming to the Identity Source\'s requirements. Must be unique within a @namespace@.
      id :: (Core.Maybe Core.Text)
      -- | The namespace in which the entity exists. If not specified, the @EntityKey@ represents a Google-managed entity such as a Google user or a Google Group. If specified, the @EntityKey@ represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of @identitysources\/{identity_source}@.
    , namespace :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityKey' with the minimum fields required to make a request.
newEntityKey 
    ::  EntityKey
newEntityKey = EntityKey {id = Core.Nothing, namespace = Core.Nothing}

instance Core.FromJSON EntityKey where
        parseJSON
          = Core.withObject "EntityKey"
              (\ o ->
                 EntityKey Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "namespace"))

instance Core.ToJSON EntityKey where
        toJSON EntityKey{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("namespace" Core..=) Core.<$> namespace])


-- | The @MembershipRole@ expiry details.
--
-- /See:/ 'newExpiryDetail' smart constructor.
newtype ExpiryDetail = ExpiryDetail
    {
      -- | The time at which the @MembershipRole@ will expire.
      expireTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpiryDetail' with the minimum fields required to make a request.
newExpiryDetail 
    ::  ExpiryDetail
newExpiryDetail = ExpiryDetail {expireTime = Core.Nothing}

instance Core.FromJSON ExpiryDetail where
        parseJSON
          = Core.withObject "ExpiryDetail"
              (\ o ->
                 ExpiryDetail Core.<$> (o Core..:? "expireTime"))

instance Core.ToJSON ExpiryDetail where
        toJSON ExpiryDetail{..}
          = Core.object
              (Core.catMaybes
                 [("expireTime" Core..=) Core.<$> expireTime])


-- | Metadata of GetMembershipGraphResponse LRO. This is currently empty to permit future extensibility.
--
-- /See:/ 'newGetMembershipGraphMetadata' smart constructor.
data GetMembershipGraphMetadata = GetMembershipGraphMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetMembershipGraphMetadata' with the minimum fields required to make a request.
newGetMembershipGraphMetadata 
    ::  GetMembershipGraphMetadata
newGetMembershipGraphMetadata = GetMembershipGraphMetadata

instance Core.FromJSON GetMembershipGraphMetadata
         where
        parseJSON
          = Core.withObject "GetMembershipGraphMetadata"
              (\ o -> Core.pure GetMembershipGraphMetadata)

instance Core.ToJSON GetMembershipGraphMetadata where
        toJSON = Core.const Core.emptyObject


-- | The response message for MembershipsService.GetMembershipGraph.
--
-- /See:/ 'newGetMembershipGraphResponse' smart constructor.
data GetMembershipGraphResponse = GetMembershipGraphResponse
    {
      -- | The membership graph\'s path information represented as an adjacency list.
      adjacencyList :: (Core.Maybe [MembershipAdjacencyList])
      -- | The resources representing each group in the adjacency list. Each group in this list can be correlated to a \'group\' of the MembershipAdjacencyList using the \'name\' of the Group resource.
    , groups :: (Core.Maybe [Group])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetMembershipGraphResponse' with the minimum fields required to make a request.
newGetMembershipGraphResponse 
    ::  GetMembershipGraphResponse
newGetMembershipGraphResponse =
  GetMembershipGraphResponse
    {adjacencyList = Core.Nothing, groups = Core.Nothing}

instance Core.FromJSON GetMembershipGraphResponse
         where
        parseJSON
          = Core.withObject "GetMembershipGraphResponse"
              (\ o ->
                 GetMembershipGraphResponse Core.<$>
                   (o Core..:? "adjacencyList") Core.<*>
                     (o Core..:? "groups"))

instance Core.ToJSON GetMembershipGraphResponse where
        toJSON GetMembershipGraphResponse{..}
          = Core.object
              (Core.catMaybes
                 [("adjacencyList" Core..=) Core.<$> adjacencyList,
                  ("groups" Core..=) Core.<$> groups])


-- | Resource representing the Android specific attributes of a Device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1AndroidAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1AndroidAttributes = GoogleAppsCloudidentityDevicesV1AndroidAttributes
    {
      -- | Whether the device passes Android CTS compliance.
      ctsProfileMatch :: (Core.Maybe Core.Bool)
      -- | Whether applications from unknown sources can be installed on device.
    , enabledUnknownSources :: (Core.Maybe Core.Bool)
      -- | Whether any potentially harmful apps were detected on the device.
    , hasPotentiallyHarmfulApps :: (Core.Maybe Core.Bool)
      -- | Whether this account is on an owner\/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
    , ownerProfileAccount :: (Core.Maybe Core.Bool)
      -- | Ownership privileges on device.
    , ownershipPrivilege :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege)
      -- | Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the \"Enforce Work Profile\" policy.
    , supportsWorkProfile :: (Core.Maybe Core.Bool)
      -- | Whether Android verified boot status is GREEN.
    , verifiedBoot :: (Core.Maybe Core.Bool)
      -- | Whether Google Play Protect Verify Apps is enabled.
    , verifyAppsEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1AndroidAttributes' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1AndroidAttributes 
    ::  GoogleAppsCloudidentityDevicesV1AndroidAttributes
newGoogleAppsCloudidentityDevicesV1AndroidAttributes =
  GoogleAppsCloudidentityDevicesV1AndroidAttributes
    { ctsProfileMatch = Core.Nothing
    , enabledUnknownSources = Core.Nothing
    , hasPotentiallyHarmfulApps = Core.Nothing
    , ownerProfileAccount = Core.Nothing
    , ownershipPrivilege = Core.Nothing
    , supportsWorkProfile = Core.Nothing
    , verifiedBoot = Core.Nothing
    , verifyAppsEnabled = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1AndroidAttributes
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1AndroidAttributes"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1AndroidAttributes
                   Core.<$>
                   (o Core..:? "ctsProfileMatch") Core.<*>
                     (o Core..:? "enabledUnknownSources")
                     Core.<*> (o Core..:? "hasPotentiallyHarmfulApps")
                     Core.<*> (o Core..:? "ownerProfileAccount")
                     Core.<*> (o Core..:? "ownershipPrivilege")
                     Core.<*> (o Core..:? "supportsWorkProfile")
                     Core.<*> (o Core..:? "verifiedBoot")
                     Core.<*> (o Core..:? "verifyAppsEnabled"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1AndroidAttributes
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1AndroidAttributes{..}
          = Core.object
              (Core.catMaybes
                 [("ctsProfileMatch" Core..=) Core.<$>
                    ctsProfileMatch,
                  ("enabledUnknownSources" Core..=) Core.<$>
                    enabledUnknownSources,
                  ("hasPotentiallyHarmfulApps" Core..=) Core.<$>
                    hasPotentiallyHarmfulApps,
                  ("ownerProfileAccount" Core..=) Core.<$>
                    ownerProfileAccount,
                  ("ownershipPrivilege" Core..=) Core.<$>
                    ownershipPrivilege,
                  ("supportsWorkProfile" Core..=) Core.<$>
                    supportsWorkProfile,
                  ("verifiedBoot" Core..=) Core.<$> verifiedBoot,
                  ("verifyAppsEnabled" Core..=) Core.<$>
                    verifyAppsEnabled])


-- | Metadata for ApproveDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for approving the device to access user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest 
    ::  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    {customer = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
                   Core.<$> (o Core..:? "customer"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer])


-- | Response message for approving the device to access user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse = GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    {
      -- | Resultant DeviceUser object for the action.
      deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse 
    ::  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    {deviceUser = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
                   Core.<$> (o Core..:? "deviceUser"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceUser" Core..=) Core.<$> deviceUser])


-- | Metadata for BlockDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for blocking account on device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest 
    ::  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    {customer = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
                   Core.<$> (o Core..:? "customer"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer])


-- | Response message for blocking the device from accessing user data.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse = GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    {
      -- | Resultant DeviceUser object for the action.
      deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse 
    ::  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    {deviceUser = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
                   Core.<$> (o Core..:? "deviceUser"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceUser" Core..=) Core.<$> deviceUser])


-- | Contains information about browser profiles reported by the <https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1 Endpoint Verification extension>.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BrowserAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1BrowserAttributes = GoogleAppsCloudidentityDevicesV1BrowserAttributes
    {
      -- | Represents the current state of the <https://cloud.google.com/access-context-manager/docs/browser-attributes Chrome browser attributes> sent by the <https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1 Endpoint Verification extension>.
      chromeBrowserInfo :: (Core.Maybe GoogleAppsCloudidentityDevicesV1BrowserInfo)
      -- | Chrome profile ID that is exposed by the Chrome API. It is unique for each device.
    , chromeProfileId :: (Core.Maybe Core.Text)
      -- | Timestamp in milliseconds since the Unix epoch when the profile\/gcm id was last synced.
    , lastProfileSyncTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BrowserAttributes' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BrowserAttributes 
    ::  GoogleAppsCloudidentityDevicesV1BrowserAttributes
newGoogleAppsCloudidentityDevicesV1BrowserAttributes =
  GoogleAppsCloudidentityDevicesV1BrowserAttributes
    { chromeBrowserInfo = Core.Nothing
    , chromeProfileId = Core.Nothing
    , lastProfileSyncTime = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1BrowserAttributes
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1BrowserAttributes"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BrowserAttributes
                   Core.<$>
                   (o Core..:? "chromeBrowserInfo") Core.<*>
                     (o Core..:? "chromeProfileId")
                     Core.<*> (o Core..:? "lastProfileSyncTime"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1BrowserAttributes
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BrowserAttributes{..}
          = Core.object
              (Core.catMaybes
                 [("chromeBrowserInfo" Core..=) Core.<$>
                    chromeBrowserInfo,
                  ("chromeProfileId" Core..=) Core.<$> chromeProfileId,
                  ("lastProfileSyncTime" Core..=) Core.<$>
                    lastProfileSyncTime])


-- | Browser-specific fields reported by the <https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1 Endpoint Verification extension>.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1BrowserInfo' smart constructor.
data GoogleAppsCloudidentityDevicesV1BrowserInfo = GoogleAppsCloudidentityDevicesV1BrowserInfo
    {
      -- | Output only. Browser\'s management state.
      browserManagementState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1BrowserInfo_BrowserManagementState)
      -- | Version of the request initiating browser. E.g. @91.0.4442.4@.
    , browserVersion :: (Core.Maybe Core.Text)
      -- | Current state of <https://chromeenterprise.google/policies/#BuiltInDnsClientEnabled built-in DNS client>.
    , isBuiltInDnsClientEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#OnBulkDataEntryEnterpriseConnector bulk data analysis>. Set to true if provider list from Chrome is non-empty.
    , isBulkDataEntryAnalysisEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#ChromeCleanupEnabled Chrome Cleanup>.
    , isChromeCleanupEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#URLBlocklist Chrome Remote Desktop app>.
    , isChromeRemoteDesktopAppBlocked :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#OnFileDownloadedEnterpriseConnector file download analysis>. Set to true if provider list from Chrome is non-empty.
    , isFileDownloadAnalysisEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#OnFileAttachedEnterpriseConnector file upload analysis>. Set to true if provider list from Chrome is non-empty.
    , isFileUploadAnalysisEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode real-time URL check>. Set to true if provider list from Chrome is non-empty.
    , isRealtimeUrlCheckEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#OnSecurityEventEnterpriseConnector security event analysis>. Set to true if provider list from Chrome is non-empty.
    , isSecurityEventAnalysisEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/?policy=IsolateOrigins site isolation>.
    , isSiteIsolationEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#ThirdPartyBlockingEnabled third-party blocking>.
    , isThirdPartyBlockingEnabled :: (Core.Maybe Core.Bool)
      -- | Current state of <https://chromeenterprise.google/policies/#PasswordProtectionWarningTrigger password protection trigger>.
    , passwordProtectionWarningTrigger :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1BrowserInfo_PasswordProtectionWarningTrigger)
      -- | Current state of <https://chromeenterprise.google/policies/#SafeBrowsingProtectionLevel Safe Browsing protection level>.
    , safeBrowsingProtectionLevel :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1BrowserInfo_SafeBrowsingProtectionLevel)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BrowserInfo' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1BrowserInfo 
    ::  GoogleAppsCloudidentityDevicesV1BrowserInfo
newGoogleAppsCloudidentityDevicesV1BrowserInfo =
  GoogleAppsCloudidentityDevicesV1BrowserInfo
    { browserManagementState = Core.Nothing
    , browserVersion = Core.Nothing
    , isBuiltInDnsClientEnabled = Core.Nothing
    , isBulkDataEntryAnalysisEnabled = Core.Nothing
    , isChromeCleanupEnabled = Core.Nothing
    , isChromeRemoteDesktopAppBlocked = Core.Nothing
    , isFileDownloadAnalysisEnabled = Core.Nothing
    , isFileUploadAnalysisEnabled = Core.Nothing
    , isRealtimeUrlCheckEnabled = Core.Nothing
    , isSecurityEventAnalysisEnabled = Core.Nothing
    , isSiteIsolationEnabled = Core.Nothing
    , isThirdPartyBlockingEnabled = Core.Nothing
    , passwordProtectionWarningTrigger = Core.Nothing
    , safeBrowsingProtectionLevel = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1BrowserInfo
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1BrowserInfo"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BrowserInfo Core.<$>
                   (o Core..:? "browserManagementState") Core.<*>
                     (o Core..:? "browserVersion")
                     Core.<*> (o Core..:? "isBuiltInDnsClientEnabled")
                     Core.<*>
                     (o Core..:? "isBulkDataEntryAnalysisEnabled")
                     Core.<*> (o Core..:? "isChromeCleanupEnabled")
                     Core.<*>
                     (o Core..:? "isChromeRemoteDesktopAppBlocked")
                     Core.<*> (o Core..:? "isFileDownloadAnalysisEnabled")
                     Core.<*> (o Core..:? "isFileUploadAnalysisEnabled")
                     Core.<*> (o Core..:? "isRealtimeUrlCheckEnabled")
                     Core.<*>
                     (o Core..:? "isSecurityEventAnalysisEnabled")
                     Core.<*> (o Core..:? "isSiteIsolationEnabled")
                     Core.<*> (o Core..:? "isThirdPartyBlockingEnabled")
                     Core.<*>
                     (o Core..:? "passwordProtectionWarningTrigger")
                     Core.<*> (o Core..:? "safeBrowsingProtectionLevel"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1BrowserInfo
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BrowserInfo{..}
          = Core.object
              (Core.catMaybes
                 [("browserManagementState" Core..=) Core.<$>
                    browserManagementState,
                  ("browserVersion" Core..=) Core.<$> browserVersion,
                  ("isBuiltInDnsClientEnabled" Core..=) Core.<$>
                    isBuiltInDnsClientEnabled,
                  ("isBulkDataEntryAnalysisEnabled" Core..=) Core.<$>
                    isBulkDataEntryAnalysisEnabled,
                  ("isChromeCleanupEnabled" Core..=) Core.<$>
                    isChromeCleanupEnabled,
                  ("isChromeRemoteDesktopAppBlocked" Core..=) Core.<$>
                    isChromeRemoteDesktopAppBlocked,
                  ("isFileDownloadAnalysisEnabled" Core..=) Core.<$>
                    isFileDownloadAnalysisEnabled,
                  ("isFileUploadAnalysisEnabled" Core..=) Core.<$>
                    isFileUploadAnalysisEnabled,
                  ("isRealtimeUrlCheckEnabled" Core..=) Core.<$>
                    isRealtimeUrlCheckEnabled,
                  ("isSecurityEventAnalysisEnabled" Core..=) Core.<$>
                    isSecurityEventAnalysisEnabled,
                  ("isSiteIsolationEnabled" Core..=) Core.<$>
                    isSiteIsolationEnabled,
                  ("isThirdPartyBlockingEnabled" Core..=) Core.<$>
                    isThirdPartyBlockingEnabled,
                  ("passwordProtectionWarningTrigger" Core..=) Core.<$>
                    passwordProtectionWarningTrigger,
                  ("safeBrowsingProtectionLevel" Core..=) Core.<$>
                    safeBrowsingProtectionLevel])


-- | Metadata for CancelWipeDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for cancelling an unfinished device wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    {customer = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
                   Core.<$> (o Core..:? "customer"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer])


-- | Response message for cancelling an unfinished device wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    {
      -- | Resultant Device object for the action. Note that asset tags will not be returned in the device object.
      device :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    {device = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
                   Core.<$> (o Core..:? "device"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse{..}
          = Core.object
              (Core.catMaybes [("device" Core..=) Core.<$> device])


-- | Metadata for CancelWipeDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for cancelling an unfinished user account wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    {customer = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                   Core.<$> (o Core..:? "customer"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer])


-- | Response message for cancelling an unfinished user account wipe.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse = GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    {
      -- | Resultant DeviceUser object for the action.
      deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse 
    ::  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    {deviceUser = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
                   Core.<$> (o Core..:? "deviceUser"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceUser" Core..=) Core.<$> deviceUser])


-- | Stores information about a certificate.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CertificateAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1CertificateAttributes = GoogleAppsCloudidentityDevicesV1CertificateAttributes
    {
      -- | The X.509 extension for CertificateTemplate.
      certificateTemplate :: (Core.Maybe GoogleAppsCloudidentityDevicesV1CertificateTemplate)
      -- | The encoded certificate fingerprint.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | The name of the issuer of this certificate.
    , issuer :: (Core.Maybe Core.Text)
      -- | Serial number of the certificate, Example: \"123456789\".
    , serialNumber :: (Core.Maybe Core.Text)
      -- | The subject name of this certificate.
    , subject :: (Core.Maybe Core.Text)
      -- | The certificate thumbprint.
    , thumbprint :: (Core.Maybe Core.Text)
      -- | Output only. Validation state of this certificate.
    , validationState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1CertificateAttributes_ValidationState)
      -- | Certificate not valid at or after this timestamp.
    , validityExpirationTime :: (Core.Maybe Core.DateTime)
      -- | Certificate not valid before this timestamp.
    , validityStartTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CertificateAttributes' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CertificateAttributes 
    ::  GoogleAppsCloudidentityDevicesV1CertificateAttributes
newGoogleAppsCloudidentityDevicesV1CertificateAttributes =
  GoogleAppsCloudidentityDevicesV1CertificateAttributes
    { certificateTemplate = Core.Nothing
    , fingerprint = Core.Nothing
    , issuer = Core.Nothing
    , serialNumber = Core.Nothing
    , subject = Core.Nothing
    , thumbprint = Core.Nothing
    , validationState = Core.Nothing
    , validityExpirationTime = Core.Nothing
    , validityStartTime = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CertificateAttributes
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CertificateAttributes"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CertificateAttributes
                   Core.<$>
                   (o Core..:? "certificateTemplate") Core.<*>
                     (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "issuer")
                     Core.<*> (o Core..:? "serialNumber")
                     Core.<*> (o Core..:? "subject")
                     Core.<*> (o Core..:? "thumbprint")
                     Core.<*> (o Core..:? "validationState")
                     Core.<*> (o Core..:? "validityExpirationTime")
                     Core.<*> (o Core..:? "validityStartTime"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CertificateAttributes
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CertificateAttributes{..}
          = Core.object
              (Core.catMaybes
                 [("certificateTemplate" Core..=) Core.<$>
                    certificateTemplate,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("issuer" Core..=) Core.<$> issuer,
                  ("serialNumber" Core..=) Core.<$> serialNumber,
                  ("subject" Core..=) Core.<$> subject,
                  ("thumbprint" Core..=) Core.<$> thumbprint,
                  ("validationState" Core..=) Core.<$> validationState,
                  ("validityExpirationTime" Core..=) Core.<$>
                    validityExpirationTime,
                  ("validityStartTime" Core..=) Core.<$>
                    validityStartTime])


-- | CertificateTemplate (v3 Extension in X.509).
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CertificateTemplate' smart constructor.
data GoogleAppsCloudidentityDevicesV1CertificateTemplate = GoogleAppsCloudidentityDevicesV1CertificateTemplate
    {
      -- | The template id of the template. Example: \"1.3.6.1.4.1.311.21.8.15608621.11768144.5720724.16068415.6889630.81.2472537.7784047\".
      id :: (Core.Maybe Core.Text)
      -- | The Major version of the template. Example: 100.
    , majorVersion :: (Core.Maybe Core.Int32)
      -- | The minor version of the template. Example: 12.
    , minorVersion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CertificateTemplate' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CertificateTemplate 
    ::  GoogleAppsCloudidentityDevicesV1CertificateTemplate
newGoogleAppsCloudidentityDevicesV1CertificateTemplate =
  GoogleAppsCloudidentityDevicesV1CertificateTemplate
    { id = Core.Nothing
    , majorVersion = Core.Nothing
    , minorVersion = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CertificateTemplate
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CertificateTemplate"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CertificateTemplate
                   Core.<$>
                   (o Core..:? "id") Core.<*>
                     (o Core..:? "majorVersion")
                     Core.<*> (o Core..:? "minorVersion"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CertificateTemplate
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CertificateTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("majorVersion" Core..=) Core.<$> majorVersion,
                  ("minorVersion" Core..=) Core.<$> minorVersion])


-- | Represents the state associated with an API client calling the Devices API. Resource representing ClientState and supports updates from API users
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ClientState' smart constructor.
data GoogleAppsCloudidentityDevicesV1ClientState = GoogleAppsCloudidentityDevicesV1ClientState
    {
      -- | The caller can specify asset tags for this resource
      assetTags :: (Core.Maybe [Core.Text])
      -- | The compliance state of the resource as specified by the API client.
    , complianceState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState)
      -- | Output only. The time the client state data was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | This field may be used to store a unique identifier for the API resource within which these CustomAttributes are a field.
    , customId :: (Core.Maybe Core.Text)
      -- | The token that needs to be passed back for concurrency control in updates. Token needs to be passed back in UpdateRequest
    , etag :: (Core.Maybe Core.Text)
      -- | The Health score of the resource. The Health score is the callers specification of the condition of the device from a usability point of view. For example, a third-party device management provider may specify a health score based on its compliance with organizational policies.
    , healthScore :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1ClientState_HealthScore)
      -- | The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map.
    , keyValuePairs :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs)
      -- | Output only. The time the client state data was last updated.
    , lastUpdateTime :: (Core.Maybe Core.DateTime)
      -- | The management state of the resource as specified by the API client.
    , managed :: (Core.Maybe GoogleAppsCloudidentityDevicesV1ClientState_Managed)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientState\/{partner}@, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: @{customer}-suffix@, where @customer@ is your customer ID. The /suffix/ is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization\'s customer ID can be obtained from the URL: @GET https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer@ The @id@ field in the response contains the customer ID starting with the letter \'C\'. The customer ID to be used in this API is the string after the letter \'C\' (not including \'C\')
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The owner of the ClientState
    , ownerType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1ClientState_OwnerType)
      -- | A descriptive cause of the health score.
    , scoreReason :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientState' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ClientState 
    ::  GoogleAppsCloudidentityDevicesV1ClientState
newGoogleAppsCloudidentityDevicesV1ClientState =
  GoogleAppsCloudidentityDevicesV1ClientState
    { assetTags = Core.Nothing
    , complianceState = Core.Nothing
    , createTime = Core.Nothing
    , customId = Core.Nothing
    , etag = Core.Nothing
    , healthScore = Core.Nothing
    , keyValuePairs = Core.Nothing
    , lastUpdateTime = Core.Nothing
    , managed = Core.Nothing
    , name = Core.Nothing
    , ownerType = Core.Nothing
    , scoreReason = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ClientState
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ClientState"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ClientState Core.<$>
                   (o Core..:? "assetTags") Core.<*>
                     (o Core..:? "complianceState")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "customId")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "healthScore")
                     Core.<*> (o Core..:? "keyValuePairs")
                     Core.<*> (o Core..:? "lastUpdateTime")
                     Core.<*> (o Core..:? "managed")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "ownerType")
                     Core.<*> (o Core..:? "scoreReason"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ClientState
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ClientState{..}
          = Core.object
              (Core.catMaybes
                 [("assetTags" Core..=) Core.<$> assetTags,
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
                  ("scoreReason" Core..=) Core.<$> scoreReason])


-- | The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs = GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    {
      -- | 
      additional :: (Core.HashMap Core.Text
   GoogleAppsCloudidentityDevicesV1CustomAttributeValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs 
    ::  Core.HashMap Core.Text GoogleAppsCloudidentityDevicesV1CustomAttributeValue
       -- ^  See 'additional'.
    -> GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs additional =
  GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    {additional = additional}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs{..}
          = Core.toJSON additional


-- | Metadata for CreateDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata = GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata 
    ::  GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Additional custom attribute values may be one of these types
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1CustomAttributeValue' smart constructor.
data GoogleAppsCloudidentityDevicesV1CustomAttributeValue = GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    {
      -- | Represents a boolean value.
      boolValue :: (Core.Maybe Core.Bool)
      -- | Represents a double value.
    , numberValue :: (Core.Maybe Core.Double)
      -- | Represents a string value.
    , stringValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CustomAttributeValue' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1CustomAttributeValue 
    ::  GoogleAppsCloudidentityDevicesV1CustomAttributeValue
newGoogleAppsCloudidentityDevicesV1CustomAttributeValue =
  GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    { boolValue = Core.Nothing
    , numberValue = Core.Nothing
    , stringValue = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1CustomAttributeValue
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1CustomAttributeValue"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CustomAttributeValue
                   Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "numberValue")
                     Core.<*> (o Core..:? "stringValue"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1CustomAttributeValue
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CustomAttributeValue{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("numberValue" Core..=) Core.<$> numberValue,
                  ("stringValue" Core..=) Core.<$> stringValue])


-- | Metadata for DeleteDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata = GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata 
    ::  GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for DeleteDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1Device' smart constructor.
data GoogleAppsCloudidentityDevicesV1Device = GoogleAppsCloudidentityDevicesV1Device
    {
      -- | Output only. Attributes specific to Android devices.
      androidSpecificAttributes :: (Core.Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributes)
      -- | Asset tag of the device.
    , assetTag :: (Core.Maybe Core.Text)
      -- | Output only. Baseband version of the device.
    , basebandVersion :: (Core.Maybe Core.Text)
      -- | Output only. Device bootloader version. Example: 0.6.7.
    , bootloaderVersion :: (Core.Maybe Core.Text)
      -- | Output only. Device brand. Example: Samsung.
    , brand :: (Core.Maybe Core.Text)
      -- | Output only. Build number of the device.
    , buildNumber :: (Core.Maybe Core.Text)
      -- | Output only. Represents whether the Device is compromised.
    , compromisedState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1Device_CompromisedState)
      -- | Output only. When the Company-Owned device was imported. This field is empty for BYOD devices.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Unique identifier for the device.
    , deviceId :: (Core.Maybe Core.Text)
      -- | Output only. Type of device.
    , deviceType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_DeviceType)
      -- | Output only. Whether developer options is enabled on device.
    , enabledDeveloperOptions :: (Core.Maybe Core.Bool)
      -- | Output only. Whether USB debugging is enabled on device.
    , enabledUsbDebugging :: (Core.Maybe Core.Bool)
      -- | Output only. Device encryption state.
    , encryptionState :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_EncryptionState)
      -- | Output only. Attributes specific to <https://cloud.google.com/endpoint-verification/docs/overview Endpoint Verification> devices.
    , endpointVerificationSpecificAttributes :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes)
      -- | Host name of the device.
    , hostname :: (Core.Maybe Core.Text)
      -- | Output only. IMEI number of device if GSM device; empty otherwise.
    , imei :: (Core.Maybe Core.Text)
      -- | Output only. Kernel version of the device.
    , kernelVersion :: (Core.Maybe Core.Text)
      -- | Most recent time when device synced with this service.
    , lastSyncTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Management state of the device
    , managementState :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_ManagementState)
      -- | Output only. Device manufacturer. Example: Motorola.
    , manufacturer :: (Core.Maybe Core.Text)
      -- | Output only. MEID number of device if CDMA device; empty otherwise.
    , meid :: (Core.Maybe Core.Text)
      -- | Output only. Model name of device. Example: Pixel 3.
    , model :: (Core.Maybe Core.Text)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}@, where device is the unique id assigned to the Device. Important: Device API scopes require that you use domain-wide delegation to access the API. For more information, see <https://cloud.google.com/identity/docs/how-to/setup-devices Set up the Devices API>.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Mobile or network operator of device, if available.
    , networkOperator :: (Core.Maybe Core.Text)
      -- | Output only. OS version of the device. Example: Android 8.1.0.
    , osVersion :: (Core.Maybe Core.Text)
      -- | Output only. Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership/privilege| is |PROFILE/OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account\'s domain has only one account. Examples: \"com.example\", \"xyz.com\".
    , otherAccounts :: (Core.Maybe [Core.Text])
      -- | Output only. Whether the device is owned by the company or an individual
    , ownerType :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device_OwnerType)
      -- | Output only. OS release version. Example: 6.0.
    , releaseVersion :: (Core.Maybe Core.Text)
      -- | Output only. OS security patch update time on device.
    , securityPatchTime :: (Core.Maybe Core.DateTime)
      -- | Serial Number of device. Example: HT82V1A01076.
    , serialNumber :: (Core.Maybe Core.Text)
      -- | Output only. Unified device id of the device.
    , unifiedDeviceId :: (Core.Maybe Core.Text)
      -- | WiFi MAC addresses of device.
    , wifiMacAddresses :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1Device' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1Device 
    ::  GoogleAppsCloudidentityDevicesV1Device
newGoogleAppsCloudidentityDevicesV1Device =
  GoogleAppsCloudidentityDevicesV1Device
    { androidSpecificAttributes = Core.Nothing
    , assetTag = Core.Nothing
    , basebandVersion = Core.Nothing
    , bootloaderVersion = Core.Nothing
    , brand = Core.Nothing
    , buildNumber = Core.Nothing
    , compromisedState = Core.Nothing
    , createTime = Core.Nothing
    , deviceId = Core.Nothing
    , deviceType = Core.Nothing
    , enabledDeveloperOptions = Core.Nothing
    , enabledUsbDebugging = Core.Nothing
    , encryptionState = Core.Nothing
    , endpointVerificationSpecificAttributes = Core.Nothing
    , hostname = Core.Nothing
    , imei = Core.Nothing
    , kernelVersion = Core.Nothing
    , lastSyncTime = Core.Nothing
    , managementState = Core.Nothing
    , manufacturer = Core.Nothing
    , meid = Core.Nothing
    , model = Core.Nothing
    , name = Core.Nothing
    , networkOperator = Core.Nothing
    , osVersion = Core.Nothing
    , otherAccounts = Core.Nothing
    , ownerType = Core.Nothing
    , releaseVersion = Core.Nothing
    , securityPatchTime = Core.Nothing
    , serialNumber = Core.Nothing
    , unifiedDeviceId = Core.Nothing
    , wifiMacAddresses = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1Device
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1Device"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1Device Core.<$>
                   (o Core..:? "androidSpecificAttributes") Core.<*>
                     (o Core..:? "assetTag")
                     Core.<*> (o Core..:? "basebandVersion")
                     Core.<*> (o Core..:? "bootloaderVersion")
                     Core.<*> (o Core..:? "brand")
                     Core.<*> (o Core..:? "buildNumber")
                     Core.<*> (o Core..:? "compromisedState")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deviceId")
                     Core.<*> (o Core..:? "deviceType")
                     Core.<*> (o Core..:? "enabledDeveloperOptions")
                     Core.<*> (o Core..:? "enabledUsbDebugging")
                     Core.<*> (o Core..:? "encryptionState")
                     Core.<*>
                     (o Core..:? "endpointVerificationSpecificAttributes")
                     Core.<*> (o Core..:? "hostname")
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
                     Core.<*> (o Core..:? "unifiedDeviceId")
                     Core.<*> (o Core..:? "wifiMacAddresses"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1Device
         where
        toJSON GoogleAppsCloudidentityDevicesV1Device{..}
          = Core.object
              (Core.catMaybes
                 [("androidSpecificAttributes" Core..=) Core.<$>
                    androidSpecificAttributes,
                  ("assetTag" Core..=) Core.<$> assetTag,
                  ("basebandVersion" Core..=) Core.<$> basebandVersion,
                  ("bootloaderVersion" Core..=) Core.<$>
                    bootloaderVersion,
                  ("brand" Core..=) Core.<$> brand,
                  ("buildNumber" Core..=) Core.<$> buildNumber,
                  ("compromisedState" Core..=) Core.<$>
                    compromisedState,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deviceId" Core..=) Core.<$> deviceId,
                  ("deviceType" Core..=) Core.<$> deviceType,
                  ("enabledDeveloperOptions" Core..=) Core.<$>
                    enabledDeveloperOptions,
                  ("enabledUsbDebugging" Core..=) Core.<$>
                    enabledUsbDebugging,
                  ("encryptionState" Core..=) Core.<$> encryptionState,
                  ("endpointVerificationSpecificAttributes" Core..=)
                    Core.<$> endpointVerificationSpecificAttributes,
                  ("hostname" Core..=) Core.<$> hostname,
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
                  ("securityPatchTime" Core..=) Core.<$>
                    securityPatchTime,
                  ("serialNumber" Core..=) Core.<$> serialNumber,
                  ("unifiedDeviceId" Core..=) Core.<$> unifiedDeviceId,
                  ("wifiMacAddresses" Core..=) Core.<$>
                    wifiMacAddresses])


-- | Represents a user\'s use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user\'s use of a Device
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1DeviceUser' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser
    {
      -- | Compromised State of the DeviceUser object
      compromisedState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState)
      -- | When the user first signed in to the device
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Most recent time when user registered with this service.
    , firstSyncTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Default locale used on device, in IETF BCP-47 format.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Output only. Last time when user synced with policies.
    , lastSyncTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Management state of the user on the device.
    , managementState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the DeviceUser in format: @devices\/{device}\/deviceUsers\/{device_user}@, where @device_user@ uniquely identifies a user\'s use of a device.
    , name :: (Core.Maybe Core.Text)
      -- | Password state of the DeviceUser object
    , passwordState :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState)
      -- | Output only. User agent on the device for this specific user
    , userAgent :: (Core.Maybe Core.Text)
      -- | Email address of the user registered on the device.
    , userEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeviceUser' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1DeviceUser 
    ::  GoogleAppsCloudidentityDevicesV1DeviceUser
newGoogleAppsCloudidentityDevicesV1DeviceUser =
  GoogleAppsCloudidentityDevicesV1DeviceUser
    { compromisedState = Core.Nothing
    , createTime = Core.Nothing
    , firstSyncTime = Core.Nothing
    , languageCode = Core.Nothing
    , lastSyncTime = Core.Nothing
    , managementState = Core.Nothing
    , name = Core.Nothing
    , passwordState = Core.Nothing
    , userAgent = Core.Nothing
    , userEmail = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1DeviceUser
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1DeviceUser"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1DeviceUser Core.<$>
                   (o Core..:? "compromisedState") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "firstSyncTime")
                     Core.<*> (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "lastSyncTime")
                     Core.<*> (o Core..:? "managementState")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "passwordState")
                     Core.<*> (o Core..:? "userAgent")
                     Core.<*> (o Core..:? "userEmail"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1DeviceUser
         where
        toJSON GoogleAppsCloudidentityDevicesV1DeviceUser{..}
          = Core.object
              (Core.catMaybes
                 [("compromisedState" Core..=) Core.<$>
                    compromisedState,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("firstSyncTime" Core..=) Core.<$> firstSyncTime,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("lastSyncTime" Core..=) Core.<$> lastSyncTime,
                  ("managementState" Core..=) Core.<$> managementState,
                  ("name" Core..=) Core.<$> name,
                  ("passwordState" Core..=) Core.<$> passwordState,
                  ("userAgent" Core..=) Core.<$> userAgent,
                  ("userEmail" Core..=) Core.<$> userEmail])


-- | Resource representing the <https://cloud.google.com/endpoint-verification/docs/device-information Endpoint Verification-specific attributes> of a device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes = GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    {
      -- | <https://cloud.google.com/endpoint-verification/docs/device-information Additional signals> reported by Endpoint Verification. It includes the following attributes: * Non-configurable attributes: hotfixes, av/installed, av/enabled, windows/domain/name, is/os/native/firewall/enabled, and is/secure/boot_enabled. * <https://cloud.google.com/endpoint-verification/docs/collect-config-attributes Configurable attributes>: file, folder, and binary attributes; registry entries; and properties in a plist.
      additionalSignals :: (Core.Maybe
   GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals)
      -- | Details of browser profiles reported by Endpoint Verification.
    , browserAttributes :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1BrowserAttributes])
      -- | Details of certificates.
    , certificateAttributes :: (Core.Maybe
   [GoogleAppsCloudidentityDevicesV1CertificateAttributes])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes 
    ::  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes =
  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    { additionalSignals = Core.Nothing
    , browserAttributes = Core.Nothing
    , certificateAttributes = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
                   Core.<$>
                   (o Core..:? "additionalSignals") Core.<*>
                     (o Core..:? "browserAttributes")
                     Core.<*> (o Core..:? "certificateAttributes"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes{..}
          = Core.object
              (Core.catMaybes
                 [("additionalSignals" Core..=) Core.<$>
                    additionalSignals,
                  ("browserAttributes" Core..=) Core.<$>
                    browserAttributes,
                  ("certificateAttributes" Core..=) Core.<$>
                    certificateAttributes])


-- | <https://cloud.google.com/endpoint-verification/docs/device-information Additional signals> reported by Endpoint Verification. It includes the following attributes: * Non-configurable attributes: hotfixes, av/installed, av/enabled, windows/domain/name, is/os/native/firewall/enabled, and is/secure/boot_enabled. * <https://cloud.google.com/endpoint-verification/docs/collect-config-attributes Configurable attributes>: file, folder, and binary attributes; registry entries; and properties in a plist.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals = GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals additional =
  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
    {additional = additional}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals{..}
          = Core.toJSON additional


-- | Response message that is returned in ListClientStates.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListClientStatesResponse = GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    {
      -- | Client states meeting the list restrictions.
      clientStates :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1ClientState])
      -- | Token to retrieve the next page of results. Empty if there are no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListClientStatesResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse 
    ::  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    {clientStates = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ListClientStatesResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
                   Core.<$>
                   (o Core..:? "clientStates") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListClientStatesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("clientStates" Core..=) Core.<$> clientStates,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message that is returned from the ListDeviceUsers method.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse = GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    {
      -- | Devices meeting the list restrictions.
      deviceUsers :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1DeviceUser])
      -- | Token to retrieve the next page of results. Empty if there are no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse 
    ::  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    {deviceUsers = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
                   Core.<$>
                   (o Core..:? "deviceUsers") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceUsers" Core..=) Core.<$> deviceUsers,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message that is returned from the ListDevices method.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListDevicesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDevicesResponse = GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    {
      -- | Devices meeting the list restrictions.
      devices :: (Core.Maybe [GoogleAppsCloudidentityDevicesV1Device])
      -- | Token to retrieve the next page of results. Empty if there are no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDevicesResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListDevicesResponse 
    ::  GoogleAppsCloudidentityDevicesV1ListDevicesResponse
newGoogleAppsCloudidentityDevicesV1ListDevicesResponse =
  GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    {devices = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ListDevicesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ListDevicesResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListDevicesResponse
                   Core.<$>
                   (o Core..:? "devices") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ListDevicesResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListDevicesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("devices" Core..=) Core.<$> devices,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Metadata for ListEndpointApps LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata = GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata 
    ::  GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata =
  GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Response containing resource names of the DeviceUsers associated with the caller\'s credentials.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse = GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    {
      -- | The customer resource name that may be passed back to other Devices API methods such as List, Get, etc.
      customer :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/apis/design/resource_names Resource names> of the DeviceUsers in the format: @devices\/{device}\/deviceUsers\/{user_resource}@, where device is the unique ID assigned to a Device and user_resource is the unique user ID
    , names :: (Core.Maybe [Core.Text])
      -- | Token to retrieve the next page of results. Empty if there are no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse 
    ::  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    { customer = Core.Nothing
    , names = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
                   Core.<$>
                   (o Core..:? "customer") Core.<*> (o Core..:? "names")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer,
                  ("names" Core..=) Core.<$> names,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Metadata for SignoutDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for UpdateClientState LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata = GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata 
    ::  GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata =
  GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for UpdateDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata = GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata 
    ::  GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for WipeDevice LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata = GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata =
  GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for wiping all data on the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceRequest = GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
      -- | Optional. Specifies if a user is able to factory reset a device after a Device Wipe. On iOS, this is called \"Activation Lock\", while on Android, this is known as \"Factory Reset Protection\". If true, this protection will be removed from the device, so that a user can successfully factory reset. If false, the setting is untouched on the device.
    , removeResetLock :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    {customer = Core.Nothing, removeResetLock = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
                   Core.<$>
                   (o Core..:? "customer") Core.<*>
                     (o Core..:? "removeResetLock"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer,
                  ("removeResetLock" Core..=) Core.<$>
                    removeResetLock])


-- | Response message for wiping all data on the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceResponse = GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    {
      -- | Resultant Device object for the action. Note that asset tags will not be returned in the device object.
      device :: (Core.Maybe GoogleAppsCloudidentityDevicesV1Device)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse {device = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
                   Core.<$> (o Core..:? "device"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceResponse{..}
          = Core.object
              (Core.catMaybes [("device" Core..=) Core.<$> device])


-- | Metadata for WipeDeviceUser LRO.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata' smart constructor.
data GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata = GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata"
              (\ o ->
                 Core.pure
                   GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata)

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for starting an account wipe on device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    {
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
      customer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    {customer = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
                   Core.<$> (o Core..:? "customer"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer])


-- | Response message for wiping the user\'s account from the device.
--
-- /See:/ 'newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    {
      -- | Resultant DeviceUser object for the action.
      deviceUser :: (Core.Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse' with the minimum fields required to make a request.
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse 
    ::  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    {deviceUser = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
                   Core.<$> (o Core..:? "deviceUser"))

instance Core.ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceUser" Core..=) Core.<$> deviceUser])


-- | A group within the Cloud Identity Groups API. A @Group@ is a collection of entities, where each entity is either a user, another group, or a service account.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
    {
      -- | Output only. Additional group keys associated with the Group.
      additionalGroupKeys :: (Core.Maybe [EntityKey])
      -- | Output only. The time when the @Group@ was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | An extended description to help users determine the purpose of a @Group@. Must not be longer than 4,096 characters.
    , description :: (Core.Maybe Core.Text)
      -- | The display name of the @Group@.
    , displayName :: (Core.Maybe Core.Text)
      -- | Optional. Dynamic group metadata like queries and status.
    , dynamicGroupMetadata :: (Core.Maybe DynamicGroupMetadata)
      -- | Required. The @EntityKey@ of the @Group@.
    , groupKey :: (Core.Maybe EntityKey)
      -- | Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of @cloudidentity.googleapis.com\/groups.discussion_forum@ and an empty value. Existing Google Groups can have an additional label with a key of @cloudidentity.googleapis.com\/groups.security@ and an empty value added to them. __This is an immutable change and the security label cannot be removed once added.__ Dynamic groups have a label with a key of @cloudidentity.googleapis.com\/groups.dynamic@. Identity-mapped groups for Cloud Search have a label with a key of @system\/groups\/external@ and an empty value.
    , labels :: (Core.Maybe Group_Labels)
      -- | Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@. Shall be of the form @groups\/{group}@.
    , name :: (Core.Maybe Core.Text)
      -- | Required. Immutable. The resource name of the entity under which this @Group@ resides in the Cloud Identity resource hierarchy. Must be of the form @identitysources\/{identity_source}@ for external <https://support.google.com/a/answer/9039510 identity-mapped groups> or @customers\/{customer_id}@ for Google Groups. The @customer_id@ must begin with \"C\" (for example, \'C046psxkn\'). [Find your customer ID.] (https:\/\/support.google.com\/cloudidentity\/answer\/10070793)
    , parent :: (Core.Maybe Core.Text)
      -- | Output only. The time when the @Group@ was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup 
    ::  Group
newGroup =
  Group
    { additionalGroupKeys = Core.Nothing
    , createTime = Core.Nothing
    , description = Core.Nothing
    , displayName = Core.Nothing
    , dynamicGroupMetadata = Core.Nothing
    , groupKey = Core.Nothing
    , labels = Core.Nothing
    , name = Core.Nothing
    , parent = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Group where
        parseJSON
          = Core.withObject "Group"
              (\ o ->
                 Group Core.<$>
                   (o Core..:? "additionalGroupKeys") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "dynamicGroupMetadata")
                     Core.<*> (o Core..:? "groupKey")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "parent")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Group where
        toJSON Group{..}
          = Core.object
              (Core.catMaybes
                 [("additionalGroupKeys" Core..=) Core.<$>
                    additionalGroupKeys,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("dynamicGroupMetadata" Core..=) Core.<$>
                    dynamicGroupMetadata,
                  ("groupKey" Core..=) Core.<$> groupKey,
                  ("labels" Core..=) Core.<$> labels,
                  ("name" Core..=) Core.<$> name,
                  ("parent" Core..=) Core.<$> parent,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of @cloudidentity.googleapis.com\/groups.discussion_forum@ and an empty value. Existing Google Groups can have an additional label with a key of @cloudidentity.googleapis.com\/groups.security@ and an empty value added to them. __This is an immutable change and the security label cannot be removed once added.__ Dynamic groups have a label with a key of @cloudidentity.googleapis.com\/groups.dynamic@. Identity-mapped groups for Cloud Search have a label with a key of @system\/groups\/external@ and an empty value.
--
-- /See:/ 'newGroup_Labels' smart constructor.
newtype Group_Labels = Group_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group_Labels' with the minimum fields required to make a request.
newGroup_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Group_Labels
newGroup_Labels additional = Group_Labels {additional = additional}

instance Core.FromJSON Group_Labels where
        parseJSON
          = Core.withObject "Group_Labels"
              (\ o ->
                 Group_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Group_Labels where
        toJSON Group_Labels{..} = Core.toJSON additional


-- | Message representing a transitive group of a user or a group.
--
-- /See:/ 'newGroupRelation' smart constructor.
data GroupRelation = GroupRelation
    {
      -- | Display name for this group.
      displayName :: (Core.Maybe Core.Text)
      -- | Resource name for this group.
    , group' :: (Core.Maybe Core.Text)
      -- | Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.
    , groupKey :: (Core.Maybe EntityKey)
      -- | Labels for Group resource.
    , labels :: (Core.Maybe GroupRelation_Labels)
      -- | The relation between the member and the transitive group.
    , relationType :: (Core.Maybe GroupRelation_RelationType)
      -- | Membership roles of the member for the group.
    , roles :: (Core.Maybe [TransitiveMembershipRole])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupRelation' with the minimum fields required to make a request.
newGroupRelation 
    ::  GroupRelation
newGroupRelation =
  GroupRelation
    { displayName = Core.Nothing
    , group' = Core.Nothing
    , groupKey = Core.Nothing
    , labels = Core.Nothing
    , relationType = Core.Nothing
    , roles = Core.Nothing
    }

instance Core.FromJSON GroupRelation where
        parseJSON
          = Core.withObject "GroupRelation"
              (\ o ->
                 GroupRelation Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "group")
                     Core.<*> (o Core..:? "groupKey")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "relationType")
                     Core.<*> (o Core..:? "roles"))

instance Core.ToJSON GroupRelation where
        toJSON GroupRelation{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("group" Core..=) Core.<$> group',
                  ("groupKey" Core..=) Core.<$> groupKey,
                  ("labels" Core..=) Core.<$> labels,
                  ("relationType" Core..=) Core.<$> relationType,
                  ("roles" Core..=) Core.<$> roles])


-- | Labels for Group resource.
--
-- /See:/ 'newGroupRelation_Labels' smart constructor.
newtype GroupRelation_Labels = GroupRelation_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupRelation_Labels' with the minimum fields required to make a request.
newGroupRelation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GroupRelation_Labels
newGroupRelation_Labels additional =
  GroupRelation_Labels {additional = additional}

instance Core.FromJSON GroupRelation_Labels where
        parseJSON
          = Core.withObject "GroupRelation_Labels"
              (\ o ->
                 GroupRelation_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GroupRelation_Labels where
        toJSON GroupRelation_Labels{..}
          = Core.toJSON additional


-- | Credential for verifying signatures produced by the Identity Provider.
--
-- /See:/ 'newIdpCredential' smart constructor.
data IdpCredential = IdpCredential
    {
      -- | Output only. Information of a DSA public key.
      dsaKeyInfo :: (Core.Maybe DsaPublicKeyInfo)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the credential.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Information of a RSA public key.
    , rsaKeyInfo :: (Core.Maybe RsaPublicKeyInfo)
      -- | Output only. Time when the @IdpCredential@ was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdpCredential' with the minimum fields required to make a request.
newIdpCredential 
    ::  IdpCredential
newIdpCredential =
  IdpCredential
    { dsaKeyInfo = Core.Nothing
    , name = Core.Nothing
    , rsaKeyInfo = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON IdpCredential where
        parseJSON
          = Core.withObject "IdpCredential"
              (\ o ->
                 IdpCredential Core.<$>
                   (o Core..:? "dsaKeyInfo") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "rsaKeyInfo")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON IdpCredential where
        toJSON IdpCredential{..}
          = Core.object
              (Core.catMaybes
                 [("dsaKeyInfo" Core..=) Core.<$> dsaKeyInfo,
                  ("name" Core..=) Core.<$> name,
                  ("rsaKeyInfo" Core..=) Core.<$> rsaKeyInfo,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | A <https://www.oasis-open.org/standards#samlv2.0 SAML 2.0> federation between a Google enterprise customer and a SAML identity provider.
--
-- /See:/ 'newInboundSamlSsoProfile' smart constructor.
data InboundSamlSsoProfile = InboundSamlSsoProfile
    {
      -- | Immutable. The customer. For example: @customers\/C0123abc@.
      customer :: (Core.Maybe Core.Text)
      -- | Human-readable name of the SAML SSO profile.
    , displayName :: (Core.Maybe Core.Text)
      -- | SAML identity provider configuration.
    , idpConfig :: (Core.Maybe SamlIdpConfig)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the SAML SSO profile.
    , name :: (Core.Maybe Core.Text)
      -- | SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
    , spConfig :: (Core.Maybe SamlSpConfig)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InboundSamlSsoProfile' with the minimum fields required to make a request.
newInboundSamlSsoProfile 
    ::  InboundSamlSsoProfile
newInboundSamlSsoProfile =
  InboundSamlSsoProfile
    { customer = Core.Nothing
    , displayName = Core.Nothing
    , idpConfig = Core.Nothing
    , name = Core.Nothing
    , spConfig = Core.Nothing
    }

instance Core.FromJSON InboundSamlSsoProfile where
        parseJSON
          = Core.withObject "InboundSamlSsoProfile"
              (\ o ->
                 InboundSamlSsoProfile Core.<$>
                   (o Core..:? "customer") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "idpConfig")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "spConfig"))

instance Core.ToJSON InboundSamlSsoProfile where
        toJSON InboundSamlSsoProfile{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("idpConfig" Core..=) Core.<$> idpConfig,
                  ("name" Core..=) Core.<$> name,
                  ("spConfig" Core..=) Core.<$> spConfig])


-- | Targets with \"set\" SSO assignments and their respective assignments.
--
-- /See:/ 'newInboundSsoAssignment' smart constructor.
data InboundSsoAssignment = InboundSsoAssignment
    {
      -- | Immutable. The customer. For example: @customers\/C0123abc@.
      customer :: (Core.Maybe Core.Text)
      -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the Inbound SSO Assignment.
    , name :: (Core.Maybe Core.Text)
      -- | Must be zero (which is the default value so it can be omitted) for assignments with @target_org_unit@ set and must be greater-than-or-equal-to one for assignments with @target_group@ set.
    , rank :: (Core.Maybe Core.Int32)
      -- | SAML SSO details. Must be set if and only if @sso_mode@ is set to @SAML_SSO@.
    , samlSsoInfo :: (Core.Maybe SamlSsoInfo)
      -- | Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether\/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
    , signInBehavior :: (Core.Maybe SignInBehavior)
      -- | Inbound SSO behavior.
    , ssoMode :: (Core.Maybe InboundSsoAssignment_SsoMode)
      -- | Immutable. Must be of the form @groups\/{group}@.
    , targetGroup :: (Core.Maybe Core.Text)
      -- | Immutable. Must be of the form @orgUnits\/{org_unit}@.
    , targetOrgUnit :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InboundSsoAssignment' with the minimum fields required to make a request.
newInboundSsoAssignment 
    ::  InboundSsoAssignment
newInboundSsoAssignment =
  InboundSsoAssignment
    { customer = Core.Nothing
    , name = Core.Nothing
    , rank = Core.Nothing
    , samlSsoInfo = Core.Nothing
    , signInBehavior = Core.Nothing
    , ssoMode = Core.Nothing
    , targetGroup = Core.Nothing
    , targetOrgUnit = Core.Nothing
    }

instance Core.FromJSON InboundSsoAssignment where
        parseJSON
          = Core.withObject "InboundSsoAssignment"
              (\ o ->
                 InboundSsoAssignment Core.<$>
                   (o Core..:? "customer") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "rank")
                     Core.<*> (o Core..:? "samlSsoInfo")
                     Core.<*> (o Core..:? "signInBehavior")
                     Core.<*> (o Core..:? "ssoMode")
                     Core.<*> (o Core..:? "targetGroup")
                     Core.<*> (o Core..:? "targetOrgUnit"))

instance Core.ToJSON InboundSsoAssignment where
        toJSON InboundSsoAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer,
                  ("name" Core..=) Core.<$> name,
                  ("rank" Core..=) Core.<$> rank,
                  ("samlSsoInfo" Core..=) Core.<$> samlSsoInfo,
                  ("signInBehavior" Core..=) Core.<$> signInBehavior,
                  ("ssoMode" Core..=) Core.<$> ssoMode,
                  ("targetGroup" Core..=) Core.<$> targetGroup,
                  ("targetOrgUnit" Core..=) Core.<$> targetOrgUnit])


-- | Response for IsInvitableUser RPC.
--
-- /See:/ 'newIsInvitableUserResponse' smart constructor.
newtype IsInvitableUserResponse = IsInvitableUserResponse
    {
      -- | Returns true if the email address is invitable.
      isInvitableUser :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IsInvitableUserResponse' with the minimum fields required to make a request.
newIsInvitableUserResponse 
    ::  IsInvitableUserResponse
newIsInvitableUserResponse =
  IsInvitableUserResponse {isInvitableUser = Core.Nothing}

instance Core.FromJSON IsInvitableUserResponse where
        parseJSON
          = Core.withObject "IsInvitableUserResponse"
              (\ o ->
                 IsInvitableUserResponse Core.<$>
                   (o Core..:? "isInvitableUser"))

instance Core.ToJSON IsInvitableUserResponse where
        toJSON IsInvitableUserResponse{..}
          = Core.object
              (Core.catMaybes
                 [("isInvitableUser" Core..=) Core.<$>
                    isInvitableUser])


-- | Response message for ListGroups operation.
--
-- /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse
    {
      -- | Groups returned in response to list request. The results are not sorted.
      groups :: (Core.Maybe [Group])
      -- | Token to retrieve the next page of results, or empty if there are no more results available for listing.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
newListGroupsResponse 
    ::  ListGroupsResponse
newListGroupsResponse =
  ListGroupsResponse {groups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListGroupsResponse where
        parseJSON
          = Core.withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse Core.<$>
                   (o Core..:? "groups") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("groups" Core..=) Core.<$> groups,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response of the InboundSamlSsoProfilesService.ListIdpCredentials method.
--
-- /See:/ 'newListIdpCredentialsResponse' smart constructor.
data ListIdpCredentialsResponse = ListIdpCredentialsResponse
    {
      -- | The IdpCredentials from the specified InboundSamlSsoProfile.
      idpCredentials :: (Core.Maybe [IdpCredential])
      -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListIdpCredentialsResponse' with the minimum fields required to make a request.
newListIdpCredentialsResponse 
    ::  ListIdpCredentialsResponse
newListIdpCredentialsResponse =
  ListIdpCredentialsResponse
    {idpCredentials = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListIdpCredentialsResponse
         where
        parseJSON
          = Core.withObject "ListIdpCredentialsResponse"
              (\ o ->
                 ListIdpCredentialsResponse Core.<$>
                   (o Core..:? "idpCredentials") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListIdpCredentialsResponse where
        toJSON ListIdpCredentialsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("idpCredentials" Core..=) Core.<$> idpCredentials,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response of the InboundSamlSsoProfilesService.ListInboundSamlSsoProfiles method.
--
-- /See:/ 'newListInboundSamlSsoProfilesResponse' smart constructor.
data ListInboundSamlSsoProfilesResponse = ListInboundSamlSsoProfilesResponse
    {
      -- | List of InboundSamlSsoProfiles.
      inboundSamlSsoProfiles :: (Core.Maybe [InboundSamlSsoProfile])
      -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInboundSamlSsoProfilesResponse' with the minimum fields required to make a request.
newListInboundSamlSsoProfilesResponse 
    ::  ListInboundSamlSsoProfilesResponse
newListInboundSamlSsoProfilesResponse =
  ListInboundSamlSsoProfilesResponse
    {inboundSamlSsoProfiles = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           ListInboundSamlSsoProfilesResponse
         where
        parseJSON
          = Core.withObject
              "ListInboundSamlSsoProfilesResponse"
              (\ o ->
                 ListInboundSamlSsoProfilesResponse Core.<$>
                   (o Core..:? "inboundSamlSsoProfiles") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           ListInboundSamlSsoProfilesResponse
         where
        toJSON ListInboundSamlSsoProfilesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("inboundSamlSsoProfiles" Core..=) Core.<$>
                    inboundSamlSsoProfiles,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response of the InboundSsoAssignmentsService.ListInboundSsoAssignments method.
--
-- /See:/ 'newListInboundSsoAssignmentsResponse' smart constructor.
data ListInboundSsoAssignmentsResponse = ListInboundSsoAssignmentsResponse
    {
      -- | The assignments.
      inboundSsoAssignments :: (Core.Maybe [InboundSsoAssignment])
      -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInboundSsoAssignmentsResponse' with the minimum fields required to make a request.
newListInboundSsoAssignmentsResponse 
    ::  ListInboundSsoAssignmentsResponse
newListInboundSsoAssignmentsResponse =
  ListInboundSsoAssignmentsResponse
    {inboundSsoAssignments = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           ListInboundSsoAssignmentsResponse
         where
        parseJSON
          = Core.withObject "ListInboundSsoAssignmentsResponse"
              (\ o ->
                 ListInboundSsoAssignmentsResponse Core.<$>
                   (o Core..:? "inboundSsoAssignments") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           ListInboundSsoAssignmentsResponse
         where
        toJSON ListInboundSsoAssignmentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("inboundSsoAssignments" Core..=) Core.<$>
                    inboundSsoAssignments,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for MembershipsService.ListMemberships.
--
-- /See:/ 'newListMembershipsResponse' smart constructor.
data ListMembershipsResponse = ListMembershipsResponse
    {
      -- | The @Membership@s under the specified @parent@.
      memberships :: (Core.Maybe [Membership])
      -- | A continuation token to retrieve the next page of results, or empty if there are no more results available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
newListMembershipsResponse 
    ::  ListMembershipsResponse
newListMembershipsResponse =
  ListMembershipsResponse
    {memberships = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListMembershipsResponse where
        parseJSON
          = Core.withObject "ListMembershipsResponse"
              (\ o ->
                 ListMembershipsResponse Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListMembershipsResponse where
        toJSON ListMembershipsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for PoliciesService.ListPolicies.
--
-- /See:/ 'newListPoliciesResponse' smart constructor.
data ListPoliciesResponse = ListPoliciesResponse
    {
      -- | The pagination token to retrieve the next page of results. If this field is empty, there are no subsequent pages.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The results
    , policies :: (Core.Maybe [Policy])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPoliciesResponse' with the minimum fields required to make a request.
newListPoliciesResponse 
    ::  ListPoliciesResponse
newListPoliciesResponse =
  ListPoliciesResponse {nextPageToken = Core.Nothing, policies = Core.Nothing}

instance Core.FromJSON ListPoliciesResponse where
        parseJSON
          = Core.withObject "ListPoliciesResponse"
              (\ o ->
                 ListPoliciesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "policies"))

instance Core.ToJSON ListPoliciesResponse where
        toJSON ListPoliciesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("policies" Core..=) Core.<$> policies])


-- | Response message for UserInvitation listing request.
--
-- /See:/ 'newListUserInvitationsResponse' smart constructor.
data ListUserInvitationsResponse = ListUserInvitationsResponse
    {
      -- | The token for the next page. If not empty, indicates that there may be more @UserInvitation@ resources that match the listing request; this value can be used in a subsequent ListUserInvitationsRequest to get continued results with the current list call.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of UserInvitation resources.
    , userInvitations :: (Core.Maybe [UserInvitation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserInvitationsResponse' with the minimum fields required to make a request.
newListUserInvitationsResponse 
    ::  ListUserInvitationsResponse
newListUserInvitationsResponse =
  ListUserInvitationsResponse
    {nextPageToken = Core.Nothing, userInvitations = Core.Nothing}

instance Core.FromJSON ListUserInvitationsResponse
         where
        parseJSON
          = Core.withObject "ListUserInvitationsResponse"
              (\ o ->
                 ListUserInvitationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "userInvitations"))

instance Core.ToJSON ListUserInvitationsResponse
         where
        toJSON ListUserInvitationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("userInvitations" Core..=) Core.<$>
                    userInvitations])


-- | The response message for GroupsService.LookupGroupName.
--
-- /See:/ 'newLookupGroupNameResponse' smart constructor.
newtype LookupGroupNameResponse = LookupGroupNameResponse
    {
      -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the looked-up @Group@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupGroupNameResponse' with the minimum fields required to make a request.
newLookupGroupNameResponse 
    ::  LookupGroupNameResponse
newLookupGroupNameResponse = LookupGroupNameResponse {name = Core.Nothing}

instance Core.FromJSON LookupGroupNameResponse where
        parseJSON
          = Core.withObject "LookupGroupNameResponse"
              (\ o ->
                 LookupGroupNameResponse Core.<$> (o Core..:? "name"))

instance Core.ToJSON LookupGroupNameResponse where
        toJSON LookupGroupNameResponse{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | The response message for MembershipsService.LookupMembershipName.
--
-- /See:/ 'newLookupMembershipNameResponse' smart constructor.
newtype LookupMembershipNameResponse = LookupMembershipNameResponse
    {
      -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the looked-up @Membership@. Must be of the form @groups\/{group}\/memberships\/{membership}@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupMembershipNameResponse' with the minimum fields required to make a request.
newLookupMembershipNameResponse 
    ::  LookupMembershipNameResponse
newLookupMembershipNameResponse =
  LookupMembershipNameResponse {name = Core.Nothing}

instance Core.FromJSON LookupMembershipNameResponse
         where
        parseJSON
          = Core.withObject "LookupMembershipNameResponse"
              (\ o ->
                 LookupMembershipNameResponse Core.<$>
                   (o Core..:? "name"))

instance Core.ToJSON LookupMembershipNameResponse
         where
        toJSON LookupMembershipNameResponse{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | Message representing a transitive membership of a group.
--
-- /See:/ 'newMemberRelation' smart constructor.
data MemberRelation = MemberRelation
    {
      -- | Resource name for this member.
      member :: (Core.Maybe Core.Text)
      -- | Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.
    , preferredMemberKey :: (Core.Maybe [EntityKey])
      -- | The relation between the group and the transitive member.
    , relationType :: (Core.Maybe MemberRelation_RelationType)
      -- | The membership role details (i.e name of role and expiry time).
    , roles :: (Core.Maybe [TransitiveMembershipRole])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberRelation' with the minimum fields required to make a request.
newMemberRelation 
    ::  MemberRelation
newMemberRelation =
  MemberRelation
    { member = Core.Nothing
    , preferredMemberKey = Core.Nothing
    , relationType = Core.Nothing
    , roles = Core.Nothing
    }

instance Core.FromJSON MemberRelation where
        parseJSON
          = Core.withObject "MemberRelation"
              (\ o ->
                 MemberRelation Core.<$>
                   (o Core..:? "member") Core.<*>
                     (o Core..:? "preferredMemberKey")
                     Core.<*> (o Core..:? "relationType")
                     Core.<*> (o Core..:? "roles"))

instance Core.ToJSON MemberRelation where
        toJSON MemberRelation{..}
          = Core.object
              (Core.catMaybes
                 [("member" Core..=) Core.<$> member,
                  ("preferredMemberKey" Core..=) Core.<$>
                    preferredMemberKey,
                  ("relationType" Core..=) Core.<$> relationType,
                  ("roles" Core..=) Core.<$> roles])


-- | The definition of MemberRestriction
--
-- /See:/ 'newMemberRestriction' smart constructor.
data MemberRestriction = MemberRestriction
    {
      -- | The evaluated state of this restriction on a group.
      evaluation :: (Core.Maybe RestrictionEvaluation)
      -- | Member Restriction as defined by CEL expression. Supported restrictions are: @member.customer_id@ and @member.type@. Valid values for @member.type@ are @1@, @2@ and @3@. They correspond to USER, SERVICE_ACCOUNT, and GROUP respectively. The value for @member.customer_id@ only supports @groupCustomerId()@ currently which means the customer id of the group will be used for restriction. Supported operators are @&&@, @||@ and @==@, corresponding to AND, OR, and EQUAL. Examples: Allow only service accounts of given customer to be members. @member.type == 2 && member.customer_id == groupCustomerId()@ Allow only users or groups to be members. @member.type == 1 || member.type == 3@
    , query :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberRestriction' with the minimum fields required to make a request.
newMemberRestriction 
    ::  MemberRestriction
newMemberRestriction =
  MemberRestriction {evaluation = Core.Nothing, query = Core.Nothing}

instance Core.FromJSON MemberRestriction where
        parseJSON
          = Core.withObject "MemberRestriction"
              (\ o ->
                 MemberRestriction Core.<$>
                   (o Core..:? "evaluation") Core.<*>
                     (o Core..:? "query"))

instance Core.ToJSON MemberRestriction where
        toJSON MemberRestriction{..}
          = Core.object
              (Core.catMaybes
                 [("evaluation" Core..=) Core.<$> evaluation,
                  ("query" Core..=) Core.<$> query])


-- | A membership within the Cloud Identity Groups API. A @Membership@ defines a relationship between a @Group@ and an entity belonging to that @Group@, referred to as a \"member\".
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
    {
      -- | Output only. The time when the @Membership@ was created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Delivery setting associated with the membership.
    , deliverySetting :: (Core.Maybe Membership_DeliverySetting)
      -- | Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@. Shall be of the form @groups\/{group}\/memberships\/{membership}@.
    , name :: (Core.Maybe Core.Text)
      -- | Required. Immutable. The @EntityKey@ of the member.
    , preferredMemberKey :: (Core.Maybe EntityKey)
      -- | The @MembershipRole@s that apply to the @Membership@. If unspecified, defaults to a single @MembershipRole@ with @name@ @MEMBER@. Must not contain duplicate @MembershipRole@s with the same @name@.
    , roles :: (Core.Maybe [MembershipRole])
      -- | Output only. The type of the membership.
    , type' :: (Core.Maybe Membership_Type)
      -- | Output only. The time when the @Membership@ was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership 
    ::  Membership
newMembership =
  Membership
    { createTime = Core.Nothing
    , deliverySetting = Core.Nothing
    , name = Core.Nothing
    , preferredMemberKey = Core.Nothing
    , roles = Core.Nothing
    , type' = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Membership where
        parseJSON
          = Core.withObject "Membership"
              (\ o ->
                 Membership Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "deliverySetting")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "preferredMemberKey")
                     Core.<*> (o Core..:? "roles")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Membership where
        toJSON Membership{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("deliverySetting" Core..=) Core.<$> deliverySetting,
                  ("name" Core..=) Core.<$> name,
                  ("preferredMemberKey" Core..=) Core.<$>
                    preferredMemberKey,
                  ("roles" Core..=) Core.<$> roles,
                  ("type" Core..=) Core.<$> type',
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Membership graph\'s path information as an adjacency list.
--
-- /See:/ 'newMembershipAdjacencyList' smart constructor.
data MembershipAdjacencyList = MembershipAdjacencyList
    {
      -- | Each edge contains information about the member that belongs to this group. Note: Fields returned here will help identify the specific Membership resource (e.g @name@, @preferred_member_key@ and @role@), but may not be a comprehensive list of all fields.
      edges :: (Core.Maybe [Membership])
      -- | Resource name of the group that the members belong to.
    , group' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipAdjacencyList' with the minimum fields required to make a request.
newMembershipAdjacencyList 
    ::  MembershipAdjacencyList
newMembershipAdjacencyList =
  MembershipAdjacencyList {edges = Core.Nothing, group' = Core.Nothing}

instance Core.FromJSON MembershipAdjacencyList where
        parseJSON
          = Core.withObject "MembershipAdjacencyList"
              (\ o ->
                 MembershipAdjacencyList Core.<$>
                   (o Core..:? "edges") Core.<*> (o Core..:? "group"))

instance Core.ToJSON MembershipAdjacencyList where
        toJSON MembershipAdjacencyList{..}
          = Core.object
              (Core.catMaybes
                 [("edges" Core..=) Core.<$> edges,
                  ("group" Core..=) Core.<$> group'])


-- | Message containing membership relation.
--
-- /See:/ 'newMembershipRelation' smart constructor.
data MembershipRelation = MembershipRelation
    {
      -- | An extended description to help users determine the purpose of a @Group@.
      description :: (Core.Maybe Core.Text)
      -- | The display name of the @Group@.
    , displayName :: (Core.Maybe Core.Text)
      -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@. Shall be of the form @groups\/{group_id}@.
    , group' :: (Core.Maybe Core.Text)
      -- | The @EntityKey@ of the @Group@.
    , groupKey :: (Core.Maybe EntityKey)
      -- | One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
    , labels :: (Core.Maybe MembershipRelation_Labels)
      -- | The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@. Shall be of the form @groups\/{group_id}\/memberships\/{membership_id}@.
    , membership :: (Core.Maybe Core.Text)
      -- | The @MembershipRole@s that apply to the @Membership@.
    , roles :: (Core.Maybe [MembershipRole])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRelation' with the minimum fields required to make a request.
newMembershipRelation 
    ::  MembershipRelation
newMembershipRelation =
  MembershipRelation
    { description = Core.Nothing
    , displayName = Core.Nothing
    , group' = Core.Nothing
    , groupKey = Core.Nothing
    , labels = Core.Nothing
    , membership = Core.Nothing
    , roles = Core.Nothing
    }

instance Core.FromJSON MembershipRelation where
        parseJSON
          = Core.withObject "MembershipRelation"
              (\ o ->
                 MembershipRelation Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "group")
                     Core.<*> (o Core..:? "groupKey")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "membership")
                     Core.<*> (o Core..:? "roles"))

instance Core.ToJSON MembershipRelation where
        toJSON MembershipRelation{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("group" Core..=) Core.<$> group',
                  ("groupKey" Core..=) Core.<$> groupKey,
                  ("labels" Core..=) Core.<$> labels,
                  ("membership" Core..=) Core.<$> membership,
                  ("roles" Core..=) Core.<$> roles])


-- | One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
--
-- /See:/ 'newMembershipRelation_Labels' smart constructor.
newtype MembershipRelation_Labels = MembershipRelation_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRelation_Labels' with the minimum fields required to make a request.
newMembershipRelation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> MembershipRelation_Labels
newMembershipRelation_Labels additional =
  MembershipRelation_Labels {additional = additional}

instance Core.FromJSON MembershipRelation_Labels
         where
        parseJSON
          = Core.withObject "MembershipRelation_Labels"
              (\ o ->
                 MembershipRelation_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON MembershipRelation_Labels where
        toJSON MembershipRelation_Labels{..}
          = Core.toJSON additional


-- | A membership role within the Cloud Identity Groups API. A @MembershipRole@ defines the privileges granted to a @Membership@.
--
-- /See:/ 'newMembershipRole' smart constructor.
data MembershipRole = MembershipRole
    {
      -- | The expiry details of the @MembershipRole@. Expiry details are only supported for @MEMBER@ @MembershipRoles@. May be set if @name@ is @MEMBER@. Must not be set if @name@ is any other value.
      expiryDetail :: (Core.Maybe ExpiryDetail)
      -- | The name of the @MembershipRole@. Must be one of @OWNER@, @MANAGER@, @MEMBER@.
    , name :: (Core.Maybe Core.Text)
      -- | Evaluations of restrictions applied to parent group on this membership.
    , restrictionEvaluations :: (Core.Maybe RestrictionEvaluations)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRole' with the minimum fields required to make a request.
newMembershipRole 
    ::  MembershipRole
newMembershipRole =
  MembershipRole
    { expiryDetail = Core.Nothing
    , name = Core.Nothing
    , restrictionEvaluations = Core.Nothing
    }

instance Core.FromJSON MembershipRole where
        parseJSON
          = Core.withObject "MembershipRole"
              (\ o ->
                 MembershipRole Core.<$>
                   (o Core..:? "expiryDetail") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "restrictionEvaluations"))

instance Core.ToJSON MembershipRole where
        toJSON MembershipRole{..}
          = Core.object
              (Core.catMaybes
                 [("expiryDetail" Core..=) Core.<$> expiryDetail,
                  ("name" Core..=) Core.<$> name,
                  ("restrictionEvaluations" Core..=) Core.<$>
                    restrictionEvaluations])


-- | The evaluated state of this restriction.
--
-- /See:/ 'newMembershipRoleRestrictionEvaluation' smart constructor.
newtype MembershipRoleRestrictionEvaluation = MembershipRoleRestrictionEvaluation
    {
      -- | Output only. The current state of the restriction
      state :: (Core.Maybe MembershipRoleRestrictionEvaluation_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipRoleRestrictionEvaluation' with the minimum fields required to make a request.
newMembershipRoleRestrictionEvaluation 
    ::  MembershipRoleRestrictionEvaluation
newMembershipRoleRestrictionEvaluation =
  MembershipRoleRestrictionEvaluation {state = Core.Nothing}

instance Core.FromJSON
           MembershipRoleRestrictionEvaluation
         where
        parseJSON
          = Core.withObject
              "MembershipRoleRestrictionEvaluation"
              (\ o ->
                 MembershipRoleRestrictionEvaluation Core.<$>
                   (o Core..:? "state"))

instance Core.ToJSON
           MembershipRoleRestrictionEvaluation
         where
        toJSON MembershipRoleRestrictionEvaluation{..}
          = Core.object
              (Core.catMaybes [("state" Core..=) Core.<$> state])


-- | The request message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'newModifyMembershipRolesRequest' smart constructor.
data ModifyMembershipRolesRequest = ModifyMembershipRolesRequest
    {
      -- | The @MembershipRole@s to be added. Adding or removing roles in the same request as updating roles is not supported. Must not be set if @update_roles_params@ is set.
      addRoles :: (Core.Maybe [MembershipRole])
      -- | The @name@s of the @MembershipRole@s to be removed. Adding or removing roles in the same request as updating roles is not supported. It is not possible to remove the @MEMBER@ @MembershipRole@. If you wish to delete a @Membership@, call MembershipsService.DeleteMembership instead. Must not contain @MEMBER@. Must not be set if @update_roles_params@ is set.
    , removeRoles :: (Core.Maybe [Core.Text])
      -- | The @MembershipRole@s to be updated. Updating roles in the same request as adding or removing roles is not supported. Must not be set if either @add_roles@ or @remove_roles@ is set.
    , updateRolesParams :: (Core.Maybe [UpdateMembershipRolesParams])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyMembershipRolesRequest' with the minimum fields required to make a request.
newModifyMembershipRolesRequest 
    ::  ModifyMembershipRolesRequest
newModifyMembershipRolesRequest =
  ModifyMembershipRolesRequest
    { addRoles = Core.Nothing
    , removeRoles = Core.Nothing
    , updateRolesParams = Core.Nothing
    }

instance Core.FromJSON ModifyMembershipRolesRequest
         where
        parseJSON
          = Core.withObject "ModifyMembershipRolesRequest"
              (\ o ->
                 ModifyMembershipRolesRequest Core.<$>
                   (o Core..:? "addRoles") Core.<*>
                     (o Core..:? "removeRoles")
                     Core.<*> (o Core..:? "updateRolesParams"))

instance Core.ToJSON ModifyMembershipRolesRequest
         where
        toJSON ModifyMembershipRolesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("addRoles" Core..=) Core.<$> addRoles,
                  ("removeRoles" Core..=) Core.<$> removeRoles,
                  ("updateRolesParams" Core..=) Core.<$>
                    updateRolesParams])


-- | The response message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'newModifyMembershipRolesResponse' smart constructor.
newtype ModifyMembershipRolesResponse = ModifyMembershipRolesResponse
    {
      -- | The @Membership@ resource after modifying its @MembershipRole@s.
      membership :: (Core.Maybe Membership)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyMembershipRolesResponse' with the minimum fields required to make a request.
newModifyMembershipRolesResponse 
    ::  ModifyMembershipRolesResponse
newModifyMembershipRolesResponse =
  ModifyMembershipRolesResponse {membership = Core.Nothing}

instance Core.FromJSON ModifyMembershipRolesResponse
         where
        parseJSON
          = Core.withObject "ModifyMembershipRolesResponse"
              (\ o ->
                 ModifyMembershipRolesResponse Core.<$>
                   (o Core..:? "membership"))

instance Core.ToJSON ModifyMembershipRolesResponse
         where
        toJSON ModifyMembershipRolesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("membership" Core..=) Core.<$> membership])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | A Policy resource binds an instance of a single Setting with the scope of a PolicyQuery. The Setting instance will be applied to all entities that satisfy the query.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Immutable. Customer that the Policy belongs to. The value is in the format \'customers\/{customerId}\'. The @customerId@ must begin with \"C\" To find your customer ID in Admin Console see https:\/\/support.google.com\/a\/answer\/10070793.
      customer :: (Core.Maybe Core.Text)
      -- | Output only. Identifier. The <https://cloud.google.com/apis/design/resource_names resource name> of the Policy. Format: policies\/{policy}.
    , name :: (Core.Maybe Core.Text)
      -- | Required. The PolicyQuery the Setting applies to.
    , policyQuery :: (Core.Maybe PolicyQuery)
      -- | Required. The Setting configured by this Policy.
    , setting :: (Core.Maybe Setting)
      -- | Output only. The type of the policy.
    , type' :: (Core.Maybe Policy_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy
    { customer = Core.Nothing
    , name = Core.Nothing
    , policyQuery = Core.Nothing
    , setting = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "customer") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "policyQuery")
                     Core.<*> (o Core..:? "setting")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("customer" Core..=) Core.<$> customer,
                  ("name" Core..=) Core.<$> name,
                  ("policyQuery" Core..=) Core.<$> policyQuery,
                  ("setting" Core..=) Core.<$> setting,
                  ("type" Core..=) Core.<$> type'])


-- | PolicyQuery
--
-- /See:/ 'newPolicyQuery' smart constructor.
data PolicyQuery = PolicyQuery
    {
      -- | Immutable. The group that the query applies to. This field is only set if there is a single value for group that satisfies all clauses of the query. If no group applies, this will be the empty string.
      group' :: (Core.Maybe Core.Text)
      -- | Required. Immutable. Non-empty default. The OrgUnit the query applies to. This field is only set if there is a single value for org_unit that satisfies all clauses of the query.
    , orgUnit :: (Core.Maybe Core.Text)
      -- | Immutable. The CEL query that defines which entities the Policy applies to (ex. a User entity). For details about CEL see https:\/\/opensource.google.com\/projects\/cel. The OrgUnits the Policy applies to are represented by a clause like so: entity.org/units.exists(org/unit, org/unit.org/unit/id == orgUnitId(\'{orgUnitId}\')) The Group the Policy applies to are represented by a clause like so: entity.groups.exists(group, group.group/id == groupId(\'{groupId}\')) The Licenses the Policy applies to are represented by a clause like so: entity.licenses.exists(license, license in [\'\/product\/{productId}\/sku\/{skuId}\']) The above clauses can be present in any combination, and used in conjunction with the &&, || and ! operators. The org_unit and group fields below are helper fields that contain the corresponding value(s) as the query to make the query easier to use.
    , query :: (Core.Maybe Core.Text)
      -- | Output only. The decimal sort order of this PolicyQuery. The value is relative to all other policies with the same setting type for the customer. (There are no duplicates within this set).
    , sortOrder :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyQuery' with the minimum fields required to make a request.
newPolicyQuery 
    ::  PolicyQuery
newPolicyQuery =
  PolicyQuery
    { group' = Core.Nothing
    , orgUnit = Core.Nothing
    , query = Core.Nothing
    , sortOrder = Core.Nothing
    }

instance Core.FromJSON PolicyQuery where
        parseJSON
          = Core.withObject "PolicyQuery"
              (\ o ->
                 PolicyQuery Core.<$>
                   (o Core..:? "group") Core.<*> (o Core..:? "orgUnit")
                     Core.<*> (o Core..:? "query")
                     Core.<*> (o Core..:? "sortOrder"))

instance Core.ToJSON PolicyQuery where
        toJSON PolicyQuery{..}
          = Core.object
              (Core.catMaybes
                 [("group" Core..=) Core.<$> group',
                  ("orgUnit" Core..=) Core.<$> orgUnit,
                  ("query" Core..=) Core.<$> query,
                  ("sortOrder" Core..=) Core.<$> sortOrder])


-- | The evaluated state of this restriction.
--
-- /See:/ 'newRestrictionEvaluation' smart constructor.
newtype RestrictionEvaluation = RestrictionEvaluation
    {
      -- | Output only. The current state of the restriction
      state :: (Core.Maybe RestrictionEvaluation_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictionEvaluation' with the minimum fields required to make a request.
newRestrictionEvaluation 
    ::  RestrictionEvaluation
newRestrictionEvaluation = RestrictionEvaluation {state = Core.Nothing}

instance Core.FromJSON RestrictionEvaluation where
        parseJSON
          = Core.withObject "RestrictionEvaluation"
              (\ o ->
                 RestrictionEvaluation Core.<$> (o Core..:? "state"))

instance Core.ToJSON RestrictionEvaluation where
        toJSON RestrictionEvaluation{..}
          = Core.object
              (Core.catMaybes [("state" Core..=) Core.<$> state])


-- | Evaluations of restrictions applied to parent group on this membership.
--
-- /See:/ 'newRestrictionEvaluations' smart constructor.
newtype RestrictionEvaluations = RestrictionEvaluations
    {
      -- | Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
      memberRestrictionEvaluation :: (Core.Maybe MembershipRoleRestrictionEvaluation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictionEvaluations' with the minimum fields required to make a request.
newRestrictionEvaluations 
    ::  RestrictionEvaluations
newRestrictionEvaluations =
  RestrictionEvaluations {memberRestrictionEvaluation = Core.Nothing}

instance Core.FromJSON RestrictionEvaluations where
        parseJSON
          = Core.withObject "RestrictionEvaluations"
              (\ o ->
                 RestrictionEvaluations Core.<$>
                   (o Core..:? "memberRestrictionEvaluation"))

instance Core.ToJSON RestrictionEvaluations where
        toJSON RestrictionEvaluations{..}
          = Core.object
              (Core.catMaybes
                 [("memberRestrictionEvaluation" Core..=) Core.<$>
                    memberRestrictionEvaluation])


-- | Information of a RSA public key.
--
-- /See:/ 'newRsaPublicKeyInfo' smart constructor.
newtype RsaPublicKeyInfo = RsaPublicKeyInfo
    {
      -- | Key size in bits (size of the modulus).
      keySize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RsaPublicKeyInfo' with the minimum fields required to make a request.
newRsaPublicKeyInfo 
    ::  RsaPublicKeyInfo
newRsaPublicKeyInfo = RsaPublicKeyInfo {keySize = Core.Nothing}

instance Core.FromJSON RsaPublicKeyInfo where
        parseJSON
          = Core.withObject "RsaPublicKeyInfo"
              (\ o ->
                 RsaPublicKeyInfo Core.<$> (o Core..:? "keySize"))

instance Core.ToJSON RsaPublicKeyInfo where
        toJSON RsaPublicKeyInfo{..}
          = Core.object
              (Core.catMaybes
                 [("keySize" Core..=) Core.<$> keySize])


-- | SAML IDP (identity provider) configuration.
--
-- /See:/ 'newSamlIdpConfig' smart constructor.
data SamlIdpConfig = SamlIdpConfig
    {
      -- | The __Change Password URL__ of the identity provider. Users will be sent to this URL when changing their passwords at @myaccount.google.com@. This takes precedence over the change password URL configured at customer-level. Must use @HTTPS@.
      changePasswordUri :: (Core.Maybe Core.Text)
      -- | Required. The SAML __Entity ID__ of the identity provider.
    , entityId :: (Core.Maybe Core.Text)
      -- | The __Logout Redirect URL__ (sign-out page URL) of the identity provider. When a user clicks the sign-out link on a Google page, they will be redirected to this URL. This is a pure redirect with no attached SAML @LogoutRequest@ i.e. SAML single logout is not supported. Must use @HTTPS@.
    , logoutRedirectUri :: (Core.Maybe Core.Text)
      -- | Required. The @SingleSignOnService@ endpoint location (sign-in page URL) of the identity provider. This is the URL where the @AuthnRequest@ will be sent. Must use @HTTPS@. Assumed to accept the @HTTP-Redirect@ binding.
    , singleSignOnServiceUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SamlIdpConfig' with the minimum fields required to make a request.
newSamlIdpConfig 
    ::  SamlIdpConfig
newSamlIdpConfig =
  SamlIdpConfig
    { changePasswordUri = Core.Nothing
    , entityId = Core.Nothing
    , logoutRedirectUri = Core.Nothing
    , singleSignOnServiceUri = Core.Nothing
    }

instance Core.FromJSON SamlIdpConfig where
        parseJSON
          = Core.withObject "SamlIdpConfig"
              (\ o ->
                 SamlIdpConfig Core.<$>
                   (o Core..:? "changePasswordUri") Core.<*>
                     (o Core..:? "entityId")
                     Core.<*> (o Core..:? "logoutRedirectUri")
                     Core.<*> (o Core..:? "singleSignOnServiceUri"))

instance Core.ToJSON SamlIdpConfig where
        toJSON SamlIdpConfig{..}
          = Core.object
              (Core.catMaybes
                 [("changePasswordUri" Core..=) Core.<$>
                    changePasswordUri,
                  ("entityId" Core..=) Core.<$> entityId,
                  ("logoutRedirectUri" Core..=) Core.<$>
                    logoutRedirectUri,
                  ("singleSignOnServiceUri" Core..=) Core.<$>
                    singleSignOnServiceUri])


-- | SAML SP (service provider) configuration.
--
-- /See:/ 'newSamlSpConfig' smart constructor.
data SamlSpConfig = SamlSpConfig
    {
      -- | Output only. The SAML __Assertion Consumer Service (ACS) URL__ to be used for the IDP-initiated login. Assumed to accept response messages via the @HTTP-POST@ binding.
      assertionConsumerServiceUri :: (Core.Maybe Core.Text)
      -- | Output only. The SAML __Entity ID__ for this service provider.
    , entityId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SamlSpConfig' with the minimum fields required to make a request.
newSamlSpConfig 
    ::  SamlSpConfig
newSamlSpConfig =
  SamlSpConfig
    {assertionConsumerServiceUri = Core.Nothing, entityId = Core.Nothing}

instance Core.FromJSON SamlSpConfig where
        parseJSON
          = Core.withObject "SamlSpConfig"
              (\ o ->
                 SamlSpConfig Core.<$>
                   (o Core..:? "assertionConsumerServiceUri") Core.<*>
                     (o Core..:? "entityId"))

instance Core.ToJSON SamlSpConfig where
        toJSON SamlSpConfig{..}
          = Core.object
              (Core.catMaybes
                 [("assertionConsumerServiceUri" Core..=) Core.<$>
                    assertionConsumerServiceUri,
                  ("entityId" Core..=) Core.<$> entityId])


-- | Details that are applicable when @sso_mode@ == @SAML_SSO@.
--
-- /See:/ 'newSamlSsoInfo' smart constructor.
newtype SamlSsoInfo = SamlSsoInfo
    {
      -- | Required. Name of the @InboundSamlSsoProfile@ to use. Must be of the form @inboundSamlSsoProfiles\/{inbound_saml_sso_profile}@.
      inboundSamlSsoProfile :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SamlSsoInfo' with the minimum fields required to make a request.
newSamlSsoInfo 
    ::  SamlSsoInfo
newSamlSsoInfo = SamlSsoInfo {inboundSamlSsoProfile = Core.Nothing}

instance Core.FromJSON SamlSsoInfo where
        parseJSON
          = Core.withObject "SamlSsoInfo"
              (\ o ->
                 SamlSsoInfo Core.<$>
                   (o Core..:? "inboundSamlSsoProfile"))

instance Core.ToJSON SamlSsoInfo where
        toJSON SamlSsoInfo{..}
          = Core.object
              (Core.catMaybes
                 [("inboundSamlSsoProfile" Core..=) Core.<$>
                    inboundSamlSsoProfile])


-- | The response message for MembershipsService.SearchDirectGroups.
--
-- /See:/ 'newSearchDirectGroupsResponse' smart constructor.
data SearchDirectGroupsResponse = SearchDirectGroupsResponse
    {
      -- | List of direct groups satisfying the query.
      memberships :: (Core.Maybe [MembershipRelation])
      -- | Token to retrieve the next page of results, or empty if there are no more results available for listing.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchDirectGroupsResponse' with the minimum fields required to make a request.
newSearchDirectGroupsResponse 
    ::  SearchDirectGroupsResponse
newSearchDirectGroupsResponse =
  SearchDirectGroupsResponse
    {memberships = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON SearchDirectGroupsResponse
         where
        parseJSON
          = Core.withObject "SearchDirectGroupsResponse"
              (\ o ->
                 SearchDirectGroupsResponse Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON SearchDirectGroupsResponse where
        toJSON SearchDirectGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for GroupsService.SearchGroups.
--
-- /See:/ 'newSearchGroupsResponse' smart constructor.
data SearchGroupsResponse = SearchGroupsResponse
    {
      -- | The @Group@ resources that match the search query.
      groups :: (Core.Maybe [Group])
      -- | A continuation token to retrieve the next page of results, or empty if there are no more results available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchGroupsResponse' with the minimum fields required to make a request.
newSearchGroupsResponse 
    ::  SearchGroupsResponse
newSearchGroupsResponse =
  SearchGroupsResponse {groups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON SearchGroupsResponse where
        parseJSON
          = Core.withObject "SearchGroupsResponse"
              (\ o ->
                 SearchGroupsResponse Core.<$>
                   (o Core..:? "groups") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON SearchGroupsResponse where
        toJSON SearchGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("groups" Core..=) Core.<$> groups,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for MembershipsService.SearchTransitiveGroups.
--
-- /See:/ 'newSearchTransitiveGroupsResponse' smart constructor.
data SearchTransitiveGroupsResponse = SearchTransitiveGroupsResponse
    {
      -- | List of transitive groups satisfying the query.
      memberships :: (Core.Maybe [GroupRelation])
      -- | Token to retrieve the next page of results, or empty if there are no more results available for listing.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchTransitiveGroupsResponse' with the minimum fields required to make a request.
newSearchTransitiveGroupsResponse 
    ::  SearchTransitiveGroupsResponse
newSearchTransitiveGroupsResponse =
  SearchTransitiveGroupsResponse
    {memberships = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON SearchTransitiveGroupsResponse
         where
        parseJSON
          = Core.withObject "SearchTransitiveGroupsResponse"
              (\ o ->
                 SearchTransitiveGroupsResponse Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON SearchTransitiveGroupsResponse
         where
        toJSON SearchTransitiveGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for MembershipsService.SearchTransitiveMemberships.
--
-- /See:/ 'newSearchTransitiveMembershipsResponse' smart constructor.
data SearchTransitiveMembershipsResponse = SearchTransitiveMembershipsResponse
    {
      -- | List of transitive members satisfying the query.
      memberships :: (Core.Maybe [MemberRelation])
      -- | Token to retrieve the next page of results, or empty if there are no more results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchTransitiveMembershipsResponse' with the minimum fields required to make a request.
newSearchTransitiveMembershipsResponse 
    ::  SearchTransitiveMembershipsResponse
newSearchTransitiveMembershipsResponse =
  SearchTransitiveMembershipsResponse
    {memberships = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           SearchTransitiveMembershipsResponse
         where
        parseJSON
          = Core.withObject
              "SearchTransitiveMembershipsResponse"
              (\ o ->
                 SearchTransitiveMembershipsResponse Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           SearchTransitiveMembershipsResponse
         where
        toJSON SearchTransitiveMembershipsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The definition of security settings.
--
-- /See:/ 'newSecuritySettings' smart constructor.
data SecuritySettings = SecuritySettings
    {
      -- | The Member Restriction value
      memberRestriction :: (Core.Maybe MemberRestriction)
      -- | Output only. The resource name of the security settings. Shall be of the form @groups\/{group_id}\/securitySettings@.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecuritySettings' with the minimum fields required to make a request.
newSecuritySettings 
    ::  SecuritySettings
newSecuritySettings =
  SecuritySettings {memberRestriction = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON SecuritySettings where
        parseJSON
          = Core.withObject "SecuritySettings"
              (\ o ->
                 SecuritySettings Core.<$>
                   (o Core..:? "memberRestriction") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON SecuritySettings where
        toJSON SecuritySettings{..}
          = Core.object
              (Core.catMaybes
                 [("memberRestriction" Core..=) Core.<$>
                    memberRestriction,
                  ("name" Core..=) Core.<$> name])


-- | A request to send email for inviting target user corresponding to the UserInvitation.
--
-- /See:/ 'newSendUserInvitationRequest' smart constructor.
data SendUserInvitationRequest = SendUserInvitationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendUserInvitationRequest' with the minimum fields required to make a request.
newSendUserInvitationRequest 
    ::  SendUserInvitationRequest
newSendUserInvitationRequest = SendUserInvitationRequest

instance Core.FromJSON SendUserInvitationRequest
         where
        parseJSON
          = Core.withObject "SendUserInvitationRequest"
              (\ o -> Core.pure SendUserInvitationRequest)

instance Core.ToJSON SendUserInvitationRequest where
        toJSON = Core.const Core.emptyObject


-- | Setting
--
-- /See:/ 'newSetting' smart constructor.
data Setting = Setting
    {
      -- | Required. Immutable. The type of the Setting. .
      type' :: (Core.Maybe Core.Text)
      -- | Required. The value of the Setting.
    , value :: (Core.Maybe Setting_Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
newSetting 
    ::  Setting
newSetting = Setting {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Setting where
        parseJSON
          = Core.withObject "Setting"
              (\ o ->
                 Setting Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Setting where
        toJSON Setting{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | Required. The value of the Setting.
--
-- /See:/ 'newSetting_Value' smart constructor.
newtype Setting_Value = Setting_Value
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Setting_Value' with the minimum fields required to make a request.
newSetting_Value 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> Setting_Value
newSetting_Value additional = Setting_Value {additional = additional}

instance Core.FromJSON Setting_Value where
        parseJSON
          = Core.withObject "Setting_Value"
              (\ o ->
                 Setting_Value Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Setting_Value where
        toJSON Setting_Value{..} = Core.toJSON additional


-- | Controls sign-in behavior.
--
-- /See:/ 'newSignInBehavior' smart constructor.
newtype SignInBehavior = SignInBehavior
    {
      -- | When to redirect sign-ins to the IdP.
      redirectCondition :: (Core.Maybe SignInBehavior_RedirectCondition)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignInBehavior' with the minimum fields required to make a request.
newSignInBehavior 
    ::  SignInBehavior
newSignInBehavior = SignInBehavior {redirectCondition = Core.Nothing}

instance Core.FromJSON SignInBehavior where
        parseJSON
          = Core.withObject "SignInBehavior"
              (\ o ->
                 SignInBehavior Core.<$>
                   (o Core..:? "redirectCondition"))

instance Core.ToJSON SignInBehavior where
        toJSON SignInBehavior{..}
          = Core.object
              (Core.catMaybes
                 [("redirectCondition" Core..=) Core.<$>
                    redirectCondition])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Message representing the role of a TransitiveMembership.
--
-- /See:/ 'newTransitiveMembershipRole' smart constructor.
newtype TransitiveMembershipRole = TransitiveMembershipRole
    {
      -- | TransitiveMembershipRole in string format. Currently supported TransitiveMembershipRoles: @\"MEMBER\"@, @\"OWNER\"@, and @\"MANAGER\"@.
      role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransitiveMembershipRole' with the minimum fields required to make a request.
newTransitiveMembershipRole 
    ::  TransitiveMembershipRole
newTransitiveMembershipRole = TransitiveMembershipRole {role' = Core.Nothing}

instance Core.FromJSON TransitiveMembershipRole where
        parseJSON
          = Core.withObject "TransitiveMembershipRole"
              (\ o ->
                 TransitiveMembershipRole Core.<$>
                   (o Core..:? "role"))

instance Core.ToJSON TransitiveMembershipRole where
        toJSON TransitiveMembershipRole{..}
          = Core.object
              (Core.catMaybes [("role" Core..=) Core.<$> role'])


-- | Metadata for UpdateGroup LRO.
--
-- /See:/ 'newUpdateGroupMetadata' smart constructor.
data UpdateGroupMetadata = UpdateGroupMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateGroupMetadata' with the minimum fields required to make a request.
newUpdateGroupMetadata 
    ::  UpdateGroupMetadata
newUpdateGroupMetadata = UpdateGroupMetadata

instance Core.FromJSON UpdateGroupMetadata where
        parseJSON
          = Core.withObject "UpdateGroupMetadata"
              (\ o -> Core.pure UpdateGroupMetadata)

instance Core.ToJSON UpdateGroupMetadata where
        toJSON = Core.const Core.emptyObject


-- | LRO response metadata for InboundSamlSsoProfilesService.UpdateInboundSamlSsoProfile.
--
-- /See:/ 'newUpdateInboundSamlSsoProfileOperationMetadata' smart constructor.
newtype UpdateInboundSamlSsoProfileOperationMetadata = UpdateInboundSamlSsoProfileOperationMetadata
    {
      -- | State of this Operation Will be \"awaiting-multi-party-approval\" when the operation is deferred due to the target customer having enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>.
      state :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInboundSamlSsoProfileOperationMetadata' with the minimum fields required to make a request.
newUpdateInboundSamlSsoProfileOperationMetadata 
    ::  UpdateInboundSamlSsoProfileOperationMetadata
newUpdateInboundSamlSsoProfileOperationMetadata =
  UpdateInboundSamlSsoProfileOperationMetadata {state = Core.Nothing}

instance Core.FromJSON
           UpdateInboundSamlSsoProfileOperationMetadata
         where
        parseJSON
          = Core.withObject
              "UpdateInboundSamlSsoProfileOperationMetadata"
              (\ o ->
                 UpdateInboundSamlSsoProfileOperationMetadata Core.<$>
                   (o Core..:? "state"))

instance Core.ToJSON
           UpdateInboundSamlSsoProfileOperationMetadata
         where
        toJSON
          UpdateInboundSamlSsoProfileOperationMetadata{..}
          = Core.object
              (Core.catMaybes [("state" Core..=) Core.<$> state])


-- | LRO response metadata for InboundSsoAssignmentsService.UpdateInboundSsoAssignment.
--
-- /See:/ 'newUpdateInboundSsoAssignmentOperationMetadata' smart constructor.
data UpdateInboundSsoAssignmentOperationMetadata = UpdateInboundSsoAssignmentOperationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInboundSsoAssignmentOperationMetadata' with the minimum fields required to make a request.
newUpdateInboundSsoAssignmentOperationMetadata 
    ::  UpdateInboundSsoAssignmentOperationMetadata
newUpdateInboundSsoAssignmentOperationMetadata =
  UpdateInboundSsoAssignmentOperationMetadata

instance Core.FromJSON
           UpdateInboundSsoAssignmentOperationMetadata
         where
        parseJSON
          = Core.withObject
              "UpdateInboundSsoAssignmentOperationMetadata"
              (\ o ->
                 Core.pure
                   UpdateInboundSsoAssignmentOperationMetadata)

instance Core.ToJSON
           UpdateInboundSsoAssignmentOperationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Metadata for UpdateMembership LRO.
--
-- /See:/ 'newUpdateMembershipMetadata' smart constructor.
data UpdateMembershipMetadata = UpdateMembershipMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMembershipMetadata' with the minimum fields required to make a request.
newUpdateMembershipMetadata 
    ::  UpdateMembershipMetadata
newUpdateMembershipMetadata = UpdateMembershipMetadata

instance Core.FromJSON UpdateMembershipMetadata where
        parseJSON
          = Core.withObject "UpdateMembershipMetadata"
              (\ o -> Core.pure UpdateMembershipMetadata)

instance Core.ToJSON UpdateMembershipMetadata where
        toJSON = Core.const Core.emptyObject


-- | The details of an update to a @MembershipRole@.
--
-- /See:/ 'newUpdateMembershipRolesParams' smart constructor.
data UpdateMembershipRolesParams = UpdateMembershipRolesParams
    {
      -- | The fully-qualified names of fields to update. May only contain the field @expiry_detail.expire_time@.
      fieldMask :: (Core.Maybe Core.FieldMask)
      -- | The @MembershipRole@s to be updated. Only @MEMBER@ @MembershipRole@ can currently be updated.
    , membershipRole :: (Core.Maybe MembershipRole)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMembershipRolesParams' with the minimum fields required to make a request.
newUpdateMembershipRolesParams 
    ::  UpdateMembershipRolesParams
newUpdateMembershipRolesParams =
  UpdateMembershipRolesParams
    {fieldMask = Core.Nothing, membershipRole = Core.Nothing}

instance Core.FromJSON UpdateMembershipRolesParams
         where
        parseJSON
          = Core.withObject "UpdateMembershipRolesParams"
              (\ o ->
                 UpdateMembershipRolesParams Core.<$>
                   (o Core..:? "fieldMask") Core.<*>
                     (o Core..:? "membershipRole"))

instance Core.ToJSON UpdateMembershipRolesParams
         where
        toJSON UpdateMembershipRolesParams{..}
          = Core.object
              (Core.catMaybes
                 [("fieldMask" Core..=) Core.<$> fieldMask,
                  ("membershipRole" Core..=) Core.<$> membershipRole])


-- | The @UserInvitation@ resource represents an email that can be sent to an unmanaged user account inviting them to join the customer\'s Google Workspace or Cloud Identity account. An unmanaged account shares an email address domain with the Google Workspace or Cloud Identity account but is not managed by it yet. If the user accepts the @UserInvitation@, the user account will become managed.
--
-- /See:/ 'newUserInvitation' smart constructor.
data UserInvitation = UserInvitation
    {
      -- | Number of invitation emails sent to the user.
      mailsSentCount :: (Core.Maybe Core.Int64)
      -- | Shall be of the form @customers\/{customer}\/userinvitations\/{user_email_address}@.
    , name :: (Core.Maybe Core.Text)
      -- | State of the @UserInvitation@.
    , state :: (Core.Maybe UserInvitation_State)
      -- | Time when the @UserInvitation@ was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInvitation' with the minimum fields required to make a request.
newUserInvitation 
    ::  UserInvitation
newUserInvitation =
  UserInvitation
    { mailsSentCount = Core.Nothing
    , name = Core.Nothing
    , state = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON UserInvitation where
        parseJSON
          = Core.withObject "UserInvitation"
              (\ o ->
                 UserInvitation Core.<$>
                   (o Core..:? "mailsSentCount" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON UserInvitation where
        toJSON UserInvitation{..}
          = Core.object
              (Core.catMaybes
                 [("mailsSentCount" Core..=) Core.. Core.AsText
                    Core.<$> mailsSentCount,
                  ("name" Core..=) Core.<$> name,
                  ("state" Core..=) Core.<$> state,
                  ("updateTime" Core..=) Core.<$> updateTime])

