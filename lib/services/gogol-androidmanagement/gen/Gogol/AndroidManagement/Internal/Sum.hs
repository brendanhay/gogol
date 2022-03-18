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
-- Module      : Gogol.AndroidManagement.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidManagement.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdvancedSecurityOverrides_CommonCriteriaMode
    AdvancedSecurityOverrides_CommonCriteriaMode
      ( AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEUNSPECIFIED,
        AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEDISABLED,
        AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEENABLED,
        ..
      ),

    -- * AdvancedSecurityOverrides_DeveloperSettings
    AdvancedSecurityOverrides_DeveloperSettings
      ( AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSUNSPECIFIED,
        AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSDISABLED,
        AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSALLOWED,
        ..
      ),

    -- * AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
    AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
      ( AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_GOOGLEPLAYPROTECTVERIFYAPPSUNSPECIFIED,
        AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSENFORCED,
        AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSUSERCHOICE,
        ..
      ),

    -- * AdvancedSecurityOverrides_UntrustedAppsPolicy
    AdvancedSecurityOverrides_UntrustedAppsPolicy
      ( AdvancedSecurityOverrides_UntrustedAppsPolicy_UNTRUSTEDAPPSPOLICYUNSPECIFIED,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_DISALLOWINSTALL,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLINPERSONALPROFILEONLY,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLDEVICEWIDE,
        ..
      ),

    -- * Application_AppPricing
    Application_AppPricing
      ( Application_AppPricing_APPPRICINGUNSPECIFIED,
        Application_AppPricing_Free,
        Application_AppPricing_FREEWITHINAPPPURCHASE,
        Application_AppPricing_Paid,
        ..
      ),

    -- * Application_ContentRating
    Application_ContentRating
      ( Application_ContentRating_CONTENTRATINGUNSPECIFIED,
        Application_ContentRating_THREEYEARS,
        Application_ContentRating_SEVENYEARS,
        Application_ContentRating_TWELVEYEARS,
        Application_ContentRating_SIXTEENYEARS,
        Application_ContentRating_EIGHTEENYEARS,
        ..
      ),

    -- * Application_DistributionChannel
    Application_DistributionChannel
      ( Application_DistributionChannel_DISTRIBUTIONCHANNELUNSPECIFIED,
        Application_DistributionChannel_PUBLICGOOGLEHOSTED,
        Application_DistributionChannel_PRIVATEGOOGLEHOSTED,
        Application_DistributionChannel_PRIVATESELFHOSTED,
        ..
      ),

    -- * Application_FeaturesItem
    Application_FeaturesItem
      ( Application_FeaturesItem_APPFEATUREUNSPECIFIED,
        Application_FeaturesItem_VPNAPP,
        ..
      ),

    -- * ApplicationEvent_EventType
    ApplicationEvent_EventType
      ( ApplicationEvent_EventType_APPLICATIONEVENTTYPEUNSPECIFIED,
        ApplicationEvent_EventType_Installed,
        ApplicationEvent_EventType_Changed,
        ApplicationEvent_EventType_DATACLEARED,
        ApplicationEvent_EventType_Removed,
        ApplicationEvent_EventType_Replaced,
        ApplicationEvent_EventType_Restarted,
        ApplicationEvent_EventType_Pinned,
        ApplicationEvent_EventType_Unpinned,
        ..
      ),

    -- * ApplicationPolicy_AutoUpdateMode
    ApplicationPolicy_AutoUpdateMode
      ( ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY,
        ..
      ),

    -- * ApplicationPolicy_ConnectedWorkAndPersonalApp
    ApplicationPolicy_ConnectedWorkAndPersonalApp
      ( ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPUNSPECIFIED,
        ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPDISALLOWED,
        ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPALLOWED,
        ..
      ),

    -- * ApplicationPolicy_DefaultPermissionPolicy
    ApplicationPolicy_DefaultPermissionPolicy
      ( ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
        ApplicationPolicy_DefaultPermissionPolicy_Prompt,
        ApplicationPolicy_DefaultPermissionPolicy_Grant,
        ApplicationPolicy_DefaultPermissionPolicy_Deny,
        ..
      ),

    -- * ApplicationPolicy_DelegatedScopesItem
    ApplicationPolicy_DelegatedScopesItem
      ( ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED,
        ApplicationPolicy_DelegatedScopesItem_CERTINSTALL,
        ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS,
        ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL,
        ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT,
        ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS,
        ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP,
        ..
      ),

    -- * ApplicationPolicy_InstallType
    ApplicationPolicy_InstallType
      ( ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
        ApplicationPolicy_InstallType_Preinstalled,
        ApplicationPolicy_InstallType_FORCEINSTALLED,
        ApplicationPolicy_InstallType_Blocked,
        ApplicationPolicy_InstallType_Available,
        ApplicationPolicy_InstallType_REQUIREDFORSETUP,
        ApplicationPolicy_InstallType_Kiosk,
        ..
      ),

    -- * ApplicationReport_ApplicationSource
    ApplicationReport_ApplicationSource
      ( ApplicationReport_ApplicationSource_APPLICATIONSOURCEUNSPECIFIED,
        ApplicationReport_ApplicationSource_SYSTEMAPPFACTORYVERSION,
        ApplicationReport_ApplicationSource_SYSTEMAPPUPDATEDVERSION,
        ApplicationReport_ApplicationSource_INSTALLEDFROMPLAYSTORE,
        ..
      ),

    -- * ApplicationReport_State
    ApplicationReport_State
      ( ApplicationReport_State_APPLICATIONSTATEUNSPECIFIED,
        ApplicationReport_State_Removed,
        ApplicationReport_State_Installed,
        ..
      ),

    -- * BlockAction_BlockScope
    BlockAction_BlockScope
      ( BlockAction_BlockScope_BLOCKSCOPEUNSPECIFIED,
        BlockAction_BlockScope_BLOCKSCOPEWORKPROFILE,
        BlockAction_BlockScope_BLOCKSCOPEDEVICE,
        ..
      ),

    -- * Command_ErrorCode
    Command_ErrorCode
      ( Command_ErrorCode_COMMANDERRORCODEUNSPECIFIED,
        Command_ErrorCode_Unknown,
        Command_ErrorCode_APILEVEL,
        Command_ErrorCode_MANAGEMENTMODE,
        Command_ErrorCode_INVALIDVALUE,
        Command_ErrorCode_Unsupported,
        ..
      ),

    -- * Command_ResetPasswordFlagsItem
    Command_ResetPasswordFlagsItem
      ( Command_ResetPasswordFlagsItem_RESETPASSWORDFLAGUNSPECIFIED,
        Command_ResetPasswordFlagsItem_REQUIREENTRY,
        Command_ResetPasswordFlagsItem_DONOTASKCREDENTIALSONBOOT,
        Command_ResetPasswordFlagsItem_LOCKNOW,
        ..
      ),

    -- * Command_Type
    Command_Type
      ( Command_Type_COMMANDTYPEUNSPECIFIED,
        Command_Type_Lock,
        Command_Type_RESETPASSWORD,
        Command_Type_Reboot,
        Command_Type_RELINQUISHOWNERSHIP,
        ..
      ),

    -- * CommonCriteriaModeInfo_CommonCriteriaModeStatus
    CommonCriteriaModeInfo_CommonCriteriaModeStatus
      ( CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODESTATUSUNKNOWN,
        CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEDISABLED,
        CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEENABLED,
        ..
      ),

    -- * CrossProfilePolicies_CrossProfileCopyPaste
    CrossProfilePolicies_CrossProfileCopyPaste
      ( CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEUNSPECIFIED,
        CrossProfilePolicies_CrossProfileCopyPaste_COPYFROMWORKTOPERSONALDISALLOWED,
        CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEALLOWED,
        ..
      ),

    -- * CrossProfilePolicies_CrossProfileDataSharing
    CrossProfilePolicies_CrossProfileDataSharing
      ( CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGUNSPECIFIED,
        CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGDISALLOWED,
        CrossProfilePolicies_CrossProfileDataSharing_DATASHARINGFROMWORKTOPERSONALDISALLOWED,
        CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGALLOWED,
        ..
      ),

    -- * CrossProfilePolicies_ShowWorkContactsInPersonalProfile
    CrossProfilePolicies_ShowWorkContactsInPersonalProfile
      ( CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED,
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED,
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED,
        ..
      ),

    -- * Device_AppliedState
    Device_AppliedState
      ( Device_AppliedState_DEVICESTATEUNSPECIFIED,
        Device_AppliedState_Active,
        Device_AppliedState_Disabled,
        Device_AppliedState_Deleted,
        Device_AppliedState_Provisioning,
        ..
      ),

    -- * Device_ManagementMode
    Device_ManagementMode
      ( Device_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
        Device_ManagementMode_DEVICEOWNER,
        Device_ManagementMode_PROFILEOWNER,
        ..
      ),

    -- * Device_Ownership
    Device_Ownership
      ( Device_Ownership_OWNERSHIPUNSPECIFIED,
        Device_Ownership_COMPANYOWNED,
        Device_Ownership_PERSONALLYOWNED,
        ..
      ),

    -- * Device_State
    Device_State
      ( Device_State_DEVICESTATEUNSPECIFIED,
        Device_State_Active,
        Device_State_Disabled,
        Device_State_Deleted,
        Device_State_Provisioning,
        ..
      ),

    -- * DeviceSettings_EncryptionStatus
    DeviceSettings_EncryptionStatus
      ( DeviceSettings_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
        DeviceSettings_EncryptionStatus_Unsupported,
        DeviceSettings_EncryptionStatus_Inactive,
        DeviceSettings_EncryptionStatus_Activating,
        DeviceSettings_EncryptionStatus_Active,
        DeviceSettings_EncryptionStatus_ACTIVEDEFAULTKEY,
        DeviceSettings_EncryptionStatus_ACTIVEPERUSER,
        ..
      ),

    -- * Display_State
    Display_State
      ( Display_State_DISPLAYSTATEUNSPECIFIED,
        Display_State_Off,
        Display_State_ON,
        Display_State_Doze,
        Display_State_Suspended,
        ..
      ),

    -- * EnrollmentToken_AllowPersonalUsage
    EnrollmentToken_AllowPersonalUsage
      ( EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
        EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED,
        EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
        ..
      ),

    -- * Enterprise_EnabledNotificationTypesItem
    Enterprise_EnabledNotificationTypesItem
      ( Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED,
        Enterprise_EnabledNotificationTypesItem_Enrollment,
        Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT,
        Enterprise_EnabledNotificationTypesItem_STATUSREPORT,
        Enterprise_EnabledNotificationTypesItem_Command,
        ..
      ),

    -- * KeyedAppState_Severity
    KeyedAppState_Severity
      ( KeyedAppState_Severity_SEVERITYUNSPECIFIED,
        KeyedAppState_Severity_Info,
        KeyedAppState_Severity_Error',
        ..
      ),

    -- * KioskCustomization_DeviceSettings
    KioskCustomization_DeviceSettings
      ( KioskCustomization_DeviceSettings_DEVICESETTINGSUNSPECIFIED,
        KioskCustomization_DeviceSettings_SETTINGSACCESSALLOWED,
        KioskCustomization_DeviceSettings_SETTINGSACCESSBLOCKED,
        ..
      ),

    -- * KioskCustomization_PowerButtonActions
    KioskCustomization_PowerButtonActions
      ( KioskCustomization_PowerButtonActions_POWERBUTTONACTIONSUNSPECIFIED,
        KioskCustomization_PowerButtonActions_POWERBUTTONAVAILABLE,
        KioskCustomization_PowerButtonActions_POWERBUTTONBLOCKED,
        ..
      ),

    -- * KioskCustomization_StatusBar
    KioskCustomization_StatusBar
      ( KioskCustomization_StatusBar_STATUSBARUNSPECIFIED,
        KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFOENABLED,
        KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFODISABLED,
        KioskCustomization_StatusBar_SYSTEMINFOONLY,
        ..
      ),

    -- * KioskCustomization_SystemErrorWarnings
    KioskCustomization_SystemErrorWarnings
      ( KioskCustomization_SystemErrorWarnings_SYSTEMERRORWARNINGSUNSPECIFIED,
        KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSENABLED,
        KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSMUTED,
        ..
      ),

    -- * KioskCustomization_SystemNavigation
    KioskCustomization_SystemNavigation
      ( KioskCustomization_SystemNavigation_SYSTEMNAVIGATIONUNSPECIFIED,
        KioskCustomization_SystemNavigation_NAVIGATIONENABLED,
        KioskCustomization_SystemNavigation_NAVIGATIONDISABLED,
        KioskCustomization_SystemNavigation_HOMEBUTTONONLY,
        ..
      ),

    -- * ManagedProperty_Type
    ManagedProperty_Type
      ( ManagedProperty_Type_MANAGEDPROPERTYTYPEUNSPECIFIED,
        ManagedProperty_Type_Bool,
        ManagedProperty_Type_String,
        ManagedProperty_Type_Integer,
        ManagedProperty_Type_Choice,
        ManagedProperty_Type_Multiselect,
        ManagedProperty_Type_Hidden,
        ManagedProperty_Type_Bundle,
        ManagedProperty_Type_BUNDLEARRAY,
        ..
      ),

    -- * MemoryEvent_EventType
    MemoryEvent_EventType
      ( MemoryEvent_EventType_MEMORYEVENTTYPEUNSPECIFIED,
        MemoryEvent_EventType_RAMMEASURED,
        MemoryEvent_EventType_INTERNALSTORAGEMEASURED,
        MemoryEvent_EventType_EXTERNALSTORAGEDETECTED,
        MemoryEvent_EventType_EXTERNALSTORAGEREMOVED,
        MemoryEvent_EventType_EXTERNALSTORAGEMEASURED,
        ..
      ),

    -- * NonComplianceDetail_InstallationFailureReason
    NonComplianceDetail_InstallationFailureReason
      ( NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNSPECIFIED,
        NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNKNOWN,
        NonComplianceDetail_InstallationFailureReason_INPROGRESS,
        NonComplianceDetail_InstallationFailureReason_NOTFOUND,
        NonComplianceDetail_InstallationFailureReason_NOTCOMPATIBLEWITHDEVICE,
        NonComplianceDetail_InstallationFailureReason_NOTAPPROVED,
        NonComplianceDetail_InstallationFailureReason_PERMISSIONSNOTACCEPTED,
        NonComplianceDetail_InstallationFailureReason_NOTAVAILABLEINCOUNTRY,
        NonComplianceDetail_InstallationFailureReason_NOLICENSESREMAINING,
        NonComplianceDetail_InstallationFailureReason_NOTENROLLED,
        NonComplianceDetail_InstallationFailureReason_USERINVALID,
        ..
      ),

    -- * NonComplianceDetail_NonComplianceReason
    NonComplianceDetail_NonComplianceReason
      ( NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED,
        NonComplianceDetail_NonComplianceReason_APILEVEL,
        NonComplianceDetail_NonComplianceReason_MANAGEMENTMODE,
        NonComplianceDetail_NonComplianceReason_USERACTION,
        NonComplianceDetail_NonComplianceReason_INVALIDVALUE,
        NonComplianceDetail_NonComplianceReason_APPNOTINSTALLED,
        NonComplianceDetail_NonComplianceReason_Unsupported,
        NonComplianceDetail_NonComplianceReason_APPINSTALLED,
        NonComplianceDetail_NonComplianceReason_Pending,
        NonComplianceDetail_NonComplianceReason_APPINCOMPATIBLE,
        NonComplianceDetail_NonComplianceReason_APPNOTUPDATED,
        ..
      ),

    -- * NonComplianceDetailCondition_NonComplianceReason
    NonComplianceDetailCondition_NonComplianceReason
      ( NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED,
        NonComplianceDetailCondition_NonComplianceReason_APILEVEL,
        NonComplianceDetailCondition_NonComplianceReason_MANAGEMENTMODE,
        NonComplianceDetailCondition_NonComplianceReason_USERACTION,
        NonComplianceDetailCondition_NonComplianceReason_INVALIDVALUE,
        NonComplianceDetailCondition_NonComplianceReason_APPNOTINSTALLED,
        NonComplianceDetailCondition_NonComplianceReason_Unsupported,
        NonComplianceDetailCondition_NonComplianceReason_APPINSTALLED,
        NonComplianceDetailCondition_NonComplianceReason_Pending,
        NonComplianceDetailCondition_NonComplianceReason_APPINCOMPATIBLE,
        NonComplianceDetailCondition_NonComplianceReason_APPNOTUPDATED,
        ..
      ),

    -- * PasswordRequirements_PasswordQuality
    PasswordRequirements_PasswordQuality
      ( PasswordRequirements_PasswordQuality_PASSWORDQUALITYUNSPECIFIED,
        PasswordRequirements_PasswordQuality_BIOMETRICWEAK,
        PasswordRequirements_PasswordQuality_Something,
        PasswordRequirements_PasswordQuality_Numeric,
        PasswordRequirements_PasswordQuality_NUMERICCOMPLEX,
        PasswordRequirements_PasswordQuality_Alphabetic,
        PasswordRequirements_PasswordQuality_Alphanumeric,
        PasswordRequirements_PasswordQuality_Complex,
        PasswordRequirements_PasswordQuality_COMPLEXITYLOW,
        PasswordRequirements_PasswordQuality_COMPLEXITYMEDIUM,
        PasswordRequirements_PasswordQuality_COMPLEXITYHIGH,
        ..
      ),

    -- * PasswordRequirements_PasswordScope
    PasswordRequirements_PasswordScope
      ( PasswordRequirements_PasswordScope_SCOPEUNSPECIFIED,
        PasswordRequirements_PasswordScope_SCOPEDEVICE,
        PasswordRequirements_PasswordScope_SCOPEPROFILE,
        ..
      ),

    -- * PasswordRequirements_RequirePasswordUnlock
    PasswordRequirements_RequirePasswordUnlock
      ( PasswordRequirements_RequirePasswordUnlock_REQUIREPASSWORDUNLOCKUNSPECIFIED,
        PasswordRequirements_RequirePasswordUnlock_USEDEFAULTDEVICETIMEOUT,
        PasswordRequirements_RequirePasswordUnlock_REQUIREEVERYDAY,
        ..
      ),

    -- * PasswordRequirements_UnifiedLockSettings
    PasswordRequirements_UnifiedLockSettings
      ( PasswordRequirements_UnifiedLockSettings_UNIFIEDLOCKSETTINGSUNSPECIFIED,
        PasswordRequirements_UnifiedLockSettings_ALLOWUNIFIEDWORKANDPERSONALLOCK,
        PasswordRequirements_UnifiedLockSettings_REQUIRESEPARATEWORKLOCK,
        ..
      ),

    -- * PermissionGrant_Policy
    PermissionGrant_Policy
      ( PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED,
        PermissionGrant_Policy_Prompt,
        PermissionGrant_Policy_Grant,
        PermissionGrant_Policy_Deny,
        ..
      ),

    -- * PersonalApplicationPolicy_InstallType
    PersonalApplicationPolicy_InstallType
      ( PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
        PersonalApplicationPolicy_InstallType_Blocked,
        PersonalApplicationPolicy_InstallType_Available,
        ..
      ),

    -- * PersonalUsagePolicies_PersonalPlayStoreMode
    PersonalUsagePolicies_PersonalPlayStoreMode
      ( PersonalUsagePolicies_PersonalPlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
        PersonalUsagePolicies_PersonalPlayStoreMode_Blacklist,
        PersonalUsagePolicies_PersonalPlayStoreMode_Blocklist,
        PersonalUsagePolicies_PersonalPlayStoreMode_Allowlist,
        ..
      ),

    -- * Policy_AndroidDevicePolicyTracksItem
    Policy_AndroidDevicePolicyTracksItem
      ( Policy_AndroidDevicePolicyTracksItem_APPTRACKUNSPECIFIED,
        Policy_AndroidDevicePolicyTracksItem_Production,
        Policy_AndroidDevicePolicyTracksItem_Beta,
        ..
      ),

    -- * Policy_AppAutoUpdatePolicy
    Policy_AppAutoUpdatePolicy
      ( Policy_AppAutoUpdatePolicy_APPAUTOUPDATEPOLICYUNSPECIFIED,
        Policy_AppAutoUpdatePolicy_CHOICETOTHEUSER,
        Policy_AppAutoUpdatePolicy_Never,
        Policy_AppAutoUpdatePolicy_WIFIONLY,
        Policy_AppAutoUpdatePolicy_Always,
        ..
      ),

    -- * Policy_AutoDateAndTimeZone
    Policy_AutoDateAndTimeZone
      ( Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUNSPECIFIED,
        Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUSERCHOICE,
        Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEENFORCED,
        ..
      ),

    -- * Policy_CameraAccess
    Policy_CameraAccess
      ( Policy_CameraAccess_CAMERAACCESSUNSPECIFIED,
        Policy_CameraAccess_CAMERAACCESSUSERCHOICE,
        Policy_CameraAccess_CAMERAACCESSDISABLED,
        Policy_CameraAccess_CAMERAACCESSENFORCED,
        ..
      ),

    -- * Policy_DefaultPermissionPolicy
    Policy_DefaultPermissionPolicy
      ( Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
        Policy_DefaultPermissionPolicy_Prompt,
        Policy_DefaultPermissionPolicy_Grant,
        Policy_DefaultPermissionPolicy_Deny,
        ..
      ),

    -- * Policy_EncryptionPolicy
    Policy_EncryptionPolicy
      ( Policy_EncryptionPolicy_ENCRYPTIONPOLICYUNSPECIFIED,
        Policy_EncryptionPolicy_ENABLEDWITHOUTPASSWORD,
        Policy_EncryptionPolicy_ENABLEDWITHPASSWORD,
        ..
      ),

    -- * Policy_KeyguardDisabledFeaturesItem
    Policy_KeyguardDisabledFeaturesItem
      ( Policy_KeyguardDisabledFeaturesItem_KEYGUARDDISABLEDFEATUREUNSPECIFIED,
        Policy_KeyguardDisabledFeaturesItem_Camera,
        Policy_KeyguardDisabledFeaturesItem_Notifications,
        Policy_KeyguardDisabledFeaturesItem_UNREDACTEDNOTIFICATIONS,
        Policy_KeyguardDisabledFeaturesItem_TRUSTAGENTS,
        Policy_KeyguardDisabledFeaturesItem_DISABLEFINGERPRINT,
        Policy_KeyguardDisabledFeaturesItem_DISABLEREMOTEINPUT,
        Policy_KeyguardDisabledFeaturesItem_Face,
        Policy_KeyguardDisabledFeaturesItem_Iris,
        Policy_KeyguardDisabledFeaturesItem_Biometrics,
        Policy_KeyguardDisabledFeaturesItem_ALLFEATURES,
        ..
      ),

    -- * Policy_LocationMode
    Policy_LocationMode
      ( Policy_LocationMode_LOCATIONMODEUNSPECIFIED,
        Policy_LocationMode_HIGHACCURACY,
        Policy_LocationMode_SENSORSONLY,
        Policy_LocationMode_BATTERYSAVING,
        Policy_LocationMode_Off,
        Policy_LocationMode_LOCATIONUSERCHOICE,
        Policy_LocationMode_LOCATIONENFORCED,
        Policy_LocationMode_LOCATIONDISABLED,
        ..
      ),

    -- * Policy_MicrophoneAccess
    Policy_MicrophoneAccess
      ( Policy_MicrophoneAccess_MICROPHONEACCESSUNSPECIFIED,
        Policy_MicrophoneAccess_MICROPHONEACCESSUSERCHOICE,
        Policy_MicrophoneAccess_MICROPHONEACCESSDISABLED,
        Policy_MicrophoneAccess_MICROPHONEACCESSENFORCED,
        ..
      ),

    -- * Policy_PlayStoreMode
    Policy_PlayStoreMode
      ( Policy_PlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
        Policy_PlayStoreMode_Whitelist,
        Policy_PlayStoreMode_Blacklist,
        ..
      ),

    -- * Policy_PreferentialNetworkService
    Policy_PreferentialNetworkService
      ( Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEUNSPECIFIED,
        Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEDISABLED,
        Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEENABLED,
        ..
      ),

    -- * Policy_StayOnPluggedModesItem
    Policy_StayOnPluggedModesItem
      ( Policy_StayOnPluggedModesItem_BATTERYPLUGGEDMODEUNSPECIFIED,
        Policy_StayOnPluggedModesItem_AC,
        Policy_StayOnPluggedModesItem_Usb,
        Policy_StayOnPluggedModesItem_Wireless,
        ..
      ),

    -- * PostureDetail_SecurityRisk
    PostureDetail_SecurityRisk
      ( PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED,
        PostureDetail_SecurityRisk_UNKNOWNOS,
        PostureDetail_SecurityRisk_COMPROMISEDOS,
        ..
      ),

    -- * PowerManagementEvent_EventType
    PowerManagementEvent_EventType
      ( PowerManagementEvent_EventType_POWERMANAGEMENTEVENTTYPEUNSPECIFIED,
        PowerManagementEvent_EventType_BATTERYLEVELCOLLECTED,
        PowerManagementEvent_EventType_POWERCONNECTED,
        PowerManagementEvent_EventType_POWERDISCONNECTED,
        PowerManagementEvent_EventType_BATTERYLOW,
        PowerManagementEvent_EventType_BATTERYOKAY,
        PowerManagementEvent_EventType_BOOTCOMPLETED,
        PowerManagementEvent_EventType_Shutdown,
        ..
      ),

    -- * SecurityPosture_DevicePosture
    SecurityPosture_DevicePosture
      ( SecurityPosture_DevicePosture_POSTUREUNSPECIFIED,
        SecurityPosture_DevicePosture_Secure',
        SecurityPosture_DevicePosture_ATRISK,
        SecurityPosture_DevicePosture_POTENTIALLYCOMPROMISED,
        ..
      ),

    -- * SigninDetail_AllowPersonalUsage
    SigninDetail_AllowPersonalUsage
      ( SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
        SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED,
        SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
        ..
      ),

    -- * SystemUpdate_Type
    SystemUpdate_Type
      ( SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED,
        SystemUpdate_Type_Automatic,
        SystemUpdate_Type_Windowed,
        SystemUpdate_Type_Postpone,
        ..
      ),

    -- * SystemUpdateInfo_UpdateStatus
    SystemUpdateInfo_UpdateStatus
      ( SystemUpdateInfo_UpdateStatus_UPDATESTATUSUNKNOWN,
        SystemUpdateInfo_UpdateStatus_UPTODATE,
        SystemUpdateInfo_UpdateStatus_UNKNOWNUPDATEAVAILABLE,
        SystemUpdateInfo_UpdateStatus_SECURITYUPDATEAVAILABLE,
        SystemUpdateInfo_UpdateStatus_OSUPDATEAVAILABLE,
        ..
      ),

    -- * WebApp_DisplayMode
    WebApp_DisplayMode
      ( WebApp_DisplayMode_DISPLAYMODEUNSPECIFIED,
        WebApp_DisplayMode_MINIMALUI,
        WebApp_DisplayMode_Standalone,
        WebApp_DisplayMode_FULLSCREEN,
        ..
      ),

    -- * WebToken_EnabledFeaturesItem
    WebToken_EnabledFeaturesItem
      ( WebToken_EnabledFeaturesItem_FEATUREUNSPECIFIED,
        WebToken_EnabledFeaturesItem_PLAYSEARCH,
        WebToken_EnabledFeaturesItem_PRIVATEAPPS,
        WebToken_EnabledFeaturesItem_WEBAPPS,
        WebToken_EnabledFeaturesItem_STOREBUILDER,
        WebToken_EnabledFeaturesItem_MANAGEDCONFIGURATIONS,
        WebToken_EnabledFeaturesItem_ZEROTOUCHCUSTOMERMANAGEMENT,
        ..
      ),

    -- * WebToken_PermissionsItem
    WebToken_PermissionsItem
      ( WebToken_PermissionsItem_WEBTOKENPERMISSIONUNSPECIFIED,
        WebToken_PermissionsItem_APPROVEAPPS,
        ..
      ),

    -- * EnterprisesDevicesDeleteWipeDataFlags
    EnterprisesDevicesDeleteWipeDataFlags
      ( EnterprisesDevicesDeleteWipeDataFlags_WIPEDATAFLAGUNSPECIFIED,
        EnterprisesDevicesDeleteWipeDataFlags_PRESERVERESETPROTECTIONDATA,
        EnterprisesDevicesDeleteWipeDataFlags_WIPEEXTERNALSTORAGE,
        ..
      ),

    -- * EnterprisesListView
    EnterprisesListView
      ( EnterprisesListView_ENTERPRISEVIEWUNSPECIFIED,
        EnterprisesListView_Basic,
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

-- | Controls Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https:\/\/www.commoncriteriaportal.org\/) (CC). Enabling Common Criteria Mode increases certain security components on a device, including AES-GCM encryption of Bluetooth Long Term Keys, and Wi-Fi configuration stores.Warning: Common Criteria Mode enforces a strict security model typically only required for IT products used in national security systems and other highly sensitive organizations. Standard device use may be affected. Only enabled if required.
newtype AdvancedSecurityOverrides_CommonCriteriaMode = AdvancedSecurityOverrides_CommonCriteriaMode {fromAdvancedSecurityOverrides_CommonCriteriaMode :: Core.Text}
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

-- | Unspecified. Defaults to COMMON/CRITERIA/MODE_DISABLED.
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEUNSPECIFIED :: AdvancedSecurityOverrides_CommonCriteriaMode
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEUNSPECIFIED = AdvancedSecurityOverrides_CommonCriteriaMode "COMMON_CRITERIA_MODE_UNSPECIFIED"

-- | Default. Disables Common Criteria Mode.
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEDISABLED :: AdvancedSecurityOverrides_CommonCriteriaMode
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEDISABLED = AdvancedSecurityOverrides_CommonCriteriaMode "COMMON_CRITERIA_MODE_DISABLED"

-- | Enables Common Criteria Mode.
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEENABLED :: AdvancedSecurityOverrides_CommonCriteriaMode
pattern AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEENABLED = AdvancedSecurityOverrides_CommonCriteriaMode "COMMON_CRITERIA_MODE_ENABLED"

{-# COMPLETE
  AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEUNSPECIFIED,
  AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEDISABLED,
  AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEENABLED,
  AdvancedSecurityOverrides_CommonCriteriaMode
  #-}

-- | Controls access to developer settings: developer options and safe boot. Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed (deprecated).
newtype AdvancedSecurityOverrides_DeveloperSettings = AdvancedSecurityOverrides_DeveloperSettings {fromAdvancedSecurityOverrides_DeveloperSettings :: Core.Text}
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

-- | Unspecified. Defaults to DEVELOPER/SETTINGS/DISABLED.
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSUNSPECIFIED :: AdvancedSecurityOverrides_DeveloperSettings
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSUNSPECIFIED = AdvancedSecurityOverrides_DeveloperSettings "DEVELOPER_SETTINGS_UNSPECIFIED"

-- | Default. Disables all developer settings and prevents the user from accessing them.
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSDISABLED :: AdvancedSecurityOverrides_DeveloperSettings
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSDISABLED = AdvancedSecurityOverrides_DeveloperSettings "DEVELOPER_SETTINGS_DISABLED"

-- | Allows all developer settings. The user can access and optionally configure the settings.
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSALLOWED :: AdvancedSecurityOverrides_DeveloperSettings
pattern AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSALLOWED = AdvancedSecurityOverrides_DeveloperSettings "DEVELOPER_SETTINGS_ALLOWED"

{-# COMPLETE
  AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSUNSPECIFIED,
  AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSDISABLED,
  AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSALLOWED,
  AdvancedSecurityOverrides_DeveloperSettings
  #-}

-- | Whether Google Play Protect verification (https:\/\/support.google.com\/accounts\/answer\/2812853) is enforced. Replaces ensureVerifyAppsEnabled (deprecated).
newtype AdvancedSecurityOverrides_GooglePlayProtectVerifyApps = AdvancedSecurityOverrides_GooglePlayProtectVerifyApps {fromAdvancedSecurityOverrides_GooglePlayProtectVerifyApps :: Core.Text}
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

-- | Unspecified. Defaults to VERIFY/APPS/ENFORCED.
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_GOOGLEPLAYPROTECTVERIFYAPPSUNSPECIFIED :: AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_GOOGLEPLAYPROTECTVERIFYAPPSUNSPECIFIED = AdvancedSecurityOverrides_GooglePlayProtectVerifyApps "GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED"

-- | Default. Force-enables app verification.
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSENFORCED :: AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSENFORCED = AdvancedSecurityOverrides_GooglePlayProtectVerifyApps "VERIFY_APPS_ENFORCED"

-- | Allows the user to choose whether to enable app verification.
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSUSERCHOICE :: AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
pattern AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSUSERCHOICE = AdvancedSecurityOverrides_GooglePlayProtectVerifyApps "VERIFY_APPS_USER_CHOICE"

{-# COMPLETE
  AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_GOOGLEPLAYPROTECTVERIFYAPPSUNSPECIFIED,
  AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSENFORCED,
  AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSUSERCHOICE,
  AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
  #-}

-- | The policy for untrusted apps (apps from unknown sources) enforced on the device. Replaces install/unknown/sources_allowed (deprecated).
newtype AdvancedSecurityOverrides_UntrustedAppsPolicy = AdvancedSecurityOverrides_UntrustedAppsPolicy {fromAdvancedSecurityOverrides_UntrustedAppsPolicy :: Core.Text}
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

-- | Unspecified. Defaults to DISALLOW_INSTALL.
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_UNTRUSTEDAPPSPOLICYUNSPECIFIED :: AdvancedSecurityOverrides_UntrustedAppsPolicy
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_UNTRUSTEDAPPSPOLICYUNSPECIFIED = AdvancedSecurityOverrides_UntrustedAppsPolicy "UNTRUSTED_APPS_POLICY_UNSPECIFIED"

-- | Default. Disallow untrusted app installs on entire device.
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_DISALLOWINSTALL :: AdvancedSecurityOverrides_UntrustedAppsPolicy
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_DISALLOWINSTALL = AdvancedSecurityOverrides_UntrustedAppsPolicy "DISALLOW_INSTALL"

-- | For devices with work profiles, allow untrusted app installs in the device\'s personal profile only.
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLINPERSONALPROFILEONLY :: AdvancedSecurityOverrides_UntrustedAppsPolicy
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLINPERSONALPROFILEONLY = AdvancedSecurityOverrides_UntrustedAppsPolicy "ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY"

-- | Allow untrusted app installs on entire device.
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLDEVICEWIDE :: AdvancedSecurityOverrides_UntrustedAppsPolicy
pattern AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLDEVICEWIDE = AdvancedSecurityOverrides_UntrustedAppsPolicy "ALLOW_INSTALL_DEVICE_WIDE"

{-# COMPLETE
  AdvancedSecurityOverrides_UntrustedAppsPolicy_UNTRUSTEDAPPSPOLICYUNSPECIFIED,
  AdvancedSecurityOverrides_UntrustedAppsPolicy_DISALLOWINSTALL,
  AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLINPERSONALPROFILEONLY,
  AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLDEVICEWIDE,
  AdvancedSecurityOverrides_UntrustedAppsPolicy
  #-}

-- | Whether this app is free, free with in-app purchases, or paid. If the pricing is unspecified, this means the app is not generally available anymore (even though it might still be available to people who own it).
newtype Application_AppPricing = Application_AppPricing {fromApplication_AppPricing :: Core.Text}
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

-- | Unknown pricing, used to denote an approved app that is not generally available.
pattern Application_AppPricing_APPPRICINGUNSPECIFIED :: Application_AppPricing
pattern Application_AppPricing_APPPRICINGUNSPECIFIED = Application_AppPricing "APP_PRICING_UNSPECIFIED"

-- | The app is free.
pattern Application_AppPricing_Free :: Application_AppPricing
pattern Application_AppPricing_Free = Application_AppPricing "FREE"

-- | The app is free, but offers in-app purchases.
pattern Application_AppPricing_FREEWITHINAPPPURCHASE :: Application_AppPricing
pattern Application_AppPricing_FREEWITHINAPPPURCHASE = Application_AppPricing "FREE_WITH_IN_APP_PURCHASE"

-- | The app is paid.
pattern Application_AppPricing_Paid :: Application_AppPricing
pattern Application_AppPricing_Paid = Application_AppPricing "PAID"

{-# COMPLETE
  Application_AppPricing_APPPRICINGUNSPECIFIED,
  Application_AppPricing_Free,
  Application_AppPricing_FREEWITHINAPPPURCHASE,
  Application_AppPricing_Paid,
  Application_AppPricing
  #-}

-- | The content rating for this app.
newtype Application_ContentRating = Application_ContentRating {fromApplication_ContentRating :: Core.Text}
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

-- | Unspecified.
pattern Application_ContentRating_CONTENTRATINGUNSPECIFIED :: Application_ContentRating
pattern Application_ContentRating_CONTENTRATINGUNSPECIFIED = Application_ContentRating "CONTENT_RATING_UNSPECIFIED"

-- | Content suitable for ages 3 and above only.
pattern Application_ContentRating_THREEYEARS :: Application_ContentRating
pattern Application_ContentRating_THREEYEARS = Application_ContentRating "THREE_YEARS"

-- | Content suitable for ages 7 and above only.
pattern Application_ContentRating_SEVENYEARS :: Application_ContentRating
pattern Application_ContentRating_SEVENYEARS = Application_ContentRating "SEVEN_YEARS"

-- | Content suitable for ages 12 and above only.
pattern Application_ContentRating_TWELVEYEARS :: Application_ContentRating
pattern Application_ContentRating_TWELVEYEARS = Application_ContentRating "TWELVE_YEARS"

-- | Content suitable for ages 16 and above only.
pattern Application_ContentRating_SIXTEENYEARS :: Application_ContentRating
pattern Application_ContentRating_SIXTEENYEARS = Application_ContentRating "SIXTEEN_YEARS"

-- | Content suitable for ages 18 and above only.
pattern Application_ContentRating_EIGHTEENYEARS :: Application_ContentRating
pattern Application_ContentRating_EIGHTEENYEARS = Application_ContentRating "EIGHTEEN_YEARS"

{-# COMPLETE
  Application_ContentRating_CONTENTRATINGUNSPECIFIED,
  Application_ContentRating_THREEYEARS,
  Application_ContentRating_SEVENYEARS,
  Application_ContentRating_TWELVEYEARS,
  Application_ContentRating_SIXTEENYEARS,
  Application_ContentRating_EIGHTEENYEARS,
  Application_ContentRating
  #-}

-- | How and to whom the package is made available.
newtype Application_DistributionChannel = Application_DistributionChannel {fromApplication_DistributionChannel :: Core.Text}
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

-- | Unspecified.
pattern Application_DistributionChannel_DISTRIBUTIONCHANNELUNSPECIFIED :: Application_DistributionChannel
pattern Application_DistributionChannel_DISTRIBUTIONCHANNELUNSPECIFIED = Application_DistributionChannel "DISTRIBUTION_CHANNEL_UNSPECIFIED"

-- | Package is available through the Play store and not restricted to a specific enterprise.
pattern Application_DistributionChannel_PUBLICGOOGLEHOSTED :: Application_DistributionChannel
pattern Application_DistributionChannel_PUBLICGOOGLEHOSTED = Application_DistributionChannel "PUBLIC_GOOGLE_HOSTED"

-- | Package is a private app (restricted to an enterprise) but hosted by Google.
pattern Application_DistributionChannel_PRIVATEGOOGLEHOSTED :: Application_DistributionChannel
pattern Application_DistributionChannel_PRIVATEGOOGLEHOSTED = Application_DistributionChannel "PRIVATE_GOOGLE_HOSTED"

-- | Private app (restricted to an enterprise) and is privately hosted.
pattern Application_DistributionChannel_PRIVATESELFHOSTED :: Application_DistributionChannel
pattern Application_DistributionChannel_PRIVATESELFHOSTED = Application_DistributionChannel "PRIVATE_SELF_HOSTED"

{-# COMPLETE
  Application_DistributionChannel_DISTRIBUTIONCHANNELUNSPECIFIED,
  Application_DistributionChannel_PUBLICGOOGLEHOSTED,
  Application_DistributionChannel_PRIVATEGOOGLEHOSTED,
  Application_DistributionChannel_PRIVATESELFHOSTED,
  Application_DistributionChannel
  #-}

newtype Application_FeaturesItem = Application_FeaturesItem {fromApplication_FeaturesItem :: Core.Text}
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

-- | Unspecified.
pattern Application_FeaturesItem_APPFEATUREUNSPECIFIED :: Application_FeaturesItem
pattern Application_FeaturesItem_APPFEATUREUNSPECIFIED = Application_FeaturesItem "APP_FEATURE_UNSPECIFIED"

-- | The app is a VPN.
pattern Application_FeaturesItem_VPNAPP :: Application_FeaturesItem
pattern Application_FeaturesItem_VPNAPP = Application_FeaturesItem "VPN_APP"

{-# COMPLETE
  Application_FeaturesItem_APPFEATUREUNSPECIFIED,
  Application_FeaturesItem_VPNAPP,
  Application_FeaturesItem
  #-}

-- | App event type.
newtype ApplicationEvent_EventType = ApplicationEvent_EventType {fromApplicationEvent_EventType :: Core.Text}
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

-- | This value is disallowed.
pattern ApplicationEvent_EventType_APPLICATIONEVENTTYPEUNSPECIFIED :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_APPLICATIONEVENTTYPEUNSPECIFIED = ApplicationEvent_EventType "APPLICATION_EVENT_TYPE_UNSPECIFIED"

-- | The app was installed.
pattern ApplicationEvent_EventType_Installed :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Installed = ApplicationEvent_EventType "INSTALLED"

-- | The app was changed, for example, a component was enabled or disabled.
pattern ApplicationEvent_EventType_Changed :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Changed = ApplicationEvent_EventType "CHANGED"

-- | The app data was cleared.
pattern ApplicationEvent_EventType_DATACLEARED :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_DATACLEARED = ApplicationEvent_EventType "DATA_CLEARED"

-- | The app was removed.
pattern ApplicationEvent_EventType_Removed :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Removed = ApplicationEvent_EventType "REMOVED"

-- | A new version of the app has been installed, replacing the old version.
pattern ApplicationEvent_EventType_Replaced :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Replaced = ApplicationEvent_EventType "REPLACED"

-- | The app was restarted.
pattern ApplicationEvent_EventType_Restarted :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Restarted = ApplicationEvent_EventType "RESTARTED"

-- | The app was pinned to the foreground.
pattern ApplicationEvent_EventType_Pinned :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Pinned = ApplicationEvent_EventType "PINNED"

-- | The app was unpinned.
pattern ApplicationEvent_EventType_Unpinned :: ApplicationEvent_EventType
pattern ApplicationEvent_EventType_Unpinned = ApplicationEvent_EventType "UNPINNED"

{-# COMPLETE
  ApplicationEvent_EventType_APPLICATIONEVENTTYPEUNSPECIFIED,
  ApplicationEvent_EventType_Installed,
  ApplicationEvent_EventType_Changed,
  ApplicationEvent_EventType_DATACLEARED,
  ApplicationEvent_EventType_Removed,
  ApplicationEvent_EventType_Replaced,
  ApplicationEvent_EventType_Restarted,
  ApplicationEvent_EventType_Pinned,
  ApplicationEvent_EventType_Unpinned,
  ApplicationEvent_EventType
  #-}

-- | Controls the auto-update mode for the app.
newtype ApplicationPolicy_AutoUpdateMode = ApplicationPolicy_AutoUpdateMode {fromApplicationPolicy_AutoUpdateMode :: Core.Text}
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

-- | Unspecified. Defaults to AUTO/UPDATE/DEFAULT.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_MODE_UNSPECIFIED"

-- | The app is automatically updated with low priority to minimize the impact on the user.The app is updated when all of the following constraints are met: The device is not actively used. The device is connected to an unmetered network. The device is charging.The device is notified about a new update within 24 hours after it is published by the developer, after which the app is updated the next time the constraints above are met.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_DEFAULT"

-- | The app is not automatically updated for a maximum of 90 days after the app becomes out of date.90 days after the app becomes out of date, the latest available version is installed automatically with low priority (see AUTO/UPDATE/DEFAULT). After the app is updated it is not automatically updated again until 90 days after it becomes out of date again.The user can still manually update the app from the Play Store at any time.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_POSTPONED"

-- | The app is updated as soon as possible. No constraints are applied.The device is notified immediately about a new update after it becomes available.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_HIGH_PRIORITY"

{-# COMPLETE
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY,
  ApplicationPolicy_AutoUpdateMode
  #-}

-- | Controls whether the app can communicate with itself across a device’s work and personal profiles, subject to user consent.
newtype ApplicationPolicy_ConnectedWorkAndPersonalApp = ApplicationPolicy_ConnectedWorkAndPersonalApp {fromApplicationPolicy_ConnectedWorkAndPersonalApp :: Core.Text}
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

-- | Unspecified. Defaults to CONNECTED/WORK/AND/PERSONAL/APPS_DISALLOWED.
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPUNSPECIFIED :: ApplicationPolicy_ConnectedWorkAndPersonalApp
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPUNSPECIFIED = ApplicationPolicy_ConnectedWorkAndPersonalApp "CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED"

-- | Default. Prevents the app from communicating cross-profile.
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPDISALLOWED :: ApplicationPolicy_ConnectedWorkAndPersonalApp
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPDISALLOWED = ApplicationPolicy_ConnectedWorkAndPersonalApp "CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED"

-- | Allows the app to communicate across profiles after receiving user consent.
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPALLOWED :: ApplicationPolicy_ConnectedWorkAndPersonalApp
pattern ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPALLOWED = ApplicationPolicy_ConnectedWorkAndPersonalApp "CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED"

{-# COMPLETE
  ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPUNSPECIFIED,
  ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPDISALLOWED,
  ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPALLOWED,
  ApplicationPolicy_ConnectedWorkAndPersonalApp
  #-}

-- | The default policy for all permissions requested by the app. If specified, this overrides the policy-level default/permission/policy which applies to all apps. It does not override the permission_grants which applies to all apps.
newtype ApplicationPolicy_DefaultPermissionPolicy = ApplicationPolicy_DefaultPermissionPolicy {fromApplicationPolicy_DefaultPermissionPolicy :: Core.Text}
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

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED = ApplicationPolicy_DefaultPermissionPolicy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern ApplicationPolicy_DefaultPermissionPolicy_Prompt :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_Prompt = ApplicationPolicy_DefaultPermissionPolicy "PROMPT"

-- | Automatically grant a permission.
pattern ApplicationPolicy_DefaultPermissionPolicy_Grant :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_Grant = ApplicationPolicy_DefaultPermissionPolicy "GRANT"

-- | Automatically deny a permission.
pattern ApplicationPolicy_DefaultPermissionPolicy_Deny :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_Deny = ApplicationPolicy_DefaultPermissionPolicy "DENY"

{-# COMPLETE
  ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
  ApplicationPolicy_DefaultPermissionPolicy_Prompt,
  ApplicationPolicy_DefaultPermissionPolicy_Grant,
  ApplicationPolicy_DefaultPermissionPolicy_Deny,
  ApplicationPolicy_DefaultPermissionPolicy
  #-}

newtype ApplicationPolicy_DelegatedScopesItem = ApplicationPolicy_DelegatedScopesItem {fromApplicationPolicy_DelegatedScopesItem :: Core.Text}
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

-- | No delegation scope specified.
pattern ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED = ApplicationPolicy_DelegatedScopesItem "DELEGATED_SCOPE_UNSPECIFIED"

-- | Grants access to certificate installation and management.
pattern ApplicationPolicy_DelegatedScopesItem_CERTINSTALL :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_CERTINSTALL = ApplicationPolicy_DelegatedScopesItem "CERT_INSTALL"

-- | Grants access to managed configurations management.
pattern ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS = ApplicationPolicy_DelegatedScopesItem "MANAGED_CONFIGURATIONS"

-- | Grants access to blocking uninstallation.
pattern ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL = ApplicationPolicy_DelegatedScopesItem "BLOCK_UNINSTALL"

-- | Grants access to permission policy and permission grant state.
pattern ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT = ApplicationPolicy_DelegatedScopesItem "PERMISSION_GRANT"

-- | Grants access to package access state.
pattern ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS = ApplicationPolicy_DelegatedScopesItem "PACKAGE_ACCESS"

-- | Grants access for enabling system apps.
pattern ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP = ApplicationPolicy_DelegatedScopesItem "ENABLE_SYSTEM_APP"

{-# COMPLETE
  ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED,
  ApplicationPolicy_DelegatedScopesItem_CERTINSTALL,
  ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS,
  ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL,
  ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT,
  ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS,
  ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP,
  ApplicationPolicy_DelegatedScopesItem
  #-}

-- | The type of installation to perform.
newtype ApplicationPolicy_InstallType = ApplicationPolicy_InstallType {fromApplicationPolicy_InstallType :: Core.Text}
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

-- | Unspecified. Defaults to AVAILABLE.
pattern ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED = ApplicationPolicy_InstallType "INSTALL_TYPE_UNSPECIFIED"

-- | The app is automatically installed and can be removed by the user.
pattern ApplicationPolicy_InstallType_Preinstalled :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_Preinstalled = ApplicationPolicy_InstallType "PREINSTALLED"

-- | The app is automatically installed and can\'t be removed by the user.
pattern ApplicationPolicy_InstallType_FORCEINSTALLED :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_FORCEINSTALLED = ApplicationPolicy_InstallType "FORCE_INSTALLED"

-- | The app is blocked and can\'t be installed. If the app was installed under a previous policy, it will be uninstalled.
pattern ApplicationPolicy_InstallType_Blocked :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_Blocked = ApplicationPolicy_InstallType "BLOCKED"

-- | The app is available to install.
pattern ApplicationPolicy_InstallType_Available :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_Available = ApplicationPolicy_InstallType "AVAILABLE"

-- | The app is automatically installed and can\'t be removed by the user and will prevent setup from completion until installation is complete.
pattern ApplicationPolicy_InstallType_REQUIREDFORSETUP :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_REQUIREDFORSETUP = ApplicationPolicy_InstallType "REQUIRED_FOR_SETUP"

-- | The app is automatically installed in kiosk mode: it\'s set as the preferred home intent and whitelisted for lock task mode. Device setup won\'t complete until the app is installed. After installation, users won\'t be able to remove the app. You can only set this installType for one app per policy. When this is present in the policy, status bar will be automatically disabled.
pattern ApplicationPolicy_InstallType_Kiosk :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_Kiosk = ApplicationPolicy_InstallType "KIOSK"

{-# COMPLETE
  ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
  ApplicationPolicy_InstallType_Preinstalled,
  ApplicationPolicy_InstallType_FORCEINSTALLED,
  ApplicationPolicy_InstallType_Blocked,
  ApplicationPolicy_InstallType_Available,
  ApplicationPolicy_InstallType_REQUIREDFORSETUP,
  ApplicationPolicy_InstallType_Kiosk,
  ApplicationPolicy_InstallType
  #-}

-- | The source of the package.
newtype ApplicationReport_ApplicationSource = ApplicationReport_ApplicationSource {fromApplicationReport_ApplicationSource :: Core.Text}
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

-- | The app was sideloaded from an unspecified source.
pattern ApplicationReport_ApplicationSource_APPLICATIONSOURCEUNSPECIFIED :: ApplicationReport_ApplicationSource
pattern ApplicationReport_ApplicationSource_APPLICATIONSOURCEUNSPECIFIED = ApplicationReport_ApplicationSource "APPLICATION_SOURCE_UNSPECIFIED"

-- | This is a system app from the device\'s factory image.
pattern ApplicationReport_ApplicationSource_SYSTEMAPPFACTORYVERSION :: ApplicationReport_ApplicationSource
pattern ApplicationReport_ApplicationSource_SYSTEMAPPFACTORYVERSION = ApplicationReport_ApplicationSource "SYSTEM_APP_FACTORY_VERSION"

-- | This is an updated system app.
pattern ApplicationReport_ApplicationSource_SYSTEMAPPUPDATEDVERSION :: ApplicationReport_ApplicationSource
pattern ApplicationReport_ApplicationSource_SYSTEMAPPUPDATEDVERSION = ApplicationReport_ApplicationSource "SYSTEM_APP_UPDATED_VERSION"

-- | The app was installed from the Google Play Store.
pattern ApplicationReport_ApplicationSource_INSTALLEDFROMPLAYSTORE :: ApplicationReport_ApplicationSource
pattern ApplicationReport_ApplicationSource_INSTALLEDFROMPLAYSTORE = ApplicationReport_ApplicationSource "INSTALLED_FROM_PLAY_STORE"

{-# COMPLETE
  ApplicationReport_ApplicationSource_APPLICATIONSOURCEUNSPECIFIED,
  ApplicationReport_ApplicationSource_SYSTEMAPPFACTORYVERSION,
  ApplicationReport_ApplicationSource_SYSTEMAPPUPDATEDVERSION,
  ApplicationReport_ApplicationSource_INSTALLEDFROMPLAYSTORE,
  ApplicationReport_ApplicationSource
  #-}

-- | Application state.
newtype ApplicationReport_State = ApplicationReport_State {fromApplicationReport_State :: Core.Text}
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

-- | App state is unspecified
pattern ApplicationReport_State_APPLICATIONSTATEUNSPECIFIED :: ApplicationReport_State
pattern ApplicationReport_State_APPLICATIONSTATEUNSPECIFIED = ApplicationReport_State "APPLICATION_STATE_UNSPECIFIED"

-- | App was removed from the device
pattern ApplicationReport_State_Removed :: ApplicationReport_State
pattern ApplicationReport_State_Removed = ApplicationReport_State "REMOVED"

-- | App is installed on the device
pattern ApplicationReport_State_Installed :: ApplicationReport_State
pattern ApplicationReport_State_Installed = ApplicationReport_State "INSTALLED"

{-# COMPLETE
  ApplicationReport_State_APPLICATIONSTATEUNSPECIFIED,
  ApplicationReport_State_Removed,
  ApplicationReport_State_Installed,
  ApplicationReport_State
  #-}

-- | Specifies the scope of this BlockAction. Only applicable to devices that are company-owned.
newtype BlockAction_BlockScope = BlockAction_BlockScope {fromBlockAction_BlockScope :: Core.Text}
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

-- | Unspecified. Defaults to BLOCK/SCOPE/WORK_PROFILE.
pattern BlockAction_BlockScope_BLOCKSCOPEUNSPECIFIED :: BlockAction_BlockScope
pattern BlockAction_BlockScope_BLOCKSCOPEUNSPECIFIED = BlockAction_BlockScope "BLOCK_SCOPE_UNSPECIFIED"

-- | Block action is only applied to apps in the work profile. Apps in the personal profile are unaffected.
pattern BlockAction_BlockScope_BLOCKSCOPEWORKPROFILE :: BlockAction_BlockScope
pattern BlockAction_BlockScope_BLOCKSCOPEWORKPROFILE = BlockAction_BlockScope "BLOCK_SCOPE_WORK_PROFILE"

-- | Block action is applied to the entire device, including apps in the personal profile.
pattern BlockAction_BlockScope_BLOCKSCOPEDEVICE :: BlockAction_BlockScope
pattern BlockAction_BlockScope_BLOCKSCOPEDEVICE = BlockAction_BlockScope "BLOCK_SCOPE_DEVICE"

{-# COMPLETE
  BlockAction_BlockScope_BLOCKSCOPEUNSPECIFIED,
  BlockAction_BlockScope_BLOCKSCOPEWORKPROFILE,
  BlockAction_BlockScope_BLOCKSCOPEDEVICE,
  BlockAction_BlockScope
  #-}

-- | If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller.
newtype Command_ErrorCode = Command_ErrorCode {fromCommand_ErrorCode :: Core.Text}
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

-- | There was no error.
pattern Command_ErrorCode_COMMANDERRORCODEUNSPECIFIED :: Command_ErrorCode
pattern Command_ErrorCode_COMMANDERRORCODEUNSPECIFIED = Command_ErrorCode "COMMAND_ERROR_CODE_UNSPECIFIED"

-- | An unknown error occurred.
pattern Command_ErrorCode_Unknown :: Command_ErrorCode
pattern Command_ErrorCode_Unknown = Command_ErrorCode "UNKNOWN"

-- | The API level of the device does not support this command.
pattern Command_ErrorCode_APILEVEL :: Command_ErrorCode
pattern Command_ErrorCode_APILEVEL = Command_ErrorCode "API_LEVEL"

-- | The management mode (profile owner, device owner, etc.) does not support the command.
pattern Command_ErrorCode_MANAGEMENTMODE :: Command_ErrorCode
pattern Command_ErrorCode_MANAGEMENTMODE = Command_ErrorCode "MANAGEMENT_MODE"

-- | The command has an invalid parameter value.
pattern Command_ErrorCode_INVALIDVALUE :: Command_ErrorCode
pattern Command_ErrorCode_INVALIDVALUE = Command_ErrorCode "INVALID_VALUE"

-- | The device doesn\'t support the command. Updating Android Device Policy to the latest version may resolve the issue.
pattern Command_ErrorCode_Unsupported :: Command_ErrorCode
pattern Command_ErrorCode_Unsupported = Command_ErrorCode "UNSUPPORTED"

{-# COMPLETE
  Command_ErrorCode_COMMANDERRORCODEUNSPECIFIED,
  Command_ErrorCode_Unknown,
  Command_ErrorCode_APILEVEL,
  Command_ErrorCode_MANAGEMENTMODE,
  Command_ErrorCode_INVALIDVALUE,
  Command_ErrorCode_Unsupported,
  Command_ErrorCode
  #-}

newtype Command_ResetPasswordFlagsItem = Command_ResetPasswordFlagsItem {fromCommand_ResetPasswordFlagsItem :: Core.Text}
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

-- | This value is ignored.
pattern Command_ResetPasswordFlagsItem_RESETPASSWORDFLAGUNSPECIFIED :: Command_ResetPasswordFlagsItem
pattern Command_ResetPasswordFlagsItem_RESETPASSWORDFLAGUNSPECIFIED = Command_ResetPasswordFlagsItem "RESET_PASSWORD_FLAG_UNSPECIFIED"

-- | Don\'t allow other admins to change the password again until the user has entered it.
pattern Command_ResetPasswordFlagsItem_REQUIREENTRY :: Command_ResetPasswordFlagsItem
pattern Command_ResetPasswordFlagsItem_REQUIREENTRY = Command_ResetPasswordFlagsItem "REQUIRE_ENTRY"

-- | Don\'t ask for user credentials on device boot.
pattern Command_ResetPasswordFlagsItem_DONOTASKCREDENTIALSONBOOT :: Command_ResetPasswordFlagsItem
pattern Command_ResetPasswordFlagsItem_DONOTASKCREDENTIALSONBOOT = Command_ResetPasswordFlagsItem "DO_NOT_ASK_CREDENTIALS_ON_BOOT"

-- | Lock the device after password reset.
pattern Command_ResetPasswordFlagsItem_LOCKNOW :: Command_ResetPasswordFlagsItem
pattern Command_ResetPasswordFlagsItem_LOCKNOW = Command_ResetPasswordFlagsItem "LOCK_NOW"

{-# COMPLETE
  Command_ResetPasswordFlagsItem_RESETPASSWORDFLAGUNSPECIFIED,
  Command_ResetPasswordFlagsItem_REQUIREENTRY,
  Command_ResetPasswordFlagsItem_DONOTASKCREDENTIALSONBOOT,
  Command_ResetPasswordFlagsItem_LOCKNOW,
  Command_ResetPasswordFlagsItem
  #-}

-- | The type of the command.
newtype Command_Type = Command_Type {fromCommand_Type :: Core.Text}
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

-- | This value is disallowed.
pattern Command_Type_COMMANDTYPEUNSPECIFIED :: Command_Type
pattern Command_Type_COMMANDTYPEUNSPECIFIED = Command_Type "COMMAND_TYPE_UNSPECIFIED"

-- | Lock the device, as if the lock screen timeout had expired.
pattern Command_Type_Lock :: Command_Type
pattern Command_Type_Lock = Command_Type "LOCK"

-- | Reset the user\'s password.
pattern Command_Type_RESETPASSWORD :: Command_Type
pattern Command_Type_RESETPASSWORD = Command_Type "RESET_PASSWORD"

-- | Reboot the device. Only supported on fully managed devices running Android 7.0 (API level 24) or higher.
pattern Command_Type_Reboot :: Command_Type
pattern Command_Type_Reboot = Command_Type "REBOOT"

-- | Removes the work profile and all policies from a company-owned Android 8.0+ device, relinquishing the device for personal use. Apps and data associated with the personal profile(s) are preserved. The device will be deleted from the server after it acknowledges the command.
pattern Command_Type_RELINQUISHOWNERSHIP :: Command_Type
pattern Command_Type_RELINQUISHOWNERSHIP = Command_Type "RELINQUISH_OWNERSHIP"

{-# COMPLETE
  Command_Type_COMMANDTYPEUNSPECIFIED,
  Command_Type_Lock,
  Command_Type_RESETPASSWORD,
  Command_Type_Reboot,
  Command_Type_RELINQUISHOWNERSHIP,
  Command_Type
  #-}

-- | Whether Common Criteria Mode is enabled.
newtype CommonCriteriaModeInfo_CommonCriteriaModeStatus = CommonCriteriaModeInfo_CommonCriteriaModeStatus {fromCommonCriteriaModeInfo_CommonCriteriaModeStatus :: Core.Text}
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

-- | Unknown status.
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODESTATUSUNKNOWN :: CommonCriteriaModeInfo_CommonCriteriaModeStatus
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODESTATUSUNKNOWN = CommonCriteriaModeInfo_CommonCriteriaModeStatus "COMMON_CRITERIA_MODE_STATUS_UNKNOWN"

-- | Common Criteria Mode is currently disabled.
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEDISABLED :: CommonCriteriaModeInfo_CommonCriteriaModeStatus
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEDISABLED = CommonCriteriaModeInfo_CommonCriteriaModeStatus "COMMON_CRITERIA_MODE_DISABLED"

-- | Common Criteria Mode is currently enabled.
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEENABLED :: CommonCriteriaModeInfo_CommonCriteriaModeStatus
pattern CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEENABLED = CommonCriteriaModeInfo_CommonCriteriaModeStatus "COMMON_CRITERIA_MODE_ENABLED"

{-# COMPLETE
  CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODESTATUSUNKNOWN,
  CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEDISABLED,
  CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEENABLED,
  CommonCriteriaModeInfo_CommonCriteriaModeStatus
  #-}

-- | Whether text copied from one profile (personal or work) can be pasted in the other profile.
newtype CrossProfilePolicies_CrossProfileCopyPaste = CrossProfilePolicies_CrossProfileCopyPaste {fromCrossProfilePolicies_CrossProfileCopyPaste :: Core.Text}
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

-- | Unspecified. Defaults to COPY/FROM/WORK/TO/PERSONAL_DISALLOWED
pattern CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEUNSPECIFIED :: CrossProfilePolicies_CrossProfileCopyPaste
pattern CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEUNSPECIFIED = CrossProfilePolicies_CrossProfileCopyPaste "CROSS_PROFILE_COPY_PASTE_UNSPECIFIED"

-- | Default. Prevents users from pasting into the personal profile text copied from the work profile. Text copied from the personal profile can be pasted into the work profile, and text copied from the work profile can be pasted into the work profile.
pattern CrossProfilePolicies_CrossProfileCopyPaste_COPYFROMWORKTOPERSONALDISALLOWED :: CrossProfilePolicies_CrossProfileCopyPaste
pattern CrossProfilePolicies_CrossProfileCopyPaste_COPYFROMWORKTOPERSONALDISALLOWED = CrossProfilePolicies_CrossProfileCopyPaste "COPY_FROM_WORK_TO_PERSONAL_DISALLOWED"

-- | Text copied in either profile can be pasted in the other profile.
pattern CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEALLOWED :: CrossProfilePolicies_CrossProfileCopyPaste
pattern CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEALLOWED = CrossProfilePolicies_CrossProfileCopyPaste "CROSS_PROFILE_COPY_PASTE_ALLOWED"

{-# COMPLETE
  CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEUNSPECIFIED,
  CrossProfilePolicies_CrossProfileCopyPaste_COPYFROMWORKTOPERSONALDISALLOWED,
  CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEALLOWED,
  CrossProfilePolicies_CrossProfileCopyPaste
  #-}

-- | Whether data from one profile (personal or work) can be shared with apps in the other profile. Specifically controls simple data sharing via intents. Management of other cross-profile communication channels, such as contact search, copy\/paste, or connected work & personal apps, are configured separately.
newtype CrossProfilePolicies_CrossProfileDataSharing = CrossProfilePolicies_CrossProfileDataSharing {fromCrossProfilePolicies_CrossProfileDataSharing :: Core.Text}
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

-- | Unspecified. Defaults to DATA/SHARING/FROM/WORK/TO/PERSONAL/DISALLOWED.
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGUNSPECIFIED :: CrossProfilePolicies_CrossProfileDataSharing
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGUNSPECIFIED = CrossProfilePolicies_CrossProfileDataSharing "CROSS_PROFILE_DATA_SHARING_UNSPECIFIED"

-- | Prevents data from being shared from both the personal profile to the work profile and the work profile to the personal profile.
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGDISALLOWED :: CrossProfilePolicies_CrossProfileDataSharing
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGDISALLOWED = CrossProfilePolicies_CrossProfileDataSharing "CROSS_PROFILE_DATA_SHARING_DISALLOWED"

-- | Default. Prevents users from sharing data from the work profile to apps in the personal profile. Personal data can be shared with work apps.
pattern CrossProfilePolicies_CrossProfileDataSharing_DATASHARINGFROMWORKTOPERSONALDISALLOWED :: CrossProfilePolicies_CrossProfileDataSharing
pattern CrossProfilePolicies_CrossProfileDataSharing_DATASHARINGFROMWORKTOPERSONALDISALLOWED = CrossProfilePolicies_CrossProfileDataSharing "DATA_SHARING_FROM_WORK_TO_PERSONAL_DISALLOWED"

-- | Data from either profile can be shared with the other profile.
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGALLOWED :: CrossProfilePolicies_CrossProfileDataSharing
pattern CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGALLOWED = CrossProfilePolicies_CrossProfileDataSharing "CROSS_PROFILE_DATA_SHARING_ALLOWED"

{-# COMPLETE
  CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGUNSPECIFIED,
  CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGDISALLOWED,
  CrossProfilePolicies_CrossProfileDataSharing_DATASHARINGFROMWORKTOPERSONALDISALLOWED,
  CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGALLOWED,
  CrossProfilePolicies_CrossProfileDataSharing
  #-}

-- | Whether contacts stored in the work profile can be shown in personal profile contact searches and incoming calls.
newtype CrossProfilePolicies_ShowWorkContactsInPersonalProfile = CrossProfilePolicies_ShowWorkContactsInPersonalProfile {fromCrossProfilePolicies_ShowWorkContactsInPersonalProfile :: Core.Text}
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

-- | Unspecified. Defaults to SHOW/WORK/CONTACTS/IN/PERSONAL/PROFILE/ALLOWED.
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_UNSPECIFIED"

-- | Prevents work profile contacts from appearing in personal profile contact searches and incoming calls
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED"

-- | Default. Allows work profile contacts to appear in personal profile contact searches and incoming calls
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED"

{-# COMPLETE
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile
  #-}

-- | The state currently applied to the device.
newtype Device_AppliedState = Device_AppliedState {fromDevice_AppliedState :: Core.Text}
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

-- | This value is disallowed.
pattern Device_AppliedState_DEVICESTATEUNSPECIFIED :: Device_AppliedState
pattern Device_AppliedState_DEVICESTATEUNSPECIFIED = Device_AppliedState "DEVICE_STATE_UNSPECIFIED"

-- | The device is active.
pattern Device_AppliedState_Active :: Device_AppliedState
pattern Device_AppliedState_Active = Device_AppliedState "ACTIVE"

-- | The device is disabled.
pattern Device_AppliedState_Disabled :: Device_AppliedState
pattern Device_AppliedState_Disabled = Device_AppliedState "DISABLED"

-- | The device was deleted. This state is never returned by an API call, but is used in the final status report when the device acknowledges the deletion. If the device is deleted via the API call, this state is published to Pub\/Sub. If the user deletes the work profile or resets the device, the device state will remain unknown to the server.
pattern Device_AppliedState_Deleted :: Device_AppliedState
pattern Device_AppliedState_Deleted = Device_AppliedState "DELETED"

-- | The device is being provisioned. Newly enrolled devices are in this state until they have a policy applied.
pattern Device_AppliedState_Provisioning :: Device_AppliedState
pattern Device_AppliedState_Provisioning = Device_AppliedState "PROVISIONING"

{-# COMPLETE
  Device_AppliedState_DEVICESTATEUNSPECIFIED,
  Device_AppliedState_Active,
  Device_AppliedState_Disabled,
  Device_AppliedState_Deleted,
  Device_AppliedState_Provisioning,
  Device_AppliedState
  #-}

-- | The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported.
newtype Device_ManagementMode = Device_ManagementMode {fromDevice_ManagementMode :: Core.Text}
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

-- | This value is disallowed.
pattern Device_ManagementMode_MANAGEMENTMODEUNSPECIFIED :: Device_ManagementMode
pattern Device_ManagementMode_MANAGEMENTMODEUNSPECIFIED = Device_ManagementMode "MANAGEMENT_MODE_UNSPECIFIED"

-- | Device owner. Android Device Policy has full control over the device.
pattern Device_ManagementMode_DEVICEOWNER :: Device_ManagementMode
pattern Device_ManagementMode_DEVICEOWNER = Device_ManagementMode "DEVICE_OWNER"

-- | Profile owner. Android Device Policy has control over a managed profile on the device.
pattern Device_ManagementMode_PROFILEOWNER :: Device_ManagementMode
pattern Device_ManagementMode_PROFILEOWNER = Device_ManagementMode "PROFILE_OWNER"

{-# COMPLETE
  Device_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
  Device_ManagementMode_DEVICEOWNER,
  Device_ManagementMode_PROFILEOWNER,
  Device_ManagementMode
  #-}

-- | Ownership of the managed device.
newtype Device_Ownership = Device_Ownership {fromDevice_Ownership :: Core.Text}
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

-- | Ownership is unspecified.
pattern Device_Ownership_OWNERSHIPUNSPECIFIED :: Device_Ownership
pattern Device_Ownership_OWNERSHIPUNSPECIFIED = Device_Ownership "OWNERSHIP_UNSPECIFIED"

-- | Device is company-owned.
pattern Device_Ownership_COMPANYOWNED :: Device_Ownership
pattern Device_Ownership_COMPANYOWNED = Device_Ownership "COMPANY_OWNED"

-- | Device is personally-owned.
pattern Device_Ownership_PERSONALLYOWNED :: Device_Ownership
pattern Device_Ownership_PERSONALLYOWNED = Device_Ownership "PERSONALLY_OWNED"

{-# COMPLETE
  Device_Ownership_OWNERSHIPUNSPECIFIED,
  Device_Ownership_COMPANYOWNED,
  Device_Ownership_PERSONALLYOWNED,
  Device_Ownership
  #-}

-- | The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete.
newtype Device_State = Device_State {fromDevice_State :: Core.Text}
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

-- | This value is disallowed.
pattern Device_State_DEVICESTATEUNSPECIFIED :: Device_State
pattern Device_State_DEVICESTATEUNSPECIFIED = Device_State "DEVICE_STATE_UNSPECIFIED"

-- | The device is active.
pattern Device_State_Active :: Device_State
pattern Device_State_Active = Device_State "ACTIVE"

-- | The device is disabled.
pattern Device_State_Disabled :: Device_State
pattern Device_State_Disabled = Device_State "DISABLED"

-- | The device was deleted. This state is never returned by an API call, but is used in the final status report when the device acknowledges the deletion. If the device is deleted via the API call, this state is published to Pub\/Sub. If the user deletes the work profile or resets the device, the device state will remain unknown to the server.
pattern Device_State_Deleted :: Device_State
pattern Device_State_Deleted = Device_State "DELETED"

-- | The device is being provisioned. Newly enrolled devices are in this state until they have a policy applied.
pattern Device_State_Provisioning :: Device_State
pattern Device_State_Provisioning = Device_State "PROVISIONING"

{-# COMPLETE
  Device_State_DEVICESTATEUNSPECIFIED,
  Device_State_Active,
  Device_State_Disabled,
  Device_State_Deleted,
  Device_State_Provisioning,
  Device_State
  #-}

-- | Encryption status from DevicePolicyManager.
newtype DeviceSettings_EncryptionStatus = DeviceSettings_EncryptionStatus {fromDeviceSettings_EncryptionStatus :: Core.Text}
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

-- | Unspecified. No device should have this type.
pattern DeviceSettings_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED = DeviceSettings_EncryptionStatus "ENCRYPTION_STATUS_UNSPECIFIED"

-- | Encryption is not supported by the device.
pattern DeviceSettings_EncryptionStatus_Unsupported :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_Unsupported = DeviceSettings_EncryptionStatus "UNSUPPORTED"

-- | Encryption is supported by the device, but is not currently active.
pattern DeviceSettings_EncryptionStatus_Inactive :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_Inactive = DeviceSettings_EncryptionStatus "INACTIVE"

-- | Encryption is not currently active, but is currently being activated.
pattern DeviceSettings_EncryptionStatus_Activating :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_Activating = DeviceSettings_EncryptionStatus "ACTIVATING"

-- | Encryption is active.
pattern DeviceSettings_EncryptionStatus_Active :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_Active = DeviceSettings_EncryptionStatus "ACTIVE"

-- | Encryption is active, but an encryption key is not set by the user.
pattern DeviceSettings_EncryptionStatus_ACTIVEDEFAULTKEY :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_ACTIVEDEFAULTKEY = DeviceSettings_EncryptionStatus "ACTIVE_DEFAULT_KEY"

-- | Encryption is active, and the encryption key is tied to the user profile.
pattern DeviceSettings_EncryptionStatus_ACTIVEPERUSER :: DeviceSettings_EncryptionStatus
pattern DeviceSettings_EncryptionStatus_ACTIVEPERUSER = DeviceSettings_EncryptionStatus "ACTIVE_PER_USER"

{-# COMPLETE
  DeviceSettings_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
  DeviceSettings_EncryptionStatus_Unsupported,
  DeviceSettings_EncryptionStatus_Inactive,
  DeviceSettings_EncryptionStatus_Activating,
  DeviceSettings_EncryptionStatus_Active,
  DeviceSettings_EncryptionStatus_ACTIVEDEFAULTKEY,
  DeviceSettings_EncryptionStatus_ACTIVEPERUSER,
  DeviceSettings_EncryptionStatus
  #-}

-- | State of the display.
newtype Display_State = Display_State {fromDisplay_State :: Core.Text}
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

-- | This value is disallowed.
pattern Display_State_DISPLAYSTATEUNSPECIFIED :: Display_State
pattern Display_State_DISPLAYSTATEUNSPECIFIED = Display_State "DISPLAY_STATE_UNSPECIFIED"

-- | Display is off.
pattern Display_State_Off :: Display_State
pattern Display_State_Off = Display_State "OFF"

-- | Display is on.
pattern Display_State_ON :: Display_State
pattern Display_State_ON = Display_State "ON"

-- | Display is dozing in a low power state
pattern Display_State_Doze :: Display_State
pattern Display_State_Doze = Display_State "DOZE"

-- | Display is dozing in a suspended low power state.
pattern Display_State_Suspended :: Display_State
pattern Display_State_Suspended = Display_State "SUSPENDED"

{-# COMPLETE
  Display_State_DISPLAYSTATEUNSPECIFIED,
  Display_State_Off,
  Display_State_ON,
  Display_State_Doze,
  Display_State_Suspended,
  Display_State
  #-}

-- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
newtype EnrollmentToken_AllowPersonalUsage = EnrollmentToken_AllowPersonalUsage {fromEnrollmentToken_AllowPersonalUsage :: Core.Text}
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

-- | Personal usage restriction is not specified
pattern EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED :: EnrollmentToken_AllowPersonalUsage
pattern EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED = EnrollmentToken_AllowPersonalUsage "ALLOW_PERSONAL_USAGE_UNSPECIFIED"

-- | Personal usage is allowed
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED :: EnrollmentToken_AllowPersonalUsage
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED = EnrollmentToken_AllowPersonalUsage "PERSONAL_USAGE_ALLOWED"

-- | Personal usage is disallowed
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED :: EnrollmentToken_AllowPersonalUsage
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED = EnrollmentToken_AllowPersonalUsage "PERSONAL_USAGE_DISALLOWED"

{-# COMPLETE
  EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
  EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED,
  EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
  EnrollmentToken_AllowPersonalUsage
  #-}

newtype Enterprise_EnabledNotificationTypesItem = Enterprise_EnabledNotificationTypesItem {fromEnterprise_EnabledNotificationTypesItem :: Core.Text}
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

-- | This value is ignored.
pattern Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED = Enterprise_EnabledNotificationTypesItem "NOTIFICATION_TYPE_UNSPECIFIED"

-- | A notification sent when a device enrolls.
pattern Enterprise_EnabledNotificationTypesItem_Enrollment :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_Enrollment = Enterprise_EnabledNotificationTypesItem "ENROLLMENT"

-- | Deprecated.
pattern Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT = Enterprise_EnabledNotificationTypesItem "COMPLIANCE_REPORT"

-- | A notification sent when a device issues a status report.
pattern Enterprise_EnabledNotificationTypesItem_STATUSREPORT :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_STATUSREPORT = Enterprise_EnabledNotificationTypesItem "STATUS_REPORT"

-- | A notification sent when a device command has completed.
pattern Enterprise_EnabledNotificationTypesItem_Command :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_Command = Enterprise_EnabledNotificationTypesItem "COMMAND"

{-# COMPLETE
  Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED,
  Enterprise_EnabledNotificationTypesItem_Enrollment,
  Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT,
  Enterprise_EnabledNotificationTypesItem_STATUSREPORT,
  Enterprise_EnabledNotificationTypesItem_Command,
  Enterprise_EnabledNotificationTypesItem
  #-}

-- | The severity of the app state.
newtype KeyedAppState_Severity = KeyedAppState_Severity {fromKeyedAppState_Severity :: Core.Text}
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

-- | Unspecified severity level.
pattern KeyedAppState_Severity_SEVERITYUNSPECIFIED :: KeyedAppState_Severity
pattern KeyedAppState_Severity_SEVERITYUNSPECIFIED = KeyedAppState_Severity "SEVERITY_UNSPECIFIED"

-- | Information severity level.
pattern KeyedAppState_Severity_Info :: KeyedAppState_Severity
pattern KeyedAppState_Severity_Info = KeyedAppState_Severity "INFO"

-- | Error severity level. This should only be set for genuine error conditions that a management organization needs to take action to fix.
pattern KeyedAppState_Severity_Error' :: KeyedAppState_Severity
pattern KeyedAppState_Severity_Error' = KeyedAppState_Severity "ERROR"

{-# COMPLETE
  KeyedAppState_Severity_SEVERITYUNSPECIFIED,
  KeyedAppState_Severity_Info,
  KeyedAppState_Severity_Error',
  KeyedAppState_Severity
  #-}

-- | Specifies whether the Settings app is allowed in kiosk mode.
newtype KioskCustomization_DeviceSettings = KioskCustomization_DeviceSettings {fromKioskCustomization_DeviceSettings :: Core.Text}
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

-- | Unspecified, defaults to SETTINGS/ACCESS/ALLOWED.
pattern KioskCustomization_DeviceSettings_DEVICESETTINGSUNSPECIFIED :: KioskCustomization_DeviceSettings
pattern KioskCustomization_DeviceSettings_DEVICESETTINGSUNSPECIFIED = KioskCustomization_DeviceSettings "DEVICE_SETTINGS_UNSPECIFIED"

-- | Access to the Settings app is allowed in kiosk mode.
pattern KioskCustomization_DeviceSettings_SETTINGSACCESSALLOWED :: KioskCustomization_DeviceSettings
pattern KioskCustomization_DeviceSettings_SETTINGSACCESSALLOWED = KioskCustomization_DeviceSettings "SETTINGS_ACCESS_ALLOWED"

-- | Access to the Settings app is not allowed in kiosk mode.
pattern KioskCustomization_DeviceSettings_SETTINGSACCESSBLOCKED :: KioskCustomization_DeviceSettings
pattern KioskCustomization_DeviceSettings_SETTINGSACCESSBLOCKED = KioskCustomization_DeviceSettings "SETTINGS_ACCESS_BLOCKED"

{-# COMPLETE
  KioskCustomization_DeviceSettings_DEVICESETTINGSUNSPECIFIED,
  KioskCustomization_DeviceSettings_SETTINGSACCESSALLOWED,
  KioskCustomization_DeviceSettings_SETTINGSACCESSBLOCKED,
  KioskCustomization_DeviceSettings
  #-}

-- | Sets the behavior of a device in kiosk mode when a user presses and holds (long-presses) the Power button.
newtype KioskCustomization_PowerButtonActions = KioskCustomization_PowerButtonActions {fromKioskCustomization_PowerButtonActions :: Core.Text}
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

-- | Unspecified, defaults to POWER/BUTTON/AVAILABLE.
pattern KioskCustomization_PowerButtonActions_POWERBUTTONACTIONSUNSPECIFIED :: KioskCustomization_PowerButtonActions
pattern KioskCustomization_PowerButtonActions_POWERBUTTONACTIONSUNSPECIFIED = KioskCustomization_PowerButtonActions "POWER_BUTTON_ACTIONS_UNSPECIFIED"

-- | The power menu (e.g. Power off, Restart) is shown when a user long-presses the Power button of a device in kiosk mode.
pattern KioskCustomization_PowerButtonActions_POWERBUTTONAVAILABLE :: KioskCustomization_PowerButtonActions
pattern KioskCustomization_PowerButtonActions_POWERBUTTONAVAILABLE = KioskCustomization_PowerButtonActions "POWER_BUTTON_AVAILABLE"

-- | The power menu (e.g. Power off, Restart) is not shown when a user long-presses the Power button of a device in kiosk mode. Note: this may prevent users from turning off the device.
pattern KioskCustomization_PowerButtonActions_POWERBUTTONBLOCKED :: KioskCustomization_PowerButtonActions
pattern KioskCustomization_PowerButtonActions_POWERBUTTONBLOCKED = KioskCustomization_PowerButtonActions "POWER_BUTTON_BLOCKED"

{-# COMPLETE
  KioskCustomization_PowerButtonActions_POWERBUTTONACTIONSUNSPECIFIED,
  KioskCustomization_PowerButtonActions_POWERBUTTONAVAILABLE,
  KioskCustomization_PowerButtonActions_POWERBUTTONBLOCKED,
  KioskCustomization_PowerButtonActions
  #-}

-- | Specifies whether system info and notifications are disabled in kiosk mode.
newtype KioskCustomization_StatusBar = KioskCustomization_StatusBar {fromKioskCustomization_StatusBar :: Core.Text}
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

-- | Unspecified, defaults to INFO/AND/NOTIFICATIONS_DISABLED.
pattern KioskCustomization_StatusBar_STATUSBARUNSPECIFIED :: KioskCustomization_StatusBar
pattern KioskCustomization_StatusBar_STATUSBARUNSPECIFIED = KioskCustomization_StatusBar "STATUS_BAR_UNSPECIFIED"

-- | System info and notifications are shown on the status bar in kiosk mode.Note: For this policy to take effect, the device\'s home button must be enabled using kioskCustomization.systemNavigation.
pattern KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFOENABLED :: KioskCustomization_StatusBar
pattern KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFOENABLED = KioskCustomization_StatusBar "NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED"

-- | System info and notifications are disabled in kiosk mode.
pattern KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFODISABLED :: KioskCustomization_StatusBar
pattern KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFODISABLED = KioskCustomization_StatusBar "NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED"

-- | Only system info is shown on the status bar.
pattern KioskCustomization_StatusBar_SYSTEMINFOONLY :: KioskCustomization_StatusBar
pattern KioskCustomization_StatusBar_SYSTEMINFOONLY = KioskCustomization_StatusBar "SYSTEM_INFO_ONLY"

{-# COMPLETE
  KioskCustomization_StatusBar_STATUSBARUNSPECIFIED,
  KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFOENABLED,
  KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFODISABLED,
  KioskCustomization_StatusBar_SYSTEMINFOONLY,
  KioskCustomization_StatusBar
  #-}

-- | Specifies whether system error dialogs for crashed or unresponsive apps are blocked in kiosk mode. When blocked, the system will force-stop the app as if the user chooses the \"close app\" option on the UI.
newtype KioskCustomization_SystemErrorWarnings = KioskCustomization_SystemErrorWarnings {fromKioskCustomization_SystemErrorWarnings :: Core.Text}
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

-- | Unspecified, defaults to ERROR/AND/WARNINGS_MUTED.
pattern KioskCustomization_SystemErrorWarnings_SYSTEMERRORWARNINGSUNSPECIFIED :: KioskCustomization_SystemErrorWarnings
pattern KioskCustomization_SystemErrorWarnings_SYSTEMERRORWARNINGSUNSPECIFIED = KioskCustomization_SystemErrorWarnings "SYSTEM_ERROR_WARNINGS_UNSPECIFIED"

-- | All system error dialogs such as crash and app not responding (ANR) are displayed.
pattern KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSENABLED :: KioskCustomization_SystemErrorWarnings
pattern KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSENABLED = KioskCustomization_SystemErrorWarnings "ERROR_AND_WARNINGS_ENABLED"

-- | All system error dialogs, such as crash and app not responding (ANR) are blocked. When blocked, the system force-stops the app as if the user closes the app from the UI.
pattern KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSMUTED :: KioskCustomization_SystemErrorWarnings
pattern KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSMUTED = KioskCustomization_SystemErrorWarnings "ERROR_AND_WARNINGS_MUTED"

{-# COMPLETE
  KioskCustomization_SystemErrorWarnings_SYSTEMERRORWARNINGSUNSPECIFIED,
  KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSENABLED,
  KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSMUTED,
  KioskCustomization_SystemErrorWarnings
  #-}

-- | Specifies which navigation features are enabled (e.g. Home, Overview buttons) in kiosk mode.
newtype KioskCustomization_SystemNavigation = KioskCustomization_SystemNavigation {fromKioskCustomization_SystemNavigation :: Core.Text}
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

-- | Unspecified, defaults to NAVIGATION_DISABLED.
pattern KioskCustomization_SystemNavigation_SYSTEMNAVIGATIONUNSPECIFIED :: KioskCustomization_SystemNavigation
pattern KioskCustomization_SystemNavigation_SYSTEMNAVIGATIONUNSPECIFIED = KioskCustomization_SystemNavigation "SYSTEM_NAVIGATION_UNSPECIFIED"

-- | Home and overview buttons are enabled.
pattern KioskCustomization_SystemNavigation_NAVIGATIONENABLED :: KioskCustomization_SystemNavigation
pattern KioskCustomization_SystemNavigation_NAVIGATIONENABLED = KioskCustomization_SystemNavigation "NAVIGATION_ENABLED"

-- | The home and Overview buttons are not accessible.
pattern KioskCustomization_SystemNavigation_NAVIGATIONDISABLED :: KioskCustomization_SystemNavigation
pattern KioskCustomization_SystemNavigation_NAVIGATIONDISABLED = KioskCustomization_SystemNavigation "NAVIGATION_DISABLED"

-- | Only the home button is enabled.
pattern KioskCustomization_SystemNavigation_HOMEBUTTONONLY :: KioskCustomization_SystemNavigation
pattern KioskCustomization_SystemNavigation_HOMEBUTTONONLY = KioskCustomization_SystemNavigation "HOME_BUTTON_ONLY"

{-# COMPLETE
  KioskCustomization_SystemNavigation_SYSTEMNAVIGATIONUNSPECIFIED,
  KioskCustomization_SystemNavigation_NAVIGATIONENABLED,
  KioskCustomization_SystemNavigation_NAVIGATIONDISABLED,
  KioskCustomization_SystemNavigation_HOMEBUTTONONLY,
  KioskCustomization_SystemNavigation
  #-}

-- | The type of the property.
newtype ManagedProperty_Type = ManagedProperty_Type {fromManagedProperty_Type :: Core.Text}
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

-- | Not used.
pattern ManagedProperty_Type_MANAGEDPROPERTYTYPEUNSPECIFIED :: ManagedProperty_Type
pattern ManagedProperty_Type_MANAGEDPROPERTYTYPEUNSPECIFIED = ManagedProperty_Type "MANAGED_PROPERTY_TYPE_UNSPECIFIED"

-- | A property of boolean type.
pattern ManagedProperty_Type_Bool :: ManagedProperty_Type
pattern ManagedProperty_Type_Bool = ManagedProperty_Type "BOOL"

-- | A property of string type.
pattern ManagedProperty_Type_String :: ManagedProperty_Type
pattern ManagedProperty_Type_String = ManagedProperty_Type "STRING"

-- | A property of integer type.
pattern ManagedProperty_Type_Integer :: ManagedProperty_Type
pattern ManagedProperty_Type_Integer = ManagedProperty_Type "INTEGER"

-- | A choice of one item from a set.
pattern ManagedProperty_Type_Choice :: ManagedProperty_Type
pattern ManagedProperty_Type_Choice = ManagedProperty_Type "CHOICE"

-- | A choice of multiple items from a set.
pattern ManagedProperty_Type_Multiselect :: ManagedProperty_Type
pattern ManagedProperty_Type_Multiselect = ManagedProperty_Type "MULTISELECT"

-- | A hidden restriction of string type (the default value can be used to pass along information that can\'t be modified, such as a version code).
pattern ManagedProperty_Type_Hidden :: ManagedProperty_Type
pattern ManagedProperty_Type_Hidden = ManagedProperty_Type "HIDDEN"

-- | A bundle of properties
pattern ManagedProperty_Type_Bundle :: ManagedProperty_Type
pattern ManagedProperty_Type_Bundle = ManagedProperty_Type "BUNDLE"

-- | An array of property bundles.
pattern ManagedProperty_Type_BUNDLEARRAY :: ManagedProperty_Type
pattern ManagedProperty_Type_BUNDLEARRAY = ManagedProperty_Type "BUNDLE_ARRAY"

{-# COMPLETE
  ManagedProperty_Type_MANAGEDPROPERTYTYPEUNSPECIFIED,
  ManagedProperty_Type_Bool,
  ManagedProperty_Type_String,
  ManagedProperty_Type_Integer,
  ManagedProperty_Type_Choice,
  ManagedProperty_Type_Multiselect,
  ManagedProperty_Type_Hidden,
  ManagedProperty_Type_Bundle,
  ManagedProperty_Type_BUNDLEARRAY,
  ManagedProperty_Type
  #-}

-- | Event type.
newtype MemoryEvent_EventType = MemoryEvent_EventType {fromMemoryEvent_EventType :: Core.Text}
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

-- | Unspecified. No events have this type.
pattern MemoryEvent_EventType_MEMORYEVENTTYPEUNSPECIFIED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_MEMORYEVENTTYPEUNSPECIFIED = MemoryEvent_EventType "MEMORY_EVENT_TYPE_UNSPECIFIED"

-- | Free space in RAM was measured.
pattern MemoryEvent_EventType_RAMMEASURED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_RAMMEASURED = MemoryEvent_EventType "RAM_MEASURED"

-- | Free space in internal storage was measured.
pattern MemoryEvent_EventType_INTERNALSTORAGEMEASURED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_INTERNALSTORAGEMEASURED = MemoryEvent_EventType "INTERNAL_STORAGE_MEASURED"

-- | A new external storage medium was detected. The reported byte count is the total capacity of the storage medium.
pattern MemoryEvent_EventType_EXTERNALSTORAGEDETECTED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_EXTERNALSTORAGEDETECTED = MemoryEvent_EventType "EXTERNAL_STORAGE_DETECTED"

-- | An external storage medium was removed. The reported byte count is zero.
pattern MemoryEvent_EventType_EXTERNALSTORAGEREMOVED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_EXTERNALSTORAGEREMOVED = MemoryEvent_EventType "EXTERNAL_STORAGE_REMOVED"

-- | Free space in an external storage medium was measured.
pattern MemoryEvent_EventType_EXTERNALSTORAGEMEASURED :: MemoryEvent_EventType
pattern MemoryEvent_EventType_EXTERNALSTORAGEMEASURED = MemoryEvent_EventType "EXTERNAL_STORAGE_MEASURED"

{-# COMPLETE
  MemoryEvent_EventType_MEMORYEVENTTYPEUNSPECIFIED,
  MemoryEvent_EventType_RAMMEASURED,
  MemoryEvent_EventType_INTERNALSTORAGEMEASURED,
  MemoryEvent_EventType_EXTERNALSTORAGEDETECTED,
  MemoryEvent_EventType_EXTERNALSTORAGEREMOVED,
  MemoryEvent_EventType_EXTERNALSTORAGEMEASURED,
  MemoryEvent_EventType
  #-}

-- | If package/name is set and the non-compliance reason is APP/NOT/INSTALLED or APP/NOT_UPDATED, the detailed reason the app can\'t be installed or updated.
newtype NonComplianceDetail_InstallationFailureReason = NonComplianceDetail_InstallationFailureReason {fromNonComplianceDetail_InstallationFailureReason :: Core.Text}
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

-- | This value is disallowed.
pattern NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNSPECIFIED :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNSPECIFIED = NonComplianceDetail_InstallationFailureReason "INSTALLATION_FAILURE_REASON_UNSPECIFIED"

-- | An unknown condition is preventing the app from being installed. Some potential reasons are that the device doesn\'t have enough storage, the device network connection is unreliable, or the installation is taking longer than expected. The installation will be retried automatically.
pattern NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNKNOWN :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNKNOWN = NonComplianceDetail_InstallationFailureReason "INSTALLATION_FAILURE_REASON_UNKNOWN"

-- | The installation is still in progress.
pattern NonComplianceDetail_InstallationFailureReason_INPROGRESS :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_INPROGRESS = NonComplianceDetail_InstallationFailureReason "IN_PROGRESS"

-- | The app was not found in Play.
pattern NonComplianceDetail_InstallationFailureReason_NOTFOUND :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOTFOUND = NonComplianceDetail_InstallationFailureReason "NOT_FOUND"

-- | The app is incompatible with the device.
pattern NonComplianceDetail_InstallationFailureReason_NOTCOMPATIBLEWITHDEVICE :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOTCOMPATIBLEWITHDEVICE = NonComplianceDetail_InstallationFailureReason "NOT_COMPATIBLE_WITH_DEVICE"

-- | The app has not been approved by the admin.
pattern NonComplianceDetail_InstallationFailureReason_NOTAPPROVED :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOTAPPROVED = NonComplianceDetail_InstallationFailureReason "NOT_APPROVED"

-- | The app has new permissions that have not been accepted by the admin.
pattern NonComplianceDetail_InstallationFailureReason_PERMISSIONSNOTACCEPTED :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_PERMISSIONSNOTACCEPTED = NonComplianceDetail_InstallationFailureReason "PERMISSIONS_NOT_ACCEPTED"

-- | The app is not available in the user\'s country.
pattern NonComplianceDetail_InstallationFailureReason_NOTAVAILABLEINCOUNTRY :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOTAVAILABLEINCOUNTRY = NonComplianceDetail_InstallationFailureReason "NOT_AVAILABLE_IN_COUNTRY"

-- | There are no licenses available to assign to the user.
pattern NonComplianceDetail_InstallationFailureReason_NOLICENSESREMAINING :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOLICENSESREMAINING = NonComplianceDetail_InstallationFailureReason "NO_LICENSES_REMAINING"

-- | The enterprise is no longer enrolled with Managed Google Play or the admin has not accepted the latest Managed Google Play Terms of Service.
pattern NonComplianceDetail_InstallationFailureReason_NOTENROLLED :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NOTENROLLED = NonComplianceDetail_InstallationFailureReason "NOT_ENROLLED"

-- | The user is no longer valid. The user may have been deleted or disabled.
pattern NonComplianceDetail_InstallationFailureReason_USERINVALID :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_USERINVALID = NonComplianceDetail_InstallationFailureReason "USER_INVALID"

{-# COMPLETE
  NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNSPECIFIED,
  NonComplianceDetail_InstallationFailureReason_INSTALLATIONFAILUREREASONUNKNOWN,
  NonComplianceDetail_InstallationFailureReason_INPROGRESS,
  NonComplianceDetail_InstallationFailureReason_NOTFOUND,
  NonComplianceDetail_InstallationFailureReason_NOTCOMPATIBLEWITHDEVICE,
  NonComplianceDetail_InstallationFailureReason_NOTAPPROVED,
  NonComplianceDetail_InstallationFailureReason_PERMISSIONSNOTACCEPTED,
  NonComplianceDetail_InstallationFailureReason_NOTAVAILABLEINCOUNTRY,
  NonComplianceDetail_InstallationFailureReason_NOLICENSESREMAINING,
  NonComplianceDetail_InstallationFailureReason_NOTENROLLED,
  NonComplianceDetail_InstallationFailureReason_USERINVALID,
  NonComplianceDetail_InstallationFailureReason
  #-}

-- | The reason the device is not in compliance with the setting.
newtype NonComplianceDetail_NonComplianceReason = NonComplianceDetail_NonComplianceReason {fromNonComplianceDetail_NonComplianceReason :: Core.Text}
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

-- | This value is disallowed.
pattern NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED = NonComplianceDetail_NonComplianceReason "NON_COMPLIANCE_REASON_UNSPECIFIED"

-- | The setting is not supported in the API level of the Android version running on the device.
pattern NonComplianceDetail_NonComplianceReason_APILEVEL :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APILEVEL = NonComplianceDetail_NonComplianceReason "API_LEVEL"

-- | The management mode (profile owner, device owner, etc.) doesn\'t support the setting.
pattern NonComplianceDetail_NonComplianceReason_MANAGEMENTMODE :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_MANAGEMENTMODE = NonComplianceDetail_NonComplianceReason "MANAGEMENT_MODE"

-- | The user has not taken required action to comply with the setting.
pattern NonComplianceDetail_NonComplianceReason_USERACTION :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_USERACTION = NonComplianceDetail_NonComplianceReason "USER_ACTION"

-- | The setting has an invalid value.
pattern NonComplianceDetail_NonComplianceReason_INVALIDVALUE :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_INVALIDVALUE = NonComplianceDetail_NonComplianceReason "INVALID_VALUE"

-- | The app required to implement the policy is not installed.
pattern NonComplianceDetail_NonComplianceReason_APPNOTINSTALLED :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APPNOTINSTALLED = NonComplianceDetail_NonComplianceReason "APP_NOT_INSTALLED"

-- | The policy is not supported by the version of Android Device Policy on the device.
pattern NonComplianceDetail_NonComplianceReason_Unsupported :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_Unsupported = NonComplianceDetail_NonComplianceReason "UNSUPPORTED"

-- | A blocked app is installed.
pattern NonComplianceDetail_NonComplianceReason_APPINSTALLED :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APPINSTALLED = NonComplianceDetail_NonComplianceReason "APP_INSTALLED"

-- | The setting hasn\'t been applied at the time of the report, but is expected to be applied shortly.
pattern NonComplianceDetail_NonComplianceReason_Pending :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_Pending = NonComplianceDetail_NonComplianceReason "PENDING"

-- | The setting can\'t be applied to the app because the app doesn\'t support it, for example because its target SDK version is not high enough.
pattern NonComplianceDetail_NonComplianceReason_APPINCOMPATIBLE :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APPINCOMPATIBLE = NonComplianceDetail_NonComplianceReason "APP_INCOMPATIBLE"

-- | The app is installed, but it hasn\'t been updated to the minimum version code specified by policy.
pattern NonComplianceDetail_NonComplianceReason_APPNOTUPDATED :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APPNOTUPDATED = NonComplianceDetail_NonComplianceReason "APP_NOT_UPDATED"

{-# COMPLETE
  NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED,
  NonComplianceDetail_NonComplianceReason_APILEVEL,
  NonComplianceDetail_NonComplianceReason_MANAGEMENTMODE,
  NonComplianceDetail_NonComplianceReason_USERACTION,
  NonComplianceDetail_NonComplianceReason_INVALIDVALUE,
  NonComplianceDetail_NonComplianceReason_APPNOTINSTALLED,
  NonComplianceDetail_NonComplianceReason_Unsupported,
  NonComplianceDetail_NonComplianceReason_APPINSTALLED,
  NonComplianceDetail_NonComplianceReason_Pending,
  NonComplianceDetail_NonComplianceReason_APPINCOMPATIBLE,
  NonComplianceDetail_NonComplianceReason_APPNOTUPDATED,
  NonComplianceDetail_NonComplianceReason
  #-}

-- | The reason the device is not in compliance with the setting. If not set, then this condition matches any reason.
newtype NonComplianceDetailCondition_NonComplianceReason = NonComplianceDetailCondition_NonComplianceReason {fromNonComplianceDetailCondition_NonComplianceReason :: Core.Text}
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

-- | This value is disallowed.
pattern NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED = NonComplianceDetailCondition_NonComplianceReason "NON_COMPLIANCE_REASON_UNSPECIFIED"

-- | The setting is not supported in the API level of the Android version running on the device.
pattern NonComplianceDetailCondition_NonComplianceReason_APILEVEL :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APILEVEL = NonComplianceDetailCondition_NonComplianceReason "API_LEVEL"

-- | The management mode (profile owner, device owner, etc.) doesn\'t support the setting.
pattern NonComplianceDetailCondition_NonComplianceReason_MANAGEMENTMODE :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_MANAGEMENTMODE = NonComplianceDetailCondition_NonComplianceReason "MANAGEMENT_MODE"

-- | The user has not taken required action to comply with the setting.
pattern NonComplianceDetailCondition_NonComplianceReason_USERACTION :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_USERACTION = NonComplianceDetailCondition_NonComplianceReason "USER_ACTION"

-- | The setting has an invalid value.
pattern NonComplianceDetailCondition_NonComplianceReason_INVALIDVALUE :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_INVALIDVALUE = NonComplianceDetailCondition_NonComplianceReason "INVALID_VALUE"

-- | The app required to implement the policy is not installed.
pattern NonComplianceDetailCondition_NonComplianceReason_APPNOTINSTALLED :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APPNOTINSTALLED = NonComplianceDetailCondition_NonComplianceReason "APP_NOT_INSTALLED"

-- | The policy is not supported by the version of Android Device Policy on the device.
pattern NonComplianceDetailCondition_NonComplianceReason_Unsupported :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_Unsupported = NonComplianceDetailCondition_NonComplianceReason "UNSUPPORTED"

-- | A blocked app is installed.
pattern NonComplianceDetailCondition_NonComplianceReason_APPINSTALLED :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APPINSTALLED = NonComplianceDetailCondition_NonComplianceReason "APP_INSTALLED"

-- | The setting hasn\'t been applied at the time of the report, but is expected to be applied shortly.
pattern NonComplianceDetailCondition_NonComplianceReason_Pending :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_Pending = NonComplianceDetailCondition_NonComplianceReason "PENDING"

-- | The setting can\'t be applied to the app because the app doesn\'t support it, for example because its target SDK version is not high enough.
pattern NonComplianceDetailCondition_NonComplianceReason_APPINCOMPATIBLE :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APPINCOMPATIBLE = NonComplianceDetailCondition_NonComplianceReason "APP_INCOMPATIBLE"

-- | The app is installed, but it hasn\'t been updated to the minimum version code specified by policy.
pattern NonComplianceDetailCondition_NonComplianceReason_APPNOTUPDATED :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APPNOTUPDATED = NonComplianceDetailCondition_NonComplianceReason "APP_NOT_UPDATED"

{-# COMPLETE
  NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED,
  NonComplianceDetailCondition_NonComplianceReason_APILEVEL,
  NonComplianceDetailCondition_NonComplianceReason_MANAGEMENTMODE,
  NonComplianceDetailCondition_NonComplianceReason_USERACTION,
  NonComplianceDetailCondition_NonComplianceReason_INVALIDVALUE,
  NonComplianceDetailCondition_NonComplianceReason_APPNOTINSTALLED,
  NonComplianceDetailCondition_NonComplianceReason_Unsupported,
  NonComplianceDetailCondition_NonComplianceReason_APPINSTALLED,
  NonComplianceDetailCondition_NonComplianceReason_Pending,
  NonComplianceDetailCondition_NonComplianceReason_APPINCOMPATIBLE,
  NonComplianceDetailCondition_NonComplianceReason_APPNOTUPDATED,
  NonComplianceDetailCondition_NonComplianceReason
  #-}

-- | The required password quality.
newtype PasswordRequirements_PasswordQuality = PasswordRequirements_PasswordQuality {fromPasswordRequirements_PasswordQuality :: Core.Text}
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

-- | There are no password requirements.
pattern PasswordRequirements_PasswordQuality_PASSWORDQUALITYUNSPECIFIED :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_PASSWORDQUALITYUNSPECIFIED = PasswordRequirements_PasswordQuality "PASSWORD_QUALITY_UNSPECIFIED"

-- | The device must be secured with a low-security biometric recognition technology, at minimum. This includes technologies that can recognize the identity of an individual that are roughly equivalent to a 3-digit PIN (false detection is less than 1 in 1,000).This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_LOW for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_BIOMETRICWEAK :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_BIOMETRICWEAK = PasswordRequirements_PasswordQuality "BIOMETRIC_WEAK"

-- | A password is required, but there are no restrictions on what the password must contain.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_LOW for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_Something :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_Something = PasswordRequirements_PasswordQuality "SOMETHING"

-- | The password must contain numeric characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_Numeric :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_Numeric = PasswordRequirements_PasswordQuality "NUMERIC"

-- | The password must contain numeric characters with no repeating (4444) or ordered (1234, 4321, 2468) sequences.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_NUMERICCOMPLEX :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_NUMERICCOMPLEX = PasswordRequirements_PasswordQuality "NUMERIC_COMPLEX"

-- | The password must contain alphabetic (or symbol) characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_Alphabetic :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_Alphabetic = PasswordRequirements_PasswordQuality "ALPHABETIC"

-- | The password must contain both numeric and alphabetic (or symbol) characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_Alphanumeric :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_Alphanumeric = PasswordRequirements_PasswordQuality "ALPHANUMERIC"

-- | The password must meet the minimum requirements specified in passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols, etc. For example, if passwordMinimumSymbols is 2, the password must contain at least two symbols.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. In this case, the requirements in passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols, etc are not applied. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_Complex :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_Complex = PasswordRequirements_PasswordQuality "COMPLEX"

-- | Define the low password complexity band as: pattern PIN with repeating (4444) or ordered (1234, 4321, 2468) sequencesThis sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_COMPLEXITYLOW :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_COMPLEXITYLOW = PasswordRequirements_PasswordQuality "COMPLEXITY_LOW"

-- | Define the medium password complexity band as: PIN with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length at least 4 alphabetic, length at least 4 alphanumeric, length at least 4This sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_COMPLEXITYMEDIUM :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_COMPLEXITYMEDIUM = PasswordRequirements_PasswordQuality "COMPLEXITY_MEDIUM"

-- | Define the high password complexity band as:On Android 12 and above: PIN with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length at least 8 alphabetic, length at least 6 alphanumeric, length at least 6This sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.
pattern PasswordRequirements_PasswordQuality_COMPLEXITYHIGH :: PasswordRequirements_PasswordQuality
pattern PasswordRequirements_PasswordQuality_COMPLEXITYHIGH = PasswordRequirements_PasswordQuality "COMPLEXITY_HIGH"

{-# COMPLETE
  PasswordRequirements_PasswordQuality_PASSWORDQUALITYUNSPECIFIED,
  PasswordRequirements_PasswordQuality_BIOMETRICWEAK,
  PasswordRequirements_PasswordQuality_Something,
  PasswordRequirements_PasswordQuality_Numeric,
  PasswordRequirements_PasswordQuality_NUMERICCOMPLEX,
  PasswordRequirements_PasswordQuality_Alphabetic,
  PasswordRequirements_PasswordQuality_Alphanumeric,
  PasswordRequirements_PasswordQuality_Complex,
  PasswordRequirements_PasswordQuality_COMPLEXITYLOW,
  PasswordRequirements_PasswordQuality_COMPLEXITYMEDIUM,
  PasswordRequirements_PasswordQuality_COMPLEXITYHIGH,
  PasswordRequirements_PasswordQuality
  #-}

-- | The scope that the password requirement applies to.
newtype PasswordRequirements_PasswordScope = PasswordRequirements_PasswordScope {fromPasswordRequirements_PasswordScope :: Core.Text}
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

-- | The scope is unspecified. The password requirements are applied to the work profile for work profile devices and the whole device for fully managed or dedicated devices.
pattern PasswordRequirements_PasswordScope_SCOPEUNSPECIFIED :: PasswordRequirements_PasswordScope
pattern PasswordRequirements_PasswordScope_SCOPEUNSPECIFIED = PasswordRequirements_PasswordScope "SCOPE_UNSPECIFIED"

-- | The password requirements are only applied to the device.
pattern PasswordRequirements_PasswordScope_SCOPEDEVICE :: PasswordRequirements_PasswordScope
pattern PasswordRequirements_PasswordScope_SCOPEDEVICE = PasswordRequirements_PasswordScope "SCOPE_DEVICE"

-- | The password requirements are only applied to the work profile.
pattern PasswordRequirements_PasswordScope_SCOPEPROFILE :: PasswordRequirements_PasswordScope
pattern PasswordRequirements_PasswordScope_SCOPEPROFILE = PasswordRequirements_PasswordScope "SCOPE_PROFILE"

{-# COMPLETE
  PasswordRequirements_PasswordScope_SCOPEUNSPECIFIED,
  PasswordRequirements_PasswordScope_SCOPEDEVICE,
  PasswordRequirements_PasswordScope_SCOPEPROFILE,
  PasswordRequirements_PasswordScope
  #-}

-- | The length of time after a device or work profile is unlocked using a strong form of authentication (password, PIN, pattern) that it can be unlocked using any other authentication method (e.g. fingerprint, trust agents, face). After the specified time period elapses, only strong forms of authentication can be used to unlock the device or work profile.
newtype PasswordRequirements_RequirePasswordUnlock = PasswordRequirements_RequirePasswordUnlock {fromPasswordRequirements_RequirePasswordUnlock :: Core.Text}
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

-- | Unspecified. Defaults to USE/DEFAULT/DEVICE_TIMEOUT.
pattern PasswordRequirements_RequirePasswordUnlock_REQUIREPASSWORDUNLOCKUNSPECIFIED :: PasswordRequirements_RequirePasswordUnlock
pattern PasswordRequirements_RequirePasswordUnlock_REQUIREPASSWORDUNLOCKUNSPECIFIED = PasswordRequirements_RequirePasswordUnlock "REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED"

-- | The timeout period is set to the device’s default.
pattern PasswordRequirements_RequirePasswordUnlock_USEDEFAULTDEVICETIMEOUT :: PasswordRequirements_RequirePasswordUnlock
pattern PasswordRequirements_RequirePasswordUnlock_USEDEFAULTDEVICETIMEOUT = PasswordRequirements_RequirePasswordUnlock "USE_DEFAULT_DEVICE_TIMEOUT"

-- | The timeout period is set to 24 hours.
pattern PasswordRequirements_RequirePasswordUnlock_REQUIREEVERYDAY :: PasswordRequirements_RequirePasswordUnlock
pattern PasswordRequirements_RequirePasswordUnlock_REQUIREEVERYDAY = PasswordRequirements_RequirePasswordUnlock "REQUIRE_EVERY_DAY"

{-# COMPLETE
  PasswordRequirements_RequirePasswordUnlock_REQUIREPASSWORDUNLOCKUNSPECIFIED,
  PasswordRequirements_RequirePasswordUnlock_USEDEFAULTDEVICETIMEOUT,
  PasswordRequirements_RequirePasswordUnlock_REQUIREEVERYDAY,
  PasswordRequirements_RequirePasswordUnlock
  #-}

-- | Controls whether a unified lock is allowed for the device and the work profile, on devices running Android 9 and above with a work profile. This has no effect on other devices. This can be set only if password/scope is set to SCOPE/PROFILE, the policy will be rejected otherwise. If user has not set a separate work lock and this field is set to REQUIRE/SEPARATE/WORK/LOCK, a NonComplianceDetail is reported with nonComplianceReason set to USER/ACTION.
newtype PasswordRequirements_UnifiedLockSettings = PasswordRequirements_UnifiedLockSettings {fromPasswordRequirements_UnifiedLockSettings :: Core.Text}
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

-- | Unspecified. Defaults to ALLOW/UNIFIED/WORK/AND/PERSONAL_LOCK.
pattern PasswordRequirements_UnifiedLockSettings_UNIFIEDLOCKSETTINGSUNSPECIFIED :: PasswordRequirements_UnifiedLockSettings
pattern PasswordRequirements_UnifiedLockSettings_UNIFIEDLOCKSETTINGSUNSPECIFIED = PasswordRequirements_UnifiedLockSettings "UNIFIED_LOCK_SETTINGS_UNSPECIFIED"

-- | A common lock for the device and the work profile is allowed.
pattern PasswordRequirements_UnifiedLockSettings_ALLOWUNIFIEDWORKANDPERSONALLOCK :: PasswordRequirements_UnifiedLockSettings
pattern PasswordRequirements_UnifiedLockSettings_ALLOWUNIFIEDWORKANDPERSONALLOCK = PasswordRequirements_UnifiedLockSettings "ALLOW_UNIFIED_WORK_AND_PERSONAL_LOCK"

-- | A separate lock for the work profile is required.
pattern PasswordRequirements_UnifiedLockSettings_REQUIRESEPARATEWORKLOCK :: PasswordRequirements_UnifiedLockSettings
pattern PasswordRequirements_UnifiedLockSettings_REQUIRESEPARATEWORKLOCK = PasswordRequirements_UnifiedLockSettings "REQUIRE_SEPARATE_WORK_LOCK"

{-# COMPLETE
  PasswordRequirements_UnifiedLockSettings_UNIFIEDLOCKSETTINGSUNSPECIFIED,
  PasswordRequirements_UnifiedLockSettings_ALLOWUNIFIEDWORKANDPERSONALLOCK,
  PasswordRequirements_UnifiedLockSettings_REQUIRESEPARATEWORKLOCK,
  PasswordRequirements_UnifiedLockSettings
  #-}

-- | The policy for granting the permission.
newtype PermissionGrant_Policy = PermissionGrant_Policy {fromPermissionGrant_Policy :: Core.Text}
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

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED :: PermissionGrant_Policy
pattern PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED = PermissionGrant_Policy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern PermissionGrant_Policy_Prompt :: PermissionGrant_Policy
pattern PermissionGrant_Policy_Prompt = PermissionGrant_Policy "PROMPT"

-- | Automatically grant a permission.
pattern PermissionGrant_Policy_Grant :: PermissionGrant_Policy
pattern PermissionGrant_Policy_Grant = PermissionGrant_Policy "GRANT"

-- | Automatically deny a permission.
pattern PermissionGrant_Policy_Deny :: PermissionGrant_Policy
pattern PermissionGrant_Policy_Deny = PermissionGrant_Policy "DENY"

{-# COMPLETE
  PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED,
  PermissionGrant_Policy_Prompt,
  PermissionGrant_Policy_Grant,
  PermissionGrant_Policy_Deny,
  PermissionGrant_Policy
  #-}

-- | The type of installation to perform.
newtype PersonalApplicationPolicy_InstallType = PersonalApplicationPolicy_InstallType {fromPersonalApplicationPolicy_InstallType :: Core.Text}
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

-- | Unspecified. Defaults to AVAILABLE.
pattern PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED = PersonalApplicationPolicy_InstallType "INSTALL_TYPE_UNSPECIFIED"

-- | The app is blocked and can\'t be installed in the personal profile.
pattern PersonalApplicationPolicy_InstallType_Blocked :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_Blocked = PersonalApplicationPolicy_InstallType "BLOCKED"

-- | The app is available to install in the personal profile.
pattern PersonalApplicationPolicy_InstallType_Available :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_Available = PersonalApplicationPolicy_InstallType "AVAILABLE"

{-# COMPLETE
  PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
  PersonalApplicationPolicy_InstallType_Blocked,
  PersonalApplicationPolicy_InstallType_Available,
  PersonalApplicationPolicy_InstallType
  #-}

-- | Used together with personalApplications to control how apps in the personal profile are allowed or blocked.
newtype PersonalUsagePolicies_PersonalPlayStoreMode = PersonalUsagePolicies_PersonalPlayStoreMode {fromPersonalUsagePolicies_PersonalPlayStoreMode :: Core.Text}
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

-- | Unspecified. Defaults to BLOCKLIST.
pattern PersonalUsagePolicies_PersonalPlayStoreMode_PLAYSTOREMODEUNSPECIFIED :: PersonalUsagePolicies_PersonalPlayStoreMode
pattern PersonalUsagePolicies_PersonalPlayStoreMode_PLAYSTOREMODEUNSPECIFIED = PersonalUsagePolicies_PersonalPlayStoreMode "PLAY_STORE_MODE_UNSPECIFIED"

-- | All Play Store apps are available for installation in the personal profile, except those whose installType is BLOCKED in personalApplications.
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Blacklist :: PersonalUsagePolicies_PersonalPlayStoreMode
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Blacklist = PersonalUsagePolicies_PersonalPlayStoreMode "BLACKLIST"

-- | All Play Store apps are available for installation in the personal profile, except those whose installType is BLOCKED in personalApplications.
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Blocklist :: PersonalUsagePolicies_PersonalPlayStoreMode
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Blocklist = PersonalUsagePolicies_PersonalPlayStoreMode "BLOCKLIST"

-- | Only apps explicitly specified in personalApplications with installType set to AVAILABLE are allowed to be installed in the personal profile.
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Allowlist :: PersonalUsagePolicies_PersonalPlayStoreMode
pattern PersonalUsagePolicies_PersonalPlayStoreMode_Allowlist = PersonalUsagePolicies_PersonalPlayStoreMode "ALLOWLIST"

{-# COMPLETE
  PersonalUsagePolicies_PersonalPlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
  PersonalUsagePolicies_PersonalPlayStoreMode_Blacklist,
  PersonalUsagePolicies_PersonalPlayStoreMode_Blocklist,
  PersonalUsagePolicies_PersonalPlayStoreMode_Allowlist,
  PersonalUsagePolicies_PersonalPlayStoreMode
  #-}

newtype Policy_AndroidDevicePolicyTracksItem = Policy_AndroidDevicePolicyTracksItem {fromPolicy_AndroidDevicePolicyTracksItem :: Core.Text}
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

-- | This value is ignored.
pattern Policy_AndroidDevicePolicyTracksItem_APPTRACKUNSPECIFIED :: Policy_AndroidDevicePolicyTracksItem
pattern Policy_AndroidDevicePolicyTracksItem_APPTRACKUNSPECIFIED = Policy_AndroidDevicePolicyTracksItem "APP_TRACK_UNSPECIFIED"

-- | The production track, which provides the latest stable release.
pattern Policy_AndroidDevicePolicyTracksItem_Production :: Policy_AndroidDevicePolicyTracksItem
pattern Policy_AndroidDevicePolicyTracksItem_Production = Policy_AndroidDevicePolicyTracksItem "PRODUCTION"

-- | The beta track, which provides the latest beta release.
pattern Policy_AndroidDevicePolicyTracksItem_Beta :: Policy_AndroidDevicePolicyTracksItem
pattern Policy_AndroidDevicePolicyTracksItem_Beta = Policy_AndroidDevicePolicyTracksItem "BETA"

{-# COMPLETE
  Policy_AndroidDevicePolicyTracksItem_APPTRACKUNSPECIFIED,
  Policy_AndroidDevicePolicyTracksItem_Production,
  Policy_AndroidDevicePolicyTracksItem_Beta,
  Policy_AndroidDevicePolicyTracksItem
  #-}

-- | Deprecated. Use autoUpdateMode instead.When autoUpdateMode is set to AUTO/UPDATE/POSTPONED or AUTO/UPDATE/HIGH_PRIORITY, this field has no effect.The app auto update policy, which controls when automatic app updates can be applied.
newtype Policy_AppAutoUpdatePolicy = Policy_AppAutoUpdatePolicy {fromPolicy_AppAutoUpdatePolicy :: Core.Text}
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

-- | The auto-update policy is not set. Equivalent to CHOICE/TO/THE_USER.
pattern Policy_AppAutoUpdatePolicy_APPAUTOUPDATEPOLICYUNSPECIFIED :: Policy_AppAutoUpdatePolicy
pattern Policy_AppAutoUpdatePolicy_APPAUTOUPDATEPOLICYUNSPECIFIED = Policy_AppAutoUpdatePolicy "APP_AUTO_UPDATE_POLICY_UNSPECIFIED"

-- | The user can control auto-updates.
pattern Policy_AppAutoUpdatePolicy_CHOICETOTHEUSER :: Policy_AppAutoUpdatePolicy
pattern Policy_AppAutoUpdatePolicy_CHOICETOTHEUSER = Policy_AppAutoUpdatePolicy "CHOICE_TO_THE_USER"

-- | Apps are never auto-updated.
pattern Policy_AppAutoUpdatePolicy_Never :: Policy_AppAutoUpdatePolicy
pattern Policy_AppAutoUpdatePolicy_Never = Policy_AppAutoUpdatePolicy "NEVER"

-- | Apps are auto-updated over Wi-Fi only.
pattern Policy_AppAutoUpdatePolicy_WIFIONLY :: Policy_AppAutoUpdatePolicy
pattern Policy_AppAutoUpdatePolicy_WIFIONLY = Policy_AppAutoUpdatePolicy "WIFI_ONLY"

-- | Apps are auto-updated at any time. Data charges may apply.
pattern Policy_AppAutoUpdatePolicy_Always :: Policy_AppAutoUpdatePolicy
pattern Policy_AppAutoUpdatePolicy_Always = Policy_AppAutoUpdatePolicy "ALWAYS"

{-# COMPLETE
  Policy_AppAutoUpdatePolicy_APPAUTOUPDATEPOLICYUNSPECIFIED,
  Policy_AppAutoUpdatePolicy_CHOICETOTHEUSER,
  Policy_AppAutoUpdatePolicy_Never,
  Policy_AppAutoUpdatePolicy_WIFIONLY,
  Policy_AppAutoUpdatePolicy_Always,
  Policy_AppAutoUpdatePolicy
  #-}

-- | Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, then autoTimeRequired is ignored.
newtype Policy_AutoDateAndTimeZone = Policy_AutoDateAndTimeZone {fromPolicy_AutoDateAndTimeZone :: Core.Text}
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

-- | Unspecified. Defaults to AUTO/DATE/AND/TIME/ZONE/USER/CHOICE.
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUNSPECIFIED :: Policy_AutoDateAndTimeZone
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUNSPECIFIED = Policy_AutoDateAndTimeZone "AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED"

-- | Auto date, time, and time zone are left to user\'s choice.
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUSERCHOICE :: Policy_AutoDateAndTimeZone
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUSERCHOICE = Policy_AutoDateAndTimeZone "AUTO_DATE_AND_TIME_ZONE_USER_CHOICE"

-- | Enforce auto date, time, and time zone on the device.
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEENFORCED :: Policy_AutoDateAndTimeZone
pattern Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEENFORCED = Policy_AutoDateAndTimeZone "AUTO_DATE_AND_TIME_ZONE_ENFORCED"

{-# COMPLETE
  Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUNSPECIFIED,
  Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUSERCHOICE,
  Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEENFORCED,
  Policy_AutoDateAndTimeZone
  #-}

-- | Controls the use of the camera and whether the user has access to the camera access toggle.
newtype Policy_CameraAccess = Policy_CameraAccess {fromPolicy_CameraAccess :: Core.Text}
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

-- | If camera/disabled is true, this is equivalent to CAMERA/ACCESS/DISABLED. Otherwise, this is equivalent to CAMERA/ACCESS/USER/CHOICE.
pattern Policy_CameraAccess_CAMERAACCESSUNSPECIFIED :: Policy_CameraAccess
pattern Policy_CameraAccess_CAMERAACCESSUNSPECIFIED = Policy_CameraAccess "CAMERA_ACCESS_UNSPECIFIED"

-- | The field camera_disabled is ignored. This is the default device behaviour: all cameras on the device are available. On Android 12 and above, the user can use the camera access toggle.
pattern Policy_CameraAccess_CAMERAACCESSUSERCHOICE :: Policy_CameraAccess
pattern Policy_CameraAccess_CAMERAACCESSUSERCHOICE = Policy_CameraAccess "CAMERA_ACCESS_USER_CHOICE"

-- | The field camera_disabled is ignored. All cameras on the device are disabled (for fully managed devices, this applies device-wide and for work profiles this applies only to the work profile).There are no explicit restrictions placed on the camera access toggle on Android 12 and above: on fully managed devices, the camera access toggle has no effect as all cameras are disabled. On devices with a work profile, this toggle has no effect on apps in the work profile, but it affects apps outside the work profile.
pattern Policy_CameraAccess_CAMERAACCESSDISABLED :: Policy_CameraAccess
pattern Policy_CameraAccess_CAMERAACCESSDISABLED = Policy_CameraAccess "CAMERA_ACCESS_DISABLED"

-- | The field camera/disabled is ignored. All cameras on the device are available. On fully managed devices running Android 12 and above, the user is unable to use the camera access toggle. On devices which are not fully managed or which run Android 11 or below, this is equivalent to CAMERA/ACCESS/USER/CHOICE.
pattern Policy_CameraAccess_CAMERAACCESSENFORCED :: Policy_CameraAccess
pattern Policy_CameraAccess_CAMERAACCESSENFORCED = Policy_CameraAccess "CAMERA_ACCESS_ENFORCED"

{-# COMPLETE
  Policy_CameraAccess_CAMERAACCESSUNSPECIFIED,
  Policy_CameraAccess_CAMERAACCESSUSERCHOICE,
  Policy_CameraAccess_CAMERAACCESSDISABLED,
  Policy_CameraAccess_CAMERAACCESSENFORCED,
  Policy_CameraAccess
  #-}

-- | The default permission policy for runtime permission requests.
newtype Policy_DefaultPermissionPolicy = Policy_DefaultPermissionPolicy {fromPolicy_DefaultPermissionPolicy :: Core.Text}
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

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED = Policy_DefaultPermissionPolicy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern Policy_DefaultPermissionPolicy_Prompt :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_Prompt = Policy_DefaultPermissionPolicy "PROMPT"

-- | Automatically grant a permission.
pattern Policy_DefaultPermissionPolicy_Grant :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_Grant = Policy_DefaultPermissionPolicy "GRANT"

-- | Automatically deny a permission.
pattern Policy_DefaultPermissionPolicy_Deny :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_Deny = Policy_DefaultPermissionPolicy "DENY"

{-# COMPLETE
  Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
  Policy_DefaultPermissionPolicy_Prompt,
  Policy_DefaultPermissionPolicy_Grant,
  Policy_DefaultPermissionPolicy_Deny,
  Policy_DefaultPermissionPolicy
  #-}

-- | Whether encryption is enabled
newtype Policy_EncryptionPolicy = Policy_EncryptionPolicy {fromPolicy_EncryptionPolicy :: Core.Text}
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

-- | This value is ignored, i.e. no encryption required
pattern Policy_EncryptionPolicy_ENCRYPTIONPOLICYUNSPECIFIED :: Policy_EncryptionPolicy
pattern Policy_EncryptionPolicy_ENCRYPTIONPOLICYUNSPECIFIED = Policy_EncryptionPolicy "ENCRYPTION_POLICY_UNSPECIFIED"

-- | Encryption required but no password required to boot
pattern Policy_EncryptionPolicy_ENABLEDWITHOUTPASSWORD :: Policy_EncryptionPolicy
pattern Policy_EncryptionPolicy_ENABLEDWITHOUTPASSWORD = Policy_EncryptionPolicy "ENABLED_WITHOUT_PASSWORD"

-- | Encryption required with password required to boot
pattern Policy_EncryptionPolicy_ENABLEDWITHPASSWORD :: Policy_EncryptionPolicy
pattern Policy_EncryptionPolicy_ENABLEDWITHPASSWORD = Policy_EncryptionPolicy "ENABLED_WITH_PASSWORD"

{-# COMPLETE
  Policy_EncryptionPolicy_ENCRYPTIONPOLICYUNSPECIFIED,
  Policy_EncryptionPolicy_ENABLEDWITHOUTPASSWORD,
  Policy_EncryptionPolicy_ENABLEDWITHPASSWORD,
  Policy_EncryptionPolicy
  #-}

newtype Policy_KeyguardDisabledFeaturesItem = Policy_KeyguardDisabledFeaturesItem {fromPolicy_KeyguardDisabledFeaturesItem :: Core.Text}
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

-- | This value is ignored.
pattern Policy_KeyguardDisabledFeaturesItem_KEYGUARDDISABLEDFEATUREUNSPECIFIED :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_KEYGUARDDISABLEDFEATUREUNSPECIFIED = Policy_KeyguardDisabledFeaturesItem "KEYGUARD_DISABLED_FEATURE_UNSPECIFIED"

-- | Disable the camera on secure keyguard screens (e.g. PIN).
pattern Policy_KeyguardDisabledFeaturesItem_Camera :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Camera = Policy_KeyguardDisabledFeaturesItem "CAMERA"

-- | Disable showing all notifications on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_Notifications :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Notifications = Policy_KeyguardDisabledFeaturesItem "NOTIFICATIONS"

-- | Disable unredacted notifications on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_UNREDACTEDNOTIFICATIONS :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_UNREDACTEDNOTIFICATIONS = Policy_KeyguardDisabledFeaturesItem "UNREDACTED_NOTIFICATIONS"

-- | Ignore trust agent state on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_TRUSTAGENTS :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_TRUSTAGENTS = Policy_KeyguardDisabledFeaturesItem "TRUST_AGENTS"

-- | Disable fingerprint sensor on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_DISABLEFINGERPRINT :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_DISABLEFINGERPRINT = Policy_KeyguardDisabledFeaturesItem "DISABLE_FINGERPRINT"

-- | On devices running Android 6 and below, disables text entry into notifications on secure keyguard screens. Has no effect on Android 7 and above.
pattern Policy_KeyguardDisabledFeaturesItem_DISABLEREMOTEINPUT :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_DISABLEREMOTEINPUT = Policy_KeyguardDisabledFeaturesItem "DISABLE_REMOTE_INPUT"

-- | Disable face authentication on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_Face :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Face = Policy_KeyguardDisabledFeaturesItem "FACE"

-- | Disable iris authentication on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_Iris :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Iris = Policy_KeyguardDisabledFeaturesItem "IRIS"

-- | Disable all biometric authentication on secure keyguard screens.
pattern Policy_KeyguardDisabledFeaturesItem_Biometrics :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Biometrics = Policy_KeyguardDisabledFeaturesItem "BIOMETRICS"

-- | Disable all current and future keyguard customizations.
pattern Policy_KeyguardDisabledFeaturesItem_ALLFEATURES :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_ALLFEATURES = Policy_KeyguardDisabledFeaturesItem "ALL_FEATURES"

{-# COMPLETE
  Policy_KeyguardDisabledFeaturesItem_KEYGUARDDISABLEDFEATUREUNSPECIFIED,
  Policy_KeyguardDisabledFeaturesItem_Camera,
  Policy_KeyguardDisabledFeaturesItem_Notifications,
  Policy_KeyguardDisabledFeaturesItem_UNREDACTEDNOTIFICATIONS,
  Policy_KeyguardDisabledFeaturesItem_TRUSTAGENTS,
  Policy_KeyguardDisabledFeaturesItem_DISABLEFINGERPRINT,
  Policy_KeyguardDisabledFeaturesItem_DISABLEREMOTEINPUT,
  Policy_KeyguardDisabledFeaturesItem_Face,
  Policy_KeyguardDisabledFeaturesItem_Iris,
  Policy_KeyguardDisabledFeaturesItem_Biometrics,
  Policy_KeyguardDisabledFeaturesItem_ALLFEATURES,
  Policy_KeyguardDisabledFeaturesItem
  #-}

-- | The degree of location detection enabled.
newtype Policy_LocationMode = Policy_LocationMode {fromPolicy_LocationMode :: Core.Text}
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

-- | Defaults to LOCATION/USER/CHOICE.
pattern Policy_LocationMode_LOCATIONMODEUNSPECIFIED :: Policy_LocationMode
pattern Policy_LocationMode_LOCATIONMODEUNSPECIFIED = Policy_LocationMode "LOCATION_MODE_UNSPECIFIED"

-- | On Android 8 and below, all location detection methods are enabled, including GPS, networks, and other sensors. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.
pattern Policy_LocationMode_HIGHACCURACY :: Policy_LocationMode
pattern Policy_LocationMode_HIGHACCURACY = Policy_LocationMode "HIGH_ACCURACY"

-- | On Android 8 and below, only GPS and other sensors are enabled. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.
pattern Policy_LocationMode_SENSORSONLY :: Policy_LocationMode
pattern Policy_LocationMode_SENSORSONLY = Policy_LocationMode "SENSORS_ONLY"

-- | On Android 8 and below, only the network location provider is enabled. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.
pattern Policy_LocationMode_BATTERYSAVING :: Policy_LocationMode
pattern Policy_LocationMode_BATTERYSAVING = Policy_LocationMode "BATTERY_SAVING"

-- | On Android 8 and below, location setting and accuracy are disabled. On Android 9 and above, this is equivalent to LOCATION_DISABLED.
pattern Policy_LocationMode_Off :: Policy_LocationMode
pattern Policy_LocationMode_Off = Policy_LocationMode "OFF"

-- | Location setting is not restricted on the device. No specific behavior is set or enforced.
pattern Policy_LocationMode_LOCATIONUSERCHOICE :: Policy_LocationMode
pattern Policy_LocationMode_LOCATIONUSERCHOICE = Policy_LocationMode "LOCATION_USER_CHOICE"

-- | Enable location setting on the device.
pattern Policy_LocationMode_LOCATIONENFORCED :: Policy_LocationMode
pattern Policy_LocationMode_LOCATIONENFORCED = Policy_LocationMode "LOCATION_ENFORCED"

-- | Disable location setting on the device.
pattern Policy_LocationMode_LOCATIONDISABLED :: Policy_LocationMode
pattern Policy_LocationMode_LOCATIONDISABLED = Policy_LocationMode "LOCATION_DISABLED"

{-# COMPLETE
  Policy_LocationMode_LOCATIONMODEUNSPECIFIED,
  Policy_LocationMode_HIGHACCURACY,
  Policy_LocationMode_SENSORSONLY,
  Policy_LocationMode_BATTERYSAVING,
  Policy_LocationMode_Off,
  Policy_LocationMode_LOCATIONUSERCHOICE,
  Policy_LocationMode_LOCATIONENFORCED,
  Policy_LocationMode_LOCATIONDISABLED,
  Policy_LocationMode
  #-}

-- | Controls the use of the microphone and whether the user has access to the microphone access toggle. This applies only on fully managed devices.
newtype Policy_MicrophoneAccess = Policy_MicrophoneAccess {fromPolicy_MicrophoneAccess :: Core.Text}
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

-- | If unmute/microphone/disabled is true, this is equivalent to MICROPHONE/ACCESS/DISABLED. Otherwise, this is equivalent to MICROPHONE/ACCESS/USER_CHOICE.
pattern Policy_MicrophoneAccess_MICROPHONEACCESSUNSPECIFIED :: Policy_MicrophoneAccess
pattern Policy_MicrophoneAccess_MICROPHONEACCESSUNSPECIFIED = Policy_MicrophoneAccess "MICROPHONE_ACCESS_UNSPECIFIED"

-- | The field unmute/microphone/disabled is ignored. This is the default device behaviour: the microphone on the device is available. On Android 12 and above, the user can use the microphone access toggle.
pattern Policy_MicrophoneAccess_MICROPHONEACCESSUSERCHOICE :: Policy_MicrophoneAccess
pattern Policy_MicrophoneAccess_MICROPHONEACCESSUSERCHOICE = Policy_MicrophoneAccess "MICROPHONE_ACCESS_USER_CHOICE"

-- | The field unmute/microphone/disabled is ignored. The microphone on the device is disabled (for fully managed devices, this applies device-wide).The microphone access toggle has no effect as the microphone is disabled.
pattern Policy_MicrophoneAccess_MICROPHONEACCESSDISABLED :: Policy_MicrophoneAccess
pattern Policy_MicrophoneAccess_MICROPHONEACCESSDISABLED = Policy_MicrophoneAccess "MICROPHONE_ACCESS_DISABLED"

-- | The field unmute/microphone/disabled is ignored. The microphone on the device is available. On devices running Android 12 and above, the user is unable to use the microphone access toggle. On devices which run Android 11 or below, this is equivalent to MICROPHONE/ACCESS/USER_CHOICE.
pattern Policy_MicrophoneAccess_MICROPHONEACCESSENFORCED :: Policy_MicrophoneAccess
pattern Policy_MicrophoneAccess_MICROPHONEACCESSENFORCED = Policy_MicrophoneAccess "MICROPHONE_ACCESS_ENFORCED"

{-# COMPLETE
  Policy_MicrophoneAccess_MICROPHONEACCESSUNSPECIFIED,
  Policy_MicrophoneAccess_MICROPHONEACCESSUSERCHOICE,
  Policy_MicrophoneAccess_MICROPHONEACCESSDISABLED,
  Policy_MicrophoneAccess_MICROPHONEACCESSENFORCED,
  Policy_MicrophoneAccess
  #-}

-- | This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.
newtype Policy_PlayStoreMode = Policy_PlayStoreMode {fromPolicy_PlayStoreMode :: Core.Text}
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

-- | Unspecified. Defaults to WHITELIST.
pattern Policy_PlayStoreMode_PLAYSTOREMODEUNSPECIFIED :: Policy_PlayStoreMode
pattern Policy_PlayStoreMode_PLAYSTOREMODEUNSPECIFIED = Policy_PlayStoreMode "PLAY_STORE_MODE_UNSPECIFIED"

-- | Only apps that are in the policy are available and any app not in the policy will be automatically uninstalled from the device.
pattern Policy_PlayStoreMode_Whitelist :: Policy_PlayStoreMode
pattern Policy_PlayStoreMode_Whitelist = Policy_PlayStoreMode "WHITELIST"

-- | All apps are available and any app that should not be on the device should be explicitly marked as \'BLOCKED\' in the applications policy.
pattern Policy_PlayStoreMode_Blacklist :: Policy_PlayStoreMode
pattern Policy_PlayStoreMode_Blacklist = Policy_PlayStoreMode "BLACKLIST"

{-# COMPLETE
  Policy_PlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
  Policy_PlayStoreMode_Whitelist,
  Policy_PlayStoreMode_Blacklist,
  Policy_PlayStoreMode
  #-}

-- | Controls whether preferential network service is enabled on the work profile. For example, an organization may have an agreement with a carrier that all of the work data from its employees\' devices will be sent via a network service dedicated for enterprise use. An example of a supported preferential network service is the enterprise slice on 5G networks. This has no effect on fully managed devices.
newtype Policy_PreferentialNetworkService = Policy_PreferentialNetworkService {fromPolicy_PreferentialNetworkService :: Core.Text}
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

-- | Unspecified. Defaults to PREFERENTIAL/NETWORK/SERVICES_DISABLED.
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEUNSPECIFIED :: Policy_PreferentialNetworkService
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEUNSPECIFIED = Policy_PreferentialNetworkService "PREFERENTIAL_NETWORK_SERVICE_UNSPECIFIED"

-- | Preferential network service is disabled on the work profile.
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEDISABLED :: Policy_PreferentialNetworkService
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEDISABLED = Policy_PreferentialNetworkService "PREFERENTIAL_NETWORK_SERVICE_DISABLED"

-- | Preferential network service is enabled on the work profile.
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEENABLED :: Policy_PreferentialNetworkService
pattern Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEENABLED = Policy_PreferentialNetworkService "PREFERENTIAL_NETWORK_SERVICE_ENABLED"

{-# COMPLETE
  Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEUNSPECIFIED,
  Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEDISABLED,
  Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEENABLED,
  Policy_PreferentialNetworkService
  #-}

newtype Policy_StayOnPluggedModesItem = Policy_StayOnPluggedModesItem {fromPolicy_StayOnPluggedModesItem :: Core.Text}
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

-- | This value is ignored.
pattern Policy_StayOnPluggedModesItem_BATTERYPLUGGEDMODEUNSPECIFIED :: Policy_StayOnPluggedModesItem
pattern Policy_StayOnPluggedModesItem_BATTERYPLUGGEDMODEUNSPECIFIED = Policy_StayOnPluggedModesItem "BATTERY_PLUGGED_MODE_UNSPECIFIED"

-- | Power source is an AC charger.
pattern Policy_StayOnPluggedModesItem_AC :: Policy_StayOnPluggedModesItem
pattern Policy_StayOnPluggedModesItem_AC = Policy_StayOnPluggedModesItem "AC"

-- | Power source is a USB port.
pattern Policy_StayOnPluggedModesItem_Usb :: Policy_StayOnPluggedModesItem
pattern Policy_StayOnPluggedModesItem_Usb = Policy_StayOnPluggedModesItem "USB"

-- | Power source is wireless.
pattern Policy_StayOnPluggedModesItem_Wireless :: Policy_StayOnPluggedModesItem
pattern Policy_StayOnPluggedModesItem_Wireless = Policy_StayOnPluggedModesItem "WIRELESS"

{-# COMPLETE
  Policy_StayOnPluggedModesItem_BATTERYPLUGGEDMODEUNSPECIFIED,
  Policy_StayOnPluggedModesItem_AC,
  Policy_StayOnPluggedModesItem_Usb,
  Policy_StayOnPluggedModesItem_Wireless,
  Policy_StayOnPluggedModesItem
  #-}

-- | A specific security risk that negatively affects the security posture of the device.
newtype PostureDetail_SecurityRisk = PostureDetail_SecurityRisk {fromPostureDetail_SecurityRisk :: Core.Text}
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

-- | Unspecified.
pattern PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED = PostureDetail_SecurityRisk "SECURITY_RISK_UNSPECIFIED"

-- | SafetyNet detects that the device is running an unknown OS (basicIntegrity check succeeds but ctsProfileMatch fails).
pattern PostureDetail_SecurityRisk_UNKNOWNOS :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_UNKNOWNOS = PostureDetail_SecurityRisk "UNKNOWN_OS"

-- | SafetyNet detects that the device is running a compromised OS (basicIntegrity check fails).
pattern PostureDetail_SecurityRisk_COMPROMISEDOS :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_COMPROMISEDOS = PostureDetail_SecurityRisk "COMPROMISED_OS"

{-# COMPLETE
  PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED,
  PostureDetail_SecurityRisk_UNKNOWNOS,
  PostureDetail_SecurityRisk_COMPROMISEDOS,
  PostureDetail_SecurityRisk
  #-}

-- | Event type.
newtype PowerManagementEvent_EventType = PowerManagementEvent_EventType {fromPowerManagementEvent_EventType :: Core.Text}
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

-- | Unspecified. No events have this type.
pattern PowerManagementEvent_EventType_POWERMANAGEMENTEVENTTYPEUNSPECIFIED :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_POWERMANAGEMENTEVENTTYPEUNSPECIFIED = PowerManagementEvent_EventType "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED"

-- | Battery level was measured.
pattern PowerManagementEvent_EventType_BATTERYLEVELCOLLECTED :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_BATTERYLEVELCOLLECTED = PowerManagementEvent_EventType "BATTERY_LEVEL_COLLECTED"

-- | The device started charging.
pattern PowerManagementEvent_EventType_POWERCONNECTED :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_POWERCONNECTED = PowerManagementEvent_EventType "POWER_CONNECTED"

-- | The device stopped charging.
pattern PowerManagementEvent_EventType_POWERDISCONNECTED :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_POWERDISCONNECTED = PowerManagementEvent_EventType "POWER_DISCONNECTED"

-- | The device entered low-power mode.
pattern PowerManagementEvent_EventType_BATTERYLOW :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_BATTERYLOW = PowerManagementEvent_EventType "BATTERY_LOW"

-- | The device exited low-power mode.
pattern PowerManagementEvent_EventType_BATTERYOKAY :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_BATTERYOKAY = PowerManagementEvent_EventType "BATTERY_OKAY"

-- | The device booted.
pattern PowerManagementEvent_EventType_BOOTCOMPLETED :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_BOOTCOMPLETED = PowerManagementEvent_EventType "BOOT_COMPLETED"

-- | The device shut down.
pattern PowerManagementEvent_EventType_Shutdown :: PowerManagementEvent_EventType
pattern PowerManagementEvent_EventType_Shutdown = PowerManagementEvent_EventType "SHUTDOWN"

{-# COMPLETE
  PowerManagementEvent_EventType_POWERMANAGEMENTEVENTTYPEUNSPECIFIED,
  PowerManagementEvent_EventType_BATTERYLEVELCOLLECTED,
  PowerManagementEvent_EventType_POWERCONNECTED,
  PowerManagementEvent_EventType_POWERDISCONNECTED,
  PowerManagementEvent_EventType_BATTERYLOW,
  PowerManagementEvent_EventType_BATTERYOKAY,
  PowerManagementEvent_EventType_BOOTCOMPLETED,
  PowerManagementEvent_EventType_Shutdown,
  PowerManagementEvent_EventType
  #-}

-- | Device\'s security posture value.
newtype SecurityPosture_DevicePosture = SecurityPosture_DevicePosture {fromSecurityPosture_DevicePosture :: Core.Text}
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

-- | Unspecified. There is no posture detail for this posture value.
pattern SecurityPosture_DevicePosture_POSTUREUNSPECIFIED :: SecurityPosture_DevicePosture
pattern SecurityPosture_DevicePosture_POSTUREUNSPECIFIED = SecurityPosture_DevicePosture "POSTURE_UNSPECIFIED"

-- | This device is secure.
pattern SecurityPosture_DevicePosture_Secure' :: SecurityPosture_DevicePosture
pattern SecurityPosture_DevicePosture_Secure' = SecurityPosture_DevicePosture "SECURE"

-- | This device may be more vulnerable to malicious actors than is recommended for use with corporate data.
pattern SecurityPosture_DevicePosture_ATRISK :: SecurityPosture_DevicePosture
pattern SecurityPosture_DevicePosture_ATRISK = SecurityPosture_DevicePosture "AT_RISK"

-- | This device may be compromised and corporate data may be accessible to unauthorized actors.
pattern SecurityPosture_DevicePosture_POTENTIALLYCOMPROMISED :: SecurityPosture_DevicePosture
pattern SecurityPosture_DevicePosture_POTENTIALLYCOMPROMISED = SecurityPosture_DevicePosture "POTENTIALLY_COMPROMISED"

{-# COMPLETE
  SecurityPosture_DevicePosture_POSTUREUNSPECIFIED,
  SecurityPosture_DevicePosture_Secure',
  SecurityPosture_DevicePosture_ATRISK,
  SecurityPosture_DevicePosture_POTENTIALLYCOMPROMISED,
  SecurityPosture_DevicePosture
  #-}

-- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
newtype SigninDetail_AllowPersonalUsage = SigninDetail_AllowPersonalUsage {fromSigninDetail_AllowPersonalUsage :: Core.Text}
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

-- | Personal usage restriction is not specified
pattern SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED :: SigninDetail_AllowPersonalUsage
pattern SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED = SigninDetail_AllowPersonalUsage "ALLOW_PERSONAL_USAGE_UNSPECIFIED"

-- | Personal usage is allowed
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED :: SigninDetail_AllowPersonalUsage
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED = SigninDetail_AllowPersonalUsage "PERSONAL_USAGE_ALLOWED"

-- | Personal usage is disallowed
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED :: SigninDetail_AllowPersonalUsage
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED = SigninDetail_AllowPersonalUsage "PERSONAL_USAGE_DISALLOWED"

{-# COMPLETE
  SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
  SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED,
  SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
  SigninDetail_AllowPersonalUsage
  #-}

-- | The type of system update to configure.
newtype SystemUpdate_Type = SystemUpdate_Type {fromSystemUpdate_Type :: Core.Text}
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

-- | Follow the default update behavior for the device, which typically requires the user to accept system updates.
pattern SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED :: SystemUpdate_Type
pattern SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED = SystemUpdate_Type "SYSTEM_UPDATE_TYPE_UNSPECIFIED"

-- | Install automatically as soon as an update is available.
pattern SystemUpdate_Type_Automatic :: SystemUpdate_Type
pattern SystemUpdate_Type_Automatic = SystemUpdate_Type "AUTOMATIC"

-- | Install automatically within a daily maintenance window. This also configures Play apps to be updated within the window. This is strongly recommended for kiosk devices because this is the only way apps persistently pinned to the foreground can be updated by Play.If autoUpdateMode is set to AUTO/UPDATE/HIGH_PRIORITY for an app, then the maintenance window is ignored for that app and it is updated as soon as possible even outside of the maintenance window.
pattern SystemUpdate_Type_Windowed :: SystemUpdate_Type
pattern SystemUpdate_Type_Windowed = SystemUpdate_Type "WINDOWED"

-- | Postpone automatic install up to a maximum of 30 days.
pattern SystemUpdate_Type_Postpone :: SystemUpdate_Type
pattern SystemUpdate_Type_Postpone = SystemUpdate_Type "POSTPONE"

{-# COMPLETE
  SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED,
  SystemUpdate_Type_Automatic,
  SystemUpdate_Type_Windowed,
  SystemUpdate_Type_Postpone,
  SystemUpdate_Type
  #-}

-- | The status of an update: whether an update exists and what type it is.
newtype SystemUpdateInfo_UpdateStatus = SystemUpdateInfo_UpdateStatus {fromSystemUpdateInfo_UpdateStatus :: Core.Text}
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

-- | It is unknown whether there is a pending system update. This happens when, for example, the device API level is less than 26, or if the version of Android Device Policy is outdated.
pattern SystemUpdateInfo_UpdateStatus_UPDATESTATUSUNKNOWN :: SystemUpdateInfo_UpdateStatus
pattern SystemUpdateInfo_UpdateStatus_UPDATESTATUSUNKNOWN = SystemUpdateInfo_UpdateStatus "UPDATE_STATUS_UNKNOWN"

-- | There is no pending system update available on the device.
pattern SystemUpdateInfo_UpdateStatus_UPTODATE :: SystemUpdateInfo_UpdateStatus
pattern SystemUpdateInfo_UpdateStatus_UPTODATE = SystemUpdateInfo_UpdateStatus "UP_TO_DATE"

-- | There is a pending system update available, but its type is not known.
pattern SystemUpdateInfo_UpdateStatus_UNKNOWNUPDATEAVAILABLE :: SystemUpdateInfo_UpdateStatus
pattern SystemUpdateInfo_UpdateStatus_UNKNOWNUPDATEAVAILABLE = SystemUpdateInfo_UpdateStatus "UNKNOWN_UPDATE_AVAILABLE"

-- | There is a pending security update available.
pattern SystemUpdateInfo_UpdateStatus_SECURITYUPDATEAVAILABLE :: SystemUpdateInfo_UpdateStatus
pattern SystemUpdateInfo_UpdateStatus_SECURITYUPDATEAVAILABLE = SystemUpdateInfo_UpdateStatus "SECURITY_UPDATE_AVAILABLE"

-- | There is a pending OS update available.
pattern SystemUpdateInfo_UpdateStatus_OSUPDATEAVAILABLE :: SystemUpdateInfo_UpdateStatus
pattern SystemUpdateInfo_UpdateStatus_OSUPDATEAVAILABLE = SystemUpdateInfo_UpdateStatus "OS_UPDATE_AVAILABLE"

{-# COMPLETE
  SystemUpdateInfo_UpdateStatus_UPDATESTATUSUNKNOWN,
  SystemUpdateInfo_UpdateStatus_UPTODATE,
  SystemUpdateInfo_UpdateStatus_UNKNOWNUPDATEAVAILABLE,
  SystemUpdateInfo_UpdateStatus_SECURITYUPDATEAVAILABLE,
  SystemUpdateInfo_UpdateStatus_OSUPDATEAVAILABLE,
  SystemUpdateInfo_UpdateStatus
  #-}

-- | The display mode of the web app.
newtype WebApp_DisplayMode = WebApp_DisplayMode {fromWebApp_DisplayMode :: Core.Text}
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

-- | Not used.
pattern WebApp_DisplayMode_DISPLAYMODEUNSPECIFIED :: WebApp_DisplayMode
pattern WebApp_DisplayMode_DISPLAYMODEUNSPECIFIED = WebApp_DisplayMode "DISPLAY_MODE_UNSPECIFIED"

-- | Opens the web app with a minimal set of browser UI elements for controlling navigation and viewing the page URL.
pattern WebApp_DisplayMode_MINIMALUI :: WebApp_DisplayMode
pattern WebApp_DisplayMode_MINIMALUI = WebApp_DisplayMode "MINIMAL_UI"

-- | Opens the web app to look and feel like a standalone native application. The browser UI elements and page URL are not visible, however the system status bar and back button are visible.
pattern WebApp_DisplayMode_Standalone :: WebApp_DisplayMode
pattern WebApp_DisplayMode_Standalone = WebApp_DisplayMode "STANDALONE"

-- | Opens the web app in full screen without any visible controls. The browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.
pattern WebApp_DisplayMode_FULLSCREEN :: WebApp_DisplayMode
pattern WebApp_DisplayMode_FULLSCREEN = WebApp_DisplayMode "FULL_SCREEN"

{-# COMPLETE
  WebApp_DisplayMode_DISPLAYMODEUNSPECIFIED,
  WebApp_DisplayMode_MINIMALUI,
  WebApp_DisplayMode_Standalone,
  WebApp_DisplayMode_FULLSCREEN,
  WebApp_DisplayMode
  #-}

newtype WebToken_EnabledFeaturesItem = WebToken_EnabledFeaturesItem {fromWebToken_EnabledFeaturesItem :: Core.Text}
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

-- | Unspecified feature.
pattern WebToken_EnabledFeaturesItem_FEATUREUNSPECIFIED :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_FEATUREUNSPECIFIED = WebToken_EnabledFeaturesItem "FEATURE_UNSPECIFIED"

-- | The Managed Play search apps page (https:\/\/developers.google.com\/android\/management\/apps#search-apps).
pattern WebToken_EnabledFeaturesItem_PLAYSEARCH :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_PLAYSEARCH = WebToken_EnabledFeaturesItem "PLAY_SEARCH"

-- | The private apps page (https:\/\/developers.google.com\/android\/management\/apps#private-apps).
pattern WebToken_EnabledFeaturesItem_PRIVATEAPPS :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_PRIVATEAPPS = WebToken_EnabledFeaturesItem "PRIVATE_APPS"

-- | The Web Apps page (https:\/\/developers.google.com\/android\/management\/apps#web-apps).
pattern WebToken_EnabledFeaturesItem_WEBAPPS :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_WEBAPPS = WebToken_EnabledFeaturesItem "WEB_APPS"

-- | The organize apps page (https:\/\/developers.google.com\/android\/management\/apps#organize-apps).
pattern WebToken_EnabledFeaturesItem_STOREBUILDER :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_STOREBUILDER = WebToken_EnabledFeaturesItem "STORE_BUILDER"

-- | The managed configurations page (https:\/\/developers.google.com\/android\/management\/managed-configurations-iframe).
pattern WebToken_EnabledFeaturesItem_MANAGEDCONFIGURATIONS :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_MANAGEDCONFIGURATIONS = WebToken_EnabledFeaturesItem "MANAGED_CONFIGURATIONS"

-- | The zero-touch iframe (https:\/\/developers.google.com\/android\/management\/zero-touch-iframe).
pattern WebToken_EnabledFeaturesItem_ZEROTOUCHCUSTOMERMANAGEMENT :: WebToken_EnabledFeaturesItem
pattern WebToken_EnabledFeaturesItem_ZEROTOUCHCUSTOMERMANAGEMENT = WebToken_EnabledFeaturesItem "ZERO_TOUCH_CUSTOMER_MANAGEMENT"

{-# COMPLETE
  WebToken_EnabledFeaturesItem_FEATUREUNSPECIFIED,
  WebToken_EnabledFeaturesItem_PLAYSEARCH,
  WebToken_EnabledFeaturesItem_PRIVATEAPPS,
  WebToken_EnabledFeaturesItem_WEBAPPS,
  WebToken_EnabledFeaturesItem_STOREBUILDER,
  WebToken_EnabledFeaturesItem_MANAGEDCONFIGURATIONS,
  WebToken_EnabledFeaturesItem_ZEROTOUCHCUSTOMERMANAGEMENT,
  WebToken_EnabledFeaturesItem
  #-}

newtype WebToken_PermissionsItem = WebToken_PermissionsItem {fromWebToken_PermissionsItem :: Core.Text}
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

-- | This value is ignored.
pattern WebToken_PermissionsItem_WEBTOKENPERMISSIONUNSPECIFIED :: WebToken_PermissionsItem
pattern WebToken_PermissionsItem_WEBTOKENPERMISSIONUNSPECIFIED = WebToken_PermissionsItem "WEB_TOKEN_PERMISSION_UNSPECIFIED"

-- | The permission to approve apps for the enterprise.
pattern WebToken_PermissionsItem_APPROVEAPPS :: WebToken_PermissionsItem
pattern WebToken_PermissionsItem_APPROVEAPPS = WebToken_PermissionsItem "APPROVE_APPS"

{-# COMPLETE
  WebToken_PermissionsItem_WEBTOKENPERMISSIONUNSPECIFIED,
  WebToken_PermissionsItem_APPROVEAPPS,
  WebToken_PermissionsItem
  #-}

-- | Optional flags that control the device wiping behavior.
newtype EnterprisesDevicesDeleteWipeDataFlags = EnterprisesDevicesDeleteWipeDataFlags {fromEnterprisesDevicesDeleteWipeDataFlags :: Core.Text}
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

-- | This value is ignored.
pattern EnterprisesDevicesDeleteWipeDataFlags_WIPEDATAFLAGUNSPECIFIED :: EnterprisesDevicesDeleteWipeDataFlags
pattern EnterprisesDevicesDeleteWipeDataFlags_WIPEDATAFLAGUNSPECIFIED = EnterprisesDevicesDeleteWipeDataFlags "WIPE_DATA_FLAG_UNSPECIFIED"

-- | Preserve the factory reset protection data on the device.
pattern EnterprisesDevicesDeleteWipeDataFlags_PRESERVERESETPROTECTIONDATA :: EnterprisesDevicesDeleteWipeDataFlags
pattern EnterprisesDevicesDeleteWipeDataFlags_PRESERVERESETPROTECTIONDATA = EnterprisesDevicesDeleteWipeDataFlags "PRESERVE_RESET_PROTECTION_DATA"

-- | Additionally wipe the device\'s external storage (such as SD cards).
pattern EnterprisesDevicesDeleteWipeDataFlags_WIPEEXTERNALSTORAGE :: EnterprisesDevicesDeleteWipeDataFlags
pattern EnterprisesDevicesDeleteWipeDataFlags_WIPEEXTERNALSTORAGE = EnterprisesDevicesDeleteWipeDataFlags "WIPE_EXTERNAL_STORAGE"

{-# COMPLETE
  EnterprisesDevicesDeleteWipeDataFlags_WIPEDATAFLAGUNSPECIFIED,
  EnterprisesDevicesDeleteWipeDataFlags_PRESERVERESETPROTECTIONDATA,
  EnterprisesDevicesDeleteWipeDataFlags_WIPEEXTERNALSTORAGE,
  EnterprisesDevicesDeleteWipeDataFlags
  #-}

-- | Specifies which Enterprise fields to return. This method only supports BASIC.
newtype EnterprisesListView = EnterprisesListView {fromEnterprisesListView :: Core.Text}
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

-- | The API will default to the BASIC view for the List method.
pattern EnterprisesListView_ENTERPRISEVIEWUNSPECIFIED :: EnterprisesListView
pattern EnterprisesListView_ENTERPRISEVIEWUNSPECIFIED = EnterprisesListView "ENTERPRISE_VIEW_UNSPECIFIED"

-- | Includes name and enterprise/display/name fields.
pattern EnterprisesListView_Basic :: EnterprisesListView
pattern EnterprisesListView_Basic = EnterprisesListView "BASIC"

{-# COMPLETE
  EnterprisesListView_ENTERPRISEVIEWUNSPECIFIED,
  EnterprisesListView_Basic,
  EnterprisesListView
  #-}
