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
-- Module      : Gogol.AndroidManagement.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidManagement.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdvancedSecurityOverrides_CommonCriteriaMode
    AdvancedSecurityOverrides_CommonCriteriaMode
      (
        AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEUNSPECIFIED,
        AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEDISABLED,
        AdvancedSecurityOverrides_CommonCriteriaMode_COMMONCRITERIAMODEENABLED,
        ..
      ),

    -- * AdvancedSecurityOverrides_ContentProtectionPolicy
    AdvancedSecurityOverrides_ContentProtectionPolicy
      (
        AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONPOLICYUNSPECIFIED,
        AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONDISABLED,
        AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONENFORCED,
        AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONUSERCHOICE,
        ..
      ),

    -- * AdvancedSecurityOverrides_DeveloperSettings
    AdvancedSecurityOverrides_DeveloperSettings
      (
        AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSUNSPECIFIED,
        AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSDISABLED,
        AdvancedSecurityOverrides_DeveloperSettings_DEVELOPERSETTINGSALLOWED,
        ..
      ),

    -- * AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
    AdvancedSecurityOverrides_GooglePlayProtectVerifyApps
      (
        AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_GOOGLEPLAYPROTECTVERIFYAPPSUNSPECIFIED,
        AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSENFORCED,
        AdvancedSecurityOverrides_GooglePlayProtectVerifyApps_VERIFYAPPSUSERCHOICE,
        ..
      ),

    -- * AdvancedSecurityOverrides_MtePolicy
    AdvancedSecurityOverrides_MtePolicy
      (
        AdvancedSecurityOverrides_MtePolicy_MTEPOLICYUNSPECIFIED,
        AdvancedSecurityOverrides_MtePolicy_MTEUSERCHOICE,
        AdvancedSecurityOverrides_MtePolicy_MTEENFORCED,
        AdvancedSecurityOverrides_MtePolicy_MTEDISABLED,
        ..
      ),

    -- * AdvancedSecurityOverrides_UntrustedAppsPolicy
    AdvancedSecurityOverrides_UntrustedAppsPolicy
      (
        AdvancedSecurityOverrides_UntrustedAppsPolicy_UNTRUSTEDAPPSPOLICYUNSPECIFIED,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_DISALLOWINSTALL,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLINPERSONALPROFILEONLY,
        AdvancedSecurityOverrides_UntrustedAppsPolicy_ALLOWINSTALLDEVICEWIDE,
        ..
      ),

    -- * Application_AppPricing
    Application_AppPricing
      (
        Application_AppPricing_APPPRICINGUNSPECIFIED,
        Application_AppPricing_Free,
        Application_AppPricing_FREEWITHINAPPPURCHASE,
        Application_AppPricing_Paid,
        ..
      ),

    -- * Application_ContentRating
    Application_ContentRating
      (
        Application_ContentRating_CONTENTRATINGUNSPECIFIED,
        Application_ContentRating_THREEYEARS,
        Application_ContentRating_SEVENYEARS,
        Application_ContentRating_TWELVEYEARS,
        Application_ContentRating_SIXTEENYEARS,
        Application_ContentRating_EIGHTEENYEARS,
        ..
      ),

    -- * Application_DistributionChannel
    Application_DistributionChannel
      (
        Application_DistributionChannel_DISTRIBUTIONCHANNELUNSPECIFIED,
        Application_DistributionChannel_PUBLICGOOGLEHOSTED,
        Application_DistributionChannel_PRIVATEGOOGLEHOSTED,
        Application_DistributionChannel_PRIVATESELFHOSTED,
        ..
      ),

    -- * Application_FeaturesItem
    Application_FeaturesItem
      (
        Application_FeaturesItem_APPFEATUREUNSPECIFIED,
        Application_FeaturesItem_VPNAPP,
        ..
      ),

    -- * ApplicationEvent_EventType
    ApplicationEvent_EventType
      (
        ApplicationEvent_EventType_APPLICATIONEVENTTYPEUNSPECIFIED,
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

    -- * ApplicationPolicy_AlwaysOnVpnLockdownExemption
    ApplicationPolicy_AlwaysOnVpnLockdownExemption
      (
        ApplicationPolicy_AlwaysOnVpnLockdownExemption_ALWAYSONVPNLOCKDOWNEXEMPTIONUNSPECIFIED,
        ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNENFORCED,
        ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNEXEMPTION,
        ..
      ),

    -- * ApplicationPolicy_AutoUpdateMode
    ApplicationPolicy_AutoUpdateMode
      (
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED,
        ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY,
        ..
      ),

    -- * ApplicationPolicy_ConnectedWorkAndPersonalApp
    ApplicationPolicy_ConnectedWorkAndPersonalApp
      (
        ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPUNSPECIFIED,
        ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPDISALLOWED,
        ApplicationPolicy_ConnectedWorkAndPersonalApp_CONNECTEDWORKANDPERSONALAPPALLOWED,
        ..
      ),

    -- * ApplicationPolicy_CredentialProviderPolicy
    ApplicationPolicy_CredentialProviderPolicy
      (
        ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERPOLICYUNSPECIFIED,
        ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERALLOWED,
        ..
      ),

    -- * ApplicationPolicy_DefaultPermissionPolicy
    ApplicationPolicy_DefaultPermissionPolicy
      (
        ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
        ApplicationPolicy_DefaultPermissionPolicy_Prompt,
        ApplicationPolicy_DefaultPermissionPolicy_Grant,
        ApplicationPolicy_DefaultPermissionPolicy_Deny,
        ..
      ),

    -- * ApplicationPolicy_DelegatedScopesItem
    ApplicationPolicy_DelegatedScopesItem
      (
        ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED,
        ApplicationPolicy_DelegatedScopesItem_CERTINSTALL,
        ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS,
        ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL,
        ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT,
        ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS,
        ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP,
        ApplicationPolicy_DelegatedScopesItem_NETWORKACTIVITYLOGS,
        ApplicationPolicy_DelegatedScopesItem_SECURITYLOGS,
        ApplicationPolicy_DelegatedScopesItem_CERTSELECTION,
        ..
      ),

    -- * ApplicationPolicy_InstallType
    ApplicationPolicy_InstallType
      (
        ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
        ApplicationPolicy_InstallType_Preinstalled,
        ApplicationPolicy_InstallType_FORCEINSTALLED,
        ApplicationPolicy_InstallType_Blocked,
        ApplicationPolicy_InstallType_Available,
        ApplicationPolicy_InstallType_REQUIREDFORSETUP,
        ApplicationPolicy_InstallType_Kiosk,
        ..
      ),

    -- * ApplicationPolicy_UserControlSettings
    ApplicationPolicy_UserControlSettings
      (
        ApplicationPolicy_UserControlSettings_USERCONTROLSETTINGSUNSPECIFIED,
        ApplicationPolicy_UserControlSettings_USERCONTROLALLOWED,
        ApplicationPolicy_UserControlSettings_USERCONTROLDISALLOWED,
        ..
      ),

    -- * ApplicationPolicy_WorkProfileWidgets
    ApplicationPolicy_WorkProfileWidgets
      (
        ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSUNSPECIFIED,
        ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSALLOWED,
        ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSDISALLOWED,
        ..
      ),

    -- * ApplicationReport_ApplicationSource
    ApplicationReport_ApplicationSource
      (
        ApplicationReport_ApplicationSource_APPLICATIONSOURCEUNSPECIFIED,
        ApplicationReport_ApplicationSource_SYSTEMAPPFACTORYVERSION,
        ApplicationReport_ApplicationSource_SYSTEMAPPUPDATEDVERSION,
        ApplicationReport_ApplicationSource_INSTALLEDFROMPLAYSTORE,
        ..
      ),

    -- * ApplicationReport_State
    ApplicationReport_State
      (
        ApplicationReport_State_APPLICATIONSTATEUNSPECIFIED,
        ApplicationReport_State_Removed,
        ApplicationReport_State_Installed,
        ..
      ),

    -- * ApplicationReport_UserFacingType
    ApplicationReport_UserFacingType
      (
        ApplicationReport_UserFacingType_USERFACINGTYPEUNSPECIFIED,
        ApplicationReport_UserFacingType_NOTUSERFACING,
        ApplicationReport_UserFacingType_USERFACING,
        ..
      ),

    -- * BlockAction_BlockScope
    BlockAction_BlockScope
      (
        BlockAction_BlockScope_BLOCKSCOPEUNSPECIFIED,
        BlockAction_BlockScope_BLOCKSCOPEWORKPROFILE,
        BlockAction_BlockScope_BLOCKSCOPEDEVICE,
        ..
      ),

    -- * Command_ErrorCode
    Command_ErrorCode
      (
        Command_ErrorCode_COMMANDERRORCODEUNSPECIFIED,
        Command_ErrorCode_Unknown,
        Command_ErrorCode_APILEVEL,
        Command_ErrorCode_MANAGEMENTMODE,
        Command_ErrorCode_INVALIDVALUE,
        Command_ErrorCode_Unsupported,
        ..
      ),

    -- * Command_ResetPasswordFlagsItem
    Command_ResetPasswordFlagsItem
      (
        Command_ResetPasswordFlagsItem_RESETPASSWORDFLAGUNSPECIFIED,
        Command_ResetPasswordFlagsItem_REQUIREENTRY,
        Command_ResetPasswordFlagsItem_DONOTASKCREDENTIALSONBOOT,
        Command_ResetPasswordFlagsItem_LOCKNOW,
        ..
      ),

    -- * Command_Type
    Command_Type
      (
        Command_Type_COMMANDTYPEUNSPECIFIED,
        Command_Type_Lock,
        Command_Type_RESETPASSWORD,
        Command_Type_Reboot,
        Command_Type_RELINQUISHOWNERSHIP,
        Command_Type_CLEARAPPDATA,
        Command_Type_STARTLOSTMODE,
        Command_Type_STOPLOSTMODE,
        ..
      ),

    -- * CommonCriteriaModeInfo_CommonCriteriaModeStatus
    CommonCriteriaModeInfo_CommonCriteriaModeStatus
      (
        CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODESTATUSUNKNOWN,
        CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEDISABLED,
        CommonCriteriaModeInfo_CommonCriteriaModeStatus_COMMONCRITERIAMODEENABLED,
        ..
      ),

    -- * CommonCriteriaModeInfo_PolicySignatureVerificationStatus
    CommonCriteriaModeInfo_PolicySignatureVerificationStatus
      (
        CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSTATUSUNSPECIFIED,
        CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONDISABLED,
        CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSUCCEEDED,
        CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONNOTSUPPORTED,
        CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONFAILED,
        ..
      ),

    -- * CrossProfilePolicies_CrossProfileCopyPaste
    CrossProfilePolicies_CrossProfileCopyPaste
      (
        CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEUNSPECIFIED,
        CrossProfilePolicies_CrossProfileCopyPaste_COPYFROMWORKTOPERSONALDISALLOWED,
        CrossProfilePolicies_CrossProfileCopyPaste_CROSSPROFILECOPYPASTEALLOWED,
        ..
      ),

    -- * CrossProfilePolicies_CrossProfileDataSharing
    CrossProfilePolicies_CrossProfileDataSharing
      (
        CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGUNSPECIFIED,
        CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGDISALLOWED,
        CrossProfilePolicies_CrossProfileDataSharing_DATASHARINGFROMWORKTOPERSONALDISALLOWED,
        CrossProfilePolicies_CrossProfileDataSharing_CROSSPROFILEDATASHARINGALLOWED,
        ..
      ),

    -- * CrossProfilePolicies_ShowWorkContactsInPersonalProfile
    CrossProfilePolicies_ShowWorkContactsInPersonalProfile
      (
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED,
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED,
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED,
        CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWEDEXCEPTSYSTEM,
        ..
      ),

    -- * CrossProfilePolicies_WorkProfileWidgetsDefault
    CrossProfilePolicies_WorkProfileWidgetsDefault
      (
        CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTUNSPECIFIED,
        CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTALLOWED,
        CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTDISALLOWED,
        ..
      ),

    -- * Device_AppliedState
    Device_AppliedState
      (
        Device_AppliedState_DEVICESTATEUNSPECIFIED,
        Device_AppliedState_Active,
        Device_AppliedState_Disabled,
        Device_AppliedState_Deleted,
        Device_AppliedState_Provisioning,
        Device_AppliedState_Lost,
        Device_AppliedState_PREPARINGFORMIGRATION,
        Device_AppliedState_DEACTIVATEDBYDEVICEFINANCE,
        ..
      ),

    -- * Device_ManagementMode
    Device_ManagementMode
      (
        Device_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
        Device_ManagementMode_DEVICEOWNER,
        Device_ManagementMode_PROFILEOWNER,
        ..
      ),

    -- * Device_Ownership
    Device_Ownership
      (
        Device_Ownership_OWNERSHIPUNSPECIFIED,
        Device_Ownership_COMPANYOWNED,
        Device_Ownership_PERSONALLYOWNED,
        ..
      ),

    -- * Device_State
    Device_State
      (
        Device_State_DEVICESTATEUNSPECIFIED,
        Device_State_Active,
        Device_State_Disabled,
        Device_State_Deleted,
        Device_State_Provisioning,
        Device_State_Lost,
        Device_State_PREPARINGFORMIGRATION,
        Device_State_DEACTIVATEDBYDEVICEFINANCE,
        ..
      ),

    -- * DeviceConnectivityManagement_ConfigureWifi
    DeviceConnectivityManagement_ConfigureWifi
      (
        DeviceConnectivityManagement_ConfigureWifi_CONFIGUREWIFIUNSPECIFIED,
        DeviceConnectivityManagement_ConfigureWifi_ALLOWCONFIGURINGWIFI,
        DeviceConnectivityManagement_ConfigureWifi_DISALLOWADDWIFICONFIG,
        DeviceConnectivityManagement_ConfigureWifi_DISALLOWCONFIGURINGWIFI,
        ..
      ),

    -- * DeviceConnectivityManagement_TetheringSettings
    DeviceConnectivityManagement_TetheringSettings
      (
        DeviceConnectivityManagement_TetheringSettings_TETHERINGSETTINGSUNSPECIFIED,
        DeviceConnectivityManagement_TetheringSettings_ALLOWALLTETHERING,
        DeviceConnectivityManagement_TetheringSettings_DISALLOWWIFITETHERING,
        DeviceConnectivityManagement_TetheringSettings_DISALLOWALLTETHERING,
        ..
      ),

    -- * DeviceConnectivityManagement_UsbDataAccess
    DeviceConnectivityManagement_UsbDataAccess
      (
        DeviceConnectivityManagement_UsbDataAccess_USBDATAACCESSUNSPECIFIED,
        DeviceConnectivityManagement_UsbDataAccess_ALLOWUSBDATATRANSFER,
        DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBFILETRANSFER,
        DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBDATATRANSFER,
        ..
      ),

    -- * DeviceConnectivityManagement_WifiDirectSettings
    DeviceConnectivityManagement_WifiDirectSettings
      (
        DeviceConnectivityManagement_WifiDirectSettings_WIFIDIRECTSETTINGSUNSPECIFIED,
        DeviceConnectivityManagement_WifiDirectSettings_ALLOWWIFIDIRECT,
        DeviceConnectivityManagement_WifiDirectSettings_DISALLOWWIFIDIRECT,
        ..
      ),

    -- * DeviceRadioState_AirplaneModeState
    DeviceRadioState_AirplaneModeState
      (
        DeviceRadioState_AirplaneModeState_AIRPLANEMODESTATEUNSPECIFIED,
        DeviceRadioState_AirplaneModeState_AIRPLANEMODEUSERCHOICE,
        DeviceRadioState_AirplaneModeState_AIRPLANEMODEDISABLED,
        ..
      ),

    -- * DeviceRadioState_CellularTwoGState
    DeviceRadioState_CellularTwoGState
      (
        DeviceRadioState_CellularTwoGState_CELLULARTWOGSTATEUNSPECIFIED,
        DeviceRadioState_CellularTwoGState_CELLULARTWOGUSERCHOICE,
        DeviceRadioState_CellularTwoGState_CELLULARTWOGDISABLED,
        ..
      ),

    -- * DeviceRadioState_MinimumWifiSecurityLevel
    DeviceRadioState_MinimumWifiSecurityLevel
      (
        DeviceRadioState_MinimumWifiSecurityLevel_MINIMUMWIFISECURITYLEVELUNSPECIFIED,
        DeviceRadioState_MinimumWifiSecurityLevel_OPENNETWORKSECURITY,
        DeviceRadioState_MinimumWifiSecurityLevel_PERSONALNETWORKSECURITY,
        DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISENETWORKSECURITY,
        DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISEBIT192NETWORKSECURITY,
        ..
      ),

    -- * DeviceRadioState_UltraWidebandState
    DeviceRadioState_UltraWidebandState
      (
        DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDSTATEUNSPECIFIED,
        DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDUSERCHOICE,
        DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDDISABLED,
        ..
      ),

    -- * DeviceRadioState_WifiState
    DeviceRadioState_WifiState
      (
        DeviceRadioState_WifiState_WIFISTATEUNSPECIFIED,
        DeviceRadioState_WifiState_WIFISTATEUSERCHOICE,
        DeviceRadioState_WifiState_WIFIENABLED,
        DeviceRadioState_WifiState_WIFIDISABLED,
        ..
      ),

    -- * DeviceSettings_EncryptionStatus
    DeviceSettings_EncryptionStatus
      (
        DeviceSettings_EncryptionStatus_ENCRYPTIONSTATUSUNSPECIFIED,
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
      (
        Display_State_DISPLAYSTATEUNSPECIFIED,
        Display_State_Off,
        Display_State_ON,
        Display_State_Doze,
        Display_State_Suspended,
        ..
      ),

    -- * EnrollmentToken_AllowPersonalUsage
    EnrollmentToken_AllowPersonalUsage
      (
        EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
        EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED,
        EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
        EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS,
        ..
      ),

    -- * Enterprise_EnabledNotificationTypesItem
    Enterprise_EnabledNotificationTypesItem
      (
        Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED,
        Enterprise_EnabledNotificationTypesItem_Enrollment,
        Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT,
        Enterprise_EnabledNotificationTypesItem_STATUSREPORT,
        Enterprise_EnabledNotificationTypesItem_Command,
        Enterprise_EnabledNotificationTypesItem_USAGELOGS,
        ..
      ),

    -- * GoogleAuthenticationSettings_GoogleAuthenticationRequired
    GoogleAuthenticationSettings_GoogleAuthenticationRequired
      (
        GoogleAuthenticationSettings_GoogleAuthenticationRequired_GOOGLEAUTHENTICATIONREQUIREDUNSPECIFIED,
        GoogleAuthenticationSettings_GoogleAuthenticationRequired_NOTREQUIRED,
        GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required,
        ..
      ),

    -- * InstallConstraint_ChargingConstraint
    InstallConstraint_ChargingConstraint
      (
        InstallConstraint_ChargingConstraint_CHARGINGCONSTRAINTUNSPECIFIED,
        InstallConstraint_ChargingConstraint_CHARGINGNOTREQUIRED,
        InstallConstraint_ChargingConstraint_INSTALLONLYWHENCHARGING,
        ..
      ),

    -- * InstallConstraint_DeviceIdleConstraint
    InstallConstraint_DeviceIdleConstraint
      (
        InstallConstraint_DeviceIdleConstraint_DEVICEIDLECONSTRAINTUNSPECIFIED,
        InstallConstraint_DeviceIdleConstraint_DEVICEIDLENOTREQUIRED,
        InstallConstraint_DeviceIdleConstraint_INSTALLONLYWHENDEVICEIDLE,
        ..
      ),

    -- * InstallConstraint_NetworkTypeConstraint
    InstallConstraint_NetworkTypeConstraint
      (
        InstallConstraint_NetworkTypeConstraint_NETWORKTYPECONSTRAINTUNSPECIFIED,
        InstallConstraint_NetworkTypeConstraint_INSTALLONANYNETWORK,
        InstallConstraint_NetworkTypeConstraint_INSTALLONLYONUNMETEREDNETWORK,
        ..
      ),

    -- * KeyedAppState_Severity
    KeyedAppState_Severity
      (
        KeyedAppState_Severity_SEVERITYUNSPECIFIED,
        KeyedAppState_Severity_Info,
        KeyedAppState_Severity_Error',
        ..
      ),

    -- * KioskCustomization_DeviceSettings
    KioskCustomization_DeviceSettings
      (
        KioskCustomization_DeviceSettings_DEVICESETTINGSUNSPECIFIED,
        KioskCustomization_DeviceSettings_SETTINGSACCESSALLOWED,
        KioskCustomization_DeviceSettings_SETTINGSACCESSBLOCKED,
        ..
      ),

    -- * KioskCustomization_PowerButtonActions
    KioskCustomization_PowerButtonActions
      (
        KioskCustomization_PowerButtonActions_POWERBUTTONACTIONSUNSPECIFIED,
        KioskCustomization_PowerButtonActions_POWERBUTTONAVAILABLE,
        KioskCustomization_PowerButtonActions_POWERBUTTONBLOCKED,
        ..
      ),

    -- * KioskCustomization_StatusBar
    KioskCustomization_StatusBar
      (
        KioskCustomization_StatusBar_STATUSBARUNSPECIFIED,
        KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFOENABLED,
        KioskCustomization_StatusBar_NOTIFICATIONSANDSYSTEMINFODISABLED,
        KioskCustomization_StatusBar_SYSTEMINFOONLY,
        ..
      ),

    -- * KioskCustomization_SystemErrorWarnings
    KioskCustomization_SystemErrorWarnings
      (
        KioskCustomization_SystemErrorWarnings_SYSTEMERRORWARNINGSUNSPECIFIED,
        KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSENABLED,
        KioskCustomization_SystemErrorWarnings_ERRORANDWARNINGSMUTED,
        ..
      ),

    -- * KioskCustomization_SystemNavigation
    KioskCustomization_SystemNavigation
      (
        KioskCustomization_SystemNavigation_SYSTEMNAVIGATIONUNSPECIFIED,
        KioskCustomization_SystemNavigation_NAVIGATIONENABLED,
        KioskCustomization_SystemNavigation_NAVIGATIONDISABLED,
        KioskCustomization_SystemNavigation_HOMEBUTTONONLY,
        ..
      ),

    -- * ManagedProperty_Type
    ManagedProperty_Type
      (
        ManagedProperty_Type_MANAGEDPROPERTYTYPEUNSPECIFIED,
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
      (
        MemoryEvent_EventType_MEMORYEVENTTYPEUNSPECIFIED,
        MemoryEvent_EventType_RAMMEASURED,
        MemoryEvent_EventType_INTERNALSTORAGEMEASURED,
        MemoryEvent_EventType_EXTERNALSTORAGEDETECTED,
        MemoryEvent_EventType_EXTERNALSTORAGEREMOVED,
        MemoryEvent_EventType_EXTERNALSTORAGEMEASURED,
        ..
      ),

    -- * MigrationToken_ManagementMode
    MigrationToken_ManagementMode
      (
        MigrationToken_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
        MigrationToken_ManagementMode_WORKPROFILEPERSONALLYOWNED,
        MigrationToken_ManagementMode_WORKPROFILECOMPANYOWNED,
        MigrationToken_ManagementMode_FULLYMANAGED,
        ..
      ),

    -- * NonComplianceDetail_InstallationFailureReason
    NonComplianceDetail_InstallationFailureReason
      (
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
        NonComplianceDetail_InstallationFailureReason_NETWORKERRORUNRELIABLECONNECTION,
        NonComplianceDetail_InstallationFailureReason_INSUFFICIENTSTORAGE,
        ..
      ),

    -- * NonComplianceDetail_NonComplianceReason
    NonComplianceDetail_NonComplianceReason
      (
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
        NonComplianceDetail_NonComplianceReason_DEVICEINCOMPATIBLE,
        ..
      ),

    -- * NonComplianceDetail_SpecificNonComplianceReason
    NonComplianceDetail_SpecificNonComplianceReason
      (
        NonComplianceDetail_SpecificNonComplianceReason_SPECIFICNONCOMPLIANCEREASONUNSPECIFIED,
        NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESUSERCREDENTIALSCONFIRMATIONREQUIRED,
        NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDEXPIRED,
        NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDNOTSUFFICIENT,
        NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDVALUE,
        NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIAPILEVEL,
        NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDENTERPRISECONFIG,
        NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIUSERSHOULDREMOVENETWORK,
        NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIKEYPAIRALIASNOTCORRESPONDINGTOEXISTINGKEY,
        ..
      ),

    -- * NonComplianceDetailCondition_NonComplianceReason
    NonComplianceDetailCondition_NonComplianceReason
      (
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
        NonComplianceDetailCondition_NonComplianceReason_DEVICEINCOMPATIBLE,
        ..
      ),

    -- * OsStartupEvent_VerifiedBootState
    OsStartupEvent_VerifiedBootState
      (
        OsStartupEvent_VerifiedBootState_VERIFIEDBOOTSTATEUNSPECIFIED,
        OsStartupEvent_VerifiedBootState_Green,
        OsStartupEvent_VerifiedBootState_Yellow,
        OsStartupEvent_VerifiedBootState_Orange,
        ..
      ),

    -- * OsStartupEvent_VerityMode
    OsStartupEvent_VerityMode
      (
        OsStartupEvent_VerityMode_DMVERITYMODEUNSPECIFIED,
        OsStartupEvent_VerityMode_Enforcing,
        OsStartupEvent_VerityMode_IOERROR,
        OsStartupEvent_VerityMode_Disabled,
        ..
      ),

    -- * PasswordPoliciesContext_PasswordPolicyScope
    PasswordPoliciesContext_PasswordPolicyScope
      (
        PasswordPoliciesContext_PasswordPolicyScope_SCOPEUNSPECIFIED,
        PasswordPoliciesContext_PasswordPolicyScope_SCOPEDEVICE,
        PasswordPoliciesContext_PasswordPolicyScope_SCOPEPROFILE,
        ..
      ),

    -- * PasswordRequirements_PasswordQuality
    PasswordRequirements_PasswordQuality
      (
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
        ..
      ),

    -- * PasswordRequirements_PasswordScope
    PasswordRequirements_PasswordScope
      (
        PasswordRequirements_PasswordScope_SCOPEUNSPECIFIED,
        PasswordRequirements_PasswordScope_SCOPEDEVICE,
        PasswordRequirements_PasswordScope_SCOPEPROFILE,
        ..
      ),

    -- * PasswordRequirements_RequirePasswordUnlock
    PasswordRequirements_RequirePasswordUnlock
      (
        PasswordRequirements_RequirePasswordUnlock_REQUIREPASSWORDUNLOCKUNSPECIFIED,
        PasswordRequirements_RequirePasswordUnlock_USEDEFAULTDEVICETIMEOUT,
        PasswordRequirements_RequirePasswordUnlock_REQUIREEVERYDAY,
        ..
      ),

    -- * PasswordRequirements_UnifiedLockSettings
    PasswordRequirements_UnifiedLockSettings
      (
        PasswordRequirements_UnifiedLockSettings_UNIFIEDLOCKSETTINGSUNSPECIFIED,
        PasswordRequirements_UnifiedLockSettings_ALLOWUNIFIEDWORKANDPERSONALLOCK,
        PasswordRequirements_UnifiedLockSettings_REQUIRESEPARATEWORKLOCK,
        ..
      ),

    -- * PerAppResult_ClearingResult
    PerAppResult_ClearingResult
      (
        PerAppResult_ClearingResult_CLEARINGRESULTUNSPECIFIED,
        PerAppResult_ClearingResult_Success,
        PerAppResult_ClearingResult_APPNOTFOUND,
        PerAppResult_ClearingResult_APPPROTECTED,
        PerAppResult_ClearingResult_APILEVEL,
        ..
      ),

    -- * PermissionGrant_Policy
    PermissionGrant_Policy
      (
        PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED,
        PermissionGrant_Policy_Prompt,
        PermissionGrant_Policy_Grant,
        PermissionGrant_Policy_Deny,
        ..
      ),

    -- * PersonalApplicationPolicy_InstallType
    PersonalApplicationPolicy_InstallType
      (
        PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
        PersonalApplicationPolicy_InstallType_Blocked,
        PersonalApplicationPolicy_InstallType_Available,
        ..
      ),

    -- * PersonalUsagePolicies_PersonalPlayStoreMode
    PersonalUsagePolicies_PersonalPlayStoreMode
      (
        PersonalUsagePolicies_PersonalPlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
        PersonalUsagePolicies_PersonalPlayStoreMode_Blacklist,
        PersonalUsagePolicies_PersonalPlayStoreMode_Blocklist,
        PersonalUsagePolicies_PersonalPlayStoreMode_Allowlist,
        ..
      ),

    -- * PersonalUsagePolicies_PrivateSpacePolicy
    PersonalUsagePolicies_PrivateSpacePolicy
      (
        PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEPOLICYUNSPECIFIED,
        PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEALLOWED,
        PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEDISALLOWED,
        ..
      ),

    -- * Policy_AndroidDevicePolicyTracksItem
    Policy_AndroidDevicePolicyTracksItem
      (
        Policy_AndroidDevicePolicyTracksItem_APPTRACKUNSPECIFIED,
        Policy_AndroidDevicePolicyTracksItem_Production,
        Policy_AndroidDevicePolicyTracksItem_Beta,
        ..
      ),

    -- * Policy_AppAutoUpdatePolicy
    Policy_AppAutoUpdatePolicy
      (
        Policy_AppAutoUpdatePolicy_APPAUTOUPDATEPOLICYUNSPECIFIED,
        Policy_AppAutoUpdatePolicy_CHOICETOTHEUSER,
        Policy_AppAutoUpdatePolicy_Never,
        Policy_AppAutoUpdatePolicy_WIFIONLY,
        Policy_AppAutoUpdatePolicy_Always,
        ..
      ),

    -- * Policy_AssistContentPolicy
    Policy_AssistContentPolicy
      (
        Policy_AssistContentPolicy_ASSISTCONTENTPOLICYUNSPECIFIED,
        Policy_AssistContentPolicy_ASSISTCONTENTDISALLOWED,
        Policy_AssistContentPolicy_ASSISTCONTENTALLOWED,
        ..
      ),

    -- * Policy_AutoDateAndTimeZone
    Policy_AutoDateAndTimeZone
      (
        Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUNSPECIFIED,
        Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEUSERCHOICE,
        Policy_AutoDateAndTimeZone_AUTODATEANDTIMEZONEENFORCED,
        ..
      ),

    -- * Policy_CameraAccess
    Policy_CameraAccess
      (
        Policy_CameraAccess_CAMERAACCESSUNSPECIFIED,
        Policy_CameraAccess_CAMERAACCESSUSERCHOICE,
        Policy_CameraAccess_CAMERAACCESSDISABLED,
        Policy_CameraAccess_CAMERAACCESSENFORCED,
        ..
      ),

    -- * Policy_CredentialProviderPolicyDefault
    Policy_CredentialProviderPolicyDefault
      (
        Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERPOLICYDEFAULTUNSPECIFIED,
        Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWED,
        Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWEDEXCEPTSYSTEM,
        ..
      ),

    -- * Policy_DefaultPermissionPolicy
    Policy_DefaultPermissionPolicy
      (
        Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED,
        Policy_DefaultPermissionPolicy_Prompt,
        Policy_DefaultPermissionPolicy_Grant,
        Policy_DefaultPermissionPolicy_Deny,
        ..
      ),

    -- * Policy_EncryptionPolicy
    Policy_EncryptionPolicy
      (
        Policy_EncryptionPolicy_ENCRYPTIONPOLICYUNSPECIFIED,
        Policy_EncryptionPolicy_ENABLEDWITHOUTPASSWORD,
        Policy_EncryptionPolicy_ENABLEDWITHPASSWORD,
        ..
      ),

    -- * Policy_KeyguardDisabledFeaturesItem
    Policy_KeyguardDisabledFeaturesItem
      (
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
        Policy_KeyguardDisabledFeaturesItem_Shortcuts,
        Policy_KeyguardDisabledFeaturesItem_ALLFEATURES,
        ..
      ),

    -- * Policy_LocationMode
    Policy_LocationMode
      (
        Policy_LocationMode_LOCATIONMODEUNSPECIFIED,
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
      (
        Policy_MicrophoneAccess_MICROPHONEACCESSUNSPECIFIED,
        Policy_MicrophoneAccess_MICROPHONEACCESSUSERCHOICE,
        Policy_MicrophoneAccess_MICROPHONEACCESSDISABLED,
        Policy_MicrophoneAccess_MICROPHONEACCESSENFORCED,
        ..
      ),

    -- * Policy_PlayStoreMode
    Policy_PlayStoreMode
      (
        Policy_PlayStoreMode_PLAYSTOREMODEUNSPECIFIED,
        Policy_PlayStoreMode_Whitelist,
        Policy_PlayStoreMode_Blacklist,
        ..
      ),

    -- * Policy_PreferentialNetworkService
    Policy_PreferentialNetworkService
      (
        Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEUNSPECIFIED,
        Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEDISABLED,
        Policy_PreferentialNetworkService_PREFERENTIALNETWORKSERVICEENABLED,
        ..
      ),

    -- * Policy_PrintingPolicy
    Policy_PrintingPolicy
      (
        Policy_PrintingPolicy_PRINTINGPOLICYUNSPECIFIED,
        Policy_PrintingPolicy_PRINTINGDISALLOWED,
        Policy_PrintingPolicy_PRINTINGALLOWED,
        ..
      ),

    -- * Policy_StayOnPluggedModesItem
    Policy_StayOnPluggedModesItem
      (
        Policy_StayOnPluggedModesItem_BATTERYPLUGGEDMODEUNSPECIFIED,
        Policy_StayOnPluggedModesItem_AC,
        Policy_StayOnPluggedModesItem_Usb,
        Policy_StayOnPluggedModesItem_Wireless,
        ..
      ),

    -- * PostureDetail_SecurityRisk
    PostureDetail_SecurityRisk
      (
        PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED,
        PostureDetail_SecurityRisk_UNKNOWNOS,
        PostureDetail_SecurityRisk_COMPROMISEDOS,
        PostureDetail_SecurityRisk_HARDWAREBACKEDEVALUATIONFAILED,
        ..
      ),

    -- * PowerManagementEvent_EventType
    PowerManagementEvent_EventType
      (
        PowerManagementEvent_EventType_POWERMANAGEMENTEVENTTYPEUNSPECIFIED,
        PowerManagementEvent_EventType_BATTERYLEVELCOLLECTED,
        PowerManagementEvent_EventType_POWERCONNECTED,
        PowerManagementEvent_EventType_POWERDISCONNECTED,
        PowerManagementEvent_EventType_BATTERYLOW,
        PowerManagementEvent_EventType_BATTERYOKAY,
        PowerManagementEvent_EventType_BOOTCOMPLETED,
        PowerManagementEvent_EventType_Shutdown,
        ..
      ),

    -- * ProvisioningInfo_ManagementMode
    ProvisioningInfo_ManagementMode
      (
        ProvisioningInfo_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
        ProvisioningInfo_ManagementMode_DEVICEOWNER,
        ProvisioningInfo_ManagementMode_PROFILEOWNER,
        ..
      ),

    -- * ProvisioningInfo_Ownership
    ProvisioningInfo_Ownership
      (
        ProvisioningInfo_Ownership_OWNERSHIPUNSPECIFIED,
        ProvisioningInfo_Ownership_COMPANYOWNED,
        ProvisioningInfo_Ownership_PERSONALLYOWNED,
        ..
      ),

    -- * ScreenBrightnessSettings_ScreenBrightnessMode
    ScreenBrightnessSettings_ScreenBrightnessMode
      (
        ScreenBrightnessSettings_ScreenBrightnessMode_SCREENBRIGHTNESSMODEUNSPECIFIED,
        ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSUSERCHOICE,
        ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSAUTOMATIC,
        ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSFIXED,
        ..
      ),

    -- * ScreenTimeoutSettings_ScreenTimeoutMode
    ScreenTimeoutSettings_ScreenTimeoutMode
      (
        ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTMODEUNSPECIFIED,
        ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTUSERCHOICE,
        ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTENFORCED,
        ..
      ),

    -- * SecurityPosture_DevicePosture
    SecurityPosture_DevicePosture
      (
        SecurityPosture_DevicePosture_POSTUREUNSPECIFIED,
        SecurityPosture_DevicePosture_Secure',
        SecurityPosture_DevicePosture_ATRISK,
        SecurityPosture_DevicePosture_POTENTIALLYCOMPROMISED,
        ..
      ),

    -- * SigninDetail_AllowPersonalUsage
    SigninDetail_AllowPersonalUsage
      (
        SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
        SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED,
        SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
        SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS,
        ..
      ),

    -- * SigninDetail_DefaultStatus
    SigninDetail_DefaultStatus
      (
        SigninDetail_DefaultStatus_SIGNINDETAILDEFAULTSTATUSUNSPECIFIED,
        SigninDetail_DefaultStatus_SIGNINDETAILISDEFAULT,
        SigninDetail_DefaultStatus_SIGNINDETAILISNOTDEFAULT,
        ..
      ),

    -- * StartLostModeStatus_Status
    StartLostModeStatus_Status
      (
        StartLostModeStatus_Status_STATUSUNSPECIFIED,
        StartLostModeStatus_Status_Success,
        StartLostModeStatus_Status_RESETPASSWORDRECENTLY,
        StartLostModeStatus_Status_USEREXITLOSTMODERECENTLY,
        StartLostModeStatus_Status_ALREADYINLOSTMODE,
        ..
      ),

    -- * StopLostModeStatus_Status
    StopLostModeStatus_Status
      (
        StopLostModeStatus_Status_STATUSUNSPECIFIED,
        StopLostModeStatus_Status_Success,
        StopLostModeStatus_Status_NOTINLOSTMODE,
        ..
      ),

    -- * StopLostModeUserAttemptEvent_Status
    StopLostModeUserAttemptEvent_Status
      (
        StopLostModeUserAttemptEvent_Status_STATUSUNSPECIFIED,
        StopLostModeUserAttemptEvent_Status_ATTEMPTSUCCEEDED,
        StopLostModeUserAttemptEvent_Status_ATTEMPTFAILED,
        ..
      ),

    -- * SystemUpdate_Type
    SystemUpdate_Type
      (
        SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED,
        SystemUpdate_Type_Automatic,
        SystemUpdate_Type_Windowed,
        SystemUpdate_Type_Postpone,
        ..
      ),

    -- * SystemUpdateInfo_UpdateStatus
    SystemUpdateInfo_UpdateStatus
      (
        SystemUpdateInfo_UpdateStatus_UPDATESTATUSUNKNOWN,
        SystemUpdateInfo_UpdateStatus_UPTODATE,
        SystemUpdateInfo_UpdateStatus_UNKNOWNUPDATEAVAILABLE,
        SystemUpdateInfo_UpdateStatus_SECURITYUPDATEAVAILABLE,
        SystemUpdateInfo_UpdateStatus_OSUPDATEAVAILABLE,
        ..
      ),

    -- * UsageLog_EnabledLogTypesItem
    UsageLog_EnabledLogTypesItem
      (
        UsageLog_EnabledLogTypesItem_LOGTYPEUNSPECIFIED,
        UsageLog_EnabledLogTypesItem_SECURITYLOGS,
        UsageLog_EnabledLogTypesItem_NETWORKACTIVITYLOGS,
        ..
      ),

    -- * UsageLog_UploadOnCellularAllowedItem
    UsageLog_UploadOnCellularAllowedItem
      (
        UsageLog_UploadOnCellularAllowedItem_LOGTYPEUNSPECIFIED,
        UsageLog_UploadOnCellularAllowedItem_SECURITYLOGS,
        UsageLog_UploadOnCellularAllowedItem_NETWORKACTIVITYLOGS,
        ..
      ),

    -- * UsageLogEvent_EventType
    UsageLogEvent_EventType
      (
        UsageLogEvent_EventType_EVENTTYPEUNSPECIFIED,
        UsageLogEvent_EventType_ADBSHELLCOMMAND,
        UsageLogEvent_EventType_ADBSHELLINTERACTIVE,
        UsageLogEvent_EventType_APPPROCESSSTART,
        UsageLogEvent_EventType_KEYGUARDDISMISSED,
        UsageLogEvent_EventType_KEYGUARDDISMISSAUTHATTEMPT,
        UsageLogEvent_EventType_KEYGUARDSECURED,
        UsageLogEvent_EventType_FILEPULLED,
        UsageLogEvent_EventType_FILEPUSHED,
        UsageLogEvent_EventType_CERTAUTHORITYINSTALLED,
        UsageLogEvent_EventType_CERTAUTHORITYREMOVED,
        UsageLogEvent_EventType_CERTVALIDATIONFAILURE,
        UsageLogEvent_EventType_CRYPTOSELFTESTCOMPLETED,
        UsageLogEvent_EventType_KEYDESTRUCTION,
        UsageLogEvent_EventType_KEYGENERATED,
        UsageLogEvent_EventType_KEYIMPORT,
        UsageLogEvent_EventType_KEYINTEGRITYVIOLATION,
        UsageLogEvent_EventType_LOGGINGSTARTED,
        UsageLogEvent_EventType_LOGGINGSTOPPED,
        UsageLogEvent_EventType_LOGBUFFERSIZECRITICAL,
        UsageLogEvent_EventType_MEDIAMOUNT,
        UsageLogEvent_EventType_MEDIAUNMOUNT,
        UsageLogEvent_EventType_OSSHUTDOWN,
        UsageLogEvent_EventType_OSSTARTUP,
        UsageLogEvent_EventType_REMOTELOCK,
        UsageLogEvent_EventType_WIPEFAILURE,
        UsageLogEvent_EventType_Connect,
        UsageLogEvent_EventType_Dns,
        UsageLogEvent_EventType_STOPLOSTMODEUSERATTEMPT,
        UsageLogEvent_EventType_LOSTMODEOUTGOINGPHONECALL,
        UsageLogEvent_EventType_LOSTMODELOCATION,
        UsageLogEvent_EventType_ENROLLMENTCOMPLETE,
        ..
      ),

    -- * WebApp_DisplayMode
    WebApp_DisplayMode
      (
        WebApp_DisplayMode_DISPLAYMODEUNSPECIFIED,
        WebApp_DisplayMode_MINIMALUI,
        WebApp_DisplayMode_Standalone,
        WebApp_DisplayMode_FULLSCREEN,
        ..
      ),

    -- * WebToken_EnabledFeaturesItem
    WebToken_EnabledFeaturesItem
      (
        WebToken_EnabledFeaturesItem_FEATUREUNSPECIFIED,
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
      (
        WebToken_PermissionsItem_WEBTOKENPERMISSIONUNSPECIFIED,
        WebToken_PermissionsItem_APPROVEAPPS,
        ..
      ),

    -- * WifiRoamingSetting_WifiRoamingMode
    WifiRoamingSetting_WifiRoamingMode
      (
        WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGMODEUNSPECIFIED,
        WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDISABLED,
        WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDEFAULT,
        WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGAGGRESSIVE,
        ..
      ),

    -- * WifiSsidPolicy_WifiSsidPolicyType
    WifiSsidPolicy_WifiSsidPolicyType
      (
        WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDPOLICYTYPEUNSPECIFIED,
        WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDDENYLIST,
        WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDALLOWLIST,
        ..
      ),

    -- * EnterprisesDevicesDeleteWipeDataFlags
    EnterprisesDevicesDeleteWipeDataFlags
      (
        EnterprisesDevicesDeleteWipeDataFlags_WIPEDATAFLAGUNSPECIFIED,
        EnterprisesDevicesDeleteWipeDataFlags_PRESERVERESETPROTECTIONDATA,
        EnterprisesDevicesDeleteWipeDataFlags_WIPEEXTERNALSTORAGE,
        ..
      ),

    -- * EnterprisesListView
    EnterprisesListView
      (
        EnterprisesListView_ENTERPRISEVIEWUNSPECIFIED,
        EnterprisesListView_Basic,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Controls Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https:\/\/www.commoncriteriaportal.org\/) (CC). Enabling Common Criteria Mode increases certain security components on a device, see CommonCriteriaMode for details.Warning: Common Criteria Mode enforces a strict security model typically only required for IT products used in national security systems and other highly sensitive organizations. Standard device use may be affected. Only enabled if required. If Common Criteria Mode is turned off after being enabled previously, all user-configured Wi-Fi networks may be lost and any enterprise-configured Wi-Fi networks that require user input may need to be reconfigured.
newtype AdvancedSecurityOverrides_CommonCriteriaMode = AdvancedSecurityOverrides_CommonCriteriaMode { fromAdvancedSecurityOverrides_CommonCriteriaMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  AdvancedSecurityOverrides_CommonCriteriaMode #-}

-- | Optional. Controls whether content protection, which scans for deceptive apps, is enabled. This is supported on Android 15 and above.
newtype AdvancedSecurityOverrides_ContentProtectionPolicy = AdvancedSecurityOverrides_ContentProtectionPolicy { fromAdvancedSecurityOverrides_ContentProtectionPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to CONTENT/PROTECTION/DISABLED.
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONPOLICYUNSPECIFIED :: AdvancedSecurityOverrides_ContentProtectionPolicy
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONPOLICYUNSPECIFIED = AdvancedSecurityOverrides_ContentProtectionPolicy "CONTENT_PROTECTION_POLICY_UNSPECIFIED"

-- | Content protection is disabled and the user cannot change this.
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONDISABLED :: AdvancedSecurityOverrides_ContentProtectionPolicy
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONDISABLED = AdvancedSecurityOverrides_ContentProtectionPolicy "CONTENT_PROTECTION_DISABLED"

-- | Content protection is enabled and the user cannot change this.Supported on Android 15 and above. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 15.
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONENFORCED :: AdvancedSecurityOverrides_ContentProtectionPolicy
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONENFORCED = AdvancedSecurityOverrides_ContentProtectionPolicy "CONTENT_PROTECTION_ENFORCED"

-- | Content protection is not controlled by the policy. The user is allowed to choose the behavior of content protection.Supported on Android 15 and above. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 15.
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONUSERCHOICE :: AdvancedSecurityOverrides_ContentProtectionPolicy
pattern AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONUSERCHOICE = AdvancedSecurityOverrides_ContentProtectionPolicy "CONTENT_PROTECTION_USER_CHOICE"

{-# COMPLETE
  AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONPOLICYUNSPECIFIED,
  AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONDISABLED,
  AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONENFORCED,
  AdvancedSecurityOverrides_ContentProtectionPolicy_CONTENTPROTECTIONUSERCHOICE,
  AdvancedSecurityOverrides_ContentProtectionPolicy #-}

-- | Controls access to developer settings: developer options and safe boot. Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed (deprecated).
newtype AdvancedSecurityOverrides_DeveloperSettings = AdvancedSecurityOverrides_DeveloperSettings { fromAdvancedSecurityOverrides_DeveloperSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  AdvancedSecurityOverrides_DeveloperSettings #-}

-- | Whether Google Play Protect verification (https:\/\/support.google.com\/accounts\/answer\/2812853) is enforced. Replaces ensureVerifyAppsEnabled (deprecated).
newtype AdvancedSecurityOverrides_GooglePlayProtectVerifyApps = AdvancedSecurityOverrides_GooglePlayProtectVerifyApps { fromAdvancedSecurityOverrides_GooglePlayProtectVerifyApps :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  AdvancedSecurityOverrides_GooglePlayProtectVerifyApps #-}

-- | Optional. Controls Memory Tagging Extension (MTE) (https:\/\/source.android.com\/docs\/security\/test\/memory-safety\/arm-mte) on the device. The device needs to be rebooted to apply changes to the MTE policy.
newtype AdvancedSecurityOverrides_MtePolicy = AdvancedSecurityOverrides_MtePolicy { fromAdvancedSecurityOverrides_MtePolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to MTE/USER/CHOICE.
pattern AdvancedSecurityOverrides_MtePolicy_MTEPOLICYUNSPECIFIED :: AdvancedSecurityOverrides_MtePolicy
pattern AdvancedSecurityOverrides_MtePolicy_MTEPOLICYUNSPECIFIED = AdvancedSecurityOverrides_MtePolicy "MTE_POLICY_UNSPECIFIED"

-- | The user can choose to enable or disable MTE on the device if the device supports this.
pattern AdvancedSecurityOverrides_MtePolicy_MTEUSERCHOICE :: AdvancedSecurityOverrides_MtePolicy
pattern AdvancedSecurityOverrides_MtePolicy_MTEUSERCHOICE = AdvancedSecurityOverrides_MtePolicy "MTE_USER_CHOICE"

-- | MTE is enabled on the device and the user is not allowed to change this setting. This can be set on fully managed devices and work profiles on company-owned devices. A nonComplianceDetail with MANAGEMENT/MODE is reported for other management modes. A nonComplianceDetail with DEVICE/INCOMPATIBLE is reported if the device does not support MTE.Supported on Android 14 and above. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 14.
pattern AdvancedSecurityOverrides_MtePolicy_MTEENFORCED :: AdvancedSecurityOverrides_MtePolicy
pattern AdvancedSecurityOverrides_MtePolicy_MTEENFORCED = AdvancedSecurityOverrides_MtePolicy "MTE_ENFORCED"

-- | MTE is disabled on the device and the user is not allowed to change this setting. This applies only on fully managed devices. In other cases, a nonComplianceDetail with MANAGEMENT/MODE is reported. A nonComplianceDetail with DEVICE/INCOMPATIBLE is reported if the device does not support MTE.Supported on Android 14 and above. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 14.
pattern AdvancedSecurityOverrides_MtePolicy_MTEDISABLED :: AdvancedSecurityOverrides_MtePolicy
pattern AdvancedSecurityOverrides_MtePolicy_MTEDISABLED = AdvancedSecurityOverrides_MtePolicy "MTE_DISABLED"

{-# COMPLETE
  AdvancedSecurityOverrides_MtePolicy_MTEPOLICYUNSPECIFIED,
  AdvancedSecurityOverrides_MtePolicy_MTEUSERCHOICE,
  AdvancedSecurityOverrides_MtePolicy_MTEENFORCED,
  AdvancedSecurityOverrides_MtePolicy_MTEDISABLED,
  AdvancedSecurityOverrides_MtePolicy #-}

-- | The policy for untrusted apps (apps from unknown sources) enforced on the device. Replaces install/unknown/sources_allowed (deprecated).
newtype AdvancedSecurityOverrides_UntrustedAppsPolicy = AdvancedSecurityOverrides_UntrustedAppsPolicy { fromAdvancedSecurityOverrides_UntrustedAppsPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  AdvancedSecurityOverrides_UntrustedAppsPolicy #-}

-- | Whether this app is free, free with in-app purchases, or paid. If the pricing is unspecified, this means the app is not generally available anymore (even though it might still be available to people who own it).
newtype Application_AppPricing = Application_AppPricing { fromApplication_AppPricing :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Application_AppPricing #-}

-- | The content rating for this app.
newtype Application_ContentRating = Application_ContentRating { fromApplication_ContentRating :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Application_ContentRating #-}

-- | How and to whom the package is made available.
newtype Application_DistributionChannel = Application_DistributionChannel { fromApplication_DistributionChannel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Application_DistributionChannel #-}

newtype Application_FeaturesItem = Application_FeaturesItem { fromApplication_FeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Application_FeaturesItem #-}

-- | App event type.
newtype ApplicationEvent_EventType = ApplicationEvent_EventType { fromApplicationEvent_EventType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ApplicationEvent_EventType #-}

-- | Specifies whether the app is allowed networking when the VPN is not connected and alwaysOnVpnPackage.lockdownEnabled is enabled. If set to VPN/LOCKDOWN/ENFORCED, the app is not allowed networking, and if set to VPN/LOCKDOWN/EXEMPTION, the app is allowed networking. Only supported on devices running Android 10 and above. If this is not supported by the device, the device will contain a NonComplianceDetail with non/compliance/reason set to API/LEVEL and a fieldPath. If this is not applicable to the app, the device will contain a NonComplianceDetail with non/compliance_reason set to UNSUPPORTED and a fieldPath. The fieldPath is set to applications[i].alwaysOnVpnLockdownExemption, where i is the index of the package in the applications policy.
newtype ApplicationPolicy_AlwaysOnVpnLockdownExemption = ApplicationPolicy_AlwaysOnVpnLockdownExemption { fromApplicationPolicy_AlwaysOnVpnLockdownExemption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to VPN/LOCKDOWN/ENFORCED.
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_ALWAYSONVPNLOCKDOWNEXEMPTIONUNSPECIFIED :: ApplicationPolicy_AlwaysOnVpnLockdownExemption
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_ALWAYSONVPNLOCKDOWNEXEMPTIONUNSPECIFIED = ApplicationPolicy_AlwaysOnVpnLockdownExemption "ALWAYS_ON_VPN_LOCKDOWN_EXEMPTION_UNSPECIFIED"

-- | The app respects the always-on VPN lockdown setting.
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNENFORCED :: ApplicationPolicy_AlwaysOnVpnLockdownExemption
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNENFORCED = ApplicationPolicy_AlwaysOnVpnLockdownExemption "VPN_LOCKDOWN_ENFORCED"

-- | The app is exempt from the always-on VPN lockdown setting.
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNEXEMPTION :: ApplicationPolicy_AlwaysOnVpnLockdownExemption
pattern ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNEXEMPTION = ApplicationPolicy_AlwaysOnVpnLockdownExemption "VPN_LOCKDOWN_EXEMPTION"

{-# COMPLETE
  ApplicationPolicy_AlwaysOnVpnLockdownExemption_ALWAYSONVPNLOCKDOWNEXEMPTIONUNSPECIFIED,
  ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNENFORCED,
  ApplicationPolicy_AlwaysOnVpnLockdownExemption_VPNLOCKDOWNEXEMPTION,
  ApplicationPolicy_AlwaysOnVpnLockdownExemption #-}

-- | Controls the auto-update mode for the app.
newtype ApplicationPolicy_AutoUpdateMode = ApplicationPolicy_AutoUpdateMode { fromApplicationPolicy_AutoUpdateMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to AUTO/UPDATE/DEFAULT.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_MODE_UNSPECIFIED"

-- | The default update mode.The app is automatically updated with low priority to minimize the impact on the user.The app is updated when all of the following constraints are met: The device is not actively used. The device is connected to an unmetered network. The device is charging. The app to be updated is not running in the foreground.The device is notified about a new update within 24 hours after it is published by the developer, after which the app is updated the next time the constraints above are met.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_DEFAULT"

-- | The app is not automatically updated for a maximum of 90 days after the app becomes out of date.90 days after the app becomes out of date, the latest available version is installed automatically with low priority (see AUTO/UPDATE/DEFAULT). After the app is updated it is not automatically updated again until 90 days after it becomes out of date again.The user can still manually update the app from the Play Store at any time.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_POSTPONED"

-- | The app is updated as soon as possible. No constraints are applied.The device is notified as soon as possible about a new update after it becomes available./NOTE:/ Updates to apps with larger deployments across Android\'s ecosystem can take up to 24h.
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY :: ApplicationPolicy_AutoUpdateMode
pattern ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY = ApplicationPolicy_AutoUpdateMode "AUTO_UPDATE_HIGH_PRIORITY"

{-# COMPLETE
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEMODEUNSPECIFIED,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEDEFAULT,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEPOSTPONED,
  ApplicationPolicy_AutoUpdateMode_AUTOUPDATEHIGHPRIORITY,
  ApplicationPolicy_AutoUpdateMode #-}

-- | Controls whether the app can communicate with itself across a device’s work and personal profiles, subject to user consent.
newtype ApplicationPolicy_ConnectedWorkAndPersonalApp = ApplicationPolicy_ConnectedWorkAndPersonalApp { fromApplicationPolicy_ConnectedWorkAndPersonalApp :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ApplicationPolicy_ConnectedWorkAndPersonalApp #-}

-- | Optional. Whether the app is allowed to act as a credential provider on Android 14 and above.
newtype ApplicationPolicy_CredentialProviderPolicy = ApplicationPolicy_CredentialProviderPolicy { fromApplicationPolicy_CredentialProviderPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. The behaviour is governed by credentialProviderPolicyDefault.
pattern ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERPOLICYUNSPECIFIED :: ApplicationPolicy_CredentialProviderPolicy
pattern ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERPOLICYUNSPECIFIED = ApplicationPolicy_CredentialProviderPolicy "CREDENTIAL_PROVIDER_POLICY_UNSPECIFIED"

-- | App is allowed to act as a credential provider.
pattern ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERALLOWED :: ApplicationPolicy_CredentialProviderPolicy
pattern ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERALLOWED = ApplicationPolicy_CredentialProviderPolicy "CREDENTIAL_PROVIDER_ALLOWED"

{-# COMPLETE
  ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERPOLICYUNSPECIFIED,
  ApplicationPolicy_CredentialProviderPolicy_CREDENTIALPROVIDERALLOWED,
  ApplicationPolicy_CredentialProviderPolicy #-}

-- | The default policy for all permissions requested by the app. If specified, this overrides the policy-level default/permission/policy which applies to all apps. It does not override the permission_grants which applies to all apps.
newtype ApplicationPolicy_DefaultPermissionPolicy = ApplicationPolicy_DefaultPermissionPolicy { fromApplicationPolicy_DefaultPermissionPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED = ApplicationPolicy_DefaultPermissionPolicy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern ApplicationPolicy_DefaultPermissionPolicy_Prompt :: ApplicationPolicy_DefaultPermissionPolicy
pattern ApplicationPolicy_DefaultPermissionPolicy_Prompt = ApplicationPolicy_DefaultPermissionPolicy "PROMPT"

-- | Automatically grant a permission.On Android 12 and above, READ/SMS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#READ/SMS) and following sensor-related permissions can only be granted on fully managed devices: ACCESS/FINE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/FINE/LOCATION) ACCESS/BACKGROUND/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/BACKGROUND/LOCATION) ACCESS/COARSE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/COARSE/LOCATION) CAMERA (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#CAMERA) RECORD/AUDIO (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#RECORD/AUDIO) ACTIVITY/RECOGNITION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACTIVITY/RECOGNITION) BODY/SENSORS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#BODY/SENSORS)
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
  ApplicationPolicy_DefaultPermissionPolicy #-}

newtype ApplicationPolicy_DelegatedScopesItem = ApplicationPolicy_DelegatedScopesItem { fromApplicationPolicy_DelegatedScopesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No delegation scope specified.
pattern ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED = ApplicationPolicy_DelegatedScopesItem "DELEGATED_SCOPE_UNSPECIFIED"

-- | Grants access to certificate installation and management. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_CERTINSTALL :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_CERTINSTALL = ApplicationPolicy_DelegatedScopesItem "CERT_INSTALL"

-- | Grants access to managed configurations management. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS = ApplicationPolicy_DelegatedScopesItem "MANAGED_CONFIGURATIONS"

-- | Grants access to blocking uninstallation. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL = ApplicationPolicy_DelegatedScopesItem "BLOCK_UNINSTALL"

-- | Grants access to permission policy and permission grant state. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT = ApplicationPolicy_DelegatedScopesItem "PERMISSION_GRANT"

-- | Grants access to package access state. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS = ApplicationPolicy_DelegatedScopesItem "PACKAGE_ACCESS"

-- | Grants access for enabling system apps. This scope can be delegated to multiple applications.
pattern ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP = ApplicationPolicy_DelegatedScopesItem "ENABLE_SYSTEM_APP"

-- | Grants access to network activity logs. Allows the delegated application to call setNetworkLoggingEnabled (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#setNetworkLoggingEnabled%28android.content.ComponentName,%20boolean%29), isNetworkLoggingEnabled (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#isNetworkLoggingEnabled%28android.content.ComponentName%29) and retrieveNetworkLogs (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#retrieveNetworkLogs%28android.content.ComponentName,%20long%29) methods. This scope can be delegated to at most one application. Supported for fully managed devices on Android 10 and above. Supported for a work profile on Android 12 and above. When delegation is supported and set, NETWORK/ACTIVITY/LOGS is ignored.
pattern ApplicationPolicy_DelegatedScopesItem_NETWORKACTIVITYLOGS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_NETWORKACTIVITYLOGS = ApplicationPolicy_DelegatedScopesItem "NETWORK_ACTIVITY_LOGS"

-- | Grants access to security logs. Allows the delegated application to call setSecurityLoggingEnabled (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#setSecurityLoggingEnabled%28android.content.ComponentName,%20boolean%29), isSecurityLoggingEnabled (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#isSecurityLoggingEnabled%28android.content.ComponentName%29), retrieveSecurityLogs (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#retrieveSecurityLogs%28android.content.ComponentName%29) and retrievePreRebootSecurityLogs (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#retrievePreRebootSecurityLogs%28android.content.ComponentName%29) methods. This scope can be delegated to at most one application. Supported for fully managed devices and company-owned devices with a work profile on Android 12 and above. When delegation is supported and set, SECURITY_LOGS is ignored.
pattern ApplicationPolicy_DelegatedScopesItem_SECURITYLOGS :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_SECURITYLOGS = ApplicationPolicy_DelegatedScopesItem "SECURITY_LOGS"

-- | Grants access to selection of KeyChain certificates on behalf of requesting apps. Once granted, the delegated application will start receiving DelegatedAdminReceiver#onChoosePrivateKeyAlias (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DelegatedAdminReceiver#onChoosePrivateKeyAlias%28android.content.Context,%20android.content.Intent,%20int,%20android.net.Uri,%20java.lang.String%29). Allows the delegated application to call grantKeyPairToApp (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#grantKeyPairToApp%28android.content.ComponentName,%20java.lang.String,%20java.lang.String%29) and revokeKeyPairFromApp (https:\/\/developer.android.com\/reference\/android\/app\/admin\/DevicePolicyManager#revokeKeyPairFromApp%28android.content.ComponentName,%20java.lang.String,%20java.lang.String%29) methods. This scope can be delegated to at most one application. choosePrivateKeyRules must be empty and privateKeySelectionEnabled has no effect if certificate selection
-- is delegated to an application.
pattern ApplicationPolicy_DelegatedScopesItem_CERTSELECTION :: ApplicationPolicy_DelegatedScopesItem
pattern ApplicationPolicy_DelegatedScopesItem_CERTSELECTION = ApplicationPolicy_DelegatedScopesItem "CERT_SELECTION"

{-# COMPLETE
  ApplicationPolicy_DelegatedScopesItem_DELEGATEDSCOPEUNSPECIFIED,
  ApplicationPolicy_DelegatedScopesItem_CERTINSTALL,
  ApplicationPolicy_DelegatedScopesItem_MANAGEDCONFIGURATIONS,
  ApplicationPolicy_DelegatedScopesItem_BLOCKUNINSTALL,
  ApplicationPolicy_DelegatedScopesItem_PERMISSIONGRANT,
  ApplicationPolicy_DelegatedScopesItem_PACKAGEACCESS,
  ApplicationPolicy_DelegatedScopesItem_ENABLESYSTEMAPP,
  ApplicationPolicy_DelegatedScopesItem_NETWORKACTIVITYLOGS,
  ApplicationPolicy_DelegatedScopesItem_SECURITYLOGS,
  ApplicationPolicy_DelegatedScopesItem_CERTSELECTION,
  ApplicationPolicy_DelegatedScopesItem #-}

-- | The type of installation to perform.
newtype ApplicationPolicy_InstallType = ApplicationPolicy_InstallType { fromApplicationPolicy_InstallType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to AVAILABLE.
pattern ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED = ApplicationPolicy_InstallType "INSTALL_TYPE_UNSPECIFIED"

-- | The app is automatically installed and can be removed by the user.
pattern ApplicationPolicy_InstallType_Preinstalled :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_Preinstalled = ApplicationPolicy_InstallType "PREINSTALLED"

-- | The app is automatically installed regardless of a set maintenance window and can\'t be removed by the user.
pattern ApplicationPolicy_InstallType_FORCEINSTALLED :: ApplicationPolicy_InstallType
pattern ApplicationPolicy_InstallType_FORCEINSTALLED = ApplicationPolicy_InstallType "FORCE_INSTALLED"

-- | The app is blocked and can\'t be installed. If the app was installed under a previous policy, it will be uninstalled. This also blocks its instant app functionality.
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
  ApplicationPolicy_InstallType #-}

-- | Optional. Specifies whether user control is permitted for the app. User control includes user actions like force-stopping and clearing app data. Supported on Android 11 and above.
newtype ApplicationPolicy_UserControlSettings = ApplicationPolicy_UserControlSettings { fromApplicationPolicy_UserControlSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Uses the default behaviour of the app to determine if user control is allowed or disallowed. For most apps, user control is allowed by default, but for some critical apps such as companion apps (extensionConfig set to true), kiosk apps and other critical system apps, user control is disallowed.
pattern ApplicationPolicy_UserControlSettings_USERCONTROLSETTINGSUNSPECIFIED :: ApplicationPolicy_UserControlSettings
pattern ApplicationPolicy_UserControlSettings_USERCONTROLSETTINGSUNSPECIFIED = ApplicationPolicy_UserControlSettings "USER_CONTROL_SETTINGS_UNSPECIFIED"

-- | User control is allowed for the app. Kiosk apps can use this to allow user control.
pattern ApplicationPolicy_UserControlSettings_USERCONTROLALLOWED :: ApplicationPolicy_UserControlSettings
pattern ApplicationPolicy_UserControlSettings_USERCONTROLALLOWED = ApplicationPolicy_UserControlSettings "USER_CONTROL_ALLOWED"

-- | User control is disallowed for the app. API_LEVEL is reported if the Android version is less than 11.
pattern ApplicationPolicy_UserControlSettings_USERCONTROLDISALLOWED :: ApplicationPolicy_UserControlSettings
pattern ApplicationPolicy_UserControlSettings_USERCONTROLDISALLOWED = ApplicationPolicy_UserControlSettings "USER_CONTROL_DISALLOWED"

{-# COMPLETE
  ApplicationPolicy_UserControlSettings_USERCONTROLSETTINGSUNSPECIFIED,
  ApplicationPolicy_UserControlSettings_USERCONTROLALLOWED,
  ApplicationPolicy_UserControlSettings_USERCONTROLDISALLOWED,
  ApplicationPolicy_UserControlSettings #-}

-- | Specifies whether the app installed in the work profile is allowed to add widgets to the home screen.
newtype ApplicationPolicy_WorkProfileWidgets = ApplicationPolicy_WorkProfileWidgets { fromApplicationPolicy_WorkProfileWidgets :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to work/profile/widgets_default
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSUNSPECIFIED :: ApplicationPolicy_WorkProfileWidgets
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSUNSPECIFIED = ApplicationPolicy_WorkProfileWidgets "WORK_PROFILE_WIDGETS_UNSPECIFIED"

-- | Work profile widgets are allowed. This means the application will be able to add widgets to the home screen.
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSALLOWED :: ApplicationPolicy_WorkProfileWidgets
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSALLOWED = ApplicationPolicy_WorkProfileWidgets "WORK_PROFILE_WIDGETS_ALLOWED"

-- | Work profile widgets are disallowed. This means the application will not be able to add widgets to the home screen.
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSDISALLOWED :: ApplicationPolicy_WorkProfileWidgets
pattern ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSDISALLOWED = ApplicationPolicy_WorkProfileWidgets "WORK_PROFILE_WIDGETS_DISALLOWED"

{-# COMPLETE
  ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSUNSPECIFIED,
  ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSALLOWED,
  ApplicationPolicy_WorkProfileWidgets_WORKPROFILEWIDGETSDISALLOWED,
  ApplicationPolicy_WorkProfileWidgets #-}

-- | The source of the package.
newtype ApplicationReport_ApplicationSource = ApplicationReport_ApplicationSource { fromApplicationReport_ApplicationSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ApplicationReport_ApplicationSource #-}

-- | Application state.
newtype ApplicationReport_State = ApplicationReport_State { fromApplicationReport_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ApplicationReport_State #-}

-- | Whether the app is user facing.
newtype ApplicationReport_UserFacingType = ApplicationReport_UserFacingType { fromApplicationReport_UserFacingType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | App user facing type is unspecified.
pattern ApplicationReport_UserFacingType_USERFACINGTYPEUNSPECIFIED :: ApplicationReport_UserFacingType
pattern ApplicationReport_UserFacingType_USERFACINGTYPEUNSPECIFIED = ApplicationReport_UserFacingType "USER_FACING_TYPE_UNSPECIFIED"

-- | App is not user facing.
pattern ApplicationReport_UserFacingType_NOTUSERFACING :: ApplicationReport_UserFacingType
pattern ApplicationReport_UserFacingType_NOTUSERFACING = ApplicationReport_UserFacingType "NOT_USER_FACING"

-- | App is user facing.
pattern ApplicationReport_UserFacingType_USERFACING :: ApplicationReport_UserFacingType
pattern ApplicationReport_UserFacingType_USERFACING = ApplicationReport_UserFacingType "USER_FACING"

{-# COMPLETE
  ApplicationReport_UserFacingType_USERFACINGTYPEUNSPECIFIED,
  ApplicationReport_UserFacingType_NOTUSERFACING,
  ApplicationReport_UserFacingType_USERFACING,
  ApplicationReport_UserFacingType #-}

-- | Specifies the scope of this BlockAction. Only applicable to devices that are company-owned.
newtype BlockAction_BlockScope = BlockAction_BlockScope { fromBlockAction_BlockScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  BlockAction_BlockScope #-}

-- | If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller.
newtype Command_ErrorCode = Command_ErrorCode { fromCommand_ErrorCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Command_ErrorCode #-}

newtype Command_ResetPasswordFlagsItem = Command_ResetPasswordFlagsItem { fromCommand_ResetPasswordFlagsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Command_ResetPasswordFlagsItem #-}

-- | The type of the command.
newtype Command_Type = Command_Type { fromCommand_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | Clears the application data of specified apps. This is supported on Android 9 and above. Note that an application can store data outside of its application data, for example in external storage or in a user dictionary. See also clear/apps/data_params.
pattern Command_Type_CLEARAPPDATA :: Command_Type
pattern Command_Type_CLEARAPPDATA = Command_Type "CLEAR_APP_DATA"

-- | Puts the device into lost mode. Only supported on fully managed devices or organization-owned devices with a managed profile. See also start/lost/mode_params.
pattern Command_Type_STARTLOSTMODE :: Command_Type
pattern Command_Type_STARTLOSTMODE = Command_Type "START_LOST_MODE"

-- | Takes the device out of lost mode. Only supported on fully managed devices or organization-owned devices with a managed profile. See also stop/lost/mode_params.
pattern Command_Type_STOPLOSTMODE :: Command_Type
pattern Command_Type_STOPLOSTMODE = Command_Type "STOP_LOST_MODE"

{-# COMPLETE
  Command_Type_COMMANDTYPEUNSPECIFIED,
  Command_Type_Lock,
  Command_Type_RESETPASSWORD,
  Command_Type_Reboot,
  Command_Type_RELINQUISHOWNERSHIP,
  Command_Type_CLEARAPPDATA,
  Command_Type_STARTLOSTMODE,
  Command_Type_STOPLOSTMODE,
  Command_Type #-}

-- | Whether Common Criteria Mode is enabled.
newtype CommonCriteriaModeInfo_CommonCriteriaModeStatus = CommonCriteriaModeInfo_CommonCriteriaModeStatus { fromCommonCriteriaModeInfo_CommonCriteriaModeStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  CommonCriteriaModeInfo_CommonCriteriaModeStatus #-}

-- | Output only. The status of policy signature verification.
newtype CommonCriteriaModeInfo_PolicySignatureVerificationStatus = CommonCriteriaModeInfo_PolicySignatureVerificationStatus { fromCommonCriteriaModeInfo_PolicySignatureVerificationStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. The verification status has not been reported. This is set only if statusReportingSettings.commonCriteriaModeEnabled is false.
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSTATUSUNSPECIFIED :: CommonCriteriaModeInfo_PolicySignatureVerificationStatus
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSTATUSUNSPECIFIED = CommonCriteriaModeInfo_PolicySignatureVerificationStatus "POLICY_SIGNATURE_VERIFICATION_STATUS_UNSPECIFIED"

-- | Policy signature verification is disabled on the device as common/criteria/mode is set to false.
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONDISABLED :: CommonCriteriaModeInfo_PolicySignatureVerificationStatus
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONDISABLED = CommonCriteriaModeInfo_PolicySignatureVerificationStatus "POLICY_SIGNATURE_VERIFICATION_DISABLED"

-- | Policy signature verification succeeded.
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSUCCEEDED :: CommonCriteriaModeInfo_PolicySignatureVerificationStatus
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSUCCEEDED = CommonCriteriaModeInfo_PolicySignatureVerificationStatus "POLICY_SIGNATURE_VERIFICATION_SUCCEEDED"

-- | Policy signature verification is not supported, e.g. because the device has been enrolled with a CloudDPC version that does not support the policy signature verification.
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONNOTSUPPORTED :: CommonCriteriaModeInfo_PolicySignatureVerificationStatus
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONNOTSUPPORTED = CommonCriteriaModeInfo_PolicySignatureVerificationStatus "POLICY_SIGNATURE_VERIFICATION_NOT_SUPPORTED"

-- | The policy signature verification failed. The policy has not been applied.
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONFAILED :: CommonCriteriaModeInfo_PolicySignatureVerificationStatus
pattern CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONFAILED = CommonCriteriaModeInfo_PolicySignatureVerificationStatus "POLICY_SIGNATURE_VERIFICATION_FAILED"

{-# COMPLETE
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSTATUSUNSPECIFIED,
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONDISABLED,
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONSUCCEEDED,
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONNOTSUPPORTED,
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus_POLICYSIGNATUREVERIFICATIONFAILED,
  CommonCriteriaModeInfo_PolicySignatureVerificationStatus #-}

-- | Whether text copied from one profile (personal or work) can be pasted in the other profile.
newtype CrossProfilePolicies_CrossProfileCopyPaste = CrossProfilePolicies_CrossProfileCopyPaste { fromCrossProfilePolicies_CrossProfileCopyPaste :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  CrossProfilePolicies_CrossProfileCopyPaste #-}

-- | Whether data from one profile (personal or work) can be shared with apps in the other profile. Specifically controls simple data sharing via intents. Management of other cross-profile communication channels, such as contact search, copy\/paste, or connected work & personal apps, are configured separately.
newtype CrossProfilePolicies_CrossProfileDataSharing = CrossProfilePolicies_CrossProfileDataSharing { fromCrossProfilePolicies_CrossProfileDataSharing :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  CrossProfilePolicies_CrossProfileDataSharing #-}

-- | Whether personal apps can access contacts stored in the work profile.See also exemptions/to/show/work/contacts/in/personal_profile.
newtype CrossProfilePolicies_ShowWorkContactsInPersonalProfile = CrossProfilePolicies_ShowWorkContactsInPersonalProfile { fromCrossProfilePolicies_ShowWorkContactsInPersonalProfile :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to SHOW/WORK/CONTACTS/IN/PERSONAL/PROFILE/ALLOWED.When this is set, exemptions/to/show/work/contacts/in/personal_profile must not be set.
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_UNSPECIFIED"

-- | Prevents personal apps from accessing work profile contacts and looking up work contacts.When this is set, personal apps specified in exemptions/to/show/work/contacts/in/personal/profile are allowlisted and can access work profile contacts directly.Supported on Android 7.0 and above. A nonComplianceDetail with API/LEVEL is reported if the Android version is less than 7.0.
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED"

-- | Default. Allows apps in the personal profile to access work profile contacts including contact searches and incoming calls.When this is set, personal apps specified in exemptions/to/show/work/contacts/in/personal/profile are blocklisted and can not access work profile contacts directly.Supported on Android 7.0 and above. A nonComplianceDetail with API/LEVEL is reported if the Android version is less than 7.0.
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED"

-- | Prevents most personal apps from accessing work profile contacts including contact searches and incoming calls, except for the OEM default Dialer, Messages, and Contacts apps. Neither user-configured Dialer, Messages, and Contacts apps, nor any other system or play installed apps, will be able to query work contacts directly.When this is set, personal apps specified in exemptions/to/show/work/contacts/in/personal/profile are allowlisted and can access work profile contacts.Supported on Android 14 and above. If this is set on a device with Android version less than 14, the behaviour falls back to SHOW/WORK/CONTACTS/IN/PERSONAL/PROFILE/DISALLOWED and a nonComplianceDetail with API/LEVEL is reported.
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWEDEXCEPTSYSTEM :: CrossProfilePolicies_ShowWorkContactsInPersonalProfile
pattern CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWEDEXCEPTSYSTEM = CrossProfilePolicies_ShowWorkContactsInPersonalProfile "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED_EXCEPT_SYSTEM"

{-# COMPLETE
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEUNSPECIFIED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEALLOWED,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile_SHOWWORKCONTACTSINPERSONALPROFILEDISALLOWEDEXCEPTSYSTEM,
  CrossProfilePolicies_ShowWorkContactsInPersonalProfile #-}

-- | Specifies the default behaviour for work profile widgets. If the policy does not specify work/profile/widgets for a specific application, it will behave according to the value specified here.
newtype CrossProfilePolicies_WorkProfileWidgetsDefault = CrossProfilePolicies_WorkProfileWidgetsDefault { fromCrossProfilePolicies_WorkProfileWidgetsDefault :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to WORK/PROFILE/WIDGETS/DEFAULT/DISALLOWED.
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTUNSPECIFIED :: CrossProfilePolicies_WorkProfileWidgetsDefault
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTUNSPECIFIED = CrossProfilePolicies_WorkProfileWidgetsDefault "WORK_PROFILE_WIDGETS_DEFAULT_UNSPECIFIED"

-- | Work profile widgets are allowed by default. This means that if the policy does not specify work/profile/widgets as WORK/PROFILE/WIDGETS_DISALLOWED for the application, it will be able to add widgets to the home screen.
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTALLOWED :: CrossProfilePolicies_WorkProfileWidgetsDefault
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTALLOWED = CrossProfilePolicies_WorkProfileWidgetsDefault "WORK_PROFILE_WIDGETS_DEFAULT_ALLOWED"

-- | Work profile widgets are disallowed by default. This means that if the policy does not specify work/profile/widgets as WORK/PROFILE/WIDGETS_ALLOWED for the application, it will be unable to add widgets to the home screen.
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTDISALLOWED :: CrossProfilePolicies_WorkProfileWidgetsDefault
pattern CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTDISALLOWED = CrossProfilePolicies_WorkProfileWidgetsDefault "WORK_PROFILE_WIDGETS_DEFAULT_DISALLOWED"

{-# COMPLETE
  CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTUNSPECIFIED,
  CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTALLOWED,
  CrossProfilePolicies_WorkProfileWidgetsDefault_WORKPROFILEWIDGETSDEFAULTDISALLOWED,
  CrossProfilePolicies_WorkProfileWidgetsDefault #-}

-- | The state currently applied to the device.
newtype Device_AppliedState = Device_AppliedState { fromDevice_AppliedState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | The device is lost. This state is only possible on organization-owned devices.
pattern Device_AppliedState_Lost :: Device_AppliedState
pattern Device_AppliedState_Lost = Device_AppliedState "LOST"

-- | The device is preparing for migrating to Android Management API. No further action is needed for the migration to continue.
pattern Device_AppliedState_PREPARINGFORMIGRATION :: Device_AppliedState
pattern Device_AppliedState_PREPARINGFORMIGRATION = Device_AppliedState "PREPARING_FOR_MIGRATION"

-- | This is a financed device that has been \"locked\" by the financing agent. This means certain policy settings have been applied which limit device functionality until the device has been \"unlocked\" by the financing agent. The device will continue to apply policy settings excluding those overridden by the financing agent. When the device is \"locked\", the state is reported in appliedState as DEACTIVATED/BY/DEVICE_FINANCE.
pattern Device_AppliedState_DEACTIVATEDBYDEVICEFINANCE :: Device_AppliedState
pattern Device_AppliedState_DEACTIVATEDBYDEVICEFINANCE = Device_AppliedState "DEACTIVATED_BY_DEVICE_FINANCE"

{-# COMPLETE
  Device_AppliedState_DEVICESTATEUNSPECIFIED,
  Device_AppliedState_Active,
  Device_AppliedState_Disabled,
  Device_AppliedState_Deleted,
  Device_AppliedState_Provisioning,
  Device_AppliedState_Lost,
  Device_AppliedState_PREPARINGFORMIGRATION,
  Device_AppliedState_DEACTIVATEDBYDEVICEFINANCE,
  Device_AppliedState #-}

-- | The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported.
newtype Device_ManagementMode = Device_ManagementMode { fromDevice_ManagementMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Device_ManagementMode #-}

-- | Ownership of the managed device.
newtype Device_Ownership = Device_Ownership { fromDevice_Ownership :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Device_Ownership #-}

-- | The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete.
newtype Device_State = Device_State { fromDevice_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | The device is lost. This state is only possible on organization-owned devices.
pattern Device_State_Lost :: Device_State
pattern Device_State_Lost = Device_State "LOST"

-- | The device is preparing for migrating to Android Management API. No further action is needed for the migration to continue.
pattern Device_State_PREPARINGFORMIGRATION :: Device_State
pattern Device_State_PREPARINGFORMIGRATION = Device_State "PREPARING_FOR_MIGRATION"

-- | This is a financed device that has been \"locked\" by the financing agent. This means certain policy settings have been applied which limit device functionality until the device has been \"unlocked\" by the financing agent. The device will continue to apply policy settings excluding those overridden by the financing agent. When the device is \"locked\", the state is reported in appliedState as DEACTIVATED/BY/DEVICE_FINANCE.
pattern Device_State_DEACTIVATEDBYDEVICEFINANCE :: Device_State
pattern Device_State_DEACTIVATEDBYDEVICEFINANCE = Device_State "DEACTIVATED_BY_DEVICE_FINANCE"

{-# COMPLETE
  Device_State_DEVICESTATEUNSPECIFIED,
  Device_State_Active,
  Device_State_Disabled,
  Device_State_Deleted,
  Device_State_Provisioning,
  Device_State_Lost,
  Device_State_PREPARINGFORMIGRATION,
  Device_State_DEACTIVATEDBYDEVICEFINANCE,
  Device_State #-}

-- | Controls Wi-Fi configuring privileges. Based on the option set, user will have either full or limited or no control in configuring Wi-Fi networks.
newtype DeviceConnectivityManagement_ConfigureWifi = DeviceConnectivityManagement_ConfigureWifi { fromDeviceConnectivityManagement_ConfigureWifi :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to ALLOW/CONFIGURING/WIFI unless wifiConfigDisabled is set to true. If wifiConfigDisabled is set to true, this is equivalent to DISALLOW/CONFIGURING/WIFI.
pattern DeviceConnectivityManagement_ConfigureWifi_CONFIGUREWIFIUNSPECIFIED :: DeviceConnectivityManagement_ConfigureWifi
pattern DeviceConnectivityManagement_ConfigureWifi_CONFIGUREWIFIUNSPECIFIED = DeviceConnectivityManagement_ConfigureWifi "CONFIGURE_WIFI_UNSPECIFIED"

-- | The user is allowed to configure Wi-Fi. wifiConfigDisabled is ignored.
pattern DeviceConnectivityManagement_ConfigureWifi_ALLOWCONFIGURINGWIFI :: DeviceConnectivityManagement_ConfigureWifi
pattern DeviceConnectivityManagement_ConfigureWifi_ALLOWCONFIGURINGWIFI = DeviceConnectivityManagement_ConfigureWifi "ALLOW_CONFIGURING_WIFI"

-- | Adding new Wi-Fi configurations is disallowed. The user is only able to switch between already configured networks. Supported on Android 13 and above, on fully managed devices and work profiles on company-owned devices. If the setting is not supported, ALLOW/CONFIGURING/WIFI is set. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13. wifiConfigDisabled is ignored.
pattern DeviceConnectivityManagement_ConfigureWifi_DISALLOWADDWIFICONFIG :: DeviceConnectivityManagement_ConfigureWifi
pattern DeviceConnectivityManagement_ConfigureWifi_DISALLOWADDWIFICONFIG = DeviceConnectivityManagement_ConfigureWifi "DISALLOW_ADD_WIFI_CONFIG"

-- | Disallows configuring Wi-Fi networks. The setting wifiConfigDisabled is ignored when this value is set. Supported on fully managed devices and work profile on company-owned devices, on all supported API levels. For fully managed devices, setting this removes all configured networks and retains only the networks configured using openNetworkConfiguration policy. For work profiles on company-owned devices, existing configured networks are not affected and the user is not allowed to add, remove, or modify Wi-Fi networks. Note: If a network connection can\'t be made at boot time and configuring Wi-Fi is disabled then network escape hatch will be shown in order to refresh the device policy (see networkEscapeHatchEnabled).
pattern DeviceConnectivityManagement_ConfigureWifi_DISALLOWCONFIGURINGWIFI :: DeviceConnectivityManagement_ConfigureWifi
pattern DeviceConnectivityManagement_ConfigureWifi_DISALLOWCONFIGURINGWIFI = DeviceConnectivityManagement_ConfigureWifi "DISALLOW_CONFIGURING_WIFI"

{-# COMPLETE
  DeviceConnectivityManagement_ConfigureWifi_CONFIGUREWIFIUNSPECIFIED,
  DeviceConnectivityManagement_ConfigureWifi_ALLOWCONFIGURINGWIFI,
  DeviceConnectivityManagement_ConfigureWifi_DISALLOWADDWIFICONFIG,
  DeviceConnectivityManagement_ConfigureWifi_DISALLOWCONFIGURINGWIFI,
  DeviceConnectivityManagement_ConfigureWifi #-}

-- | Controls tethering settings. Based on the value set, the user is partially or fully disallowed from using different forms of tethering.
newtype DeviceConnectivityManagement_TetheringSettings = DeviceConnectivityManagement_TetheringSettings { fromDeviceConnectivityManagement_TetheringSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to ALLOW/ALL/TETHERING unless tetheringConfigDisabled is set to true. If tetheringConfigDisabled is set to true, this is equivalent to DISALLOW/ALL/TETHERING.
pattern DeviceConnectivityManagement_TetheringSettings_TETHERINGSETTINGSUNSPECIFIED :: DeviceConnectivityManagement_TetheringSettings
pattern DeviceConnectivityManagement_TetheringSettings_TETHERINGSETTINGSUNSPECIFIED = DeviceConnectivityManagement_TetheringSettings "TETHERING_SETTINGS_UNSPECIFIED"

-- | Allows configuration and use of all forms of tethering. tetheringConfigDisabled is ignored.
pattern DeviceConnectivityManagement_TetheringSettings_ALLOWALLTETHERING :: DeviceConnectivityManagement_TetheringSettings
pattern DeviceConnectivityManagement_TetheringSettings_ALLOWALLTETHERING = DeviceConnectivityManagement_TetheringSettings "ALLOW_ALL_TETHERING"

-- | Disallows the user from using Wi-Fi tethering. Supported on company owned devices running Android 13 and above. If the setting is not supported, ALLOW/ALL/TETHERING will be set. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13. tetheringConfigDisabled is ignored.
pattern DeviceConnectivityManagement_TetheringSettings_DISALLOWWIFITETHERING :: DeviceConnectivityManagement_TetheringSettings
pattern DeviceConnectivityManagement_TetheringSettings_DISALLOWWIFITETHERING = DeviceConnectivityManagement_TetheringSettings "DISALLOW_WIFI_TETHERING"

-- | Disallows all forms of tethering. Supported on fully managed devices and work profile on company-owned devices, on all supported android versions. The setting tetheringConfigDisabled is ignored.
pattern DeviceConnectivityManagement_TetheringSettings_DISALLOWALLTETHERING :: DeviceConnectivityManagement_TetheringSettings
pattern DeviceConnectivityManagement_TetheringSettings_DISALLOWALLTETHERING = DeviceConnectivityManagement_TetheringSettings "DISALLOW_ALL_TETHERING"

{-# COMPLETE
  DeviceConnectivityManagement_TetheringSettings_TETHERINGSETTINGSUNSPECIFIED,
  DeviceConnectivityManagement_TetheringSettings_ALLOWALLTETHERING,
  DeviceConnectivityManagement_TetheringSettings_DISALLOWWIFITETHERING,
  DeviceConnectivityManagement_TetheringSettings_DISALLOWALLTETHERING,
  DeviceConnectivityManagement_TetheringSettings #-}

-- | Controls what files and\/or data can be transferred via USB. Supported only on company-owned devices.
newtype DeviceConnectivityManagement_UsbDataAccess = DeviceConnectivityManagement_UsbDataAccess { fromDeviceConnectivityManagement_UsbDataAccess :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to DISALLOW/USB/FILE_TRANSFER.
pattern DeviceConnectivityManagement_UsbDataAccess_USBDATAACCESSUNSPECIFIED :: DeviceConnectivityManagement_UsbDataAccess
pattern DeviceConnectivityManagement_UsbDataAccess_USBDATAACCESSUNSPECIFIED = DeviceConnectivityManagement_UsbDataAccess "USB_DATA_ACCESS_UNSPECIFIED"

-- | All types of USB data transfers are allowed. usbFileTransferDisabled is ignored.
pattern DeviceConnectivityManagement_UsbDataAccess_ALLOWUSBDATATRANSFER :: DeviceConnectivityManagement_UsbDataAccess
pattern DeviceConnectivityManagement_UsbDataAccess_ALLOWUSBDATATRANSFER = DeviceConnectivityManagement_UsbDataAccess "ALLOW_USB_DATA_TRANSFER"

-- | Transferring files over USB is disallowed. Other types of USB data connections, such as mouse and keyboard connection, are allowed. usbFileTransferDisabled is ignored.
pattern DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBFILETRANSFER :: DeviceConnectivityManagement_UsbDataAccess
pattern DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBFILETRANSFER = DeviceConnectivityManagement_UsbDataAccess "DISALLOW_USB_FILE_TRANSFER"

-- | When set, all types of USB data transfers are prohibited. Supported for devices running Android 12 or above with USB HAL 1.3 or above. If the setting is not supported, DISALLOW/USB/FILE/TRANSFER will be set. A nonComplianceDetail with API/LEVEL is reported if the Android version is less than 12. A nonComplianceDetail with DEVICE_INCOMPATIBLE is reported if the device does not have USB HAL 1.3 or above. usbFileTransferDisabled is ignored.
pattern DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBDATATRANSFER :: DeviceConnectivityManagement_UsbDataAccess
pattern DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBDATATRANSFER = DeviceConnectivityManagement_UsbDataAccess "DISALLOW_USB_DATA_TRANSFER"

{-# COMPLETE
  DeviceConnectivityManagement_UsbDataAccess_USBDATAACCESSUNSPECIFIED,
  DeviceConnectivityManagement_UsbDataAccess_ALLOWUSBDATATRANSFER,
  DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBFILETRANSFER,
  DeviceConnectivityManagement_UsbDataAccess_DISALLOWUSBDATATRANSFER,
  DeviceConnectivityManagement_UsbDataAccess #-}

-- | Controls configuring and using Wi-Fi direct settings. Supported on company-owned devices running Android 13 and above.
newtype DeviceConnectivityManagement_WifiDirectSettings = DeviceConnectivityManagement_WifiDirectSettings { fromDeviceConnectivityManagement_WifiDirectSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to ALLOW/WIFI/DIRECT
pattern DeviceConnectivityManagement_WifiDirectSettings_WIFIDIRECTSETTINGSUNSPECIFIED :: DeviceConnectivityManagement_WifiDirectSettings
pattern DeviceConnectivityManagement_WifiDirectSettings_WIFIDIRECTSETTINGSUNSPECIFIED = DeviceConnectivityManagement_WifiDirectSettings "WIFI_DIRECT_SETTINGS_UNSPECIFIED"

-- | The user is allowed to use Wi-Fi direct.
pattern DeviceConnectivityManagement_WifiDirectSettings_ALLOWWIFIDIRECT :: DeviceConnectivityManagement_WifiDirectSettings
pattern DeviceConnectivityManagement_WifiDirectSettings_ALLOWWIFIDIRECT = DeviceConnectivityManagement_WifiDirectSettings "ALLOW_WIFI_DIRECT"

-- | The user is not allowed to use Wi-Fi direct. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceConnectivityManagement_WifiDirectSettings_DISALLOWWIFIDIRECT :: DeviceConnectivityManagement_WifiDirectSettings
pattern DeviceConnectivityManagement_WifiDirectSettings_DISALLOWWIFIDIRECT = DeviceConnectivityManagement_WifiDirectSettings "DISALLOW_WIFI_DIRECT"

{-# COMPLETE
  DeviceConnectivityManagement_WifiDirectSettings_WIFIDIRECTSETTINGSUNSPECIFIED,
  DeviceConnectivityManagement_WifiDirectSettings_ALLOWWIFIDIRECT,
  DeviceConnectivityManagement_WifiDirectSettings_DISALLOWWIFIDIRECT,
  DeviceConnectivityManagement_WifiDirectSettings #-}

-- | Controls whether airplane mode can be toggled by the user or not.
newtype DeviceRadioState_AirplaneModeState = DeviceRadioState_AirplaneModeState { fromDeviceRadioState_AirplaneModeState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to AIRPLANE/MODE/USER_CHOICE.
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODESTATEUNSPECIFIED :: DeviceRadioState_AirplaneModeState
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODESTATEUNSPECIFIED = DeviceRadioState_AirplaneModeState "AIRPLANE_MODE_STATE_UNSPECIFIED"

-- | The user is allowed to toggle airplane mode on or off.
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODEUSERCHOICE :: DeviceRadioState_AirplaneModeState
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODEUSERCHOICE = DeviceRadioState_AirplaneModeState "AIRPLANE_MODE_USER_CHOICE"

-- | Airplane mode is disabled. The user is not allowed to toggle airplane mode on. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 9.
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODEDISABLED :: DeviceRadioState_AirplaneModeState
pattern DeviceRadioState_AirplaneModeState_AIRPLANEMODEDISABLED = DeviceRadioState_AirplaneModeState "AIRPLANE_MODE_DISABLED"

{-# COMPLETE
  DeviceRadioState_AirplaneModeState_AIRPLANEMODESTATEUNSPECIFIED,
  DeviceRadioState_AirplaneModeState_AIRPLANEMODEUSERCHOICE,
  DeviceRadioState_AirplaneModeState_AIRPLANEMODEDISABLED,
  DeviceRadioState_AirplaneModeState #-}

-- | Controls whether cellular 2G setting can be toggled by the user or not.
newtype DeviceRadioState_CellularTwoGState = DeviceRadioState_CellularTwoGState { fromDeviceRadioState_CellularTwoGState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to CELLULAR/TWO/G/USER/CHOICE.
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGSTATEUNSPECIFIED :: DeviceRadioState_CellularTwoGState
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGSTATEUNSPECIFIED = DeviceRadioState_CellularTwoGState "CELLULAR_TWO_G_STATE_UNSPECIFIED"

-- | The user is allowed to toggle cellular 2G on or off.
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGUSERCHOICE :: DeviceRadioState_CellularTwoGState
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGUSERCHOICE = DeviceRadioState_CellularTwoGState "CELLULAR_TWO_G_USER_CHOICE"

-- | Cellular 2G is disabled. The user is not allowed to toggle cellular 2G on via settings. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 14.
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGDISABLED :: DeviceRadioState_CellularTwoGState
pattern DeviceRadioState_CellularTwoGState_CELLULARTWOGDISABLED = DeviceRadioState_CellularTwoGState "CELLULAR_TWO_G_DISABLED"

{-# COMPLETE
  DeviceRadioState_CellularTwoGState_CELLULARTWOGSTATEUNSPECIFIED,
  DeviceRadioState_CellularTwoGState_CELLULARTWOGUSERCHOICE,
  DeviceRadioState_CellularTwoGState_CELLULARTWOGDISABLED,
  DeviceRadioState_CellularTwoGState #-}

-- | The minimum required security level of Wi-Fi networks that the device can connect to.
newtype DeviceRadioState_MinimumWifiSecurityLevel = DeviceRadioState_MinimumWifiSecurityLevel { fromDeviceRadioState_MinimumWifiSecurityLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Defaults to OPEN/NETWORK/SECURITY, which means the device will be able to connect to all types of Wi-Fi networks.
pattern DeviceRadioState_MinimumWifiSecurityLevel_MINIMUMWIFISECURITYLEVELUNSPECIFIED :: DeviceRadioState_MinimumWifiSecurityLevel
pattern DeviceRadioState_MinimumWifiSecurityLevel_MINIMUMWIFISECURITYLEVELUNSPECIFIED = DeviceRadioState_MinimumWifiSecurityLevel "MINIMUM_WIFI_SECURITY_LEVEL_UNSPECIFIED"

-- | The device will be able to connect to all types of Wi-Fi networks.
pattern DeviceRadioState_MinimumWifiSecurityLevel_OPENNETWORKSECURITY :: DeviceRadioState_MinimumWifiSecurityLevel
pattern DeviceRadioState_MinimumWifiSecurityLevel_OPENNETWORKSECURITY = DeviceRadioState_MinimumWifiSecurityLevel "OPEN_NETWORK_SECURITY"

-- | A personal network such as WEP, WPA2-PSK is the minimum required security. The device will not be able to connect to open wifi networks. This is stricter than OPEN/NETWORK/SECURITY. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceRadioState_MinimumWifiSecurityLevel_PERSONALNETWORKSECURITY :: DeviceRadioState_MinimumWifiSecurityLevel
pattern DeviceRadioState_MinimumWifiSecurityLevel_PERSONALNETWORKSECURITY = DeviceRadioState_MinimumWifiSecurityLevel "PERSONAL_NETWORK_SECURITY"

-- | An enterprise EAP network is the minimum required security level. The device will not be able to connect to Wi-Fi network below this security level. This is stricter than PERSONAL/NETWORK/SECURITY. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISENETWORKSECURITY :: DeviceRadioState_MinimumWifiSecurityLevel
pattern DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISENETWORKSECURITY = DeviceRadioState_MinimumWifiSecurityLevel "ENTERPRISE_NETWORK_SECURITY"

-- | A 192-bit enterprise network is the minimum required security level. The device will not be able to connect to Wi-Fi network below this security level. This is stricter than ENTERPRISE/NETWORK/SECURITY. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISEBIT192NETWORKSECURITY :: DeviceRadioState_MinimumWifiSecurityLevel
pattern DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISEBIT192NETWORKSECURITY = DeviceRadioState_MinimumWifiSecurityLevel "ENTERPRISE_BIT192_NETWORK_SECURITY"

{-# COMPLETE
  DeviceRadioState_MinimumWifiSecurityLevel_MINIMUMWIFISECURITYLEVELUNSPECIFIED,
  DeviceRadioState_MinimumWifiSecurityLevel_OPENNETWORKSECURITY,
  DeviceRadioState_MinimumWifiSecurityLevel_PERSONALNETWORKSECURITY,
  DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISENETWORKSECURITY,
  DeviceRadioState_MinimumWifiSecurityLevel_ENTERPRISEBIT192NETWORKSECURITY,
  DeviceRadioState_MinimumWifiSecurityLevel #-}

-- | Controls the state of the ultra wideband setting and whether the user can toggle it on or off.
newtype DeviceRadioState_UltraWidebandState = DeviceRadioState_UltraWidebandState { fromDeviceRadioState_UltraWidebandState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to ULTRA/WIDEBAND/USER_CHOICE.
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDSTATEUNSPECIFIED :: DeviceRadioState_UltraWidebandState
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDSTATEUNSPECIFIED = DeviceRadioState_UltraWidebandState "ULTRA_WIDEBAND_STATE_UNSPECIFIED"

-- | The user is allowed to toggle ultra wideband on or off.
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDUSERCHOICE :: DeviceRadioState_UltraWidebandState
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDUSERCHOICE = DeviceRadioState_UltraWidebandState "ULTRA_WIDEBAND_USER_CHOICE"

-- | Ultra wideband is disabled. The user is not allowed to toggle ultra wideband on via settings. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 14.
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDDISABLED :: DeviceRadioState_UltraWidebandState
pattern DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDDISABLED = DeviceRadioState_UltraWidebandState "ULTRA_WIDEBAND_DISABLED"

{-# COMPLETE
  DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDSTATEUNSPECIFIED,
  DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDUSERCHOICE,
  DeviceRadioState_UltraWidebandState_ULTRAWIDEBANDDISABLED,
  DeviceRadioState_UltraWidebandState #-}

-- | Controls current state of Wi-Fi and if user can change its state.
newtype DeviceRadioState_WifiState = DeviceRadioState_WifiState { fromDeviceRadioState_WifiState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to WIFI/STATE/USER_CHOICE
pattern DeviceRadioState_WifiState_WIFISTATEUNSPECIFIED :: DeviceRadioState_WifiState
pattern DeviceRadioState_WifiState_WIFISTATEUNSPECIFIED = DeviceRadioState_WifiState "WIFI_STATE_UNSPECIFIED"

-- | User is allowed to enable\/disable Wi-Fi.
pattern DeviceRadioState_WifiState_WIFISTATEUSERCHOICE :: DeviceRadioState_WifiState
pattern DeviceRadioState_WifiState_WIFISTATEUSERCHOICE = DeviceRadioState_WifiState "WIFI_STATE_USER_CHOICE"

-- | Wi-Fi is on and the user is not allowed to turn it off. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceRadioState_WifiState_WIFIENABLED :: DeviceRadioState_WifiState
pattern DeviceRadioState_WifiState_WIFIENABLED = DeviceRadioState_WifiState "WIFI_ENABLED"

-- | Wi-Fi is off and the user is not allowed to turn it on. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 13.
pattern DeviceRadioState_WifiState_WIFIDISABLED :: DeviceRadioState_WifiState
pattern DeviceRadioState_WifiState_WIFIDISABLED = DeviceRadioState_WifiState "WIFI_DISABLED"

{-# COMPLETE
  DeviceRadioState_WifiState_WIFISTATEUNSPECIFIED,
  DeviceRadioState_WifiState_WIFISTATEUSERCHOICE,
  DeviceRadioState_WifiState_WIFIENABLED,
  DeviceRadioState_WifiState_WIFIDISABLED,
  DeviceRadioState_WifiState #-}

-- | Encryption status from DevicePolicyManager.
newtype DeviceSettings_EncryptionStatus = DeviceSettings_EncryptionStatus { fromDeviceSettings_EncryptionStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  DeviceSettings_EncryptionStatus #-}

-- | State of the display.
newtype Display_State = Display_State { fromDisplay_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Display_State #-}

-- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
newtype EnrollmentToken_AllowPersonalUsage = EnrollmentToken_AllowPersonalUsage { fromEnrollmentToken_AllowPersonalUsage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | Device is not associated with a single user, and thus both personal usage and corporate identity authentication are not expected. Important: This setting is mandatory for dedicated device enrollment and it is a breaking change. This change needs to be implemented before January 2025.For additional details see the dedicated device provisioning guide (https:\/\/developers.google.com\/android\/management\/provision-device#company-owned/devices/for/work/use_only).
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS :: EnrollmentToken_AllowPersonalUsage
pattern EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS = EnrollmentToken_AllowPersonalUsage "PERSONAL_USAGE_DISALLOWED_USERLESS"

{-# COMPLETE
  EnrollmentToken_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
  EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEALLOWED,
  EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
  EnrollmentToken_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS,
  EnrollmentToken_AllowPersonalUsage #-}

newtype Enterprise_EnabledNotificationTypesItem = Enterprise_EnabledNotificationTypesItem { fromEnterprise_EnabledNotificationTypesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | A notification sent when device sends BatchUsageLogEvents.
pattern Enterprise_EnabledNotificationTypesItem_USAGELOGS :: Enterprise_EnabledNotificationTypesItem
pattern Enterprise_EnabledNotificationTypesItem_USAGELOGS = Enterprise_EnabledNotificationTypesItem "USAGE_LOGS"

{-# COMPLETE
  Enterprise_EnabledNotificationTypesItem_NOTIFICATIONTYPEUNSPECIFIED,
  Enterprise_EnabledNotificationTypesItem_Enrollment,
  Enterprise_EnabledNotificationTypesItem_COMPLIANCEREPORT,
  Enterprise_EnabledNotificationTypesItem_STATUSREPORT,
  Enterprise_EnabledNotificationTypesItem_Command,
  Enterprise_EnabledNotificationTypesItem_USAGELOGS,
  Enterprise_EnabledNotificationTypesItem #-}

-- | Output only. Whether users need to be authenticated by Google during the enrollment process. IT admin can specify if Google authentication is enabled for the enterprise for knowledge worker devices. This value can be set only via the Google Admin Console. Google authentication can be used with signin/url In the case where Google authentication is required and a signin/url is specified, Google authentication will be launched before signin_url.
newtype GoogleAuthenticationSettings_GoogleAuthenticationRequired = GoogleAuthenticationSettings_GoogleAuthenticationRequired { fromGoogleAuthenticationSettings_GoogleAuthenticationRequired :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_GOOGLEAUTHENTICATIONREQUIREDUNSPECIFIED :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_GOOGLEAUTHENTICATIONREQUIREDUNSPECIFIED = GoogleAuthenticationSettings_GoogleAuthenticationRequired "GOOGLE_AUTHENTICATION_REQUIRED_UNSPECIFIED"

-- | Google authentication is not required.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_NOTREQUIRED :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_NOTREQUIRED = GoogleAuthenticationSettings_GoogleAuthenticationRequired "NOT_REQUIRED"

-- | User is required to be successfully authenticated by Google.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required = GoogleAuthenticationSettings_GoogleAuthenticationRequired "REQUIRED"

{-# COMPLETE
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_GOOGLEAUTHENTICATIONREQUIREDUNSPECIFIED,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_NOTREQUIRED,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired #-}

-- | Optional. Charging constraint.
newtype InstallConstraint_ChargingConstraint = InstallConstraint_ChargingConstraint { fromInstallConstraint_ChargingConstraint :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Default to CHARGING/NOT/REQUIRED.
pattern InstallConstraint_ChargingConstraint_CHARGINGCONSTRAINTUNSPECIFIED :: InstallConstraint_ChargingConstraint
pattern InstallConstraint_ChargingConstraint_CHARGINGCONSTRAINTUNSPECIFIED = InstallConstraint_ChargingConstraint "CHARGING_CONSTRAINT_UNSPECIFIED"

-- | Device doesn\'t have to be charging.
pattern InstallConstraint_ChargingConstraint_CHARGINGNOTREQUIRED :: InstallConstraint_ChargingConstraint
pattern InstallConstraint_ChargingConstraint_CHARGINGNOTREQUIRED = InstallConstraint_ChargingConstraint "CHARGING_NOT_REQUIRED"

-- | Device has to be charging.
pattern InstallConstraint_ChargingConstraint_INSTALLONLYWHENCHARGING :: InstallConstraint_ChargingConstraint
pattern InstallConstraint_ChargingConstraint_INSTALLONLYWHENCHARGING = InstallConstraint_ChargingConstraint "INSTALL_ONLY_WHEN_CHARGING"

{-# COMPLETE
  InstallConstraint_ChargingConstraint_CHARGINGCONSTRAINTUNSPECIFIED,
  InstallConstraint_ChargingConstraint_CHARGINGNOTREQUIRED,
  InstallConstraint_ChargingConstraint_INSTALLONLYWHENCHARGING,
  InstallConstraint_ChargingConstraint #-}

-- | Optional. Device idle constraint.
newtype InstallConstraint_DeviceIdleConstraint = InstallConstraint_DeviceIdleConstraint { fromInstallConstraint_DeviceIdleConstraint :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Default to DEVICE/IDLE/NOT_REQUIRED.
pattern InstallConstraint_DeviceIdleConstraint_DEVICEIDLECONSTRAINTUNSPECIFIED :: InstallConstraint_DeviceIdleConstraint
pattern InstallConstraint_DeviceIdleConstraint_DEVICEIDLECONSTRAINTUNSPECIFIED = InstallConstraint_DeviceIdleConstraint "DEVICE_IDLE_CONSTRAINT_UNSPECIFIED"

-- | Device doesn\'t have to be idle, app can be installed while the user is interacting with the device.
pattern InstallConstraint_DeviceIdleConstraint_DEVICEIDLENOTREQUIRED :: InstallConstraint_DeviceIdleConstraint
pattern InstallConstraint_DeviceIdleConstraint_DEVICEIDLENOTREQUIRED = InstallConstraint_DeviceIdleConstraint "DEVICE_IDLE_NOT_REQUIRED"

-- | Device has to be idle.
pattern InstallConstraint_DeviceIdleConstraint_INSTALLONLYWHENDEVICEIDLE :: InstallConstraint_DeviceIdleConstraint
pattern InstallConstraint_DeviceIdleConstraint_INSTALLONLYWHENDEVICEIDLE = InstallConstraint_DeviceIdleConstraint "INSTALL_ONLY_WHEN_DEVICE_IDLE"

{-# COMPLETE
  InstallConstraint_DeviceIdleConstraint_DEVICEIDLECONSTRAINTUNSPECIFIED,
  InstallConstraint_DeviceIdleConstraint_DEVICEIDLENOTREQUIRED,
  InstallConstraint_DeviceIdleConstraint_INSTALLONLYWHENDEVICEIDLE,
  InstallConstraint_DeviceIdleConstraint #-}

-- | Optional. Network type constraint.
newtype InstallConstraint_NetworkTypeConstraint = InstallConstraint_NetworkTypeConstraint { fromInstallConstraint_NetworkTypeConstraint :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Default to INSTALL/ON/ANY_NETWORK.
pattern InstallConstraint_NetworkTypeConstraint_NETWORKTYPECONSTRAINTUNSPECIFIED :: InstallConstraint_NetworkTypeConstraint
pattern InstallConstraint_NetworkTypeConstraint_NETWORKTYPECONSTRAINTUNSPECIFIED = InstallConstraint_NetworkTypeConstraint "NETWORK_TYPE_CONSTRAINT_UNSPECIFIED"

-- | Any active networks (Wi-Fi, cellular, etc.).
pattern InstallConstraint_NetworkTypeConstraint_INSTALLONANYNETWORK :: InstallConstraint_NetworkTypeConstraint
pattern InstallConstraint_NetworkTypeConstraint_INSTALLONANYNETWORK = InstallConstraint_NetworkTypeConstraint "INSTALL_ON_ANY_NETWORK"

-- | Any unmetered network (e.g. Wi-FI).
pattern InstallConstraint_NetworkTypeConstraint_INSTALLONLYONUNMETEREDNETWORK :: InstallConstraint_NetworkTypeConstraint
pattern InstallConstraint_NetworkTypeConstraint_INSTALLONLYONUNMETEREDNETWORK = InstallConstraint_NetworkTypeConstraint "INSTALL_ONLY_ON_UNMETERED_NETWORK"

{-# COMPLETE
  InstallConstraint_NetworkTypeConstraint_NETWORKTYPECONSTRAINTUNSPECIFIED,
  InstallConstraint_NetworkTypeConstraint_INSTALLONANYNETWORK,
  InstallConstraint_NetworkTypeConstraint_INSTALLONLYONUNMETEREDNETWORK,
  InstallConstraint_NetworkTypeConstraint #-}

-- | The severity of the app state.
newtype KeyedAppState_Severity = KeyedAppState_Severity { fromKeyedAppState_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KeyedAppState_Severity #-}

-- | Specifies whether the Settings app is allowed in kiosk mode.
newtype KioskCustomization_DeviceSettings = KioskCustomization_DeviceSettings { fromKioskCustomization_DeviceSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KioskCustomization_DeviceSettings #-}

-- | Sets the behavior of a device in kiosk mode when a user presses and holds (long-presses) the Power button.
newtype KioskCustomization_PowerButtonActions = KioskCustomization_PowerButtonActions { fromKioskCustomization_PowerButtonActions :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KioskCustomization_PowerButtonActions #-}

-- | Specifies whether system info and notifications are disabled in kiosk mode.
newtype KioskCustomization_StatusBar = KioskCustomization_StatusBar { fromKioskCustomization_StatusBar :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KioskCustomization_StatusBar #-}

-- | Specifies whether system error dialogs for crashed or unresponsive apps are blocked in kiosk mode. When blocked, the system will force-stop the app as if the user chooses the \"close app\" option on the UI.
newtype KioskCustomization_SystemErrorWarnings = KioskCustomization_SystemErrorWarnings { fromKioskCustomization_SystemErrorWarnings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KioskCustomization_SystemErrorWarnings #-}

-- | Specifies which navigation features are enabled (e.g. Home, Overview buttons) in kiosk mode.
newtype KioskCustomization_SystemNavigation = KioskCustomization_SystemNavigation { fromKioskCustomization_SystemNavigation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  KioskCustomization_SystemNavigation #-}

-- | The type of the property.
newtype ManagedProperty_Type = ManagedProperty_Type { fromManagedProperty_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ManagedProperty_Type #-}

-- | Event type.
newtype MemoryEvent_EventType = MemoryEvent_EventType { fromMemoryEvent_EventType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  MemoryEvent_EventType #-}

-- | Required. Immutable. The management mode of the device or profile being migrated.
newtype MigrationToken_ManagementMode = MigrationToken_ManagementMode { fromMigrationToken_ManagementMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value must not be used.
pattern MigrationToken_ManagementMode_MANAGEMENTMODEUNSPECIFIED :: MigrationToken_ManagementMode
pattern MigrationToken_ManagementMode_MANAGEMENTMODEUNSPECIFIED = MigrationToken_ManagementMode "MANAGEMENT_MODE_UNSPECIFIED"

-- | A work profile on a personally owned device. Supported only on devices running Android 9 and above.
pattern MigrationToken_ManagementMode_WORKPROFILEPERSONALLYOWNED :: MigrationToken_ManagementMode
pattern MigrationToken_ManagementMode_WORKPROFILEPERSONALLYOWNED = MigrationToken_ManagementMode "WORK_PROFILE_PERSONALLY_OWNED"

-- | A work profile on a company-owned device. Supported only on devices running Android 11 and above.
pattern MigrationToken_ManagementMode_WORKPROFILECOMPANYOWNED :: MigrationToken_ManagementMode
pattern MigrationToken_ManagementMode_WORKPROFILECOMPANYOWNED = MigrationToken_ManagementMode "WORK_PROFILE_COMPANY_OWNED"

-- | A fully-managed device. Supported only on devices running Android 9 and above.
pattern MigrationToken_ManagementMode_FULLYMANAGED :: MigrationToken_ManagementMode
pattern MigrationToken_ManagementMode_FULLYMANAGED = MigrationToken_ManagementMode "FULLY_MANAGED"

{-# COMPLETE
  MigrationToken_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
  MigrationToken_ManagementMode_WORKPROFILEPERSONALLYOWNED,
  MigrationToken_ManagementMode_WORKPROFILECOMPANYOWNED,
  MigrationToken_ManagementMode_FULLYMANAGED,
  MigrationToken_ManagementMode #-}

-- | If package/name is set and the non-compliance reason is APP/NOT/INSTALLED or APP/NOT_UPDATED, the detailed reason the app can\'t be installed or updated.
newtype NonComplianceDetail_InstallationFailureReason = NonComplianceDetail_InstallationFailureReason { fromNonComplianceDetail_InstallationFailureReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | A network error on the user\'s device has prevented the install from succeeding. This usually happens when the device\'s internet connectivity is degraded, unavailable or there\'s a network configuration issue. Please ensure the device has access to full internet connectivity on a network that meets Android Enterprise Network Requirements (https:\/\/support.google.com\/work\/android\/answer\/10513641). App install or update will automatically resume once this is the case.
pattern NonComplianceDetail_InstallationFailureReason_NETWORKERRORUNRELIABLECONNECTION :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_NETWORKERRORUNRELIABLECONNECTION = NonComplianceDetail_InstallationFailureReason "NETWORK_ERROR_UNRELIABLE_CONNECTION"

-- | The user\'s device does not have sufficient storage space to install the app. This can be resolved by clearing up storage space on the device. App install or update will automatically resume once the device has sufficient storage.
pattern NonComplianceDetail_InstallationFailureReason_INSUFFICIENTSTORAGE :: NonComplianceDetail_InstallationFailureReason
pattern NonComplianceDetail_InstallationFailureReason_INSUFFICIENTSTORAGE = NonComplianceDetail_InstallationFailureReason "INSUFFICIENT_STORAGE"

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
  NonComplianceDetail_InstallationFailureReason_NETWORKERRORUNRELIABLECONNECTION,
  NonComplianceDetail_InstallationFailureReason_INSUFFICIENTSTORAGE,
  NonComplianceDetail_InstallationFailureReason #-}

-- | The reason the device is not in compliance with the setting.
newtype NonComplianceDetail_NonComplianceReason = NonComplianceDetail_NonComplianceReason { fromNonComplianceDetail_NonComplianceReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED = NonComplianceDetail_NonComplianceReason "NON_COMPLIANCE_REASON_UNSPECIFIED"

-- | The setting is not supported in the API level of the Android version running on the device.
pattern NonComplianceDetail_NonComplianceReason_APILEVEL :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_APILEVEL = NonComplianceDetail_NonComplianceReason "API_LEVEL"

-- | The management mode (such as fully managed or work profile) doesn\'t support the setting.
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

-- | The device is incompatible with the policy requirements.
pattern NonComplianceDetail_NonComplianceReason_DEVICEINCOMPATIBLE :: NonComplianceDetail_NonComplianceReason
pattern NonComplianceDetail_NonComplianceReason_DEVICEINCOMPATIBLE = NonComplianceDetail_NonComplianceReason "DEVICE_INCOMPATIBLE"

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
  NonComplianceDetail_NonComplianceReason_DEVICEINCOMPATIBLE,
  NonComplianceDetail_NonComplianceReason #-}

-- | The policy-specific reason the device is not in compliance with the setting.
newtype NonComplianceDetail_SpecificNonComplianceReason = NonComplianceDetail_SpecificNonComplianceReason { fromNonComplianceDetail_SpecificNonComplianceReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Specific non-compliance reason is not specified. Fields in specific/non/compliance_context are not set.
pattern NonComplianceDetail_SpecificNonComplianceReason_SPECIFICNONCOMPLIANCEREASONUNSPECIFIED :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_SPECIFICNONCOMPLIANCEREASONUNSPECIFIED = NonComplianceDetail_SpecificNonComplianceReason "SPECIFIC_NON_COMPLIANCE_REASON_UNSPECIFIED"

-- | User needs to confirm credentials by entering the screen lock. Fields in specific/non/compliance/context are not set. nonComplianceReason is set to USER/ACTION.
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESUSERCREDENTIALSCONFIRMATIONREQUIRED :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESUSERCREDENTIALSCONFIRMATIONREQUIRED = NonComplianceDetail_SpecificNonComplianceReason "PASSWORD_POLICIES_USER_CREDENTIALS_CONFIRMATION_REQUIRED"

-- | The device or profile password has expired. passwordPoliciesContext is set. nonComplianceReason is set to USER_ACTION.
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDEXPIRED :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDEXPIRED = NonComplianceDetail_SpecificNonComplianceReason "PASSWORD_POLICIES_PASSWORD_EXPIRED"

-- | The device password does not satisfy password requirements. passwordPoliciesContext is set. nonComplianceReason is set to USER_ACTION.
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDNOTSUFFICIENT :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDNOTSUFFICIENT = NonComplianceDetail_SpecificNonComplianceReason "PASSWORD_POLICIES_PASSWORD_NOT_SUFFICIENT"

-- | There is an incorrect value in ONC Wi-Fi configuration. fieldPath specifies which field value is incorrect. oncWifiContext is set. nonComplianceReason is set to INVALID_VALUE.
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDVALUE :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDVALUE = NonComplianceDetail_SpecificNonComplianceReason "ONC_WIFI_INVALID_VALUE"

-- | The ONC Wi-Fi setting is not supported in the API level of the Android version running on the device. fieldPath specifies which field value is not supported. oncWifiContext is set. nonComplianceReason is set to API_LEVEL.
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIAPILEVEL :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIAPILEVEL = NonComplianceDetail_SpecificNonComplianceReason "ONC_WIFI_API_LEVEL"

-- | The enterprise Wi-Fi network is missing either the root CA or domain name. nonComplianceReason is set to INVALID_VALUE.
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDENTERPRISECONFIG :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDENTERPRISECONFIG = NonComplianceDetail_SpecificNonComplianceReason "ONC_WIFI_INVALID_ENTERPRISE_CONFIG"

-- | User needs to remove the configured Wi-Fi network manually. This is applicable only on work profiles on personally-owned devices. nonComplianceReason is set to USER_ACTION.
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIUSERSHOULDREMOVENETWORK :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIUSERSHOULDREMOVENETWORK = NonComplianceDetail_SpecificNonComplianceReason "ONC_WIFI_USER_SHOULD_REMOVE_NETWORK"

-- | Key pair alias specified via ClientCertKeyPairAlias (https:\/\/chromium.googlesource.com\/chromium\/src\/+\/main\/components\/onc\/docs\/onc/spec.md#eap-type) field in openNetworkConfiguration does not correspond to an existing key installed on the device. nonComplianceReason is set to INVALID/VALUE.
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIKEYPAIRALIASNOTCORRESPONDINGTOEXISTINGKEY :: NonComplianceDetail_SpecificNonComplianceReason
pattern NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIKEYPAIRALIASNOTCORRESPONDINGTOEXISTINGKEY = NonComplianceDetail_SpecificNonComplianceReason "ONC_WIFI_KEY_PAIR_ALIAS_NOT_CORRESPONDING_TO_EXISTING_KEY"

{-# COMPLETE
  NonComplianceDetail_SpecificNonComplianceReason_SPECIFICNONCOMPLIANCEREASONUNSPECIFIED,
  NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESUSERCREDENTIALSCONFIRMATIONREQUIRED,
  NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDEXPIRED,
  NonComplianceDetail_SpecificNonComplianceReason_PASSWORDPOLICIESPASSWORDNOTSUFFICIENT,
  NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDVALUE,
  NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIAPILEVEL,
  NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIINVALIDENTERPRISECONFIG,
  NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIUSERSHOULDREMOVENETWORK,
  NonComplianceDetail_SpecificNonComplianceReason_ONCWIFIKEYPAIRALIASNOTCORRESPONDINGTOEXISTINGKEY,
  NonComplianceDetail_SpecificNonComplianceReason #-}

-- | The reason the device is not in compliance with the setting. If not set, then this condition matches any reason.
newtype NonComplianceDetailCondition_NonComplianceReason = NonComplianceDetailCondition_NonComplianceReason { fromNonComplianceDetailCondition_NonComplianceReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_NONCOMPLIANCEREASONUNSPECIFIED = NonComplianceDetailCondition_NonComplianceReason "NON_COMPLIANCE_REASON_UNSPECIFIED"

-- | The setting is not supported in the API level of the Android version running on the device.
pattern NonComplianceDetailCondition_NonComplianceReason_APILEVEL :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_APILEVEL = NonComplianceDetailCondition_NonComplianceReason "API_LEVEL"

-- | The management mode (such as fully managed or work profile) doesn\'t support the setting.
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

-- | The device is incompatible with the policy requirements.
pattern NonComplianceDetailCondition_NonComplianceReason_DEVICEINCOMPATIBLE :: NonComplianceDetailCondition_NonComplianceReason
pattern NonComplianceDetailCondition_NonComplianceReason_DEVICEINCOMPATIBLE = NonComplianceDetailCondition_NonComplianceReason "DEVICE_INCOMPATIBLE"

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
  NonComplianceDetailCondition_NonComplianceReason_DEVICEINCOMPATIBLE,
  NonComplianceDetailCondition_NonComplianceReason #-}

-- | Verified Boot state.
newtype OsStartupEvent_VerifiedBootState = OsStartupEvent_VerifiedBootState { fromOsStartupEvent_VerifiedBootState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown value.
pattern OsStartupEvent_VerifiedBootState_VERIFIEDBOOTSTATEUNSPECIFIED :: OsStartupEvent_VerifiedBootState
pattern OsStartupEvent_VerifiedBootState_VERIFIEDBOOTSTATEUNSPECIFIED = OsStartupEvent_VerifiedBootState "VERIFIED_BOOT_STATE_UNSPECIFIED"

-- | Indicates that there is a full chain of trust extending from the bootloader to verified partitions including the bootloader, boot partition, and all verified partitions.
pattern OsStartupEvent_VerifiedBootState_Green :: OsStartupEvent_VerifiedBootState
pattern OsStartupEvent_VerifiedBootState_Green = OsStartupEvent_VerifiedBootState "GREEN"

-- | Indicates that the boot partition has been verified using the embedded certificate and the signature is valid.
pattern OsStartupEvent_VerifiedBootState_Yellow :: OsStartupEvent_VerifiedBootState
pattern OsStartupEvent_VerifiedBootState_Yellow = OsStartupEvent_VerifiedBootState "YELLOW"

-- | Indicates that the device may be freely modified. Device integrity is left to the user to verify out-of-band.
pattern OsStartupEvent_VerifiedBootState_Orange :: OsStartupEvent_VerifiedBootState
pattern OsStartupEvent_VerifiedBootState_Orange = OsStartupEvent_VerifiedBootState "ORANGE"

{-# COMPLETE
  OsStartupEvent_VerifiedBootState_VERIFIEDBOOTSTATEUNSPECIFIED,
  OsStartupEvent_VerifiedBootState_Green,
  OsStartupEvent_VerifiedBootState_Yellow,
  OsStartupEvent_VerifiedBootState_Orange,
  OsStartupEvent_VerifiedBootState #-}

-- | dm-verity mode.
newtype OsStartupEvent_VerityMode = OsStartupEvent_VerityMode { fromOsStartupEvent_VerityMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown value.
pattern OsStartupEvent_VerityMode_DMVERITYMODEUNSPECIFIED :: OsStartupEvent_VerityMode
pattern OsStartupEvent_VerityMode_DMVERITYMODEUNSPECIFIED = OsStartupEvent_VerityMode "DM_VERITY_MODE_UNSPECIFIED"

-- | Indicates that the device will be restarted when corruption is detected.
pattern OsStartupEvent_VerityMode_Enforcing :: OsStartupEvent_VerityMode
pattern OsStartupEvent_VerityMode_Enforcing = OsStartupEvent_VerityMode "ENFORCING"

-- | Indicates that an I\/O error will be returned for an attempt to read corrupted data blocks (also known as eio boot state).
pattern OsStartupEvent_VerityMode_IOERROR :: OsStartupEvent_VerityMode
pattern OsStartupEvent_VerityMode_IOERROR = OsStartupEvent_VerityMode "IO_ERROR"

-- | Indicates that dm-verity is disabled on device.
pattern OsStartupEvent_VerityMode_Disabled :: OsStartupEvent_VerityMode
pattern OsStartupEvent_VerityMode_Disabled = OsStartupEvent_VerityMode "DISABLED"

{-# COMPLETE
  OsStartupEvent_VerityMode_DMVERITYMODEUNSPECIFIED,
  OsStartupEvent_VerityMode_Enforcing,
  OsStartupEvent_VerityMode_IOERROR,
  OsStartupEvent_VerityMode_Disabled,
  OsStartupEvent_VerityMode #-}

-- | The scope of non-compliant password.
newtype PasswordPoliciesContext_PasswordPolicyScope = PasswordPoliciesContext_PasswordPolicyScope { fromPasswordPoliciesContext_PasswordPolicyScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The scope is unspecified. The password requirements are applied to the work profile for work profile devices and the whole device for fully managed or dedicated devices.
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEUNSPECIFIED :: PasswordPoliciesContext_PasswordPolicyScope
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEUNSPECIFIED = PasswordPoliciesContext_PasswordPolicyScope "SCOPE_UNSPECIFIED"

-- | The password requirements are only applied to the device.
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEDEVICE :: PasswordPoliciesContext_PasswordPolicyScope
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEDEVICE = PasswordPoliciesContext_PasswordPolicyScope "SCOPE_DEVICE"

-- | The password requirements are only applied to the work profile.
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEPROFILE :: PasswordPoliciesContext_PasswordPolicyScope
pattern PasswordPoliciesContext_PasswordPolicyScope_SCOPEPROFILE = PasswordPoliciesContext_PasswordPolicyScope "SCOPE_PROFILE"

{-# COMPLETE
  PasswordPoliciesContext_PasswordPolicyScope_SCOPEUNSPECIFIED,
  PasswordPoliciesContext_PasswordPolicyScope_SCOPEDEVICE,
  PasswordPoliciesContext_PasswordPolicyScope_SCOPEPROFILE,
  PasswordPoliciesContext_PasswordPolicyScope #-}

-- | The required password quality.
newtype PasswordRequirements_PasswordQuality = PasswordRequirements_PasswordQuality { fromPasswordRequirements_PasswordQuality :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PasswordRequirements_PasswordQuality #-}

-- | The scope that the password requirement applies to.
newtype PasswordRequirements_PasswordScope = PasswordRequirements_PasswordScope { fromPasswordRequirements_PasswordScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PasswordRequirements_PasswordScope #-}

-- | The length of time after a device or work profile is unlocked using a strong form of authentication (password, PIN, pattern) that it can be unlocked using any other authentication method (e.g. fingerprint, trust agents, face). After the specified time period elapses, only strong forms of authentication can be used to unlock the device or work profile.
newtype PasswordRequirements_RequirePasswordUnlock = PasswordRequirements_RequirePasswordUnlock { fromPasswordRequirements_RequirePasswordUnlock :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PasswordRequirements_RequirePasswordUnlock #-}

-- | Controls whether a unified lock is allowed for the device and the work profile, on devices running Android 9 and above with a work profile. This can be set only if password/scope is set to SCOPE/PROFILE, the policy will be rejected otherwise. If user has not set a separate work lock and this field is set to REQUIRE/SEPARATE/WORK/LOCK, a NonComplianceDetail is reported with nonComplianceReason set to USER/ACTION.
newtype PasswordRequirements_UnifiedLockSettings = PasswordRequirements_UnifiedLockSettings { fromPasswordRequirements_UnifiedLockSettings :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PasswordRequirements_UnifiedLockSettings #-}

-- | The result of an attempt to clear the data of a single app.
newtype PerAppResult_ClearingResult = PerAppResult_ClearingResult { fromPerAppResult_ClearingResult :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified result.
pattern PerAppResult_ClearingResult_CLEARINGRESULTUNSPECIFIED :: PerAppResult_ClearingResult
pattern PerAppResult_ClearingResult_CLEARINGRESULTUNSPECIFIED = PerAppResult_ClearingResult "CLEARING_RESULT_UNSPECIFIED"

-- | This app’s data was successfully cleared.
pattern PerAppResult_ClearingResult_Success :: PerAppResult_ClearingResult
pattern PerAppResult_ClearingResult_Success = PerAppResult_ClearingResult "SUCCESS"

-- | This app’s data could not be cleared because the app was not found.
pattern PerAppResult_ClearingResult_APPNOTFOUND :: PerAppResult_ClearingResult
pattern PerAppResult_ClearingResult_APPNOTFOUND = PerAppResult_ClearingResult "APP_NOT_FOUND"

-- | This app’s data could not be cleared because the app is protected. For example, this may apply to apps critical to the functioning of the device, such as Google Play Store.
pattern PerAppResult_ClearingResult_APPPROTECTED :: PerAppResult_ClearingResult
pattern PerAppResult_ClearingResult_APPPROTECTED = PerAppResult_ClearingResult "APP_PROTECTED"

-- | This app’s data could not be cleared because the device API level does not support this command.
pattern PerAppResult_ClearingResult_APILEVEL :: PerAppResult_ClearingResult
pattern PerAppResult_ClearingResult_APILEVEL = PerAppResult_ClearingResult "API_LEVEL"

{-# COMPLETE
  PerAppResult_ClearingResult_CLEARINGRESULTUNSPECIFIED,
  PerAppResult_ClearingResult_Success,
  PerAppResult_ClearingResult_APPNOTFOUND,
  PerAppResult_ClearingResult_APPPROTECTED,
  PerAppResult_ClearingResult_APILEVEL,
  PerAppResult_ClearingResult #-}

-- | The policy for granting the permission.
newtype PermissionGrant_Policy = PermissionGrant_Policy { fromPermissionGrant_Policy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED :: PermissionGrant_Policy
pattern PermissionGrant_Policy_PERMISSIONPOLICYUNSPECIFIED = PermissionGrant_Policy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern PermissionGrant_Policy_Prompt :: PermissionGrant_Policy
pattern PermissionGrant_Policy_Prompt = PermissionGrant_Policy "PROMPT"

-- | Automatically grant a permission.On Android 12 and above, READ/SMS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#READ/SMS) and following sensor-related permissions can only be granted on fully managed devices: ACCESS/FINE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/FINE/LOCATION) ACCESS/BACKGROUND/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/BACKGROUND/LOCATION) ACCESS/COARSE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/COARSE/LOCATION) CAMERA (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#CAMERA) RECORD/AUDIO (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#RECORD/AUDIO) ACTIVITY/RECOGNITION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACTIVITY/RECOGNITION) BODY/SENSORS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#BODY/SENSORS)
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
  PermissionGrant_Policy #-}

-- | The type of installation to perform.
newtype PersonalApplicationPolicy_InstallType = PersonalApplicationPolicy_InstallType { fromPersonalApplicationPolicy_InstallType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to AVAILABLE.
pattern PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED = PersonalApplicationPolicy_InstallType "INSTALL_TYPE_UNSPECIFIED"

-- | The app is blocked and can\'t be installed in the personal profile. If the app was previously installed in the device, it will be uninstalled.
pattern PersonalApplicationPolicy_InstallType_Blocked :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_Blocked = PersonalApplicationPolicy_InstallType "BLOCKED"

-- | The app is available to install in the personal profile.
pattern PersonalApplicationPolicy_InstallType_Available :: PersonalApplicationPolicy_InstallType
pattern PersonalApplicationPolicy_InstallType_Available = PersonalApplicationPolicy_InstallType "AVAILABLE"

{-# COMPLETE
  PersonalApplicationPolicy_InstallType_INSTALLTYPEUNSPECIFIED,
  PersonalApplicationPolicy_InstallType_Blocked,
  PersonalApplicationPolicy_InstallType_Available,
  PersonalApplicationPolicy_InstallType #-}

-- | Used together with personalApplications to control how apps in the personal profile are allowed or blocked.
newtype PersonalUsagePolicies_PersonalPlayStoreMode = PersonalUsagePolicies_PersonalPlayStoreMode { fromPersonalUsagePolicies_PersonalPlayStoreMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PersonalUsagePolicies_PersonalPlayStoreMode #-}

-- | Optional. Controls whether a private space is allowed on the device.
newtype PersonalUsagePolicies_PrivateSpacePolicy = PersonalUsagePolicies_PrivateSpacePolicy { fromPersonalUsagePolicies_PrivateSpacePolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to PRIVATE/SPACE/ALLOWED.
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEPOLICYUNSPECIFIED :: PersonalUsagePolicies_PrivateSpacePolicy
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEPOLICYUNSPECIFIED = PersonalUsagePolicies_PrivateSpacePolicy "PRIVATE_SPACE_POLICY_UNSPECIFIED"

-- | Users can create a private space profile.
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEALLOWED :: PersonalUsagePolicies_PrivateSpacePolicy
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEALLOWED = PersonalUsagePolicies_PrivateSpacePolicy "PRIVATE_SPACE_ALLOWED"

-- | Users cannot create a private space profile. Supported only for company-owned devices with a work profile. Caution: Any existing private space will be removed.
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEDISALLOWED :: PersonalUsagePolicies_PrivateSpacePolicy
pattern PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEDISALLOWED = PersonalUsagePolicies_PrivateSpacePolicy "PRIVATE_SPACE_DISALLOWED"

{-# COMPLETE
  PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEPOLICYUNSPECIFIED,
  PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEALLOWED,
  PersonalUsagePolicies_PrivateSpacePolicy_PRIVATESPACEDISALLOWED,
  PersonalUsagePolicies_PrivateSpacePolicy #-}

newtype Policy_AndroidDevicePolicyTracksItem = Policy_AndroidDevicePolicyTracksItem { fromPolicy_AndroidDevicePolicyTracksItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_AndroidDevicePolicyTracksItem #-}

-- | Recommended alternative: autoUpdateMode which is set per app, provides greater flexibility around update frequency.When autoUpdateMode is set to AUTO/UPDATE/POSTPONED or AUTO/UPDATE/HIGH_PRIORITY, this field has no effect.The app auto update policy, which controls when automatic app updates can be applied.
newtype Policy_AppAutoUpdatePolicy = Policy_AppAutoUpdatePolicy { fromPolicy_AppAutoUpdatePolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_AppAutoUpdatePolicy #-}

-- | Optional. Controls whether AssistContent (https:\/\/developer.android.com\/reference\/android\/app\/assist\/AssistContent) is allowed to be sent to a privileged app such as an assistant app. AssistContent includes screenshots and information about an app, such as package name. This is supported on Android 15 and above.
newtype Policy_AssistContentPolicy = Policy_AssistContentPolicy { fromPolicy_AssistContentPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to ASSIST/CONTENT/ALLOWED.
pattern Policy_AssistContentPolicy_ASSISTCONTENTPOLICYUNSPECIFIED :: Policy_AssistContentPolicy
pattern Policy_AssistContentPolicy_ASSISTCONTENTPOLICYUNSPECIFIED = Policy_AssistContentPolicy "ASSIST_CONTENT_POLICY_UNSPECIFIED"

-- | Assist content is blocked from being sent to a privileged app.Supported on Android 15 and above. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 15.
pattern Policy_AssistContentPolicy_ASSISTCONTENTDISALLOWED :: Policy_AssistContentPolicy
pattern Policy_AssistContentPolicy_ASSISTCONTENTDISALLOWED = Policy_AssistContentPolicy "ASSIST_CONTENT_DISALLOWED"

-- | Assist content is allowed to be sent to a privileged app.Supported on Android 15 and above.
pattern Policy_AssistContentPolicy_ASSISTCONTENTALLOWED :: Policy_AssistContentPolicy
pattern Policy_AssistContentPolicy_ASSISTCONTENTALLOWED = Policy_AssistContentPolicy "ASSIST_CONTENT_ALLOWED"

{-# COMPLETE
  Policy_AssistContentPolicy_ASSISTCONTENTPOLICYUNSPECIFIED,
  Policy_AssistContentPolicy_ASSISTCONTENTDISALLOWED,
  Policy_AssistContentPolicy_ASSISTCONTENTALLOWED,
  Policy_AssistContentPolicy #-}

-- | Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, then autoTimeRequired is ignored.
newtype Policy_AutoDateAndTimeZone = Policy_AutoDateAndTimeZone { fromPolicy_AutoDateAndTimeZone :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_AutoDateAndTimeZone #-}

-- | Controls the use of the camera and whether the user has access to the camera access toggle.
newtype Policy_CameraAccess = Policy_CameraAccess { fromPolicy_CameraAccess :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_CameraAccess #-}

-- | Controls which apps are allowed to act as credential providers on Android 14 and above. These apps store credentials, see this (https:\/\/developer.android.com\/training\/sign-in\/passkeys) and this (https:\/\/developer.android.com\/reference\/androidx\/credentials\/CredentialManager) for details. See also credentialProviderPolicy.
newtype Policy_CredentialProviderPolicyDefault = Policy_CredentialProviderPolicyDefault { fromPolicy_CredentialProviderPolicyDefault :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to CREDENTIAL/PROVIDER/DEFAULT_DISALLOWED.
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERPOLICYDEFAULTUNSPECIFIED :: Policy_CredentialProviderPolicyDefault
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERPOLICYDEFAULTUNSPECIFIED = Policy_CredentialProviderPolicyDefault "CREDENTIAL_PROVIDER_POLICY_DEFAULT_UNSPECIFIED"

-- | Apps with credentialProviderPolicy unspecified are not allowed to act as a credential provider.
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWED :: Policy_CredentialProviderPolicyDefault
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWED = Policy_CredentialProviderPolicyDefault "CREDENTIAL_PROVIDER_DEFAULT_DISALLOWED"

-- | Apps with credentialProviderPolicy unspecified are not allowed to act as a credential provider except for the OEM default credential providers. OEM default credential providers are always allowed to act as credential providers.
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWEDEXCEPTSYSTEM :: Policy_CredentialProviderPolicyDefault
pattern Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWEDEXCEPTSYSTEM = Policy_CredentialProviderPolicyDefault "CREDENTIAL_PROVIDER_DEFAULT_DISALLOWED_EXCEPT_SYSTEM"

{-# COMPLETE
  Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERPOLICYDEFAULTUNSPECIFIED,
  Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWED,
  Policy_CredentialProviderPolicyDefault_CREDENTIALPROVIDERDEFAULTDISALLOWEDEXCEPTSYSTEM,
  Policy_CredentialProviderPolicyDefault #-}

-- | The default permission policy for runtime permission requests.
newtype Policy_DefaultPermissionPolicy = Policy_DefaultPermissionPolicy { fromPolicy_DefaultPermissionPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.
pattern Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_PERMISSIONPOLICYUNSPECIFIED = Policy_DefaultPermissionPolicy "PERMISSION_POLICY_UNSPECIFIED"

-- | Prompt the user to grant a permission.
pattern Policy_DefaultPermissionPolicy_Prompt :: Policy_DefaultPermissionPolicy
pattern Policy_DefaultPermissionPolicy_Prompt = Policy_DefaultPermissionPolicy "PROMPT"

-- | Automatically grant a permission.On Android 12 and above, READ/SMS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#READ/SMS) and following sensor-related permissions can only be granted on fully managed devices: ACCESS/FINE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/FINE/LOCATION) ACCESS/BACKGROUND/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/BACKGROUND/LOCATION) ACCESS/COARSE/LOCATION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACCESS/COARSE/LOCATION) CAMERA (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#CAMERA) RECORD/AUDIO (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#RECORD/AUDIO) ACTIVITY/RECOGNITION (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#ACTIVITY/RECOGNITION) BODY/SENSORS (https:\/\/developer.android.com\/reference\/android\/Manifest.permission#BODY/SENSORS)
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
  Policy_DefaultPermissionPolicy #-}

-- | Whether encryption is enabled
newtype Policy_EncryptionPolicy = Policy_EncryptionPolicy { fromPolicy_EncryptionPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_EncryptionPolicy #-}

newtype Policy_KeyguardDisabledFeaturesItem = Policy_KeyguardDisabledFeaturesItem { fromPolicy_KeyguardDisabledFeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | Disable all shortcuts on secure keyguard screen on Android 14 and above.
pattern Policy_KeyguardDisabledFeaturesItem_Shortcuts :: Policy_KeyguardDisabledFeaturesItem
pattern Policy_KeyguardDisabledFeaturesItem_Shortcuts = Policy_KeyguardDisabledFeaturesItem "SHORTCUTS"

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
  Policy_KeyguardDisabledFeaturesItem_Shortcuts,
  Policy_KeyguardDisabledFeaturesItem_ALLFEATURES,
  Policy_KeyguardDisabledFeaturesItem #-}

-- | The degree of location detection enabled.
newtype Policy_LocationMode = Policy_LocationMode { fromPolicy_LocationMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_LocationMode #-}

-- | Controls the use of the microphone and whether the user has access to the microphone access toggle. This applies only on fully managed devices.
newtype Policy_MicrophoneAccess = Policy_MicrophoneAccess { fromPolicy_MicrophoneAccess :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_MicrophoneAccess #-}

-- | This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.
newtype Policy_PlayStoreMode = Policy_PlayStoreMode { fromPolicy_PlayStoreMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_PlayStoreMode #-}

-- | Controls whether preferential network service is enabled on the work profile. For example, an organization may have an agreement with a carrier that all of the work data from its employees\' devices will be sent via a network service dedicated for enterprise use. An example of a supported preferential network service is the enterprise slice on 5G networks. This has no effect on fully managed devices.
newtype Policy_PreferentialNetworkService = Policy_PreferentialNetworkService { fromPolicy_PreferentialNetworkService :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_PreferentialNetworkService #-}

-- | Optional. Controls whether printing is allowed. This is supported on devices running Android 9 and above. .
newtype Policy_PrintingPolicy = Policy_PrintingPolicy { fromPolicy_PrintingPolicy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to PRINTING_ALLOWED.
pattern Policy_PrintingPolicy_PRINTINGPOLICYUNSPECIFIED :: Policy_PrintingPolicy
pattern Policy_PrintingPolicy_PRINTINGPOLICYUNSPECIFIED = Policy_PrintingPolicy "PRINTING_POLICY_UNSPECIFIED"

-- | Printing is disallowed. A nonComplianceDetail with API_LEVEL is reported if the Android version is less than 9.
pattern Policy_PrintingPolicy_PRINTINGDISALLOWED :: Policy_PrintingPolicy
pattern Policy_PrintingPolicy_PRINTINGDISALLOWED = Policy_PrintingPolicy "PRINTING_DISALLOWED"

-- | Printing is allowed.
pattern Policy_PrintingPolicy_PRINTINGALLOWED :: Policy_PrintingPolicy
pattern Policy_PrintingPolicy_PRINTINGALLOWED = Policy_PrintingPolicy "PRINTING_ALLOWED"

{-# COMPLETE
  Policy_PrintingPolicy_PRINTINGPOLICYUNSPECIFIED,
  Policy_PrintingPolicy_PRINTINGDISALLOWED,
  Policy_PrintingPolicy_PRINTINGALLOWED,
  Policy_PrintingPolicy #-}

newtype Policy_StayOnPluggedModesItem = Policy_StayOnPluggedModesItem { fromPolicy_StayOnPluggedModesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Policy_StayOnPluggedModesItem #-}

-- | A specific security risk that negatively affects the security posture of the device.
newtype PostureDetail_SecurityRisk = PostureDetail_SecurityRisk { fromPostureDetail_SecurityRisk :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED = PostureDetail_SecurityRisk "SECURITY_RISK_UNSPECIFIED"

-- | Play Integrity API detects that the device is running an unknown OS (basicIntegrity check succeeds but ctsProfileMatch fails).
pattern PostureDetail_SecurityRisk_UNKNOWNOS :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_UNKNOWNOS = PostureDetail_SecurityRisk "UNKNOWN_OS"

-- | Play Integrity API detects that the device is running a compromised OS (basicIntegrity check fails).
pattern PostureDetail_SecurityRisk_COMPROMISEDOS :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_COMPROMISEDOS = PostureDetail_SecurityRisk "COMPROMISED_OS"

-- | Play Integrity API detects that the device does not have a strong guarantee of system integrity, if the MEETS/STRONG/INTEGRITY label doesn\'t show in the device integrity field (https:\/\/developer.android.com\/google\/play\/integrity\/verdicts#device-integrity-field).
pattern PostureDetail_SecurityRisk_HARDWAREBACKEDEVALUATIONFAILED :: PostureDetail_SecurityRisk
pattern PostureDetail_SecurityRisk_HARDWAREBACKEDEVALUATIONFAILED = PostureDetail_SecurityRisk "HARDWARE_BACKED_EVALUATION_FAILED"

{-# COMPLETE
  PostureDetail_SecurityRisk_SECURITYRISKUNSPECIFIED,
  PostureDetail_SecurityRisk_UNKNOWNOS,
  PostureDetail_SecurityRisk_COMPROMISEDOS,
  PostureDetail_SecurityRisk_HARDWAREBACKEDEVALUATIONFAILED,
  PostureDetail_SecurityRisk #-}

-- | Event type.
newtype PowerManagementEvent_EventType = PowerManagementEvent_EventType { fromPowerManagementEvent_EventType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PowerManagementEvent_EventType #-}

-- | The management mode of the device or profile.
newtype ProvisioningInfo_ManagementMode = ProvisioningInfo_ManagementMode { fromProvisioningInfo_ManagementMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is disallowed.
pattern ProvisioningInfo_ManagementMode_MANAGEMENTMODEUNSPECIFIED :: ProvisioningInfo_ManagementMode
pattern ProvisioningInfo_ManagementMode_MANAGEMENTMODEUNSPECIFIED = ProvisioningInfo_ManagementMode "MANAGEMENT_MODE_UNSPECIFIED"

-- | Device owner. Android Device Policy has full control over the device.
pattern ProvisioningInfo_ManagementMode_DEVICEOWNER :: ProvisioningInfo_ManagementMode
pattern ProvisioningInfo_ManagementMode_DEVICEOWNER = ProvisioningInfo_ManagementMode "DEVICE_OWNER"

-- | Profile owner. Android Device Policy has control over a managed profile on the device.
pattern ProvisioningInfo_ManagementMode_PROFILEOWNER :: ProvisioningInfo_ManagementMode
pattern ProvisioningInfo_ManagementMode_PROFILEOWNER = ProvisioningInfo_ManagementMode "PROFILE_OWNER"

{-# COMPLETE
  ProvisioningInfo_ManagementMode_MANAGEMENTMODEUNSPECIFIED,
  ProvisioningInfo_ManagementMode_DEVICEOWNER,
  ProvisioningInfo_ManagementMode_PROFILEOWNER,
  ProvisioningInfo_ManagementMode #-}

-- | Ownership of the managed device.
newtype ProvisioningInfo_Ownership = ProvisioningInfo_Ownership { fromProvisioningInfo_Ownership :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Ownership is unspecified.
pattern ProvisioningInfo_Ownership_OWNERSHIPUNSPECIFIED :: ProvisioningInfo_Ownership
pattern ProvisioningInfo_Ownership_OWNERSHIPUNSPECIFIED = ProvisioningInfo_Ownership "OWNERSHIP_UNSPECIFIED"

-- | Device is company-owned.
pattern ProvisioningInfo_Ownership_COMPANYOWNED :: ProvisioningInfo_Ownership
pattern ProvisioningInfo_Ownership_COMPANYOWNED = ProvisioningInfo_Ownership "COMPANY_OWNED"

-- | Device is personally-owned.
pattern ProvisioningInfo_Ownership_PERSONALLYOWNED :: ProvisioningInfo_Ownership
pattern ProvisioningInfo_Ownership_PERSONALLYOWNED = ProvisioningInfo_Ownership "PERSONALLY_OWNED"

{-# COMPLETE
  ProvisioningInfo_Ownership_OWNERSHIPUNSPECIFIED,
  ProvisioningInfo_Ownership_COMPANYOWNED,
  ProvisioningInfo_Ownership_PERSONALLYOWNED,
  ProvisioningInfo_Ownership #-}

-- | Optional. Controls the screen brightness mode.
newtype ScreenBrightnessSettings_ScreenBrightnessMode = ScreenBrightnessSettings_ScreenBrightnessMode { fromScreenBrightnessSettings_ScreenBrightnessMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to BRIGHTNESS/USER/CHOICE.
pattern ScreenBrightnessSettings_ScreenBrightnessMode_SCREENBRIGHTNESSMODEUNSPECIFIED :: ScreenBrightnessSettings_ScreenBrightnessMode
pattern ScreenBrightnessSettings_ScreenBrightnessMode_SCREENBRIGHTNESSMODEUNSPECIFIED = ScreenBrightnessSettings_ScreenBrightnessMode "SCREEN_BRIGHTNESS_MODE_UNSPECIFIED"

-- | The user is allowed to configure the screen brightness. screenBrightness must not be set.
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSUSERCHOICE :: ScreenBrightnessSettings_ScreenBrightnessMode
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSUSERCHOICE = ScreenBrightnessSettings_ScreenBrightnessMode "BRIGHTNESS_USER_CHOICE"

-- | The screen brightness mode is automatic in which the brightness is automatically adjusted and the user is not allowed to configure the screen brightness. screenBrightness can still be set and it is taken into account while the brightness is automatically adjusted. Supported on Android 9 and above on fully managed devices. A NonComplianceDetail with API_LEVEL is reported if the Android version is less than 9. Supported on work profiles on company-owned devices on Android 15 and above.
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSAUTOMATIC :: ScreenBrightnessSettings_ScreenBrightnessMode
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSAUTOMATIC = ScreenBrightnessSettings_ScreenBrightnessMode "BRIGHTNESS_AUTOMATIC"

-- | The screen brightness mode is fixed in which the brightness is set to screenBrightness and the user is not allowed to configure the screen brightness. screenBrightness must be set. Supported on Android 9 and above on fully managed devices. A NonComplianceDetail with API_LEVEL is reported if the Android version is less than 9. Supported on work profiles on company-owned devices on Android 15 and above.
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSFIXED :: ScreenBrightnessSettings_ScreenBrightnessMode
pattern ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSFIXED = ScreenBrightnessSettings_ScreenBrightnessMode "BRIGHTNESS_FIXED"

{-# COMPLETE
  ScreenBrightnessSettings_ScreenBrightnessMode_SCREENBRIGHTNESSMODEUNSPECIFIED,
  ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSUSERCHOICE,
  ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSAUTOMATIC,
  ScreenBrightnessSettings_ScreenBrightnessMode_BRIGHTNESSFIXED,
  ScreenBrightnessSettings_ScreenBrightnessMode #-}

-- | Optional. Controls whether the user is allowed to configure the screen timeout.
newtype ScreenTimeoutSettings_ScreenTimeoutMode = ScreenTimeoutSettings_ScreenTimeoutMode { fromScreenTimeoutSettings_ScreenTimeoutMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to SCREEN/TIMEOUT/USER_CHOICE.
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTMODEUNSPECIFIED :: ScreenTimeoutSettings_ScreenTimeoutMode
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTMODEUNSPECIFIED = ScreenTimeoutSettings_ScreenTimeoutMode "SCREEN_TIMEOUT_MODE_UNSPECIFIED"

-- | The user is allowed to configure the screen timeout. screenTimeout must not be set.
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTUSERCHOICE :: ScreenTimeoutSettings_ScreenTimeoutMode
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTUSERCHOICE = ScreenTimeoutSettings_ScreenTimeoutMode "SCREEN_TIMEOUT_USER_CHOICE"

-- | The screen timeout is set to screenTimeout and the user is not allowed to configure the timeout. screenTimeout must be set. Supported on Android 9 and above on fully managed devices. A NonComplianceDetail with API_LEVEL is reported if the Android version is less than 9. Supported on work profiles on company-owned devices on Android 15 and above.
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTENFORCED :: ScreenTimeoutSettings_ScreenTimeoutMode
pattern ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTENFORCED = ScreenTimeoutSettings_ScreenTimeoutMode "SCREEN_TIMEOUT_ENFORCED"

{-# COMPLETE
  ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTMODEUNSPECIFIED,
  ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTUSERCHOICE,
  ScreenTimeoutSettings_ScreenTimeoutMode_SCREENTIMEOUTENFORCED,
  ScreenTimeoutSettings_ScreenTimeoutMode #-}

-- | Device\'s security posture value.
newtype SecurityPosture_DevicePosture = SecurityPosture_DevicePosture { fromSecurityPosture_DevicePosture :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  SecurityPosture_DevicePosture #-}

-- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
newtype SigninDetail_AllowPersonalUsage = SigninDetail_AllowPersonalUsage { fromSigninDetail_AllowPersonalUsage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | Device is not associated with a single user, and thus both personal usage and corporate identity authentication are not expected. Important: This setting is mandatory for dedicated device enrollment and it is a breaking change. This change needs to be implemented before January 2025.For additional details see the dedicated device provisioning guide (https:\/\/developers.google.com\/android\/management\/provision-device#company-owned/devices/for/work/use_only).
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS :: SigninDetail_AllowPersonalUsage
pattern SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS = SigninDetail_AllowPersonalUsage "PERSONAL_USAGE_DISALLOWED_USERLESS"

{-# COMPLETE
  SigninDetail_AllowPersonalUsage_ALLOWPERSONALUSAGEUNSPECIFIED,
  SigninDetail_AllowPersonalUsage_PERSONALUSAGEALLOWED,
  SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWED,
  SigninDetail_AllowPersonalUsage_PERSONALUSAGEDISALLOWEDUSERLESS,
  SigninDetail_AllowPersonalUsage #-}

-- | Optional. Whether the sign-in URL should be used by default for the enterprise. The SigninDetail with defaultStatus set to SIGNIN/DETAIL/IS/DEFAULT is used for Google account enrollment method. Only one of an enterprise\'s signinDetails can have defaultStatus set to SIGNIN/DETAIL/IS/DEFAULT. If an Enterprise has at least one signinDetails and none of them have defaultStatus set to SIGNIN/DETAIL/IS/DEFAULT then the first one from the list is selected and has set defaultStatus to SIGNIN/DETAIL/IS/DEFAULT. If no signinDetails specified for the Enterprise then the Google Account device enrollment will fail.
newtype SigninDetail_DefaultStatus = SigninDetail_DefaultStatus { fromSigninDetail_DefaultStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Equivalent to SIGNIN/DETAIL/IS/NOT/DEFAULT.
pattern SigninDetail_DefaultStatus_SIGNINDETAILDEFAULTSTATUSUNSPECIFIED :: SigninDetail_DefaultStatus
pattern SigninDetail_DefaultStatus_SIGNINDETAILDEFAULTSTATUSUNSPECIFIED = SigninDetail_DefaultStatus "SIGNIN_DETAIL_DEFAULT_STATUS_UNSPECIFIED"

-- | The sign-in URL will be used by default for the enterprise.
pattern SigninDetail_DefaultStatus_SIGNINDETAILISDEFAULT :: SigninDetail_DefaultStatus
pattern SigninDetail_DefaultStatus_SIGNINDETAILISDEFAULT = SigninDetail_DefaultStatus "SIGNIN_DETAIL_IS_DEFAULT"

-- | The sign-in URL will not be used by default for the enterprise.
pattern SigninDetail_DefaultStatus_SIGNINDETAILISNOTDEFAULT :: SigninDetail_DefaultStatus
pattern SigninDetail_DefaultStatus_SIGNINDETAILISNOTDEFAULT = SigninDetail_DefaultStatus "SIGNIN_DETAIL_IS_NOT_DEFAULT"

{-# COMPLETE
  SigninDetail_DefaultStatus_SIGNINDETAILDEFAULTSTATUSUNSPECIFIED,
  SigninDetail_DefaultStatus_SIGNINDETAILISDEFAULT,
  SigninDetail_DefaultStatus_SIGNINDETAILISNOTDEFAULT,
  SigninDetail_DefaultStatus #-}

-- | The status. See StartLostModeStatus.
newtype StartLostModeStatus_Status = StartLostModeStatus_Status { fromStartLostModeStatus_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. This value is not used.
pattern StartLostModeStatus_Status_STATUSUNSPECIFIED :: StartLostModeStatus_Status
pattern StartLostModeStatus_Status_STATUSUNSPECIFIED = StartLostModeStatus_Status "STATUS_UNSPECIFIED"

-- | The device was put into lost mode.
pattern StartLostModeStatus_Status_Success :: StartLostModeStatus_Status
pattern StartLostModeStatus_Status_Success = StartLostModeStatus_Status "SUCCESS"

-- | The device could not be put into lost mode because the admin reset the device\'s password recently.
pattern StartLostModeStatus_Status_RESETPASSWORDRECENTLY :: StartLostModeStatus_Status
pattern StartLostModeStatus_Status_RESETPASSWORDRECENTLY = StartLostModeStatus_Status "RESET_PASSWORD_RECENTLY"

-- | The device could not be put into lost mode because the user exited lost mode recently.
pattern StartLostModeStatus_Status_USEREXITLOSTMODERECENTLY :: StartLostModeStatus_Status
pattern StartLostModeStatus_Status_USEREXITLOSTMODERECENTLY = StartLostModeStatus_Status "USER_EXIT_LOST_MODE_RECENTLY"

-- | The device is already in lost mode.
pattern StartLostModeStatus_Status_ALREADYINLOSTMODE :: StartLostModeStatus_Status
pattern StartLostModeStatus_Status_ALREADYINLOSTMODE = StartLostModeStatus_Status "ALREADY_IN_LOST_MODE"

{-# COMPLETE
  StartLostModeStatus_Status_STATUSUNSPECIFIED,
  StartLostModeStatus_Status_Success,
  StartLostModeStatus_Status_RESETPASSWORDRECENTLY,
  StartLostModeStatus_Status_USEREXITLOSTMODERECENTLY,
  StartLostModeStatus_Status_ALREADYINLOSTMODE,
  StartLostModeStatus_Status #-}

-- | The status. See StopLostModeStatus.
newtype StopLostModeStatus_Status = StopLostModeStatus_Status { fromStopLostModeStatus_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. This value is not used.
pattern StopLostModeStatus_Status_STATUSUNSPECIFIED :: StopLostModeStatus_Status
pattern StopLostModeStatus_Status_STATUSUNSPECIFIED = StopLostModeStatus_Status "STATUS_UNSPECIFIED"

-- | The device was taken out of lost mode.
pattern StopLostModeStatus_Status_Success :: StopLostModeStatus_Status
pattern StopLostModeStatus_Status_Success = StopLostModeStatus_Status "SUCCESS"

-- | The device is not in lost mode.
pattern StopLostModeStatus_Status_NOTINLOSTMODE :: StopLostModeStatus_Status
pattern StopLostModeStatus_Status_NOTINLOSTMODE = StopLostModeStatus_Status "NOT_IN_LOST_MODE"

{-# COMPLETE
  StopLostModeStatus_Status_STATUSUNSPECIFIED,
  StopLostModeStatus_Status_Success,
  StopLostModeStatus_Status_NOTINLOSTMODE,
  StopLostModeStatus_Status #-}

-- | The status of the attempt to stop lost mode.
newtype StopLostModeUserAttemptEvent_Status = StopLostModeUserAttemptEvent_Status { fromStopLostModeUserAttemptEvent_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern StopLostModeUserAttemptEvent_Status_STATUSUNSPECIFIED :: StopLostModeUserAttemptEvent_Status
pattern StopLostModeUserAttemptEvent_Status_STATUSUNSPECIFIED = StopLostModeUserAttemptEvent_Status "STATUS_UNSPECIFIED"

-- | Indicates that the user successfully stopped lost mode.
pattern StopLostModeUserAttemptEvent_Status_ATTEMPTSUCCEEDED :: StopLostModeUserAttemptEvent_Status
pattern StopLostModeUserAttemptEvent_Status_ATTEMPTSUCCEEDED = StopLostModeUserAttemptEvent_Status "ATTEMPT_SUCCEEDED"

-- | Indicates that the user\'s attempt to stop lost mode failed.
pattern StopLostModeUserAttemptEvent_Status_ATTEMPTFAILED :: StopLostModeUserAttemptEvent_Status
pattern StopLostModeUserAttemptEvent_Status_ATTEMPTFAILED = StopLostModeUserAttemptEvent_Status "ATTEMPT_FAILED"

{-# COMPLETE
  StopLostModeUserAttemptEvent_Status_STATUSUNSPECIFIED,
  StopLostModeUserAttemptEvent_Status_ATTEMPTSUCCEEDED,
  StopLostModeUserAttemptEvent_Status_ATTEMPTFAILED,
  StopLostModeUserAttemptEvent_Status #-}

-- | The type of system update to configure.
newtype SystemUpdate_Type = SystemUpdate_Type { fromSystemUpdate_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

-- | Postpone automatic install up to a maximum of 30 days. This policy does not affect security updates (e.g. monthly security patches).
pattern SystemUpdate_Type_Postpone :: SystemUpdate_Type
pattern SystemUpdate_Type_Postpone = SystemUpdate_Type "POSTPONE"

{-# COMPLETE
  SystemUpdate_Type_SYSTEMUPDATETYPEUNSPECIFIED,
  SystemUpdate_Type_Automatic,
  SystemUpdate_Type_Windowed,
  SystemUpdate_Type_Postpone,
  SystemUpdate_Type #-}

-- | The status of an update: whether an update exists and what type it is.
newtype SystemUpdateInfo_UpdateStatus = SystemUpdateInfo_UpdateStatus { fromSystemUpdateInfo_UpdateStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  SystemUpdateInfo_UpdateStatus #-}

newtype UsageLog_EnabledLogTypesItem = UsageLog_EnabledLogTypesItem { fromUsageLog_EnabledLogTypesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern UsageLog_EnabledLogTypesItem_LOGTYPEUNSPECIFIED :: UsageLog_EnabledLogTypesItem
pattern UsageLog_EnabledLogTypesItem_LOGTYPEUNSPECIFIED = UsageLog_EnabledLogTypesItem "LOG_TYPE_UNSPECIFIED"

-- | Enable logging of on-device security events, like when the device password is incorrectly entered or removable storage is mounted. See UsageLogEvent for a complete description of the logged security events. Supported for fully managed devices on Android 7 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only security events from the work profile are logged. Can be overridden by the application delegated scope SECURITY_LOGS
pattern UsageLog_EnabledLogTypesItem_SECURITYLOGS :: UsageLog_EnabledLogTypesItem
pattern UsageLog_EnabledLogTypesItem_SECURITYLOGS = UsageLog_EnabledLogTypesItem "SECURITY_LOGS"

-- | Enable logging of on-device network events, like DNS lookups and TCP connections. See UsageLogEvent for a complete description of the logged network events. Supported for fully managed devices on Android 8 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only network events from the work profile are logged. Can be overridden by the application delegated scope NETWORK/ACTIVITY/LOGS
pattern UsageLog_EnabledLogTypesItem_NETWORKACTIVITYLOGS :: UsageLog_EnabledLogTypesItem
pattern UsageLog_EnabledLogTypesItem_NETWORKACTIVITYLOGS = UsageLog_EnabledLogTypesItem "NETWORK_ACTIVITY_LOGS"

{-# COMPLETE
  UsageLog_EnabledLogTypesItem_LOGTYPEUNSPECIFIED,
  UsageLog_EnabledLogTypesItem_SECURITYLOGS,
  UsageLog_EnabledLogTypesItem_NETWORKACTIVITYLOGS,
  UsageLog_EnabledLogTypesItem #-}

newtype UsageLog_UploadOnCellularAllowedItem = UsageLog_UploadOnCellularAllowedItem { fromUsageLog_UploadOnCellularAllowedItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used.
pattern UsageLog_UploadOnCellularAllowedItem_LOGTYPEUNSPECIFIED :: UsageLog_UploadOnCellularAllowedItem
pattern UsageLog_UploadOnCellularAllowedItem_LOGTYPEUNSPECIFIED = UsageLog_UploadOnCellularAllowedItem "LOG_TYPE_UNSPECIFIED"

-- | Enable logging of on-device security events, like when the device password is incorrectly entered or removable storage is mounted. See UsageLogEvent for a complete description of the logged security events. Supported for fully managed devices on Android 7 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only security events from the work profile are logged. Can be overridden by the application delegated scope SECURITY_LOGS
pattern UsageLog_UploadOnCellularAllowedItem_SECURITYLOGS :: UsageLog_UploadOnCellularAllowedItem
pattern UsageLog_UploadOnCellularAllowedItem_SECURITYLOGS = UsageLog_UploadOnCellularAllowedItem "SECURITY_LOGS"

-- | Enable logging of on-device network events, like DNS lookups and TCP connections. See UsageLogEvent for a complete description of the logged network events. Supported for fully managed devices on Android 8 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only network events from the work profile are logged. Can be overridden by the application delegated scope NETWORK/ACTIVITY/LOGS
pattern UsageLog_UploadOnCellularAllowedItem_NETWORKACTIVITYLOGS :: UsageLog_UploadOnCellularAllowedItem
pattern UsageLog_UploadOnCellularAllowedItem_NETWORKACTIVITYLOGS = UsageLog_UploadOnCellularAllowedItem "NETWORK_ACTIVITY_LOGS"

{-# COMPLETE
  UsageLog_UploadOnCellularAllowedItem_LOGTYPEUNSPECIFIED,
  UsageLog_UploadOnCellularAllowedItem_SECURITYLOGS,
  UsageLog_UploadOnCellularAllowedItem_NETWORKACTIVITYLOGS,
  UsageLog_UploadOnCellularAllowedItem #-}

-- | The particular usage log event type that was reported on the device. Use this to determine which event field to access.
newtype UsageLogEvent_EventType = UsageLogEvent_EventType { fromUsageLogEvent_EventType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This value is not used
pattern UsageLogEvent_EventType_EVENTTYPEUNSPECIFIED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_EVENTTYPEUNSPECIFIED = UsageLogEvent_EventType "EVENT_TYPE_UNSPECIFIED"

-- | Indicates adb/shell/command_event has been set.
pattern UsageLogEvent_EventType_ADBSHELLCOMMAND :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_ADBSHELLCOMMAND = UsageLogEvent_EventType "ADB_SHELL_COMMAND"

-- | Indicates adb/shell/interactive_event has been set.
pattern UsageLogEvent_EventType_ADBSHELLINTERACTIVE :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_ADBSHELLINTERACTIVE = UsageLogEvent_EventType "ADB_SHELL_INTERACTIVE"

-- | Indicates app/process/start_event has been set.
pattern UsageLogEvent_EventType_APPPROCESSSTART :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_APPPROCESSSTART = UsageLogEvent_EventType "APP_PROCESS_START"

-- | Indicates keyguard/dismissed/event has been set.
pattern UsageLogEvent_EventType_KEYGUARDDISMISSED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYGUARDDISMISSED = UsageLogEvent_EventType "KEYGUARD_DISMISSED"

-- | Indicates keyguard/dismiss/auth/attempt/event has been set.
pattern UsageLogEvent_EventType_KEYGUARDDISMISSAUTHATTEMPT :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYGUARDDISMISSAUTHATTEMPT = UsageLogEvent_EventType "KEYGUARD_DISMISS_AUTH_ATTEMPT"

-- | Indicates keyguard/secured/event has been set.
pattern UsageLogEvent_EventType_KEYGUARDSECURED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYGUARDSECURED = UsageLogEvent_EventType "KEYGUARD_SECURED"

-- | Indicates file/pulled/event has been set.
pattern UsageLogEvent_EventType_FILEPULLED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_FILEPULLED = UsageLogEvent_EventType "FILE_PULLED"

-- | Indicates file/pushed/event has been set.
pattern UsageLogEvent_EventType_FILEPUSHED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_FILEPUSHED = UsageLogEvent_EventType "FILE_PUSHED"

-- | Indicates cert/authority/installed_event has been set.
pattern UsageLogEvent_EventType_CERTAUTHORITYINSTALLED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_CERTAUTHORITYINSTALLED = UsageLogEvent_EventType "CERT_AUTHORITY_INSTALLED"

-- | Indicates cert/authority/removed_event has been set.
pattern UsageLogEvent_EventType_CERTAUTHORITYREMOVED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_CERTAUTHORITYREMOVED = UsageLogEvent_EventType "CERT_AUTHORITY_REMOVED"

-- | Indicates cert/validation/failure_event has been set.
pattern UsageLogEvent_EventType_CERTVALIDATIONFAILURE :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_CERTVALIDATIONFAILURE = UsageLogEvent_EventType "CERT_VALIDATION_FAILURE"

-- | Indicates crypto/self/test/completed/event has been set.
pattern UsageLogEvent_EventType_CRYPTOSELFTESTCOMPLETED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_CRYPTOSELFTESTCOMPLETED = UsageLogEvent_EventType "CRYPTO_SELF_TEST_COMPLETED"

-- | Indicates key/destruction/event has been set.
pattern UsageLogEvent_EventType_KEYDESTRUCTION :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYDESTRUCTION = UsageLogEvent_EventType "KEY_DESTRUCTION"

-- | Indicates key/generated/event has been set.
pattern UsageLogEvent_EventType_KEYGENERATED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYGENERATED = UsageLogEvent_EventType "KEY_GENERATED"

-- | Indicates key/import/event has been set.
pattern UsageLogEvent_EventType_KEYIMPORT :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYIMPORT = UsageLogEvent_EventType "KEY_IMPORT"

-- | Indicates key/integrity/violation_event has been set.
pattern UsageLogEvent_EventType_KEYINTEGRITYVIOLATION :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_KEYINTEGRITYVIOLATION = UsageLogEvent_EventType "KEY_INTEGRITY_VIOLATION"

-- | Indicates logging/started/event has been set.
pattern UsageLogEvent_EventType_LOGGINGSTARTED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_LOGGINGSTARTED = UsageLogEvent_EventType "LOGGING_STARTED"

-- | Indicates logging/stopped/event has been set.
pattern UsageLogEvent_EventType_LOGGINGSTOPPED :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_LOGGINGSTOPPED = UsageLogEvent_EventType "LOGGING_STOPPED"

-- | Indicates log/buffer/size/critical/event has been set.
pattern UsageLogEvent_EventType_LOGBUFFERSIZECRITICAL :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_LOGBUFFERSIZECRITICAL = UsageLogEvent_EventType "LOG_BUFFER_SIZE_CRITICAL"

-- | Indicates media/mount/event has been set.
pattern UsageLogEvent_EventType_MEDIAMOUNT :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_MEDIAMOUNT = UsageLogEvent_EventType "MEDIA_MOUNT"

-- | Indicates media/unmount/event has been set.
pattern UsageLogEvent_EventType_MEDIAUNMOUNT :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_MEDIAUNMOUNT = UsageLogEvent_EventType "MEDIA_UNMOUNT"

-- | Indicates os/shutdown/event has been set.
pattern UsageLogEvent_EventType_OSSHUTDOWN :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_OSSHUTDOWN = UsageLogEvent_EventType "OS_SHUTDOWN"

-- | Indicates os/startup/event has been set.
pattern UsageLogEvent_EventType_OSSTARTUP :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_OSSTARTUP = UsageLogEvent_EventType "OS_STARTUP"

-- | Indicates remote/lock/event has been set.
pattern UsageLogEvent_EventType_REMOTELOCK :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_REMOTELOCK = UsageLogEvent_EventType "REMOTE_LOCK"

-- | Indicates wipe/failure/event has been set.
pattern UsageLogEvent_EventType_WIPEFAILURE :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_WIPEFAILURE = UsageLogEvent_EventType "WIPE_FAILURE"

-- | Indicates connect_event has been set.
pattern UsageLogEvent_EventType_Connect :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_Connect = UsageLogEvent_EventType "CONNECT"

-- | Indicates dns_event has been set.
pattern UsageLogEvent_EventType_Dns :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_Dns = UsageLogEvent_EventType "DNS"

-- | Indicates stopLostModeUserAttemptEvent has been set.
pattern UsageLogEvent_EventType_STOPLOSTMODEUSERATTEMPT :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_STOPLOSTMODEUSERATTEMPT = UsageLogEvent_EventType "STOP_LOST_MODE_USER_ATTEMPT"

-- | Indicates lostModeOutgoingPhoneCallEvent has been set.
pattern UsageLogEvent_EventType_LOSTMODEOUTGOINGPHONECALL :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_LOSTMODEOUTGOINGPHONECALL = UsageLogEvent_EventType "LOST_MODE_OUTGOING_PHONE_CALL"

-- | Indicates lostModeLocationEvent has been set.
pattern UsageLogEvent_EventType_LOSTMODELOCATION :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_LOSTMODELOCATION = UsageLogEvent_EventType "LOST_MODE_LOCATION"

-- | Indicates enrollment/complete/event has been set.
pattern UsageLogEvent_EventType_ENROLLMENTCOMPLETE :: UsageLogEvent_EventType
pattern UsageLogEvent_EventType_ENROLLMENTCOMPLETE = UsageLogEvent_EventType "ENROLLMENT_COMPLETE"

{-# COMPLETE
  UsageLogEvent_EventType_EVENTTYPEUNSPECIFIED,
  UsageLogEvent_EventType_ADBSHELLCOMMAND,
  UsageLogEvent_EventType_ADBSHELLINTERACTIVE,
  UsageLogEvent_EventType_APPPROCESSSTART,
  UsageLogEvent_EventType_KEYGUARDDISMISSED,
  UsageLogEvent_EventType_KEYGUARDDISMISSAUTHATTEMPT,
  UsageLogEvent_EventType_KEYGUARDSECURED,
  UsageLogEvent_EventType_FILEPULLED,
  UsageLogEvent_EventType_FILEPUSHED,
  UsageLogEvent_EventType_CERTAUTHORITYINSTALLED,
  UsageLogEvent_EventType_CERTAUTHORITYREMOVED,
  UsageLogEvent_EventType_CERTVALIDATIONFAILURE,
  UsageLogEvent_EventType_CRYPTOSELFTESTCOMPLETED,
  UsageLogEvent_EventType_KEYDESTRUCTION,
  UsageLogEvent_EventType_KEYGENERATED,
  UsageLogEvent_EventType_KEYIMPORT,
  UsageLogEvent_EventType_KEYINTEGRITYVIOLATION,
  UsageLogEvent_EventType_LOGGINGSTARTED,
  UsageLogEvent_EventType_LOGGINGSTOPPED,
  UsageLogEvent_EventType_LOGBUFFERSIZECRITICAL,
  UsageLogEvent_EventType_MEDIAMOUNT,
  UsageLogEvent_EventType_MEDIAUNMOUNT,
  UsageLogEvent_EventType_OSSHUTDOWN,
  UsageLogEvent_EventType_OSSTARTUP,
  UsageLogEvent_EventType_REMOTELOCK,
  UsageLogEvent_EventType_WIPEFAILURE,
  UsageLogEvent_EventType_Connect,
  UsageLogEvent_EventType_Dns,
  UsageLogEvent_EventType_STOPLOSTMODEUSERATTEMPT,
  UsageLogEvent_EventType_LOSTMODEOUTGOINGPHONECALL,
  UsageLogEvent_EventType_LOSTMODELOCATION,
  UsageLogEvent_EventType_ENROLLMENTCOMPLETE,
  UsageLogEvent_EventType #-}

-- | The display mode of the web app.
newtype WebApp_DisplayMode = WebApp_DisplayMode { fromWebApp_DisplayMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  WebApp_DisplayMode #-}

newtype WebToken_EnabledFeaturesItem = WebToken_EnabledFeaturesItem { fromWebToken_EnabledFeaturesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  WebToken_EnabledFeaturesItem #-}

newtype WebToken_PermissionsItem = WebToken_PermissionsItem { fromWebToken_PermissionsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  WebToken_PermissionsItem #-}

-- | Required. Wi-Fi roaming mode for the specified SSID.
newtype WifiRoamingSetting_WifiRoamingMode = WifiRoamingSetting_WifiRoamingMode { fromWifiRoamingSetting_WifiRoamingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified. Defaults to WIFI/ROAMING/DEFAULT.
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGMODEUNSPECIFIED :: WifiRoamingSetting_WifiRoamingMode
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGMODEUNSPECIFIED = WifiRoamingSetting_WifiRoamingMode "WIFI_ROAMING_MODE_UNSPECIFIED"

-- | Wi-Fi roaming is disabled. Supported on Android 15 and above on fully managed devices and work profiles on company-owned devices. A nonComplianceDetail with MANAGEMENT/MODE is reported for other management modes. A nonComplianceDetail with API/LEVEL is reported if the Android version is less than 15.
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDISABLED :: WifiRoamingSetting_WifiRoamingMode
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDISABLED = WifiRoamingSetting_WifiRoamingMode "WIFI_ROAMING_DISABLED"

-- | Default Wi-Fi roaming mode of the device.
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDEFAULT :: WifiRoamingSetting_WifiRoamingMode
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDEFAULT = WifiRoamingSetting_WifiRoamingMode "WIFI_ROAMING_DEFAULT"

-- | Aggressive roaming mode which allows quicker Wi-Fi roaming. Supported on Android 15 and above on fully managed devices and work profiles on company-owned devices. A nonComplianceDetail with MANAGEMENT/MODE is reported for other management modes. A nonComplianceDetail with API/LEVEL is reported if the Android version is less than 15. A nonComplianceDetail with DEVICE_INCOMPATIBLE is reported if the device does not support aggressive roaming mode.
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGAGGRESSIVE :: WifiRoamingSetting_WifiRoamingMode
pattern WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGAGGRESSIVE = WifiRoamingSetting_WifiRoamingMode "WIFI_ROAMING_AGGRESSIVE"

{-# COMPLETE
  WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGMODEUNSPECIFIED,
  WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDISABLED,
  WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGDEFAULT,
  WifiRoamingSetting_WifiRoamingMode_WIFIROAMINGAGGRESSIVE,
  WifiRoamingSetting_WifiRoamingMode #-}

-- | Type of the Wi-Fi SSID policy to be applied.
newtype WifiSsidPolicy_WifiSsidPolicyType = WifiSsidPolicy_WifiSsidPolicyType { fromWifiSsidPolicy_WifiSsidPolicyType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Defaults to WIFI/SSID/DENYLIST. wifiSsids must not be set. There are no restrictions on which SSID the device can connect to.
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDPOLICYTYPEUNSPECIFIED :: WifiSsidPolicy_WifiSsidPolicyType
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDPOLICYTYPEUNSPECIFIED = WifiSsidPolicy_WifiSsidPolicyType "WIFI_SSID_POLICY_TYPE_UNSPECIFIED"

-- | The device cannot connect to any Wi-Fi network whose SSID is in wifiSsids, but can connect to other networks.
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDDENYLIST :: WifiSsidPolicy_WifiSsidPolicyType
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDDENYLIST = WifiSsidPolicy_WifiSsidPolicyType "WIFI_SSID_DENYLIST"

-- | The device can make Wi-Fi connections only to the SSIDs in wifiSsids. wifiSsids must not be empty. The device will not be able to connect to any other Wi-Fi network.
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDALLOWLIST :: WifiSsidPolicy_WifiSsidPolicyType
pattern WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDALLOWLIST = WifiSsidPolicy_WifiSsidPolicyType "WIFI_SSID_ALLOWLIST"

{-# COMPLETE
  WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDPOLICYTYPEUNSPECIFIED,
  WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDDENYLIST,
  WifiSsidPolicy_WifiSsidPolicyType_WIFISSIDALLOWLIST,
  WifiSsidPolicy_WifiSsidPolicyType #-}

-- | Optional flags that control the device wiping behavior.
newtype EnterprisesDevicesDeleteWipeDataFlags = EnterprisesDevicesDeleteWipeDataFlags { fromEnterprisesDevicesDeleteWipeDataFlags :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EnterprisesDevicesDeleteWipeDataFlags #-}

-- | Specifies which Enterprise fields to return. This method only supports BASIC.
newtype EnterprisesListView = EnterprisesListView { fromEnterprisesListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EnterprisesListView #-}
