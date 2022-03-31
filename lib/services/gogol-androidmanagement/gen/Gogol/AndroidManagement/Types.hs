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
-- Module      : Gogol.AndroidManagement.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidManagement.Types
  ( -- * Configuration
    androidManagementService,

    -- * OAuth Scopes
    Androidmanagement'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdvancedSecurityOverrides
    AdvancedSecurityOverrides (..),
    newAdvancedSecurityOverrides,

    -- ** AdvancedSecurityOverrides_CommonCriteriaMode
    AdvancedSecurityOverrides_CommonCriteriaMode (..),

    -- ** AdvancedSecurityOverrides_DeveloperSettings
    AdvancedSecurityOverrides_DeveloperSettings (..),

    -- ** AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
    AdvancedSecurityOverrides_GooglePlayProtectVerifyApps (..),

    -- ** AdvancedSecurityOverrides_UntrustedAppsPolicy
    AdvancedSecurityOverrides_UntrustedAppsPolicy (..),

    -- ** AlwaysOnVpnPackage
    AlwaysOnVpnPackage (..),
    newAlwaysOnVpnPackage,

    -- ** ApiLevelCondition
    ApiLevelCondition (..),
    newApiLevelCondition,

    -- ** AppTrackInfo
    AppTrackInfo (..),
    newAppTrackInfo,

    -- ** AppVersion
    AppVersion (..),
    newAppVersion,

    -- ** Application
    Application (..),
    newApplication,

    -- ** Application_AppPricing
    Application_AppPricing (..),

    -- ** Application_ContentRating
    Application_ContentRating (..),

    -- ** Application_DistributionChannel
    Application_DistributionChannel (..),

    -- ** Application_FeaturesItem
    Application_FeaturesItem (..),

    -- ** ApplicationEvent
    ApplicationEvent (..),
    newApplicationEvent,

    -- ** ApplicationEvent_EventType
    ApplicationEvent_EventType (..),

    -- ** ApplicationPermission
    ApplicationPermission (..),
    newApplicationPermission,

    -- ** ApplicationPolicy
    ApplicationPolicy (..),
    newApplicationPolicy,

    -- ** ApplicationPolicy_AutoUpdateMode
    ApplicationPolicy_AutoUpdateMode (..),

    -- ** ApplicationPolicy_ConnectedWorkAndPersonalApp
    ApplicationPolicy_ConnectedWorkAndPersonalApp (..),

    -- ** ApplicationPolicy_DefaultPermissionPolicy
    ApplicationPolicy_DefaultPermissionPolicy (..),

    -- ** ApplicationPolicy_DelegatedScopesItem
    ApplicationPolicy_DelegatedScopesItem (..),

    -- ** ApplicationPolicy_InstallType
    ApplicationPolicy_InstallType (..),

    -- ** ApplicationPolicy_ManagedConfiguration
    ApplicationPolicy_ManagedConfiguration (..),
    newApplicationPolicy_ManagedConfiguration,

    -- ** ApplicationReport
    ApplicationReport (..),
    newApplicationReport,

    -- ** ApplicationReport_ApplicationSource
    ApplicationReport_ApplicationSource (..),

    -- ** ApplicationReport_State
    ApplicationReport_State (..),

    -- ** ApplicationReportingSettings
    ApplicationReportingSettings (..),
    newApplicationReportingSettings,

    -- ** BlockAction
    BlockAction (..),
    newBlockAction,

    -- ** BlockAction_BlockScope
    BlockAction_BlockScope (..),

    -- ** ChoosePrivateKeyRule
    ChoosePrivateKeyRule (..),
    newChoosePrivateKeyRule,

    -- ** Command
    Command (..),
    newCommand,

    -- ** Command_ErrorCode
    Command_ErrorCode (..),

    -- ** Command_ResetPasswordFlagsItem
    Command_ResetPasswordFlagsItem (..),

    -- ** Command_Type
    Command_Type (..),

    -- ** CommonCriteriaModeInfo
    CommonCriteriaModeInfo (..),
    newCommonCriteriaModeInfo,

    -- ** CommonCriteriaModeInfo_CommonCriteriaModeStatus
    CommonCriteriaModeInfo_CommonCriteriaModeStatus (..),

    -- ** ComplianceRule
    ComplianceRule (..),
    newComplianceRule,

    -- ** ContactInfo
    ContactInfo (..),
    newContactInfo,

    -- ** ContentProviderEndpoint
    ContentProviderEndpoint (..),
    newContentProviderEndpoint,

    -- ** CrossProfilePolicies
    CrossProfilePolicies (..),
    newCrossProfilePolicies,

    -- ** CrossProfilePolicies_CrossProfileCopyPaste
    CrossProfilePolicies_CrossProfileCopyPaste (..),

    -- ** CrossProfilePolicies_CrossProfileDataSharing
    CrossProfilePolicies_CrossProfileDataSharing (..),

    -- ** CrossProfilePolicies_ShowWorkContactsInPersonalProfile
    CrossProfilePolicies_ShowWorkContactsInPersonalProfile (..),

    -- ** Date
    Date (..),
    newDate,

    -- ** Device
    Device (..),
    newDevice,

    -- ** Device_AppliedState
    Device_AppliedState (..),

    -- ** Device_ManagementMode
    Device_ManagementMode (..),

    -- ** Device_Ownership
    Device_Ownership (..),

    -- ** Device_State
    Device_State (..),

    -- ** Device_SystemProperties
    Device_SystemProperties (..),
    newDevice_SystemProperties,

    -- ** DeviceSettings
    DeviceSettings (..),
    newDeviceSettings,

    -- ** DeviceSettings_EncryptionStatus
    DeviceSettings_EncryptionStatus (..),

    -- ** Display
    Display (..),
    newDisplay,

    -- ** Display_State
    Display_State (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EnrollmentToken
    EnrollmentToken (..),
    newEnrollmentToken,

    -- ** EnrollmentToken_AllowPersonalUsage
    EnrollmentToken_AllowPersonalUsage (..),

    -- ** Enterprise
    Enterprise (..),
    newEnterprise,

    -- ** Enterprise_EnabledNotificationTypesItem
    Enterprise_EnabledNotificationTypesItem (..),

    -- ** ExtensionConfig
    ExtensionConfig (..),
    newExtensionConfig,

    -- ** ExternalData
    ExternalData (..),
    newExternalData,

    -- ** FreezePeriod
    FreezePeriod (..),
    newFreezePeriod,

    -- ** HardwareInfo
    HardwareInfo (..),
    newHardwareInfo,

    -- ** HardwareStatus
    HardwareStatus (..),
    newHardwareStatus,

    -- ** IssueCommandResponse
    IssueCommandResponse (..),
    newIssueCommandResponse,

    -- ** KeyedAppState
    KeyedAppState (..),
    newKeyedAppState,

    -- ** KeyedAppState_Severity
    KeyedAppState_Severity (..),

    -- ** KioskCustomization
    KioskCustomization (..),
    newKioskCustomization,

    -- ** KioskCustomization_DeviceSettings
    KioskCustomization_DeviceSettings (..),

    -- ** KioskCustomization_PowerButtonActions
    KioskCustomization_PowerButtonActions (..),

    -- ** KioskCustomization_StatusBar
    KioskCustomization_StatusBar (..),

    -- ** KioskCustomization_SystemErrorWarnings
    KioskCustomization_SystemErrorWarnings (..),

    -- ** KioskCustomization_SystemNavigation
    KioskCustomization_SystemNavigation (..),

    -- ** LaunchAppAction
    LaunchAppAction (..),
    newLaunchAppAction,

    -- ** ListDevicesResponse
    ListDevicesResponse (..),
    newListDevicesResponse,

    -- ** ListEnterprisesResponse
    ListEnterprisesResponse (..),
    newListEnterprisesResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListPoliciesResponse
    ListPoliciesResponse (..),
    newListPoliciesResponse,

    -- ** ListWebAppsResponse
    ListWebAppsResponse (..),
    newListWebAppsResponse,

    -- ** ManagedConfigurationTemplate
    ManagedConfigurationTemplate (..),
    newManagedConfigurationTemplate,

    -- ** ManagedConfigurationTemplate_ConfigurationVariables
    ManagedConfigurationTemplate_ConfigurationVariables (..),
    newManagedConfigurationTemplate_ConfigurationVariables,

    -- ** ManagedProperty
    ManagedProperty (..),
    newManagedProperty,

    -- ** ManagedProperty_Type
    ManagedProperty_Type (..),

    -- ** ManagedPropertyEntry
    ManagedPropertyEntry (..),
    newManagedPropertyEntry,

    -- ** MemoryEvent
    MemoryEvent (..),
    newMemoryEvent,

    -- ** MemoryEvent_EventType
    MemoryEvent_EventType (..),

    -- ** MemoryInfo
    MemoryInfo (..),
    newMemoryInfo,

    -- ** NetworkInfo
    NetworkInfo (..),
    newNetworkInfo,

    -- ** NonComplianceDetail
    NonComplianceDetail (..),
    newNonComplianceDetail,

    -- ** NonComplianceDetail_InstallationFailureReason
    NonComplianceDetail_InstallationFailureReason (..),

    -- ** NonComplianceDetail_NonComplianceReason
    NonComplianceDetail_NonComplianceReason (..),

    -- ** NonComplianceDetailCondition
    NonComplianceDetailCondition (..),
    newNonComplianceDetailCondition,

    -- ** NonComplianceDetailCondition_NonComplianceReason
    NonComplianceDetailCondition_NonComplianceReason (..),

    -- ** OncCertificateProvider
    OncCertificateProvider (..),
    newOncCertificateProvider,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PackageNameList
    PackageNameList (..),
    newPackageNameList,

    -- ** PasswordRequirements
    PasswordRequirements (..),
    newPasswordRequirements,

    -- ** PasswordRequirements_PasswordQuality
    PasswordRequirements_PasswordQuality (..),

    -- ** PasswordRequirements_PasswordScope
    PasswordRequirements_PasswordScope (..),

    -- ** PasswordRequirements_RequirePasswordUnlock
    PasswordRequirements_RequirePasswordUnlock (..),

    -- ** PasswordRequirements_UnifiedLockSettings
    PasswordRequirements_UnifiedLockSettings (..),

    -- ** PermissionGrant
    PermissionGrant (..),
    newPermissionGrant,

    -- ** PermissionGrant_Policy
    PermissionGrant_Policy (..),

    -- ** PersistentPreferredActivity
    PersistentPreferredActivity (..),
    newPersistentPreferredActivity,

    -- ** PersonalApplicationPolicy
    PersonalApplicationPolicy (..),
    newPersonalApplicationPolicy,

    -- ** PersonalApplicationPolicy_InstallType
    PersonalApplicationPolicy_InstallType (..),

    -- ** PersonalUsagePolicies
    PersonalUsagePolicies (..),
    newPersonalUsagePolicies,

    -- ** PersonalUsagePolicies_PersonalPlayStoreMode
    PersonalUsagePolicies_PersonalPlayStoreMode (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_AndroidDevicePolicyTracksItem
    Policy_AndroidDevicePolicyTracksItem (..),

    -- ** Policy_AppAutoUpdatePolicy
    Policy_AppAutoUpdatePolicy (..),

    -- ** Policy_AutoDateAndTimeZone
    Policy_AutoDateAndTimeZone (..),

    -- ** Policy_CameraAccess
    Policy_CameraAccess (..),

    -- ** Policy_DefaultPermissionPolicy
    Policy_DefaultPermissionPolicy (..),

    -- ** Policy_EncryptionPolicy
    Policy_EncryptionPolicy (..),

    -- ** Policy_KeyguardDisabledFeaturesItem
    Policy_KeyguardDisabledFeaturesItem (..),

    -- ** Policy_LocationMode
    Policy_LocationMode (..),

    -- ** Policy_MicrophoneAccess
    Policy_MicrophoneAccess (..),

    -- ** Policy_OpenNetworkConfiguration
    Policy_OpenNetworkConfiguration (..),
    newPolicy_OpenNetworkConfiguration,

    -- ** Policy_PlayStoreMode
    Policy_PlayStoreMode (..),

    -- ** Policy_PreferentialNetworkService
    Policy_PreferentialNetworkService (..),

    -- ** Policy_StayOnPluggedModesItem
    Policy_StayOnPluggedModesItem (..),

    -- ** PolicyEnforcementRule
    PolicyEnforcementRule (..),
    newPolicyEnforcementRule,

    -- ** PostureDetail
    PostureDetail (..),
    newPostureDetail,

    -- ** PostureDetail_SecurityRisk
    PostureDetail_SecurityRisk (..),

    -- ** PowerManagementEvent
    PowerManagementEvent (..),
    newPowerManagementEvent,

    -- ** PowerManagementEvent_EventType
    PowerManagementEvent_EventType (..),

    -- ** ProxyInfo
    ProxyInfo (..),
    newProxyInfo,

    -- ** SecurityPosture
    SecurityPosture (..),
    newSecurityPosture,

    -- ** SecurityPosture_DevicePosture
    SecurityPosture_DevicePosture (..),

    -- ** SetupAction
    SetupAction (..),
    newSetupAction,

    -- ** SigninDetail
    SigninDetail (..),
    newSigninDetail,

    -- ** SigninDetail_AllowPersonalUsage
    SigninDetail_AllowPersonalUsage (..),

    -- ** SignupUrl
    SignupUrl (..),
    newSignupUrl,

    -- ** SoftwareInfo
    SoftwareInfo (..),
    newSoftwareInfo,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StatusReportingSettings
    StatusReportingSettings (..),
    newStatusReportingSettings,

    -- ** SystemUpdate
    SystemUpdate (..),
    newSystemUpdate,

    -- ** SystemUpdate_Type
    SystemUpdate_Type (..),

    -- ** SystemUpdateInfo
    SystemUpdateInfo (..),
    newSystemUpdateInfo,

    -- ** SystemUpdateInfo_UpdateStatus
    SystemUpdateInfo_UpdateStatus (..),

    -- ** TelephonyInfo
    TelephonyInfo (..),
    newTelephonyInfo,

    -- ** TermsAndConditions
    TermsAndConditions (..),
    newTermsAndConditions,

    -- ** User
    User (..),
    newUser,

    -- ** UserFacingMessage
    UserFacingMessage (..),
    newUserFacingMessage,

    -- ** UserFacingMessage_LocalizedMessages
    UserFacingMessage_LocalizedMessages (..),
    newUserFacingMessage_LocalizedMessages,

    -- ** WebApp
    WebApp (..),
    newWebApp,

    -- ** WebApp_DisplayMode
    WebApp_DisplayMode (..),

    -- ** WebAppIcon
    WebAppIcon (..),
    newWebAppIcon,

    -- ** WebToken
    WebToken (..),
    newWebToken,

    -- ** WebToken_EnabledFeaturesItem
    WebToken_EnabledFeaturesItem (..),

    -- ** WebToken_PermissionsItem
    WebToken_PermissionsItem (..),

    -- ** WipeAction
    WipeAction (..),
    newWipeAction,

    -- ** EnterprisesDevicesDeleteWipeDataFlags
    EnterprisesDevicesDeleteWipeDataFlags (..),

    -- ** EnterprisesListView
    EnterprisesListView (..),
  )
where

import Gogol.AndroidManagement.Internal.Product
import Gogol.AndroidManagement.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Android Management API. This contains the host and root path used as a starting point for constructing service requests.
androidManagementService :: Core.ServiceConfig
androidManagementService =
  Core.defaultService
    (Core.ServiceId "androidmanagement:v1")
    "androidmanagement.googleapis.com"

-- | Manage Android devices and apps for your customers
type Androidmanagement'FullControl = "https://www.googleapis.com/auth/androidmanagement"
