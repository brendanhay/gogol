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
-- Module      : Gogol.CloudIdentity.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudIdentity.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * DynamicGroupQuery_ResourceType
    DynamicGroupQuery_ResourceType
      ( DynamicGroupQuery_ResourceType_RESOURCETYPEUNSPECIFIED,
        DynamicGroupQuery_ResourceType_User,
        ..
      ),

    -- * DynamicGroupStatus_Status
    DynamicGroupStatus_Status
      ( DynamicGroupStatus_Status_STATUSUNSPECIFIED,
        DynamicGroupStatus_Status_UPTODATE,
        DynamicGroupStatus_Status_UPDATINGMEMBERSHIPS,
        DynamicGroupStatus_Status_INVALIDQUERY,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
    GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
      ( GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_OWNERSHIPPRIVILEGEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEADMINISTRATOR,
        GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_PROFILEOWNER,
        GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEOWNER,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
    GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
      ( GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_COMPLIANCESTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_Compliant,
        GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_NONCOMPLIANT,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
    GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
      ( GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_HEALTHSCOREUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYPOOR,
        GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Poor,
        GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Neutral,
        GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Good,
        GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYGOOD,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1ClientState_Managed
    GoogleAppsCloudidentityDevicesV1ClientState_Managed
      ( GoogleAppsCloudidentityDevicesV1ClientState_Managed_MANAGEDSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1ClientState_Managed_Managed,
        GoogleAppsCloudidentityDevicesV1ClientState_Managed_Unmanaged,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
    GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
      ( GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPECUSTOMER,
        GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEPARTNER,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1Device_CompromisedState
    GoogleAppsCloudidentityDevicesV1Device_CompromisedState
      ( GoogleAppsCloudidentityDevicesV1Device_CompromisedState_COMPROMISEDSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Compromised,
        GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Uncompromised,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1Device_DeviceType
    GoogleAppsCloudidentityDevicesV1Device_DeviceType
      ( GoogleAppsCloudidentityDevicesV1Device_DeviceType_DEVICETYPEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_Android,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_Ios,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_GOOGLESYNC,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_Windows,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_MACOS,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_Linux,
        GoogleAppsCloudidentityDevicesV1Device_DeviceType_CHROMEOS,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1Device_EncryptionState
    GoogleAppsCloudidentityDevicesV1Device_EncryptionState
      ( GoogleAppsCloudidentityDevicesV1Device_EncryptionState_ENCRYPTIONSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1Device_EncryptionState_UNSUPPORTEDBYDEVICE,
        GoogleAppsCloudidentityDevicesV1Device_EncryptionState_Encrypted,
        GoogleAppsCloudidentityDevicesV1Device_EncryptionState_NOTENCRYPTED,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1Device_ManagementState
    GoogleAppsCloudidentityDevicesV1Device_ManagementState
      ( GoogleAppsCloudidentityDevicesV1Device_ManagementState_MANAGEMENTSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Approved,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Blocked,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Pending,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Unprovisioned,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiping,
        GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiped,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1Device_OwnerType
    GoogleAppsCloudidentityDevicesV1Device_OwnerType
      ( GoogleAppsCloudidentityDevicesV1Device_OwnerType_DEVICEOWNERSHIPUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1Device_OwnerType_Company,
        GoogleAppsCloudidentityDevicesV1Device_OwnerType_Byod,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
    GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
      ( GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_COMPROMISEDSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_Compromised,
        GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_NOTCOMPROMISED,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
    GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
      ( GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_MANAGEMENTSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiping,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiped,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Approved,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Blocked,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_PENDINGAPPROVAL,
        GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Unenrolled,
        ..
      ),

    -- * GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
    GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
      ( GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSTATEUNSPECIFIED,
        GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSET,
        GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDNOTSET,
        ..
      ),

    -- * GroupRelation_RelationType
    GroupRelation_RelationType
      ( GroupRelation_RelationType_RELATIONTYPEUNSPECIFIED,
        GroupRelation_RelationType_Direct,
        GroupRelation_RelationType_Indirect,
        GroupRelation_RelationType_DIRECTANDINDIRECT,
        ..
      ),

    -- * InboundSsoAssignment_SsoMode
    InboundSsoAssignment_SsoMode
      ( InboundSsoAssignment_SsoMode_SSOMODEUNSPECIFIED,
        InboundSsoAssignment_SsoMode_SSOOFF,
        InboundSsoAssignment_SsoMode_SAMLSSO,
        InboundSsoAssignment_SsoMode_DOMAINWIDESAMLIFENABLED,
        ..
      ),

    -- * MemberRelation_RelationType
    MemberRelation_RelationType
      ( MemberRelation_RelationType_RELATIONTYPEUNSPECIFIED,
        MemberRelation_RelationType_Direct,
        MemberRelation_RelationType_Indirect,
        MemberRelation_RelationType_DIRECTANDINDIRECT,
        ..
      ),

    -- * Membership_DeliverySetting
    Membership_DeliverySetting
      ( Membership_DeliverySetting_DELIVERYSETTINGUNSPECIFIED,
        Membership_DeliverySetting_ALLMAIL,
        Membership_DeliverySetting_Digest,
        Membership_DeliverySetting_Daily,
        Membership_DeliverySetting_None,
        Membership_DeliverySetting_Disabled,
        ..
      ),

    -- * Membership_Type
    Membership_Type
      ( Membership_Type_TYPEUNSPECIFIED,
        Membership_Type_User,
        Membership_Type_SERVICEACCOUNT,
        Membership_Type_Group,
        Membership_Type_SHAREDDRIVE,
        Membership_Type_Other,
        ..
      ),

    -- * MembershipRoleRestrictionEvaluation_State
    MembershipRoleRestrictionEvaluation_State
      ( MembershipRoleRestrictionEvaluation_State_STATEUNSPECIFIED,
        MembershipRoleRestrictionEvaluation_State_Compliant,
        MembershipRoleRestrictionEvaluation_State_FORWARDCOMPLIANT,
        MembershipRoleRestrictionEvaluation_State_NONCOMPLIANT,
        MembershipRoleRestrictionEvaluation_State_Evaluating,
        ..
      ),

    -- * RestrictionEvaluation_State
    RestrictionEvaluation_State
      ( RestrictionEvaluation_State_STATEUNSPECIFIED,
        RestrictionEvaluation_State_Evaluating,
        RestrictionEvaluation_State_Compliant,
        RestrictionEvaluation_State_FORWARDCOMPLIANT,
        RestrictionEvaluation_State_NONCOMPLIANT,
        ..
      ),

    -- * SignInBehavior_RedirectCondition
    SignInBehavior_RedirectCondition
      ( SignInBehavior_RedirectCondition_REDIRECTCONDITIONUNSPECIFIED,
        SignInBehavior_RedirectCondition_Never,
        ..
      ),

    -- * UserInvitation_State
    UserInvitation_State
      ( UserInvitation_State_STATEUNSPECIFIED,
        UserInvitation_State_NOTYETSENT,
        UserInvitation_State_Invited,
        UserInvitation_State_Accepted,
        UserInvitation_State_Declined,
        ..
      ),

    -- * DevicesListView
    DevicesListView
      ( DevicesListView_VIEWUNSPECIFIED,
        DevicesListView_COMPANYINVENTORY,
        DevicesListView_USERASSIGNEDDEVICES,
        ..
      ),

    -- * GroupsCreateInitialGroupConfig
    GroupsCreateInitialGroupConfig
      ( GroupsCreateInitialGroupConfig_INITIALGROUPCONFIGUNSPECIFIED,
        GroupsCreateInitialGroupConfig_WITHINITIALOWNER,
        GroupsCreateInitialGroupConfig_Empty,
        ..
      ),

    -- * GroupsListView
    GroupsListView
      ( GroupsListView_VIEWUNSPECIFIED,
        GroupsListView_Basic,
        GroupsListView_Full,
        ..
      ),

    -- * GroupsMembershipsListView
    GroupsMembershipsListView
      ( GroupsMembershipsListView_VIEWUNSPECIFIED,
        GroupsMembershipsListView_Basic,
        GroupsMembershipsListView_Full,
        ..
      ),

    -- * GroupsSearchView
    GroupsSearchView
      ( GroupsSearchView_VIEWUNSPECIFIED,
        GroupsSearchView_Basic,
        GroupsSearchView_Full,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Resource type for the Dynamic Group Query
newtype DynamicGroupQuery_ResourceType = DynamicGroupQuery_ResourceType {fromDynamicGroupQuery_ResourceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value (not valid)
pattern DynamicGroupQuery_ResourceType_RESOURCETYPEUNSPECIFIED :: DynamicGroupQuery_ResourceType
pattern DynamicGroupQuery_ResourceType_RESOURCETYPEUNSPECIFIED = DynamicGroupQuery_ResourceType "RESOURCE_TYPE_UNSPECIFIED"

-- | For queries on User
pattern DynamicGroupQuery_ResourceType_User :: DynamicGroupQuery_ResourceType
pattern DynamicGroupQuery_ResourceType_User = DynamicGroupQuery_ResourceType "USER"

{-# COMPLETE
  DynamicGroupQuery_ResourceType_RESOURCETYPEUNSPECIFIED,
  DynamicGroupQuery_ResourceType_User,
  DynamicGroupQuery_ResourceType
  #-}

-- | Status of the dynamic group.
newtype DynamicGroupStatus_Status = DynamicGroupStatus_Status {fromDynamicGroupStatus_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default.
pattern DynamicGroupStatus_Status_STATUSUNSPECIFIED :: DynamicGroupStatus_Status
pattern DynamicGroupStatus_Status_STATUSUNSPECIFIED = DynamicGroupStatus_Status "STATUS_UNSPECIFIED"

-- | The dynamic group is up-to-date.
pattern DynamicGroupStatus_Status_UPTODATE :: DynamicGroupStatus_Status
pattern DynamicGroupStatus_Status_UPTODATE = DynamicGroupStatus_Status "UP_TO_DATE"

-- | The dynamic group has just been created and memberships are being updated.
pattern DynamicGroupStatus_Status_UPDATINGMEMBERSHIPS :: DynamicGroupStatus_Status
pattern DynamicGroupStatus_Status_UPDATINGMEMBERSHIPS = DynamicGroupStatus_Status "UPDATING_MEMBERSHIPS"

-- | Group is in an unrecoverable state and its memberships can\'t be updated.
pattern DynamicGroupStatus_Status_INVALIDQUERY :: DynamicGroupStatus_Status
pattern DynamicGroupStatus_Status_INVALIDQUERY = DynamicGroupStatus_Status "INVALID_QUERY"

{-# COMPLETE
  DynamicGroupStatus_Status_STATUSUNSPECIFIED,
  DynamicGroupStatus_Status_UPTODATE,
  DynamicGroupStatus_Status_UPDATINGMEMBERSHIPS,
  DynamicGroupStatus_Status_INVALIDQUERY,
  DynamicGroupStatus_Status
  #-}

-- | Ownership privileges on device.
newtype GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege = GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege {fromGoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ownership privilege is not set.
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_OWNERSHIPPRIVILEGEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_OWNERSHIPPRIVILEGEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege "OWNERSHIP_PRIVILEGE_UNSPECIFIED"

-- | Active device administrator privileges on the device.
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEADMINISTRATOR :: GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEADMINISTRATOR = GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege "DEVICE_ADMINISTRATOR"

-- | Profile Owner privileges. The account is in a managed corporate profile.
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_PROFILEOWNER :: GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_PROFILEOWNER = GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege "PROFILE_OWNER"

-- | Device Owner privileges on the device.
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEOWNER :: GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
pattern GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEOWNER = GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege "DEVICE_OWNER"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_OWNERSHIPPRIVILEGEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEADMINISTRATOR,
  GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_PROFILEOWNER,
  GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DEVICEOWNER,
  GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege
  #-}

-- | The compliance state of the resource as specified by the API client.
newtype GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState = GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState {fromGoogleAppsCloudidentityDevicesV1ClientState_ComplianceState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The compliance state of the resource is unknown or unspecified.
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_COMPLIANCESTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_COMPLIANCESTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState "COMPLIANCE_STATE_UNSPECIFIED"

-- | Device is compliant with third party policies
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_Compliant :: GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_Compliant = GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState "COMPLIANT"

-- | Device is not compliant with third party policies
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_NONCOMPLIANT :: GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
pattern GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_NONCOMPLIANT = GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState "NON_COMPLIANT"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_COMPLIANCESTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_Compliant,
  GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_NONCOMPLIANT,
  GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState
  #-}

-- | The Health score of the resource. The Health score is the callers specification of the condition of the device from a usability point of view. For example, a third-party device management provider may specify a health score based on its compliance with organizational policies.
newtype GoogleAppsCloudidentityDevicesV1ClientState_HealthScore = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore {fromGoogleAppsCloudidentityDevicesV1ClientState_HealthScore :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_HEALTHSCOREUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_HEALTHSCOREUNSPECIFIED = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "HEALTH_SCORE_UNSPECIFIED"

-- | The object is in very poor health as defined by the caller.
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYPOOR :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYPOOR = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "VERY_POOR"

-- | The object is in poor health as defined by the caller.
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Poor :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Poor = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "POOR"

-- | The object health is neither good nor poor, as defined by the caller.
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Neutral :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Neutral = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "NEUTRAL"

-- | The object is in good health as defined by the caller.
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Good :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Good = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "GOOD"

-- | The object is in very good health as defined by the caller.
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYGOOD :: GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
pattern GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYGOOD = GoogleAppsCloudidentityDevicesV1ClientState_HealthScore "VERY_GOOD"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_HEALTHSCOREUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYPOOR,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Poor,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Neutral,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Good,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VERYGOOD,
  GoogleAppsCloudidentityDevicesV1ClientState_HealthScore
  #-}

-- | The management state of the resource as specified by the API client.
newtype GoogleAppsCloudidentityDevicesV1ClientState_Managed = GoogleAppsCloudidentityDevicesV1ClientState_Managed {fromGoogleAppsCloudidentityDevicesV1ClientState_Managed :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The management state of the resource is unknown or unspecified.
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_MANAGEDSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1ClientState_Managed
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_MANAGEDSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1ClientState_Managed "MANAGED_STATE_UNSPECIFIED"

-- | The resource is managed.
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_Managed :: GoogleAppsCloudidentityDevicesV1ClientState_Managed
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_Managed = GoogleAppsCloudidentityDevicesV1ClientState_Managed "MANAGED"

-- | The resource is not managed.
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_Unmanaged :: GoogleAppsCloudidentityDevicesV1ClientState_Managed
pattern GoogleAppsCloudidentityDevicesV1ClientState_Managed_Unmanaged = GoogleAppsCloudidentityDevicesV1ClientState_Managed "UNMANAGED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1ClientState_Managed_MANAGEDSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1ClientState_Managed_Managed,
  GoogleAppsCloudidentityDevicesV1ClientState_Managed_Unmanaged,
  GoogleAppsCloudidentityDevicesV1ClientState_Managed
  #-}

-- | Output only. The owner of the ClientState
newtype GoogleAppsCloudidentityDevicesV1ClientState_OwnerType = GoogleAppsCloudidentityDevicesV1ClientState_OwnerType {fromGoogleAppsCloudidentityDevicesV1ClientState_OwnerType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown owner type
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1ClientState_OwnerType "OWNER_TYPE_UNSPECIFIED"

-- | Customer is the owner
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPECUSTOMER :: GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPECUSTOMER = GoogleAppsCloudidentityDevicesV1ClientState_OwnerType "OWNER_TYPE_CUSTOMER"

-- | Partner is the owner
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEPARTNER :: GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
pattern GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEPARTNER = GoogleAppsCloudidentityDevicesV1ClientState_OwnerType "OWNER_TYPE_PARTNER"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPECUSTOMER,
  GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OWNERTYPEPARTNER,
  GoogleAppsCloudidentityDevicesV1ClientState_OwnerType
  #-}

-- | Output only. Represents whether the Device is compromised.
newtype GoogleAppsCloudidentityDevicesV1Device_CompromisedState = GoogleAppsCloudidentityDevicesV1Device_CompromisedState {fromGoogleAppsCloudidentityDevicesV1Device_CompromisedState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_COMPROMISEDSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1Device_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_COMPROMISEDSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1Device_CompromisedState "COMPROMISED_STATE_UNSPECIFIED"

-- | The device is compromised (currently, this means Android device is rooted).
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Compromised :: GoogleAppsCloudidentityDevicesV1Device_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Compromised = GoogleAppsCloudidentityDevicesV1Device_CompromisedState "COMPROMISED"

-- | The device is safe (currently, this means Android device is unrooted).
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Uncompromised :: GoogleAppsCloudidentityDevicesV1Device_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Uncompromised = GoogleAppsCloudidentityDevicesV1Device_CompromisedState "UNCOMPROMISED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1Device_CompromisedState_COMPROMISEDSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Compromised,
  GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Uncompromised,
  GoogleAppsCloudidentityDevicesV1Device_CompromisedState
  #-}

-- | Output only. Type of device.
newtype GoogleAppsCloudidentityDevicesV1Device_DeviceType = GoogleAppsCloudidentityDevicesV1Device_DeviceType {fromGoogleAppsCloudidentityDevicesV1Device_DeviceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown device type
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_DEVICETYPEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_DEVICETYPEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1Device_DeviceType "DEVICE_TYPE_UNSPECIFIED"

-- | Device is an Android device
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Android :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Android = GoogleAppsCloudidentityDevicesV1Device_DeviceType "ANDROID"

-- | Device is an iOS device
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Ios :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Ios = GoogleAppsCloudidentityDevicesV1Device_DeviceType "IOS"

-- | Device is a Google Sync device.
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_GOOGLESYNC :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_GOOGLESYNC = GoogleAppsCloudidentityDevicesV1Device_DeviceType "GOOGLE_SYNC"

-- | Device is a Windows device.
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Windows :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Windows = GoogleAppsCloudidentityDevicesV1Device_DeviceType "WINDOWS"

-- | Device is a MacOS device.
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_MACOS :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_MACOS = GoogleAppsCloudidentityDevicesV1Device_DeviceType "MAC_OS"

-- | Device is a Linux device.
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Linux :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_Linux = GoogleAppsCloudidentityDevicesV1Device_DeviceType "LINUX"

-- | Device is a ChromeOS device.
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_CHROMEOS :: GoogleAppsCloudidentityDevicesV1Device_DeviceType
pattern GoogleAppsCloudidentityDevicesV1Device_DeviceType_CHROMEOS = GoogleAppsCloudidentityDevicesV1Device_DeviceType "CHROME_OS"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_DEVICETYPEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_Android,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_Ios,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_GOOGLESYNC,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_Windows,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_MACOS,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_Linux,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType_CHROMEOS,
  GoogleAppsCloudidentityDevicesV1Device_DeviceType
  #-}

-- | Output only. Device encryption state.
newtype GoogleAppsCloudidentityDevicesV1Device_EncryptionState = GoogleAppsCloudidentityDevicesV1Device_EncryptionState {fromGoogleAppsCloudidentityDevicesV1Device_EncryptionState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Encryption Status is not set.
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_ENCRYPTIONSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1Device_EncryptionState
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_ENCRYPTIONSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1Device_EncryptionState "ENCRYPTION_STATE_UNSPECIFIED"

-- | Device doesn\'t support encryption.
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_UNSUPPORTEDBYDEVICE :: GoogleAppsCloudidentityDevicesV1Device_EncryptionState
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_UNSUPPORTEDBYDEVICE = GoogleAppsCloudidentityDevicesV1Device_EncryptionState "UNSUPPORTED_BY_DEVICE"

-- | Device is encrypted.
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_Encrypted :: GoogleAppsCloudidentityDevicesV1Device_EncryptionState
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_Encrypted = GoogleAppsCloudidentityDevicesV1Device_EncryptionState "ENCRYPTED"

-- | Device is not encrypted.
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_NOTENCRYPTED :: GoogleAppsCloudidentityDevicesV1Device_EncryptionState
pattern GoogleAppsCloudidentityDevicesV1Device_EncryptionState_NOTENCRYPTED = GoogleAppsCloudidentityDevicesV1Device_EncryptionState "NOT_ENCRYPTED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1Device_EncryptionState_ENCRYPTIONSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1Device_EncryptionState_UNSUPPORTEDBYDEVICE,
  GoogleAppsCloudidentityDevicesV1Device_EncryptionState_Encrypted,
  GoogleAppsCloudidentityDevicesV1Device_EncryptionState_NOTENCRYPTED,
  GoogleAppsCloudidentityDevicesV1Device_EncryptionState
  #-}

-- | Output only. Management state of the device
newtype GoogleAppsCloudidentityDevicesV1Device_ManagementState = GoogleAppsCloudidentityDevicesV1Device_ManagementState {fromGoogleAppsCloudidentityDevicesV1Device_ManagementState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_MANAGEMENTSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_MANAGEMENTSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1Device_ManagementState "MANAGEMENT_STATE_UNSPECIFIED"

-- | Device is approved.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Approved :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Approved = GoogleAppsCloudidentityDevicesV1Device_ManagementState "APPROVED"

-- | Device is blocked.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Blocked :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Blocked = GoogleAppsCloudidentityDevicesV1Device_ManagementState "BLOCKED"

-- | Device is pending approval.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Pending :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Pending = GoogleAppsCloudidentityDevicesV1Device_ManagementState "PENDING"

-- | The device is not provisioned. Device will start from this state until some action is taken (i.e. a user starts using the device).
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Unprovisioned :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Unprovisioned = GoogleAppsCloudidentityDevicesV1Device_ManagementState "UNPROVISIONED"

-- | Data and settings on the device are being removed.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiping :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiping = GoogleAppsCloudidentityDevicesV1Device_ManagementState "WIPING"

-- | All data and settings on the device are removed.
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiped :: GoogleAppsCloudidentityDevicesV1Device_ManagementState
pattern GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiped = GoogleAppsCloudidentityDevicesV1Device_ManagementState "WIPED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_MANAGEMENTSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Approved,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Blocked,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Pending,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Unprovisioned,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiping,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiped,
  GoogleAppsCloudidentityDevicesV1Device_ManagementState
  #-}

-- | Output only. Whether the device is owned by the company or an individual
newtype GoogleAppsCloudidentityDevicesV1Device_OwnerType = GoogleAppsCloudidentityDevicesV1Device_OwnerType {fromGoogleAppsCloudidentityDevicesV1Device_OwnerType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. The value is unused.
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_DEVICEOWNERSHIPUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1Device_OwnerType
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_DEVICEOWNERSHIPUNSPECIFIED = GoogleAppsCloudidentityDevicesV1Device_OwnerType "DEVICE_OWNERSHIP_UNSPECIFIED"

-- | Company owns the device.
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_Company :: GoogleAppsCloudidentityDevicesV1Device_OwnerType
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_Company = GoogleAppsCloudidentityDevicesV1Device_OwnerType "COMPANY"

-- | Bring Your Own Device (i.e. individual owns the device)
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_Byod :: GoogleAppsCloudidentityDevicesV1Device_OwnerType
pattern GoogleAppsCloudidentityDevicesV1Device_OwnerType_Byod = GoogleAppsCloudidentityDevicesV1Device_OwnerType "BYOD"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1Device_OwnerType_DEVICEOWNERSHIPUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1Device_OwnerType_Company,
  GoogleAppsCloudidentityDevicesV1Device_OwnerType_Byod,
  GoogleAppsCloudidentityDevicesV1Device_OwnerType
  #-}

-- | Compromised State of the DeviceUser object
newtype GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState = GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState {fromGoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Compromised state of Device User account is unknown or unspecified.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_COMPROMISEDSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_COMPROMISEDSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState "COMPROMISED_STATE_UNSPECIFIED"

-- | Device User Account is compromised.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_Compromised :: GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_Compromised = GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState "COMPROMISED"

-- | Device User Account is not compromised.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_NOTCOMPROMISED :: GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_NOTCOMPROMISED = GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState "NOT_COMPROMISED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_COMPROMISEDSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_Compromised,
  GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_NOTCOMPROMISED,
  GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState
  #-}

-- | Output only. Management state of the user on the device.
newtype GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState {fromGoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_MANAGEMENTSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_MANAGEMENTSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "MANAGEMENT_STATE_UNSPECIFIED"

-- | This user\'s data and profile is being removed from the device.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiping :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiping = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "WIPING"

-- | This user\'s data and profile is removed from the device.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiped :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiped = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "WIPED"

-- | User is approved to access data on the device.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Approved :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Approved = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "APPROVED"

-- | User is blocked from accessing data on the device.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Blocked :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Blocked = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "BLOCKED"

-- | User is awaiting approval.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_PENDINGAPPROVAL :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_PENDINGAPPROVAL = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "PENDING_APPROVAL"

-- | User is unenrolled from Advanced Windows Management, but the Windows account is still intact.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Unenrolled :: GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Unenrolled = GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState "UNENROLLED"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_MANAGEMENTSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiping,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiped,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Approved,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Blocked,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_PENDINGAPPROVAL,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Unenrolled,
  GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState
  #-}

-- | Password state of the DeviceUser object
newtype GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState = GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState {fromGoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Password state not set.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSTATEUNSPECIFIED :: GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSTATEUNSPECIFIED = GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState "PASSWORD_STATE_UNSPECIFIED"

-- | Password set in object.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSET :: GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSET = GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState "PASSWORD_SET"

-- | Password not set in object.
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDNOTSET :: GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
pattern GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDNOTSET = GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState "PASSWORD_NOT_SET"

{-# COMPLETE
  GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSTATEUNSPECIFIED,
  GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDSET,
  GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PASSWORDNOTSET,
  GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState
  #-}

-- | The relation between the member and the transitive group.
newtype GroupRelation_RelationType = GroupRelation_RelationType {fromGroupRelation_RelationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The relation type is undefined or undetermined.
pattern GroupRelation_RelationType_RELATIONTYPEUNSPECIFIED :: GroupRelation_RelationType
pattern GroupRelation_RelationType_RELATIONTYPEUNSPECIFIED = GroupRelation_RelationType "RELATION_TYPE_UNSPECIFIED"

-- | The two entities have only a direct membership with each other.
pattern GroupRelation_RelationType_Direct :: GroupRelation_RelationType
pattern GroupRelation_RelationType_Direct = GroupRelation_RelationType "DIRECT"

-- | The two entities have only an indirect membership with each other.
pattern GroupRelation_RelationType_Indirect :: GroupRelation_RelationType
pattern GroupRelation_RelationType_Indirect = GroupRelation_RelationType "INDIRECT"

-- | The two entities have both a direct and an indirect membership with each other.
pattern GroupRelation_RelationType_DIRECTANDINDIRECT :: GroupRelation_RelationType
pattern GroupRelation_RelationType_DIRECTANDINDIRECT = GroupRelation_RelationType "DIRECT_AND_INDIRECT"

{-# COMPLETE
  GroupRelation_RelationType_RELATIONTYPEUNSPECIFIED,
  GroupRelation_RelationType_Direct,
  GroupRelation_RelationType_Indirect,
  GroupRelation_RelationType_DIRECTANDINDIRECT,
  GroupRelation_RelationType
  #-}

-- | Inbound SSO behavior.
newtype InboundSsoAssignment_SsoMode = InboundSsoAssignment_SsoMode {fromInboundSsoAssignment_SsoMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not allowed.
pattern InboundSsoAssignment_SsoMode_SSOMODEUNSPECIFIED :: InboundSsoAssignment_SsoMode
pattern InboundSsoAssignment_SsoMode_SSOMODEUNSPECIFIED = InboundSsoAssignment_SsoMode "SSO_MODE_UNSPECIFIED"

-- | Disable SSO for the targeted users.
pattern InboundSsoAssignment_SsoMode_SSOOFF :: InboundSsoAssignment_SsoMode
pattern InboundSsoAssignment_SsoMode_SSOOFF = InboundSsoAssignment_SsoMode "SSO_OFF"

-- | Use an external SAML Identity Provider for SSO for the targeted users.
pattern InboundSsoAssignment_SsoMode_SAMLSSO :: InboundSsoAssignment_SsoMode
pattern InboundSsoAssignment_SsoMode_SAMLSSO = InboundSsoAssignment_SsoMode "SAML_SSO"

-- | Use the domain-wide SAML Identity Provider for the targeted users if one is configured; otherwise, this is equivalent to @SSO_OFF@. Note that this will also be equivalent to @SSO_OFF@ if\/when support for domain-wide SAML is removed. Google may disallow this mode at that point and existing assignments with this mode may be automatically changed to @SSO_OFF@.
pattern InboundSsoAssignment_SsoMode_DOMAINWIDESAMLIFENABLED :: InboundSsoAssignment_SsoMode
pattern InboundSsoAssignment_SsoMode_DOMAINWIDESAMLIFENABLED = InboundSsoAssignment_SsoMode "DOMAIN_WIDE_SAML_IF_ENABLED"

{-# COMPLETE
  InboundSsoAssignment_SsoMode_SSOMODEUNSPECIFIED,
  InboundSsoAssignment_SsoMode_SSOOFF,
  InboundSsoAssignment_SsoMode_SAMLSSO,
  InboundSsoAssignment_SsoMode_DOMAINWIDESAMLIFENABLED,
  InboundSsoAssignment_SsoMode
  #-}

-- | The relation between the group and the transitive member.
newtype MemberRelation_RelationType = MemberRelation_RelationType {fromMemberRelation_RelationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The relation type is undefined or undetermined.
pattern MemberRelation_RelationType_RELATIONTYPEUNSPECIFIED :: MemberRelation_RelationType
pattern MemberRelation_RelationType_RELATIONTYPEUNSPECIFIED = MemberRelation_RelationType "RELATION_TYPE_UNSPECIFIED"

-- | The two entities have only a direct membership with each other.
pattern MemberRelation_RelationType_Direct :: MemberRelation_RelationType
pattern MemberRelation_RelationType_Direct = MemberRelation_RelationType "DIRECT"

-- | The two entities have only an indirect membership with each other.
pattern MemberRelation_RelationType_Indirect :: MemberRelation_RelationType
pattern MemberRelation_RelationType_Indirect = MemberRelation_RelationType "INDIRECT"

-- | The two entities have both a direct and an indirect membership with each other.
pattern MemberRelation_RelationType_DIRECTANDINDIRECT :: MemberRelation_RelationType
pattern MemberRelation_RelationType_DIRECTANDINDIRECT = MemberRelation_RelationType "DIRECT_AND_INDIRECT"

{-# COMPLETE
  MemberRelation_RelationType_RELATIONTYPEUNSPECIFIED,
  MemberRelation_RelationType_Direct,
  MemberRelation_RelationType_Indirect,
  MemberRelation_RelationType_DIRECTANDINDIRECT,
  MemberRelation_RelationType
  #-}

-- | Output only. Delivery setting associated with the membership.
newtype Membership_DeliverySetting = Membership_DeliverySetting {fromMembership_DeliverySetting :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern Membership_DeliverySetting_DELIVERYSETTINGUNSPECIFIED :: Membership_DeliverySetting
pattern Membership_DeliverySetting_DELIVERYSETTINGUNSPECIFIED = Membership_DeliverySetting "DELIVERY_SETTING_UNSPECIFIED"

-- | Represents each mail should be delivered
pattern Membership_DeliverySetting_ALLMAIL :: Membership_DeliverySetting
pattern Membership_DeliverySetting_ALLMAIL = Membership_DeliverySetting "ALL_MAIL"

-- | Represents 1 email for every 25 messages.
pattern Membership_DeliverySetting_Digest :: Membership_DeliverySetting
pattern Membership_DeliverySetting_Digest = Membership_DeliverySetting "DIGEST"

-- | Represents daily summary of messages.
pattern Membership_DeliverySetting_Daily :: Membership_DeliverySetting
pattern Membership_DeliverySetting_Daily = Membership_DeliverySetting "DAILY"

-- | Represents no delivery.
pattern Membership_DeliverySetting_None :: Membership_DeliverySetting
pattern Membership_DeliverySetting_None = Membership_DeliverySetting "NONE"

-- | Represents disabled state.
pattern Membership_DeliverySetting_Disabled :: Membership_DeliverySetting
pattern Membership_DeliverySetting_Disabled = Membership_DeliverySetting "DISABLED"

{-# COMPLETE
  Membership_DeliverySetting_DELIVERYSETTINGUNSPECIFIED,
  Membership_DeliverySetting_ALLMAIL,
  Membership_DeliverySetting_Digest,
  Membership_DeliverySetting_Daily,
  Membership_DeliverySetting_None,
  Membership_DeliverySetting_Disabled,
  Membership_DeliverySetting
  #-}

-- | Output only. The type of the membership.
newtype Membership_Type = Membership_Type {fromMembership_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern Membership_Type_TYPEUNSPECIFIED :: Membership_Type
pattern Membership_Type_TYPEUNSPECIFIED = Membership_Type "TYPE_UNSPECIFIED"

-- | Represents user type.
pattern Membership_Type_User :: Membership_Type
pattern Membership_Type_User = Membership_Type "USER"

-- | Represents service account type.
pattern Membership_Type_SERVICEACCOUNT :: Membership_Type
pattern Membership_Type_SERVICEACCOUNT = Membership_Type "SERVICE_ACCOUNT"

-- | Represents group type.
pattern Membership_Type_Group :: Membership_Type
pattern Membership_Type_Group = Membership_Type "GROUP"

-- | Represents Shared drive.
pattern Membership_Type_SHAREDDRIVE :: Membership_Type
pattern Membership_Type_SHAREDDRIVE = Membership_Type "SHARED_DRIVE"

-- | Represents other type.
pattern Membership_Type_Other :: Membership_Type
pattern Membership_Type_Other = Membership_Type "OTHER"

{-# COMPLETE
  Membership_Type_TYPEUNSPECIFIED,
  Membership_Type_User,
  Membership_Type_SERVICEACCOUNT,
  Membership_Type_Group,
  Membership_Type_SHAREDDRIVE,
  Membership_Type_Other,
  Membership_Type
  #-}

-- | Output only. The current state of the restriction
newtype MembershipRoleRestrictionEvaluation_State = MembershipRoleRestrictionEvaluation_State {fromMembershipRoleRestrictionEvaluation_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern MembershipRoleRestrictionEvaluation_State_STATEUNSPECIFIED :: MembershipRoleRestrictionEvaluation_State
pattern MembershipRoleRestrictionEvaluation_State_STATEUNSPECIFIED = MembershipRoleRestrictionEvaluation_State "STATE_UNSPECIFIED"

-- | The member adheres to the parent group\'s restriction.
pattern MembershipRoleRestrictionEvaluation_State_Compliant :: MembershipRoleRestrictionEvaluation_State
pattern MembershipRoleRestrictionEvaluation_State_Compliant = MembershipRoleRestrictionEvaluation_State "COMPLIANT"

-- | The group-group membership might be currently violating some parent group\'s restriction but in future, it will never allow any new member in the child group which can violate parent group\'s restriction.
pattern MembershipRoleRestrictionEvaluation_State_FORWARDCOMPLIANT :: MembershipRoleRestrictionEvaluation_State
pattern MembershipRoleRestrictionEvaluation_State_FORWARDCOMPLIANT = MembershipRoleRestrictionEvaluation_State "FORWARD_COMPLIANT"

-- | The member violates the parent group\'s restriction.
pattern MembershipRoleRestrictionEvaluation_State_NONCOMPLIANT :: MembershipRoleRestrictionEvaluation_State
pattern MembershipRoleRestrictionEvaluation_State_NONCOMPLIANT = MembershipRoleRestrictionEvaluation_State "NON_COMPLIANT"

-- | The state of the membership is under evaluation.
pattern MembershipRoleRestrictionEvaluation_State_Evaluating :: MembershipRoleRestrictionEvaluation_State
pattern MembershipRoleRestrictionEvaluation_State_Evaluating = MembershipRoleRestrictionEvaluation_State "EVALUATING"

{-# COMPLETE
  MembershipRoleRestrictionEvaluation_State_STATEUNSPECIFIED,
  MembershipRoleRestrictionEvaluation_State_Compliant,
  MembershipRoleRestrictionEvaluation_State_FORWARDCOMPLIANT,
  MembershipRoleRestrictionEvaluation_State_NONCOMPLIANT,
  MembershipRoleRestrictionEvaluation_State_Evaluating,
  MembershipRoleRestrictionEvaluation_State
  #-}

-- | Output only. The current state of the restriction
newtype RestrictionEvaluation_State = RestrictionEvaluation_State {fromRestrictionEvaluation_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern RestrictionEvaluation_State_STATEUNSPECIFIED :: RestrictionEvaluation_State
pattern RestrictionEvaluation_State_STATEUNSPECIFIED = RestrictionEvaluation_State "STATE_UNSPECIFIED"

-- | The restriction state is currently being evaluated.
pattern RestrictionEvaluation_State_Evaluating :: RestrictionEvaluation_State
pattern RestrictionEvaluation_State_Evaluating = RestrictionEvaluation_State "EVALUATING"

-- | All transitive memberships are adhering to restriction.
pattern RestrictionEvaluation_State_Compliant :: RestrictionEvaluation_State
pattern RestrictionEvaluation_State_Compliant = RestrictionEvaluation_State "COMPLIANT"

-- | Some transitive memberships violate the restriction. No new violating memberships can be added.
pattern RestrictionEvaluation_State_FORWARDCOMPLIANT :: RestrictionEvaluation_State
pattern RestrictionEvaluation_State_FORWARDCOMPLIANT = RestrictionEvaluation_State "FORWARD_COMPLIANT"

-- | Some transitive memberships violate the restriction. New violating direct memberships will be denied while indirect memberships may be added.
pattern RestrictionEvaluation_State_NONCOMPLIANT :: RestrictionEvaluation_State
pattern RestrictionEvaluation_State_NONCOMPLIANT = RestrictionEvaluation_State "NON_COMPLIANT"

{-# COMPLETE
  RestrictionEvaluation_State_STATEUNSPECIFIED,
  RestrictionEvaluation_State_Evaluating,
  RestrictionEvaluation_State_Compliant,
  RestrictionEvaluation_State_FORWARDCOMPLIANT,
  RestrictionEvaluation_State_NONCOMPLIANT,
  RestrictionEvaluation_State
  #-}

-- | When to redirect sign-ins to the IdP.
newtype SignInBehavior_RedirectCondition = SignInBehavior_RedirectCondition {fromSignInBehavior_RedirectCondition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default and means \"always\"
pattern SignInBehavior_RedirectCondition_REDIRECTCONDITIONUNSPECIFIED :: SignInBehavior_RedirectCondition
pattern SignInBehavior_RedirectCondition_REDIRECTCONDITIONUNSPECIFIED = SignInBehavior_RedirectCondition "REDIRECT_CONDITION_UNSPECIFIED"

-- | Sign-in flows where the user is prompted for their identity will not redirect to the IdP (so the user will most likely be prompted by Google for a password), but special flows like IdP-initiated SAML and sign-in following automatic redirection to the IdP by domain-specific service URLs will accept the IdP\'s assertion of the user\'s identity.
pattern SignInBehavior_RedirectCondition_Never :: SignInBehavior_RedirectCondition
pattern SignInBehavior_RedirectCondition_Never = SignInBehavior_RedirectCondition "NEVER"

{-# COMPLETE
  SignInBehavior_RedirectCondition_REDIRECTCONDITIONUNSPECIFIED,
  SignInBehavior_RedirectCondition_Never,
  SignInBehavior_RedirectCondition
  #-}

-- | State of the @UserInvitation@.
newtype UserInvitation_State = UserInvitation_State {fromUserInvitation_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value. This value is used if the state is omitted.
pattern UserInvitation_State_STATEUNSPECIFIED :: UserInvitation_State
pattern UserInvitation_State_STATEUNSPECIFIED = UserInvitation_State "STATE_UNSPECIFIED"

-- | The @UserInvitation@ has been created and is ready for sending as an email.
pattern UserInvitation_State_NOTYETSENT :: UserInvitation_State
pattern UserInvitation_State_NOTYETSENT = UserInvitation_State "NOT_YET_SENT"

-- | The user has been invited by email.
pattern UserInvitation_State_Invited :: UserInvitation_State
pattern UserInvitation_State_Invited = UserInvitation_State "INVITED"

-- | The user has accepted the invitation and is part of the organization.
pattern UserInvitation_State_Accepted :: UserInvitation_State
pattern UserInvitation_State_Accepted = UserInvitation_State "ACCEPTED"

-- | The user declined the invitation.
pattern UserInvitation_State_Declined :: UserInvitation_State
pattern UserInvitation_State_Declined = UserInvitation_State "DECLINED"

{-# COMPLETE
  UserInvitation_State_STATEUNSPECIFIED,
  UserInvitation_State_NOTYETSENT,
  UserInvitation_State_Invited,
  UserInvitation_State_Accepted,
  UserInvitation_State_Declined,
  UserInvitation_State
  #-}

-- | Optional. The view to use for the List request.
newtype DevicesListView = DevicesListView {fromDevicesListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. The value is unused.
pattern DevicesListView_VIEWUNSPECIFIED :: DevicesListView
pattern DevicesListView_VIEWUNSPECIFIED = DevicesListView "VIEW_UNSPECIFIED"

-- | This view contains all devices imported by the company admin. Each device in the response contains all information specified by the company admin when importing the device (i.e. asset tags). This includes devices that may be unaassigned or assigned to users.
pattern DevicesListView_COMPANYINVENTORY :: DevicesListView
pattern DevicesListView_COMPANYINVENTORY = DevicesListView "COMPANY_INVENTORY"

-- | This view contains all devices with at least one user registered on the device. Each device in the response contains all device information, except for asset tags.
pattern DevicesListView_USERASSIGNEDDEVICES :: DevicesListView
pattern DevicesListView_USERASSIGNEDDEVICES = DevicesListView "USER_ASSIGNED_DEVICES"

{-# COMPLETE
  DevicesListView_VIEWUNSPECIFIED,
  DevicesListView_COMPANYINVENTORY,
  DevicesListView_USERASSIGNEDDEVICES,
  DevicesListView
  #-}

-- | Optional. The initial configuration option for the @Group@.
newtype GroupsCreateInitialGroupConfig = GroupsCreateInitialGroupConfig {fromGroupsCreateInitialGroupConfig :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern GroupsCreateInitialGroupConfig_INITIALGROUPCONFIGUNSPECIFIED :: GroupsCreateInitialGroupConfig
pattern GroupsCreateInitialGroupConfig_INITIALGROUPCONFIGUNSPECIFIED = GroupsCreateInitialGroupConfig "INITIAL_GROUP_CONFIG_UNSPECIFIED"

-- | The end user making the request will be added as the initial owner of the @Group@.
pattern GroupsCreateInitialGroupConfig_WITHINITIALOWNER :: GroupsCreateInitialGroupConfig
pattern GroupsCreateInitialGroupConfig_WITHINITIALOWNER = GroupsCreateInitialGroupConfig "WITH_INITIAL_OWNER"

-- | An empty group is created without any initial owners. This can only be used by admins of the domain.
pattern GroupsCreateInitialGroupConfig_Empty :: GroupsCreateInitialGroupConfig
pattern GroupsCreateInitialGroupConfig_Empty = GroupsCreateInitialGroupConfig "EMPTY"

{-# COMPLETE
  GroupsCreateInitialGroupConfig_INITIALGROUPCONFIGUNSPECIFIED,
  GroupsCreateInitialGroupConfig_WITHINITIALOWNER,
  GroupsCreateInitialGroupConfig_Empty,
  GroupsCreateInitialGroupConfig
  #-}

-- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
newtype GroupsListView = GroupsListView {fromGroupsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern GroupsListView_VIEWUNSPECIFIED :: GroupsListView
pattern GroupsListView_VIEWUNSPECIFIED = GroupsListView "VIEW_UNSPECIFIED"

-- | Only basic resource information is returned.
pattern GroupsListView_Basic :: GroupsListView
pattern GroupsListView_Basic = GroupsListView "BASIC"

-- | All resource information is returned.
pattern GroupsListView_Full :: GroupsListView
pattern GroupsListView_Full = GroupsListView "FULL"

{-# COMPLETE
  GroupsListView_VIEWUNSPECIFIED,
  GroupsListView_Basic,
  GroupsListView_Full,
  GroupsListView
  #-}

-- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
newtype GroupsMembershipsListView = GroupsMembershipsListView {fromGroupsMembershipsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern GroupsMembershipsListView_VIEWUNSPECIFIED :: GroupsMembershipsListView
pattern GroupsMembershipsListView_VIEWUNSPECIFIED = GroupsMembershipsListView "VIEW_UNSPECIFIED"

-- | Only basic resource information is returned.
pattern GroupsMembershipsListView_Basic :: GroupsMembershipsListView
pattern GroupsMembershipsListView_Basic = GroupsMembershipsListView "BASIC"

-- | All resource information is returned.
pattern GroupsMembershipsListView_Full :: GroupsMembershipsListView
pattern GroupsMembershipsListView_Full = GroupsMembershipsListView "FULL"

{-# COMPLETE
  GroupsMembershipsListView_VIEWUNSPECIFIED,
  GroupsMembershipsListView_Basic,
  GroupsMembershipsListView_Full,
  GroupsMembershipsListView
  #-}

-- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
newtype GroupsSearchView = GroupsSearchView {fromGroupsSearchView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. Should not be used.
pattern GroupsSearchView_VIEWUNSPECIFIED :: GroupsSearchView
pattern GroupsSearchView_VIEWUNSPECIFIED = GroupsSearchView "VIEW_UNSPECIFIED"

-- | Only basic resource information is returned.
pattern GroupsSearchView_Basic :: GroupsSearchView
pattern GroupsSearchView_Basic = GroupsSearchView "BASIC"

-- | All resource information is returned.
pattern GroupsSearchView_Full :: GroupsSearchView
pattern GroupsSearchView_Full = GroupsSearchView "FULL"

{-# COMPLETE
  GroupsSearchView_VIEWUNSPECIFIED,
  GroupsSearchView_Basic,
  GroupsSearchView_Full,
  GroupsSearchView
  #-}
