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

    -- ** androidmanagement.enterprises.webTokens.create
    , module Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create

    -- ** androidmanagement.signupUrls.create
    , module Network.Google.Resource.AndroidManagement.SignupURLs.Create

    -- * Types

    -- ** PowerManagementEventEventType
    , PowerManagementEventEventType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** SystemUpdateType
    , SystemUpdateType (..)

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
    , aManagedProperties
    , aName
    , aPermissions
    , aTitle

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

    -- ** PermissionGrantPolicy
    , PermissionGrantPolicy (..)

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
    , devUserName
    , devMemoryEvents
    , devAPILevel
    , devUser
    , devDisabledReason
    , devLastPolicyComplianceReportTime
    , devEnrollmentTokenData
    , devName
    , devAppliedPolicyVersion
    , devHardwareStatusSamples
    , devAppliedState
    , devPreviousDeviceNames
    , devLastPolicySyncTime
    , devNetworkInfo
    , devNonComplianceDetails
    , devSoftwareInfo
    , devEnrollmentTime
    , devDisplays

    -- ** ApplicationReportApplicationSource
    , ApplicationReportApplicationSource (..)

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

    -- ** ManagedPropertyEntry
    , ManagedPropertyEntry
    , managedPropertyEntry
    , mpeValue
    , mpeName

    -- ** DeviceSettingsEncryptionStatus
    , DeviceSettingsEncryptionStatus (..)

    -- ** PolicyLocationMode
    , PolicyLocationMode (..)

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

    -- ** User
    , User
    , user
    , uAccountIdentifier

    -- ** SystemUpdate
    , SystemUpdate
    , systemUpdate
    , suEndMinutes
    , suStartMinutes
    , suType

    -- ** ApplicationReport
    , ApplicationReport
    , applicationReport
    , arVersionCode
    , arSigningKeyCertFingerprints
    , arState
    , arVersionName
    , arPackageName
    , arPackageSha256Hash
    , arApplicationSource
    , arEvents
    , arDisplayName
    , arInstallerPackageName

    -- ** PolicyAppAutoUpdatePolicy
    , PolicyAppAutoUpdatePolicy (..)

    -- ** EnrollmentToken
    , EnrollmentToken
    , enrollmentToken
    , etPolicyName
    , etValue
    , etQrCode
    , etAdditionalData
    , etUser
    , etName
    , etOneTimeOnly
    , etExpirationTimestamp
    , etDuration

    -- ** ApplicationPolicyManagedConfiguration
    , ApplicationPolicyManagedConfiguration
    , applicationPolicyManagedConfiguration
    , apmcAddtional

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

    -- ** CommandType
    , CommandType (..)

    -- ** ApplicationPolicyDefaultPermissionPolicy
    , ApplicationPolicyDefaultPermissionPolicy (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ApplicationPolicy
    , ApplicationPolicy
    , applicationPolicy
    , apDelegatedScopes
    , apPackageName
    , apManagedConfiguration
    , apDefaultPermissionPolicy
    , apDisabled
    , apLockTaskAllowed
    , apPermissionGrants
    , apManagedConfigurationTemplate
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
    , sdSigninEnrollmentToken

    -- ** SignupURL
    , SignupURL
    , signupURL
    , suURL
    , suName

    -- ** PolicyDefaultPermissionPolicy
    , PolicyDefaultPermissionPolicy (..)

    -- ** NetworkInfo
    , NetworkInfo
    , networkInfo
    , niNetworkOperatorName
    , niMeid
    , niImei
    , niWifiMACAddress

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
    , pKeyguardDisabled
    , pSkipFirstUseHintsEnabled
    , pAdjustVolumeDisabled
    , pDefaultPermissionPolicy
    , pUninstallAppsDisabled
    , pSetUserIconDisabled
    , pPermittedInputMethods
    , pScreenCaptureDisabled
    , pAddUserDisabled
    , pShareLocationDisabled
    , pAutoTimeRequired
    , pInstallAppsDisabled
    , pCreateWindowsDisabled
    , pNetworkResetDisabled
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
    , pComplianceRules
    , pTetheringConfigDisabled
    , pAccountTypesWithManagementDisabled
    , pWifiConfigDisabled
    , pPersistentPreferredActivities
    , pPasswordRequirements
    , pLongSupportMessage
    , pLocationMode
    , pBluetoothDisabled
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
    , wtPermissions

    -- ** ComplianceRule
    , ComplianceRule
    , complianceRule
    , crAPILevelCondition
    , crDisableApps
    , crPackageNamesToDisable
    , crNonComplianceDetailCondition

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

    -- ** NonComplianceDetailConditionNonComplianceReason
    , NonComplianceDetailConditionNonComplianceReason (..)

    -- ** ApplicationEvent
    , ApplicationEvent
    , applicationEvent
    , aeEventType
    , aeCreateTime

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

    -- ** SoftwareInfo
    , SoftwareInfo
    , softwareInfo
    , siSecurityPatchLevel
    , siAndroidDevicePolicyVersionName
    , siDeviceKernelVersion
    , siAndroidDevicePolicyVersionCode
    , siDeviceBuildSignature
    , siBootLoaderVersion
    , siAndroidBuildTime
    , siPrimaryLanguageCode
    , siAndroidBuildNumber
    , siAndroidVersion

    -- ** MemoryEventEventType
    , MemoryEventEventType (..)

    -- ** ApplicationPermission
    , ApplicationPermission
    , applicationPermission
    , apName
    , apDescription
    , apPermissionId

    -- ** SetupAction
    , SetupAction
    , setupAction
    , saLaunchApp
    , saTitle
    , saDescription

    -- ** PasswordRequirementsPasswordQuality
    , PasswordRequirementsPasswordQuality (..)
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AndroidManagement.Enterprises.Applications.Get
import           Network.Google.Resource.AndroidManagement.Enterprises.Create
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Delete
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Get
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.IssueCommand
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.List
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Cancel
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Delete
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Get
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.List
import           Network.Google.Resource.AndroidManagement.Enterprises.Devices.Patch
import           Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Create
import           Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Delete
import           Network.Google.Resource.AndroidManagement.Enterprises.Get
import           Network.Google.Resource.AndroidManagement.Enterprises.Patch
import           Network.Google.Resource.AndroidManagement.Enterprises.Policies.Delete
import           Network.Google.Resource.AndroidManagement.Enterprises.Policies.Get
import           Network.Google.Resource.AndroidManagement.Enterprises.Policies.List
import           Network.Google.Resource.AndroidManagement.Enterprises.Policies.Patch
import           Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create
import           Network.Google.Resource.AndroidManagement.SignupURLs.Create

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Android Management API service.
type AndroidManagementAPI =
     EnterprisesEnrollmentTokensCreateResource :<|>
       EnterprisesEnrollmentTokensDeleteResource
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
       :<|> EnterprisesPatchResource
       :<|> EnterprisesGetResource
       :<|> EnterprisesCreateResource
       :<|> SignupURLsCreateResource
