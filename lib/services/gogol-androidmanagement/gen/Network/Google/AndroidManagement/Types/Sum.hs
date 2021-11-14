{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidManagement.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidManagement.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Sets the behavior of a device in kiosk mode when a user presses and
-- holds (long-presses) the Power button.
data KioskCustomizationPowerButtonActions
    = PowerButtonActionsUnspecified
      -- ^ @POWER_BUTTON_ACTIONS_UNSPECIFIED@
      -- Unspecified, defaults to POWER_BUTTON_AVAILABLE.
    | PowerButtonAvailable
      -- ^ @POWER_BUTTON_AVAILABLE@
      -- The power menu (e.g. Power off, Restart) is shown when a user
      -- long-presses the Power button of a device in kiosk mode.
    | PowerButtonBlocked
      -- ^ @POWER_BUTTON_BLOCKED@
      -- The power menu (e.g. Power off, Restart) is not shown when a user
      -- long-presses the Power button of a device in kiosk mode. Note: this may
      -- prevent users from turning off the device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KioskCustomizationPowerButtonActions

instance FromHttpApiData KioskCustomizationPowerButtonActions where
    parseQueryParam = \case
        "POWER_BUTTON_ACTIONS_UNSPECIFIED" -> Right PowerButtonActionsUnspecified
        "POWER_BUTTON_AVAILABLE" -> Right PowerButtonAvailable
        "POWER_BUTTON_BLOCKED" -> Right PowerButtonBlocked
        x -> Left ("Unable to parse KioskCustomizationPowerButtonActions from: " <> x)

instance ToHttpApiData KioskCustomizationPowerButtonActions where
    toQueryParam = \case
        PowerButtonActionsUnspecified -> "POWER_BUTTON_ACTIONS_UNSPECIFIED"
        PowerButtonAvailable -> "POWER_BUTTON_AVAILABLE"
        PowerButtonBlocked -> "POWER_BUTTON_BLOCKED"

instance FromJSON KioskCustomizationPowerButtonActions where
    parseJSON = parseJSONText "KioskCustomizationPowerButtonActions"

instance ToJSON KioskCustomizationPowerButtonActions where
    toJSON = toJSONText

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

-- | Specifies whether system error dialogs for crashed or unresponsive apps
-- are blocked in kiosk mode. When blocked, the system will force-stop the
-- app as if the user chooses the \"close app\" option on the UI.
data KioskCustomizationSystemErrorWarnings
    = SystemErrorWarningsUnspecified
      -- ^ @SYSTEM_ERROR_WARNINGS_UNSPECIFIED@
      -- Unspecified, defaults to ERROR_AND_WARNINGS_MUTED.
    | ErrorAndWarningsEnabled
      -- ^ @ERROR_AND_WARNINGS_ENABLED@
      -- All system error dialogs such as crash and app not responding (ANR) are
      -- displayed.
    | ErrorAndWarningsMuted
      -- ^ @ERROR_AND_WARNINGS_MUTED@
      -- All system error dialogs, such as crash and app not responding (ANR) are
      -- blocked. When blocked, the system force-stops the app as if the user
      -- closes the app from the UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KioskCustomizationSystemErrorWarnings

instance FromHttpApiData KioskCustomizationSystemErrorWarnings where
    parseQueryParam = \case
        "SYSTEM_ERROR_WARNINGS_UNSPECIFIED" -> Right SystemErrorWarningsUnspecified
        "ERROR_AND_WARNINGS_ENABLED" -> Right ErrorAndWarningsEnabled
        "ERROR_AND_WARNINGS_MUTED" -> Right ErrorAndWarningsMuted
        x -> Left ("Unable to parse KioskCustomizationSystemErrorWarnings from: " <> x)

instance ToHttpApiData KioskCustomizationSystemErrorWarnings where
    toQueryParam = \case
        SystemErrorWarningsUnspecified -> "SYSTEM_ERROR_WARNINGS_UNSPECIFIED"
        ErrorAndWarningsEnabled -> "ERROR_AND_WARNINGS_ENABLED"
        ErrorAndWarningsMuted -> "ERROR_AND_WARNINGS_MUTED"

instance FromJSON KioskCustomizationSystemErrorWarnings where
    parseJSON = parseJSONText "KioskCustomizationSystemErrorWarnings"

instance ToJSON KioskCustomizationSystemErrorWarnings where
    toJSON = toJSONText

-- | Controls access to developer settings: developer options and safe boot.
-- Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed
-- (deprecated).
data AdvancedSecurityOverridesDeveloperSettings
    = DeveloperSettingsUnspecified
      -- ^ @DEVELOPER_SETTINGS_UNSPECIFIED@
      -- Unspecified. Defaults to DEVELOPER_SETTINGS_DISABLED.
    | DeveloperSettingsDisabled
      -- ^ @DEVELOPER_SETTINGS_DISABLED@
      -- Default. Disables all developer settings and prevents the user from
      -- accessing them.
    | DeveloperSettingsAllowed
      -- ^ @DEVELOPER_SETTINGS_ALLOWED@
      -- Allows all developer settings. The user can access and optionally
      -- configure the settings.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvancedSecurityOverridesDeveloperSettings

instance FromHttpApiData AdvancedSecurityOverridesDeveloperSettings where
    parseQueryParam = \case
        "DEVELOPER_SETTINGS_UNSPECIFIED" -> Right DeveloperSettingsUnspecified
        "DEVELOPER_SETTINGS_DISABLED" -> Right DeveloperSettingsDisabled
        "DEVELOPER_SETTINGS_ALLOWED" -> Right DeveloperSettingsAllowed
        x -> Left ("Unable to parse AdvancedSecurityOverridesDeveloperSettings from: " <> x)

instance ToHttpApiData AdvancedSecurityOverridesDeveloperSettings where
    toQueryParam = \case
        DeveloperSettingsUnspecified -> "DEVELOPER_SETTINGS_UNSPECIFIED"
        DeveloperSettingsDisabled -> "DEVELOPER_SETTINGS_DISABLED"
        DeveloperSettingsAllowed -> "DEVELOPER_SETTINGS_ALLOWED"

instance FromJSON AdvancedSecurityOverridesDeveloperSettings where
    parseJSON = parseJSONText "AdvancedSecurityOverridesDeveloperSettings"

instance ToJSON AdvancedSecurityOverridesDeveloperSettings where
    toJSON = toJSONText

data WebTokenEnabledFeaturesItem
    = FeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified feature.
    | PlaySearch
      -- ^ @PLAY_SEARCH@
      -- The Managed Play search apps page
      -- (https:\/\/developers.google.com\/android\/management\/apps#search-apps).
    | PrivateApps
      -- ^ @PRIVATE_APPS@
      -- The private apps page
      -- (https:\/\/developers.google.com\/android\/management\/apps#private-apps).
    | WebApps
      -- ^ @WEB_APPS@
      -- The Web Apps page
      -- (https:\/\/developers.google.com\/android\/management\/apps#web-apps).
    | StoreBuilder
      -- ^ @STORE_BUILDER@
      -- The organize apps page
      -- (https:\/\/developers.google.com\/android\/management\/apps#organize-apps).
    | ManagedConfigurations
      -- ^ @MANAGED_CONFIGURATIONS@
      -- The managed configurations page
      -- (https:\/\/developers.google.com\/android\/management\/managed-configurations-iframe).
    | ZeroTouchCustomerManagement
      -- ^ @ZERO_TOUCH_CUSTOMER_MANAGEMENT@
      -- The zero-touch iframe
      -- (https:\/\/developers.google.com\/android\/management\/zero-touch-iframe).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebTokenEnabledFeaturesItem

instance FromHttpApiData WebTokenEnabledFeaturesItem where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right FeatureUnspecified
        "PLAY_SEARCH" -> Right PlaySearch
        "PRIVATE_APPS" -> Right PrivateApps
        "WEB_APPS" -> Right WebApps
        "STORE_BUILDER" -> Right StoreBuilder
        "MANAGED_CONFIGURATIONS" -> Right ManagedConfigurations
        "ZERO_TOUCH_CUSTOMER_MANAGEMENT" -> Right ZeroTouchCustomerManagement
        x -> Left ("Unable to parse WebTokenEnabledFeaturesItem from: " <> x)

instance ToHttpApiData WebTokenEnabledFeaturesItem where
    toQueryParam = \case
        FeatureUnspecified -> "FEATURE_UNSPECIFIED"
        PlaySearch -> "PLAY_SEARCH"
        PrivateApps -> "PRIVATE_APPS"
        WebApps -> "WEB_APPS"
        StoreBuilder -> "STORE_BUILDER"
        ManagedConfigurations -> "MANAGED_CONFIGURATIONS"
        ZeroTouchCustomerManagement -> "ZERO_TOUCH_CUSTOMER_MANAGEMENT"

instance FromJSON WebTokenEnabledFeaturesItem where
    parseJSON = parseJSONText "WebTokenEnabledFeaturesItem"

instance ToJSON WebTokenEnabledFeaturesItem where
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
      -- persistently pinned to the foreground can be updated by Play.If
      -- autoUpdateMode is set to AUTO_UPDATE_HIGH_PRIORITY for an app, then the
      -- maintenance window is ignored for that app and it is updated as soon as
      -- possible even outside of the maintenance window.
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

-- | The status of an update: whether an update exists and what type it is.
data SystemUpdateInfoUpdateStatus
    = UpdateStatusUnknown
      -- ^ @UPDATE_STATUS_UNKNOWN@
      -- It is unknown whether there is a pending system update. This happens
      -- when, for example, the device API level is less than 26, or if the
      -- version of Android Device Policy is outdated.
    | UpToDate
      -- ^ @UP_TO_DATE@
      -- There is no pending system update available on the device.
    | UnknownUpdateAvailable
      -- ^ @UNKNOWN_UPDATE_AVAILABLE@
      -- There is a pending system update available, but its type is not known.
    | SecurityUpdateAvailable
      -- ^ @SECURITY_UPDATE_AVAILABLE@
      -- There is a pending security update available.
    | OSUpdateAvailable
      -- ^ @OS_UPDATE_AVAILABLE@
      -- There is a pending OS update available.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SystemUpdateInfoUpdateStatus

instance FromHttpApiData SystemUpdateInfoUpdateStatus where
    parseQueryParam = \case
        "UPDATE_STATUS_UNKNOWN" -> Right UpdateStatusUnknown
        "UP_TO_DATE" -> Right UpToDate
        "UNKNOWN_UPDATE_AVAILABLE" -> Right UnknownUpdateAvailable
        "SECURITY_UPDATE_AVAILABLE" -> Right SecurityUpdateAvailable
        "OS_UPDATE_AVAILABLE" -> Right OSUpdateAvailable
        x -> Left ("Unable to parse SystemUpdateInfoUpdateStatus from: " <> x)

instance ToHttpApiData SystemUpdateInfoUpdateStatus where
    toQueryParam = \case
        UpdateStatusUnknown -> "UPDATE_STATUS_UNKNOWN"
        UpToDate -> "UP_TO_DATE"
        UnknownUpdateAvailable -> "UNKNOWN_UPDATE_AVAILABLE"
        SecurityUpdateAvailable -> "SECURITY_UPDATE_AVAILABLE"
        OSUpdateAvailable -> "OS_UPDATE_AVAILABLE"

instance FromJSON SystemUpdateInfoUpdateStatus where
    parseJSON = parseJSONText "SystemUpdateInfoUpdateStatus"

instance ToJSON SystemUpdateInfoUpdateStatus where
    toJSON = toJSONText

-- | Controls the auto-update mode for the app.
data ApplicationPolicyAutoUpdateMode
    = AutoUpdateModeUnspecified
      -- ^ @AUTO_UPDATE_MODE_UNSPECIFIED@
      -- Unspecified. Defaults to AUTO_UPDATE_DEFAULT.
    | AutoUpdateDefault
      -- ^ @AUTO_UPDATE_DEFAULT@
      -- The app is automatically updated with low priority to minimize the
      -- impact on the user.The app is updated when all of the following
      -- constraints are met: The device is not actively used. The device is
      -- connected to an unmetered network. The device is charging.The device is
      -- notified about a new update within 24 hours after it is published by the
      -- developer, after which the app is updated the next time the constraints
      -- above are met.
    | AutoUpdatePostponed
      -- ^ @AUTO_UPDATE_POSTPONED@
      -- The app is not automatically updated for a maximum of 90 days after the
      -- app becomes out of date.90 days after the app becomes out of date, the
      -- latest available version is installed automatically with low priority
      -- (see AUTO_UPDATE_DEFAULT). After the app is updated it is not
      -- automatically updated again until 90 days after it becomes out of date
      -- again.The user can still manually update the app from the Play Store at
      -- any time.
    | AutoUpdateHighPriority
      -- ^ @AUTO_UPDATE_HIGH_PRIORITY@
      -- The app is updated as soon as possible. No constraints are applied.The
      -- device is notified immediately about a new update after it becomes
      -- available.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationPolicyAutoUpdateMode

instance FromHttpApiData ApplicationPolicyAutoUpdateMode where
    parseQueryParam = \case
        "AUTO_UPDATE_MODE_UNSPECIFIED" -> Right AutoUpdateModeUnspecified
        "AUTO_UPDATE_DEFAULT" -> Right AutoUpdateDefault
        "AUTO_UPDATE_POSTPONED" -> Right AutoUpdatePostponed
        "AUTO_UPDATE_HIGH_PRIORITY" -> Right AutoUpdateHighPriority
        x -> Left ("Unable to parse ApplicationPolicyAutoUpdateMode from: " <> x)

instance ToHttpApiData ApplicationPolicyAutoUpdateMode where
    toQueryParam = \case
        AutoUpdateModeUnspecified -> "AUTO_UPDATE_MODE_UNSPECIFIED"
        AutoUpdateDefault -> "AUTO_UPDATE_DEFAULT"
        AutoUpdatePostponed -> "AUTO_UPDATE_POSTPONED"
        AutoUpdateHighPriority -> "AUTO_UPDATE_HIGH_PRIORITY"

instance FromJSON ApplicationPolicyAutoUpdateMode where
    parseJSON = parseJSONText "ApplicationPolicyAutoUpdateMode"

instance ToJSON ApplicationPolicyAutoUpdateMode where
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

-- | Whether Common Criteria Mode is enabled.
data CommonCriteriaModeInfoCommonCriteriaModeStatus
    = CommonCriteriaModeStatusUnknown
      -- ^ @COMMON_CRITERIA_MODE_STATUS_UNKNOWN@
      -- Unknown status.
    | CommonCriteriaModeDisabled
      -- ^ @COMMON_CRITERIA_MODE_DISABLED@
      -- Common Criteria Mode is currently disabled.
    | CommonCriteriaModeEnabled
      -- ^ @COMMON_CRITERIA_MODE_ENABLED@
      -- Common Criteria Mode is currently enabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommonCriteriaModeInfoCommonCriteriaModeStatus

instance FromHttpApiData CommonCriteriaModeInfoCommonCriteriaModeStatus where
    parseQueryParam = \case
        "COMMON_CRITERIA_MODE_STATUS_UNKNOWN" -> Right CommonCriteriaModeStatusUnknown
        "COMMON_CRITERIA_MODE_DISABLED" -> Right CommonCriteriaModeDisabled
        "COMMON_CRITERIA_MODE_ENABLED" -> Right CommonCriteriaModeEnabled
        x -> Left ("Unable to parse CommonCriteriaModeInfoCommonCriteriaModeStatus from: " <> x)

instance ToHttpApiData CommonCriteriaModeInfoCommonCriteriaModeStatus where
    toQueryParam = \case
        CommonCriteriaModeStatusUnknown -> "COMMON_CRITERIA_MODE_STATUS_UNKNOWN"
        CommonCriteriaModeDisabled -> "COMMON_CRITERIA_MODE_DISABLED"
        CommonCriteriaModeEnabled -> "COMMON_CRITERIA_MODE_ENABLED"

instance FromJSON CommonCriteriaModeInfoCommonCriteriaModeStatus where
    parseJSON = parseJSONText "CommonCriteriaModeInfoCommonCriteriaModeStatus"

instance ToJSON CommonCriteriaModeInfoCommonCriteriaModeStatus where
    toJSON = toJSONText

data PolicyAndroidDevicePolicyTracksItem
    = AppTrackUnspecified
      -- ^ @APP_TRACK_UNSPECIFIED@
      -- This value is ignored.
    | Production
      -- ^ @PRODUCTION@
      -- The production track, which provides the latest stable release.
    | Beta
      -- ^ @BETA@
      -- The beta track, which provides the latest beta release.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyAndroidDevicePolicyTracksItem

instance FromHttpApiData PolicyAndroidDevicePolicyTracksItem where
    parseQueryParam = \case
        "APP_TRACK_UNSPECIFIED" -> Right AppTrackUnspecified
        "PRODUCTION" -> Right Production
        "BETA" -> Right Beta
        x -> Left ("Unable to parse PolicyAndroidDevicePolicyTracksItem from: " <> x)

instance ToHttpApiData PolicyAndroidDevicePolicyTracksItem where
    toQueryParam = \case
        AppTrackUnspecified -> "APP_TRACK_UNSPECIFIED"
        Production -> "PRODUCTION"
        Beta -> "BETA"

instance FromJSON PolicyAndroidDevicePolicyTracksItem where
    parseJSON = parseJSONText "PolicyAndroidDevicePolicyTracksItem"

instance ToJSON PolicyAndroidDevicePolicyTracksItem where
    toJSON = toJSONText

-- | Specifies whether system info and notifications are disabled in kiosk
-- mode.
data KioskCustomizationStatusBar
    = StatusBarUnspecified
      -- ^ @STATUS_BAR_UNSPECIFIED@
      -- Unspecified, defaults to INFO_AND_NOTIFICATIONS_DISABLED.
    | NotificationsAndSystemInfoEnabled
      -- ^ @NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED@
      -- System info and notifications are shown on the status bar in kiosk
      -- mode.Note: For this policy to take effect, the device\'s home button
      -- must be enabled using kioskCustomization.systemNavigation.
    | NotificationsAndSystemInfoDisabled
      -- ^ @NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED@
      -- System info and notifications are disabled in kiosk mode.
    | SystemInfoOnly
      -- ^ @SYSTEM_INFO_ONLY@
      -- Only system info is shown on the status bar.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KioskCustomizationStatusBar

instance FromHttpApiData KioskCustomizationStatusBar where
    parseQueryParam = \case
        "STATUS_BAR_UNSPECIFIED" -> Right StatusBarUnspecified
        "NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED" -> Right NotificationsAndSystemInfoEnabled
        "NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED" -> Right NotificationsAndSystemInfoDisabled
        "SYSTEM_INFO_ONLY" -> Right SystemInfoOnly
        x -> Left ("Unable to parse KioskCustomizationStatusBar from: " <> x)

instance ToHttpApiData KioskCustomizationStatusBar where
    toQueryParam = \case
        StatusBarUnspecified -> "STATUS_BAR_UNSPECIFIED"
        NotificationsAndSystemInfoEnabled -> "NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED"
        NotificationsAndSystemInfoDisabled -> "NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED"
        SystemInfoOnly -> "SYSTEM_INFO_ONLY"

instance FromJSON KioskCustomizationStatusBar where
    parseJSON = parseJSONText "KioskCustomizationStatusBar"

instance ToJSON KioskCustomizationStatusBar where
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

data ApplicationPolicyDelegatedScopesItem
    = APDSIDelegatedScopeUnspecified
      -- ^ @DELEGATED_SCOPE_UNSPECIFIED@
      -- No delegation scope specified.
    | APDSICertInstall
      -- ^ @CERT_INSTALL@
      -- Grants access to certificate installation and management.
    | APDSIManagedConfigurations
      -- ^ @MANAGED_CONFIGURATIONS@
      -- Grants access to managed configurations management.
    | APDSIBlockUninstall
      -- ^ @BLOCK_UNINSTALL@
      -- Grants access to blocking uninstallation.
    | APDSIPermissionGrant
      -- ^ @PERMISSION_GRANT@
      -- Grants access to permission policy and permission grant state.
    | APDSIPackageAccess
      -- ^ @PACKAGE_ACCESS@
      -- Grants access to package access state.
    | APDSIEnableSystemApp
      -- ^ @ENABLE_SYSTEM_APP@
      -- Grants access for enabling system apps.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationPolicyDelegatedScopesItem

instance FromHttpApiData ApplicationPolicyDelegatedScopesItem where
    parseQueryParam = \case
        "DELEGATED_SCOPE_UNSPECIFIED" -> Right APDSIDelegatedScopeUnspecified
        "CERT_INSTALL" -> Right APDSICertInstall
        "MANAGED_CONFIGURATIONS" -> Right APDSIManagedConfigurations
        "BLOCK_UNINSTALL" -> Right APDSIBlockUninstall
        "PERMISSION_GRANT" -> Right APDSIPermissionGrant
        "PACKAGE_ACCESS" -> Right APDSIPackageAccess
        "ENABLE_SYSTEM_APP" -> Right APDSIEnableSystemApp
        x -> Left ("Unable to parse ApplicationPolicyDelegatedScopesItem from: " <> x)

instance ToHttpApiData ApplicationPolicyDelegatedScopesItem where
    toQueryParam = \case
        APDSIDelegatedScopeUnspecified -> "DELEGATED_SCOPE_UNSPECIFIED"
        APDSICertInstall -> "CERT_INSTALL"
        APDSIManagedConfigurations -> "MANAGED_CONFIGURATIONS"
        APDSIBlockUninstall -> "BLOCK_UNINSTALL"
        APDSIPermissionGrant -> "PERMISSION_GRANT"
        APDSIPackageAccess -> "PACKAGE_ACCESS"
        APDSIEnableSystemApp -> "ENABLE_SYSTEM_APP"

instance FromJSON ApplicationPolicyDelegatedScopesItem where
    parseJSON = parseJSONText "ApplicationPolicyDelegatedScopesItem"

instance ToJSON ApplicationPolicyDelegatedScopesItem where
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

-- | The display mode of the web app.
data WebAppDisplayMode
    = DisplayModeUnspecified
      -- ^ @DISPLAY_MODE_UNSPECIFIED@
      -- Not used.
    | MinimalUi
      -- ^ @MINIMAL_UI@
      -- Opens the web app with a minimal set of browser UI elements for
      -- controlling navigation and viewing the page URL.
    | Standalone
      -- ^ @STANDALONE@
      -- Opens the web app to look and feel like a standalone native application.
      -- The browser UI elements and page URL are not visible, however the system
      -- status bar and back button are visible.
    | FullScreen
      -- ^ @FULL_SCREEN@
      -- Opens the web app in full screen without any visible controls. The
      -- browser UI elements, page URL, system status bar and back button are not
      -- visible, and the web app takes up the entirety of the available display
      -- area.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebAppDisplayMode

instance FromHttpApiData WebAppDisplayMode where
    parseQueryParam = \case
        "DISPLAY_MODE_UNSPECIFIED" -> Right DisplayModeUnspecified
        "MINIMAL_UI" -> Right MinimalUi
        "STANDALONE" -> Right Standalone
        "FULL_SCREEN" -> Right FullScreen
        x -> Left ("Unable to parse WebAppDisplayMode from: " <> x)

instance ToHttpApiData WebAppDisplayMode where
    toQueryParam = \case
        DisplayModeUnspecified -> "DISPLAY_MODE_UNSPECIFIED"
        MinimalUi -> "MINIMAL_UI"
        Standalone -> "STANDALONE"
        FullScreen -> "FULL_SCREEN"

instance FromJSON WebAppDisplayMode where
    parseJSON = parseJSONText "WebAppDisplayMode"

instance ToJSON WebAppDisplayMode where
    toJSON = toJSONText

-- | The policy for untrusted apps (apps from unknown sources) enforced on
-- the device. Replaces install_unknown_sources_allowed (deprecated).
data AdvancedSecurityOverridesUntrustedAppsPolicy
    = UntrustedAppsPolicyUnspecified
      -- ^ @UNTRUSTED_APPS_POLICY_UNSPECIFIED@
      -- Unspecified. Defaults to DISALLOW_INSTALL.
    | DisallowInstall
      -- ^ @DISALLOW_INSTALL@
      -- Default. Disallow untrusted app installs on entire device.
    | AllowInstallInPersonalProFileOnly
      -- ^ @ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY@
      -- For devices with work profiles, allow untrusted app installs in the
      -- device\'s personal profile only.
    | AllowInstallDeviceWide
      -- ^ @ALLOW_INSTALL_DEVICE_WIDE@
      -- Allow untrusted app installs on entire device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvancedSecurityOverridesUntrustedAppsPolicy

instance FromHttpApiData AdvancedSecurityOverridesUntrustedAppsPolicy where
    parseQueryParam = \case
        "UNTRUSTED_APPS_POLICY_UNSPECIFIED" -> Right UntrustedAppsPolicyUnspecified
        "DISALLOW_INSTALL" -> Right DisallowInstall
        "ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY" -> Right AllowInstallInPersonalProFileOnly
        "ALLOW_INSTALL_DEVICE_WIDE" -> Right AllowInstallDeviceWide
        x -> Left ("Unable to parse AdvancedSecurityOverridesUntrustedAppsPolicy from: " <> x)

instance ToHttpApiData AdvancedSecurityOverridesUntrustedAppsPolicy where
    toQueryParam = \case
        UntrustedAppsPolicyUnspecified -> "UNTRUSTED_APPS_POLICY_UNSPECIFIED"
        DisallowInstall -> "DISALLOW_INSTALL"
        AllowInstallInPersonalProFileOnly -> "ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY"
        AllowInstallDeviceWide -> "ALLOW_INSTALL_DEVICE_WIDE"

instance FromJSON AdvancedSecurityOverridesUntrustedAppsPolicy where
    parseJSON = parseJSONText "AdvancedSecurityOverridesUntrustedAppsPolicy"

instance ToJSON AdvancedSecurityOverridesUntrustedAppsPolicy where
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

-- | Controls whether personal usage is allowed on a device provisioned with
-- this enrollment token.For company-owned devices: Enabling personal usage
-- allows the user to set up a work profile on the device. Disabling
-- personal usage requires the user provision the device as a fully managed
-- device.For personally-owned devices: Enabling personal usage allows the
-- user to set up a work profile on the device. Disabling personal usage
-- will prevent the device from provisioning. Personal usage cannot be
-- disabled on personally-owned device.
data EnrollmentTokenAllowPersonalUsage
    = AllowPersonalUsageUnspecified
      -- ^ @ALLOW_PERSONAL_USAGE_UNSPECIFIED@
      -- Personal usage restriction is not specified
    | PersonalUsageAllowed
      -- ^ @PERSONAL_USAGE_ALLOWED@
      -- Personal usage is allowed
    | PersonalUsageDisallowed
      -- ^ @PERSONAL_USAGE_DISALLOWED@
      -- Personal usage is disallowed
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnrollmentTokenAllowPersonalUsage

instance FromHttpApiData EnrollmentTokenAllowPersonalUsage where
    parseQueryParam = \case
        "ALLOW_PERSONAL_USAGE_UNSPECIFIED" -> Right AllowPersonalUsageUnspecified
        "PERSONAL_USAGE_ALLOWED" -> Right PersonalUsageAllowed
        "PERSONAL_USAGE_DISALLOWED" -> Right PersonalUsageDisallowed
        x -> Left ("Unable to parse EnrollmentTokenAllowPersonalUsage from: " <> x)

instance ToHttpApiData EnrollmentTokenAllowPersonalUsage where
    toQueryParam = \case
        AllowPersonalUsageUnspecified -> "ALLOW_PERSONAL_USAGE_UNSPECIFIED"
        PersonalUsageAllowed -> "PERSONAL_USAGE_ALLOWED"
        PersonalUsageDisallowed -> "PERSONAL_USAGE_DISALLOWED"

instance FromJSON EnrollmentTokenAllowPersonalUsage where
    parseJSON = parseJSONText "EnrollmentTokenAllowPersonalUsage"

instance ToJSON EnrollmentTokenAllowPersonalUsage where
    toJSON = toJSONText

data EnterpriseEnabledNotificationTypesItem
    = EENTINotificationTypeUnspecified
      -- ^ @NOTIFICATION_TYPE_UNSPECIFIED@
      -- This value is ignored.
    | EENTIEnrollment
      -- ^ @ENROLLMENT@
      -- A notification sent when a device enrolls.
    | EENTIComplianceReport
      -- ^ @COMPLIANCE_REPORT@
      -- Deprecated.
    | EENTIStatusReport
      -- ^ @STATUS_REPORT@
      -- A notification sent when a device issues a status report.
    | EENTICommand
      -- ^ @COMMAND@
      -- A notification sent when a device command has completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterpriseEnabledNotificationTypesItem

instance FromHttpApiData EnterpriseEnabledNotificationTypesItem where
    parseQueryParam = \case
        "NOTIFICATION_TYPE_UNSPECIFIED" -> Right EENTINotificationTypeUnspecified
        "ENROLLMENT" -> Right EENTIEnrollment
        "COMPLIANCE_REPORT" -> Right EENTIComplianceReport
        "STATUS_REPORT" -> Right EENTIStatusReport
        "COMMAND" -> Right EENTICommand
        x -> Left ("Unable to parse EnterpriseEnabledNotificationTypesItem from: " <> x)

instance ToHttpApiData EnterpriseEnabledNotificationTypesItem where
    toQueryParam = \case
        EENTINotificationTypeUnspecified -> "NOTIFICATION_TYPE_UNSPECIFIED"
        EENTIEnrollment -> "ENROLLMENT"
        EENTIComplianceReport -> "COMPLIANCE_REPORT"
        EENTIStatusReport -> "STATUS_REPORT"
        EENTICommand -> "COMMAND"

instance FromJSON EnterpriseEnabledNotificationTypesItem where
    parseJSON = parseJSONText "EnterpriseEnabledNotificationTypesItem"

instance ToJSON EnterpriseEnabledNotificationTypesItem where
    toJSON = toJSONText

-- | Whether auto date, time, and time zone are enabled on a company-owned
-- device. If this is set, then autoTimeRequired is ignored.
data PolicyAutoDateAndTimeZone
    = AutoDateAndTimeZoneUnspecified
      -- ^ @AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED@
      -- Unspecified. Defaults to AUTO_DATE_AND_TIME_ZONE_USER_CHOICE.
    | AutoDateAndTimeZoneUserChoice
      -- ^ @AUTO_DATE_AND_TIME_ZONE_USER_CHOICE@
      -- Auto date, time, and time zone are left to user\'s choice.
    | AutoDateAndTimeZoneEnforced
      -- ^ @AUTO_DATE_AND_TIME_ZONE_ENFORCED@
      -- Enforce auto date, time, and time zone on the device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyAutoDateAndTimeZone

instance FromHttpApiData PolicyAutoDateAndTimeZone where
    parseQueryParam = \case
        "AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED" -> Right AutoDateAndTimeZoneUnspecified
        "AUTO_DATE_AND_TIME_ZONE_USER_CHOICE" -> Right AutoDateAndTimeZoneUserChoice
        "AUTO_DATE_AND_TIME_ZONE_ENFORCED" -> Right AutoDateAndTimeZoneEnforced
        x -> Left ("Unable to parse PolicyAutoDateAndTimeZone from: " <> x)

instance ToHttpApiData PolicyAutoDateAndTimeZone where
    toQueryParam = \case
        AutoDateAndTimeZoneUnspecified -> "AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED"
        AutoDateAndTimeZoneUserChoice -> "AUTO_DATE_AND_TIME_ZONE_USER_CHOICE"
        AutoDateAndTimeZoneEnforced -> "AUTO_DATE_AND_TIME_ZONE_ENFORCED"

instance FromJSON PolicyAutoDateAndTimeZone where
    parseJSON = parseJSONText "PolicyAutoDateAndTimeZone"

instance ToJSON PolicyAutoDateAndTimeZone where
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
    | Kiosk
      -- ^ @KIOSK@
      -- The app is automatically installed in kiosk mode: it\'s set as the
      -- preferred home intent and whitelisted for lock task mode. Device setup
      -- won\'t complete until the app is installed. After installation, users
      -- won\'t be able to remove the app. You can only set this installType for
      -- one app per policy. When this is present in the policy, status bar will
      -- be automatically disabled.
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
        "KIOSK" -> Right Kiosk
        x -> Left ("Unable to parse ApplicationPolicyInstallType from: " <> x)

instance ToHttpApiData ApplicationPolicyInstallType where
    toQueryParam = \case
        InstallTypeUnspecified -> "INSTALL_TYPE_UNSPECIFIED"
        Preinstalled -> "PREINSTALLED"
        ForceInstalled -> "FORCE_INSTALLED"
        Blocked -> "BLOCKED"
        Available -> "AVAILABLE"
        RequiredForSetup -> "REQUIRED_FOR_SETUP"
        Kiosk -> "KIOSK"

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
      -- The enterprise is no longer enrolled with Managed Google Play or the
      -- admin has not accepted the latest Managed Google Play Terms of Service.
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

-- | The degree of location detection enabled.
data PolicyLocationMode
    = PLMLocationModeUnspecified
      -- ^ @LOCATION_MODE_UNSPECIFIED@
      -- Defaults to LOCATION_USER_CHOICE.
    | PLMHighAccuracy
      -- ^ @HIGH_ACCURACY@
      -- On Android 8 and below, all location detection methods are enabled,
      -- including GPS, networks, and other sensors. On Android 9 and above, this
      -- is equivalent to LOCATION_ENFORCED.
    | PLMSensorsOnly
      -- ^ @SENSORS_ONLY@
      -- On Android 8 and below, only GPS and other sensors are enabled. On
      -- Android 9 and above, this is equivalent to LOCATION_ENFORCED.
    | PLMBatterySaving
      -- ^ @BATTERY_SAVING@
      -- On Android 8 and below, only the network location provider is enabled.
      -- On Android 9 and above, this is equivalent to LOCATION_ENFORCED.
    | PLMOff
      -- ^ @OFF@
      -- On Android 8 and below, location setting and accuracy are disabled. On
      -- Android 9 and above, this is equivalent to LOCATION_DISABLED.
    | PLMLocationUserChoice
      -- ^ @LOCATION_USER_CHOICE@
      -- Location setting is not restricted on the device. No specific behavior
      -- is set or enforced.
    | PLMLocationEnforced
      -- ^ @LOCATION_ENFORCED@
      -- Enable location setting on the device.
    | PLMLocationDisabled
      -- ^ @LOCATION_DISABLED@
      -- Disable location setting on the device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyLocationMode

instance FromHttpApiData PolicyLocationMode where
    parseQueryParam = \case
        "LOCATION_MODE_UNSPECIFIED" -> Right PLMLocationModeUnspecified
        "HIGH_ACCURACY" -> Right PLMHighAccuracy
        "SENSORS_ONLY" -> Right PLMSensorsOnly
        "BATTERY_SAVING" -> Right PLMBatterySaving
        "OFF" -> Right PLMOff
        "LOCATION_USER_CHOICE" -> Right PLMLocationUserChoice
        "LOCATION_ENFORCED" -> Right PLMLocationEnforced
        "LOCATION_DISABLED" -> Right PLMLocationDisabled
        x -> Left ("Unable to parse PolicyLocationMode from: " <> x)

instance ToHttpApiData PolicyLocationMode where
    toQueryParam = \case
        PLMLocationModeUnspecified -> "LOCATION_MODE_UNSPECIFIED"
        PLMHighAccuracy -> "HIGH_ACCURACY"
        PLMSensorsOnly -> "SENSORS_ONLY"
        PLMBatterySaving -> "BATTERY_SAVING"
        PLMOff -> "OFF"
        PLMLocationUserChoice -> "LOCATION_USER_CHOICE"
        PLMLocationEnforced -> "LOCATION_ENFORCED"
        PLMLocationDisabled -> "LOCATION_DISABLED"

instance FromJSON PolicyLocationMode where
    parseJSON = parseJSONText "PolicyLocationMode"

instance ToJSON PolicyLocationMode where
    toJSON = toJSONText

-- | Specifies which Enterprise fields to return. This method only supports
-- BASIC.
data EnterprisesListView
    = EnterpriseViewUnspecified
      -- ^ @ENTERPRISE_VIEW_UNSPECIFIED@
      -- The API will default to the BASIC view for the List method.
    | Basic
      -- ^ @BASIC@
      -- Includes name and enterprise_display_name fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesListView

instance FromHttpApiData EnterprisesListView where
    parseQueryParam = \case
        "ENTERPRISE_VIEW_UNSPECIFIED" -> Right EnterpriseViewUnspecified
        "BASIC" -> Right Basic
        x -> Left ("Unable to parse EnterprisesListView from: " <> x)

instance ToHttpApiData EnterprisesListView where
    toQueryParam = \case
        EnterpriseViewUnspecified -> "ENTERPRISE_VIEW_UNSPECIFIED"
        Basic -> "BASIC"

instance FromJSON EnterprisesListView where
    parseJSON = parseJSONText "EnterprisesListView"

instance ToJSON EnterprisesListView where
    toJSON = toJSONText

-- | Controls whether personal usage is allowed on a device provisioned with
-- this enrollment token.For company-owned devices: Enabling personal usage
-- allows the user to set up a work profile on the device. Disabling
-- personal usage requires the user provision the device as a fully managed
-- device.For personally-owned devices: Enabling personal usage allows the
-- user to set up a work profile on the device. Disabling personal usage
-- will prevent the device from provisioning. Personal usage cannot be
-- disabled on personally-owned device.
data SigninDetailAllowPersonalUsage
    = SDAPUAllowPersonalUsageUnspecified
      -- ^ @ALLOW_PERSONAL_USAGE_UNSPECIFIED@
      -- Personal usage restriction is not specified
    | SDAPUPersonalUsageAllowed
      -- ^ @PERSONAL_USAGE_ALLOWED@
      -- Personal usage is allowed
    | SDAPUPersonalUsageDisallowed
      -- ^ @PERSONAL_USAGE_DISALLOWED@
      -- Personal usage is disallowed
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SigninDetailAllowPersonalUsage

instance FromHttpApiData SigninDetailAllowPersonalUsage where
    parseQueryParam = \case
        "ALLOW_PERSONAL_USAGE_UNSPECIFIED" -> Right SDAPUAllowPersonalUsageUnspecified
        "PERSONAL_USAGE_ALLOWED" -> Right SDAPUPersonalUsageAllowed
        "PERSONAL_USAGE_DISALLOWED" -> Right SDAPUPersonalUsageDisallowed
        x -> Left ("Unable to parse SigninDetailAllowPersonalUsage from: " <> x)

instance ToHttpApiData SigninDetailAllowPersonalUsage where
    toQueryParam = \case
        SDAPUAllowPersonalUsageUnspecified -> "ALLOW_PERSONAL_USAGE_UNSPECIFIED"
        SDAPUPersonalUsageAllowed -> "PERSONAL_USAGE_ALLOWED"
        SDAPUPersonalUsageDisallowed -> "PERSONAL_USAGE_DISALLOWED"

instance FromJSON SigninDetailAllowPersonalUsage where
    parseJSON = parseJSONText "SigninDetailAllowPersonalUsage"

instance ToJSON SigninDetailAllowPersonalUsage where
    toJSON = toJSONText

-- | Whether Google Play Protect verification
-- (https:\/\/support.google.com\/accounts\/answer\/2812853) is enforced.
-- Replaces ensureVerifyAppsEnabled (deprecated).
data AdvancedSecurityOverridesGooglePlayProtectVerifyApps
    = GooglePlayProtectVerifyAppsUnspecified
      -- ^ @GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED@
      -- Unspecified. Defaults to VERIFY_APPS_ENFORCED.
    | VerifyAppsEnforced
      -- ^ @VERIFY_APPS_ENFORCED@
      -- Default. Force-enables app verification.
    | VerifyAppsUserChoice
      -- ^ @VERIFY_APPS_USER_CHOICE@
      -- Allows the user to choose whether to enable app verification.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvancedSecurityOverridesGooglePlayProtectVerifyApps

instance FromHttpApiData AdvancedSecurityOverridesGooglePlayProtectVerifyApps where
    parseQueryParam = \case
        "GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED" -> Right GooglePlayProtectVerifyAppsUnspecified
        "VERIFY_APPS_ENFORCED" -> Right VerifyAppsEnforced
        "VERIFY_APPS_USER_CHOICE" -> Right VerifyAppsUserChoice
        x -> Left ("Unable to parse AdvancedSecurityOverridesGooglePlayProtectVerifyApps from: " <> x)

instance ToHttpApiData AdvancedSecurityOverridesGooglePlayProtectVerifyApps where
    toQueryParam = \case
        GooglePlayProtectVerifyAppsUnspecified -> "GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED"
        VerifyAppsEnforced -> "VERIFY_APPS_ENFORCED"
        VerifyAppsUserChoice -> "VERIFY_APPS_USER_CHOICE"

instance FromJSON AdvancedSecurityOverridesGooglePlayProtectVerifyApps where
    parseJSON = parseJSONText "AdvancedSecurityOverridesGooglePlayProtectVerifyApps"

instance ToJSON AdvancedSecurityOverridesGooglePlayProtectVerifyApps where
    toJSON = toJSONText

-- | Specifies the scope of this BlockAction. Only applicable to devices that
-- are company-owned.
data BlockActionBlockScope
    = BlockScopeUnspecified
      -- ^ @BLOCK_SCOPE_UNSPECIFIED@
      -- Unspecified. Defaults to BLOCK_SCOPE_WORK_PROFILE.
    | BlockScopeWorkProFile
      -- ^ @BLOCK_SCOPE_WORK_PROFILE@
      -- Block action is only applied to apps in the work profile. Apps in the
      -- personal profile are unaffected.
    | BlockScopeDevice
      -- ^ @BLOCK_SCOPE_DEVICE@
      -- Block action is applied to the entire device, including apps in the
      -- personal profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlockActionBlockScope

instance FromHttpApiData BlockActionBlockScope where
    parseQueryParam = \case
        "BLOCK_SCOPE_UNSPECIFIED" -> Right BlockScopeUnspecified
        "BLOCK_SCOPE_WORK_PROFILE" -> Right BlockScopeWorkProFile
        "BLOCK_SCOPE_DEVICE" -> Right BlockScopeDevice
        x -> Left ("Unable to parse BlockActionBlockScope from: " <> x)

instance ToHttpApiData BlockActionBlockScope where
    toQueryParam = \case
        BlockScopeUnspecified -> "BLOCK_SCOPE_UNSPECIFIED"
        BlockScopeWorkProFile -> "BLOCK_SCOPE_WORK_PROFILE"
        BlockScopeDevice -> "BLOCK_SCOPE_DEVICE"

instance FromJSON BlockActionBlockScope where
    parseJSON = parseJSONText "BlockActionBlockScope"

instance ToJSON BlockActionBlockScope where
    toJSON = toJSONText

-- | Deprecated. Use autoUpdateMode instead.When autoUpdateMode is set to
-- AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no
-- effect.The app auto update policy, which controls when automatic app
-- updates can be applied.
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

data CommandResetPasswordFlagsItem
    = ResetPasswordFlagUnspecified
      -- ^ @RESET_PASSWORD_FLAG_UNSPECIFIED@
      -- This value is ignored.
    | RequireEntry
      -- ^ @REQUIRE_ENTRY@
      -- Don\'t allow other admins to change the password again until the user
      -- has entered it.
    | DoNotAskCredentialsOnBoot
      -- ^ @DO_NOT_ASK_CREDENTIALS_ON_BOOT@
      -- Don\'t ask for user credentials on device boot.
    | LockNow
      -- ^ @LOCK_NOW@
      -- Lock the device after password reset.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommandResetPasswordFlagsItem

instance FromHttpApiData CommandResetPasswordFlagsItem where
    parseQueryParam = \case
        "RESET_PASSWORD_FLAG_UNSPECIFIED" -> Right ResetPasswordFlagUnspecified
        "REQUIRE_ENTRY" -> Right RequireEntry
        "DO_NOT_ASK_CREDENTIALS_ON_BOOT" -> Right DoNotAskCredentialsOnBoot
        "LOCK_NOW" -> Right LockNow
        x -> Left ("Unable to parse CommandResetPasswordFlagsItem from: " <> x)

instance ToHttpApiData CommandResetPasswordFlagsItem where
    toQueryParam = \case
        ResetPasswordFlagUnspecified -> "RESET_PASSWORD_FLAG_UNSPECIFIED"
        RequireEntry -> "REQUIRE_ENTRY"
        DoNotAskCredentialsOnBoot -> "DO_NOT_ASK_CREDENTIALS_ON_BOOT"
        LockNow -> "LOCK_NOW"

instance FromJSON CommandResetPasswordFlagsItem where
    parseJSON = parseJSONText "CommandResetPasswordFlagsItem"

instance ToJSON CommandResetPasswordFlagsItem where
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

-- | Specifies which navigation features are enabled (e.g. Home, Overview
-- buttons) in kiosk mode.
data KioskCustomizationSystemNavigation
    = SystemNavigationUnspecified
      -- ^ @SYSTEM_NAVIGATION_UNSPECIFIED@
      -- Unspecified, defaults to NAVIGATION_DISABLED.
    | NavigationEnabled
      -- ^ @NAVIGATION_ENABLED@
      -- Home and overview buttons are enabled.
    | NavigationDisabled
      -- ^ @NAVIGATION_DISABLED@
      -- The home and Overview buttons are not accessible.
    | HomeButtonOnly
      -- ^ @HOME_BUTTON_ONLY@
      -- Only the home button is enabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KioskCustomizationSystemNavigation

instance FromHttpApiData KioskCustomizationSystemNavigation where
    parseQueryParam = \case
        "SYSTEM_NAVIGATION_UNSPECIFIED" -> Right SystemNavigationUnspecified
        "NAVIGATION_ENABLED" -> Right NavigationEnabled
        "NAVIGATION_DISABLED" -> Right NavigationDisabled
        "HOME_BUTTON_ONLY" -> Right HomeButtonOnly
        x -> Left ("Unable to parse KioskCustomizationSystemNavigation from: " <> x)

instance ToHttpApiData KioskCustomizationSystemNavigation where
    toQueryParam = \case
        SystemNavigationUnspecified -> "SYSTEM_NAVIGATION_UNSPECIFIED"
        NavigationEnabled -> "NAVIGATION_ENABLED"
        NavigationDisabled -> "NAVIGATION_DISABLED"
        HomeButtonOnly -> "HOME_BUTTON_ONLY"

instance FromJSON KioskCustomizationSystemNavigation where
    parseJSON = parseJSONText "KioskCustomizationSystemNavigation"

instance ToJSON KioskCustomizationSystemNavigation where
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
      -- Reboot the device. Only supported on fully managed devices running
      -- Android 7.0 (API level 24) or higher.
    | RelinquishOwnership
      -- ^ @RELINQUISH_OWNERSHIP@
      -- Removes the work profile and all policies from a company-owned Android
      -- 8.0+ device, relinquishing the device for personal use. Apps and data
      -- associated with the personal profile(s) are preserved. The device will
      -- be deleted from the server after it acknowledges the command.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommandType

instance FromHttpApiData CommandType where
    parseQueryParam = \case
        "COMMAND_TYPE_UNSPECIFIED" -> Right CommandTypeUnspecified
        "LOCK" -> Right Lock
        "RESET_PASSWORD" -> Right ResetPassword
        "REBOOT" -> Right Reboot
        "RELINQUISH_OWNERSHIP" -> Right RelinquishOwnership
        x -> Left ("Unable to parse CommandType from: " <> x)

instance ToHttpApiData CommandType where
    toQueryParam = \case
        CommandTypeUnspecified -> "COMMAND_TYPE_UNSPECIFIED"
        Lock -> "LOCK"
        ResetPassword -> "RESET_PASSWORD"
        Reboot -> "REBOOT"
        RelinquishOwnership -> "RELINQUISH_OWNERSHIP"

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

-- | Controls Common Criteria Mode—security standards defined in the Common
-- Criteria for Information Technology Security Evaluation
-- (https:\/\/www.commoncriteriaportal.org\/) (CC). Enabling Common
-- Criteria Mode increases certain security components on a device,
-- including AES-GCM encryption of Bluetooth Long Term Keys, and Wi-Fi
-- configuration stores.Warning: Common Criteria Mode enforces a strict
-- security model typically only required for IT products used in national
-- security systems and other highly sensitive organizations. Standard
-- device use may be affected. Only enabled if required.
data AdvancedSecurityOverridesCommonCriteriaMode
    = ASOCCMCommonCriteriaModeUnspecified
      -- ^ @COMMON_CRITERIA_MODE_UNSPECIFIED@
      -- Unspecified. Defaults to COMMON_CRITERIA_MODE_DISABLED.
    | ASOCCMCommonCriteriaModeDisabled
      -- ^ @COMMON_CRITERIA_MODE_DISABLED@
      -- Default. Disables Common Criteria Mode.
    | ASOCCMCommonCriteriaModeEnabled
      -- ^ @COMMON_CRITERIA_MODE_ENABLED@
      -- Enables Common Criteria Mode.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvancedSecurityOverridesCommonCriteriaMode

instance FromHttpApiData AdvancedSecurityOverridesCommonCriteriaMode where
    parseQueryParam = \case
        "COMMON_CRITERIA_MODE_UNSPECIFIED" -> Right ASOCCMCommonCriteriaModeUnspecified
        "COMMON_CRITERIA_MODE_DISABLED" -> Right ASOCCMCommonCriteriaModeDisabled
        "COMMON_CRITERIA_MODE_ENABLED" -> Right ASOCCMCommonCriteriaModeEnabled
        x -> Left ("Unable to parse AdvancedSecurityOverridesCommonCriteriaMode from: " <> x)

instance ToHttpApiData AdvancedSecurityOverridesCommonCriteriaMode where
    toQueryParam = \case
        ASOCCMCommonCriteriaModeUnspecified -> "COMMON_CRITERIA_MODE_UNSPECIFIED"
        ASOCCMCommonCriteriaModeDisabled -> "COMMON_CRITERIA_MODE_DISABLED"
        ASOCCMCommonCriteriaModeEnabled -> "COMMON_CRITERIA_MODE_ENABLED"

instance FromJSON AdvancedSecurityOverridesCommonCriteriaMode where
    parseJSON = parseJSONText "AdvancedSecurityOverridesCommonCriteriaMode"

instance ToJSON AdvancedSecurityOverridesCommonCriteriaMode where
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
    | Bundle
      -- ^ @BUNDLE@
      -- A bundle of properties
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
        "BUNDLE" -> Right Bundle
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
        Bundle -> "BUNDLE"
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

-- | Specifies whether the Settings app is allowed in kiosk mode.
data KioskCustomizationDeviceSettings
    = DeviceSettingsUnspecified
      -- ^ @DEVICE_SETTINGS_UNSPECIFIED@
      -- Unspecified, defaults to SETTINGS_ACCESS_ALLOWED.
    | SettingsAccessAllowed
      -- ^ @SETTINGS_ACCESS_ALLOWED@
      -- Access to the Settings app is allowed in kiosk mode.
    | SettingsAccessBlocked
      -- ^ @SETTINGS_ACCESS_BLOCKED@
      -- Access to the Settings app is not allowed in kiosk mode.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KioskCustomizationDeviceSettings

instance FromHttpApiData KioskCustomizationDeviceSettings where
    parseQueryParam = \case
        "DEVICE_SETTINGS_UNSPECIFIED" -> Right DeviceSettingsUnspecified
        "SETTINGS_ACCESS_ALLOWED" -> Right SettingsAccessAllowed
        "SETTINGS_ACCESS_BLOCKED" -> Right SettingsAccessBlocked
        x -> Left ("Unable to parse KioskCustomizationDeviceSettings from: " <> x)

instance ToHttpApiData KioskCustomizationDeviceSettings where
    toQueryParam = \case
        DeviceSettingsUnspecified -> "DEVICE_SETTINGS_UNSPECIFIED"
        SettingsAccessAllowed -> "SETTINGS_ACCESS_ALLOWED"
        SettingsAccessBlocked -> "SETTINGS_ACCESS_BLOCKED"

instance FromJSON KioskCustomizationDeviceSettings where
    parseJSON = parseJSONText "KioskCustomizationDeviceSettings"

instance ToJSON KioskCustomizationDeviceSettings where
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

-- | Optional flags that control the device wiping behavior.
data EnterprisesDevicesDeleteWipeDataFlags
    = WipeDataFlagUnspecified
      -- ^ @WIPE_DATA_FLAG_UNSPECIFIED@
      -- This value is ignored.
    | PreserveResetProtectionData
      -- ^ @PRESERVE_RESET_PROTECTION_DATA@
      -- Preserve the factory reset protection data on the device.
    | WipeExternalStorage
      -- ^ @WIPE_EXTERNAL_STORAGE@
      -- Additionally wipe the device\'s external storage (such as SD cards).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesDevicesDeleteWipeDataFlags

instance FromHttpApiData EnterprisesDevicesDeleteWipeDataFlags where
    parseQueryParam = \case
        "WIPE_DATA_FLAG_UNSPECIFIED" -> Right WipeDataFlagUnspecified
        "PRESERVE_RESET_PROTECTION_DATA" -> Right PreserveResetProtectionData
        "WIPE_EXTERNAL_STORAGE" -> Right WipeExternalStorage
        x -> Left ("Unable to parse EnterprisesDevicesDeleteWipeDataFlags from: " <> x)

instance ToHttpApiData EnterprisesDevicesDeleteWipeDataFlags where
    toQueryParam = \case
        WipeDataFlagUnspecified -> "WIPE_DATA_FLAG_UNSPECIFIED"
        PreserveResetProtectionData -> "PRESERVE_RESET_PROTECTION_DATA"
        WipeExternalStorage -> "WIPE_EXTERNAL_STORAGE"

instance FromJSON EnterprisesDevicesDeleteWipeDataFlags where
    parseJSON = parseJSONText "EnterprisesDevicesDeleteWipeDataFlags"

instance ToJSON EnterprisesDevicesDeleteWipeDataFlags where
    toJSON = toJSONText

data PolicyKeyguardDisabledFeaturesItem
    = KeyguardDisabledFeatureUnspecified
      -- ^ @KEYGUARD_DISABLED_FEATURE_UNSPECIFIED@
      -- This value is ignored.
    | Camera
      -- ^ @CAMERA@
      -- Disable the camera on secure keyguard screens (e.g. PIN).
    | Notifications
      -- ^ @NOTIFICATIONS@
      -- Disable showing all notifications on secure keyguard screens.
    | UnredactedNotifications
      -- ^ @UNREDACTED_NOTIFICATIONS@
      -- Disable unredacted notifications on secure keyguard screens.
    | TrustAgents
      -- ^ @TRUST_AGENTS@
      -- Ignore trust agent state on secure keyguard screens.
    | DisableFingerprint
      -- ^ @DISABLE_FINGERPRINT@
      -- Disable fingerprint sensor on secure keyguard screens.
    | DisableRemoteInput
      -- ^ @DISABLE_REMOTE_INPUT@
      -- Disable text entry into notifications on secure keyguard screens.
    | Face
      -- ^ @FACE@
      -- Disable face authentication on secure keyguard screens.
    | Iris
      -- ^ @IRIS@
      -- Disable iris authentication on secure keyguard screens.
    | Biometrics
      -- ^ @BIOMETRICS@
      -- Disable all biometric authentication on secure keyguard screens.
    | AllFeatures
      -- ^ @ALL_FEATURES@
      -- Disable all current and future keyguard customizations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyKeyguardDisabledFeaturesItem

instance FromHttpApiData PolicyKeyguardDisabledFeaturesItem where
    parseQueryParam = \case
        "KEYGUARD_DISABLED_FEATURE_UNSPECIFIED" -> Right KeyguardDisabledFeatureUnspecified
        "CAMERA" -> Right Camera
        "NOTIFICATIONS" -> Right Notifications
        "UNREDACTED_NOTIFICATIONS" -> Right UnredactedNotifications
        "TRUST_AGENTS" -> Right TrustAgents
        "DISABLE_FINGERPRINT" -> Right DisableFingerprint
        "DISABLE_REMOTE_INPUT" -> Right DisableRemoteInput
        "FACE" -> Right Face
        "IRIS" -> Right Iris
        "BIOMETRICS" -> Right Biometrics
        "ALL_FEATURES" -> Right AllFeatures
        x -> Left ("Unable to parse PolicyKeyguardDisabledFeaturesItem from: " <> x)

instance ToHttpApiData PolicyKeyguardDisabledFeaturesItem where
    toQueryParam = \case
        KeyguardDisabledFeatureUnspecified -> "KEYGUARD_DISABLED_FEATURE_UNSPECIFIED"
        Camera -> "CAMERA"
        Notifications -> "NOTIFICATIONS"
        UnredactedNotifications -> "UNREDACTED_NOTIFICATIONS"
        TrustAgents -> "TRUST_AGENTS"
        DisableFingerprint -> "DISABLE_FINGERPRINT"
        DisableRemoteInput -> "DISABLE_REMOTE_INPUT"
        Face -> "FACE"
        Iris -> "IRIS"
        Biometrics -> "BIOMETRICS"
        AllFeatures -> "ALL_FEATURES"

instance FromJSON PolicyKeyguardDisabledFeaturesItem where
    parseJSON = parseJSONText "PolicyKeyguardDisabledFeaturesItem"

instance ToJSON PolicyKeyguardDisabledFeaturesItem where
    toJSON = toJSONText

-- | The type of installation to perform.
data PersonalApplicationPolicyInstallType
    = PAPITInstallTypeUnspecified
      -- ^ @INSTALL_TYPE_UNSPECIFIED@
      -- Unspecified. Defaults to AVAILABLE.
    | PAPITBlocked
      -- ^ @BLOCKED@
      -- The app is blocked and can\'t be installed in the personal profile.
    | PAPITAvailable
      -- ^ @AVAILABLE@
      -- The app is available to install in the personal profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PersonalApplicationPolicyInstallType

instance FromHttpApiData PersonalApplicationPolicyInstallType where
    parseQueryParam = \case
        "INSTALL_TYPE_UNSPECIFIED" -> Right PAPITInstallTypeUnspecified
        "BLOCKED" -> Right PAPITBlocked
        "AVAILABLE" -> Right PAPITAvailable
        x -> Left ("Unable to parse PersonalApplicationPolicyInstallType from: " <> x)

instance ToHttpApiData PersonalApplicationPolicyInstallType where
    toQueryParam = \case
        PAPITInstallTypeUnspecified -> "INSTALL_TYPE_UNSPECIFIED"
        PAPITBlocked -> "BLOCKED"
        PAPITAvailable -> "AVAILABLE"

instance FromJSON PersonalApplicationPolicyInstallType where
    parseJSON = parseJSONText "PersonalApplicationPolicyInstallType"

instance ToJSON PersonalApplicationPolicyInstallType where
    toJSON = toJSONText

-- | Used together with personalApplications to control how apps in the
-- personal profile are allowed or blocked.
data PersonalUsagePoliciesPersonalPlayStoreMode
    = PUPPPSMPlayStoreModeUnspecified
      -- ^ @PLAY_STORE_MODE_UNSPECIFIED@
      -- Unspecified. Defaults to BLOCKLIST.
    | PUPPPSMBlackList
      -- ^ @BLACKLIST@
      -- All Play Store apps are available for installation in the personal
      -- profile, except those whose installType is BLOCKED in
      -- personalApplications.
    | PUPPPSMBlockList
      -- ^ @BLOCKLIST@
      -- All Play Store apps are available for installation in the personal
      -- profile, except those whose installType is BLOCKED in
      -- personalApplications.
    | PUPPPSMAllowList
      -- ^ @ALLOWLIST@
      -- Only apps explicitly specified in personalApplications with installType
      -- set to AVAILABLE are allowed to be installed in the personal profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PersonalUsagePoliciesPersonalPlayStoreMode

instance FromHttpApiData PersonalUsagePoliciesPersonalPlayStoreMode where
    parseQueryParam = \case
        "PLAY_STORE_MODE_UNSPECIFIED" -> Right PUPPPSMPlayStoreModeUnspecified
        "BLACKLIST" -> Right PUPPPSMBlackList
        "BLOCKLIST" -> Right PUPPPSMBlockList
        "ALLOWLIST" -> Right PUPPPSMAllowList
        x -> Left ("Unable to parse PersonalUsagePoliciesPersonalPlayStoreMode from: " <> x)

instance ToHttpApiData PersonalUsagePoliciesPersonalPlayStoreMode where
    toQueryParam = \case
        PUPPPSMPlayStoreModeUnspecified -> "PLAY_STORE_MODE_UNSPECIFIED"
        PUPPPSMBlackList -> "BLACKLIST"
        PUPPPSMBlockList -> "BLOCKLIST"
        PUPPPSMAllowList -> "ALLOWLIST"

instance FromJSON PersonalUsagePoliciesPersonalPlayStoreMode where
    parseJSON = parseJSONText "PersonalUsagePoliciesPersonalPlayStoreMode"

instance ToJSON PersonalUsagePoliciesPersonalPlayStoreMode where
    toJSON = toJSONText

-- | The severity of the app state.
data KeyedAppStateSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unspecified severity level.
    | Info
      -- ^ @INFO@
      -- Information severity level.
    | Error'
      -- ^ @ERROR@
      -- Error severity level. This should only be set for genuine error
      -- conditions that a management organization needs to take action to fix.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KeyedAppStateSeverity

instance FromHttpApiData KeyedAppStateSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "INFO" -> Right Info
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse KeyedAppStateSeverity from: " <> x)

instance ToHttpApiData KeyedAppStateSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Error' -> "ERROR"

instance FromJSON KeyedAppStateSeverity where
    parseJSON = parseJSONText "KeyedAppStateSeverity"

instance ToJSON KeyedAppStateSeverity where
    toJSON = toJSONText

-- | Ownership of the managed device.
data DeviceOwnership
    = OwnershipUnspecified
      -- ^ @OWNERSHIP_UNSPECIFIED@
      -- Ownership is unspecified.
    | CompanyOwned
      -- ^ @COMPANY_OWNED@
      -- Device is company-owned.
    | PersonallyOwned
      -- ^ @PERSONALLY_OWNED@
      -- Device is personally-owned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceOwnership

instance FromHttpApiData DeviceOwnership where
    parseQueryParam = \case
        "OWNERSHIP_UNSPECIFIED" -> Right OwnershipUnspecified
        "COMPANY_OWNED" -> Right CompanyOwned
        "PERSONALLY_OWNED" -> Right PersonallyOwned
        x -> Left ("Unable to parse DeviceOwnership from: " <> x)

instance ToHttpApiData DeviceOwnership where
    toQueryParam = \case
        OwnershipUnspecified -> "OWNERSHIP_UNSPECIFIED"
        CompanyOwned -> "COMPANY_OWNED"
        PersonallyOwned -> "PERSONALLY_OWNED"

instance FromJSON DeviceOwnership where
    parseJSON = parseJSONText "DeviceOwnership"

instance ToJSON DeviceOwnership where
    toJSON = toJSONText

-- | Application state.
data ApplicationReportState
    = ARSApplicationStateUnspecified
      -- ^ @APPLICATION_STATE_UNSPECIFIED@
      -- App state is unspecified
    | ARSRemoved
      -- ^ @REMOVED@
      -- App was removed from the device
    | ARSInstalled
      -- ^ @INSTALLED@
      -- App is installed on the device
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationReportState

instance FromHttpApiData ApplicationReportState where
    parseQueryParam = \case
        "APPLICATION_STATE_UNSPECIFIED" -> Right ARSApplicationStateUnspecified
        "REMOVED" -> Right ARSRemoved
        "INSTALLED" -> Right ARSInstalled
        x -> Left ("Unable to parse ApplicationReportState from: " <> x)

instance ToHttpApiData ApplicationReportState where
    toQueryParam = \case
        ARSApplicationStateUnspecified -> "APPLICATION_STATE_UNSPECIFIED"
        ARSRemoved -> "REMOVED"
        ARSInstalled -> "INSTALLED"

instance FromJSON ApplicationReportState where
    parseJSON = parseJSONText "ApplicationReportState"

instance ToJSON ApplicationReportState where
    toJSON = toJSONText

data PolicyStayOnPluggedModesItem
    = BatteryPluggedModeUnspecified
      -- ^ @BATTERY_PLUGGED_MODE_UNSPECIFIED@
      -- This value is ignored.
    | AC
      -- ^ @AC@
      -- Power source is an AC charger.
    | Usb
      -- ^ @USB@
      -- Power source is a USB port.
    | Wireless
      -- ^ @WIRELESS@
      -- Power source is wireless.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyStayOnPluggedModesItem

instance FromHttpApiData PolicyStayOnPluggedModesItem where
    parseQueryParam = \case
        "BATTERY_PLUGGED_MODE_UNSPECIFIED" -> Right BatteryPluggedModeUnspecified
        "AC" -> Right AC
        "USB" -> Right Usb
        "WIRELESS" -> Right Wireless
        x -> Left ("Unable to parse PolicyStayOnPluggedModesItem from: " <> x)

instance ToHttpApiData PolicyStayOnPluggedModesItem where
    toQueryParam = \case
        BatteryPluggedModeUnspecified -> "BATTERY_PLUGGED_MODE_UNSPECIFIED"
        AC -> "AC"
        Usb -> "USB"
        Wireless -> "WIRELESS"

instance FromJSON PolicyStayOnPluggedModesItem where
    parseJSON = parseJSONText "PolicyStayOnPluggedModesItem"

instance ToJSON PolicyStayOnPluggedModesItem where
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

-- | Controls whether the app can communicate with itself across a device’s
-- work and personal profiles, subject to user consent.
data ApplicationPolicyConnectedWorkAndPersonalApp
    = ConnectedWorkAndPersonalAppUnspecified
      -- ^ @CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED@
      -- Unspecified. Defaults to CONNECTED_WORK_AND_PERSONAL_APPS_DISALLOWED.
    | ConnectedWorkAndPersonalAppDisallowed
      -- ^ @CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED@
      -- Default. Prevents the app from communicating cross-profile.
    | ConnectedWorkAndPersonalAppAllowed
      -- ^ @CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED@
      -- Allows the app to communicate across profiles after receiving user
      -- consent.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationPolicyConnectedWorkAndPersonalApp

instance FromHttpApiData ApplicationPolicyConnectedWorkAndPersonalApp where
    parseQueryParam = \case
        "CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED" -> Right ConnectedWorkAndPersonalAppUnspecified
        "CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED" -> Right ConnectedWorkAndPersonalAppDisallowed
        "CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED" -> Right ConnectedWorkAndPersonalAppAllowed
        x -> Left ("Unable to parse ApplicationPolicyConnectedWorkAndPersonalApp from: " <> x)

instance ToHttpApiData ApplicationPolicyConnectedWorkAndPersonalApp where
    toQueryParam = \case
        ConnectedWorkAndPersonalAppUnspecified -> "CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED"
        ConnectedWorkAndPersonalAppDisallowed -> "CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED"
        ConnectedWorkAndPersonalAppAllowed -> "CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED"

instance FromJSON ApplicationPolicyConnectedWorkAndPersonalApp where
    parseJSON = parseJSONText "ApplicationPolicyConnectedWorkAndPersonalApp"

instance ToJSON ApplicationPolicyConnectedWorkAndPersonalApp where
    toJSON = toJSONText

-- | Device\'s security posture value.
data SecurityPostureDevicePosture
    = PostureUnspecified
      -- ^ @POSTURE_UNSPECIFIED@
      -- Unspecified. There is no posture detail for this posture value.
    | Secure'
      -- ^ @SECURE@
      -- This device is secure.
    | AtRisk
      -- ^ @AT_RISK@
      -- This device may be more vulnerable to malicious actors than is
      -- recommended for use with corporate data.
    | PotentiallyCompromised
      -- ^ @POTENTIALLY_COMPROMISED@
      -- This device may be compromised and corporate data may be accessible to
      -- unauthorized actors.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SecurityPostureDevicePosture

instance FromHttpApiData SecurityPostureDevicePosture where
    parseQueryParam = \case
        "POSTURE_UNSPECIFIED" -> Right PostureUnspecified
        "SECURE" -> Right Secure'
        "AT_RISK" -> Right AtRisk
        "POTENTIALLY_COMPROMISED" -> Right PotentiallyCompromised
        x -> Left ("Unable to parse SecurityPostureDevicePosture from: " <> x)

instance ToHttpApiData SecurityPostureDevicePosture where
    toQueryParam = \case
        PostureUnspecified -> "POSTURE_UNSPECIFIED"
        Secure' -> "SECURE"
        AtRisk -> "AT_RISK"
        PotentiallyCompromised -> "POTENTIALLY_COMPROMISED"

instance FromJSON SecurityPostureDevicePosture where
    parseJSON = parseJSONText "SecurityPostureDevicePosture"

instance ToJSON SecurityPostureDevicePosture where
    toJSON = toJSONText

data WebTokenPermissionsItem
    = WebTokenPermissionUnspecified
      -- ^ @WEB_TOKEN_PERMISSION_UNSPECIFIED@
      -- This value is ignored.
    | ApproveApps
      -- ^ @APPROVE_APPS@
      -- The permission to approve apps for the enterprise.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebTokenPermissionsItem

instance FromHttpApiData WebTokenPermissionsItem where
    parseQueryParam = \case
        "WEB_TOKEN_PERMISSION_UNSPECIFIED" -> Right WebTokenPermissionUnspecified
        "APPROVE_APPS" -> Right ApproveApps
        x -> Left ("Unable to parse WebTokenPermissionsItem from: " <> x)

instance ToHttpApiData WebTokenPermissionsItem where
    toQueryParam = \case
        WebTokenPermissionUnspecified -> "WEB_TOKEN_PERMISSION_UNSPECIFIED"
        ApproveApps -> "APPROVE_APPS"

instance FromJSON WebTokenPermissionsItem where
    parseJSON = parseJSONText "WebTokenPermissionsItem"

instance ToJSON WebTokenPermissionsItem where
    toJSON = toJSONText

-- | A specific security risk that negatively affects the security posture of
-- the device.
data PostureDetailSecurityRisk
    = SecurityRiskUnspecified
      -- ^ @SECURITY_RISK_UNSPECIFIED@
      -- Unspecified.
    | UnknownOS
      -- ^ @UNKNOWN_OS@
      -- SafetyNet detects that the device is running an unknown OS
      -- (basicIntegrity check succeeds but ctsProfileMatch fails).
    | CompromisedOS
      -- ^ @COMPROMISED_OS@
      -- SafetyNet detects that the device is running a compromised OS
      -- (basicIntegrity check fails).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostureDetailSecurityRisk

instance FromHttpApiData PostureDetailSecurityRisk where
    parseQueryParam = \case
        "SECURITY_RISK_UNSPECIFIED" -> Right SecurityRiskUnspecified
        "UNKNOWN_OS" -> Right UnknownOS
        "COMPROMISED_OS" -> Right CompromisedOS
        x -> Left ("Unable to parse PostureDetailSecurityRisk from: " <> x)

instance ToHttpApiData PostureDetailSecurityRisk where
    toQueryParam = \case
        SecurityRiskUnspecified -> "SECURITY_RISK_UNSPECIFIED"
        UnknownOS -> "UNKNOWN_OS"
        CompromisedOS -> "COMPROMISED_OS"

instance FromJSON PostureDetailSecurityRisk where
    parseJSON = parseJSONText "PostureDetailSecurityRisk"

instance ToJSON PostureDetailSecurityRisk where
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

-- | The length of time after a device or work profile is unlocked using a
-- strong form of authentication (password, PIN, pattern) that it can be
-- unlocked using any other authentication method (e.g. fingerprint, trust
-- agents, face). After the specified time period elapses, only strong
-- forms of authentication can be used to unlock the device or work
-- profile.
data PasswordRequirementsRequirePasswordUnlock
    = RequirePasswordUnlockUnspecified
      -- ^ @REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED@
      -- Unspecified. Defaults to USE_DEFAULT_DEVICE_TIMEOUT.
    | UseDefaultDeviceTimeout
      -- ^ @USE_DEFAULT_DEVICE_TIMEOUT@
      -- The timeout period is set to the device’s default.
    | RequireEveryDay
      -- ^ @REQUIRE_EVERY_DAY@
      -- The timeout period is set to 24 hours.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PasswordRequirementsRequirePasswordUnlock

instance FromHttpApiData PasswordRequirementsRequirePasswordUnlock where
    parseQueryParam = \case
        "REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED" -> Right RequirePasswordUnlockUnspecified
        "USE_DEFAULT_DEVICE_TIMEOUT" -> Right UseDefaultDeviceTimeout
        "REQUIRE_EVERY_DAY" -> Right RequireEveryDay
        x -> Left ("Unable to parse PasswordRequirementsRequirePasswordUnlock from: " <> x)

instance ToHttpApiData PasswordRequirementsRequirePasswordUnlock where
    toQueryParam = \case
        RequirePasswordUnlockUnspecified -> "REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED"
        UseDefaultDeviceTimeout -> "USE_DEFAULT_DEVICE_TIMEOUT"
        RequireEveryDay -> "REQUIRE_EVERY_DAY"

instance FromJSON PasswordRequirementsRequirePasswordUnlock where
    parseJSON = parseJSONText "PasswordRequirementsRequirePasswordUnlock"

instance ToJSON PasswordRequirementsRequirePasswordUnlock where
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
      -- PIN (false detection is less than 1 in 1,000).This, when applied on
      -- personally owned work profile devices on Android 12 device-scoped, will
      -- be treated as COMPLEXITY_LOW for application. See PasswordQuality for
      -- details.
    | Something
      -- ^ @SOMETHING@
      -- A password is required, but there are no restrictions on what the
      -- password must contain.This, when applied on personally owned work
      -- profile devices on Android 12 device-scoped, will be treated as
      -- COMPLEXITY_LOW for application. See PasswordQuality for details.
    | Numeric
      -- ^ @NUMERIC@
      -- The password must contain numeric characters.This, when applied on
      -- personally owned work profile devices on Android 12 device-scoped, will
      -- be treated as COMPLEXITY_MEDIUM for application. See PasswordQuality for
      -- details.
    | NumericComplex
      -- ^ @NUMERIC_COMPLEX@
      -- The password must contain numeric characters with no repeating (4444) or
      -- ordered (1234, 4321, 2468) sequences.This, when applied on personally
      -- owned work profile devices on Android 12 device-scoped, will be treated
      -- as COMPLEXITY_MEDIUM for application. See PasswordQuality for details.
    | Alphabetic
      -- ^ @ALPHABETIC@
      -- The password must contain alphabetic (or symbol) characters.This, when
      -- applied on personally owned work profile devices on Android 12
      -- device-scoped, will be treated as COMPLEXITY_HIGH for application. See
      -- PasswordQuality for details.
    | Alphanumeric
      -- ^ @ALPHANUMERIC@
      -- The password must contain both numeric and alphabetic (or symbol)
      -- characters.This, when applied on personally owned work profile devices
      -- on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for
      -- application. See PasswordQuality for details.
    | Complex
      -- ^ @COMPLEX@
      -- The password must meet the minimum requirements specified in
      -- passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols,
      -- etc. For example, if passwordMinimumSymbols is 2, the password must
      -- contain at least two symbols.This, when applied on personally owned work
      -- profile devices on Android 12 device-scoped, will be treated as
      -- COMPLEXITY_HIGH for application. In this case, the requirements in
      -- passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols,
      -- etc are not applied. See PasswordQuality for details.
    | ComplexityLow
      -- ^ @COMPLEXITY_LOW@
      -- Password satisfies one of the following: pattern PIN with repeating
      -- (4444) or ordered (1234, 4321, 2468) sequencesEnforcement varies among
      -- different Android versions, management modes and password scopes. See
      -- PasswordQuality for details.
    | ComplexityMedium
      -- ^ @COMPLEXITY_MEDIUM@
      -- Password satisfies one of the following: PIN with no repeating (4444) or
      -- ordered (1234, 4321, 2468) sequences, length at least 4 alphabetic,
      -- length at least 4 alphanumeric, length at least 4Enforcement varies
      -- among different Android versions, management modes and password scopes.
      -- See PasswordQuality for details.
    | ComplexityHigh
      -- ^ @COMPLEXITY_HIGH@
      -- Password satisfies one of the following:On Android 12 and above: PIN
      -- with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length
      -- at least 8 alphabetic, length at least 6 alphanumeric, length at least
      -- 6Enforcement varies among different Android versions, management modes
      -- and password scopes. See PasswordQuality for details.
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
        "COMPLEXITY_LOW" -> Right ComplexityLow
        "COMPLEXITY_MEDIUM" -> Right ComplexityMedium
        "COMPLEXITY_HIGH" -> Right ComplexityHigh
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
        ComplexityLow -> "COMPLEXITY_LOW"
        ComplexityMedium -> "COMPLEXITY_MEDIUM"
        ComplexityHigh -> "COMPLEXITY_HIGH"

instance FromJSON PasswordRequirementsPasswordQuality where
    parseJSON = parseJSONText "PasswordRequirementsPasswordQuality"

instance ToJSON PasswordRequirementsPasswordQuality where
    toJSON = toJSONText
