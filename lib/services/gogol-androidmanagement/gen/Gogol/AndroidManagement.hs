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
-- Module      : Gogol.AndroidManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Android Management API provides remote enterprise management of Android devices and apps.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference>
module Gogol.AndroidManagement
  ( -- * Configuration
    androidManagementService,

    -- * OAuth Scopes
    Androidmanagement'FullControl,

    -- * Resources

    -- ** androidmanagement.enterprises.applications.get
    AndroidManagementEnterprisesApplicationsGetResource,
    AndroidManagementEnterprisesApplicationsGet (..),
    newAndroidManagementEnterprisesApplicationsGet,

    -- ** androidmanagement.enterprises.create
    AndroidManagementEnterprisesCreateResource,
    AndroidManagementEnterprisesCreate (..),
    newAndroidManagementEnterprisesCreate,

    -- ** androidmanagement.enterprises.delete
    AndroidManagementEnterprisesDeleteResource,
    AndroidManagementEnterprisesDelete (..),
    newAndroidManagementEnterprisesDelete,

    -- ** androidmanagement.enterprises.devices.delete
    AndroidManagementEnterprisesDevicesDeleteResource,
    AndroidManagementEnterprisesDevicesDelete (..),
    newAndroidManagementEnterprisesDevicesDelete,

    -- ** androidmanagement.enterprises.devices.get
    AndroidManagementEnterprisesDevicesGetResource,
    AndroidManagementEnterprisesDevicesGet (..),
    newAndroidManagementEnterprisesDevicesGet,

    -- ** androidmanagement.enterprises.devices.issueCommand
    AndroidManagementEnterprisesDevicesIssueCommandResource,
    AndroidManagementEnterprisesDevicesIssueCommand (..),
    newAndroidManagementEnterprisesDevicesIssueCommand,

    -- ** androidmanagement.enterprises.devices.list
    AndroidManagementEnterprisesDevicesListResource,
    AndroidManagementEnterprisesDevicesList (..),
    newAndroidManagementEnterprisesDevicesList,

    -- ** androidmanagement.enterprises.devices.operations.cancel
    AndroidManagementEnterprisesDevicesOperationsCancelResource,
    AndroidManagementEnterprisesDevicesOperationsCancel (..),
    newAndroidManagementEnterprisesDevicesOperationsCancel,

    -- ** androidmanagement.enterprises.devices.operations.delete
    AndroidManagementEnterprisesDevicesOperationsDeleteResource,
    AndroidManagementEnterprisesDevicesOperationsDelete (..),
    newAndroidManagementEnterprisesDevicesOperationsDelete,

    -- ** androidmanagement.enterprises.devices.operations.get
    AndroidManagementEnterprisesDevicesOperationsGetResource,
    AndroidManagementEnterprisesDevicesOperationsGet (..),
    newAndroidManagementEnterprisesDevicesOperationsGet,

    -- ** androidmanagement.enterprises.devices.operations.list
    AndroidManagementEnterprisesDevicesOperationsListResource,
    AndroidManagementEnterprisesDevicesOperationsList (..),
    newAndroidManagementEnterprisesDevicesOperationsList,

    -- ** androidmanagement.enterprises.devices.patch
    AndroidManagementEnterprisesDevicesPatchResource,
    AndroidManagementEnterprisesDevicesPatch (..),
    newAndroidManagementEnterprisesDevicesPatch,

    -- ** androidmanagement.enterprises.enrollmentTokens.create
    AndroidManagementEnterprisesEnrollmentTokensCreateResource,
    AndroidManagementEnterprisesEnrollmentTokensCreate (..),
    newAndroidManagementEnterprisesEnrollmentTokensCreate,

    -- ** androidmanagement.enterprises.enrollmentTokens.delete
    AndroidManagementEnterprisesEnrollmentTokensDeleteResource,
    AndroidManagementEnterprisesEnrollmentTokensDelete (..),
    newAndroidManagementEnterprisesEnrollmentTokensDelete,

    -- ** androidmanagement.enterprises.enrollmentTokens.get
    AndroidManagementEnterprisesEnrollmentTokensGetResource,
    AndroidManagementEnterprisesEnrollmentTokensGet (..),
    newAndroidManagementEnterprisesEnrollmentTokensGet,

    -- ** androidmanagement.enterprises.enrollmentTokens.list
    AndroidManagementEnterprisesEnrollmentTokensListResource,
    AndroidManagementEnterprisesEnrollmentTokensList (..),
    newAndroidManagementEnterprisesEnrollmentTokensList,

    -- ** androidmanagement.enterprises.get
    AndroidManagementEnterprisesGetResource,
    AndroidManagementEnterprisesGet (..),
    newAndroidManagementEnterprisesGet,

    -- ** androidmanagement.enterprises.list
    AndroidManagementEnterprisesListResource,
    AndroidManagementEnterprisesList (..),
    newAndroidManagementEnterprisesList,

    -- ** androidmanagement.enterprises.patch
    AndroidManagementEnterprisesPatchResource,
    AndroidManagementEnterprisesPatch (..),
    newAndroidManagementEnterprisesPatch,

    -- ** androidmanagement.enterprises.policies.delete
    AndroidManagementEnterprisesPoliciesDeleteResource,
    AndroidManagementEnterprisesPoliciesDelete (..),
    newAndroidManagementEnterprisesPoliciesDelete,

    -- ** androidmanagement.enterprises.policies.get
    AndroidManagementEnterprisesPoliciesGetResource,
    AndroidManagementEnterprisesPoliciesGet (..),
    newAndroidManagementEnterprisesPoliciesGet,

    -- ** androidmanagement.enterprises.policies.list
    AndroidManagementEnterprisesPoliciesListResource,
    AndroidManagementEnterprisesPoliciesList (..),
    newAndroidManagementEnterprisesPoliciesList,

    -- ** androidmanagement.enterprises.policies.patch
    AndroidManagementEnterprisesPoliciesPatchResource,
    AndroidManagementEnterprisesPoliciesPatch (..),
    newAndroidManagementEnterprisesPoliciesPatch,

    -- ** androidmanagement.enterprises.webApps.create
    AndroidManagementEnterprisesWebAppsCreateResource,
    AndroidManagementEnterprisesWebAppsCreate (..),
    newAndroidManagementEnterprisesWebAppsCreate,

    -- ** androidmanagement.enterprises.webApps.delete
    AndroidManagementEnterprisesWebAppsDeleteResource,
    AndroidManagementEnterprisesWebAppsDelete (..),
    newAndroidManagementEnterprisesWebAppsDelete,

    -- ** androidmanagement.enterprises.webApps.get
    AndroidManagementEnterprisesWebAppsGetResource,
    AndroidManagementEnterprisesWebAppsGet (..),
    newAndroidManagementEnterprisesWebAppsGet,

    -- ** androidmanagement.enterprises.webApps.list
    AndroidManagementEnterprisesWebAppsListResource,
    AndroidManagementEnterprisesWebAppsList (..),
    newAndroidManagementEnterprisesWebAppsList,

    -- ** androidmanagement.enterprises.webApps.patch
    AndroidManagementEnterprisesWebAppsPatchResource,
    AndroidManagementEnterprisesWebAppsPatch (..),
    newAndroidManagementEnterprisesWebAppsPatch,

    -- ** androidmanagement.enterprises.webTokens.create
    AndroidManagementEnterprisesWebTokensCreateResource,
    AndroidManagementEnterprisesWebTokensCreate (..),
    newAndroidManagementEnterprisesWebTokensCreate,

    -- ** androidmanagement.signupUrls.create
    AndroidManagementSignupUrlsCreateResource,
    AndroidManagementSignupUrlsCreate (..),
    newAndroidManagementSignupUrlsCreate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdbShellCommandEvent
    AdbShellCommandEvent (..),
    newAdbShellCommandEvent,

    -- ** AdbShellInteractiveEvent
    AdbShellInteractiveEvent (..),
    newAdbShellInteractiveEvent,

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

    -- ** AppProcessInfo
    AppProcessInfo (..),
    newAppProcessInfo,

    -- ** AppProcessStartEvent
    AppProcessStartEvent (..),
    newAppProcessStartEvent,

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

    -- ** ApplicationPolicy_AlwaysOnVpnLockdownExemption
    ApplicationPolicy_AlwaysOnVpnLockdownExemption (..),

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

    -- ** ApplicationPolicy_WorkProfileWidgets
    ApplicationPolicy_WorkProfileWidgets (..),

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

    -- ** BatchUsageLogEvents
    BatchUsageLogEvents (..),
    newBatchUsageLogEvents,

    -- ** BlockAction
    BlockAction (..),
    newBlockAction,

    -- ** BlockAction_BlockScope
    BlockAction_BlockScope (..),

    -- ** CertAuthorityInstalledEvent
    CertAuthorityInstalledEvent (..),
    newCertAuthorityInstalledEvent,

    -- ** CertAuthorityRemovedEvent
    CertAuthorityRemovedEvent (..),
    newCertAuthorityRemovedEvent,

    -- ** CertValidationFailureEvent
    CertValidationFailureEvent (..),
    newCertValidationFailureEvent,

    -- ** ChoosePrivateKeyRule
    ChoosePrivateKeyRule (..),
    newChoosePrivateKeyRule,

    -- ** ClearAppsDataParams
    ClearAppsDataParams (..),
    newClearAppsDataParams,

    -- ** ClearAppsDataStatus
    ClearAppsDataStatus (..),
    newClearAppsDataStatus,

    -- ** ClearAppsDataStatus_Results
    ClearAppsDataStatus_Results (..),
    newClearAppsDataStatus_Results,

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

    -- ** ConnectEvent
    ConnectEvent (..),
    newConnectEvent,

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

    -- ** CrossProfilePolicies_WorkProfileWidgetsDefault
    CrossProfilePolicies_WorkProfileWidgetsDefault (..),

    -- ** CryptoSelfTestCompletedEvent
    CryptoSelfTestCompletedEvent (..),
    newCryptoSelfTestCompletedEvent,

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

    -- ** DnsEvent
    DnsEvent (..),
    newDnsEvent,

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

    -- ** FilePulledEvent
    FilePulledEvent (..),
    newFilePulledEvent,

    -- ** FilePushedEvent
    FilePushedEvent (..),
    newFilePushedEvent,

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

    -- ** KeyDestructionEvent
    KeyDestructionEvent (..),
    newKeyDestructionEvent,

    -- ** KeyGeneratedEvent
    KeyGeneratedEvent (..),
    newKeyGeneratedEvent,

    -- ** KeyImportEvent
    KeyImportEvent (..),
    newKeyImportEvent,

    -- ** KeyIntegrityViolationEvent
    KeyIntegrityViolationEvent (..),
    newKeyIntegrityViolationEvent,

    -- ** KeyedAppState
    KeyedAppState (..),
    newKeyedAppState,

    -- ** KeyedAppState_Severity
    KeyedAppState_Severity (..),

    -- ** KeyguardDismissAuthAttemptEvent
    KeyguardDismissAuthAttemptEvent (..),
    newKeyguardDismissAuthAttemptEvent,

    -- ** KeyguardDismissedEvent
    KeyguardDismissedEvent (..),
    newKeyguardDismissedEvent,

    -- ** KeyguardSecuredEvent
    KeyguardSecuredEvent (..),
    newKeyguardSecuredEvent,

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

    -- ** ListEnrollmentTokensResponse
    ListEnrollmentTokensResponse (..),
    newListEnrollmentTokensResponse,

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

    -- ** LogBufferSizeCriticalEvent
    LogBufferSizeCriticalEvent (..),
    newLogBufferSizeCriticalEvent,

    -- ** LoggingStartedEvent
    LoggingStartedEvent (..),
    newLoggingStartedEvent,

    -- ** LoggingStoppedEvent
    LoggingStoppedEvent (..),
    newLoggingStoppedEvent,

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

    -- ** MediaMountEvent
    MediaMountEvent (..),
    newMediaMountEvent,

    -- ** MediaUnmountEvent
    MediaUnmountEvent (..),
    newMediaUnmountEvent,

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

    -- ** NonComplianceDetail_SpecificNonComplianceReason
    NonComplianceDetail_SpecificNonComplianceReason (..),

    -- ** NonComplianceDetailCondition
    NonComplianceDetailCondition (..),
    newNonComplianceDetailCondition,

    -- ** NonComplianceDetailCondition_NonComplianceReason
    NonComplianceDetailCondition_NonComplianceReason (..),

    -- ** OncCertificateProvider
    OncCertificateProvider (..),
    newOncCertificateProvider,

    -- ** OncWifiContext
    OncWifiContext (..),
    newOncWifiContext,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OsShutdownEvent
    OsShutdownEvent (..),
    newOsShutdownEvent,

    -- ** OsStartupEvent
    OsStartupEvent (..),
    newOsStartupEvent,

    -- ** OsStartupEvent_VerifiedBootState
    OsStartupEvent_VerifiedBootState (..),

    -- ** OsStartupEvent_VerityMode
    OsStartupEvent_VerityMode (..),

    -- ** PackageNameList
    PackageNameList (..),
    newPackageNameList,

    -- ** PasswordPoliciesContext
    PasswordPoliciesContext (..),
    newPasswordPoliciesContext,

    -- ** PasswordPoliciesContext_PasswordPolicyScope
    PasswordPoliciesContext_PasswordPolicyScope (..),

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

    -- ** PerAppResult
    PerAppResult (..),
    newPerAppResult,

    -- ** PerAppResult_ClearingResult
    PerAppResult_ClearingResult (..),

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

    -- ** RemoteLockEvent
    RemoteLockEvent (..),
    newRemoteLockEvent,

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

    -- ** SpecificNonComplianceContext
    SpecificNonComplianceContext (..),
    newSpecificNonComplianceContext,

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

    -- ** UsageLog
    UsageLog (..),
    newUsageLog,

    -- ** UsageLog_EnabledLogTypesItem
    UsageLog_EnabledLogTypesItem (..),

    -- ** UsageLog_UploadOnCellularAllowedItem
    UsageLog_UploadOnCellularAllowedItem (..),

    -- ** UsageLogEvent
    UsageLogEvent (..),
    newUsageLogEvent,

    -- ** UsageLogEvent_EventType
    UsageLogEvent_EventType (..),

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

    -- ** WipeFailureEvent
    WipeFailureEvent (..),
    newWipeFailureEvent,

    -- ** EnterprisesDevicesDeleteWipeDataFlags
    EnterprisesDevicesDeleteWipeDataFlags (..),

    -- ** EnterprisesListView
    EnterprisesListView (..),
  )
where

import Gogol.AndroidManagement.Enterprises.Applications.Get
import Gogol.AndroidManagement.Enterprises.Create
import Gogol.AndroidManagement.Enterprises.Delete
import Gogol.AndroidManagement.Enterprises.Devices.Delete
import Gogol.AndroidManagement.Enterprises.Devices.Get
import Gogol.AndroidManagement.Enterprises.Devices.IssueCommand
import Gogol.AndroidManagement.Enterprises.Devices.List
import Gogol.AndroidManagement.Enterprises.Devices.Operations.Cancel
import Gogol.AndroidManagement.Enterprises.Devices.Operations.Delete
import Gogol.AndroidManagement.Enterprises.Devices.Operations.Get
import Gogol.AndroidManagement.Enterprises.Devices.Operations.List
import Gogol.AndroidManagement.Enterprises.Devices.Patch
import Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Create
import Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Delete
import Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Get
import Gogol.AndroidManagement.Enterprises.EnrollmentTokens.List
import Gogol.AndroidManagement.Enterprises.Get
import Gogol.AndroidManagement.Enterprises.List
import Gogol.AndroidManagement.Enterprises.Patch
import Gogol.AndroidManagement.Enterprises.Policies.Delete
import Gogol.AndroidManagement.Enterprises.Policies.Get
import Gogol.AndroidManagement.Enterprises.Policies.List
import Gogol.AndroidManagement.Enterprises.Policies.Patch
import Gogol.AndroidManagement.Enterprises.WebApps.Create
import Gogol.AndroidManagement.Enterprises.WebApps.Delete
import Gogol.AndroidManagement.Enterprises.WebApps.Get
import Gogol.AndroidManagement.Enterprises.WebApps.List
import Gogol.AndroidManagement.Enterprises.WebApps.Patch
import Gogol.AndroidManagement.Enterprises.WebTokens.Create
import Gogol.AndroidManagement.SignupUrls.Create
import Gogol.AndroidManagement.Types
