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
    (
    -- * Configuration
      cloudIdentityService

    -- * OAuth Scopes
    , CloudIdentity'Devices
    , CloudIdentity'Devices'Lookup
    , CloudIdentity'Devices'Readonly
    , CloudIdentity'Groups
    , CloudIdentity'Groups'Readonly
    , CloudIdentity'Inboundsso
    , CloudIdentity'Inboundsso'Readonly
    , CloudIdentity'Policies
    , CloudIdentity'Policies'Readonly
    , CloudPlatform'FullControl

    -- * Resources

    -- ** cloudidentity.customers.userinvitations.cancel
    , CloudIdentityCustomersUserinvitationsCancelResource
    , CloudIdentityCustomersUserinvitationsCancel (..)
    , newCloudIdentityCustomersUserinvitationsCancel

    -- ** cloudidentity.customers.userinvitations.get
    , CloudIdentityCustomersUserinvitationsGetResource
    , CloudIdentityCustomersUserinvitationsGet (..)
    , newCloudIdentityCustomersUserinvitationsGet

    -- ** cloudidentity.customers.userinvitations.isInvitableUser
    , CloudIdentityCustomersUserinvitationsIsInvitableUserResource
    , CloudIdentityCustomersUserinvitationsIsInvitableUser (..)
    , newCloudIdentityCustomersUserinvitationsIsInvitableUser

    -- ** cloudidentity.customers.userinvitations.list
    , CloudIdentityCustomersUserinvitationsListResource
    , CloudIdentityCustomersUserinvitationsList (..)
    , newCloudIdentityCustomersUserinvitationsList

    -- ** cloudidentity.customers.userinvitations.send
    , CloudIdentityCustomersUserinvitationsSendResource
    , CloudIdentityCustomersUserinvitationsSend (..)
    , newCloudIdentityCustomersUserinvitationsSend

    -- ** cloudidentity.devices.cancelWipe
    , CloudIdentityDevicesCancelWipeResource
    , CloudIdentityDevicesCancelWipe (..)
    , newCloudIdentityDevicesCancelWipe

    -- ** cloudidentity.devices.create
    , CloudIdentityDevicesCreateResource
    , CloudIdentityDevicesCreate (..)
    , newCloudIdentityDevicesCreate

    -- ** cloudidentity.devices.delete
    , CloudIdentityDevicesDeleteResource
    , CloudIdentityDevicesDelete (..)
    , newCloudIdentityDevicesDelete

    -- ** cloudidentity.devices.deviceUsers.approve
    , CloudIdentityDevicesDeviceUsersApproveResource
    , CloudIdentityDevicesDeviceUsersApprove (..)
    , newCloudIdentityDevicesDeviceUsersApprove

    -- ** cloudidentity.devices.deviceUsers.block
    , CloudIdentityDevicesDeviceUsersBlockResource
    , CloudIdentityDevicesDeviceUsersBlock (..)
    , newCloudIdentityDevicesDeviceUsersBlock

    -- ** cloudidentity.devices.deviceUsers.cancelWipe
    , CloudIdentityDevicesDeviceUsersCancelWipeResource
    , CloudIdentityDevicesDeviceUsersCancelWipe (..)
    , newCloudIdentityDevicesDeviceUsersCancelWipe

    -- ** cloudidentity.devices.deviceUsers.clientStates.get
    , CloudIdentityDevicesDeviceUsersClientStatesGetResource
    , CloudIdentityDevicesDeviceUsersClientStatesGet (..)
    , newCloudIdentityDevicesDeviceUsersClientStatesGet

    -- ** cloudidentity.devices.deviceUsers.clientStates.list
    , CloudIdentityDevicesDeviceUsersClientStatesListResource
    , CloudIdentityDevicesDeviceUsersClientStatesList (..)
    , newCloudIdentityDevicesDeviceUsersClientStatesList

    -- ** cloudidentity.devices.deviceUsers.clientStates.patch
    , CloudIdentityDevicesDeviceUsersClientStatesPatchResource
    , CloudIdentityDevicesDeviceUsersClientStatesPatch (..)
    , newCloudIdentityDevicesDeviceUsersClientStatesPatch

    -- ** cloudidentity.devices.deviceUsers.delete
    , CloudIdentityDevicesDeviceUsersDeleteResource
    , CloudIdentityDevicesDeviceUsersDelete (..)
    , newCloudIdentityDevicesDeviceUsersDelete

    -- ** cloudidentity.devices.deviceUsers.get
    , CloudIdentityDevicesDeviceUsersGetResource
    , CloudIdentityDevicesDeviceUsersGet (..)
    , newCloudIdentityDevicesDeviceUsersGet

    -- ** cloudidentity.devices.deviceUsers.list
    , CloudIdentityDevicesDeviceUsersListResource
    , CloudIdentityDevicesDeviceUsersList (..)
    , newCloudIdentityDevicesDeviceUsersList

    -- ** cloudidentity.devices.deviceUsers.lookup
    , CloudIdentityDevicesDeviceUsersLookupResource
    , CloudIdentityDevicesDeviceUsersLookup (..)
    , newCloudIdentityDevicesDeviceUsersLookup

    -- ** cloudidentity.devices.deviceUsers.wipe
    , CloudIdentityDevicesDeviceUsersWipeResource
    , CloudIdentityDevicesDeviceUsersWipe (..)
    , newCloudIdentityDevicesDeviceUsersWipe

    -- ** cloudidentity.devices.get
    , CloudIdentityDevicesGetResource
    , CloudIdentityDevicesGet (..)
    , newCloudIdentityDevicesGet

    -- ** cloudidentity.devices.list
    , CloudIdentityDevicesListResource
    , CloudIdentityDevicesList (..)
    , newCloudIdentityDevicesList

    -- ** cloudidentity.devices.wipe
    , CloudIdentityDevicesWipeResource
    , CloudIdentityDevicesWipe (..)
    , newCloudIdentityDevicesWipe

    -- ** cloudidentity.groups.create
    , CloudIdentityGroupsCreateResource
    , CloudIdentityGroupsCreate (..)
    , newCloudIdentityGroupsCreate

    -- ** cloudidentity.groups.delete
    , CloudIdentityGroupsDeleteResource
    , CloudIdentityGroupsDelete (..)
    , newCloudIdentityGroupsDelete

    -- ** cloudidentity.groups.get
    , CloudIdentityGroupsGetResource
    , CloudIdentityGroupsGet (..)
    , newCloudIdentityGroupsGet

    -- ** cloudidentity.groups.getSecuritySettings
    , CloudIdentityGroupsGetSecuritySettingsResource
    , CloudIdentityGroupsGetSecuritySettings (..)
    , newCloudIdentityGroupsGetSecuritySettings

    -- ** cloudidentity.groups.list
    , CloudIdentityGroupsListResource
    , CloudIdentityGroupsList (..)
    , newCloudIdentityGroupsList

    -- ** cloudidentity.groups.lookup
    , CloudIdentityGroupsLookupResource
    , CloudIdentityGroupsLookup (..)
    , newCloudIdentityGroupsLookup

    -- ** cloudidentity.groups.memberships.checkTransitiveMembership
    , CloudIdentityGroupsMembershipsCheckTransitiveMembershipResource
    , CloudIdentityGroupsMembershipsCheckTransitiveMembership (..)
    , newCloudIdentityGroupsMembershipsCheckTransitiveMembership

    -- ** cloudidentity.groups.memberships.create
    , CloudIdentityGroupsMembershipsCreateResource
    , CloudIdentityGroupsMembershipsCreate (..)
    , newCloudIdentityGroupsMembershipsCreate

    -- ** cloudidentity.groups.memberships.delete
    , CloudIdentityGroupsMembershipsDeleteResource
    , CloudIdentityGroupsMembershipsDelete (..)
    , newCloudIdentityGroupsMembershipsDelete

    -- ** cloudidentity.groups.memberships.get
    , CloudIdentityGroupsMembershipsGetResource
    , CloudIdentityGroupsMembershipsGet (..)
    , newCloudIdentityGroupsMembershipsGet

    -- ** cloudidentity.groups.memberships.getMembershipGraph
    , CloudIdentityGroupsMembershipsGetMembershipGraphResource
    , CloudIdentityGroupsMembershipsGetMembershipGraph (..)
    , newCloudIdentityGroupsMembershipsGetMembershipGraph

    -- ** cloudidentity.groups.memberships.list
    , CloudIdentityGroupsMembershipsListResource
    , CloudIdentityGroupsMembershipsList (..)
    , newCloudIdentityGroupsMembershipsList

    -- ** cloudidentity.groups.memberships.lookup
    , CloudIdentityGroupsMembershipsLookupResource
    , CloudIdentityGroupsMembershipsLookup (..)
    , newCloudIdentityGroupsMembershipsLookup

    -- ** cloudidentity.groups.memberships.modifyMembershipRoles
    , CloudIdentityGroupsMembershipsModifyMembershipRolesResource
    , CloudIdentityGroupsMembershipsModifyMembershipRoles (..)
    , newCloudIdentityGroupsMembershipsModifyMembershipRoles

    -- ** cloudidentity.groups.memberships.searchDirectGroups
    , CloudIdentityGroupsMembershipsSearchDirectGroupsResource
    , CloudIdentityGroupsMembershipsSearchDirectGroups (..)
    , newCloudIdentityGroupsMembershipsSearchDirectGroups

    -- ** cloudidentity.groups.memberships.searchTransitiveGroups
    , CloudIdentityGroupsMembershipsSearchTransitiveGroupsResource
    , CloudIdentityGroupsMembershipsSearchTransitiveGroups (..)
    , newCloudIdentityGroupsMembershipsSearchTransitiveGroups

    -- ** cloudidentity.groups.memberships.searchTransitiveMemberships
    , CloudIdentityGroupsMembershipsSearchTransitiveMembershipsResource
    , CloudIdentityGroupsMembershipsSearchTransitiveMemberships (..)
    , newCloudIdentityGroupsMembershipsSearchTransitiveMemberships

    -- ** cloudidentity.groups.patch
    , CloudIdentityGroupsPatchResource
    , CloudIdentityGroupsPatch (..)
    , newCloudIdentityGroupsPatch

    -- ** cloudidentity.groups.search
    , CloudIdentityGroupsSearchResource
    , CloudIdentityGroupsSearch (..)
    , newCloudIdentityGroupsSearch

    -- ** cloudidentity.groups.updateSecuritySettings
    , CloudIdentityGroupsUpdateSecuritySettingsResource
    , CloudIdentityGroupsUpdateSecuritySettings (..)
    , newCloudIdentityGroupsUpdateSecuritySettings

    -- ** cloudidentity.inboundSamlSsoProfiles.create
    , CloudIdentityInboundSamlSsoProfilesCreateResource
    , CloudIdentityInboundSamlSsoProfilesCreate (..)
    , newCloudIdentityInboundSamlSsoProfilesCreate

    -- ** cloudidentity.inboundSamlSsoProfiles.delete
    , CloudIdentityInboundSamlSsoProfilesDeleteResource
    , CloudIdentityInboundSamlSsoProfilesDelete (..)
    , newCloudIdentityInboundSamlSsoProfilesDelete

    -- ** cloudidentity.inboundSamlSsoProfiles.get
    , CloudIdentityInboundSamlSsoProfilesGetResource
    , CloudIdentityInboundSamlSsoProfilesGet (..)
    , newCloudIdentityInboundSamlSsoProfilesGet

    -- ** cloudidentity.inboundSamlSsoProfiles.idpCredentials.add
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsAddResource
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd (..)
    , newCloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd

    -- ** cloudidentity.inboundSamlSsoProfiles.idpCredentials.delete
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsDeleteResource
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsDelete (..)
    , newCloudIdentityInboundSamlSsoProfilesIdpCredentialsDelete

    -- ** cloudidentity.inboundSamlSsoProfiles.idpCredentials.get
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsGetResource
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet (..)
    , newCloudIdentityInboundSamlSsoProfilesIdpCredentialsGet

    -- ** cloudidentity.inboundSamlSsoProfiles.idpCredentials.list
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsListResource
    , CloudIdentityInboundSamlSsoProfilesIdpCredentialsList (..)
    , newCloudIdentityInboundSamlSsoProfilesIdpCredentialsList

    -- ** cloudidentity.inboundSamlSsoProfiles.list
    , CloudIdentityInboundSamlSsoProfilesListResource
    , CloudIdentityInboundSamlSsoProfilesList (..)
    , newCloudIdentityInboundSamlSsoProfilesList

    -- ** cloudidentity.inboundSamlSsoProfiles.patch
    , CloudIdentityInboundSamlSsoProfilesPatchResource
    , CloudIdentityInboundSamlSsoProfilesPatch (..)
    , newCloudIdentityInboundSamlSsoProfilesPatch

    -- ** cloudidentity.inboundSsoAssignments.create
    , CloudIdentityInboundSsoAssignmentsCreateResource
    , CloudIdentityInboundSsoAssignmentsCreate (..)
    , newCloudIdentityInboundSsoAssignmentsCreate

    -- ** cloudidentity.inboundSsoAssignments.delete
    , CloudIdentityInboundSsoAssignmentsDeleteResource
    , CloudIdentityInboundSsoAssignmentsDelete (..)
    , newCloudIdentityInboundSsoAssignmentsDelete

    -- ** cloudidentity.inboundSsoAssignments.get
    , CloudIdentityInboundSsoAssignmentsGetResource
    , CloudIdentityInboundSsoAssignmentsGet (..)
    , newCloudIdentityInboundSsoAssignmentsGet

    -- ** cloudidentity.inboundSsoAssignments.list
    , CloudIdentityInboundSsoAssignmentsListResource
    , CloudIdentityInboundSsoAssignmentsList (..)
    , newCloudIdentityInboundSsoAssignmentsList

    -- ** cloudidentity.inboundSsoAssignments.patch
    , CloudIdentityInboundSsoAssignmentsPatchResource
    , CloudIdentityInboundSsoAssignmentsPatch (..)
    , newCloudIdentityInboundSsoAssignmentsPatch

    -- ** cloudidentity.policies.get
    , CloudIdentityPoliciesGetResource
    , CloudIdentityPoliciesGet (..)
    , newCloudIdentityPoliciesGet

    -- ** cloudidentity.policies.list
    , CloudIdentityPoliciesListResource
    , CloudIdentityPoliciesList (..)
    , newCloudIdentityPoliciesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddIdpCredentialOperationMetadata
    , AddIdpCredentialOperationMetadata (..)
    , newAddIdpCredentialOperationMetadata

    -- ** AddIdpCredentialRequest
    , AddIdpCredentialRequest (..)
    , newAddIdpCredentialRequest

    -- ** CancelUserInvitationRequest
    , CancelUserInvitationRequest (..)
    , newCancelUserInvitationRequest

    -- ** CheckTransitiveMembershipResponse
    , CheckTransitiveMembershipResponse (..)
    , newCheckTransitiveMembershipResponse

    -- ** CreateGroupMetadata
    , CreateGroupMetadata (..)
    , newCreateGroupMetadata

    -- ** CreateInboundSamlSsoProfileOperationMetadata
    , CreateInboundSamlSsoProfileOperationMetadata (..)
    , newCreateInboundSamlSsoProfileOperationMetadata

    -- ** CreateInboundSsoAssignmentOperationMetadata
    , CreateInboundSsoAssignmentOperationMetadata (..)
    , newCreateInboundSsoAssignmentOperationMetadata

    -- ** CreateMembershipMetadata
    , CreateMembershipMetadata (..)
    , newCreateMembershipMetadata

    -- ** DeleteGroupMetadata
    , DeleteGroupMetadata (..)
    , newDeleteGroupMetadata

    -- ** DeleteIdpCredentialOperationMetadata
    , DeleteIdpCredentialOperationMetadata (..)
    , newDeleteIdpCredentialOperationMetadata

    -- ** DeleteInboundSamlSsoProfileOperationMetadata
    , DeleteInboundSamlSsoProfileOperationMetadata (..)
    , newDeleteInboundSamlSsoProfileOperationMetadata

    -- ** DeleteInboundSsoAssignmentOperationMetadata
    , DeleteInboundSsoAssignmentOperationMetadata (..)
    , newDeleteInboundSsoAssignmentOperationMetadata

    -- ** DeleteMembershipMetadata
    , DeleteMembershipMetadata (..)
    , newDeleteMembershipMetadata

    -- ** DsaPublicKeyInfo
    , DsaPublicKeyInfo (..)
    , newDsaPublicKeyInfo

    -- ** DynamicGroupMetadata
    , DynamicGroupMetadata (..)
    , newDynamicGroupMetadata

    -- ** DynamicGroupQuery
    , DynamicGroupQuery (..)
    , newDynamicGroupQuery

    -- ** DynamicGroupQuery_ResourceType
    , DynamicGroupQuery_ResourceType (..)

    -- ** DynamicGroupStatus
    , DynamicGroupStatus (..)
    , newDynamicGroupStatus

    -- ** DynamicGroupStatus_Status
    , DynamicGroupStatus_Status (..)

    -- ** EntityKey
    , EntityKey (..)
    , newEntityKey

    -- ** ExpiryDetail
    , ExpiryDetail (..)
    , newExpiryDetail

    -- ** GetMembershipGraphMetadata
    , GetMembershipGraphMetadata (..)
    , newGetMembershipGraphMetadata

    -- ** GetMembershipGraphResponse
    , GetMembershipGraphResponse (..)
    , newGetMembershipGraphResponse

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributes
    , GoogleAppsCloudidentityDevicesV1AndroidAttributes (..)
    , newGoogleAppsCloudidentityDevicesV1AndroidAttributes

    -- ** GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
    , GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege (..)

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest (..)
    , newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest

    -- ** GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse (..)
    , newGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest (..)
    , newGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest

    -- ** GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse (..)
    , newGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse

    -- ** GoogleAppsCloudidentityDevicesV1BrowserAttributes
    , GoogleAppsCloudidentityDevicesV1BrowserAttributes (..)
    , newGoogleAppsCloudidentityDevicesV1BrowserAttributes

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo
    , GoogleAppsCloudidentityDevicesV1BrowserInfo (..)
    , newGoogleAppsCloudidentityDevicesV1BrowserInfo

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_BrowserManagementState
    , GoogleAppsCloudidentityDevicesV1BrowserInfo_BrowserManagementState (..)

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_PasswordProtectionWarningTrigger
    , GoogleAppsCloudidentityDevicesV1BrowserInfo_PasswordProtectionWarningTrigger (..)

    -- ** GoogleAppsCloudidentityDevicesV1BrowserInfo_SafeBrowsingProtectionLevel
    , GoogleAppsCloudidentityDevicesV1BrowserInfo_SafeBrowsingProtectionLevel (..)

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest

    -- ** GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse (..)
    , newGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse

    -- ** GoogleAppsCloudidentityDevicesV1CertificateAttributes
    , GoogleAppsCloudidentityDevicesV1CertificateAttributes (..)
    , newGoogleAppsCloudidentityDevicesV1CertificateAttributes

    -- ** GoogleAppsCloudidentityDevicesV1CertificateAttributes_ValidationState
    , GoogleAppsCloudidentityDevicesV1CertificateAttributes_ValidationState (..)

    -- ** GoogleAppsCloudidentityDevicesV1CertificateTemplate
    , GoogleAppsCloudidentityDevicesV1CertificateTemplate (..)
    , newGoogleAppsCloudidentityDevicesV1CertificateTemplate

    -- ** GoogleAppsCloudidentityDevicesV1ClientState
    , GoogleAppsCloudidentityDevicesV1ClientState (..)
    , newGoogleAppsCloudidentityDevicesV1ClientState

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
    , GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
    , GoogleAppsCloudidentityDevicesV1ClientState_HealthScore (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
    , GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs (..)
    , newGoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_Managed
    , GoogleAppsCloudidentityDevicesV1ClientState_Managed (..)

    -- ** GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
    , GoogleAppsCloudidentityDevicesV1ClientState_OwnerType (..)

    -- ** GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
    , GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1CreateDeviceMetadata

    -- ** GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    , GoogleAppsCloudidentityDevicesV1CustomAttributeValue (..)
    , newGoogleAppsCloudidentityDevicesV1CustomAttributeValue

    -- ** GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
    , GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata

    -- ** GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1Device
    , GoogleAppsCloudidentityDevicesV1Device (..)
    , newGoogleAppsCloudidentityDevicesV1Device

    -- ** GoogleAppsCloudidentityDevicesV1Device_CompromisedState
    , GoogleAppsCloudidentityDevicesV1Device_CompromisedState (..)

    -- ** GoogleAppsCloudidentityDevicesV1Device_DeviceType
    , GoogleAppsCloudidentityDevicesV1Device_DeviceType (..)

    -- ** GoogleAppsCloudidentityDevicesV1Device_EncryptionState
    , GoogleAppsCloudidentityDevicesV1Device_EncryptionState (..)

    -- ** GoogleAppsCloudidentityDevicesV1Device_ManagementState
    , GoogleAppsCloudidentityDevicesV1Device_ManagementState (..)

    -- ** GoogleAppsCloudidentityDevicesV1Device_OwnerType
    , GoogleAppsCloudidentityDevicesV1Device_OwnerType (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser
    , GoogleAppsCloudidentityDevicesV1DeviceUser (..)
    , newGoogleAppsCloudidentityDevicesV1DeviceUser

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
    , GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
    , GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState (..)

    -- ** GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
    , GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState (..)

    -- ** GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    , GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes (..)
    , newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes

    -- ** GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals
    , GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals (..)
    , newGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes_AdditionalSignals

    -- ** GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    , GoogleAppsCloudidentityDevicesV1ListClientStatesResponse (..)
    , newGoogleAppsCloudidentityDevicesV1ListClientStatesResponse

    -- ** GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse (..)
    , newGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse

    -- ** GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    , GoogleAppsCloudidentityDevicesV1ListDevicesResponse (..)
    , newGoogleAppsCloudidentityDevicesV1ListDevicesResponse

    -- ** GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
    , GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata

    -- ** GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse (..)
    , newGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse

    -- ** GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
    , GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata

    -- ** GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
    , GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
    , GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceMetadata

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceRequest (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceRequest

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceResponse (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceResponse

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest

    -- ** GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse (..)
    , newGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse

    -- ** Group
    , Group (..)
    , newGroup

    -- ** Group_Labels
    , Group_Labels (..)
    , newGroup_Labels

    -- ** GroupRelation
    , GroupRelation (..)
    , newGroupRelation

    -- ** GroupRelation_Labels
    , GroupRelation_Labels (..)
    , newGroupRelation_Labels

    -- ** GroupRelation_RelationType
    , GroupRelation_RelationType (..)

    -- ** IdpCredential
    , IdpCredential (..)
    , newIdpCredential

    -- ** InboundSamlSsoProfile
    , InboundSamlSsoProfile (..)
    , newInboundSamlSsoProfile

    -- ** InboundSsoAssignment
    , InboundSsoAssignment (..)
    , newInboundSsoAssignment

    -- ** InboundSsoAssignment_SsoMode
    , InboundSsoAssignment_SsoMode (..)

    -- ** IsInvitableUserResponse
    , IsInvitableUserResponse (..)
    , newIsInvitableUserResponse

    -- ** ListGroupsResponse
    , ListGroupsResponse (..)
    , newListGroupsResponse

    -- ** ListIdpCredentialsResponse
    , ListIdpCredentialsResponse (..)
    , newListIdpCredentialsResponse

    -- ** ListInboundSamlSsoProfilesResponse
    , ListInboundSamlSsoProfilesResponse (..)
    , newListInboundSamlSsoProfilesResponse

    -- ** ListInboundSsoAssignmentsResponse
    , ListInboundSsoAssignmentsResponse (..)
    , newListInboundSsoAssignmentsResponse

    -- ** ListMembershipsResponse
    , ListMembershipsResponse (..)
    , newListMembershipsResponse

    -- ** ListPoliciesResponse
    , ListPoliciesResponse (..)
    , newListPoliciesResponse

    -- ** ListUserInvitationsResponse
    , ListUserInvitationsResponse (..)
    , newListUserInvitationsResponse

    -- ** LookupGroupNameResponse
    , LookupGroupNameResponse (..)
    , newLookupGroupNameResponse

    -- ** LookupMembershipNameResponse
    , LookupMembershipNameResponse (..)
    , newLookupMembershipNameResponse

    -- ** MemberRelation
    , MemberRelation (..)
    , newMemberRelation

    -- ** MemberRelation_RelationType
    , MemberRelation_RelationType (..)

    -- ** MemberRestriction
    , MemberRestriction (..)
    , newMemberRestriction

    -- ** Membership
    , Membership (..)
    , newMembership

    -- ** Membership_DeliverySetting
    , Membership_DeliverySetting (..)

    -- ** Membership_Type
    , Membership_Type (..)

    -- ** MembershipAdjacencyList
    , MembershipAdjacencyList (..)
    , newMembershipAdjacencyList

    -- ** MembershipRelation
    , MembershipRelation (..)
    , newMembershipRelation

    -- ** MembershipRelation_Labels
    , MembershipRelation_Labels (..)
    , newMembershipRelation_Labels

    -- ** MembershipRole
    , MembershipRole (..)
    , newMembershipRole

    -- ** MembershipRoleRestrictionEvaluation
    , MembershipRoleRestrictionEvaluation (..)
    , newMembershipRoleRestrictionEvaluation

    -- ** MembershipRoleRestrictionEvaluation_State
    , MembershipRoleRestrictionEvaluation_State (..)

    -- ** ModifyMembershipRolesRequest
    , ModifyMembershipRolesRequest (..)
    , newModifyMembershipRolesRequest

    -- ** ModifyMembershipRolesResponse
    , ModifyMembershipRolesResponse (..)
    , newModifyMembershipRolesResponse

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Policy_Type
    , Policy_Type (..)

    -- ** PolicyQuery
    , PolicyQuery (..)
    , newPolicyQuery

    -- ** RestrictionEvaluation
    , RestrictionEvaluation (..)
    , newRestrictionEvaluation

    -- ** RestrictionEvaluation_State
    , RestrictionEvaluation_State (..)

    -- ** RestrictionEvaluations
    , RestrictionEvaluations (..)
    , newRestrictionEvaluations

    -- ** RsaPublicKeyInfo
    , RsaPublicKeyInfo (..)
    , newRsaPublicKeyInfo

    -- ** SamlIdpConfig
    , SamlIdpConfig (..)
    , newSamlIdpConfig

    -- ** SamlSpConfig
    , SamlSpConfig (..)
    , newSamlSpConfig

    -- ** SamlSsoInfo
    , SamlSsoInfo (..)
    , newSamlSsoInfo

    -- ** SearchDirectGroupsResponse
    , SearchDirectGroupsResponse (..)
    , newSearchDirectGroupsResponse

    -- ** SearchGroupsResponse
    , SearchGroupsResponse (..)
    , newSearchGroupsResponse

    -- ** SearchTransitiveGroupsResponse
    , SearchTransitiveGroupsResponse (..)
    , newSearchTransitiveGroupsResponse

    -- ** SearchTransitiveMembershipsResponse
    , SearchTransitiveMembershipsResponse (..)
    , newSearchTransitiveMembershipsResponse

    -- ** SecuritySettings
    , SecuritySettings (..)
    , newSecuritySettings

    -- ** SendUserInvitationRequest
    , SendUserInvitationRequest (..)
    , newSendUserInvitationRequest

    -- ** Setting
    , Setting (..)
    , newSetting

    -- ** Setting_Value
    , Setting_Value (..)
    , newSetting_Value

    -- ** SignInBehavior
    , SignInBehavior (..)
    , newSignInBehavior

    -- ** SignInBehavior_RedirectCondition
    , SignInBehavior_RedirectCondition (..)

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TransitiveMembershipRole
    , TransitiveMembershipRole (..)
    , newTransitiveMembershipRole

    -- ** UpdateGroupMetadata
    , UpdateGroupMetadata (..)
    , newUpdateGroupMetadata

    -- ** UpdateInboundSamlSsoProfileOperationMetadata
    , UpdateInboundSamlSsoProfileOperationMetadata (..)
    , newUpdateInboundSamlSsoProfileOperationMetadata

    -- ** UpdateInboundSsoAssignmentOperationMetadata
    , UpdateInboundSsoAssignmentOperationMetadata (..)
    , newUpdateInboundSsoAssignmentOperationMetadata

    -- ** UpdateMembershipMetadata
    , UpdateMembershipMetadata (..)
    , newUpdateMembershipMetadata

    -- ** UpdateMembershipRolesParams
    , UpdateMembershipRolesParams (..)
    , newUpdateMembershipRolesParams

    -- ** UserInvitation
    , UserInvitation (..)
    , newUserInvitation

    -- ** UserInvitation_State
    , UserInvitation_State (..)

    -- ** DevicesListView
    , DevicesListView (..)

    -- ** GroupsCreateInitialGroupConfig
    , GroupsCreateInitialGroupConfig (..)

    -- ** GroupsListView
    , GroupsListView (..)

    -- ** GroupsMembershipsListView
    , GroupsMembershipsListView (..)

    -- ** GroupsSearchView
    , GroupsSearchView (..)
    ) where

import Gogol.CloudIdentity.Customers.Userinvitations.Cancel
import Gogol.CloudIdentity.Customers.Userinvitations.Get
import Gogol.CloudIdentity.Customers.Userinvitations.IsInvitableUser
import Gogol.CloudIdentity.Customers.Userinvitations.List
import Gogol.CloudIdentity.Customers.Userinvitations.Send
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
import Gogol.CloudIdentity.Groups.Memberships.SearchDirectGroups
import Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
import Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
import Gogol.CloudIdentity.Groups.Patch
import Gogol.CloudIdentity.Groups.Search
import Gogol.CloudIdentity.Groups.UpdateSecuritySettings
import Gogol.CloudIdentity.InboundSamlSsoProfiles.Create
import Gogol.CloudIdentity.InboundSamlSsoProfiles.Delete
import Gogol.CloudIdentity.InboundSamlSsoProfiles.Get
import Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Add
import Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Delete
import Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Get
import Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.List
import Gogol.CloudIdentity.InboundSamlSsoProfiles.List
import Gogol.CloudIdentity.InboundSamlSsoProfiles.Patch
import Gogol.CloudIdentity.InboundSsoAssignments.Create
import Gogol.CloudIdentity.InboundSsoAssignments.Delete
import Gogol.CloudIdentity.InboundSsoAssignments.Get
import Gogol.CloudIdentity.InboundSsoAssignments.List
import Gogol.CloudIdentity.InboundSsoAssignments.Patch
import Gogol.CloudIdentity.Policies.Get
import Gogol.CloudIdentity.Policies.List
import Gogol.CloudIdentity.Types
