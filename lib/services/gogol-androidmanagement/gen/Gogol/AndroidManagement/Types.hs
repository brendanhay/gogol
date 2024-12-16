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
-- Module      : Gogol.AndroidManagement.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidManagement.Types
    (
    -- * Configuration
      androidManagementService

    -- * OAuth Scopes
    , Androidmanagement'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdbShellCommandEvent
    , AdbShellCommandEvent (..)
    , newAdbShellCommandEvent

    -- ** AdbShellInteractiveEvent
    , AdbShellInteractiveEvent (..)
    , newAdbShellInteractiveEvent

    -- ** AdvancedSecurityOverrides
    , AdvancedSecurityOverrides (..)
    , newAdvancedSecurityOverrides

    -- ** AdvancedSecurityOverrides_CommonCriteriaMode
    , AdvancedSecurityOverrides_CommonCriteriaMode (..)

    -- ** AdvancedSecurityOverrides_ContentProtectionPolicy
    , AdvancedSecurityOverrides_ContentProtectionPolicy (..)

    -- ** AdvancedSecurityOverrides_DeveloperSettings
    , AdvancedSecurityOverrides_DeveloperSettings (..)

    -- ** AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
    , AdvancedSecurityOverrides_GooglePlayProtectVerifyApps (..)

    -- ** AdvancedSecurityOverrides_MtePolicy
    , AdvancedSecurityOverrides_MtePolicy (..)

    -- ** AdvancedSecurityOverrides_UntrustedAppsPolicy
    , AdvancedSecurityOverrides_UntrustedAppsPolicy (..)

    -- ** AlwaysOnVpnPackage
    , AlwaysOnVpnPackage (..)
    , newAlwaysOnVpnPackage

    -- ** ApiLevelCondition
    , ApiLevelCondition (..)
    , newApiLevelCondition

    -- ** AppProcessInfo
    , AppProcessInfo (..)
    , newAppProcessInfo

    -- ** AppProcessStartEvent
    , AppProcessStartEvent (..)
    , newAppProcessStartEvent

    -- ** AppTrackInfo
    , AppTrackInfo (..)
    , newAppTrackInfo

    -- ** AppVersion
    , AppVersion (..)
    , newAppVersion

    -- ** Application
    , Application (..)
    , newApplication

    -- ** Application_AppPricing
    , Application_AppPricing (..)

    -- ** Application_ContentRating
    , Application_ContentRating (..)

    -- ** Application_DistributionChannel
    , Application_DistributionChannel (..)

    -- ** Application_FeaturesItem
    , Application_FeaturesItem (..)

    -- ** ApplicationEvent
    , ApplicationEvent (..)
    , newApplicationEvent

    -- ** ApplicationEvent_EventType
    , ApplicationEvent_EventType (..)

    -- ** ApplicationPermission
    , ApplicationPermission (..)
    , newApplicationPermission

    -- ** ApplicationPolicy
    , ApplicationPolicy (..)
    , newApplicationPolicy

    -- ** ApplicationPolicy_AlwaysOnVpnLockdownExemption
    , ApplicationPolicy_AlwaysOnVpnLockdownExemption (..)

    -- ** ApplicationPolicy_AutoUpdateMode
    , ApplicationPolicy_AutoUpdateMode (..)

    -- ** ApplicationPolicy_ConnectedWorkAndPersonalApp
    , ApplicationPolicy_ConnectedWorkAndPersonalApp (..)

    -- ** ApplicationPolicy_CredentialProviderPolicy
    , ApplicationPolicy_CredentialProviderPolicy (..)

    -- ** ApplicationPolicy_DefaultPermissionPolicy
    , ApplicationPolicy_DefaultPermissionPolicy (..)

    -- ** ApplicationPolicy_DelegatedScopesItem
    , ApplicationPolicy_DelegatedScopesItem (..)

    -- ** ApplicationPolicy_InstallType
    , ApplicationPolicy_InstallType (..)

    -- ** ApplicationPolicy_ManagedConfiguration
    , ApplicationPolicy_ManagedConfiguration (..)
    , newApplicationPolicy_ManagedConfiguration

    -- ** ApplicationPolicy_UserControlSettings
    , ApplicationPolicy_UserControlSettings (..)

    -- ** ApplicationPolicy_WorkProfileWidgets
    , ApplicationPolicy_WorkProfileWidgets (..)

    -- ** ApplicationReport
    , ApplicationReport (..)
    , newApplicationReport

    -- ** ApplicationReport_ApplicationSource
    , ApplicationReport_ApplicationSource (..)

    -- ** ApplicationReport_State
    , ApplicationReport_State (..)

    -- ** ApplicationReport_UserFacingType
    , ApplicationReport_UserFacingType (..)

    -- ** ApplicationReportingSettings
    , ApplicationReportingSettings (..)
    , newApplicationReportingSettings

    -- ** BatchUsageLogEvents
    , BatchUsageLogEvents (..)
    , newBatchUsageLogEvents

    -- ** BlockAction
    , BlockAction (..)
    , newBlockAction

    -- ** BlockAction_BlockScope
    , BlockAction_BlockScope (..)

    -- ** CertAuthorityInstalledEvent
    , CertAuthorityInstalledEvent (..)
    , newCertAuthorityInstalledEvent

    -- ** CertAuthorityRemovedEvent
    , CertAuthorityRemovedEvent (..)
    , newCertAuthorityRemovedEvent

    -- ** CertValidationFailureEvent
    , CertValidationFailureEvent (..)
    , newCertValidationFailureEvent

    -- ** ChoosePrivateKeyRule
    , ChoosePrivateKeyRule (..)
    , newChoosePrivateKeyRule

    -- ** ClearAppsDataParams
    , ClearAppsDataParams (..)
    , newClearAppsDataParams

    -- ** ClearAppsDataStatus
    , ClearAppsDataStatus (..)
    , newClearAppsDataStatus

    -- ** ClearAppsDataStatus_Results
    , ClearAppsDataStatus_Results (..)
    , newClearAppsDataStatus_Results

    -- ** Command
    , Command (..)
    , newCommand

    -- ** Command_ErrorCode
    , Command_ErrorCode (..)

    -- ** Command_ResetPasswordFlagsItem
    , Command_ResetPasswordFlagsItem (..)

    -- ** Command_Type
    , Command_Type (..)

    -- ** CommonCriteriaModeInfo
    , CommonCriteriaModeInfo (..)
    , newCommonCriteriaModeInfo

    -- ** CommonCriteriaModeInfo_CommonCriteriaModeStatus
    , CommonCriteriaModeInfo_CommonCriteriaModeStatus (..)

    -- ** CommonCriteriaModeInfo_PolicySignatureVerificationStatus
    , CommonCriteriaModeInfo_PolicySignatureVerificationStatus (..)

    -- ** ComplianceRule
    , ComplianceRule (..)
    , newComplianceRule

    -- ** ConnectEvent
    , ConnectEvent (..)
    , newConnectEvent

    -- ** ContactInfo
    , ContactInfo (..)
    , newContactInfo

    -- ** ContentProviderEndpoint
    , ContentProviderEndpoint (..)
    , newContentProviderEndpoint

    -- ** CrossProfilePolicies
    , CrossProfilePolicies (..)
    , newCrossProfilePolicies

    -- ** CrossProfilePolicies_CrossProfileCopyPaste
    , CrossProfilePolicies_CrossProfileCopyPaste (..)

    -- ** CrossProfilePolicies_CrossProfileDataSharing
    , CrossProfilePolicies_CrossProfileDataSharing (..)

    -- ** CrossProfilePolicies_ShowWorkContactsInPersonalProfile
    , CrossProfilePolicies_ShowWorkContactsInPersonalProfile (..)

    -- ** CrossProfilePolicies_WorkProfileWidgetsDefault
    , CrossProfilePolicies_WorkProfileWidgetsDefault (..)

    -- ** CryptoSelfTestCompletedEvent
    , CryptoSelfTestCompletedEvent (..)
    , newCryptoSelfTestCompletedEvent

    -- ** Date
    , Date (..)
    , newDate

    -- ** Device
    , Device (..)
    , newDevice

    -- ** Device_AppliedState
    , Device_AppliedState (..)

    -- ** Device_ManagementMode
    , Device_ManagementMode (..)

    -- ** Device_Ownership
    , Device_Ownership (..)

    -- ** Device_State
    , Device_State (..)

    -- ** Device_SystemProperties
    , Device_SystemProperties (..)
    , newDevice_SystemProperties

    -- ** DeviceConnectivityManagement
    , DeviceConnectivityManagement (..)
    , newDeviceConnectivityManagement

    -- ** DeviceConnectivityManagement_ConfigureWifi
    , DeviceConnectivityManagement_ConfigureWifi (..)

    -- ** DeviceConnectivityManagement_TetheringSettings
    , DeviceConnectivityManagement_TetheringSettings (..)

    -- ** DeviceConnectivityManagement_UsbDataAccess
    , DeviceConnectivityManagement_UsbDataAccess (..)

    -- ** DeviceConnectivityManagement_WifiDirectSettings
    , DeviceConnectivityManagement_WifiDirectSettings (..)

    -- ** DeviceRadioState
    , DeviceRadioState (..)
    , newDeviceRadioState

    -- ** DeviceRadioState_AirplaneModeState
    , DeviceRadioState_AirplaneModeState (..)

    -- ** DeviceRadioState_CellularTwoGState
    , DeviceRadioState_CellularTwoGState (..)

    -- ** DeviceRadioState_MinimumWifiSecurityLevel
    , DeviceRadioState_MinimumWifiSecurityLevel (..)

    -- ** DeviceRadioState_UltraWidebandState
    , DeviceRadioState_UltraWidebandState (..)

    -- ** DeviceRadioState_WifiState
    , DeviceRadioState_WifiState (..)

    -- ** DeviceSettings
    , DeviceSettings (..)
    , newDeviceSettings

    -- ** DeviceSettings_EncryptionStatus
    , DeviceSettings_EncryptionStatus (..)

    -- ** Display
    , Display (..)
    , newDisplay

    -- ** Display_State
    , Display_State (..)

    -- ** DisplaySettings
    , DisplaySettings (..)
    , newDisplaySettings

    -- ** DnsEvent
    , DnsEvent (..)
    , newDnsEvent

    -- ** DpcMigrationInfo
    , DpcMigrationInfo (..)
    , newDpcMigrationInfo

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EnrollmentCompleteEvent
    , EnrollmentCompleteEvent (..)
    , newEnrollmentCompleteEvent

    -- ** EnrollmentToken
    , EnrollmentToken (..)
    , newEnrollmentToken

    -- ** EnrollmentToken_AllowPersonalUsage
    , EnrollmentToken_AllowPersonalUsage (..)

    -- ** Enterprise
    , Enterprise (..)
    , newEnterprise

    -- ** Enterprise_EnabledNotificationTypesItem
    , Enterprise_EnabledNotificationTypesItem (..)

    -- ** ExtensionConfig
    , ExtensionConfig (..)
    , newExtensionConfig

    -- ** ExternalData
    , ExternalData (..)
    , newExternalData

    -- ** FilePulledEvent
    , FilePulledEvent (..)
    , newFilePulledEvent

    -- ** FilePushedEvent
    , FilePushedEvent (..)
    , newFilePushedEvent

    -- ** FreezePeriod
    , FreezePeriod (..)
    , newFreezePeriod

    -- ** GoogleAuthenticationSettings
    , GoogleAuthenticationSettings (..)
    , newGoogleAuthenticationSettings

    -- ** GoogleAuthenticationSettings_GoogleAuthenticationRequired
    , GoogleAuthenticationSettings_GoogleAuthenticationRequired (..)

    -- ** HardwareInfo
    , HardwareInfo (..)
    , newHardwareInfo

    -- ** HardwareStatus
    , HardwareStatus (..)
    , newHardwareStatus

    -- ** InstallConstraint
    , InstallConstraint (..)
    , newInstallConstraint

    -- ** InstallConstraint_ChargingConstraint
    , InstallConstraint_ChargingConstraint (..)

    -- ** InstallConstraint_DeviceIdleConstraint
    , InstallConstraint_DeviceIdleConstraint (..)

    -- ** InstallConstraint_NetworkTypeConstraint
    , InstallConstraint_NetworkTypeConstraint (..)

    -- ** IssueCommandResponse
    , IssueCommandResponse (..)
    , newIssueCommandResponse

    -- ** KeyDestructionEvent
    , KeyDestructionEvent (..)
    , newKeyDestructionEvent

    -- ** KeyGeneratedEvent
    , KeyGeneratedEvent (..)
    , newKeyGeneratedEvent

    -- ** KeyImportEvent
    , KeyImportEvent (..)
    , newKeyImportEvent

    -- ** KeyIntegrityViolationEvent
    , KeyIntegrityViolationEvent (..)
    , newKeyIntegrityViolationEvent

    -- ** KeyedAppState
    , KeyedAppState (..)
    , newKeyedAppState

    -- ** KeyedAppState_Severity
    , KeyedAppState_Severity (..)

    -- ** KeyguardDismissAuthAttemptEvent
    , KeyguardDismissAuthAttemptEvent (..)
    , newKeyguardDismissAuthAttemptEvent

    -- ** KeyguardDismissedEvent
    , KeyguardDismissedEvent (..)
    , newKeyguardDismissedEvent

    -- ** KeyguardSecuredEvent
    , KeyguardSecuredEvent (..)
    , newKeyguardSecuredEvent

    -- ** KioskCustomization
    , KioskCustomization (..)
    , newKioskCustomization

    -- ** KioskCustomization_DeviceSettings
    , KioskCustomization_DeviceSettings (..)

    -- ** KioskCustomization_PowerButtonActions
    , KioskCustomization_PowerButtonActions (..)

    -- ** KioskCustomization_StatusBar
    , KioskCustomization_StatusBar (..)

    -- ** KioskCustomization_SystemErrorWarnings
    , KioskCustomization_SystemErrorWarnings (..)

    -- ** KioskCustomization_SystemNavigation
    , KioskCustomization_SystemNavigation (..)

    -- ** LaunchAppAction
    , LaunchAppAction (..)
    , newLaunchAppAction

    -- ** ListDevicesResponse
    , ListDevicesResponse (..)
    , newListDevicesResponse

    -- ** ListEnrollmentTokensResponse
    , ListEnrollmentTokensResponse (..)
    , newListEnrollmentTokensResponse

    -- ** ListEnterprisesResponse
    , ListEnterprisesResponse (..)
    , newListEnterprisesResponse

    -- ** ListMigrationTokensResponse
    , ListMigrationTokensResponse (..)
    , newListMigrationTokensResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListPoliciesResponse
    , ListPoliciesResponse (..)
    , newListPoliciesResponse

    -- ** ListWebAppsResponse
    , ListWebAppsResponse (..)
    , newListWebAppsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** LogBufferSizeCriticalEvent
    , LogBufferSizeCriticalEvent (..)
    , newLogBufferSizeCriticalEvent

    -- ** LoggingStartedEvent
    , LoggingStartedEvent (..)
    , newLoggingStartedEvent

    -- ** LoggingStoppedEvent
    , LoggingStoppedEvent (..)
    , newLoggingStoppedEvent

    -- ** LostModeLocationEvent
    , LostModeLocationEvent (..)
    , newLostModeLocationEvent

    -- ** LostModeOutgoingPhoneCallEvent
    , LostModeOutgoingPhoneCallEvent (..)
    , newLostModeOutgoingPhoneCallEvent

    -- ** ManagedConfigurationTemplate
    , ManagedConfigurationTemplate (..)
    , newManagedConfigurationTemplate

    -- ** ManagedConfigurationTemplate_ConfigurationVariables
    , ManagedConfigurationTemplate_ConfigurationVariables (..)
    , newManagedConfigurationTemplate_ConfigurationVariables

    -- ** ManagedProperty
    , ManagedProperty (..)
    , newManagedProperty

    -- ** ManagedProperty_Type
    , ManagedProperty_Type (..)

    -- ** ManagedPropertyEntry
    , ManagedPropertyEntry (..)
    , newManagedPropertyEntry

    -- ** MediaMountEvent
    , MediaMountEvent (..)
    , newMediaMountEvent

    -- ** MediaUnmountEvent
    , MediaUnmountEvent (..)
    , newMediaUnmountEvent

    -- ** MemoryEvent
    , MemoryEvent (..)
    , newMemoryEvent

    -- ** MemoryEvent_EventType
    , MemoryEvent_EventType (..)

    -- ** MemoryInfo
    , MemoryInfo (..)
    , newMemoryInfo

    -- ** MigrationToken
    , MigrationToken (..)
    , newMigrationToken

    -- ** MigrationToken_ManagementMode
    , MigrationToken_ManagementMode (..)

    -- ** NetworkInfo
    , NetworkInfo (..)
    , newNetworkInfo

    -- ** NonComplianceDetail
    , NonComplianceDetail (..)
    , newNonComplianceDetail

    -- ** NonComplianceDetail_InstallationFailureReason
    , NonComplianceDetail_InstallationFailureReason (..)

    -- ** NonComplianceDetail_NonComplianceReason
    , NonComplianceDetail_NonComplianceReason (..)

    -- ** NonComplianceDetail_SpecificNonComplianceReason
    , NonComplianceDetail_SpecificNonComplianceReason (..)

    -- ** NonComplianceDetailCondition
    , NonComplianceDetailCondition (..)
    , newNonComplianceDetailCondition

    -- ** NonComplianceDetailCondition_NonComplianceReason
    , NonComplianceDetailCondition_NonComplianceReason (..)

    -- ** OncCertificateProvider
    , OncCertificateProvider (..)
    , newOncCertificateProvider

    -- ** OncWifiContext
    , OncWifiContext (..)
    , newOncWifiContext

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OsShutdownEvent
    , OsShutdownEvent (..)
    , newOsShutdownEvent

    -- ** OsStartupEvent
    , OsStartupEvent (..)
    , newOsStartupEvent

    -- ** OsStartupEvent_VerifiedBootState
    , OsStartupEvent_VerifiedBootState (..)

    -- ** OsStartupEvent_VerityMode
    , OsStartupEvent_VerityMode (..)

    -- ** PackageNameList
    , PackageNameList (..)
    , newPackageNameList

    -- ** PasswordPoliciesContext
    , PasswordPoliciesContext (..)
    , newPasswordPoliciesContext

    -- ** PasswordPoliciesContext_PasswordPolicyScope
    , PasswordPoliciesContext_PasswordPolicyScope (..)

    -- ** PasswordRequirements
    , PasswordRequirements (..)
    , newPasswordRequirements

    -- ** PasswordRequirements_PasswordQuality
    , PasswordRequirements_PasswordQuality (..)

    -- ** PasswordRequirements_PasswordScope
    , PasswordRequirements_PasswordScope (..)

    -- ** PasswordRequirements_RequirePasswordUnlock
    , PasswordRequirements_RequirePasswordUnlock (..)

    -- ** PasswordRequirements_UnifiedLockSettings
    , PasswordRequirements_UnifiedLockSettings (..)

    -- ** PerAppResult
    , PerAppResult (..)
    , newPerAppResult

    -- ** PerAppResult_ClearingResult
    , PerAppResult_ClearingResult (..)

    -- ** PermissionGrant
    , PermissionGrant (..)
    , newPermissionGrant

    -- ** PermissionGrant_Policy
    , PermissionGrant_Policy (..)

    -- ** PersistentPreferredActivity
    , PersistentPreferredActivity (..)
    , newPersistentPreferredActivity

    -- ** PersonalApplicationPolicy
    , PersonalApplicationPolicy (..)
    , newPersonalApplicationPolicy

    -- ** PersonalApplicationPolicy_InstallType
    , PersonalApplicationPolicy_InstallType (..)

    -- ** PersonalUsagePolicies
    , PersonalUsagePolicies (..)
    , newPersonalUsagePolicies

    -- ** PersonalUsagePolicies_PersonalPlayStoreMode
    , PersonalUsagePolicies_PersonalPlayStoreMode (..)

    -- ** PersonalUsagePolicies_PrivateSpacePolicy
    , PersonalUsagePolicies_PrivateSpacePolicy (..)

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Policy_AndroidDevicePolicyTracksItem
    , Policy_AndroidDevicePolicyTracksItem (..)

    -- ** Policy_AppAutoUpdatePolicy
    , Policy_AppAutoUpdatePolicy (..)

    -- ** Policy_AssistContentPolicy
    , Policy_AssistContentPolicy (..)

    -- ** Policy_AutoDateAndTimeZone
    , Policy_AutoDateAndTimeZone (..)

    -- ** Policy_CameraAccess
    , Policy_CameraAccess (..)

    -- ** Policy_CredentialProviderPolicyDefault
    , Policy_CredentialProviderPolicyDefault (..)

    -- ** Policy_DefaultPermissionPolicy
    , Policy_DefaultPermissionPolicy (..)

    -- ** Policy_EncryptionPolicy
    , Policy_EncryptionPolicy (..)

    -- ** Policy_KeyguardDisabledFeaturesItem
    , Policy_KeyguardDisabledFeaturesItem (..)

    -- ** Policy_LocationMode
    , Policy_LocationMode (..)

    -- ** Policy_MicrophoneAccess
    , Policy_MicrophoneAccess (..)

    -- ** Policy_OpenNetworkConfiguration
    , Policy_OpenNetworkConfiguration (..)
    , newPolicy_OpenNetworkConfiguration

    -- ** Policy_PlayStoreMode
    , Policy_PlayStoreMode (..)

    -- ** Policy_PreferentialNetworkService
    , Policy_PreferentialNetworkService (..)

    -- ** Policy_PrintingPolicy
    , Policy_PrintingPolicy (..)

    -- ** Policy_StayOnPluggedModesItem
    , Policy_StayOnPluggedModesItem (..)

    -- ** PolicyEnforcementRule
    , PolicyEnforcementRule (..)
    , newPolicyEnforcementRule

    -- ** PostureDetail
    , PostureDetail (..)
    , newPostureDetail

    -- ** PostureDetail_SecurityRisk
    , PostureDetail_SecurityRisk (..)

    -- ** PowerManagementEvent
    , PowerManagementEvent (..)
    , newPowerManagementEvent

    -- ** PowerManagementEvent_EventType
    , PowerManagementEvent_EventType (..)

    -- ** ProvisioningInfo
    , ProvisioningInfo (..)
    , newProvisioningInfo

    -- ** ProvisioningInfo_ManagementMode
    , ProvisioningInfo_ManagementMode (..)

    -- ** ProvisioningInfo_Ownership
    , ProvisioningInfo_Ownership (..)

    -- ** ProxyInfo
    , ProxyInfo (..)
    , newProxyInfo

    -- ** RemoteLockEvent
    , RemoteLockEvent (..)
    , newRemoteLockEvent

    -- ** ScreenBrightnessSettings
    , ScreenBrightnessSettings (..)
    , newScreenBrightnessSettings

    -- ** ScreenBrightnessSettings_ScreenBrightnessMode
    , ScreenBrightnessSettings_ScreenBrightnessMode (..)

    -- ** ScreenTimeoutSettings
    , ScreenTimeoutSettings (..)
    , newScreenTimeoutSettings

    -- ** ScreenTimeoutSettings_ScreenTimeoutMode
    , ScreenTimeoutSettings_ScreenTimeoutMode (..)

    -- ** SecurityPosture
    , SecurityPosture (..)
    , newSecurityPosture

    -- ** SecurityPosture_DevicePosture
    , SecurityPosture_DevicePosture (..)

    -- ** SetupAction
    , SetupAction (..)
    , newSetupAction

    -- ** SigninDetail
    , SigninDetail (..)
    , newSigninDetail

    -- ** SigninDetail_AllowPersonalUsage
    , SigninDetail_AllowPersonalUsage (..)

    -- ** SigninDetail_DefaultStatus
    , SigninDetail_DefaultStatus (..)

    -- ** SignupUrl
    , SignupUrl (..)
    , newSignupUrl

    -- ** SoftwareInfo
    , SoftwareInfo (..)
    , newSoftwareInfo

    -- ** SpecificNonComplianceContext
    , SpecificNonComplianceContext (..)
    , newSpecificNonComplianceContext

    -- ** StartLostModeParams
    , StartLostModeParams (..)
    , newStartLostModeParams

    -- ** StartLostModeStatus
    , StartLostModeStatus (..)
    , newStartLostModeStatus

    -- ** StartLostModeStatus_Status
    , StartLostModeStatus_Status (..)

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StatusReportingSettings
    , StatusReportingSettings (..)
    , newStatusReportingSettings

    -- ** StopLostModeParams
    , StopLostModeParams (..)
    , newStopLostModeParams

    -- ** StopLostModeStatus
    , StopLostModeStatus (..)
    , newStopLostModeStatus

    -- ** StopLostModeStatus_Status
    , StopLostModeStatus_Status (..)

    -- ** StopLostModeUserAttemptEvent
    , StopLostModeUserAttemptEvent (..)
    , newStopLostModeUserAttemptEvent

    -- ** StopLostModeUserAttemptEvent_Status
    , StopLostModeUserAttemptEvent_Status (..)

    -- ** SystemUpdate
    , SystemUpdate (..)
    , newSystemUpdate

    -- ** SystemUpdate_Type
    , SystemUpdate_Type (..)

    -- ** SystemUpdateInfo
    , SystemUpdateInfo (..)
    , newSystemUpdateInfo

    -- ** SystemUpdateInfo_UpdateStatus
    , SystemUpdateInfo_UpdateStatus (..)

    -- ** TelephonyInfo
    , TelephonyInfo (..)
    , newTelephonyInfo

    -- ** TermsAndConditions
    , TermsAndConditions (..)
    , newTermsAndConditions

    -- ** UsageLog
    , UsageLog (..)
    , newUsageLog

    -- ** UsageLog_EnabledLogTypesItem
    , UsageLog_EnabledLogTypesItem (..)

    -- ** UsageLog_UploadOnCellularAllowedItem
    , UsageLog_UploadOnCellularAllowedItem (..)

    -- ** UsageLogEvent
    , UsageLogEvent (..)
    , newUsageLogEvent

    -- ** UsageLogEvent_EventType
    , UsageLogEvent_EventType (..)

    -- ** User
    , User (..)
    , newUser

    -- ** UserFacingMessage
    , UserFacingMessage (..)
    , newUserFacingMessage

    -- ** UserFacingMessage_LocalizedMessages
    , UserFacingMessage_LocalizedMessages (..)
    , newUserFacingMessage_LocalizedMessages

    -- ** WebApp
    , WebApp (..)
    , newWebApp

    -- ** WebApp_DisplayMode
    , WebApp_DisplayMode (..)

    -- ** WebAppIcon
    , WebAppIcon (..)
    , newWebAppIcon

    -- ** WebToken
    , WebToken (..)
    , newWebToken

    -- ** WebToken_EnabledFeaturesItem
    , WebToken_EnabledFeaturesItem (..)

    -- ** WebToken_PermissionsItem
    , WebToken_PermissionsItem (..)

    -- ** WifiRoamingPolicy
    , WifiRoamingPolicy (..)
    , newWifiRoamingPolicy

    -- ** WifiRoamingSetting
    , WifiRoamingSetting (..)
    , newWifiRoamingSetting

    -- ** WifiRoamingSetting_WifiRoamingMode
    , WifiRoamingSetting_WifiRoamingMode (..)

    -- ** WifiSsid
    , WifiSsid (..)
    , newWifiSsid

    -- ** WifiSsidPolicy
    , WifiSsidPolicy (..)
    , newWifiSsidPolicy

    -- ** WifiSsidPolicy_WifiSsidPolicyType
    , WifiSsidPolicy_WifiSsidPolicyType (..)

    -- ** WipeAction
    , WipeAction (..)
    , newWipeAction

    -- ** WipeFailureEvent
    , WipeFailureEvent (..)
    , newWipeFailureEvent

    -- ** EnterprisesDevicesDeleteWipeDataFlags
    , EnterprisesDevicesDeleteWipeDataFlags (..)

    -- ** EnterprisesListView
    , EnterprisesListView (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Internal.Product
import Gogol.AndroidManagement.Internal.Sum

-- | Default request referring to version @v1@ of the Android Management API. This contains the host and root path used as a starting point for constructing service requests.
androidManagementService :: Core.ServiceConfig
androidManagementService
  = Core.defaultService
      (Core.ServiceId "androidmanagement:v1")
      "androidmanagement.googleapis.com"

-- | Manage Android devices and apps for your customers
type Androidmanagement'FullControl = "https://www.googleapis.com/auth/androidmanagement"
