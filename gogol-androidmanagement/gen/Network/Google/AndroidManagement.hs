{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidManagement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Android Management API provides remote enterprise management of
-- Android devices and apps.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference>
module Network.Google.AndroidManagement
    (
    -- * Service Configuration
      androidManagementService

    -- * OAuth Scopes
    , androidManagementScope

    -- * API Declaration
    , AndroidManagementAPI

    -- * Resources

    -- ** androidmanagement.enterprises.applications.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.Applications.Get

    -- ** androidmanagement.enterprises.create
    , module Network.Google.Resource.AndroidManagement.Enterprises.Create

    -- ** androidmanagement.enterprises.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.Delete

    -- ** androidmanagement.enterprises.devices.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Delete

    -- ** androidmanagement.enterprises.devices.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Get

    -- ** androidmanagement.enterprises.devices.issueCommand
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.IssueCommand

    -- ** androidmanagement.enterprises.devices.list
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.List

    -- ** androidmanagement.enterprises.devices.operations.cancel
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Cancel

    -- ** androidmanagement.enterprises.devices.operations.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Delete

    -- ** androidmanagement.enterprises.devices.operations.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Get

    -- ** androidmanagement.enterprises.devices.operations.list
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.List

    -- ** androidmanagement.enterprises.devices.patch
    , module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Patch

    -- ** androidmanagement.enterprises.enrollmentTokens.create
    , module Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Create

    -- ** androidmanagement.enterprises.enrollmentTokens.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Delete

    -- ** androidmanagement.enterprises.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.Get

    -- ** androidmanagement.enterprises.list
    , module Network.Google.Resource.AndroidManagement.Enterprises.List

    -- ** androidmanagement.enterprises.patch
    , module Network.Google.Resource.AndroidManagement.Enterprises.Patch

    -- ** androidmanagement.enterprises.policies.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Delete

    -- ** androidmanagement.enterprises.policies.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Get

    -- ** androidmanagement.enterprises.policies.list
    , module Network.Google.Resource.AndroidManagement.Enterprises.Policies.List

    -- ** androidmanagement.enterprises.policies.patch
    , module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Patch

    -- ** androidmanagement.enterprises.webApps.create
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Create

    -- ** androidmanagement.enterprises.webApps.delete
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Delete

    -- ** androidmanagement.enterprises.webApps.get
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Get

    -- ** androidmanagement.enterprises.webApps.list
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.List

    -- ** androidmanagement.enterprises.webApps.patch
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Patch

    -- ** androidmanagement.enterprises.webTokens.create
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create

    -- ** androidmanagement.signupUrls.create
    , module Network.Google.Resource.AndroidManagement.SignupURLs.Create

    -- * Types

    -- ** KioskCustomizationPowerButtonActions
    , KioskCustomizationPowerButtonActions (..)

    -- ** PowerManagementEventEventType
    , PowerManagementEventEventType (..)

    -- ** KioskCustomizationSystemErrorWarnings
    , KioskCustomizationSystemErrorWarnings (..)

    -- ** AdvancedSecurityOverridesDeveloperSettings
    , AdvancedSecurityOverridesDeveloperSettings (..)

    -- ** WebTokenEnabledFeaturesItem
    , WebTokenEnabledFeaturesItem (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** SystemUpdateType
    , SystemUpdateType (..)

    -- ** SystemUpdateInfoUpdateStatus
    , SystemUpdateInfoUpdateStatus (..)

    -- ** ApplicationPolicyAutoUpdateMode
    , ApplicationPolicyAutoUpdateMode (..)

    -- ** ListPoliciesResponse
    , ListPoliciesResponse
    , listPoliciesResponse
    , lprNextPageToken
    , lprPolicies

    -- ** MemoryInfo
    , MemoryInfo
    , memoryInfo
    , miTotalInternalStorage
    , miTotalRam

    -- ** DeviceState
    , DeviceState (..)

    -- ** PackageNameList
    , PackageNameList
    , packageNameList
    , pnlPackageNames

    -- ** Command
    , Command
    , command
    , cResetPasswordFlags
    , cNewPassword
    , cUserName
    , cErrorCode
    , cType
    , cDuration
    , cCreateTime

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** Display
    , Display
    , display
    , dHeight
    , dState
    , dWidth
    , dName
    , dRefreshRate
    , dDisplayId
    , dDensity

    -- ** AlwaysOnVPNPackage
    , AlwaysOnVPNPackage
    , alwaysOnVPNPackage
    , aovpLockdownEnabled
    , aovpPackageName

    -- ** PolicyOpenNetworkConfiguration
    , PolicyOpenNetworkConfiguration
    , policyOpenNetworkConfiguration
    , poncAddtional

    -- ** LaunchAppAction
    , LaunchAppAction
    , launchAppAction
    , laaPackageName

    -- ** CommandErrorCode
    , CommandErrorCode (..)

    -- ** CommonCriteriaModeInfoCommonCriteriaModeStatus
    , CommonCriteriaModeInfoCommonCriteriaModeStatus (..)

    -- ** PolicyAndroidDevicePolicyTracksItem
    , PolicyAndroidDevicePolicyTracksItem (..)

    -- ** PolicyEnforcementRule
    , PolicyEnforcementRule
    , policyEnforcementRule
    , perWipeAction
    , perSettingName
    , perBlockAction

    -- ** HardwareStatus
    , HardwareStatus
    , hardwareStatus
    , hsCPUTemperatures
    , hsBatteryTemperatures
    , hsGpuTemperatures
    , hsFanSpeeds
    , hsSkinTemperatures
    , hsCPUUsages
    , hsCreateTime

    -- ** Application
    , Application
    , application
    , aAppTracks
    , aManagedProperties
    , aName
    , aPermissions
    , aTitle

    -- ** PersonalApplicationPolicy
    , PersonalApplicationPolicy
    , personalApplicationPolicy
    , papPackageName
    , papInstallType

    -- ** ManagedProperty
    , ManagedProperty
    , managedProperty
    , mpEntries
    , mpNestedProperties
    , mpKey
    , mpDefaultValue
    , mpTitle
    , mpType
    , mpDescription

    -- ** ProxyInfo
    , ProxyInfo
    , proxyInfo
    , piPacURI
    , piHost
    , piExcludedHosts
    , piPort

    -- ** KioskCustomizationStatusBar
    , KioskCustomizationStatusBar (..)

    -- ** PermissionGrantPolicy
    , PermissionGrantPolicy (..)

    -- ** ApplicationPolicyDelegatedScopesItem
    , ApplicationPolicyDelegatedScopesItem (..)

    -- ** PersistentPreferredActivity
    , PersistentPreferredActivity
    , persistentPreferredActivity
    , ppaActions
    , ppaCategories
    , ppaReceiverActivity

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** ExternalData
    , ExternalData
    , externalData
    , edURL
    , edSha256Hash

    -- ** DisplayState
    , DisplayState (..)

    -- ** APILevelCondition
    , APILevelCondition
    , apiLevelCondition
    , alcMinAPILevel

    -- ** IssueCommandResponse
    , IssueCommandResponse
    , issueCommandResponse

    -- ** DeviceSettings
    , DeviceSettings
    , deviceSettings
    , dsIsEncrypted
    , dsAdbEnabled
    , dsIsDeviceSecure
    , dsVerifyAppsEnabled
    , dsDevelopmentSettingsEnabled
    , dsEncryptionStatus
    , dsUnknownSourcesEnabled

    -- ** WipeAction
    , WipeAction
    , wipeAction
    , waWipeAfterDays
    , waPreserveFrp

    -- ** PolicyPlayStoreMode
    , PolicyPlayStoreMode (..)

    -- ** ManagedConfigurationTemplateConfigurationVariables
    , ManagedConfigurationTemplateConfigurationVariables
    , managedConfigurationTemplateConfigurationVariables
    , mctcvAddtional

    -- ** DeviceManagementMode
    , DeviceManagementMode (..)

    -- ** HardwareInfo
    , HardwareInfo
    , hardwareInfo
    , hiCPUThrottlingTemperatures
    , hiManufacturer
    , hiBrand
    , hiCPUShutdownTemperatures
    , hiBatteryThrottlingTemperatures
    , hiModel
    , hiBatteryShutdownTemperatures
    , hiSkinThrottlingTemperatures
    , hiGpuShutdownTemperatures
    , hiGpuThrottlingTemperatures
    , hiSkinShutdownTemperatures
    , hiSerialNumber
    , hiDeviceBasebandVersion
    , hiHardware

    -- ** Device
    , Device
    , device
    , devMemoryInfo
    , devPolicyCompliant
    , devApplicationReports
    , devPolicyName
    , devState
    , devAppliedPolicyName
    , devLastStatusReportTime
    , devDeviceSettings
    , devEnrollmentTokenName
    , devManagementMode
    , devHardwareInfo
    , devPowerManagementEvents
    , devCommonCriteriaModeInfo
    , devUserName
    , devMemoryEvents
    , devAPILevel
    , devUser
    , devDisabledReason
    , devSystemProperties
    , devLastPolicyComplianceReportTime
    , devAppliedPasswordPolicies
    , devSecurityPosture
    , devEnrollmentTokenData
    , devName
    , devAppliedPolicyVersion
    , devHardwareStatusSamples
    , devAppliedState
    , devPreviousDeviceNames
    , devLastPolicySyncTime
    , devNetworkInfo
    , devNonComplianceDetails
    , devOwnership
    , devSoftwareInfo
    , devEnrollmentTime
    , devDisplays

    -- ** WebAppDisplayMode
    , WebAppDisplayMode (..)

    -- ** ContentProviderEndpoint
    , ContentProviderEndpoint
    , contentProviderEndpoint
    , cpePackageName
    , cpeSigningCertsSha256
    , cpeURI

    -- ** AdvancedSecurityOverridesUntrustedAppsPolicy
    , AdvancedSecurityOverridesUntrustedAppsPolicy (..)

    -- ** ApplicationReportApplicationSource
    , ApplicationReportApplicationSource (..)

    -- ** PersonalUsagePolicies
    , PersonalUsagePolicies
    , personalUsagePolicies
    , pupMaxDaysWithWorkOff
    , pupPersonalPlayStoreMode
    , pupScreenCaptureDisabled
    , pupPersonalApplications
    , pupAccountTypesWithManagementDisabled
    , pupCameraDisabled

    -- ** EnrollmentTokenAllowPersonalUsage
    , EnrollmentTokenAllowPersonalUsage (..)

    -- ** EnterpriseEnabledNotificationTypesItem
    , EnterpriseEnabledNotificationTypesItem (..)

    -- ** PostureDetail
    , PostureDetail
    , postureDetail
    , pdAdvice
    , pdSecurityRisk

    -- ** PolicyAutoDateAndTimeZone
    , PolicyAutoDateAndTimeZone (..)

    -- ** CommonCriteriaModeInfo
    , CommonCriteriaModeInfo
    , commonCriteriaModeInfo
    , ccmiCommonCriteriaModeStatus

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ApplicationPolicyInstallType
    , ApplicationPolicyInstallType (..)

    -- ** NonComplianceDetailInstallationFailureReason
    , NonComplianceDetailInstallationFailureReason (..)

    -- ** PasswordRequirementsPasswordScope
    , PasswordRequirementsPasswordScope (..)

    -- ** OncCertificateProvider
    , OncCertificateProvider
    , oncCertificateProvider
    , ocpContentProviderEndpoint
    , ocpCertificateReferences

    -- ** ManagedPropertyEntry
    , ManagedPropertyEntry
    , managedPropertyEntry
    , mpeValue
    , mpeName

    -- ** DeviceSettingsEncryptionStatus
    , DeviceSettingsEncryptionStatus (..)

    -- ** FreezePeriod
    , FreezePeriod
    , freezePeriod
    , fpEndDate
    , fpStartDate

    -- ** PolicyLocationMode
    , PolicyLocationMode (..)

    -- ** TelephonyInfo
    , TelephonyInfo
    , telephonyInfo
    , tiPhoneNumber
    , tiCarrierName

    -- ** EnterprisesListView
    , EnterprisesListView (..)

    -- ** ChoosePrivateKeyRule
    , ChoosePrivateKeyRule
    , choosePrivateKeyRule
    , cpkrPrivateKeyAlias
    , cpkrURLPattern
    , cpkrPackageNames

    -- ** UserFacingMessageLocalizedMessages
    , UserFacingMessageLocalizedMessages
    , userFacingMessageLocalizedMessages
    , ufmlmAddtional

    -- ** SigninDetailAllowPersonalUsage
    , SigninDetailAllowPersonalUsage (..)

    -- ** User
    , User
    , user
    , uAccountIdentifier

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** SecurityPosture
    , SecurityPosture
    , securityPosture
    , spPostureDetails
    , spDevicePosture

    -- ** AdvancedSecurityOverridesGooglePlayProtectVerifyApps
    , AdvancedSecurityOverridesGooglePlayProtectVerifyApps (..)

    -- ** SystemUpdate
    , SystemUpdate
    , systemUpdate
    , suFreezePeriods
    , suEndMinutes
    , suStartMinutes
    , suType

    -- ** BlockActionBlockScope
    , BlockActionBlockScope (..)

    -- ** DeviceSystemProperties
    , DeviceSystemProperties
    , deviceSystemProperties
    , dspAddtional

    -- ** ApplicationReport
    , ApplicationReport
    , applicationReport
    , arVersionCode
    , arSigningKeyCertFingerprints
    , arState
    , arVersionName
    , arPackageName
    , arPackageSha256Hash
    , arKeyedAppStates
    , arApplicationSource
    , arEvents
    , arDisplayName
    , arInstallerPackageName

    -- ** PolicyAppAutoUpdatePolicy
    , PolicyAppAutoUpdatePolicy (..)

    -- ** AdvancedSecurityOverrides
    , AdvancedSecurityOverrides
    , advancedSecurityOverrides
    , asoUntrustedAppsPolicy
    , asoCommonCriteriaMode
    , asoDeveloperSettings
    , asoGooglePlayProtectVerifyApps

    -- ** CommandResetPasswordFlagsItem
    , CommandResetPasswordFlagsItem (..)

    -- ** EnrollmentToken
    , EnrollmentToken
    , enrollmentToken
    , etPolicyName
    , etValue
    , etQrCode
    , etAdditionalData
    , etUser
    , etAllowPersonalUsage
    , etName
    , etOneTimeOnly
    , etExpirationTimestamp
    , etDuration

    -- ** ListEnterprisesResponse
    , ListEnterprisesResponse
    , listEnterprisesResponse
    , lerNextPageToken
    , lerEnterprises

    -- ** ApplicationPolicyManagedConfiguration
    , ApplicationPolicyManagedConfiguration
    , applicationPolicyManagedConfiguration
    , apmcAddtional

    -- ** BlockAction
    , BlockAction
    , blockAction
    , baBlockScope
    , baBlockAfterDays

    -- ** PolicyEncryptionPolicy
    , PolicyEncryptionPolicy (..)

    -- ** StatusReportingSettings
    , StatusReportingSettings
    , statusReportingSettings
    , srsSoftwareInfoEnabled
    , srsHardwareStatusEnabled
    , srsPowerManagementEventsEnabled
    , srsDisplayInfoEnabled
    , srsApplicationReportsEnabled
    , srsMemoryInfoEnabled
    , srsNetworkInfoEnabled
    , srsDeviceSettingsEnabled
    , srsCommonCriteriaModeEnabled
    , srsSystemPropertiesEnabled
    , srsApplicationReportingSettings

    -- ** KioskCustomizationSystemNavigation
    , KioskCustomizationSystemNavigation (..)

    -- ** CommandType
    , CommandType (..)

    -- ** SystemUpdateInfo
    , SystemUpdateInfo
    , systemUpdateInfo
    , suiUpdateStatus
    , suiUpdateReceivedTime

    -- ** ApplicationPolicyDefaultPermissionPolicy
    , ApplicationPolicyDefaultPermissionPolicy (..)

    -- ** WebAppIcon
    , WebAppIcon
    , webAppIcon
    , waiImageData

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdvancedSecurityOverridesCommonCriteriaMode
    , AdvancedSecurityOverridesCommonCriteriaMode (..)

    -- ** ApplicationPolicy
    , ApplicationPolicy
    , applicationPolicy
    , apAccessibleTrackIds
    , apDelegatedScopes
    , apPackageName
    , apManagedConfiguration
    , apDefaultPermissionPolicy
    , apDisabled
    , apLockTaskAllowed
    , apPermissionGrants
    , apConnectedWorkAndPersonalApp
    , apManagedConfigurationTemplate
    , apAutoUpdateMode
    , apMinimumVersionCode
    , apInstallType

    -- ** ManagedPropertyType
    , ManagedPropertyType (..)

    -- ** DeviceAppliedState
    , DeviceAppliedState (..)

    -- ** ApplicationEventEventType
    , ApplicationEventEventType (..)

    -- ** ListDevicesResponse
    , ListDevicesResponse
    , listDevicesResponse
    , ldrNextPageToken
    , ldrDevices

    -- ** ManagedConfigurationTemplate
    , ManagedConfigurationTemplate
    , managedConfigurationTemplate
    , mctTemplateId
    , mctConfigurationVariables

    -- ** KioskCustomizationDeviceSettings
    , KioskCustomizationDeviceSettings (..)

    -- ** NonComplianceDetailNonComplianceReason
    , NonComplianceDetailNonComplianceReason (..)

    -- ** Enterprise
    , Enterprise
    , enterprise
    , eAppAutoApprovalEnabled
    , eEnabledNotificationTypes
    , eSigninDetails
    , eName
    , ePubsubTopic
    , eEnterpriseDisplayName
    , eLogo
    , eTermsAndConditions
    , eContactInfo
    , ePrimaryColor

    -- ** MemoryEvent
    , MemoryEvent
    , memoryEvent
    , meByteCount
    , meEventType
    , meCreateTime

    -- ** PermissionGrant
    , PermissionGrant
    , permissionGrant
    , pgPolicy
    , pgPermission

    -- ** SigninDetail
    , SigninDetail
    , signinDetail
    , sdSigninURL
    , sdQrCode
    , sdAllowPersonalUsage
    , sdSigninEnrollmentToken

    -- ** SignupURL
    , SignupURL
    , signupURL
    , suURL
    , suName

    -- ** PolicyDefaultPermissionPolicy
    , PolicyDefaultPermissionPolicy (..)

    -- ** AppTrackInfo
    , AppTrackInfo
    , appTrackInfo
    , atiTrackAlias
    , atiTrackId

    -- ** NetworkInfo
    , NetworkInfo
    , networkInfo
    , niTelephonyInfos
    , niNetworkOperatorName
    , niMeid
    , niImei
    , niWifiMACAddress

    -- ** EnterprisesDevicesDeleteWipeDataFlags
    , EnterprisesDevicesDeleteWipeDataFlags (..)

    -- ** PolicyKeyguardDisabledFeaturesItem
    , PolicyKeyguardDisabledFeaturesItem (..)

    -- ** PowerManagementEvent
    , PowerManagementEvent
    , powerManagementEvent
    , pmeBatteryLevel
    , pmeEventType
    , pmeCreateTime

    -- ** Policy
    , Policy
    , policy
    , pBluetoothConfigDisabled
    , pUnmuteMicrophoneDisabled
    , pMountPhysicalMediaDisabled
    , pFrpAdminEmails
    , pAppAutoUpdatePolicy
    , pEncryptionPolicy
    , pAndroidDevicePolicyTracks
    , pSafeBootDisabled
    , pAlwaysOnVPNPackage
    , pChoosePrivateKeyRules
    , pCredentialsConfigDisabled
    , pRecommendedGlobalProxy
    , pPermittedAccessibilityServices
    , pKeyguardDisabled
    , pOncCertificateProviders
    , pSkipFirstUseHintsEnabled
    , pAdjustVolumeDisabled
    , pDefaultPermissionPolicy
    , pUninstallAppsDisabled
    , pSetUserIconDisabled
    , pPermittedInputMethods
    , pMinimumAPILevel
    , pScreenCaptureDisabled
    , pAddUserDisabled
    , pShareLocationDisabled
    , pAutoTimeRequired
    , pInstallAppsDisabled
    , pCreateWindowsDisabled
    , pNetworkResetDisabled
    , pPersonalUsagePolicies
    , pBluetoothContactSharingDisabled
    , pPermissionGrants
    , pShortSupportMessage
    , pStayOnPluggedModes
    , pDataRoamingDisabled
    , pDebuggingFeaturesAllowed
    , pKioskCustomLauncherEnabled
    , pWifiConfigsLockdownEnabled
    , pUsbMassStorageEnabled
    , pNetworkEscapeHatchEnabled
    , pSystemUpdate
    , pInstallUnknownSourcesAllowed
    , pName
    , pPrivateKeySelectionEnabled
    , pAdvancedSecurityOverrides
    , pOutgoingCallsDisabled
    , pStatusReportingSettings
    , pRemoveUserDisabled
    , pMobileNetworksConfigDisabled
    , pVersion
    , pEnsureVerifyAppsEnabled
    , pSetWallpaperDisabled
    , pVPNConfigDisabled
    , pSetupActions
    , pOpenNetworkConfiguration
    , pModifyAccountsDisabled
    , pBlockApplicationsEnabled
    , pKeyguardDisabledFeatures
    , pFunDisabled
    , pSmsDisabled
    , pMaximumTimeToLock
    , pOutgoingBeamDisabled
    , pStatusBarDisabled
    , pCellBroadcastsConfigDisabled
    , pDeviceOwnerLockScreenInfo
    , pPlayStoreMode
    , pKioskCustomization
    , pComplianceRules
    , pTetheringConfigDisabled
    , pAccountTypesWithManagementDisabled
    , pWifiConfigDisabled
    , pPersistentPreferredActivities
    , pPasswordRequirements
    , pAutoDateAndTimeZone
    , pLongSupportMessage
    , pLocationMode
    , pBluetoothDisabled
    , pPolicyEnforcementRules
    , pUsbFileTransferDisabled
    , pCameraDisabled
    , pApplications
    , pPasswordPolicies
    , pFactoryResetDisabled

    -- ** NonComplianceDetailCondition
    , NonComplianceDetailCondition
    , nonComplianceDetailCondition
    , ncdcPackageName
    , ncdcNonComplianceReason
    , ncdcSettingName

    -- ** KeyedAppState
    , KeyedAppState
    , keyedAppState
    , kasData
    , kasSeverity
    , kasKey
    , kasMessage
    , kasLastUpdateTime
    , kasCreateTime

    -- ** KioskCustomization
    , KioskCustomization
    , kioskCustomization
    , kcSystemNavigation
    , kcDeviceSettings
    , kcPowerButtonActions
    , kcSystemErrorWarnings
    , kcStatusBar

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** WebToken
    , WebToken
    , webToken
    , wtParentFrameURL
    , wtValue
    , wtName
    , wtEnabledFeatures
    , wtPermissions

    -- ** PersonalApplicationPolicyInstallType
    , PersonalApplicationPolicyInstallType (..)

    -- ** PersonalUsagePoliciesPersonalPlayStoreMode
    , PersonalUsagePoliciesPersonalPlayStoreMode (..)

    -- ** KeyedAppStateSeverity
    , KeyedAppStateSeverity (..)

    -- ** ComplianceRule
    , ComplianceRule
    , complianceRule
    , crAPILevelCondition
    , crDisableApps
    , crPackageNamesToDisable
    , crNonComplianceDetailCondition

    -- ** ListWebAppsResponse
    , ListWebAppsResponse
    , listWebAppsResponse
    , lwarNextPageToken
    , lwarWebApps

    -- ** DeviceOwnership
    , DeviceOwnership (..)

    -- ** PasswordRequirements
    , PasswordRequirements
    , passwordRequirements
    , prPasswordMinimumSymbols
    , prMaximumFailedPasswordsForWipe
    , prPasswordExpirationTimeout
    , prPasswordMinimumNonLetter
    , prPasswordHistoryLength
    , prPasswordMinimumLetters
    , prPasswordMinimumUpperCase
    , prRequirePasswordUnlock
    , prPasswordMinimumNumeric
    , prPasswordQuality
    , prPasswordMinimumLength
    , prPasswordScope
    , prPasswordMinimumLowerCase

    -- ** ApplicationReportState
    , ApplicationReportState (..)

    -- ** NonComplianceDetail
    , NonComplianceDetail
    , nonComplianceDetail
    , ncdFieldPath
    , ncdPackageName
    , ncdInstallationFailureReason
    , ncdNonComplianceReason
    , ncdSettingName
    , ncdCurrentValue

    -- ** PolicyStayOnPluggedModesItem
    , PolicyStayOnPluggedModesItem (..)

    -- ** NonComplianceDetailConditionNonComplianceReason
    , NonComplianceDetailConditionNonComplianceReason (..)

    -- ** ApplicationPolicyConnectedWorkAndPersonalApp
    , ApplicationPolicyConnectedWorkAndPersonalApp (..)

    -- ** ApplicationEvent
    , ApplicationEvent
    , applicationEvent
    , aeEventType
    , aeCreateTime

    -- ** SecurityPostureDevicePosture
    , SecurityPostureDevicePosture (..)

    -- ** WebTokenPermissionsItem
    , WebTokenPermissionsItem (..)

    -- ** TermsAndConditions
    , TermsAndConditions
    , termsAndConditions
    , tacContent
    , tacHeader

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** UserFacingMessage
    , UserFacingMessage
    , userFacingMessage
    , ufmLocalizedMessages
    , ufmDefaultMessage

    -- ** ContactInfo
    , ContactInfo
    , contactInfo
    , ciContactEmail
    , ciDataProtectionOfficerName
    , ciEuRepresentativeName
    , ciEuRepresentativeEmail
    , ciEuRepresentativePhone
    , ciDataProtectionOfficerEmail
    , ciDataProtectionOfficerPhone

    -- ** PostureDetailSecurityRisk
    , PostureDetailSecurityRisk (..)

    -- ** SoftwareInfo
    , SoftwareInfo
    , softwareInfo
    , siSecurityPatchLevel
    , siAndroidDevicePolicyVersionName
    , siDeviceKernelVersion
    , siAndroidDevicePolicyVersionCode
    , siDeviceBuildSignature
    , siSystemUpdateInfo
    , siBootLoaderVersion
    , siAndroidBuildTime
    , siPrimaryLanguageCode
    , siAndroidBuildNumber
    , siAndroidVersion

    -- ** ApplicationReportingSettings
    , ApplicationReportingSettings
    , applicationReportingSettings
    , arsIncludeRemovedApps

    -- ** MemoryEventEventType
    , MemoryEventEventType (..)

    -- ** ApplicationPermission
    , ApplicationPermission
    , applicationPermission
    , apName
    , apDescription
    , apPermissionId

    -- ** PasswordRequirementsRequirePasswordUnlock
    , PasswordRequirementsRequirePasswordUnlock (..)

    -- ** SetupAction
    , SetupAction
    , setupAction
    , saLaunchApp
    , saTitle
    , saDescription

    -- ** WebApp
    , WebApp
    , webApp
    , waVersionCode
    , waIcons
    , waStartURL
    , waDisplayMode
    , waName
    , waTitle

    -- ** PasswordRequirementsPasswordQuality
    , PasswordRequirementsPasswordQuality (..)
    ) where

import Network.Google.Prelude
import Network.Google.AndroidManagement.Types
import Network.Google.Resource.AndroidManagement.Enterprises.Applications.Get
import Network.Google.Resource.AndroidManagement.Enterprises.Create
import Network.Google.Resource.AndroidManagement.Enterprises.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Get
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.IssueCommand
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.List
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Cancel
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Get
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.List
import Network.Google.Resource.AndroidManagement.Enterprises.Devices.Patch
import Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Create
import Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.Get
import Network.Google.Resource.AndroidManagement.Enterprises.List
import Network.Google.Resource.AndroidManagement.Enterprises.Patch
import Network.Google.Resource.AndroidManagement.Enterprises.Policies.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.Policies.Get
import Network.Google.Resource.AndroidManagement.Enterprises.Policies.List
import Network.Google.Resource.AndroidManagement.Enterprises.Policies.Patch
import Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Create
import Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Delete
import Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Get
import Network.Google.Resource.AndroidManagement.Enterprises.WebApps.List
import Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Patch
import Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create
import Network.Google.Resource.AndroidManagement.SignupURLs.Create

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Android Management API service.
type AndroidManagementAPI =
     EnterprisesEnrollmentTokensCreateResource :<|>
       EnterprisesEnrollmentTokensDeleteResource
       :<|> EnterprisesWebAppsListResource
       :<|> EnterprisesWebAppsPatchResource
       :<|> EnterprisesWebAppsGetResource
       :<|> EnterprisesWebAppsCreateResource
       :<|> EnterprisesWebAppsDeleteResource
       :<|> EnterprisesWebTokensCreateResource
       :<|> EnterprisesDevicesOperationsListResource
       :<|> EnterprisesDevicesOperationsGetResource
       :<|> EnterprisesDevicesOperationsCancelResource
       :<|> EnterprisesDevicesOperationsDeleteResource
       :<|> EnterprisesDevicesListResource
       :<|> EnterprisesDevicesPatchResource
       :<|> EnterprisesDevicesGetResource
       :<|> EnterprisesDevicesIssueCommandResource
       :<|> EnterprisesDevicesDeleteResource
       :<|> EnterprisesPoliciesListResource
       :<|> EnterprisesPoliciesPatchResource
       :<|> EnterprisesPoliciesGetResource
       :<|> EnterprisesPoliciesDeleteResource
       :<|> EnterprisesApplicationsGetResource
       :<|> EnterprisesListResource
       :<|> EnterprisesPatchResource
       :<|> EnterprisesGetResource
       :<|> EnterprisesCreateResource
       :<|> EnterprisesDeleteResource
       :<|> SignupURLsCreateResource
