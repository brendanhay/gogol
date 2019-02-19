{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidManagement.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidManagement.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Event type.
data PowerManagementEventEventType
    = PowerManagementEventTypeUnspecified
      -- ^ @POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED@
      -- Unspecified. No events have this type.
    | BatteryLevelCollected
      -- ^ @BATTERY_LEVEL_COLLECTED@
      -- Battery level was measured.
    | PowerConnected
      -- ^ @POWER_CONNECTED@
      -- The device started charging.
    | PowerDisconnected
      -- ^ @POWER_DISCONNECTED@
      -- The device stopped charging.
    | BatteryLow
      -- ^ @BATTERY_LOW@
      -- The device entered low-power mode.
    | BatteryOkay
      -- ^ @BATTERY_OKAY@
      -- The device exited low-power mode.
    | BootCompleted
      -- ^ @BOOT_COMPLETED@
      -- The device booted.
    | Shutdown
      -- ^ @SHUTDOWN@
      -- The device shut down.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PowerManagementEventEventType

instance FromHttpApiData PowerManagementEventEventType where
    parseQueryParam = \case
        "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED" -> Right PowerManagementEventTypeUnspecified
        "BATTERY_LEVEL_COLLECTED" -> Right BatteryLevelCollected
        "POWER_CONNECTED" -> Right PowerConnected
        "POWER_DISCONNECTED" -> Right PowerDisconnected
        "BATTERY_LOW" -> Right BatteryLow
        "BATTERY_OKAY" -> Right BatteryOkay
        "BOOT_COMPLETED" -> Right BootCompleted
        "SHUTDOWN" -> Right Shutdown
        x -> Left ("Unable to parse PowerManagementEventEventType from: " <> x)

instance ToHttpApiData PowerManagementEventEventType where
    toQueryParam = \case
        PowerManagementEventTypeUnspecified -> "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED"
        BatteryLevelCollected -> "BATTERY_LEVEL_COLLECTED"
        PowerConnected -> "POWER_CONNECTED"
        PowerDisconnected -> "POWER_DISCONNECTED"
        BatteryLow -> "BATTERY_LOW"
        BatteryOkay -> "BATTERY_OKAY"
        BootCompleted -> "BOOT_COMPLETED"
        Shutdown -> "SHUTDOWN"

instance FromJSON PowerManagementEventEventType where
    parseJSON = parseJSONText "PowerManagementEventEventType"

instance ToJSON PowerManagementEventEventType where
    toJSON = toJSONText

-- | The type of system update to configure.
data SystemUpdateType
    = SystemUpdateTypeUnspecified
      -- ^ @SYSTEM_UPDATE_TYPE_UNSPECIFIED@
      -- Follow the default update behavior for the device, which typically
      -- requires the user to accept system updates.
    | Automatic
      -- ^ @AUTOMATIC@
      -- Install automatically as soon as an update is available.
    | Windowed
      -- ^ @WINDOWED@
      -- Install automatically within a daily maintenance window. This also
      -- configures Play apps to be updated within the window. This is strongly
      -- recommended for kiosk devices because this is the only way apps
      -- persistently pinned to the foreground can be updated by Play.
    | Postpone
      -- ^ @POSTPONE@
      -- Postpone automatic install up to a maximum of 30 days.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SystemUpdateType

instance FromHttpApiData SystemUpdateType where
    parseQueryParam = \case
        "SYSTEM_UPDATE_TYPE_UNSPECIFIED" -> Right SystemUpdateTypeUnspecified
        "AUTOMATIC" -> Right Automatic
        "WINDOWED" -> Right Windowed
        "POSTPONE" -> Right Postpone
        x -> Left ("Unable to parse SystemUpdateType from: " <> x)

instance ToHttpApiData SystemUpdateType where
    toQueryParam = \case
        SystemUpdateTypeUnspecified -> "SYSTEM_UPDATE_TYPE_UNSPECIFIED"
        Automatic -> "AUTOMATIC"
        Windowed -> "WINDOWED"
        Postpone -> "POSTPONE"

instance FromJSON SystemUpdateType where
    parseJSON = parseJSONText "SystemUpdateType"

instance ToJSON SystemUpdateType where
    toJSON = toJSONText

-- | The state to be applied to the device. This field can be modified by a
-- patch request. Note that when calling enterprises.devices.patch, ACTIVE
-- and DISABLED are the only allowable values. To enter the device into a
-- DELETED state, call enterprises.devices.delete.
data DeviceState
    = DeviceStateUnspecified
      -- ^ @DEVICE_STATE_UNSPECIFIED@
      -- This value is disallowed.
    | Active
      -- ^ @ACTIVE@
      -- The device is active.
    | Disabled
      -- ^ @DISABLED@
      -- The device is disabled.
    | Deleted
      -- ^ @DELETED@
      -- The device was deleted. This state will never be returned by an API
      -- call, but is used in the final status report published to Cloud Pub\/Sub
      -- when the device acknowledges the deletion.
    | Provisioning
      -- ^ @PROVISIONING@
      -- The device is being provisioned. Newly enrolled devices are in this
      -- state until they have a policy applied.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceState

instance FromHttpApiData DeviceState where
    parseQueryParam = \case
        "DEVICE_STATE_UNSPECIFIED" -> Right DeviceStateUnspecified
        "ACTIVE" -> Right Active
        "DISABLED" -> Right Disabled
        "DELETED" -> Right Deleted
        "PROVISIONING" -> Right Provisioning
        x -> Left ("Unable to parse DeviceState from: " <> x)

instance ToHttpApiData DeviceState where
    toQueryParam = \case
        DeviceStateUnspecified -> "DEVICE_STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Disabled -> "DISABLED"
        Deleted -> "DELETED"
        Provisioning -> "PROVISIONING"

instance FromJSON DeviceState where
    parseJSON = parseJSONText "DeviceState"

instance ToJSON DeviceState where
    toJSON = toJSONText

-- | If the command failed, an error code explaining the failure. This is not
-- set when the command is cancelled by the caller.
data CommandErrorCode
    = CommandErrorCodeUnspecified
      -- ^ @COMMAND_ERROR_CODE_UNSPECIFIED@
      -- There was no error.
    | Unknown
      -- ^ @UNKNOWN@
      -- An unknown error occurred.
    | APILevel
      -- ^ @API_LEVEL@
      -- The API level of the device does not support this command.
    | ManagementMode
      -- ^ @MANAGEMENT_MODE@
      -- The management mode (profile owner, device owner, etc.) does not support
      -- the command.
    | InvalidValue
      -- ^ @INVALID_VALUE@
      -- The command has an invalid parameter value.
    | Unsupported
      -- ^ @UNSUPPORTED@
      -- The device doesn\'t support the command. Updating Android Device Policy
      -- to the latest version may resolve the issue.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommandErrorCode

instance FromHttpApiData CommandErrorCode where
    parseQueryParam = \case
        "COMMAND_ERROR_CODE_UNSPECIFIED" -> Right CommandErrorCodeUnspecified
        "UNKNOWN" -> Right Unknown
        "API_LEVEL" -> Right APILevel
        "MANAGEMENT_MODE" -> Right ManagementMode
        "INVALID_VALUE" -> Right InvalidValue
        "UNSUPPORTED" -> Right Unsupported
        x -> Left ("Unable to parse CommandErrorCode from: " <> x)

instance ToHttpApiData CommandErrorCode where
    toQueryParam = \case
        CommandErrorCodeUnspecified -> "COMMAND_ERROR_CODE_UNSPECIFIED"
        Unknown -> "UNKNOWN"
        APILevel -> "API_LEVEL"
        ManagementMode -> "MANAGEMENT_MODE"
        InvalidValue -> "INVALID_VALUE"
        Unsupported -> "UNSUPPORTED"

instance FromJSON CommandErrorCode where
    parseJSON = parseJSONText "CommandErrorCode"

instance ToJSON CommandErrorCode where
    toJSON = toJSONText

-- | The policy for granting the permission.
data PermissionGrantPolicy
    = PermissionPolicyUnspecified
      -- ^ @PERMISSION_POLICY_UNSPECIFIED@
      -- Policy not specified. If no policy is specified for a permission at any
      -- level, then the PROMPT behavior is used by default.
    | Prompt
      -- ^ @PROMPT@
      -- Prompt the user to grant a permission.
    | Grant
      -- ^ @GRANT@
      -- Automatically grant a permission.
    | Deny
      -- ^ @DENY@
      -- Automatically deny a permission.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionGrantPolicy

instance FromHttpApiData PermissionGrantPolicy where
    parseQueryParam = \case
        "PERMISSION_POLICY_UNSPECIFIED" -> Right PermissionPolicyUnspecified
        "PROMPT" -> Right Prompt
        "GRANT" -> Right Grant
        "DENY" -> Right Deny
        x -> Left ("Unable to parse PermissionGrantPolicy from: " <> x)

instance ToHttpApiData PermissionGrantPolicy where
    toQueryParam = \case
        PermissionPolicyUnspecified -> "PERMISSION_POLICY_UNSPECIFIED"
        Prompt -> "PROMPT"
        Grant -> "GRANT"
        Deny -> "DENY"

instance FromJSON PermissionGrantPolicy where
    parseJSON = parseJSONText "PermissionGrantPolicy"

instance ToJSON PermissionGrantPolicy where
    toJSON = toJSONText

-- | State of the display.
data DisplayState
    = DisplayStateUnspecified
      -- ^ @DISPLAY_STATE_UNSPECIFIED@
      -- This value is disallowed.
    | Off
      -- ^ @OFF@
      -- Display is off.
    | ON
      -- ^ @ON@
      -- Display is on.
    | Doze
      -- ^ @DOZE@
      -- Display is dozing in a low power state
    | Suspended
      -- ^ @SUSPENDED@
      -- Display is dozing in a suspended low power state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DisplayState

instance FromHttpApiData DisplayState where
    parseQueryParam = \case
        "DISPLAY_STATE_UNSPECIFIED" -> Right DisplayStateUnspecified
        "OFF" -> Right Off
        "ON" -> Right ON
        "DOZE" -> Right Doze
        "SUSPENDED" -> Right Suspended
        x -> Left ("Unable to parse DisplayState from: " <> x)

instance ToHttpApiData DisplayState where
    toQueryParam = \case
        DisplayStateUnspecified -> "DISPLAY_STATE_UNSPECIFIED"
        Off -> "OFF"
        ON -> "ON"
        Doze -> "DOZE"
        Suspended -> "SUSPENDED"

instance FromJSON DisplayState where
    parseJSON = parseJSONText "DisplayState"

instance ToJSON DisplayState where
    toJSON = toJSONText

-- | This mode controls which apps are available to the user in the Play
-- Store and the behavior on the device when apps are removed from the
-- policy.
data PolicyPlayStoreMode
    = PlayStoreModeUnspecified
      -- ^ @PLAY_STORE_MODE_UNSPECIFIED@
      -- Unspecified. Defaults to WHITELIST.
    | WhiteList
      -- ^ @WHITELIST@
      -- Only apps that are in the policy are available and any app not in the
      -- policy will be automatically uninstalled from the device.
    | BlackList
      -- ^ @BLACKLIST@
      -- All apps are available and any app that should not be on the device
      -- should be explicitly marked as \'BLOCKED\' in the applications policy.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyPlayStoreMode

instance FromHttpApiData PolicyPlayStoreMode where
    parseQueryParam = \case
        "PLAY_STORE_MODE_UNSPECIFIED" -> Right PlayStoreModeUnspecified
        "WHITELIST" -> Right WhiteList
        "BLACKLIST" -> Right BlackList
        x -> Left ("Unable to parse PolicyPlayStoreMode from: " <> x)

instance ToHttpApiData PolicyPlayStoreMode where
    toQueryParam = \case
        PlayStoreModeUnspecified -> "PLAY_STORE_MODE_UNSPECIFIED"
        WhiteList -> "WHITELIST"
        BlackList -> "BLACKLIST"

instance FromJSON PolicyPlayStoreMode where
    parseJSON = parseJSONText "PolicyPlayStoreMode"

instance ToJSON PolicyPlayStoreMode where
    toJSON = toJSONText

-- | The type of management mode Android Device Policy takes on the device.
-- This influences which policy settings are supported.
data DeviceManagementMode
    = ManagementModeUnspecified
      -- ^ @MANAGEMENT_MODE_UNSPECIFIED@
      -- This value is disallowed.
    | DeviceOwner
      -- ^ @DEVICE_OWNER@
      -- Device owner. Android Device Policy has full control over the device.
    | ProFileOwner
      -- ^ @PROFILE_OWNER@
      -- Profile owner. Android Device Policy has control over a managed profile
      -- on the device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceManagementMode

instance FromHttpApiData DeviceManagementMode where
    parseQueryParam = \case
        "MANAGEMENT_MODE_UNSPECIFIED" -> Right ManagementModeUnspecified
        "DEVICE_OWNER" -> Right DeviceOwner
        "PROFILE_OWNER" -> Right ProFileOwner
        x -> Left ("Unable to parse DeviceManagementMode from: " <> x)

instance ToHttpApiData DeviceManagementMode where
    toQueryParam = \case
        ManagementModeUnspecified -> "MANAGEMENT_MODE_UNSPECIFIED"
        DeviceOwner -> "DEVICE_OWNER"
        ProFileOwner -> "PROFILE_OWNER"

instance FromJSON DeviceManagementMode where
    parseJSON = parseJSONText "DeviceManagementMode"

instance ToJSON DeviceManagementMode where
    toJSON = toJSONText

-- | The source of the package.
data ApplicationReportApplicationSource
    = ApplicationSourceUnspecified
      -- ^ @APPLICATION_SOURCE_UNSPECIFIED@
      -- The app was sideloaded from an unspecified source.
    | SystemAppFactoryVersion
      -- ^ @SYSTEM_APP_FACTORY_VERSION@
      -- This is a system app from the device\'s factory image.
    | SystemAppUpdatedVersion
      -- ^ @SYSTEM_APP_UPDATED_VERSION@
      -- This is an updated system app.
    | InstalledFromPlayStore
      -- ^ @INSTALLED_FROM_PLAY_STORE@
      -- The app was installed from the Google Play Store.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationReportApplicationSource

instance FromHttpApiData ApplicationReportApplicationSource where
    parseQueryParam = \case
        "APPLICATION_SOURCE_UNSPECIFIED" -> Right ApplicationSourceUnspecified
        "SYSTEM_APP_FACTORY_VERSION" -> Right SystemAppFactoryVersion
        "SYSTEM_APP_UPDATED_VERSION" -> Right SystemAppUpdatedVersion
        "INSTALLED_FROM_PLAY_STORE" -> Right InstalledFromPlayStore
        x -> Left ("Unable to parse ApplicationReportApplicationSource from: " <> x)

instance ToHttpApiData ApplicationReportApplicationSource where
    toQueryParam = \case
        ApplicationSourceUnspecified -> "APPLICATION_SOURCE_UNSPECIFIED"
        SystemAppFactoryVersion -> "SYSTEM_APP_FACTORY_VERSION"
        SystemAppUpdatedVersion -> "SYSTEM_APP_UPDATED_VERSION"
        InstalledFromPlayStore -> "INSTALLED_FROM_PLAY_STORE"

instance FromJSON ApplicationReportApplicationSource where
    parseJSON = parseJSONText "ApplicationReportApplicationSource"

instance ToJSON ApplicationReportApplicationSource where
    toJSON = toJSONText

-- | The type of installation to perform.
data ApplicationPolicyInstallType
    = InstallTypeUnspecified
      -- ^ @INSTALL_TYPE_UNSPECIFIED@
      -- Unspecified. Defaults to AVAILABLE.
    | Preinstalled
      -- ^ @PREINSTALLED@
      -- The app is automatically installed and can be removed by the user.
    | ForceInstalled
      -- ^ @FORCE_INSTALLED@
      -- The app is automatically installed and can\'t be removed by the user.
    | Blocked
      -- ^ @BLOCKED@
      -- The app is blocked and can\'t be installed. If the app was installed
      -- under a previous policy, it will be uninstalled.
    | Available
      -- ^ @AVAILABLE@
      -- The app is available to install.
    | RequiredForSetup
      -- ^ @REQUIRED_FOR_SETUP@
      -- The app is automatically installed and can\'t be removed by the user and
      -- will prevent setup from completion until installation is complete.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationPolicyInstallType

instance FromHttpApiData ApplicationPolicyInstallType where
    parseQueryParam = \case
        "INSTALL_TYPE_UNSPECIFIED" -> Right InstallTypeUnspecified
        "PREINSTALLED" -> Right Preinstalled
        "FORCE_INSTALLED" -> Right ForceInstalled
        "BLOCKED" -> Right Blocked
        "AVAILABLE" -> Right Available
        "REQUIRED_FOR_SETUP" -> Right RequiredForSetup
        x -> Left ("Unable to parse ApplicationPolicyInstallType from: " <> x)

instance ToHttpApiData ApplicationPolicyInstallType where
    toQueryParam = \case
        InstallTypeUnspecified -> "INSTALL_TYPE_UNSPECIFIED"
        Preinstalled -> "PREINSTALLED"
        ForceInstalled -> "FORCE_INSTALLED"
        Blocked -> "BLOCKED"
        Available -> "AVAILABLE"
        RequiredForSetup -> "REQUIRED_FOR_SETUP"

instance FromJSON ApplicationPolicyInstallType where
    parseJSON = parseJSONText "ApplicationPolicyInstallType"

instance ToJSON ApplicationPolicyInstallType where
    toJSON = toJSONText

-- | If package_name is set and the non-compliance reason is
-- APP_NOT_INSTALLED or APP_NOT_UPDATED, the detailed reason the app can\'t
-- be installed or updated.
data NonComplianceDetailInstallationFailureReason
    = InstallationFailureReasonUnspecified
      -- ^ @INSTALLATION_FAILURE_REASON_UNSPECIFIED@
      -- This value is disallowed.
    | InstallationFailureReasonUnknown
      -- ^ @INSTALLATION_FAILURE_REASON_UNKNOWN@
      -- An unknown condition is preventing the app from being installed. Some
      -- potential reasons are that the device doesn\'t have enough storage, the
      -- device network connection is unreliable, or the installation is taking
      -- longer than expected. The installation will be retried automatically.
    | InProgress
      -- ^ @IN_PROGRESS@
      -- The installation is still in progress.
    | NotFound
      -- ^ @NOT_FOUND@
      -- The app was not found in Play.
    | NotCompatibleWithDevice
      -- ^ @NOT_COMPATIBLE_WITH_DEVICE@
      -- The app is incompatible with the device.
    | NotApproved
      -- ^ @NOT_APPROVED@
      -- The app has not been approved by the admin.
    | PermissionsNotAccepted
      -- ^ @PERMISSIONS_NOT_ACCEPTED@
      -- The app has new permissions that have not been accepted by the admin.
    | NotAvailableInCountry
      -- ^ @NOT_AVAILABLE_IN_COUNTRY@
      -- The app is not available in the user\'s country.
    | NoLicensesRemaining
      -- ^ @NO_LICENSES_REMAINING@
      -- There are no licenses available to assign to the user.
    | NotEnrolled
      -- ^ @NOT_ENROLLED@
      -- The enterprise is no longer enrolled with managed Play or the admin has
      -- not accepted the latest managed Play terms of service.
    | UserInvalid
      -- ^ @USER_INVALID@
      -- The user is no longer valid. The user may have been deleted or disabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NonComplianceDetailInstallationFailureReason

instance FromHttpApiData NonComplianceDetailInstallationFailureReason where
    parseQueryParam = \case
        "INSTALLATION_FAILURE_REASON_UNSPECIFIED" -> Right InstallationFailureReasonUnspecified
        "INSTALLATION_FAILURE_REASON_UNKNOWN" -> Right InstallationFailureReasonUnknown
        "IN_PROGRESS" -> Right InProgress
        "NOT_FOUND" -> Right NotFound
        "NOT_COMPATIBLE_WITH_DEVICE" -> Right NotCompatibleWithDevice
        "NOT_APPROVED" -> Right NotApproved
        "PERMISSIONS_NOT_ACCEPTED" -> Right PermissionsNotAccepted
        "NOT_AVAILABLE_IN_COUNTRY" -> Right NotAvailableInCountry
        "NO_LICENSES_REMAINING" -> Right NoLicensesRemaining
        "NOT_ENROLLED" -> Right NotEnrolled
        "USER_INVALID" -> Right UserInvalid
        x -> Left ("Unable to parse NonComplianceDetailInstallationFailureReason from: " <> x)

instance ToHttpApiData NonComplianceDetailInstallationFailureReason where
    toQueryParam = \case
        InstallationFailureReasonUnspecified -> "INSTALLATION_FAILURE_REASON_UNSPECIFIED"
        InstallationFailureReasonUnknown -> "INSTALLATION_FAILURE_REASON_UNKNOWN"
        InProgress -> "IN_PROGRESS"
        NotFound -> "NOT_FOUND"
        NotCompatibleWithDevice -> "NOT_COMPATIBLE_WITH_DEVICE"
        NotApproved -> "NOT_APPROVED"
        PermissionsNotAccepted -> "PERMISSIONS_NOT_ACCEPTED"
        NotAvailableInCountry -> "NOT_AVAILABLE_IN_COUNTRY"
        NoLicensesRemaining -> "NO_LICENSES_REMAINING"
        NotEnrolled -> "NOT_ENROLLED"
        UserInvalid -> "USER_INVALID"

instance FromJSON NonComplianceDetailInstallationFailureReason where
    parseJSON = parseJSONText "NonComplianceDetailInstallationFailureReason"

instance ToJSON NonComplianceDetailInstallationFailureReason where
    toJSON = toJSONText

-- | The scope that the password requirement applies to.
data PasswordRequirementsPasswordScope
    = ScopeUnspecified
      -- ^ @SCOPE_UNSPECIFIED@
      -- The scope is unspecified. The password requirements are applied to the
      -- work profile for work profile devices and the whole device for fully
      -- managed or dedicated devices.
    | ScopeDevice
      -- ^ @SCOPE_DEVICE@
      -- The password requirements are only applied to the device.
    | ScopeProFile
      -- ^ @SCOPE_PROFILE@
      -- The password requirements are only applied to the work profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PasswordRequirementsPasswordScope

instance FromHttpApiData PasswordRequirementsPasswordScope where
    parseQueryParam = \case
        "SCOPE_UNSPECIFIED" -> Right ScopeUnspecified
        "SCOPE_DEVICE" -> Right ScopeDevice
        "SCOPE_PROFILE" -> Right ScopeProFile
        x -> Left ("Unable to parse PasswordRequirementsPasswordScope from: " <> x)

instance ToHttpApiData PasswordRequirementsPasswordScope where
    toQueryParam = \case
        ScopeUnspecified -> "SCOPE_UNSPECIFIED"
        ScopeDevice -> "SCOPE_DEVICE"
        ScopeProFile -> "SCOPE_PROFILE"

instance FromJSON PasswordRequirementsPasswordScope where
    parseJSON = parseJSONText "PasswordRequirementsPasswordScope"

instance ToJSON PasswordRequirementsPasswordScope where
    toJSON = toJSONText

-- | Encryption status from DevicePolicyManager.
data DeviceSettingsEncryptionStatus
    = DSESEncryptionStatusUnspecified
      -- ^ @ENCRYPTION_STATUS_UNSPECIFIED@
      -- Unspecified. No device should have this type.
    | DSESUnsupported
      -- ^ @UNSUPPORTED@
      -- Encryption is not supported by the device.
    | DSESInactive
      -- ^ @INACTIVE@
      -- Encryption is supported by the device, but is not currently active.
    | DSESActivating
      -- ^ @ACTIVATING@
      -- Encryption is not currently active, but is currently being activated.
    | DSESActive
      -- ^ @ACTIVE@
      -- Encryption is active.
    | DSESActiveDefaultKey
      -- ^ @ACTIVE_DEFAULT_KEY@
      -- Encryption is active, but an encryption key is not set by the user.
    | DSESActivePerUser
      -- ^ @ACTIVE_PER_USER@
      -- Encryption is active, and the encryption key is tied to the user
      -- profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceSettingsEncryptionStatus

instance FromHttpApiData DeviceSettingsEncryptionStatus where
    parseQueryParam = \case
        "ENCRYPTION_STATUS_UNSPECIFIED" -> Right DSESEncryptionStatusUnspecified
        "UNSUPPORTED" -> Right DSESUnsupported
        "INACTIVE" -> Right DSESInactive
        "ACTIVATING" -> Right DSESActivating
        "ACTIVE" -> Right DSESActive
        "ACTIVE_DEFAULT_KEY" -> Right DSESActiveDefaultKey
        "ACTIVE_PER_USER" -> Right DSESActivePerUser
        x -> Left ("Unable to parse DeviceSettingsEncryptionStatus from: " <> x)

instance ToHttpApiData DeviceSettingsEncryptionStatus where
    toQueryParam = \case
        DSESEncryptionStatusUnspecified -> "ENCRYPTION_STATUS_UNSPECIFIED"
        DSESUnsupported -> "UNSUPPORTED"
        DSESInactive -> "INACTIVE"
        DSESActivating -> "ACTIVATING"
        DSESActive -> "ACTIVE"
        DSESActiveDefaultKey -> "ACTIVE_DEFAULT_KEY"
        DSESActivePerUser -> "ACTIVE_PER_USER"

instance FromJSON DeviceSettingsEncryptionStatus where
    parseJSON = parseJSONText "DeviceSettingsEncryptionStatus"

instance ToJSON DeviceSettingsEncryptionStatus where
    toJSON = toJSONText

-- | The degree of location detection enabled. The user may change the value
-- unless the user is otherwise blocked from accessing device settings.
data PolicyLocationMode
    = PLMLocationModeUnspecified
      -- ^ @LOCATION_MODE_UNSPECIFIED@
      -- The current device value is not modified.
    | PLMHighAccuracy
      -- ^ @HIGH_ACCURACY@
      -- All location detection methods are enabled, including GPS, networks, and
      -- other sensors.
    | PLMSensorsOnly
      -- ^ @SENSORS_ONLY@
      -- Only GPS and other sensors are enabled.
    | PLMBatterySaving
      -- ^ @BATTERY_SAVING@
      -- Only the network location provider is enabled.
    | PLMOff
      -- ^ @OFF@
      -- Location detection is disabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyLocationMode

instance FromHttpApiData PolicyLocationMode where
    parseQueryParam = \case
        "LOCATION_MODE_UNSPECIFIED" -> Right PLMLocationModeUnspecified
        "HIGH_ACCURACY" -> Right PLMHighAccuracy
        "SENSORS_ONLY" -> Right PLMSensorsOnly
        "BATTERY_SAVING" -> Right PLMBatterySaving
        "OFF" -> Right PLMOff
        x -> Left ("Unable to parse PolicyLocationMode from: " <> x)

instance ToHttpApiData PolicyLocationMode where
    toQueryParam = \case
        PLMLocationModeUnspecified -> "LOCATION_MODE_UNSPECIFIED"
        PLMHighAccuracy -> "HIGH_ACCURACY"
        PLMSensorsOnly -> "SENSORS_ONLY"
        PLMBatterySaving -> "BATTERY_SAVING"
        PLMOff -> "OFF"

instance FromJSON PolicyLocationMode where
    parseJSON = parseJSONText "PolicyLocationMode"

instance ToJSON PolicyLocationMode where
    toJSON = toJSONText

-- | The app auto update policy, which controls when automatic app updates
-- can be applied.
data PolicyAppAutoUpdatePolicy
    = AppAutoUpdatePolicyUnspecified
      -- ^ @APP_AUTO_UPDATE_POLICY_UNSPECIFIED@
      -- The auto-update policy is not set. Equivalent to CHOICE_TO_THE_USER.
    | ChoiceToTheUser
      -- ^ @CHOICE_TO_THE_USER@
      -- The user can control auto-updates.
    | Never
      -- ^ @NEVER@
      -- Apps are never auto-updated.
    | WifiOnly
      -- ^ @WIFI_ONLY@
      -- Apps are auto-updated over Wi-Fi only.
    | Always
      -- ^ @ALWAYS@
      -- Apps are auto-updated at any time. Data charges may apply.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyAppAutoUpdatePolicy

instance FromHttpApiData PolicyAppAutoUpdatePolicy where
    parseQueryParam = \case
        "APP_AUTO_UPDATE_POLICY_UNSPECIFIED" -> Right AppAutoUpdatePolicyUnspecified
        "CHOICE_TO_THE_USER" -> Right ChoiceToTheUser
        "NEVER" -> Right Never
        "WIFI_ONLY" -> Right WifiOnly
        "ALWAYS" -> Right Always
        x -> Left ("Unable to parse PolicyAppAutoUpdatePolicy from: " <> x)

instance ToHttpApiData PolicyAppAutoUpdatePolicy where
    toQueryParam = \case
        AppAutoUpdatePolicyUnspecified -> "APP_AUTO_UPDATE_POLICY_UNSPECIFIED"
        ChoiceToTheUser -> "CHOICE_TO_THE_USER"
        Never -> "NEVER"
        WifiOnly -> "WIFI_ONLY"
        Always -> "ALWAYS"

instance FromJSON PolicyAppAutoUpdatePolicy where
    parseJSON = parseJSONText "PolicyAppAutoUpdatePolicy"

instance ToJSON PolicyAppAutoUpdatePolicy where
    toJSON = toJSONText

-- | Whether encryption is enabled
data PolicyEncryptionPolicy
    = EncryptionPolicyUnspecified
      -- ^ @ENCRYPTION_POLICY_UNSPECIFIED@
      -- This value is ignored, i.e. no encryption required
    | EnabledWithoutPassword
      -- ^ @ENABLED_WITHOUT_PASSWORD@
      -- Encryption required but no password required to boot
    | EnabledWithPassword
      -- ^ @ENABLED_WITH_PASSWORD@
      -- Encryption required with password required to boot
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyEncryptionPolicy

instance FromHttpApiData PolicyEncryptionPolicy where
    parseQueryParam = \case
        "ENCRYPTION_POLICY_UNSPECIFIED" -> Right EncryptionPolicyUnspecified
        "ENABLED_WITHOUT_PASSWORD" -> Right EnabledWithoutPassword
        "ENABLED_WITH_PASSWORD" -> Right EnabledWithPassword
        x -> Left ("Unable to parse PolicyEncryptionPolicy from: " <> x)

instance ToHttpApiData PolicyEncryptionPolicy where
    toQueryParam = \case
        EncryptionPolicyUnspecified -> "ENCRYPTION_POLICY_UNSPECIFIED"
        EnabledWithoutPassword -> "ENABLED_WITHOUT_PASSWORD"
        EnabledWithPassword -> "ENABLED_WITH_PASSWORD"

instance FromJSON PolicyEncryptionPolicy where
    parseJSON = parseJSONText "PolicyEncryptionPolicy"

instance ToJSON PolicyEncryptionPolicy where
    toJSON = toJSONText

-- | The type of the command.
data CommandType
    = CommandTypeUnspecified
      -- ^ @COMMAND_TYPE_UNSPECIFIED@
      -- This value is disallowed.
    | Lock
      -- ^ @LOCK@
      -- Lock the device, as if the lock screen timeout had expired.
    | ResetPassword
      -- ^ @RESET_PASSWORD@
      -- Reset the user\'s password.
    | Reboot
      -- ^ @REBOOT@
      -- Reboot the device. Only supported on API level 24+.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommandType

instance FromHttpApiData CommandType where
    parseQueryParam = \case
        "COMMAND_TYPE_UNSPECIFIED" -> Right CommandTypeUnspecified
        "LOCK" -> Right Lock
        "RESET_PASSWORD" -> Right ResetPassword
        "REBOOT" -> Right Reboot
        x -> Left ("Unable to parse CommandType from: " <> x)

instance ToHttpApiData CommandType where
    toQueryParam = \case
        CommandTypeUnspecified -> "COMMAND_TYPE_UNSPECIFIED"
        Lock -> "LOCK"
        ResetPassword -> "RESET_PASSWORD"
        Reboot -> "REBOOT"

instance FromJSON CommandType where
    parseJSON = parseJSONText "CommandType"

instance ToJSON CommandType where
    toJSON = toJSONText

-- | The default policy for all permissions requested by the app. If
-- specified, this overrides the policy-level default_permission_policy
-- which applies to all apps. It does not override the permission_grants
-- which applies to all apps.
data ApplicationPolicyDefaultPermissionPolicy
    = APDPPPermissionPolicyUnspecified
      -- ^ @PERMISSION_POLICY_UNSPECIFIED@
      -- Policy not specified. If no policy is specified for a permission at any
      -- level, then the PROMPT behavior is used by default.
    | APDPPPrompt
      -- ^ @PROMPT@
      -- Prompt the user to grant a permission.
    | APDPPGrant
      -- ^ @GRANT@
      -- Automatically grant a permission.
    | APDPPDeny
      -- ^ @DENY@
      -- Automatically deny a permission.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationPolicyDefaultPermissionPolicy

instance FromHttpApiData ApplicationPolicyDefaultPermissionPolicy where
    parseQueryParam = \case
        "PERMISSION_POLICY_UNSPECIFIED" -> Right APDPPPermissionPolicyUnspecified
        "PROMPT" -> Right APDPPPrompt
        "GRANT" -> Right APDPPGrant
        "DENY" -> Right APDPPDeny
        x -> Left ("Unable to parse ApplicationPolicyDefaultPermissionPolicy from: " <> x)

instance ToHttpApiData ApplicationPolicyDefaultPermissionPolicy where
    toQueryParam = \case
        APDPPPermissionPolicyUnspecified -> "PERMISSION_POLICY_UNSPECIFIED"
        APDPPPrompt -> "PROMPT"
        APDPPGrant -> "GRANT"
        APDPPDeny -> "DENY"

instance FromJSON ApplicationPolicyDefaultPermissionPolicy where
    parseJSON = parseJSONText "ApplicationPolicyDefaultPermissionPolicy"

instance ToJSON ApplicationPolicyDefaultPermissionPolicy where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of the property.
data ManagedPropertyType
    = ManagedPropertyTypeUnspecified
      -- ^ @MANAGED_PROPERTY_TYPE_UNSPECIFIED@
      -- Not used.
    | Bool
      -- ^ @BOOL@
      -- A property of boolean type.
    | String
      -- ^ @STRING@
      -- A property of string type.
    | Integer
      -- ^ @INTEGER@
      -- A property of integer type.
    | Choice
      -- ^ @CHOICE@
      -- A choice of one item from a set.
    | Multiselect
      -- ^ @MULTISELECT@
      -- A choice of multiple items from a set.
    | Hidden
      -- ^ @HIDDEN@
      -- A hidden restriction of string type (the default value can be used to
      -- pass along information that can\'t be modified, such as a version code).
    | BundleArray
      -- ^ @BUNDLE_ARRAY@
      -- An array of property bundles.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedPropertyType

instance FromHttpApiData ManagedPropertyType where
    parseQueryParam = \case
        "MANAGED_PROPERTY_TYPE_UNSPECIFIED" -> Right ManagedPropertyTypeUnspecified
        "BOOL" -> Right Bool
        "STRING" -> Right String
        "INTEGER" -> Right Integer
        "CHOICE" -> Right Choice
        "MULTISELECT" -> Right Multiselect
        "HIDDEN" -> Right Hidden
        "BUNDLE_ARRAY" -> Right BundleArray
        x -> Left ("Unable to parse ManagedPropertyType from: " <> x)

instance ToHttpApiData ManagedPropertyType where
    toQueryParam = \case
        ManagedPropertyTypeUnspecified -> "MANAGED_PROPERTY_TYPE_UNSPECIFIED"
        Bool -> "BOOL"
        String -> "STRING"
        Integer -> "INTEGER"
        Choice -> "CHOICE"
        Multiselect -> "MULTISELECT"
        Hidden -> "HIDDEN"
        BundleArray -> "BUNDLE_ARRAY"

instance FromJSON ManagedPropertyType where
    parseJSON = parseJSONText "ManagedPropertyType"

instance ToJSON ManagedPropertyType where
    toJSON = toJSONText

-- | The state currently applied to the device.
data DeviceAppliedState
    = DASDeviceStateUnspecified
      -- ^ @DEVICE_STATE_UNSPECIFIED@
      -- This value is disallowed.
    | DASActive
      -- ^ @ACTIVE@
      -- The device is active.
    | DASDisabled
      -- ^ @DISABLED@
      -- The device is disabled.
    | DASDeleted
      -- ^ @DELETED@
      -- The device was deleted. This state will never be returned by an API
      -- call, but is used in the final status report published to Cloud Pub\/Sub
      -- when the device acknowledges the deletion.
    | DASProvisioning
      -- ^ @PROVISIONING@
      -- The device is being provisioned. Newly enrolled devices are in this
      -- state until they have a policy applied.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceAppliedState

instance FromHttpApiData DeviceAppliedState where
    parseQueryParam = \case
        "DEVICE_STATE_UNSPECIFIED" -> Right DASDeviceStateUnspecified
        "ACTIVE" -> Right DASActive
        "DISABLED" -> Right DASDisabled
        "DELETED" -> Right DASDeleted
        "PROVISIONING" -> Right DASProvisioning
        x -> Left ("Unable to parse DeviceAppliedState from: " <> x)

instance ToHttpApiData DeviceAppliedState where
    toQueryParam = \case
        DASDeviceStateUnspecified -> "DEVICE_STATE_UNSPECIFIED"
        DASActive -> "ACTIVE"
        DASDisabled -> "DISABLED"
        DASDeleted -> "DELETED"
        DASProvisioning -> "PROVISIONING"

instance FromJSON DeviceAppliedState where
    parseJSON = parseJSONText "DeviceAppliedState"

instance ToJSON DeviceAppliedState where
    toJSON = toJSONText

-- | App event type.
data ApplicationEventEventType
    = ApplicationEventTypeUnspecified
      -- ^ @APPLICATION_EVENT_TYPE_UNSPECIFIED@
      -- This value is disallowed.
    | Installed
      -- ^ @INSTALLED@
      -- The app was installed.
    | Changed
      -- ^ @CHANGED@
      -- The app was changed, for example, a component was enabled or disabled.
    | DataCleared
      -- ^ @DATA_CLEARED@
      -- The app data was cleared.
    | Removed
      -- ^ @REMOVED@
      -- The app was removed.
    | Replaced
      -- ^ @REPLACED@
      -- A new version of the app has been installed, replacing the old version.
    | Restarted
      -- ^ @RESTARTED@
      -- The app was restarted.
    | Pinned
      -- ^ @PINNED@
      -- The app was pinned to the foreground.
    | Unpinned
      -- ^ @UNPINNED@
      -- The app was unpinned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationEventEventType

instance FromHttpApiData ApplicationEventEventType where
    parseQueryParam = \case
        "APPLICATION_EVENT_TYPE_UNSPECIFIED" -> Right ApplicationEventTypeUnspecified
        "INSTALLED" -> Right Installed
        "CHANGED" -> Right Changed
        "DATA_CLEARED" -> Right DataCleared
        "REMOVED" -> Right Removed
        "REPLACED" -> Right Replaced
        "RESTARTED" -> Right Restarted
        "PINNED" -> Right Pinned
        "UNPINNED" -> Right Unpinned
        x -> Left ("Unable to parse ApplicationEventEventType from: " <> x)

instance ToHttpApiData ApplicationEventEventType where
    toQueryParam = \case
        ApplicationEventTypeUnspecified -> "APPLICATION_EVENT_TYPE_UNSPECIFIED"
        Installed -> "INSTALLED"
        Changed -> "CHANGED"
        DataCleared -> "DATA_CLEARED"
        Removed -> "REMOVED"
        Replaced -> "REPLACED"
        Restarted -> "RESTARTED"
        Pinned -> "PINNED"
        Unpinned -> "UNPINNED"

instance FromJSON ApplicationEventEventType where
    parseJSON = parseJSONText "ApplicationEventEventType"

instance ToJSON ApplicationEventEventType where
    toJSON = toJSONText

-- | The reason the device is not in compliance with the setting.
data NonComplianceDetailNonComplianceReason
    = NCDNCRNonComplianceReasonUnspecified
      -- ^ @NON_COMPLIANCE_REASON_UNSPECIFIED@
      -- This value is disallowed.
    | NCDNCRAPILevel
      -- ^ @API_LEVEL@
      -- The setting is not supported in the API level of the Android version
      -- running on the device.
    | NCDNCRManagementMode
      -- ^ @MANAGEMENT_MODE@
      -- The management mode (profile owner, device owner, etc.) doesn\'t support
      -- the setting.
    | NCDNCRUserAction
      -- ^ @USER_ACTION@
      -- The user has not taken required action to comply with the setting.
    | NCDNCRInvalidValue
      -- ^ @INVALID_VALUE@
      -- The setting has an invalid value.
    | NCDNCRAppNotInstalled
      -- ^ @APP_NOT_INSTALLED@
      -- The app required to implement the policy is not installed.
    | NCDNCRUnsupported
      -- ^ @UNSUPPORTED@
      -- The policy is not supported by the version of Android Device Policy on
      -- the device.
    | NCDNCRAppInstalled
      -- ^ @APP_INSTALLED@
      -- A blocked app is installed.
    | NCDNCRPending
      -- ^ @PENDING@
      -- The setting hasn\'t been applied at the time of the report, but is
      -- expected to be applied shortly.
    | NCDNCRAppIncompatible
      -- ^ @APP_INCOMPATIBLE@
      -- The setting can\'t be applied to the app because the app doesn\'t
      -- support it, for example because its target SDK version is not high
      -- enough.
    | NCDNCRAppNotUpdated
      -- ^ @APP_NOT_UPDATED@
      -- The app is installed, but it hasn\'t been updated to the minimum version
      -- code specified by policy.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NonComplianceDetailNonComplianceReason

instance FromHttpApiData NonComplianceDetailNonComplianceReason where
    parseQueryParam = \case
        "NON_COMPLIANCE_REASON_UNSPECIFIED" -> Right NCDNCRNonComplianceReasonUnspecified
        "API_LEVEL" -> Right NCDNCRAPILevel
        "MANAGEMENT_MODE" -> Right NCDNCRManagementMode
        "USER_ACTION" -> Right NCDNCRUserAction
        "INVALID_VALUE" -> Right NCDNCRInvalidValue
        "APP_NOT_INSTALLED" -> Right NCDNCRAppNotInstalled
        "UNSUPPORTED" -> Right NCDNCRUnsupported
        "APP_INSTALLED" -> Right NCDNCRAppInstalled
        "PENDING" -> Right NCDNCRPending
        "APP_INCOMPATIBLE" -> Right NCDNCRAppIncompatible
        "APP_NOT_UPDATED" -> Right NCDNCRAppNotUpdated
        x -> Left ("Unable to parse NonComplianceDetailNonComplianceReason from: " <> x)

instance ToHttpApiData NonComplianceDetailNonComplianceReason where
    toQueryParam = \case
        NCDNCRNonComplianceReasonUnspecified -> "NON_COMPLIANCE_REASON_UNSPECIFIED"
        NCDNCRAPILevel -> "API_LEVEL"
        NCDNCRManagementMode -> "MANAGEMENT_MODE"
        NCDNCRUserAction -> "USER_ACTION"
        NCDNCRInvalidValue -> "INVALID_VALUE"
        NCDNCRAppNotInstalled -> "APP_NOT_INSTALLED"
        NCDNCRUnsupported -> "UNSUPPORTED"
        NCDNCRAppInstalled -> "APP_INSTALLED"
        NCDNCRPending -> "PENDING"
        NCDNCRAppIncompatible -> "APP_INCOMPATIBLE"
        NCDNCRAppNotUpdated -> "APP_NOT_UPDATED"

instance FromJSON NonComplianceDetailNonComplianceReason where
    parseJSON = parseJSONText "NonComplianceDetailNonComplianceReason"

instance ToJSON NonComplianceDetailNonComplianceReason where
    toJSON = toJSONText

-- | The default permission policy for runtime permission requests.
data PolicyDefaultPermissionPolicy
    = PDPPPermissionPolicyUnspecified
      -- ^ @PERMISSION_POLICY_UNSPECIFIED@
      -- Policy not specified. If no policy is specified for a permission at any
      -- level, then the PROMPT behavior is used by default.
    | PDPPPrompt
      -- ^ @PROMPT@
      -- Prompt the user to grant a permission.
    | PDPPGrant
      -- ^ @GRANT@
      -- Automatically grant a permission.
    | PDPPDeny
      -- ^ @DENY@
      -- Automatically deny a permission.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyDefaultPermissionPolicy

instance FromHttpApiData PolicyDefaultPermissionPolicy where
    parseQueryParam = \case
        "PERMISSION_POLICY_UNSPECIFIED" -> Right PDPPPermissionPolicyUnspecified
        "PROMPT" -> Right PDPPPrompt
        "GRANT" -> Right PDPPGrant
        "DENY" -> Right PDPPDeny
        x -> Left ("Unable to parse PolicyDefaultPermissionPolicy from: " <> x)

instance ToHttpApiData PolicyDefaultPermissionPolicy where
    toQueryParam = \case
        PDPPPermissionPolicyUnspecified -> "PERMISSION_POLICY_UNSPECIFIED"
        PDPPPrompt -> "PROMPT"
        PDPPGrant -> "GRANT"
        PDPPDeny -> "DENY"

instance FromJSON PolicyDefaultPermissionPolicy where
    parseJSON = parseJSONText "PolicyDefaultPermissionPolicy"

instance ToJSON PolicyDefaultPermissionPolicy where
    toJSON = toJSONText

-- | Application state.
data ApplicationReportState
    = ARSInstalled
      -- ^ @INSTALLED@
      -- App is installed on the device
    | ARSRemoved
      -- ^ @REMOVED@
      -- App was removed from the device
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationReportState

instance FromHttpApiData ApplicationReportState where
    parseQueryParam = \case
        "INSTALLED" -> Right ARSInstalled
        "REMOVED" -> Right ARSRemoved
        x -> Left ("Unable to parse ApplicationReportState from: " <> x)

instance ToHttpApiData ApplicationReportState where
    toQueryParam = \case
        ARSInstalled -> "INSTALLED"
        ARSRemoved -> "REMOVED"

instance FromJSON ApplicationReportState where
    parseJSON = parseJSONText "ApplicationReportState"

instance ToJSON ApplicationReportState where
    toJSON = toJSONText

-- | The reason the device is not in compliance with the setting. If not set,
-- then this condition matches any reason.
data NonComplianceDetailConditionNonComplianceReason
    = NCDCNCRNonComplianceReasonUnspecified
      -- ^ @NON_COMPLIANCE_REASON_UNSPECIFIED@
      -- This value is disallowed.
    | NCDCNCRAPILevel
      -- ^ @API_LEVEL@
      -- The setting is not supported in the API level of the Android version
      -- running on the device.
    | NCDCNCRManagementMode
      -- ^ @MANAGEMENT_MODE@
      -- The management mode (profile owner, device owner, etc.) doesn\'t support
      -- the setting.
    | NCDCNCRUserAction
      -- ^ @USER_ACTION@
      -- The user has not taken required action to comply with the setting.
    | NCDCNCRInvalidValue
      -- ^ @INVALID_VALUE@
      -- The setting has an invalid value.
    | NCDCNCRAppNotInstalled
      -- ^ @APP_NOT_INSTALLED@
      -- The app required to implement the policy is not installed.
    | NCDCNCRUnsupported
      -- ^ @UNSUPPORTED@
      -- The policy is not supported by the version of Android Device Policy on
      -- the device.
    | NCDCNCRAppInstalled
      -- ^ @APP_INSTALLED@
      -- A blocked app is installed.
    | NCDCNCRPending
      -- ^ @PENDING@
      -- The setting hasn\'t been applied at the time of the report, but is
      -- expected to be applied shortly.
    | NCDCNCRAppIncompatible
      -- ^ @APP_INCOMPATIBLE@
      -- The setting can\'t be applied to the app because the app doesn\'t
      -- support it, for example because its target SDK version is not high
      -- enough.
    | NCDCNCRAppNotUpdated
      -- ^ @APP_NOT_UPDATED@
      -- The app is installed, but it hasn\'t been updated to the minimum version
      -- code specified by policy.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NonComplianceDetailConditionNonComplianceReason

instance FromHttpApiData NonComplianceDetailConditionNonComplianceReason where
    parseQueryParam = \case
        "NON_COMPLIANCE_REASON_UNSPECIFIED" -> Right NCDCNCRNonComplianceReasonUnspecified
        "API_LEVEL" -> Right NCDCNCRAPILevel
        "MANAGEMENT_MODE" -> Right NCDCNCRManagementMode
        "USER_ACTION" -> Right NCDCNCRUserAction
        "INVALID_VALUE" -> Right NCDCNCRInvalidValue
        "APP_NOT_INSTALLED" -> Right NCDCNCRAppNotInstalled
        "UNSUPPORTED" -> Right NCDCNCRUnsupported
        "APP_INSTALLED" -> Right NCDCNCRAppInstalled
        "PENDING" -> Right NCDCNCRPending
        "APP_INCOMPATIBLE" -> Right NCDCNCRAppIncompatible
        "APP_NOT_UPDATED" -> Right NCDCNCRAppNotUpdated
        x -> Left ("Unable to parse NonComplianceDetailConditionNonComplianceReason from: " <> x)

instance ToHttpApiData NonComplianceDetailConditionNonComplianceReason where
    toQueryParam = \case
        NCDCNCRNonComplianceReasonUnspecified -> "NON_COMPLIANCE_REASON_UNSPECIFIED"
        NCDCNCRAPILevel -> "API_LEVEL"
        NCDCNCRManagementMode -> "MANAGEMENT_MODE"
        NCDCNCRUserAction -> "USER_ACTION"
        NCDCNCRInvalidValue -> "INVALID_VALUE"
        NCDCNCRAppNotInstalled -> "APP_NOT_INSTALLED"
        NCDCNCRUnsupported -> "UNSUPPORTED"
        NCDCNCRAppInstalled -> "APP_INSTALLED"
        NCDCNCRPending -> "PENDING"
        NCDCNCRAppIncompatible -> "APP_INCOMPATIBLE"
        NCDCNCRAppNotUpdated -> "APP_NOT_UPDATED"

instance FromJSON NonComplianceDetailConditionNonComplianceReason where
    parseJSON = parseJSONText "NonComplianceDetailConditionNonComplianceReason"

instance ToJSON NonComplianceDetailConditionNonComplianceReason where
    toJSON = toJSONText

-- | Event type.
data MemoryEventEventType
    = MemoryEventTypeUnspecified
      -- ^ @MEMORY_EVENT_TYPE_UNSPECIFIED@
      -- Unspecified. No events have this type.
    | RamMeasured
      -- ^ @RAM_MEASURED@
      -- Free space in RAM was measured.
    | InternalStorageMeasured
      -- ^ @INTERNAL_STORAGE_MEASURED@
      -- Free space in internal storage was measured.
    | ExternalStorageDetected
      -- ^ @EXTERNAL_STORAGE_DETECTED@
      -- A new external storage medium was detected. The reported byte count is
      -- the total capacity of the storage medium.
    | ExternalStorageRemoved
      -- ^ @EXTERNAL_STORAGE_REMOVED@
      -- An external storage medium was removed. The reported byte count is zero.
    | ExternalStorageMeasured
      -- ^ @EXTERNAL_STORAGE_MEASURED@
      -- Free space in an external storage medium was measured.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MemoryEventEventType

instance FromHttpApiData MemoryEventEventType where
    parseQueryParam = \case
        "MEMORY_EVENT_TYPE_UNSPECIFIED" -> Right MemoryEventTypeUnspecified
        "RAM_MEASURED" -> Right RamMeasured
        "INTERNAL_STORAGE_MEASURED" -> Right InternalStorageMeasured
        "EXTERNAL_STORAGE_DETECTED" -> Right ExternalStorageDetected
        "EXTERNAL_STORAGE_REMOVED" -> Right ExternalStorageRemoved
        "EXTERNAL_STORAGE_MEASURED" -> Right ExternalStorageMeasured
        x -> Left ("Unable to parse MemoryEventEventType from: " <> x)

instance ToHttpApiData MemoryEventEventType where
    toQueryParam = \case
        MemoryEventTypeUnspecified -> "MEMORY_EVENT_TYPE_UNSPECIFIED"
        RamMeasured -> "RAM_MEASURED"
        InternalStorageMeasured -> "INTERNAL_STORAGE_MEASURED"
        ExternalStorageDetected -> "EXTERNAL_STORAGE_DETECTED"
        ExternalStorageRemoved -> "EXTERNAL_STORAGE_REMOVED"
        ExternalStorageMeasured -> "EXTERNAL_STORAGE_MEASURED"

instance FromJSON MemoryEventEventType where
    parseJSON = parseJSONText "MemoryEventEventType"

instance ToJSON MemoryEventEventType where
    toJSON = toJSONText

-- | The required password quality.
data PasswordRequirementsPasswordQuality
    = PasswordQualityUnspecified
      -- ^ @PASSWORD_QUALITY_UNSPECIFIED@
      -- There are no password requirements.
    | BiometricWeak
      -- ^ @BIOMETRIC_WEAK@
      -- The device must be secured with a low-security biometric recognition
      -- technology, at minimum. This includes technologies that can recognize
      -- the identity of an individual that are roughly equivalent to a 3-digit
      -- PIN (false detection is less than 1 in 1,000).
    | Something
      -- ^ @SOMETHING@
      -- A password is required, but there are no restrictions on what the
      -- password must contain.
    | Numeric
      -- ^ @NUMERIC@
      -- The password must contain numeric characters.
    | NumericComplex
      -- ^ @NUMERIC_COMPLEX@
      -- The password must contain numeric characters with no repeating (4444) or
      -- ordered (1234, 4321, 2468) sequences.
    | Alphabetic
      -- ^ @ALPHABETIC@
      -- The password must contain alphabetic (or symbol) characters.
    | Alphanumeric
      -- ^ @ALPHANUMERIC@
      -- The password must contain both numeric and alphabetic (or symbol)
      -- characters.
    | Complex
      -- ^ @COMPLEX@
      -- The password must contain at least a letter, a numerical digit and a
      -- special symbol. Other password constraints, for example,
      -- password_minimum_letters are enforced.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PasswordRequirementsPasswordQuality

instance FromHttpApiData PasswordRequirementsPasswordQuality where
    parseQueryParam = \case
        "PASSWORD_QUALITY_UNSPECIFIED" -> Right PasswordQualityUnspecified
        "BIOMETRIC_WEAK" -> Right BiometricWeak
        "SOMETHING" -> Right Something
        "NUMERIC" -> Right Numeric
        "NUMERIC_COMPLEX" -> Right NumericComplex
        "ALPHABETIC" -> Right Alphabetic
        "ALPHANUMERIC" -> Right Alphanumeric
        "COMPLEX" -> Right Complex
        x -> Left ("Unable to parse PasswordRequirementsPasswordQuality from: " <> x)

instance ToHttpApiData PasswordRequirementsPasswordQuality where
    toQueryParam = \case
        PasswordQualityUnspecified -> "PASSWORD_QUALITY_UNSPECIFIED"
        BiometricWeak -> "BIOMETRIC_WEAK"
        Something -> "SOMETHING"
        Numeric -> "NUMERIC"
        NumericComplex -> "NUMERIC_COMPLEX"
        Alphabetic -> "ALPHABETIC"
        Alphanumeric -> "ALPHANUMERIC"
        Complex -> "COMPLEX"

instance FromJSON PasswordRequirementsPasswordQuality where
    parseJSON = parseJSONText "PasswordRequirementsPasswordQuality"

instance ToJSON PasswordRequirementsPasswordQuality where
    toJSON = toJSONText
