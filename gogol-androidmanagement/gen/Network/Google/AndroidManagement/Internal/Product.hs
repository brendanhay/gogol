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
-- Module      : Network.Google.AndroidManagement.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AndroidManagement.Internal.Product
  ( -- * AdvancedSecurityOverrides
    AdvancedSecurityOverrides (..),
    newAdvancedSecurityOverrides,

    -- * AlwaysOnVpnPackage
    AlwaysOnVpnPackage (..),
    newAlwaysOnVpnPackage,

    -- * ApiLevelCondition
    ApiLevelCondition (..),
    newApiLevelCondition,

    -- * AppTrackInfo
    AppTrackInfo (..),
    newAppTrackInfo,

    -- * AppVersion
    AppVersion (..),
    newAppVersion,

    -- * Application
    Application (..),
    newApplication,

    -- * ApplicationEvent
    ApplicationEvent (..),
    newApplicationEvent,

    -- * ApplicationPermission
    ApplicationPermission (..),
    newApplicationPermission,

    -- * ApplicationPolicy
    ApplicationPolicy (..),
    newApplicationPolicy,

    -- * ApplicationPolicy_ManagedConfiguration
    ApplicationPolicy_ManagedConfiguration (..),
    newApplicationPolicy_ManagedConfiguration,

    -- * ApplicationReport
    ApplicationReport (..),
    newApplicationReport,

    -- * ApplicationReportingSettings
    ApplicationReportingSettings (..),
    newApplicationReportingSettings,

    -- * BlockAction
    BlockAction (..),
    newBlockAction,

    -- * ChoosePrivateKeyRule
    ChoosePrivateKeyRule (..),
    newChoosePrivateKeyRule,

    -- * Command
    Command (..),
    newCommand,

    -- * CommonCriteriaModeInfo
    CommonCriteriaModeInfo (..),
    newCommonCriteriaModeInfo,

    -- * ComplianceRule
    ComplianceRule (..),
    newComplianceRule,

    -- * ContactInfo
    ContactInfo (..),
    newContactInfo,

    -- * ContentProviderEndpoint
    ContentProviderEndpoint (..),
    newContentProviderEndpoint,

    -- * CrossProfilePolicies
    CrossProfilePolicies (..),
    newCrossProfilePolicies,

    -- * Date
    Date (..),
    newDate,

    -- * Device
    Device (..),
    newDevice,

    -- * Device_SystemProperties
    Device_SystemProperties (..),
    newDevice_SystemProperties,

    -- * DeviceSettings
    DeviceSettings (..),
    newDeviceSettings,

    -- * Display
    Display (..),
    newDisplay,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnrollmentToken
    EnrollmentToken (..),
    newEnrollmentToken,

    -- * Enterprise
    Enterprise (..),
    newEnterprise,

    -- * ExtensionConfig
    ExtensionConfig (..),
    newExtensionConfig,

    -- * ExternalData
    ExternalData (..),
    newExternalData,

    -- * FreezePeriod
    FreezePeriod (..),
    newFreezePeriod,

    -- * HardwareInfo
    HardwareInfo (..),
    newHardwareInfo,

    -- * HardwareStatus
    HardwareStatus (..),
    newHardwareStatus,

    -- * IssueCommandResponse
    IssueCommandResponse (..),
    newIssueCommandResponse,

    -- * KeyedAppState
    KeyedAppState (..),
    newKeyedAppState,

    -- * KioskCustomization
    KioskCustomization (..),
    newKioskCustomization,

    -- * LaunchAppAction
    LaunchAppAction (..),
    newLaunchAppAction,

    -- * ListDevicesResponse
    ListDevicesResponse (..),
    newListDevicesResponse,

    -- * ListEnterprisesResponse
    ListEnterprisesResponse (..),
    newListEnterprisesResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListPoliciesResponse
    ListPoliciesResponse (..),
    newListPoliciesResponse,

    -- * ListWebAppsResponse
    ListWebAppsResponse (..),
    newListWebAppsResponse,

    -- * ManagedConfigurationTemplate
    ManagedConfigurationTemplate (..),
    newManagedConfigurationTemplate,

    -- * ManagedConfigurationTemplate_ConfigurationVariables
    ManagedConfigurationTemplate_ConfigurationVariables (..),
    newManagedConfigurationTemplate_ConfigurationVariables,

    -- * ManagedProperty
    ManagedProperty (..),
    newManagedProperty,

    -- * ManagedPropertyEntry
    ManagedPropertyEntry (..),
    newManagedPropertyEntry,

    -- * MemoryEvent
    MemoryEvent (..),
    newMemoryEvent,

    -- * MemoryInfo
    MemoryInfo (..),
    newMemoryInfo,

    -- * NetworkInfo
    NetworkInfo (..),
    newNetworkInfo,

    -- * NonComplianceDetail
    NonComplianceDetail (..),
    newNonComplianceDetail,

    -- * NonComplianceDetailCondition
    NonComplianceDetailCondition (..),
    newNonComplianceDetailCondition,

    -- * OncCertificateProvider
    OncCertificateProvider (..),
    newOncCertificateProvider,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PackageNameList
    PackageNameList (..),
    newPackageNameList,

    -- * PasswordRequirements
    PasswordRequirements (..),
    newPasswordRequirements,

    -- * PermissionGrant
    PermissionGrant (..),
    newPermissionGrant,

    -- * PersistentPreferredActivity
    PersistentPreferredActivity (..),
    newPersistentPreferredActivity,

    -- * PersonalApplicationPolicy
    PersonalApplicationPolicy (..),
    newPersonalApplicationPolicy,

    -- * PersonalUsagePolicies
    PersonalUsagePolicies (..),
    newPersonalUsagePolicies,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Policy_OpenNetworkConfiguration
    Policy_OpenNetworkConfiguration (..),
    newPolicy_OpenNetworkConfiguration,

    -- * PolicyEnforcementRule
    PolicyEnforcementRule (..),
    newPolicyEnforcementRule,

    -- * PostureDetail
    PostureDetail (..),
    newPostureDetail,

    -- * PowerManagementEvent
    PowerManagementEvent (..),
    newPowerManagementEvent,

    -- * ProxyInfo
    ProxyInfo (..),
    newProxyInfo,

    -- * SecurityPosture
    SecurityPosture (..),
    newSecurityPosture,

    -- * SetupAction
    SetupAction (..),
    newSetupAction,

    -- * SigninDetail
    SigninDetail (..),
    newSigninDetail,

    -- * SignupUrl
    SignupUrl (..),
    newSignupUrl,

    -- * SoftwareInfo
    SoftwareInfo (..),
    newSoftwareInfo,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StatusReportingSettings
    StatusReportingSettings (..),
    newStatusReportingSettings,

    -- * SystemUpdate
    SystemUpdate (..),
    newSystemUpdate,

    -- * SystemUpdateInfo
    SystemUpdateInfo (..),
    newSystemUpdateInfo,

    -- * TelephonyInfo
    TelephonyInfo (..),
    newTelephonyInfo,

    -- * TermsAndConditions
    TermsAndConditions (..),
    newTermsAndConditions,

    -- * User
    User (..),
    newUser,

    -- * UserFacingMessage
    UserFacingMessage (..),
    newUserFacingMessage,

    -- * UserFacingMessage_LocalizedMessages
    UserFacingMessage_LocalizedMessages (..),
    newUserFacingMessage_LocalizedMessages,

    -- * WebApp
    WebApp (..),
    newWebApp,

    -- * WebAppIcon
    WebAppIcon (..),
    newWebAppIcon,

    -- * WebToken
    WebToken (..),
    newWebToken,

    -- * WipeAction
    WipeAction (..),
    newWipeAction,
  )
where

import Network.Google.AndroidManagement.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Security policies set to secure values by default. To maintain the security posture of a device, we don\'t recommend overriding any of the default values.
--
-- /See:/ 'newAdvancedSecurityOverrides' smart constructor.
data AdvancedSecurityOverrides = AdvancedSecurityOverrides
  { -- | Controls Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https:\/\/www.commoncriteriaportal.org\/) (CC). Enabling Common Criteria Mode increases certain security components on a device, including AES-GCM encryption of Bluetooth Long Term Keys, and Wi-Fi configuration stores.Warning: Common Criteria Mode enforces a strict security model typically only required for IT products used in national security systems and other highly sensitive organizations. Standard device use may be affected. Only enabled if required.
    commonCriteriaMode :: (Core.Maybe AdvancedSecurityOverrides_CommonCriteriaMode),
    -- | Controls access to developer settings: developer options and safe boot. Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed (deprecated).
    developerSettings :: (Core.Maybe AdvancedSecurityOverrides_DeveloperSettings),
    -- | Whether Google Play Protect verification (https:\/\/support.google.com\/accounts\/answer\/2812853) is enforced. Replaces ensureVerifyAppsEnabled (deprecated).
    googlePlayProtectVerifyApps :: (Core.Maybe AdvancedSecurityOverrides_GooglePlayProtectVerifyApps),
    -- | Personal apps that can read work profile notifications using a NotificationListenerService (https:\/\/developer.android.com\/reference\/android\/service\/notification\/NotificationListenerService). By default, no personal apps (aside from system apps) can read work notifications. Each value in the list must be a package name.
    personalAppsThatCanReadWorkNotifications :: (Core.Maybe [Core.Text]),
    -- | The policy for untrusted apps (apps from unknown sources) enforced on the device. Replaces install/unknown/sources_allowed (deprecated).
    untrustedAppsPolicy :: (Core.Maybe AdvancedSecurityOverrides_UntrustedAppsPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvancedSecurityOverrides' with the minimum fields required to make a request.
newAdvancedSecurityOverrides ::
  AdvancedSecurityOverrides
newAdvancedSecurityOverrides =
  AdvancedSecurityOverrides
    { commonCriteriaMode = Core.Nothing,
      developerSettings = Core.Nothing,
      googlePlayProtectVerifyApps = Core.Nothing,
      personalAppsThatCanReadWorkNotifications = Core.Nothing,
      untrustedAppsPolicy = Core.Nothing
    }

instance Core.FromJSON AdvancedSecurityOverrides where
  parseJSON =
    Core.withObject
      "AdvancedSecurityOverrides"
      ( \o ->
          AdvancedSecurityOverrides
            Core.<$> (o Core..:? "commonCriteriaMode")
            Core.<*> (o Core..:? "developerSettings")
            Core.<*> (o Core..:? "googlePlayProtectVerifyApps")
            Core.<*> ( o
                         Core..:? "personalAppsThatCanReadWorkNotifications"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "untrustedAppsPolicy")
      )

instance Core.ToJSON AdvancedSecurityOverrides where
  toJSON AdvancedSecurityOverrides {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonCriteriaMode" Core..=)
              Core.<$> commonCriteriaMode,
            ("developerSettings" Core..=)
              Core.<$> developerSettings,
            ("googlePlayProtectVerifyApps" Core..=)
              Core.<$> googlePlayProtectVerifyApps,
            ("personalAppsThatCanReadWorkNotifications" Core..=)
              Core.<$> personalAppsThatCanReadWorkNotifications,
            ("untrustedAppsPolicy" Core..=)
              Core.<$> untrustedAppsPolicy
          ]
      )

-- | Configuration for an always-on VPN connection.
--
-- /See:/ 'newAlwaysOnVpnPackage' smart constructor.
data AlwaysOnVpnPackage = AlwaysOnVpnPackage
  { -- | Disallows networking when the VPN is not connected.
    lockdownEnabled :: (Core.Maybe Core.Bool),
    -- | The package name of the VPN app.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlwaysOnVpnPackage' with the minimum fields required to make a request.
newAlwaysOnVpnPackage ::
  AlwaysOnVpnPackage
newAlwaysOnVpnPackage =
  AlwaysOnVpnPackage
    { lockdownEnabled = Core.Nothing,
      packageName = Core.Nothing
    }

instance Core.FromJSON AlwaysOnVpnPackage where
  parseJSON =
    Core.withObject
      "AlwaysOnVpnPackage"
      ( \o ->
          AlwaysOnVpnPackage
            Core.<$> (o Core..:? "lockdownEnabled")
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON AlwaysOnVpnPackage where
  toJSON AlwaysOnVpnPackage {..} =
    Core.object
      ( Core.catMaybes
          [ ("lockdownEnabled" Core..=)
              Core.<$> lockdownEnabled,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | A compliance rule condition which is satisfied if the Android Framework API level on the device doesn\'t meet a minimum requirement. There can only be one rule with this type of condition per policy.
--
-- /See:/ 'newApiLevelCondition' smart constructor.
newtype ApiLevelCondition = ApiLevelCondition
  { -- | The minimum desired Android Framework API level. If the device doesn\'t meet the minimum requirement, this condition is satisfied. Must be greater than zero.
    minApiLevel :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiLevelCondition' with the minimum fields required to make a request.
newApiLevelCondition ::
  ApiLevelCondition
newApiLevelCondition = ApiLevelCondition {minApiLevel = Core.Nothing}

instance Core.FromJSON ApiLevelCondition where
  parseJSON =
    Core.withObject
      "ApiLevelCondition"
      ( \o ->
          ApiLevelCondition
            Core.<$> (o Core..:? "minApiLevel")
      )

instance Core.ToJSON ApiLevelCondition where
  toJSON ApiLevelCondition {..} =
    Core.object
      ( Core.catMaybes
          [("minApiLevel" Core..=) Core.<$> minApiLevel]
      )

-- | Id to name association of a app track.
--
-- /See:/ 'newAppTrackInfo' smart constructor.
data AppTrackInfo = AppTrackInfo
  { -- | The track name associated with the trackId, set in the Play Console. The name is modifiable from Play Console.
    trackAlias :: (Core.Maybe Core.Text),
    -- | The unmodifiable unique track identifier, taken from the releaseTrackId in the URL of the Play Console page that displays the app’s track information.
    trackId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppTrackInfo' with the minimum fields required to make a request.
newAppTrackInfo ::
  AppTrackInfo
newAppTrackInfo =
  AppTrackInfo {trackAlias = Core.Nothing, trackId = Core.Nothing}

instance Core.FromJSON AppTrackInfo where
  parseJSON =
    Core.withObject
      "AppTrackInfo"
      ( \o ->
          AppTrackInfo
            Core.<$> (o Core..:? "trackAlias")
            Core.<*> (o Core..:? "trackId")
      )

instance Core.ToJSON AppTrackInfo where
  toJSON AppTrackInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("trackAlias" Core..=) Core.<$> trackAlias,
            ("trackId" Core..=) Core.<$> trackId
          ]
      )

-- | This represents a single version of the app.
--
-- /See:/ 'newAppVersion' smart constructor.
data AppVersion = AppVersion
  { -- | True if this version is a production track.
    production :: (Core.Maybe Core.Bool),
    -- | Track ids that the app version is published in. This doesn\'t include the production track (see production instead).
    trackIds :: (Core.Maybe [Core.Text]),
    -- | Unique increasing identifier for the app version.
    versionCode :: (Core.Maybe Core.Int32),
    -- | The string used in the Play store by the app developer to identify the version. The string is not necessarily unique or localized (for example, the string could be \"1.4\").
    versionString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppVersion' with the minimum fields required to make a request.
newAppVersion ::
  AppVersion
newAppVersion =
  AppVersion
    { production = Core.Nothing,
      trackIds = Core.Nothing,
      versionCode = Core.Nothing,
      versionString = Core.Nothing
    }

instance Core.FromJSON AppVersion where
  parseJSON =
    Core.withObject
      "AppVersion"
      ( \o ->
          AppVersion
            Core.<$> (o Core..:? "production")
            Core.<*> (o Core..:? "trackIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "versionString")
      )

instance Core.ToJSON AppVersion where
  toJSON AppVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("production" Core..=) Core.<$> production,
            ("trackIds" Core..=) Core.<$> trackIds,
            ("versionCode" Core..=) Core.<$> versionCode,
            ("versionString" Core..=) Core.<$> versionString
          ]
      )

-- | Information about an app.
--
-- /See:/ 'newApplication' smart constructor.
data Application = Application
  { -- | Whether this app is free, free with in-app purchases, or paid. If the pricing is unspecified, this means the app is not generally available anymore (even though it might still be available to people who own it).
    appPricing :: (Core.Maybe Application_AppPricing),
    -- | Application tracks visible to the enterprise.
    appTracks :: (Core.Maybe [AppTrackInfo]),
    -- | Versions currently available for this app.
    appVersions :: (Core.Maybe [AppVersion]),
    -- | The name of the author of the apps (for example, the app developer).
    author :: (Core.Maybe Core.Text),
    -- | The countries which this app is available in as per ISO 3166-1 alpha-2.
    availableCountries :: (Core.Maybe [Core.Text]),
    -- | The app category (e.g. RACING, SOCIAL, etc.)
    category :: (Core.Maybe Core.Text),
    -- | The content rating for this app.
    contentRating :: (Core.Maybe Application_ContentRating),
    -- | The localized promotional description, if available.
    description :: (Core.Maybe Core.Text),
    -- | How and to whom the package is made available.
    distributionChannel :: (Core.Maybe Application_DistributionChannel),
    -- | Noteworthy features (if any) of this app.
    features :: (Core.Maybe [Application_FeaturesItem]),
    -- | Full app description, if available.
    fullDescription :: (Core.Maybe Core.Text),
    -- | A link to an image that can be used as an icon for the app. This image is suitable for use at up to 512px x 512px
    iconUrl :: (Core.Maybe Core.Text),
    -- | The set of managed properties available to be pre-configured for the app.
    managedProperties :: (Core.Maybe [ManagedProperty]),
    -- | The minimum Android SDK necessary to run the app.
    minAndroidSdkVersion :: (Core.Maybe Core.Int32),
    -- | The name of the app in the form enterprises\/{enterprise}\/applications\/{package_name}.
    name :: (Core.Maybe Core.Text),
    -- | The permissions required by the app.
    permissions :: (Core.Maybe [ApplicationPermission]),
    -- | A link to the (consumer) Google Play details page for the app.
    playStoreUrl :: (Core.Maybe Core.Text),
    -- | A localised description of the recent changes made to the app.
    recentChanges :: (Core.Maybe Core.Text),
    -- | A list of screenshot links representing the app.
    screenshotUrls :: (Core.Maybe [Core.Text]),
    -- | A link to a smaller image that can be used as an icon for the app. This image is suitable for use at up to 128px x 128px.
    smallIconUrl :: (Core.Maybe Core.Text),
    -- | The title of the app. Localized.
    title :: (Core.Maybe Core.Text),
    -- | Output only. The approximate time (within 7 days) the app was last published.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
newApplication ::
  Application
newApplication =
  Application
    { appPricing = Core.Nothing,
      appTracks = Core.Nothing,
      appVersions = Core.Nothing,
      author = Core.Nothing,
      availableCountries = Core.Nothing,
      category = Core.Nothing,
      contentRating = Core.Nothing,
      description = Core.Nothing,
      distributionChannel = Core.Nothing,
      features = Core.Nothing,
      fullDescription = Core.Nothing,
      iconUrl = Core.Nothing,
      managedProperties = Core.Nothing,
      minAndroidSdkVersion = Core.Nothing,
      name = Core.Nothing,
      permissions = Core.Nothing,
      playStoreUrl = Core.Nothing,
      recentChanges = Core.Nothing,
      screenshotUrls = Core.Nothing,
      smallIconUrl = Core.Nothing,
      title = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \o ->
          Application
            Core.<$> (o Core..:? "appPricing")
            Core.<*> (o Core..:? "appTracks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "appVersions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "author")
            Core.<*> ( o Core..:? "availableCountries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "contentRating")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "distributionChannel")
            Core.<*> (o Core..:? "features" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fullDescription")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "managedProperties" Core..!= Core.mempty)
            Core.<*> (o Core..:? "minAndroidSdkVersion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "playStoreUrl")
            Core.<*> (o Core..:? "recentChanges")
            Core.<*> (o Core..:? "screenshotUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "smallIconUrl")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Application where
  toJSON Application {..} =
    Core.object
      ( Core.catMaybes
          [ ("appPricing" Core..=) Core.<$> appPricing,
            ("appTracks" Core..=) Core.<$> appTracks,
            ("appVersions" Core..=) Core.<$> appVersions,
            ("author" Core..=) Core.<$> author,
            ("availableCountries" Core..=)
              Core.<$> availableCountries,
            ("category" Core..=) Core.<$> category,
            ("contentRating" Core..=) Core.<$> contentRating,
            ("description" Core..=) Core.<$> description,
            ("distributionChannel" Core..=)
              Core.<$> distributionChannel,
            ("features" Core..=) Core.<$> features,
            ("fullDescription" Core..=) Core.<$> fullDescription,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("managedProperties" Core..=)
              Core.<$> managedProperties,
            ("minAndroidSdkVersion" Core..=)
              Core.<$> minAndroidSdkVersion,
            ("name" Core..=) Core.<$> name,
            ("permissions" Core..=) Core.<$> permissions,
            ("playStoreUrl" Core..=) Core.<$> playStoreUrl,
            ("recentChanges" Core..=) Core.<$> recentChanges,
            ("screenshotUrls" Core..=) Core.<$> screenshotUrls,
            ("smallIconUrl" Core..=) Core.<$> smallIconUrl,
            ("title" Core..=) Core.<$> title,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | An app-related event.
--
-- /See:/ 'newApplicationEvent' smart constructor.
data ApplicationEvent = ApplicationEvent
  { -- | The creation time of the event.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | App event type.
    eventType :: (Core.Maybe ApplicationEvent_EventType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEvent' with the minimum fields required to make a request.
newApplicationEvent ::
  ApplicationEvent
newApplicationEvent =
  ApplicationEvent {createTime = Core.Nothing, eventType = Core.Nothing}

instance Core.FromJSON ApplicationEvent where
  parseJSON =
    Core.withObject
      "ApplicationEvent"
      ( \o ->
          ApplicationEvent
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventType")
      )

instance Core.ToJSON ApplicationEvent where
  toJSON ApplicationEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("eventType" Core..=) Core.<$> eventType
          ]
      )

-- | A permission required by the app.
--
-- /See:/ 'newApplicationPermission' smart constructor.
data ApplicationPermission = ApplicationPermission
  { -- | A longer description of the permission, providing more detail on what it affects. Localized.
    description :: (Core.Maybe Core.Text),
    -- | The name of the permission. Localized.
    name :: (Core.Maybe Core.Text),
    -- | An opaque string uniquely identifying the permission. Not localized.
    permissionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationPermission' with the minimum fields required to make a request.
newApplicationPermission ::
  ApplicationPermission
newApplicationPermission =
  ApplicationPermission
    { description = Core.Nothing,
      name = Core.Nothing,
      permissionId = Core.Nothing
    }

instance Core.FromJSON ApplicationPermission where
  parseJSON =
    Core.withObject
      "ApplicationPermission"
      ( \o ->
          ApplicationPermission
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "permissionId")
      )

instance Core.ToJSON ApplicationPermission where
  toJSON ApplicationPermission {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("permissionId" Core..=) Core.<$> permissionId
          ]
      )

-- | Policy for an individual app.
--
-- /See:/ 'newApplicationPolicy' smart constructor.
data ApplicationPolicy = ApplicationPolicy
  { -- | List of the app’s track IDs that a device belonging to the enterprise can access. If the list contains multiple track IDs, devices receive the latest version among all accessible tracks. If the list contains no track IDs, devices only have access to the app’s production track. More details about each track are available in AppTrackInfo.
    accessibleTrackIds :: (Core.Maybe [Core.Text]),
    -- | Controls the auto-update mode for the app.
    autoUpdateMode :: (Core.Maybe ApplicationPolicy_AutoUpdateMode),
    -- | Controls whether the app can communicate with itself across a device’s work and personal profiles, subject to user consent.
    connectedWorkAndPersonalApp :: (Core.Maybe ApplicationPolicy_ConnectedWorkAndPersonalApp),
    -- | The default policy for all permissions requested by the app. If specified, this overrides the policy-level default/permission/policy which applies to all apps. It does not override the permission_grants which applies to all apps.
    defaultPermissionPolicy :: (Core.Maybe ApplicationPolicy_DefaultPermissionPolicy),
    -- | The scopes delegated to the app from Android Device Policy.
    delegatedScopes :: (Core.Maybe [ApplicationPolicy_DelegatedScopesItem]),
    -- | Whether the app is disabled. When disabled, the app data is still preserved.
    disabled :: (Core.Maybe Core.Bool),
    -- | Configuration to enable this app as an extension app, with the capability of interacting with Android Device Policy offline.This field can be set for at most one app.
    extensionConfig :: (Core.Maybe ExtensionConfig),
    -- | The type of installation to perform.
    installType :: (Core.Maybe ApplicationPolicy_InstallType),
    -- | Whether the app is allowed to lock itself in full-screen mode. DEPRECATED. Use InstallType KIOSK or kioskCustomLauncherEnabled to to configure a dedicated device.
    lockTaskAllowed :: (Core.Maybe Core.Bool),
    -- | Managed configuration applied to the app. The format for the configuration is dictated by the ManagedProperty values supported by the app. Each field name in the managed configuration must match the key field of the ManagedProperty. The field value must be compatible with the type of the ManagedProperty: /type/ /JSON value/ BOOL true or false STRING string INTEGER number CHOICE string MULTISELECT array of strings HIDDEN string BUNDLE_ARRAY array of objects
    managedConfiguration :: (Core.Maybe ApplicationPolicy_ManagedConfiguration),
    -- | The managed configurations template for the app, saved from the managed configurations iframe. This field is ignored if managed_configuration is set.
    managedConfigurationTemplate :: (Core.Maybe ManagedConfigurationTemplate),
    -- | The minimum version of the app that runs on the device. If set, the device attempts to update the app to at least this version code. If the app is not up-to-date, the device will contain a NonComplianceDetail with non/compliance/reason set to APP/NOT/UPDATED. The app must already be published to Google Play with a version code greater than or equal to this value. At most 20 apps may specify a minimum version code per policy.
    minimumVersionCode :: (Core.Maybe Core.Int32),
    -- | The package name of the app. For example, com.google.android.youtube for the YouTube app.
    packageName :: (Core.Maybe Core.Text),
    -- | Explicit permission grants or denials for the app. These values override the default/permission/policy and permission_grants which apply to all apps.
    permissionGrants :: (Core.Maybe [PermissionGrant])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationPolicy' with the minimum fields required to make a request.
newApplicationPolicy ::
  ApplicationPolicy
newApplicationPolicy =
  ApplicationPolicy
    { accessibleTrackIds = Core.Nothing,
      autoUpdateMode = Core.Nothing,
      connectedWorkAndPersonalApp = Core.Nothing,
      defaultPermissionPolicy = Core.Nothing,
      delegatedScopes = Core.Nothing,
      disabled = Core.Nothing,
      extensionConfig = Core.Nothing,
      installType = Core.Nothing,
      lockTaskAllowed = Core.Nothing,
      managedConfiguration = Core.Nothing,
      managedConfigurationTemplate = Core.Nothing,
      minimumVersionCode = Core.Nothing,
      packageName = Core.Nothing,
      permissionGrants = Core.Nothing
    }

instance Core.FromJSON ApplicationPolicy where
  parseJSON =
    Core.withObject
      "ApplicationPolicy"
      ( \o ->
          ApplicationPolicy
            Core.<$> ( o Core..:? "accessibleTrackIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "autoUpdateMode")
            Core.<*> (o Core..:? "connectedWorkAndPersonalApp")
            Core.<*> (o Core..:? "defaultPermissionPolicy")
            Core.<*> (o Core..:? "delegatedScopes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "extensionConfig")
            Core.<*> (o Core..:? "installType")
            Core.<*> (o Core..:? "lockTaskAllowed")
            Core.<*> (o Core..:? "managedConfiguration")
            Core.<*> (o Core..:? "managedConfigurationTemplate")
            Core.<*> (o Core..:? "minimumVersionCode")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "permissionGrants" Core..!= Core.mempty)
      )

instance Core.ToJSON ApplicationPolicy where
  toJSON ApplicationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessibleTrackIds" Core..=)
              Core.<$> accessibleTrackIds,
            ("autoUpdateMode" Core..=) Core.<$> autoUpdateMode,
            ("connectedWorkAndPersonalApp" Core..=)
              Core.<$> connectedWorkAndPersonalApp,
            ("defaultPermissionPolicy" Core..=)
              Core.<$> defaultPermissionPolicy,
            ("delegatedScopes" Core..=) Core.<$> delegatedScopes,
            ("disabled" Core..=) Core.<$> disabled,
            ("extensionConfig" Core..=) Core.<$> extensionConfig,
            ("installType" Core..=) Core.<$> installType,
            ("lockTaskAllowed" Core..=) Core.<$> lockTaskAllowed,
            ("managedConfiguration" Core..=)
              Core.<$> managedConfiguration,
            ("managedConfigurationTemplate" Core..=)
              Core.<$> managedConfigurationTemplate,
            ("minimumVersionCode" Core..=)
              Core.<$> minimumVersionCode,
            ("packageName" Core..=) Core.<$> packageName,
            ("permissionGrants" Core..=)
              Core.<$> permissionGrants
          ]
      )

-- | Managed configuration applied to the app. The format for the configuration is dictated by the ManagedProperty values supported by the app. Each field name in the managed configuration must match the key field of the ManagedProperty. The field value must be compatible with the type of the ManagedProperty: /type/ /JSON value/ BOOL true or false STRING string INTEGER number CHOICE string MULTISELECT array of strings HIDDEN string BUNDLE_ARRAY array of objects
--
-- /See:/ 'newApplicationPolicy_ManagedConfiguration' smart constructor.
newtype ApplicationPolicy_ManagedConfiguration = ApplicationPolicy_ManagedConfiguration
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationPolicy_ManagedConfiguration' with the minimum fields required to make a request.
newApplicationPolicy_ManagedConfiguration ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  ApplicationPolicy_ManagedConfiguration
newApplicationPolicy_ManagedConfiguration addtional =
  ApplicationPolicy_ManagedConfiguration {addtional = addtional}

instance
  Core.FromJSON
    ApplicationPolicy_ManagedConfiguration
  where
  parseJSON =
    Core.withObject
      "ApplicationPolicy_ManagedConfiguration"
      ( \o ->
          ApplicationPolicy_ManagedConfiguration
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ApplicationPolicy_ManagedConfiguration
  where
  toJSON ApplicationPolicy_ManagedConfiguration {..} =
    Core.toJSON addtional

-- | Information reported about an installed app.
--
-- /See:/ 'newApplicationReport' smart constructor.
data ApplicationReport = ApplicationReport
  { -- | The source of the package.
    applicationSource :: (Core.Maybe ApplicationReport_ApplicationSource),
    -- | The display name of the app.
    displayName :: (Core.Maybe Core.Text),
    -- | List of app events. The most recent 20 events are stored in the list.
    events :: (Core.Maybe [ApplicationEvent]),
    -- | The package name of the app that installed this app.
    installerPackageName :: (Core.Maybe Core.Text),
    -- | List of keyed app states reported by the app.
    keyedAppStates :: (Core.Maybe [KeyedAppState]),
    -- | Package name of the app.
    packageName :: (Core.Maybe Core.Text),
    -- | The SHA-256 hash of the app\'s APK file, which can be used to verify the app hasn\'t been modified. Each byte of the hash value is represented as a two-digit hexadecimal number.
    packageSha256Hash :: (Core.Maybe Core.Text),
    -- | The SHA-1 hash of each android.content.pm.Signature (https:\/\/developer.android.com\/reference\/android\/content\/pm\/Signature.html) associated with the app package. Each byte of each hash value is represented as a two-digit hexadecimal number.
    signingKeyCertFingerprints :: (Core.Maybe [Core.Text]),
    -- | Application state.
    state :: (Core.Maybe ApplicationReport_State),
    -- | The app version code, which can be used to determine whether one version is more recent than another.
    versionCode :: (Core.Maybe Core.Int32),
    -- | The app version as displayed to the user.
    versionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationReport' with the minimum fields required to make a request.
newApplicationReport ::
  ApplicationReport
newApplicationReport =
  ApplicationReport
    { applicationSource = Core.Nothing,
      displayName = Core.Nothing,
      events = Core.Nothing,
      installerPackageName = Core.Nothing,
      keyedAppStates = Core.Nothing,
      packageName = Core.Nothing,
      packageSha256Hash = Core.Nothing,
      signingKeyCertFingerprints = Core.Nothing,
      state = Core.Nothing,
      versionCode = Core.Nothing,
      versionName = Core.Nothing
    }

instance Core.FromJSON ApplicationReport where
  parseJSON =
    Core.withObject
      "ApplicationReport"
      ( \o ->
          ApplicationReport
            Core.<$> (o Core..:? "applicationSource")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "events" Core..!= Core.mempty)
            Core.<*> (o Core..:? "installerPackageName")
            Core.<*> (o Core..:? "keyedAppStates" Core..!= Core.mempty)
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "packageSha256Hash")
            Core.<*> ( o Core..:? "signingKeyCertFingerprints"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "versionName")
      )

instance Core.ToJSON ApplicationReport where
  toJSON ApplicationReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationSource" Core..=)
              Core.<$> applicationSource,
            ("displayName" Core..=) Core.<$> displayName,
            ("events" Core..=) Core.<$> events,
            ("installerPackageName" Core..=)
              Core.<$> installerPackageName,
            ("keyedAppStates" Core..=) Core.<$> keyedAppStates,
            ("packageName" Core..=) Core.<$> packageName,
            ("packageSha256Hash" Core..=)
              Core.<$> packageSha256Hash,
            ("signingKeyCertFingerprints" Core..=)
              Core.<$> signingKeyCertFingerprints,
            ("state" Core..=) Core.<$> state,
            ("versionCode" Core..=) Core.<$> versionCode,
            ("versionName" Core..=) Core.<$> versionName
          ]
      )

-- | Settings controlling the behavior of application reports.
--
-- /See:/ 'newApplicationReportingSettings' smart constructor.
newtype ApplicationReportingSettings = ApplicationReportingSettings
  { -- | Whether removed apps are included in application reports.
    includeRemovedApps :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationReportingSettings' with the minimum fields required to make a request.
newApplicationReportingSettings ::
  ApplicationReportingSettings
newApplicationReportingSettings =
  ApplicationReportingSettings {includeRemovedApps = Core.Nothing}

instance Core.FromJSON ApplicationReportingSettings where
  parseJSON =
    Core.withObject
      "ApplicationReportingSettings"
      ( \o ->
          ApplicationReportingSettings
            Core.<$> (o Core..:? "includeRemovedApps")
      )

instance Core.ToJSON ApplicationReportingSettings where
  toJSON ApplicationReportingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeRemovedApps" Core..=)
              Core.<$> includeRemovedApps
          ]
      )

-- | An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a device or work profile to displays a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.
--
-- /See:/ 'newBlockAction' smart constructor.
data BlockAction = BlockAction
  { -- | Number of days the policy is non-compliant before the device or work profile is blocked. To block access immediately, set to 0. blockAfterDays must be less than wipeAfterDays.
    blockAfterDays :: (Core.Maybe Core.Int32),
    -- | Specifies the scope of this BlockAction. Only applicable to devices that are company-owned.
    blockScope :: (Core.Maybe BlockAction_BlockScope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlockAction' with the minimum fields required to make a request.
newBlockAction ::
  BlockAction
newBlockAction =
  BlockAction {blockAfterDays = Core.Nothing, blockScope = Core.Nothing}

instance Core.FromJSON BlockAction where
  parseJSON =
    Core.withObject
      "BlockAction"
      ( \o ->
          BlockAction
            Core.<$> (o Core..:? "blockAfterDays")
            Core.<*> (o Core..:? "blockScope")
      )

instance Core.ToJSON BlockAction where
  toJSON BlockAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockAfterDays" Core..=) Core.<$> blockAfterDays,
            ("blockScope" Core..=) Core.<$> blockScope
          ]
      )

-- | Controls apps\' access to private keys. The rule determines which private key, if any, Android Device Policy grants to the specified app. Access is granted either when the app calls KeyChain.choosePrivateKeyAlias (https:\/\/developer.android.com\/reference\/android\/security\/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) (or any overloads) to request a private key alias for a given URL, or for rules that are not URL-specific (that is, if urlPattern is not set, or set to the empty string or .*) on Android 11 and above, directly so that the app can call KeyChain.getPrivateKey (https:\/\/developer.android.com\/reference\/android\/security\/KeyChain#getPrivateKey%28android.content.Context,%20java.lang.String%29), without first having to call KeyChain.choosePrivateKeyAlias.When an app calls KeyChain.choosePrivateKeyAlias if more than one choosePrivateKeyRules
-- matches, the last matching rule defines which key alias to return.
--
-- /See:/ 'newChoosePrivateKeyRule' smart constructor.
data ChoosePrivateKeyRule = ChoosePrivateKeyRule
  { -- | The package names to which this rule applies. The hash of the signing certificate for each app is verified against the hash provided by Play. If no package names are specified, then the alias is provided to all apps that call KeyChain.choosePrivateKeyAlias (https:\/\/developer.android.com\/reference\/android\/security\/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) or any overloads (but not without calling KeyChain.choosePrivateKeyAlias, even on Android 11 and above). Any app with the same Android UID as a package specified here will have access when they call KeyChain.choosePrivateKeyAlias.
    packageNames :: (Core.Maybe [Core.Text]),
    -- | The alias of the private key to be used.
    privateKeyAlias :: (Core.Maybe Core.Text),
    -- | The URL pattern to match against the URL of the request. If not set or empty, it matches all URLs. This uses the regular expression syntax of java.util.regex.Pattern.
    urlPattern :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChoosePrivateKeyRule' with the minimum fields required to make a request.
newChoosePrivateKeyRule ::
  ChoosePrivateKeyRule
newChoosePrivateKeyRule =
  ChoosePrivateKeyRule
    { packageNames = Core.Nothing,
      privateKeyAlias = Core.Nothing,
      urlPattern = Core.Nothing
    }

instance Core.FromJSON ChoosePrivateKeyRule where
  parseJSON =
    Core.withObject
      "ChoosePrivateKeyRule"
      ( \o ->
          ChoosePrivateKeyRule
            Core.<$> (o Core..:? "packageNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "privateKeyAlias")
            Core.<*> (o Core..:? "urlPattern")
      )

instance Core.ToJSON ChoosePrivateKeyRule where
  toJSON ChoosePrivateKeyRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("packageNames" Core..=) Core.<$> packageNames,
            ("privateKeyAlias" Core..=) Core.<$> privateKeyAlias,
            ("urlPattern" Core..=) Core.<$> urlPattern
          ]
      )

-- | A command.
--
-- /See:/ 'newCommand' smart constructor.
data Command = Command
  { -- | The timestamp at which the command was created. The timestamp is automatically generated by the server.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The duration for which the command is valid. The command will expire if not executed by the device during this time. The default duration if unspecified is ten minutes. There is no maximum duration.
    duration :: (Core.Maybe Core.GDuration),
    -- | If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller.
    errorCode :: (Core.Maybe Command_ErrorCode),
    -- | For commands of type RESET_PASSWORD, optionally specifies the new password.
    newPassword' :: (Core.Maybe Core.Text),
    -- | For commands of type RESET_PASSWORD, optionally specifies flags.
    resetPasswordFlags :: (Core.Maybe [Command_ResetPasswordFlagsItem]),
    -- | The type of the command.
    type' :: (Core.Maybe Command_Type),
    -- | The resource name of the user that owns the device in the form enterprises\/{enterpriseId}\/users\/{userId}. This is automatically generated by the server based on the device the command is sent to.
    userName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
newCommand ::
  Command
newCommand =
  Command
    { createTime = Core.Nothing,
      duration = Core.Nothing,
      errorCode = Core.Nothing,
      newPassword' = Core.Nothing,
      resetPasswordFlags = Core.Nothing,
      type' = Core.Nothing,
      userName = Core.Nothing
    }

instance Core.FromJSON Command where
  parseJSON =
    Core.withObject
      "Command"
      ( \o ->
          Command
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "newPassword")
            Core.<*> ( o Core..:? "resetPasswordFlags"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "userName")
      )

instance Core.ToJSON Command where
  toJSON Command {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("duration" Core..=) Core.<$> duration,
            ("errorCode" Core..=) Core.<$> errorCode,
            ("newPassword" Core..=) Core.<$> newPassword',
            ("resetPasswordFlags" Core..=)
              Core.<$> resetPasswordFlags,
            ("type" Core..=) Core.<$> type',
            ("userName" Core..=) Core.<$> userName
          ]
      )

-- | Information about Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https:\/\/www.commoncriteriaportal.org\/) (CC).This information is only available if statusReportingSettings.commonCriteriaModeEnabled is true in the device\'s policy.
--
-- /See:/ 'newCommonCriteriaModeInfo' smart constructor.
newtype CommonCriteriaModeInfo = CommonCriteriaModeInfo
  { -- | Whether Common Criteria Mode is enabled.
    commonCriteriaModeStatus :: (Core.Maybe CommonCriteriaModeInfo_CommonCriteriaModeStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonCriteriaModeInfo' with the minimum fields required to make a request.
newCommonCriteriaModeInfo ::
  CommonCriteriaModeInfo
newCommonCriteriaModeInfo =
  CommonCriteriaModeInfo {commonCriteriaModeStatus = Core.Nothing}

instance Core.FromJSON CommonCriteriaModeInfo where
  parseJSON =
    Core.withObject
      "CommonCriteriaModeInfo"
      ( \o ->
          CommonCriteriaModeInfo
            Core.<$> (o Core..:? "commonCriteriaModeStatus")
      )

instance Core.ToJSON CommonCriteriaModeInfo where
  toJSON CommonCriteriaModeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonCriteriaModeStatus" Core..=)
              Core.<$> commonCriteriaModeStatus
          ]
      )

-- | A rule declaring which mitigating actions to take when a device is not compliant with its policy. For every rule, there is always an implicit mitigating action to set policy_compliant to false for the Device resource, and display a message on the device indicating that the device is not compliant with its policy. Other mitigating actions may optionally be taken as well, depending on the field values in the rule.
--
-- /See:/ 'newComplianceRule' smart constructor.
data ComplianceRule = ComplianceRule
  { -- | A condition which is satisfied if the Android Framework API level on the device doesn\'t meet a minimum requirement.
    apiLevelCondition :: (Core.Maybe ApiLevelCondition),
    -- | If set to true, the rule includes a mitigating action to disable apps so that the device is effectively disabled, but app data is preserved. If the device is running an app in locked task mode, the app will be closed and a UI showing the reason for non-compliance will be displayed.
    disableApps :: (Core.Maybe Core.Bool),
    -- | A condition which is satisfied if there exists any matching NonComplianceDetail for the device.
    nonComplianceDetailCondition :: (Core.Maybe NonComplianceDetailCondition),
    -- | If set, the rule includes a mitigating action to disable apps specified in the list, but app data is preserved.
    packageNamesToDisable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplianceRule' with the minimum fields required to make a request.
newComplianceRule ::
  ComplianceRule
newComplianceRule =
  ComplianceRule
    { apiLevelCondition = Core.Nothing,
      disableApps = Core.Nothing,
      nonComplianceDetailCondition = Core.Nothing,
      packageNamesToDisable = Core.Nothing
    }

instance Core.FromJSON ComplianceRule where
  parseJSON =
    Core.withObject
      "ComplianceRule"
      ( \o ->
          ComplianceRule
            Core.<$> (o Core..:? "apiLevelCondition")
            Core.<*> (o Core..:? "disableApps")
            Core.<*> (o Core..:? "nonComplianceDetailCondition")
            Core.<*> ( o Core..:? "packageNamesToDisable"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ComplianceRule where
  toJSON ComplianceRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiLevelCondition" Core..=)
              Core.<$> apiLevelCondition,
            ("disableApps" Core..=) Core.<$> disableApps,
            ("nonComplianceDetailCondition" Core..=)
              Core.<$> nonComplianceDetailCondition,
            ("packageNamesToDisable" Core..=)
              Core.<$> packageNamesToDisable
          ]
      )

-- | Contact details for managed Google Play enterprises.
--
-- /See:/ 'newContactInfo' smart constructor.
data ContactInfo = ContactInfo
  { -- | Email address for a point of contact, which will be used to send important announcements related to managed Google Play.
    contactEmail :: (Core.Maybe Core.Text),
    -- | The email of the data protection officer. The email is validated but not verified.
    dataProtectionOfficerEmail :: (Core.Maybe Core.Text),
    -- | The name of the data protection officer.
    dataProtectionOfficerName :: (Core.Maybe Core.Text),
    -- | The phone number of the data protection officer The phone number is validated but not verified.
    dataProtectionOfficerPhone :: (Core.Maybe Core.Text),
    -- | The email of the EU representative. The email is validated but not verified.
    euRepresentativeEmail :: (Core.Maybe Core.Text),
    -- | The name of the EU representative.
    euRepresentativeName :: (Core.Maybe Core.Text),
    -- | The phone number of the EU representative. The phone number is validated but not verified.
    euRepresentativePhone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactInfo' with the minimum fields required to make a request.
newContactInfo ::
  ContactInfo
newContactInfo =
  ContactInfo
    { contactEmail = Core.Nothing,
      dataProtectionOfficerEmail = Core.Nothing,
      dataProtectionOfficerName = Core.Nothing,
      dataProtectionOfficerPhone = Core.Nothing,
      euRepresentativeEmail = Core.Nothing,
      euRepresentativeName = Core.Nothing,
      euRepresentativePhone = Core.Nothing
    }

instance Core.FromJSON ContactInfo where
  parseJSON =
    Core.withObject
      "ContactInfo"
      ( \o ->
          ContactInfo
            Core.<$> (o Core..:? "contactEmail")
            Core.<*> (o Core..:? "dataProtectionOfficerEmail")
            Core.<*> (o Core..:? "dataProtectionOfficerName")
            Core.<*> (o Core..:? "dataProtectionOfficerPhone")
            Core.<*> (o Core..:? "euRepresentativeEmail")
            Core.<*> (o Core..:? "euRepresentativeName")
            Core.<*> (o Core..:? "euRepresentativePhone")
      )

instance Core.ToJSON ContactInfo where
  toJSON ContactInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactEmail" Core..=) Core.<$> contactEmail,
            ("dataProtectionOfficerEmail" Core..=)
              Core.<$> dataProtectionOfficerEmail,
            ("dataProtectionOfficerName" Core..=)
              Core.<$> dataProtectionOfficerName,
            ("dataProtectionOfficerPhone" Core..=)
              Core.<$> dataProtectionOfficerPhone,
            ("euRepresentativeEmail" Core..=)
              Core.<$> euRepresentativeEmail,
            ("euRepresentativeName" Core..=)
              Core.<$> euRepresentativeName,
            ("euRepresentativePhone" Core..=)
              Core.<$> euRepresentativePhone
          ]
      )

-- | This feature is not generally available.
--
-- /See:/ 'newContentProviderEndpoint' smart constructor.
data ContentProviderEndpoint = ContentProviderEndpoint
  { -- | This feature is not generally available.
    packageName :: (Core.Maybe Core.Text),
    -- | Required. This feature is not generally available.
    signingCertsSha256 :: (Core.Maybe [Core.Text]),
    -- | This feature is not generally available.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProviderEndpoint' with the minimum fields required to make a request.
newContentProviderEndpoint ::
  ContentProviderEndpoint
newContentProviderEndpoint =
  ContentProviderEndpoint
    { packageName = Core.Nothing,
      signingCertsSha256 = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ContentProviderEndpoint where
  parseJSON =
    Core.withObject
      "ContentProviderEndpoint"
      ( \o ->
          ContentProviderEndpoint
            Core.<$> (o Core..:? "packageName")
            Core.<*> ( o Core..:? "signingCertsSha256"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ContentProviderEndpoint where
  toJSON ContentProviderEndpoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("packageName" Core..=) Core.<$> packageName,
            ("signingCertsSha256" Core..=)
              Core.<$> signingCertsSha256,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Cross-profile policies applied on the device.
--
-- /See:/ 'newCrossProfilePolicies' smart constructor.
data CrossProfilePolicies = CrossProfilePolicies
  { -- | Whether text copied from one profile (personal or work) can be pasted in the other profile.
    crossProfileCopyPaste :: (Core.Maybe CrossProfilePolicies_CrossProfileCopyPaste),
    -- | Whether data from one profile (personal or work) can be shared with apps in the other profile. Specifically controls simple data sharing via intents. Management of other cross-profile communication channels, such as contact search, copy\/paste, or connected work & personal apps, are configured separately.
    crossProfileDataSharing :: (Core.Maybe CrossProfilePolicies_CrossProfileDataSharing),
    -- | Whether contacts stored in the work profile can be shown in personal profile contact searches and incoming calls.
    showWorkContactsInPersonalProfile :: (Core.Maybe CrossProfilePolicies_ShowWorkContactsInPersonalProfile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrossProfilePolicies' with the minimum fields required to make a request.
newCrossProfilePolicies ::
  CrossProfilePolicies
newCrossProfilePolicies =
  CrossProfilePolicies
    { crossProfileCopyPaste = Core.Nothing,
      crossProfileDataSharing = Core.Nothing,
      showWorkContactsInPersonalProfile = Core.Nothing
    }

instance Core.FromJSON CrossProfilePolicies where
  parseJSON =
    Core.withObject
      "CrossProfilePolicies"
      ( \o ->
          CrossProfilePolicies
            Core.<$> (o Core..:? "crossProfileCopyPaste")
            Core.<*> (o Core..:? "crossProfileDataSharing")
            Core.<*> (o Core..:? "showWorkContactsInPersonalProfile")
      )

instance Core.ToJSON CrossProfilePolicies where
  toJSON CrossProfilePolicies {..} =
    Core.object
      ( Core.catMaybes
          [ ("crossProfileCopyPaste" Core..=)
              Core.<$> crossProfileCopyPaste,
            ("crossProfileDataSharing" Core..=)
              Core.<$> crossProfileDataSharing,
            ("showWorkContactsInPersonalProfile" Core..=)
              Core.<$> showWorkContactsInPersonalProfile
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: A full date, with non-zero year, month, and day values. A month and day, with a zero year (for example, an anniversary). A year on its own, with a zero month and a zero day. A year and month, with a zero day (for example, a credit card expiration date).Related types: google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | A device owned by an enterprise. Unless otherwise noted, all fields are read-only and can\'t be modified by enterprises.devices.patch.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device
  { -- | The API level of the Android platform version running on the device.
    apiLevel :: (Core.Maybe Core.Int32),
    -- | Reports for apps installed on the device. This information is only available when application/reports/enabled is true in the device\'s policy.
    applicationReports :: (Core.Maybe [ApplicationReport]),
    -- | The password requirements currently applied to the device. The applied requirements may be slightly different from those specified in passwordPolicies in some cases. fieldPath is set based on passwordPolicies.
    appliedPasswordPolicies :: (Core.Maybe [PasswordRequirements]),
    -- | The name of the policy currently applied to the device.
    appliedPolicyName :: (Core.Maybe Core.Text),
    -- | The version of the policy currently applied to the device.
    appliedPolicyVersion :: (Core.Maybe Core.Int64),
    -- | The state currently applied to the device.
    appliedState :: (Core.Maybe Device_AppliedState),
    -- | Information about Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https:\/\/www.commoncriteriaportal.org\/) (CC).This information is only available if statusReportingSettings.commonCriteriaModeEnabled is true in the device\'s policy.
    commonCriteriaModeInfo :: (Core.Maybe CommonCriteriaModeInfo),
    -- | Device settings information. This information is only available if deviceSettingsEnabled is true in the device\'s policy.
    deviceSettings :: (Core.Maybe DeviceSettings),
    -- | If the device state is DISABLED, an optional message that is displayed on the device indicating the reason the device is disabled. This field can be modified by a patch request.
    disabledReason :: (Core.Maybe UserFacingMessage),
    -- | Detailed information about displays on the device. This information is only available if displayInfoEnabled is true in the device\'s policy.
    displays :: (Core.Maybe [Display]),
    -- | The time of device enrollment.
    enrollmentTime :: (Core.Maybe Core.DateTime'),
    -- | If the device was enrolled with an enrollment token with additional data provided, this field contains that data.
    enrollmentTokenData :: (Core.Maybe Core.Text),
    -- | If the device was enrolled with an enrollment token, this field contains the name of the token.
    enrollmentTokenName :: (Core.Maybe Core.Text),
    -- | Detailed information about the device hardware.
    hardwareInfo :: (Core.Maybe HardwareInfo),
    -- | Hardware status samples in chronological order. This information is only available if hardwareStatusEnabled is true in the device\'s policy.
    hardwareStatusSamples :: (Core.Maybe [HardwareStatus]),
    -- | Deprecated.
    lastPolicyComplianceReportTime :: (Core.Maybe Core.DateTime'),
    -- | The last time the device fetched its policy.
    lastPolicySyncTime :: (Core.Maybe Core.DateTime'),
    -- | The last time the device sent a status report.
    lastStatusReportTime :: (Core.Maybe Core.DateTime'),
    -- | The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported.
    managementMode :: (Core.Maybe Device_ManagementMode),
    -- | Events related to memory and storage measurements in chronological order. This information is only available if memoryInfoEnabled is true in the device\'s policy.
    memoryEvents :: (Core.Maybe [MemoryEvent]),
    -- | Memory information: contains information about device memory and storage.
    memoryInfo :: (Core.Maybe MemoryInfo),
    -- | The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}.
    name :: (Core.Maybe Core.Text),
    -- | Device network information. This information is only available if networkInfoEnabled is true in the device\'s policy.
    networkInfo :: (Core.Maybe NetworkInfo),
    -- | Details about policy settings that the device is not compliant with.
    nonComplianceDetails :: (Core.Maybe [NonComplianceDetail]),
    -- | Ownership of the managed device.
    ownership :: (Core.Maybe Device_Ownership),
    -- | Whether the device is compliant with its policy.
    policyCompliant :: (Core.Maybe Core.Bool),
    -- | The name of the policy applied to the device, in the form enterprises\/{enterpriseId}\/policies\/{policyId}. If not specified, the policy_name for the device\'s user is applied. This field can be modified by a patch request. You can specify only the policyId when calling enterprises.devices.patch, as long as the policyId doesn’t contain any slashes. The rest of the policy name is inferred.
    policyName :: (Core.Maybe Core.Text),
    -- | Power management events on the device in chronological order. This information is only available if powerManagementEventsEnabled is true in the device\'s policy.
    powerManagementEvents :: (Core.Maybe [PowerManagementEvent]),
    -- | If the same physical device has been enrolled multiple times, this field contains its previous device names. The serial number is used as the unique identifier to determine if the same physical device has enrolled previously. The names are in chronological order.
    previousDeviceNames :: (Core.Maybe [Core.Text]),
    -- | Device\'s security posture value that reflects how secure the device is.
    securityPosture :: (Core.Maybe SecurityPosture),
    -- | Detailed information about the device software. This information is only available if softwareInfoEnabled is true in the device\'s policy.
    softwareInfo :: (Core.Maybe SoftwareInfo),
    -- | The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete.
    state :: (Core.Maybe Device_State),
    -- | Map of selected system properties name and value related to the device. This information is only available if systemPropertiesEnabled is true in the device\'s policy.
    systemProperties :: (Core.Maybe Device_SystemProperties),
    -- | The user who owns the device.
    user :: (Core.Maybe User),
    -- | The resource name of the user that owns this device in the form enterprises\/{enterpriseId}\/users\/{userId}.
    userName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
newDevice ::
  Device
newDevice =
  Device
    { apiLevel = Core.Nothing,
      applicationReports = Core.Nothing,
      appliedPasswordPolicies = Core.Nothing,
      appliedPolicyName = Core.Nothing,
      appliedPolicyVersion = Core.Nothing,
      appliedState = Core.Nothing,
      commonCriteriaModeInfo = Core.Nothing,
      deviceSettings = Core.Nothing,
      disabledReason = Core.Nothing,
      displays = Core.Nothing,
      enrollmentTime = Core.Nothing,
      enrollmentTokenData = Core.Nothing,
      enrollmentTokenName = Core.Nothing,
      hardwareInfo = Core.Nothing,
      hardwareStatusSamples = Core.Nothing,
      lastPolicyComplianceReportTime = Core.Nothing,
      lastPolicySyncTime = Core.Nothing,
      lastStatusReportTime = Core.Nothing,
      managementMode = Core.Nothing,
      memoryEvents = Core.Nothing,
      memoryInfo = Core.Nothing,
      name = Core.Nothing,
      networkInfo = Core.Nothing,
      nonComplianceDetails = Core.Nothing,
      ownership = Core.Nothing,
      policyCompliant = Core.Nothing,
      policyName = Core.Nothing,
      powerManagementEvents = Core.Nothing,
      previousDeviceNames = Core.Nothing,
      securityPosture = Core.Nothing,
      softwareInfo = Core.Nothing,
      state = Core.Nothing,
      systemProperties = Core.Nothing,
      user = Core.Nothing,
      userName = Core.Nothing
    }

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \o ->
          Device
            Core.<$> (o Core..:? "apiLevel")
            Core.<*> ( o Core..:? "applicationReports"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "appliedPasswordPolicies"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "appliedPolicyName")
            Core.<*> (o Core..:? "appliedPolicyVersion")
            Core.<*> (o Core..:? "appliedState")
            Core.<*> (o Core..:? "commonCriteriaModeInfo")
            Core.<*> (o Core..:? "deviceSettings")
            Core.<*> (o Core..:? "disabledReason")
            Core.<*> (o Core..:? "displays" Core..!= Core.mempty)
            Core.<*> (o Core..:? "enrollmentTime")
            Core.<*> (o Core..:? "enrollmentTokenData")
            Core.<*> (o Core..:? "enrollmentTokenName")
            Core.<*> (o Core..:? "hardwareInfo")
            Core.<*> ( o Core..:? "hardwareStatusSamples"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "lastPolicyComplianceReportTime")
            Core.<*> (o Core..:? "lastPolicySyncTime")
            Core.<*> (o Core..:? "lastStatusReportTime")
            Core.<*> (o Core..:? "managementMode")
            Core.<*> (o Core..:? "memoryEvents" Core..!= Core.mempty)
            Core.<*> (o Core..:? "memoryInfo")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkInfo")
            Core.<*> ( o Core..:? "nonComplianceDetails"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "ownership")
            Core.<*> (o Core..:? "policyCompliant")
            Core.<*> (o Core..:? "policyName")
            Core.<*> ( o Core..:? "powerManagementEvents"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "previousDeviceNames"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "securityPosture")
            Core.<*> (o Core..:? "softwareInfo")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "systemProperties")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "userName")
      )

instance Core.ToJSON Device where
  toJSON Device {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiLevel" Core..=) Core.<$> apiLevel,
            ("applicationReports" Core..=)
              Core.<$> applicationReports,
            ("appliedPasswordPolicies" Core..=)
              Core.<$> appliedPasswordPolicies,
            ("appliedPolicyName" Core..=)
              Core.<$> appliedPolicyName,
            ("appliedPolicyVersion" Core..=) Core.. Core.AsText
              Core.<$> appliedPolicyVersion,
            ("appliedState" Core..=) Core.<$> appliedState,
            ("commonCriteriaModeInfo" Core..=)
              Core.<$> commonCriteriaModeInfo,
            ("deviceSettings" Core..=) Core.<$> deviceSettings,
            ("disabledReason" Core..=) Core.<$> disabledReason,
            ("displays" Core..=) Core.<$> displays,
            ("enrollmentTime" Core..=) Core.<$> enrollmentTime,
            ("enrollmentTokenData" Core..=)
              Core.<$> enrollmentTokenData,
            ("enrollmentTokenName" Core..=)
              Core.<$> enrollmentTokenName,
            ("hardwareInfo" Core..=) Core.<$> hardwareInfo,
            ("hardwareStatusSamples" Core..=)
              Core.<$> hardwareStatusSamples,
            ("lastPolicyComplianceReportTime" Core..=)
              Core.<$> lastPolicyComplianceReportTime,
            ("lastPolicySyncTime" Core..=)
              Core.<$> lastPolicySyncTime,
            ("lastStatusReportTime" Core..=)
              Core.<$> lastStatusReportTime,
            ("managementMode" Core..=) Core.<$> managementMode,
            ("memoryEvents" Core..=) Core.<$> memoryEvents,
            ("memoryInfo" Core..=) Core.<$> memoryInfo,
            ("name" Core..=) Core.<$> name,
            ("networkInfo" Core..=) Core.<$> networkInfo,
            ("nonComplianceDetails" Core..=)
              Core.<$> nonComplianceDetails,
            ("ownership" Core..=) Core.<$> ownership,
            ("policyCompliant" Core..=) Core.<$> policyCompliant,
            ("policyName" Core..=) Core.<$> policyName,
            ("powerManagementEvents" Core..=)
              Core.<$> powerManagementEvents,
            ("previousDeviceNames" Core..=)
              Core.<$> previousDeviceNames,
            ("securityPosture" Core..=) Core.<$> securityPosture,
            ("softwareInfo" Core..=) Core.<$> softwareInfo,
            ("state" Core..=) Core.<$> state,
            ("systemProperties" Core..=)
              Core.<$> systemProperties,
            ("user" Core..=) Core.<$> user,
            ("userName" Core..=) Core.<$> userName
          ]
      )

-- | Map of selected system properties name and value related to the device. This information is only available if systemPropertiesEnabled is true in the device\'s policy.
--
-- /See:/ 'newDevice_SystemProperties' smart constructor.
newtype Device_SystemProperties = Device_SystemProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device_SystemProperties' with the minimum fields required to make a request.
newDevice_SystemProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Device_SystemProperties
newDevice_SystemProperties addtional =
  Device_SystemProperties {addtional = addtional}

instance Core.FromJSON Device_SystemProperties where
  parseJSON =
    Core.withObject
      "Device_SystemProperties"
      ( \o ->
          Device_SystemProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Device_SystemProperties where
  toJSON Device_SystemProperties {..} =
    Core.toJSON addtional

-- | Information about security related device settings on device.
--
-- /See:/ 'newDeviceSettings' smart constructor.
data DeviceSettings = DeviceSettings
  { -- | Whether ADB (https:\/\/developer.android.com\/studio\/command-line\/adb.html) is enabled on the device.
    adbEnabled :: (Core.Maybe Core.Bool),
    -- | Whether developer mode is enabled on the device.
    developmentSettingsEnabled :: (Core.Maybe Core.Bool),
    -- | Encryption status from DevicePolicyManager.
    encryptionStatus :: (Core.Maybe DeviceSettings_EncryptionStatus),
    -- | Whether the device is secured with PIN\/password.
    isDeviceSecure :: (Core.Maybe Core.Bool),
    -- | Whether the storage encryption is enabled.
    isEncrypted :: (Core.Maybe Core.Bool),
    -- | Whether installing apps from unknown sources is enabled.
    unknownSourcesEnabled :: (Core.Maybe Core.Bool),
    -- | Whether Google Play Protect verification (https:\/\/support.google.com\/accounts\/answer\/2812853) is enforced on the device.
    verifyAppsEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceSettings' with the minimum fields required to make a request.
newDeviceSettings ::
  DeviceSettings
newDeviceSettings =
  DeviceSettings
    { adbEnabled = Core.Nothing,
      developmentSettingsEnabled = Core.Nothing,
      encryptionStatus = Core.Nothing,
      isDeviceSecure = Core.Nothing,
      isEncrypted = Core.Nothing,
      unknownSourcesEnabled = Core.Nothing,
      verifyAppsEnabled = Core.Nothing
    }

instance Core.FromJSON DeviceSettings where
  parseJSON =
    Core.withObject
      "DeviceSettings"
      ( \o ->
          DeviceSettings
            Core.<$> (o Core..:? "adbEnabled")
            Core.<*> (o Core..:? "developmentSettingsEnabled")
            Core.<*> (o Core..:? "encryptionStatus")
            Core.<*> (o Core..:? "isDeviceSecure")
            Core.<*> (o Core..:? "isEncrypted")
            Core.<*> (o Core..:? "unknownSourcesEnabled")
            Core.<*> (o Core..:? "verifyAppsEnabled")
      )

instance Core.ToJSON DeviceSettings where
  toJSON DeviceSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("adbEnabled" Core..=) Core.<$> adbEnabled,
            ("developmentSettingsEnabled" Core..=)
              Core.<$> developmentSettingsEnabled,
            ("encryptionStatus" Core..=)
              Core.<$> encryptionStatus,
            ("isDeviceSecure" Core..=) Core.<$> isDeviceSecure,
            ("isEncrypted" Core..=) Core.<$> isEncrypted,
            ("unknownSourcesEnabled" Core..=)
              Core.<$> unknownSourcesEnabled,
            ("verifyAppsEnabled" Core..=)
              Core.<$> verifyAppsEnabled
          ]
      )

-- | Device display information.
--
-- /See:/ 'newDisplay' smart constructor.
data Display = Display
  { -- | Display density expressed as dots-per-inch.
    density :: (Core.Maybe Core.Int32),
    -- | Unique display id.
    displayId :: (Core.Maybe Core.Int32),
    -- | Display height in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Name of the display.
    name :: (Core.Maybe Core.Text),
    -- | Refresh rate of the display in frames per second.
    refreshRate :: (Core.Maybe Core.Int32),
    -- | State of the display.
    state :: (Core.Maybe Display_State),
    -- | Display width in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Display' with the minimum fields required to make a request.
newDisplay ::
  Display
newDisplay =
  Display
    { density = Core.Nothing,
      displayId = Core.Nothing,
      height = Core.Nothing,
      name = Core.Nothing,
      refreshRate = Core.Nothing,
      state = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Display where
  parseJSON =
    Core.withObject
      "Display"
      ( \o ->
          Display
            Core.<$> (o Core..:? "density")
            Core.<*> (o Core..:? "displayId")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "refreshRate")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Display where
  toJSON Display {..} =
    Core.object
      ( Core.catMaybes
          [ ("density" Core..=) Core.<$> density,
            ("displayId" Core..=) Core.<$> displayId,
            ("height" Core..=) Core.<$> height,
            ("name" Core..=) Core.<$> name,
            ("refreshRate" Core..=) Core.<$> refreshRate,
            ("state" Core..=) Core.<$> state,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | An enrollment token.
--
-- /See:/ 'newEnrollmentToken' smart constructor.
data EnrollmentToken = EnrollmentToken
  { -- | Optional, arbitrary data associated with the enrollment token. This could contain, for example, the ID of an org unit the device is assigned to after enrollment. After a device enrolls with the token, this data will be exposed in the enrollment/token/data field of the Device resource. The data must be 1024 characters or less; otherwise, the creation request will fail.
    additionalData :: (Core.Maybe Core.Text),
    -- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
    allowPersonalUsage :: (Core.Maybe EnrollmentToken_AllowPersonalUsage),
    -- | The length of time the enrollment token is valid, ranging from 1 minute to 90 days. If not specified, the default duration is 1 hour.
    duration :: (Core.Maybe Core.GDuration),
    -- | The expiration time of the token. This is a read-only field generated by the server.
    expirationTimestamp :: (Core.Maybe Core.DateTime'),
    -- | The name of the enrollment token, which is generated by the server during creation, in the form enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}.
    name :: (Core.Maybe Core.Text),
    -- | Whether the enrollment token is for one time use only. If the flag is set to true, only one device can use it for registration.
    oneTimeOnly :: (Core.Maybe Core.Bool),
    -- | The name of the policy initially applied to the enrolled device, in the form enterprises\/{enterpriseId}\/policies\/{policyId}. If not specified, the policy/name for the device’s user is applied. If user/name is also not specified, enterprises\/{enterpriseId}\/policies\/default is applied by default. When updating this field, you can specify only the policyId as long as the policyId doesn’t contain any slashes. The rest of the policy name will be inferred.
    policyName :: (Core.Maybe Core.Text),
    -- | A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON.
    qrCode :: (Core.Maybe Core.Text),
    -- | The user associated with this enrollment token. If it\'s specified when the enrollment token is created and the user does not exist, the user will be created. This field must not contain personally identifiable information. Only the account_identifier field needs to be set.
    user :: (Core.Maybe User),
    -- | The token value that\'s passed to the device and authorizes the device to enroll. This is a read-only field generated by the server.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnrollmentToken' with the minimum fields required to make a request.
newEnrollmentToken ::
  EnrollmentToken
newEnrollmentToken =
  EnrollmentToken
    { additionalData = Core.Nothing,
      allowPersonalUsage = Core.Nothing,
      duration = Core.Nothing,
      expirationTimestamp = Core.Nothing,
      name = Core.Nothing,
      oneTimeOnly = Core.Nothing,
      policyName = Core.Nothing,
      qrCode = Core.Nothing,
      user = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON EnrollmentToken where
  parseJSON =
    Core.withObject
      "EnrollmentToken"
      ( \o ->
          EnrollmentToken
            Core.<$> (o Core..:? "additionalData")
            Core.<*> (o Core..:? "allowPersonalUsage")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "expirationTimestamp")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "oneTimeOnly")
            Core.<*> (o Core..:? "policyName")
            Core.<*> (o Core..:? "qrCode")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EnrollmentToken where
  toJSON EnrollmentToken {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalData" Core..=) Core.<$> additionalData,
            ("allowPersonalUsage" Core..=)
              Core.<$> allowPersonalUsage,
            ("duration" Core..=) Core.<$> duration,
            ("expirationTimestamp" Core..=)
              Core.<$> expirationTimestamp,
            ("name" Core..=) Core.<$> name,
            ("oneTimeOnly" Core..=) Core.<$> oneTimeOnly,
            ("policyName" Core..=) Core.<$> policyName,
            ("qrCode" Core..=) Core.<$> qrCode,
            ("user" Core..=) Core.<$> user,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The configuration applied to an enterprise.
--
-- /See:/ 'newEnterprise' smart constructor.
data Enterprise = Enterprise
  { -- | Deprecated and unused.
    appAutoApprovalEnabled :: (Core.Maybe Core.Bool),
    -- | The enterprise contact info of an EMM-managed enterprise.
    contactInfo :: (Core.Maybe ContactInfo),
    -- | The types of Google Pub\/Sub notifications enabled for the enterprise.
    enabledNotificationTypes :: (Core.Maybe [Enterprise_EnabledNotificationTypesItem]),
    -- | The name of the enterprise displayed to users.
    enterpriseDisplayName :: (Core.Maybe Core.Text),
    -- | An image displayed as a logo during device provisioning. Supported types are: image\/bmp, image\/gif, image\/x-ico, image\/jpeg, image\/png, image\/webp, image\/vnd.wap.wbmp, image\/x-adobe-dng.
    logo :: (Core.Maybe ExternalData),
    -- | The name of the enterprise which is generated by the server during creation, in the form enterprises\/{enterpriseId}.
    name :: (Core.Maybe Core.Text),
    -- | A color in RGB format that indicates the predominant color to display in the device management app UI. The color components are stored as follows: (red \<\< 16) | (green \<\< 8) | blue, where the value of each component is between 0 and 255, inclusive.
    primaryColor :: (Core.Maybe Core.Int32),
    -- | The topic that Cloud Pub\/Sub notifications are published to, in the form projects\/{project}\/topics\/{topic}. This field is only required if Pub\/Sub notifications are enabled.
    pubsubTopic :: (Core.Maybe Core.Text),
    -- | Sign-in details of the enterprise.
    signinDetails :: (Core.Maybe [SigninDetail]),
    -- | Terms and conditions that must be accepted when provisioning a device for this enterprise. A page of terms is generated for each value in this list.
    termsAndConditions :: (Core.Maybe [TermsAndConditions])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Enterprise' with the minimum fields required to make a request.
newEnterprise ::
  Enterprise
newEnterprise =
  Enterprise
    { appAutoApprovalEnabled = Core.Nothing,
      contactInfo = Core.Nothing,
      enabledNotificationTypes = Core.Nothing,
      enterpriseDisplayName = Core.Nothing,
      logo = Core.Nothing,
      name = Core.Nothing,
      primaryColor = Core.Nothing,
      pubsubTopic = Core.Nothing,
      signinDetails = Core.Nothing,
      termsAndConditions = Core.Nothing
    }

instance Core.FromJSON Enterprise where
  parseJSON =
    Core.withObject
      "Enterprise"
      ( \o ->
          Enterprise
            Core.<$> (o Core..:? "appAutoApprovalEnabled")
            Core.<*> (o Core..:? "contactInfo")
            Core.<*> ( o Core..:? "enabledNotificationTypes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "enterpriseDisplayName")
            Core.<*> (o Core..:? "logo")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "primaryColor")
            Core.<*> (o Core..:? "pubsubTopic")
            Core.<*> (o Core..:? "signinDetails" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "termsAndConditions"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON Enterprise where
  toJSON Enterprise {..} =
    Core.object
      ( Core.catMaybes
          [ ("appAutoApprovalEnabled" Core..=)
              Core.<$> appAutoApprovalEnabled,
            ("contactInfo" Core..=) Core.<$> contactInfo,
            ("enabledNotificationTypes" Core..=)
              Core.<$> enabledNotificationTypes,
            ("enterpriseDisplayName" Core..=)
              Core.<$> enterpriseDisplayName,
            ("logo" Core..=) Core.<$> logo,
            ("name" Core..=) Core.<$> name,
            ("primaryColor" Core..=) Core.<$> primaryColor,
            ("pubsubTopic" Core..=) Core.<$> pubsubTopic,
            ("signinDetails" Core..=) Core.<$> signinDetails,
            ("termsAndConditions" Core..=)
              Core.<$> termsAndConditions
          ]
      )

-- | Configuration to enable an app as an extension app, with the capability of interacting with Android Device Policy offline.
--
-- /See:/ 'newExtensionConfig' smart constructor.
data ExtensionConfig = ExtensionConfig
  { -- | Fully qualified class name of the receiver service class for Android Device Policy to notify the extension app of any local command status updates.
    notificationReceiver :: (Core.Maybe Core.Text),
    -- | Hex-encoded SHA256 hash of the signing certificate of the extension app. Only hexadecimal string representations of 64 characters are valid.If not specified, the signature for the corresponding package name is obtained from the Play Store instead.If this list is empty, the signature of the extension app on the device must match the signature obtained from the Play Store for the app to be able to communicate with Android Device Policy.If this list is not empty, the signature of the extension app on the device must match one of the entries in this list for the app to be able to communicate with Android Device Policy.In production use cases, it is recommended to leave this empty.
    signingKeyFingerprintsSha256 :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExtensionConfig' with the minimum fields required to make a request.
newExtensionConfig ::
  ExtensionConfig
newExtensionConfig =
  ExtensionConfig
    { notificationReceiver = Core.Nothing,
      signingKeyFingerprintsSha256 = Core.Nothing
    }

instance Core.FromJSON ExtensionConfig where
  parseJSON =
    Core.withObject
      "ExtensionConfig"
      ( \o ->
          ExtensionConfig
            Core.<$> (o Core..:? "notificationReceiver")
            Core.<*> ( o Core..:? "signingKeyFingerprintsSha256"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ExtensionConfig where
  toJSON ExtensionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("notificationReceiver" Core..=)
              Core.<$> notificationReceiver,
            ("signingKeyFingerprintsSha256" Core..=)
              Core.<$> signingKeyFingerprintsSha256
          ]
      )

-- | Data hosted at an external location. The data is to be downloaded by Android Device Policy and verified against the hash.
--
-- /See:/ 'newExternalData' smart constructor.
data ExternalData = ExternalData
  { -- | The base-64 encoded SHA-256 hash of the content hosted at url. If the content doesn\'t match this hash, Android Device Policy won\'t use the data.
    sha256Hash :: (Core.Maybe Core.Text),
    -- | The absolute URL to the data, which must use either the http or https scheme. Android Device Policy doesn\'t provide any credentials in the GET request, so the URL must be publicly accessible. Including a long, random component in the URL may be used to prevent attackers from discovering the URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalData' with the minimum fields required to make a request.
newExternalData ::
  ExternalData
newExternalData = ExternalData {sha256Hash = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON ExternalData where
  parseJSON =
    Core.withObject
      "ExternalData"
      ( \o ->
          ExternalData
            Core.<$> (o Core..:? "sha256Hash")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ExternalData where
  toJSON ExternalData {..} =
    Core.object
      ( Core.catMaybes
          [ ("sha256Hash" Core..=) Core.<$> sha256Hash,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A system freeze period. When a device’s clock is within the freeze period, all incoming system updates (including security patches) are blocked and won’t be installed. When a device is outside the freeze period, normal update behavior applies. Leap years are ignored in freeze period calculations, in particular: * If Feb. 29th is set as the start or end date of a freeze period, the freeze period will start or end on Feb. 28th instead. * When a device’s system clock reads Feb. 29th, it’s treated as Feb. 28th. * When calculating the number of days in a freeze period or the time between two freeze periods, Feb. 29th is ignored and not counted as a day.
--
-- /See:/ 'newFreezePeriod' smart constructor.
data FreezePeriod = FreezePeriod
  { -- | The end date (inclusive) of the freeze period. Must be no later than 90 days from the start date. If the end date is earlier than the start date, the freeze period is considered wrapping year-end. Note: year must not be set. For example, {\"month\": 1,\"date\": 30}.
    endDate :: (Core.Maybe Date),
    -- | The start date (inclusive) of the freeze period. Note: year must not be set. For example, {\"month\": 1,\"date\": 30}.
    startDate :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreezePeriod' with the minimum fields required to make a request.
newFreezePeriod ::
  FreezePeriod
newFreezePeriod =
  FreezePeriod {endDate = Core.Nothing, startDate = Core.Nothing}

instance Core.FromJSON FreezePeriod where
  parseJSON =
    Core.withObject
      "FreezePeriod"
      ( \o ->
          FreezePeriod
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON FreezePeriod where
  toJSON FreezePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | Information about device hardware. The fields related to temperature thresholds are only available if hardwareStatusEnabled is true in the device\'s policy.
--
-- /See:/ 'newHardwareInfo' smart constructor.
data HardwareInfo = HardwareInfo
  { -- | Battery shutdown temperature thresholds in Celsius for each battery on the device.
    batteryShutdownTemperatures :: (Core.Maybe [Core.Double]),
    -- | Battery throttling temperature thresholds in Celsius for each battery on the device.
    batteryThrottlingTemperatures :: (Core.Maybe [Core.Double]),
    -- | Brand of the device. For example, Google.
    brand :: (Core.Maybe Core.Text),
    -- | CPU shutdown temperature thresholds in Celsius for each CPU on the device.
    cpuShutdownTemperatures :: (Core.Maybe [Core.Double]),
    -- | CPU throttling temperature thresholds in Celsius for each CPU on the device.
    cpuThrottlingTemperatures :: (Core.Maybe [Core.Double]),
    -- | Baseband version. For example, MDM9625_104662.22.05.34p.
    deviceBasebandVersion :: (Core.Maybe Core.Text),
    -- | Output only. ID that uniquely identifies a personally-owned device in a particular organization. On the same physical device when enrolled with the same organization, this ID persists across setups and even factory resets. This ID is available on personally-owned devices with a work profile on devices running Android 12 and above.
    enterpriseSpecificId :: (Core.Maybe Core.Text),
    -- | GPU shutdown temperature thresholds in Celsius for each GPU on the device.
    gpuShutdownTemperatures :: (Core.Maybe [Core.Double]),
    -- | GPU throttling temperature thresholds in Celsius for each GPU on the device.
    gpuThrottlingTemperatures :: (Core.Maybe [Core.Double]),
    -- | Name of the hardware. For example, Angler.
    hardware :: (Core.Maybe Core.Text),
    -- | Manufacturer. For example, Motorola.
    manufacturer :: (Core.Maybe Core.Text),
    -- | The model of the device. For example, Asus Nexus 7.
    model :: (Core.Maybe Core.Text),
    -- | The device serial number.
    serialNumber :: (Core.Maybe Core.Text),
    -- | Device skin shutdown temperature thresholds in Celsius.
    skinShutdownTemperatures :: (Core.Maybe [Core.Double]),
    -- | Device skin throttling temperature thresholds in Celsius.
    skinThrottlingTemperatures :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HardwareInfo' with the minimum fields required to make a request.
newHardwareInfo ::
  HardwareInfo
newHardwareInfo =
  HardwareInfo
    { batteryShutdownTemperatures = Core.Nothing,
      batteryThrottlingTemperatures = Core.Nothing,
      brand = Core.Nothing,
      cpuShutdownTemperatures = Core.Nothing,
      cpuThrottlingTemperatures = Core.Nothing,
      deviceBasebandVersion = Core.Nothing,
      enterpriseSpecificId = Core.Nothing,
      gpuShutdownTemperatures = Core.Nothing,
      gpuThrottlingTemperatures = Core.Nothing,
      hardware = Core.Nothing,
      manufacturer = Core.Nothing,
      model = Core.Nothing,
      serialNumber = Core.Nothing,
      skinShutdownTemperatures = Core.Nothing,
      skinThrottlingTemperatures = Core.Nothing
    }

instance Core.FromJSON HardwareInfo where
  parseJSON =
    Core.withObject
      "HardwareInfo"
      ( \o ->
          HardwareInfo
            Core.<$> ( o Core..:? "batteryShutdownTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "batteryThrottlingTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "brand")
            Core.<*> ( o Core..:? "cpuShutdownTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "cpuThrottlingTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "deviceBasebandVersion")
            Core.<*> (o Core..:? "enterpriseSpecificId")
            Core.<*> ( o Core..:? "gpuShutdownTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "gpuThrottlingTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "hardware")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> ( o Core..:? "skinShutdownTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "skinThrottlingTemperatures"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON HardwareInfo where
  toJSON HardwareInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("batteryShutdownTemperatures" Core..=)
              Core.<$> batteryShutdownTemperatures,
            ("batteryThrottlingTemperatures" Core..=)
              Core.<$> batteryThrottlingTemperatures,
            ("brand" Core..=) Core.<$> brand,
            ("cpuShutdownTemperatures" Core..=)
              Core.<$> cpuShutdownTemperatures,
            ("cpuThrottlingTemperatures" Core..=)
              Core.<$> cpuThrottlingTemperatures,
            ("deviceBasebandVersion" Core..=)
              Core.<$> deviceBasebandVersion,
            ("enterpriseSpecificId" Core..=)
              Core.<$> enterpriseSpecificId,
            ("gpuShutdownTemperatures" Core..=)
              Core.<$> gpuShutdownTemperatures,
            ("gpuThrottlingTemperatures" Core..=)
              Core.<$> gpuThrottlingTemperatures,
            ("hardware" Core..=) Core.<$> hardware,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("model" Core..=) Core.<$> model,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("skinShutdownTemperatures" Core..=)
              Core.<$> skinShutdownTemperatures,
            ("skinThrottlingTemperatures" Core..=)
              Core.<$> skinThrottlingTemperatures
          ]
      )

-- | Hardware status. Temperatures may be compared to the temperature thresholds available in hardwareInfo to determine hardware health.
--
-- /See:/ 'newHardwareStatus' smart constructor.
data HardwareStatus = HardwareStatus
  { -- | Current battery temperatures in Celsius for each battery on the device.
    batteryTemperatures :: (Core.Maybe [Core.Double]),
    -- | Current CPU temperatures in Celsius for each CPU on the device.
    cpuTemperatures :: (Core.Maybe [Core.Double]),
    -- | CPU usages in percentage for each core available on the device. Usage is 0 for each unplugged core. Empty array implies that CPU usage is not supported in the system.
    cpuUsages :: (Core.Maybe [Core.Double]),
    -- | The time the measurements were taken.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Fan speeds in RPM for each fan on the device. Empty array means that there are no fans or fan speed is not supported on the system.
    fanSpeeds :: (Core.Maybe [Core.Double]),
    -- | Current GPU temperatures in Celsius for each GPU on the device.
    gpuTemperatures :: (Core.Maybe [Core.Double]),
    -- | Current device skin temperatures in Celsius.
    skinTemperatures :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HardwareStatus' with the minimum fields required to make a request.
newHardwareStatus ::
  HardwareStatus
newHardwareStatus =
  HardwareStatus
    { batteryTemperatures = Core.Nothing,
      cpuTemperatures = Core.Nothing,
      cpuUsages = Core.Nothing,
      createTime = Core.Nothing,
      fanSpeeds = Core.Nothing,
      gpuTemperatures = Core.Nothing,
      skinTemperatures = Core.Nothing
    }

instance Core.FromJSON HardwareStatus where
  parseJSON =
    Core.withObject
      "HardwareStatus"
      ( \o ->
          HardwareStatus
            Core.<$> ( o Core..:? "batteryTemperatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "cpuTemperatures" Core..!= Core.mempty)
            Core.<*> (o Core..:? "cpuUsages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "fanSpeeds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "gpuTemperatures" Core..!= Core.mempty)
            Core.<*> (o Core..:? "skinTemperatures" Core..!= Core.mempty)
      )

instance Core.ToJSON HardwareStatus where
  toJSON HardwareStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("batteryTemperatures" Core..=)
              Core.<$> batteryTemperatures,
            ("cpuTemperatures" Core..=) Core.<$> cpuTemperatures,
            ("cpuUsages" Core..=) Core.<$> cpuUsages,
            ("createTime" Core..=) Core.<$> createTime,
            ("fanSpeeds" Core..=) Core.<$> fanSpeeds,
            ("gpuTemperatures" Core..=) Core.<$> gpuTemperatures,
            ("skinTemperatures" Core..=)
              Core.<$> skinTemperatures
          ]
      )

-- | Response on issuing a command. This is currently empty as a placeholder.
--
-- /See:/ 'newIssueCommandResponse' smart constructor.
data IssueCommandResponse = IssueCommandResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IssueCommandResponse' with the minimum fields required to make a request.
newIssueCommandResponse ::
  IssueCommandResponse
newIssueCommandResponse = IssueCommandResponse

instance Core.FromJSON IssueCommandResponse where
  parseJSON =
    Core.withObject
      "IssueCommandResponse"
      (\o -> Core.pure IssueCommandResponse)

instance Core.ToJSON IssueCommandResponse where
  toJSON = Core.const Core.emptyObject

-- | Keyed app state reported by the app.
--
-- /See:/ 'newKeyedAppState' smart constructor.
data KeyedAppState = KeyedAppState
  { -- | The creation time of the app state on the device.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Optionally, a machine-readable value to be read by the EMM. For example, setting values that the admin can choose to query against in the EMM console (e.g. “notify me if the battery_warning data \< 10”).
    data' :: (Core.Maybe Core.Text),
    -- | The key for the app state. Acts as a point of reference for what the app is providing state for. For example, when providing managed configuration feedback, this key could be the managed configuration key.
    key :: (Core.Maybe Core.Text),
    -- | The time the app state was most recently updated.
    lastUpdateTime :: (Core.Maybe Core.DateTime'),
    -- | Optionally, a free-form message string to explain the app state. If the state was triggered by a particular value (e.g. a managed configuration value), it should be included in the message.
    message :: (Core.Maybe Core.Text),
    -- | The severity of the app state.
    severity :: (Core.Maybe KeyedAppState_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyedAppState' with the minimum fields required to make a request.
newKeyedAppState ::
  KeyedAppState
newKeyedAppState =
  KeyedAppState
    { createTime = Core.Nothing,
      data' = Core.Nothing,
      key = Core.Nothing,
      lastUpdateTime = Core.Nothing,
      message = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON KeyedAppState where
  parseJSON =
    Core.withObject
      "KeyedAppState"
      ( \o ->
          KeyedAppState
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "lastUpdateTime")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON KeyedAppState where
  toJSON KeyedAppState {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("data" Core..=) Core.<$> data',
            ("key" Core..=) Core.<$> key,
            ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.
--
-- /See:/ 'newKioskCustomization' smart constructor.
data KioskCustomization = KioskCustomization
  { -- | Specifies whether the Settings app is allowed in kiosk mode.
    deviceSettings :: (Core.Maybe KioskCustomization_DeviceSettings),
    -- | Sets the behavior of a device in kiosk mode when a user presses and holds (long-presses) the Power button.
    powerButtonActions :: (Core.Maybe KioskCustomization_PowerButtonActions),
    -- | Specifies whether system info and notifications are disabled in kiosk mode.
    statusBar :: (Core.Maybe KioskCustomization_StatusBar),
    -- | Specifies whether system error dialogs for crashed or unresponsive apps are blocked in kiosk mode. When blocked, the system will force-stop the app as if the user chooses the \"close app\" option on the UI.
    systemErrorWarnings :: (Core.Maybe KioskCustomization_SystemErrorWarnings),
    -- | Specifies which navigation features are enabled (e.g. Home, Overview buttons) in kiosk mode.
    systemNavigation :: (Core.Maybe KioskCustomization_SystemNavigation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KioskCustomization' with the minimum fields required to make a request.
newKioskCustomization ::
  KioskCustomization
newKioskCustomization =
  KioskCustomization
    { deviceSettings = Core.Nothing,
      powerButtonActions = Core.Nothing,
      statusBar = Core.Nothing,
      systemErrorWarnings = Core.Nothing,
      systemNavigation = Core.Nothing
    }

instance Core.FromJSON KioskCustomization where
  parseJSON =
    Core.withObject
      "KioskCustomization"
      ( \o ->
          KioskCustomization
            Core.<$> (o Core..:? "deviceSettings")
            Core.<*> (o Core..:? "powerButtonActions")
            Core.<*> (o Core..:? "statusBar")
            Core.<*> (o Core..:? "systemErrorWarnings")
            Core.<*> (o Core..:? "systemNavigation")
      )

instance Core.ToJSON KioskCustomization where
  toJSON KioskCustomization {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceSettings" Core..=) Core.<$> deviceSettings,
            ("powerButtonActions" Core..=)
              Core.<$> powerButtonActions,
            ("statusBar" Core..=) Core.<$> statusBar,
            ("systemErrorWarnings" Core..=)
              Core.<$> systemErrorWarnings,
            ("systemNavigation" Core..=)
              Core.<$> systemNavigation
          ]
      )

-- | An action to launch an app.
--
-- /See:/ 'newLaunchAppAction' smart constructor.
newtype LaunchAppAction = LaunchAppAction
  { -- | Package name of app to be launched
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchAppAction' with the minimum fields required to make a request.
newLaunchAppAction ::
  LaunchAppAction
newLaunchAppAction = LaunchAppAction {packageName = Core.Nothing}

instance Core.FromJSON LaunchAppAction where
  parseJSON =
    Core.withObject
      "LaunchAppAction"
      ( \o ->
          LaunchAppAction Core.<$> (o Core..:? "packageName")
      )

instance Core.ToJSON LaunchAppAction where
  toJSON LaunchAppAction {..} =
    Core.object
      ( Core.catMaybes
          [("packageName" Core..=) Core.<$> packageName]
      )

-- | Response to a request to list devices for a given enterprise.
--
-- /See:/ 'newListDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse
  { -- | The list of devices.
    devices :: (Core.Maybe [Device]),
    -- | If there are more results, a token to retrieve next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
newListDevicesResponse ::
  ListDevicesResponse
newListDevicesResponse =
  ListDevicesResponse {devices = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDevicesResponse where
  parseJSON =
    Core.withObject
      "ListDevicesResponse"
      ( \o ->
          ListDevicesResponse
            Core.<$> (o Core..:? "devices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDevicesResponse where
  toJSON ListDevicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("devices" Core..=) Core.<$> devices,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response to a request to list enterprises.
--
-- /See:/ 'newListEnterprisesResponse' smart constructor.
data ListEnterprisesResponse = ListEnterprisesResponse
  { -- | The list of enterprises.
    enterprises :: (Core.Maybe [Enterprise]),
    -- | If there are more results, a token to retrieve next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEnterprisesResponse' with the minimum fields required to make a request.
newListEnterprisesResponse ::
  ListEnterprisesResponse
newListEnterprisesResponse =
  ListEnterprisesResponse
    { enterprises = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListEnterprisesResponse where
  parseJSON =
    Core.withObject
      "ListEnterprisesResponse"
      ( \o ->
          ListEnterprisesResponse
            Core.<$> (o Core..:? "enterprises" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListEnterprisesResponse where
  toJSON ListEnterprisesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("enterprises" Core..=) Core.<$> enterprises,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response to a request to list policies for a given enterprise.
--
-- /See:/ 'newListPoliciesResponse' smart constructor.
data ListPoliciesResponse = ListPoliciesResponse
  { -- | If there are more results, a token to retrieve next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of policies.
    policies :: (Core.Maybe [Policy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPoliciesResponse' with the minimum fields required to make a request.
newListPoliciesResponse ::
  ListPoliciesResponse
newListPoliciesResponse =
  ListPoliciesResponse {nextPageToken = Core.Nothing, policies = Core.Nothing}

instance Core.FromJSON ListPoliciesResponse where
  parseJSON =
    Core.withObject
      "ListPoliciesResponse"
      ( \o ->
          ListPoliciesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "policies" Core..!= Core.mempty)
      )

instance Core.ToJSON ListPoliciesResponse where
  toJSON ListPoliciesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("policies" Core..=) Core.<$> policies
          ]
      )

-- | Response to a request to list web apps for a given enterprise.
--
-- /See:/ 'newListWebAppsResponse' smart constructor.
data ListWebAppsResponse = ListWebAppsResponse
  { -- | If there are more results, a token to retrieve next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of web apps.
    webApps :: (Core.Maybe [WebApp])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWebAppsResponse' with the minimum fields required to make a request.
newListWebAppsResponse ::
  ListWebAppsResponse
newListWebAppsResponse =
  ListWebAppsResponse {nextPageToken = Core.Nothing, webApps = Core.Nothing}

instance Core.FromJSON ListWebAppsResponse where
  parseJSON =
    Core.withObject
      "ListWebAppsResponse"
      ( \o ->
          ListWebAppsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "webApps" Core..!= Core.mempty)
      )

instance Core.ToJSON ListWebAppsResponse where
  toJSON ListWebAppsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("webApps" Core..=) Core.<$> webApps
          ]
      )

-- | The managed configurations template for the app, saved from the managed configurations iframe.
--
-- /See:/ 'newManagedConfigurationTemplate' smart constructor.
data ManagedConfigurationTemplate = ManagedConfigurationTemplate
  { -- | Optional, a map containing configuration variables defined for the configuration.
    configurationVariables :: (Core.Maybe ManagedConfigurationTemplate_ConfigurationVariables),
    -- | The ID of the managed configurations template.
    templateId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationTemplate' with the minimum fields required to make a request.
newManagedConfigurationTemplate ::
  ManagedConfigurationTemplate
newManagedConfigurationTemplate =
  ManagedConfigurationTemplate
    { configurationVariables = Core.Nothing,
      templateId = Core.Nothing
    }

instance Core.FromJSON ManagedConfigurationTemplate where
  parseJSON =
    Core.withObject
      "ManagedConfigurationTemplate"
      ( \o ->
          ManagedConfigurationTemplate
            Core.<$> (o Core..:? "configurationVariables")
            Core.<*> (o Core..:? "templateId")
      )

instance Core.ToJSON ManagedConfigurationTemplate where
  toJSON ManagedConfigurationTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("configurationVariables" Core..=)
              Core.<$> configurationVariables,
            ("templateId" Core..=) Core.<$> templateId
          ]
      )

-- | Optional, a map containing configuration variables defined for the configuration.
--
-- /See:/ 'newManagedConfigurationTemplate_ConfigurationVariables' smart constructor.
newtype ManagedConfigurationTemplate_ConfigurationVariables = ManagedConfigurationTemplate_ConfigurationVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationTemplate_ConfigurationVariables' with the minimum fields required to make a request.
newManagedConfigurationTemplate_ConfigurationVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ManagedConfigurationTemplate_ConfigurationVariables
newManagedConfigurationTemplate_ConfigurationVariables addtional =
  ManagedConfigurationTemplate_ConfigurationVariables {addtional = addtional}

instance
  Core.FromJSON
    ManagedConfigurationTemplate_ConfigurationVariables
  where
  parseJSON =
    Core.withObject
      "ManagedConfigurationTemplate_ConfigurationVariables"
      ( \o ->
          ManagedConfigurationTemplate_ConfigurationVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ManagedConfigurationTemplate_ConfigurationVariables
  where
  toJSON
    ManagedConfigurationTemplate_ConfigurationVariables {..} =
      Core.toJSON addtional

-- | Managed property.
--
-- /See:/ 'newManagedProperty' smart constructor.
data ManagedProperty = ManagedProperty
  { -- | The default value of the property. BUNDLE_ARRAY properties don\'t have a default value.
    defaultValue :: (Core.Maybe Core.Value),
    -- | A longer description of the property, providing more detail of what it affects. Localized.
    description :: (Core.Maybe Core.Text),
    -- | For CHOICE or MULTISELECT properties, the list of possible entries.
    entries :: (Core.Maybe [ManagedPropertyEntry]),
    -- | The unique key that the app uses to identify the property, e.g. \"com.google.android.gm.fieldname\".
    key :: (Core.Maybe Core.Text),
    -- | For BUNDLE/ARRAY properties, the list of nested properties. A BUNDLE/ARRAY property is at most two levels deep.
    nestedProperties :: (Core.Maybe [ManagedProperty]),
    -- | The name of the property. Localized.
    title :: (Core.Maybe Core.Text),
    -- | The type of the property.
    type' :: (Core.Maybe ManagedProperty_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedProperty' with the minimum fields required to make a request.
newManagedProperty ::
  ManagedProperty
newManagedProperty =
  ManagedProperty
    { defaultValue = Core.Nothing,
      description = Core.Nothing,
      entries = Core.Nothing,
      key = Core.Nothing,
      nestedProperties = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ManagedProperty where
  parseJSON =
    Core.withObject
      "ManagedProperty"
      ( \o ->
          ManagedProperty
            Core.<$> (o Core..:? "defaultValue")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "nestedProperties" Core..!= Core.mempty)
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ManagedProperty where
  toJSON ManagedProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultValue" Core..=) Core.<$> defaultValue,
            ("description" Core..=) Core.<$> description,
            ("entries" Core..=) Core.<$> entries,
            ("key" Core..=) Core.<$> key,
            ("nestedProperties" Core..=)
              Core.<$> nestedProperties,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An entry of a managed property.
--
-- /See:/ 'newManagedPropertyEntry' smart constructor.
data ManagedPropertyEntry = ManagedPropertyEntry
  { -- | The human-readable name of the value. Localized.
    name :: (Core.Maybe Core.Text),
    -- | The machine-readable value of the entry, which should be used in the configuration. Not localized.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedPropertyEntry' with the minimum fields required to make a request.
newManagedPropertyEntry ::
  ManagedPropertyEntry
newManagedPropertyEntry =
  ManagedPropertyEntry {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ManagedPropertyEntry where
  parseJSON =
    Core.withObject
      "ManagedPropertyEntry"
      ( \o ->
          ManagedPropertyEntry
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ManagedPropertyEntry where
  toJSON ManagedPropertyEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An event related to memory and storage measurements.
--
-- /See:/ 'newMemoryEvent' smart constructor.
data MemoryEvent = MemoryEvent
  { -- | The number of free bytes in the medium, or for EXTERNAL/STORAGE/DETECTED, the total capacity in bytes of the storage medium.
    byteCount :: (Core.Maybe Core.Int64),
    -- | The creation time of the event.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Event type.
    eventType :: (Core.Maybe MemoryEvent_EventType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemoryEvent' with the minimum fields required to make a request.
newMemoryEvent ::
  MemoryEvent
newMemoryEvent =
  MemoryEvent
    { byteCount = Core.Nothing,
      createTime = Core.Nothing,
      eventType = Core.Nothing
    }

instance Core.FromJSON MemoryEvent where
  parseJSON =
    Core.withObject
      "MemoryEvent"
      ( \o ->
          MemoryEvent
            Core.<$> (o Core..:? "byteCount")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventType")
      )

instance Core.ToJSON MemoryEvent where
  toJSON MemoryEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteCount" Core..=) Core.. Core.AsText
              Core.<$> byteCount,
            ("createTime" Core..=) Core.<$> createTime,
            ("eventType" Core..=) Core.<$> eventType
          ]
      )

-- | Information about device memory and storage.
--
-- /See:/ 'newMemoryInfo' smart constructor.
data MemoryInfo = MemoryInfo
  { -- | Total internal storage on device in bytes.
    totalInternalStorage :: (Core.Maybe Core.Int64),
    -- | Total RAM on device in bytes.
    totalRam :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemoryInfo' with the minimum fields required to make a request.
newMemoryInfo ::
  MemoryInfo
newMemoryInfo =
  MemoryInfo {totalInternalStorage = Core.Nothing, totalRam = Core.Nothing}

instance Core.FromJSON MemoryInfo where
  parseJSON =
    Core.withObject
      "MemoryInfo"
      ( \o ->
          MemoryInfo
            Core.<$> (o Core..:? "totalInternalStorage")
            Core.<*> (o Core..:? "totalRam")
      )

instance Core.ToJSON MemoryInfo where
  toJSON MemoryInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalInternalStorage" Core..=) Core.. Core.AsText
              Core.<$> totalInternalStorage,
            ("totalRam" Core..=) Core.. Core.AsText
              Core.<$> totalRam
          ]
      )

-- | Device network info.
--
-- /See:/ 'newNetworkInfo' smart constructor.
data NetworkInfo = NetworkInfo
  { -- | IMEI number of the GSM device. For example, A1000031212.
    imei :: (Core.Maybe Core.Text),
    -- | MEID number of the CDMA device. For example, A00000292788E1.
    meid :: (Core.Maybe Core.Text),
    -- | Alphabetic name of current registered operator. For example, Vodafone.
    networkOperatorName :: (Core.Maybe Core.Text),
    -- | Provides telephony information associated with each SIM card on the device. Only supported on fully managed devices starting from Android API level 23.
    telephonyInfos :: (Core.Maybe [TelephonyInfo]),
    -- | Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.
    wifiMacAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkInfo' with the minimum fields required to make a request.
newNetworkInfo ::
  NetworkInfo
newNetworkInfo =
  NetworkInfo
    { imei = Core.Nothing,
      meid = Core.Nothing,
      networkOperatorName = Core.Nothing,
      telephonyInfos = Core.Nothing,
      wifiMacAddress = Core.Nothing
    }

instance Core.FromJSON NetworkInfo where
  parseJSON =
    Core.withObject
      "NetworkInfo"
      ( \o ->
          NetworkInfo
            Core.<$> (o Core..:? "imei")
            Core.<*> (o Core..:? "meid")
            Core.<*> (o Core..:? "networkOperatorName")
            Core.<*> (o Core..:? "telephonyInfos" Core..!= Core.mempty)
            Core.<*> (o Core..:? "wifiMacAddress")
      )

instance Core.ToJSON NetworkInfo where
  toJSON NetworkInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("imei" Core..=) Core.<$> imei,
            ("meid" Core..=) Core.<$> meid,
            ("networkOperatorName" Core..=)
              Core.<$> networkOperatorName,
            ("telephonyInfos" Core..=) Core.<$> telephonyInfos,
            ("wifiMacAddress" Core..=) Core.<$> wifiMacAddress
          ]
      )

-- | Provides detail about non-compliance with a policy setting.
--
-- /See:/ 'newNonComplianceDetail' smart constructor.
data NonComplianceDetail = NonComplianceDetail
  { -- | If the policy setting could not be applied, the current value of the setting on the device.
    currentValue :: (Core.Maybe Core.Value),
    -- | For settings with nested fields, if a particular nested field is out of compliance, this specifies the full path to the offending field. The path is formatted in the same way the policy JSON field would be referenced in JavaScript, that is: 1) For object-typed fields, the field name is followed by a dot then by a subfield name. 2) For array-typed fields, the field name is followed by the array index enclosed in brackets. For example, to indicate a problem with the url field in the externalData field in the 3rd application, the path would be applications[2].externalData.url
    fieldPath :: (Core.Maybe Core.Text),
    -- | If package/name is set and the non-compliance reason is APP/NOT/INSTALLED or APP/NOT_UPDATED, the detailed reason the app can\'t be installed or updated.
    installationFailureReason :: (Core.Maybe NonComplianceDetail_InstallationFailureReason),
    -- | The reason the device is not in compliance with the setting.
    nonComplianceReason :: (Core.Maybe NonComplianceDetail_NonComplianceReason),
    -- | The package name indicating which app is out of compliance, if applicable.
    packageName :: (Core.Maybe Core.Text),
    -- | The name of the policy setting. This is the JSON field name of a top-level Policy field.
    settingName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonComplianceDetail' with the minimum fields required to make a request.
newNonComplianceDetail ::
  NonComplianceDetail
newNonComplianceDetail =
  NonComplianceDetail
    { currentValue = Core.Nothing,
      fieldPath = Core.Nothing,
      installationFailureReason = Core.Nothing,
      nonComplianceReason = Core.Nothing,
      packageName = Core.Nothing,
      settingName = Core.Nothing
    }

instance Core.FromJSON NonComplianceDetail where
  parseJSON =
    Core.withObject
      "NonComplianceDetail"
      ( \o ->
          NonComplianceDetail
            Core.<$> (o Core..:? "currentValue")
            Core.<*> (o Core..:? "fieldPath")
            Core.<*> (o Core..:? "installationFailureReason")
            Core.<*> (o Core..:? "nonComplianceReason")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "settingName")
      )

instance Core.ToJSON NonComplianceDetail where
  toJSON NonComplianceDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentValue" Core..=) Core.<$> currentValue,
            ("fieldPath" Core..=) Core.<$> fieldPath,
            ("installationFailureReason" Core..=)
              Core.<$> installationFailureReason,
            ("nonComplianceReason" Core..=)
              Core.<$> nonComplianceReason,
            ("packageName" Core..=) Core.<$> packageName,
            ("settingName" Core..=) Core.<$> settingName
          ]
      )

-- | A compliance rule condition which is satisfied if there exists any matching NonComplianceDetail for the device. A NonComplianceDetail matches a NonComplianceDetailCondition if all the fields which are set within the NonComplianceDetailCondition match the corresponding NonComplianceDetail fields.
--
-- /See:/ 'newNonComplianceDetailCondition' smart constructor.
data NonComplianceDetailCondition = NonComplianceDetailCondition
  { -- | The reason the device is not in compliance with the setting. If not set, then this condition matches any reason.
    nonComplianceReason :: (Core.Maybe NonComplianceDetailCondition_NonComplianceReason),
    -- | The package name of the app that\'s out of compliance. If not set, then this condition matches any package name.
    packageName :: (Core.Maybe Core.Text),
    -- | The name of the policy setting. This is the JSON field name of a top-level Policy field. If not set, then this condition matches any setting name.
    settingName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonComplianceDetailCondition' with the minimum fields required to make a request.
newNonComplianceDetailCondition ::
  NonComplianceDetailCondition
newNonComplianceDetailCondition =
  NonComplianceDetailCondition
    { nonComplianceReason = Core.Nothing,
      packageName = Core.Nothing,
      settingName = Core.Nothing
    }

instance Core.FromJSON NonComplianceDetailCondition where
  parseJSON =
    Core.withObject
      "NonComplianceDetailCondition"
      ( \o ->
          NonComplianceDetailCondition
            Core.<$> (o Core..:? "nonComplianceReason")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "settingName")
      )

instance Core.ToJSON NonComplianceDetailCondition where
  toJSON NonComplianceDetailCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("nonComplianceReason" Core..=)
              Core.<$> nonComplianceReason,
            ("packageName" Core..=) Core.<$> packageName,
            ("settingName" Core..=) Core.<$> settingName
          ]
      )

-- | This feature is not generally available.
--
-- /See:/ 'newOncCertificateProvider' smart constructor.
data OncCertificateProvider = OncCertificateProvider
  { -- | This feature is not generally available.
    certificateReferences :: (Core.Maybe [Core.Text]),
    -- | This feature is not generally available.
    contentProviderEndpoint :: (Core.Maybe ContentProviderEndpoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OncCertificateProvider' with the minimum fields required to make a request.
newOncCertificateProvider ::
  OncCertificateProvider
newOncCertificateProvider =
  OncCertificateProvider
    { certificateReferences = Core.Nothing,
      contentProviderEndpoint = Core.Nothing
    }

instance Core.FromJSON OncCertificateProvider where
  parseJSON =
    Core.withObject
      "OncCertificateProvider"
      ( \o ->
          OncCertificateProvider
            Core.<$> ( o Core..:? "certificateReferences"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "contentProviderEndpoint")
      )

instance Core.ToJSON OncCertificateProvider where
  toJSON OncCertificateProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateReferences" Core..=)
              Core.<$> certificateReferences,
            ("contentProviderEndpoint" Core..=)
              Core.<$> contentProviderEndpoint
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations\/{unique_id}.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | A list of package names.
--
-- /See:/ 'newPackageNameList' smart constructor.
newtype PackageNameList = PackageNameList
  { -- | A list of package names.
    packageNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PackageNameList' with the minimum fields required to make a request.
newPackageNameList ::
  PackageNameList
newPackageNameList = PackageNameList {packageNames = Core.Nothing}

instance Core.FromJSON PackageNameList where
  parseJSON =
    Core.withObject
      "PackageNameList"
      ( \o ->
          PackageNameList
            Core.<$> (o Core..:? "packageNames" Core..!= Core.mempty)
      )

instance Core.ToJSON PackageNameList where
  toJSON PackageNameList {..} =
    Core.object
      ( Core.catMaybes
          [("packageNames" Core..=) Core.<$> packageNames]
      )

-- | Requirements for the password used to unlock a device.
--
-- /See:/ 'newPasswordRequirements' smart constructor.
data PasswordRequirements = PasswordRequirements
  { -- | Number of incorrect device-unlock passwords that can be entered before a device is wiped. A value of 0 means there is no restriction.
    maximumFailedPasswordsForWipe :: (Core.Maybe Core.Int32),
    -- | Password expiration timeout.
    passwordExpirationTimeout :: (Core.Maybe Core.GDuration),
    -- | The length of the password history. After setting this field, the user won\'t be able to enter a new password that is the same as any password in the history. A value of 0 means there is no restriction.
    passwordHistoryLength :: (Core.Maybe Core.Int32),
    -- | The minimum allowed password length. A value of 0 means there is no restriction. Only enforced when password/quality is NUMERIC, NUMERIC/COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX.
    passwordMinimumLength :: (Core.Maybe Core.Int32),
    -- | Minimum number of letters required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumLetters :: (Core.Maybe Core.Int32),
    -- | Minimum number of lower case letters required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumLowerCase :: (Core.Maybe Core.Int32),
    -- | Minimum number of non-letter characters (numerical digits or symbols) required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumNonLetter :: (Core.Maybe Core.Int32),
    -- | Minimum number of numerical digits required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumNumeric :: (Core.Maybe Core.Int32),
    -- | Minimum number of symbols required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumSymbols :: (Core.Maybe Core.Int32),
    -- | Minimum number of upper case letters required in the password. Only enforced when password_quality is COMPLEX.
    passwordMinimumUpperCase :: (Core.Maybe Core.Int32),
    -- | The required password quality.
    passwordQuality :: (Core.Maybe PasswordRequirements_PasswordQuality),
    -- | The scope that the password requirement applies to.
    passwordScope :: (Core.Maybe PasswordRequirements_PasswordScope),
    -- | The length of time after a device or work profile is unlocked using a strong form of authentication (password, PIN, pattern) that it can be unlocked using any other authentication method (e.g. fingerprint, trust agents, face). After the specified time period elapses, only strong forms of authentication can be used to unlock the device or work profile.
    requirePasswordUnlock :: (Core.Maybe PasswordRequirements_RequirePasswordUnlock),
    -- | Controls whether a unified lock is allowed for the device and the work profile, on devices running Android 9 and above with a work profile. This has no effect on other devices. This can be set only if password/scope is set to SCOPE/PROFILE, the policy will be rejected otherwise. If user has not set a separate work lock and this field is set to REQUIRE/SEPARATE/WORK/LOCK, a NonComplianceDetail is reported with nonComplianceReason set to USER/ACTION.
    unifiedLockSettings :: (Core.Maybe PasswordRequirements_UnifiedLockSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PasswordRequirements' with the minimum fields required to make a request.
newPasswordRequirements ::
  PasswordRequirements
newPasswordRequirements =
  PasswordRequirements
    { maximumFailedPasswordsForWipe = Core.Nothing,
      passwordExpirationTimeout = Core.Nothing,
      passwordHistoryLength = Core.Nothing,
      passwordMinimumLength = Core.Nothing,
      passwordMinimumLetters = Core.Nothing,
      passwordMinimumLowerCase = Core.Nothing,
      passwordMinimumNonLetter = Core.Nothing,
      passwordMinimumNumeric = Core.Nothing,
      passwordMinimumSymbols = Core.Nothing,
      passwordMinimumUpperCase = Core.Nothing,
      passwordQuality = Core.Nothing,
      passwordScope = Core.Nothing,
      requirePasswordUnlock = Core.Nothing,
      unifiedLockSettings = Core.Nothing
    }

instance Core.FromJSON PasswordRequirements where
  parseJSON =
    Core.withObject
      "PasswordRequirements"
      ( \o ->
          PasswordRequirements
            Core.<$> (o Core..:? "maximumFailedPasswordsForWipe")
            Core.<*> (o Core..:? "passwordExpirationTimeout")
            Core.<*> (o Core..:? "passwordHistoryLength")
            Core.<*> (o Core..:? "passwordMinimumLength")
            Core.<*> (o Core..:? "passwordMinimumLetters")
            Core.<*> (o Core..:? "passwordMinimumLowerCase")
            Core.<*> (o Core..:? "passwordMinimumNonLetter")
            Core.<*> (o Core..:? "passwordMinimumNumeric")
            Core.<*> (o Core..:? "passwordMinimumSymbols")
            Core.<*> (o Core..:? "passwordMinimumUpperCase")
            Core.<*> (o Core..:? "passwordQuality")
            Core.<*> (o Core..:? "passwordScope")
            Core.<*> (o Core..:? "requirePasswordUnlock")
            Core.<*> (o Core..:? "unifiedLockSettings")
      )

instance Core.ToJSON PasswordRequirements where
  toJSON PasswordRequirements {..} =
    Core.object
      ( Core.catMaybes
          [ ("maximumFailedPasswordsForWipe" Core..=)
              Core.<$> maximumFailedPasswordsForWipe,
            ("passwordExpirationTimeout" Core..=)
              Core.<$> passwordExpirationTimeout,
            ("passwordHistoryLength" Core..=)
              Core.<$> passwordHistoryLength,
            ("passwordMinimumLength" Core..=)
              Core.<$> passwordMinimumLength,
            ("passwordMinimumLetters" Core..=)
              Core.<$> passwordMinimumLetters,
            ("passwordMinimumLowerCase" Core..=)
              Core.<$> passwordMinimumLowerCase,
            ("passwordMinimumNonLetter" Core..=)
              Core.<$> passwordMinimumNonLetter,
            ("passwordMinimumNumeric" Core..=)
              Core.<$> passwordMinimumNumeric,
            ("passwordMinimumSymbols" Core..=)
              Core.<$> passwordMinimumSymbols,
            ("passwordMinimumUpperCase" Core..=)
              Core.<$> passwordMinimumUpperCase,
            ("passwordQuality" Core..=) Core.<$> passwordQuality,
            ("passwordScope" Core..=) Core.<$> passwordScope,
            ("requirePasswordUnlock" Core..=)
              Core.<$> requirePasswordUnlock,
            ("unifiedLockSettings" Core..=)
              Core.<$> unifiedLockSettings
          ]
      )

-- | Configuration for an Android permission and its grant state.
--
-- /See:/ 'newPermissionGrant' smart constructor.
data PermissionGrant = PermissionGrant
  { -- | The Android permission or group, e.g. android.permission.READ/CALENDAR or android.permission/group.CALENDAR.
    permission :: (Core.Maybe Core.Text),
    -- | The policy for granting the permission.
    policy :: (Core.Maybe PermissionGrant_Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionGrant' with the minimum fields required to make a request.
newPermissionGrant ::
  PermissionGrant
newPermissionGrant =
  PermissionGrant {permission = Core.Nothing, policy = Core.Nothing}

instance Core.FromJSON PermissionGrant where
  parseJSON =
    Core.withObject
      "PermissionGrant"
      ( \o ->
          PermissionGrant
            Core.<$> (o Core..:? "permission")
            Core.<*> (o Core..:? "policy")
      )

instance Core.ToJSON PermissionGrant where
  toJSON PermissionGrant {..} =
    Core.object
      ( Core.catMaybes
          [ ("permission" Core..=) Core.<$> permission,
            ("policy" Core..=) Core.<$> policy
          ]
      )

-- | A default activity for handling intents that match a particular intent filter. Note: To set up a kiosk, use InstallType to KIOSK rather than use persistent preferred activities.
--
-- /See:/ 'newPersistentPreferredActivity' smart constructor.
data PersistentPreferredActivity = PersistentPreferredActivity
  { -- | The intent actions to match in the filter. If any actions are included in the filter, then an intent\'s action must be one of those values for it to match. If no actions are included, the intent action is ignored.
    actions :: (Core.Maybe [Core.Text]),
    -- | The intent categories to match in the filter. An intent includes the categories that it requires, all of which must be included in the filter in order to match. In other words, adding a category to the filter has no impact on matching unless that category is specified in the intent.
    categories :: (Core.Maybe [Core.Text]),
    -- | The activity that should be the default intent handler. This should be an Android component name, e.g. com.android.enterprise.app\/.MainActivity. Alternatively, the value may be the package name of an app, which causes Android Device Policy to choose an appropriate activity from the app to handle the intent.
    receiverActivity :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersistentPreferredActivity' with the minimum fields required to make a request.
newPersistentPreferredActivity ::
  PersistentPreferredActivity
newPersistentPreferredActivity =
  PersistentPreferredActivity
    { actions = Core.Nothing,
      categories = Core.Nothing,
      receiverActivity = Core.Nothing
    }

instance Core.FromJSON PersistentPreferredActivity where
  parseJSON =
    Core.withObject
      "PersistentPreferredActivity"
      ( \o ->
          PersistentPreferredActivity
            Core.<$> (o Core..:? "actions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "categories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "receiverActivity")
      )

instance Core.ToJSON PersistentPreferredActivity where
  toJSON PersistentPreferredActivity {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("categories" Core..=) Core.<$> categories,
            ("receiverActivity" Core..=)
              Core.<$> receiverActivity
          ]
      )

-- | Policies for apps in the personal profile of a company-owned device with a work profile.
--
-- /See:/ 'newPersonalApplicationPolicy' smart constructor.
data PersonalApplicationPolicy = PersonalApplicationPolicy
  { -- | The type of installation to perform.
    installType :: (Core.Maybe PersonalApplicationPolicy_InstallType),
    -- | The package name of the application.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersonalApplicationPolicy' with the minimum fields required to make a request.
newPersonalApplicationPolicy ::
  PersonalApplicationPolicy
newPersonalApplicationPolicy =
  PersonalApplicationPolicy
    { installType = Core.Nothing,
      packageName = Core.Nothing
    }

instance Core.FromJSON PersonalApplicationPolicy where
  parseJSON =
    Core.withObject
      "PersonalApplicationPolicy"
      ( \o ->
          PersonalApplicationPolicy
            Core.<$> (o Core..:? "installType")
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON PersonalApplicationPolicy where
  toJSON PersonalApplicationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("installType" Core..=) Core.<$> installType,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | Policies controlling personal usage on a company-owned device with a work profile.
--
-- /See:/ 'newPersonalUsagePolicies' smart constructor.
data PersonalUsagePolicies = PersonalUsagePolicies
  { -- | Account types that can\'t be managed by the user.
    accountTypesWithManagementDisabled :: (Core.Maybe [Core.Text]),
    -- | Whether camera is disabled.
    cameraDisabled :: (Core.Maybe Core.Bool),
    -- | Controls how long the work profile can stay off. The duration must be at least 3 days.
    maxDaysWithWorkOff :: (Core.Maybe Core.Int32),
    -- | Policy applied to applications in the personal profile.
    personalApplications :: (Core.Maybe [PersonalApplicationPolicy]),
    -- | Used together with personalApplications to control how apps in the personal profile are allowed or blocked.
    personalPlayStoreMode :: (Core.Maybe PersonalUsagePolicies_PersonalPlayStoreMode),
    -- | Whether screen capture is disabled.
    screenCaptureDisabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersonalUsagePolicies' with the minimum fields required to make a request.
newPersonalUsagePolicies ::
  PersonalUsagePolicies
newPersonalUsagePolicies =
  PersonalUsagePolicies
    { accountTypesWithManagementDisabled = Core.Nothing,
      cameraDisabled = Core.Nothing,
      maxDaysWithWorkOff = Core.Nothing,
      personalApplications = Core.Nothing,
      personalPlayStoreMode = Core.Nothing,
      screenCaptureDisabled = Core.Nothing
    }

instance Core.FromJSON PersonalUsagePolicies where
  parseJSON =
    Core.withObject
      "PersonalUsagePolicies"
      ( \o ->
          PersonalUsagePolicies
            Core.<$> ( o Core..:? "accountTypesWithManagementDisabled"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "cameraDisabled")
            Core.<*> (o Core..:? "maxDaysWithWorkOff")
            Core.<*> ( o Core..:? "personalApplications"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "personalPlayStoreMode")
            Core.<*> (o Core..:? "screenCaptureDisabled")
      )

instance Core.ToJSON PersonalUsagePolicies where
  toJSON PersonalUsagePolicies {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountTypesWithManagementDisabled" Core..=)
              Core.<$> accountTypesWithManagementDisabled,
            ("cameraDisabled" Core..=) Core.<$> cameraDisabled,
            ("maxDaysWithWorkOff" Core..=)
              Core.<$> maxDaysWithWorkOff,
            ("personalApplications" Core..=)
              Core.<$> personalApplications,
            ("personalPlayStoreMode" Core..=)
              Core.<$> personalPlayStoreMode,
            ("screenCaptureDisabled" Core..=)
              Core.<$> screenCaptureDisabled
          ]
      )

-- | A policy resource represents a group of settings that govern the behavior of a managed device and the apps installed on it.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Account types that can\'t be managed by the user.
    accountTypesWithManagementDisabled :: (Core.Maybe [Core.Text]),
    -- | Whether adding new users and profiles is disabled.
    addUserDisabled :: (Core.Maybe Core.Bool),
    -- | Whether adjusting the master volume is disabled. Also mutes the device.
    adjustVolumeDisabled :: (Core.Maybe Core.Bool),
    -- | Security policies set to secure values by default. To maintain the security posture of a device, we don\'t recommend overriding any of the default values.
    advancedSecurityOverrides :: (Core.Maybe AdvancedSecurityOverrides),
    -- | Configuration for an always-on VPN connection. Use with vpn/config/disabled to prevent modification of this setting.
    alwaysOnVpnPackage :: (Core.Maybe AlwaysOnVpnPackage),
    -- | The app tracks for Android Device Policy the device can access. The device receives the latest version among all accessible tracks. If no tracks are specified, then the device only uses the production track.
    androidDevicePolicyTracks :: (Core.Maybe [Policy_AndroidDevicePolicyTracksItem]),
    -- | Deprecated. Use autoUpdateMode instead.When autoUpdateMode is set to AUTO/UPDATE/POSTPONED or AUTO/UPDATE/HIGH_PRIORITY, this field has no effect.The app auto update policy, which controls when automatic app updates can be applied.
    appAutoUpdatePolicy :: (Core.Maybe Policy_AppAutoUpdatePolicy),
    -- | Policy applied to apps.
    applications :: (Core.Maybe [ApplicationPolicy]),
    -- | Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, then autoTimeRequired is ignored.
    autoDateAndTimeZone :: (Core.Maybe Policy_AutoDateAndTimeZone),
    -- | Whether auto time is required, which prevents the user from manually setting the date and time. If autoDateAndTimeZone is set, this field is ignored.
    autoTimeRequired :: (Core.Maybe Core.Bool),
    -- | Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled.
    blockApplicationsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether configuring bluetooth is disabled.
    bluetoothConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Whether bluetooth contact sharing is disabled.
    bluetoothContactSharingDisabled :: (Core.Maybe Core.Bool),
    -- | Whether bluetooth is disabled. Prefer this setting over bluetooth/config/disabled because bluetooth/config/disabled can be bypassed by the user.
    bluetoothDisabled :: (Core.Maybe Core.Bool),
    -- | Controls the use of the camera and whether the user has access to the camera access toggle.
    cameraAccess :: (Core.Maybe Policy_CameraAccess),
    -- | If camera/access is set to any value other than CAMERA/ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether cameras are disabled: If true, all cameras are disabled, otherwise they are available. For fully managed devices this field applies for all apps on the device. For work profiles, this field applies only to apps in the work profile, and the camera access of apps outside the work profile is unaffected.
    cameraDisabled :: (Core.Maybe Core.Bool),
    -- | Whether configuring cell broadcast is disabled.
    cellBroadcastsConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Rules for determining apps\' access to private keys. See ChoosePrivateKeyRule for details.
    choosePrivateKeyRules :: (Core.Maybe [ChoosePrivateKeyRule]),
    -- | Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Use policy enforcement rules instead.
    complianceRules :: (Core.Maybe [ComplianceRule]),
    -- | Whether creating windows besides app windows is disabled.
    createWindowsDisabled :: (Core.Maybe Core.Bool),
    -- | Whether configuring user credentials is disabled.
    credentialsConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Cross-profile policies applied on the device.
    crossProfilePolicies :: (Core.Maybe CrossProfilePolicies),
    -- | Whether roaming data services are disabled.
    dataRoamingDisabled :: (Core.Maybe Core.Bool),
    -- | Whether the user is allowed to enable debugging features.
    debuggingFeaturesAllowed :: (Core.Maybe Core.Bool),
    -- | The default permission policy for runtime permission requests.
    defaultPermissionPolicy :: (Core.Maybe Policy_DefaultPermissionPolicy),
    -- | The device owner information to be shown on the lock screen.
    deviceOwnerLockScreenInfo :: (Core.Maybe UserFacingMessage),
    -- | Whether encryption is enabled
    encryptionPolicy :: (Core.Maybe Policy_EncryptionPolicy),
    -- | Whether app verification is force-enabled.
    ensureVerifyAppsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether factory resetting from settings is disabled.
    factoryResetDisabled :: (Core.Maybe Core.Bool),
    -- | Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device won\'t provide factory reset protection.
    frpAdminEmails :: (Core.Maybe [Core.Text]),
    -- | Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled.
    funDisabled :: (Core.Maybe Core.Bool),
    -- | Whether user installation of apps is disabled.
    installAppsDisabled :: (Core.Maybe Core.Bool),
    -- | This field has no effect.
    installUnknownSourcesAllowed :: (Core.Maybe Core.Bool),
    -- | Whether the keyguard is disabled.
    keyguardDisabled :: (Core.Maybe Core.Bool),
    -- | Disabled keyguard customizations, such as widgets.
    keyguardDisabledFeatures :: (Core.Maybe [Policy_KeyguardDisabledFeaturesItem]),
    -- | Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that locks down the device to the apps installed via the applications setting. Apps appear on a single page in alphabetical order. Use kioskCustomization to further configure the kiosk device behavior.
    kioskCustomLauncherEnabled :: (Core.Maybe Core.Bool),
    -- | Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.
    kioskCustomization :: (Core.Maybe KioskCustomization),
    -- | The degree of location detection enabled.
    locationMode :: (Core.Maybe Policy_LocationMode),
    -- | A message displayed to the user in the device administators settings screen.
    longSupportMessage :: (Core.Maybe UserFacingMessage),
    -- | Maximum time in milliseconds for user activity until the device locks. A value of 0 means there is no restriction.
    maximumTimeToLock :: (Core.Maybe Core.Int64),
    -- | Controls the use of the microphone and whether the user has access to the microphone access toggle. This applies only on fully managed devices.
    microphoneAccess :: (Core.Maybe Policy_MicrophoneAccess),
    -- | The minimum allowed Android API level.
    minimumApiLevel :: (Core.Maybe Core.Int32),
    -- | Whether configuring mobile networks is disabled.
    mobileNetworksConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Whether adding or removing accounts is disabled.
    modifyAccountsDisabled :: (Core.Maybe Core.Bool),
    -- | Whether the user mounting physical external media is disabled.
    mountPhysicalMediaDisabled :: (Core.Maybe Core.Bool),
    -- | The name of the policy in the form enterprises\/{enterpriseId}\/policies\/{policyId}.
    name :: (Core.Maybe Core.Text),
    -- | Whether the network escape hatch is enabled. If a network connection can\'t be made at boot time, the escape hatch prompts the user to temporarily connect to a network in order to refresh the device policy. After applying policy, the temporary network will be forgotten and the device will continue booting. This prevents being unable to connect to a network if there is no suitable network in the last policy and the device boots into an app in lock task mode, or the user is otherwise unable to reach device settings.Note: Setting wifiConfigDisabled to true will override this setting under specific circumstances. Please see wifiConfigDisabled for further details.
    networkEscapeHatchEnabled :: (Core.Maybe Core.Bool),
    -- | Whether resetting network settings is disabled.
    networkResetDisabled :: (Core.Maybe Core.Bool),
    -- | This feature is not generally available.
    oncCertificateProviders :: (Core.Maybe [OncCertificateProvider]),
    -- | Network configuration for the device. See configure networks for more information.
    openNetworkConfiguration :: (Core.Maybe Policy_OpenNetworkConfiguration),
    -- | Whether using NFC to beam data from apps is disabled.
    outgoingBeamDisabled :: (Core.Maybe Core.Bool),
    -- | Whether outgoing calls are disabled.
    outgoingCallsDisabled :: (Core.Maybe Core.Bool),
    -- | Password requirement policies. Different policies can be set for work profile or fully managed devices by setting the password_scope field in the policy.
    passwordPolicies :: (Core.Maybe [PasswordRequirements]),
    -- | Password requirements. The field password/requirements.require/password/unlock must not be set. DEPRECATED - Use passwordPolicies.Note:Complexity-based values of PasswordQuality, that is, COMPLEXITY/LOW, COMPLEXITY/MEDIUM, and COMPLEXITY/HIGH, cannot be used here. unified/lock/settings cannot be used here
    passwordRequirements :: (Core.Maybe PasswordRequirements),
    -- | Explicit permission or group grants or denials for all apps. These values override the default/permission/policy.
    permissionGrants :: (Core.Maybe [PermissionGrant]),
    -- | Specifies permitted accessibility services. If the field is not set, any accessibility service can be used. If the field is set, only the accessibility services in this list and the system\'s built-in accessibility service can be used. In particular, if the field is set to empty, only the system\'s built-in accessibility servicess can be used.
    permittedAccessibilityServices :: (Core.Maybe PackageNameList),
    -- | If present, only the input methods provided by packages in this list are permitted. If this field is present, but the list is empty, then only system input methods are permitted.
    permittedInputMethods :: (Core.Maybe PackageNameList),
    -- | Default intent handler activities.
    persistentPreferredActivities :: (Core.Maybe [PersistentPreferredActivity]),
    -- | Policies managing personal usage on a company-owned device.
    personalUsagePolicies :: (Core.Maybe PersonalUsagePolicies),
    -- | This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.
    playStoreMode :: (Core.Maybe Policy_PlayStoreMode),
    -- | Rules that define the behavior when a particular policy can not be applied on device
    policyEnforcementRules :: (Core.Maybe [PolicyEnforcementRule]),
    -- | Controls whether preferential network service is enabled on the work profile. For example, an organization may have an agreement with a carrier that all of the work data from its employees\' devices will be sent via a network service dedicated for enterprise use. An example of a supported preferential network service is the enterprise slice on 5G networks. This has no effect on fully managed devices.
    preferentialNetworkService :: (Core.Maybe Policy_PreferentialNetworkService),
    -- | Allows showing UI on a device for a user to choose a private key alias if there are no matching rules in ChoosePrivateKeyRules. For devices below Android P, setting this may leave enterprise keys vulnerable.
    privateKeySelectionEnabled :: (Core.Maybe Core.Bool),
    -- | The network-independent global HTTP proxy. Typically proxies should be configured per-network in open/network/configuration. However for unusual configurations like general internal filtering a global HTTP proxy may be useful. If the proxy is not accessible, network access may break. The global proxy is only a recommendation and some apps may ignore it.
    recommendedGlobalProxy :: (Core.Maybe ProxyInfo),
    -- | Whether removing other users is disabled.
    removeUserDisabled :: (Core.Maybe Core.Bool),
    -- | Whether rebooting the device into safe boot is disabled.
    safeBootDisabled :: (Core.Maybe Core.Bool),
    -- | Whether screen capture is disabled.
    screenCaptureDisabled :: (Core.Maybe Core.Bool),
    -- | Whether changing the user icon is disabled.
    setUserIconDisabled :: (Core.Maybe Core.Bool),
    -- | Whether changing the wallpaper is disabled.
    setWallpaperDisabled :: (Core.Maybe Core.Bool),
    -- | Action to take during the setup process. At most one action may be specified.
    setupActions :: (Core.Maybe [SetupAction]),
    -- | Whether location sharing is disabled.
    shareLocationDisabled :: (Core.Maybe Core.Bool),
    -- | A message displayed to the user in the settings screen wherever functionality has been disabled by the admin. If the message is longer than 200 characters it may be truncated.
    shortSupportMessage :: (Core.Maybe UserFacingMessage),
    -- | Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for apps to skip their user tutorial and other introductory hints on first start-up.
    skipFirstUseHintsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether sending and receiving SMS messages is disabled.
    smsDisabled :: (Core.Maybe Core.Bool),
    -- | Whether the status bar is disabled. This disables notifications, quick settings, and other screen overlays that allow escape from full-screen mode. DEPRECATED. To disable the status bar on a kiosk device, use InstallType KIOSK or kioskCustomLauncherEnabled.
    statusBarDisabled :: (Core.Maybe Core.Bool),
    -- | Status reporting settings
    statusReportingSettings :: (Core.Maybe StatusReportingSettings),
    -- | The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum/time/to_lock so that the device doesn\'t lock itself while it stays on.
    stayOnPluggedModes :: (Core.Maybe [Policy_StayOnPluggedModesItem]),
    -- | The system update policy, which controls how OS updates are applied. If the update type is WINDOWED, the update window will automatically apply to Play app updates as well.
    systemUpdate :: (Core.Maybe SystemUpdate),
    -- | Whether configuring tethering and portable hotspots is disabled.
    tetheringConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Whether user uninstallation of applications is disabled.
    uninstallAppsDisabled :: (Core.Maybe Core.Bool),
    -- | If microphone/access is set to any value other than MICROPHONE/ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether microphones are disabled: If true, all microphones are disabled, otherwise they are available. This is available only on fully managed devices.
    unmuteMicrophoneDisabled :: (Core.Maybe Core.Bool),
    -- | Whether transferring files over USB is disabled.
    usbFileTransferDisabled :: (Core.Maybe Core.Bool),
    -- | Whether USB storage is enabled. Deprecated.
    usbMassStorageEnabled :: (Core.Maybe Core.Bool),
    -- | The version of the policy. This is a read-only field. The version is incremented each time the policy is updated.
    version :: (Core.Maybe Core.Int64),
    -- | Whether configuring VPN is disabled.
    vpnConfigDisabled :: (Core.Maybe Core.Bool),
    -- | Whether configuring Wi-Fi access points is disabled.Note: If a network connection can\'t be made at boot time and configuring Wi-Fi is disabled then network escape hatch will be shown in order to refresh the device policy (see networkEscapeHatchEnabled).
    wifiConfigDisabled :: (Core.Maybe Core.Bool),
    -- | DEPRECATED - Use wifi/config/disabled.
    wifiConfigsLockdownEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { accountTypesWithManagementDisabled = Core.Nothing,
      addUserDisabled = Core.Nothing,
      adjustVolumeDisabled = Core.Nothing,
      advancedSecurityOverrides = Core.Nothing,
      alwaysOnVpnPackage = Core.Nothing,
      androidDevicePolicyTracks = Core.Nothing,
      appAutoUpdatePolicy = Core.Nothing,
      applications = Core.Nothing,
      autoDateAndTimeZone = Core.Nothing,
      autoTimeRequired = Core.Nothing,
      blockApplicationsEnabled = Core.Nothing,
      bluetoothConfigDisabled = Core.Nothing,
      bluetoothContactSharingDisabled = Core.Nothing,
      bluetoothDisabled = Core.Nothing,
      cameraAccess = Core.Nothing,
      cameraDisabled = Core.Nothing,
      cellBroadcastsConfigDisabled = Core.Nothing,
      choosePrivateKeyRules = Core.Nothing,
      complianceRules = Core.Nothing,
      createWindowsDisabled = Core.Nothing,
      credentialsConfigDisabled = Core.Nothing,
      crossProfilePolicies = Core.Nothing,
      dataRoamingDisabled = Core.Nothing,
      debuggingFeaturesAllowed = Core.Nothing,
      defaultPermissionPolicy = Core.Nothing,
      deviceOwnerLockScreenInfo = Core.Nothing,
      encryptionPolicy = Core.Nothing,
      ensureVerifyAppsEnabled = Core.Nothing,
      factoryResetDisabled = Core.Nothing,
      frpAdminEmails = Core.Nothing,
      funDisabled = Core.Nothing,
      installAppsDisabled = Core.Nothing,
      installUnknownSourcesAllowed = Core.Nothing,
      keyguardDisabled = Core.Nothing,
      keyguardDisabledFeatures = Core.Nothing,
      kioskCustomLauncherEnabled = Core.Nothing,
      kioskCustomization = Core.Nothing,
      locationMode = Core.Nothing,
      longSupportMessage = Core.Nothing,
      maximumTimeToLock = Core.Nothing,
      microphoneAccess = Core.Nothing,
      minimumApiLevel = Core.Nothing,
      mobileNetworksConfigDisabled = Core.Nothing,
      modifyAccountsDisabled = Core.Nothing,
      mountPhysicalMediaDisabled = Core.Nothing,
      name = Core.Nothing,
      networkEscapeHatchEnabled = Core.Nothing,
      networkResetDisabled = Core.Nothing,
      oncCertificateProviders = Core.Nothing,
      openNetworkConfiguration = Core.Nothing,
      outgoingBeamDisabled = Core.Nothing,
      outgoingCallsDisabled = Core.Nothing,
      passwordPolicies = Core.Nothing,
      passwordRequirements = Core.Nothing,
      permissionGrants = Core.Nothing,
      permittedAccessibilityServices = Core.Nothing,
      permittedInputMethods = Core.Nothing,
      persistentPreferredActivities = Core.Nothing,
      personalUsagePolicies = Core.Nothing,
      playStoreMode = Core.Nothing,
      policyEnforcementRules = Core.Nothing,
      preferentialNetworkService = Core.Nothing,
      privateKeySelectionEnabled = Core.Nothing,
      recommendedGlobalProxy = Core.Nothing,
      removeUserDisabled = Core.Nothing,
      safeBootDisabled = Core.Nothing,
      screenCaptureDisabled = Core.Nothing,
      setUserIconDisabled = Core.Nothing,
      setWallpaperDisabled = Core.Nothing,
      setupActions = Core.Nothing,
      shareLocationDisabled = Core.Nothing,
      shortSupportMessage = Core.Nothing,
      skipFirstUseHintsEnabled = Core.Nothing,
      smsDisabled = Core.Nothing,
      statusBarDisabled = Core.Nothing,
      statusReportingSettings = Core.Nothing,
      stayOnPluggedModes = Core.Nothing,
      systemUpdate = Core.Nothing,
      tetheringConfigDisabled = Core.Nothing,
      uninstallAppsDisabled = Core.Nothing,
      unmuteMicrophoneDisabled = Core.Nothing,
      usbFileTransferDisabled = Core.Nothing,
      usbMassStorageEnabled = Core.Nothing,
      version = Core.Nothing,
      vpnConfigDisabled = Core.Nothing,
      wifiConfigDisabled = Core.Nothing,
      wifiConfigsLockdownEnabled = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> ( o Core..:? "accountTypesWithManagementDisabled"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "addUserDisabled")
            Core.<*> (o Core..:? "adjustVolumeDisabled")
            Core.<*> (o Core..:? "advancedSecurityOverrides")
            Core.<*> (o Core..:? "alwaysOnVpnPackage")
            Core.<*> ( o Core..:? "androidDevicePolicyTracks"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "appAutoUpdatePolicy")
            Core.<*> (o Core..:? "applications" Core..!= Core.mempty)
            Core.<*> (o Core..:? "autoDateAndTimeZone")
            Core.<*> (o Core..:? "autoTimeRequired")
            Core.<*> (o Core..:? "blockApplicationsEnabled")
            Core.<*> (o Core..:? "bluetoothConfigDisabled")
            Core.<*> (o Core..:? "bluetoothContactSharingDisabled")
            Core.<*> (o Core..:? "bluetoothDisabled")
            Core.<*> (o Core..:? "cameraAccess")
            Core.<*> (o Core..:? "cameraDisabled")
            Core.<*> (o Core..:? "cellBroadcastsConfigDisabled")
            Core.<*> ( o Core..:? "choosePrivateKeyRules"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "complianceRules" Core..!= Core.mempty)
            Core.<*> (o Core..:? "createWindowsDisabled")
            Core.<*> (o Core..:? "credentialsConfigDisabled")
            Core.<*> (o Core..:? "crossProfilePolicies")
            Core.<*> (o Core..:? "dataRoamingDisabled")
            Core.<*> (o Core..:? "debuggingFeaturesAllowed")
            Core.<*> (o Core..:? "defaultPermissionPolicy")
            Core.<*> (o Core..:? "deviceOwnerLockScreenInfo")
            Core.<*> (o Core..:? "encryptionPolicy")
            Core.<*> (o Core..:? "ensureVerifyAppsEnabled")
            Core.<*> (o Core..:? "factoryResetDisabled")
            Core.<*> (o Core..:? "frpAdminEmails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "funDisabled")
            Core.<*> (o Core..:? "installAppsDisabled")
            Core.<*> (o Core..:? "installUnknownSourcesAllowed")
            Core.<*> (o Core..:? "keyguardDisabled")
            Core.<*> ( o Core..:? "keyguardDisabledFeatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "kioskCustomLauncherEnabled")
            Core.<*> (o Core..:? "kioskCustomization")
            Core.<*> (o Core..:? "locationMode")
            Core.<*> (o Core..:? "longSupportMessage")
            Core.<*> (o Core..:? "maximumTimeToLock")
            Core.<*> (o Core..:? "microphoneAccess")
            Core.<*> (o Core..:? "minimumApiLevel")
            Core.<*> (o Core..:? "mobileNetworksConfigDisabled")
            Core.<*> (o Core..:? "modifyAccountsDisabled")
            Core.<*> (o Core..:? "mountPhysicalMediaDisabled")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkEscapeHatchEnabled")
            Core.<*> (o Core..:? "networkResetDisabled")
            Core.<*> ( o Core..:? "oncCertificateProviders"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "openNetworkConfiguration")
            Core.<*> (o Core..:? "outgoingBeamDisabled")
            Core.<*> (o Core..:? "outgoingCallsDisabled")
            Core.<*> (o Core..:? "passwordPolicies" Core..!= Core.mempty)
            Core.<*> (o Core..:? "passwordRequirements")
            Core.<*> (o Core..:? "permissionGrants" Core..!= Core.mempty)
            Core.<*> (o Core..:? "permittedAccessibilityServices")
            Core.<*> (o Core..:? "permittedInputMethods")
            Core.<*> ( o Core..:? "persistentPreferredActivities"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "personalUsagePolicies")
            Core.<*> (o Core..:? "playStoreMode")
            Core.<*> ( o Core..:? "policyEnforcementRules"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "preferentialNetworkService")
            Core.<*> (o Core..:? "privateKeySelectionEnabled")
            Core.<*> (o Core..:? "recommendedGlobalProxy")
            Core.<*> (o Core..:? "removeUserDisabled")
            Core.<*> (o Core..:? "safeBootDisabled")
            Core.<*> (o Core..:? "screenCaptureDisabled")
            Core.<*> (o Core..:? "setUserIconDisabled")
            Core.<*> (o Core..:? "setWallpaperDisabled")
            Core.<*> (o Core..:? "setupActions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shareLocationDisabled")
            Core.<*> (o Core..:? "shortSupportMessage")
            Core.<*> (o Core..:? "skipFirstUseHintsEnabled")
            Core.<*> (o Core..:? "smsDisabled")
            Core.<*> (o Core..:? "statusBarDisabled")
            Core.<*> (o Core..:? "statusReportingSettings")
            Core.<*> ( o Core..:? "stayOnPluggedModes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "systemUpdate")
            Core.<*> (o Core..:? "tetheringConfigDisabled")
            Core.<*> (o Core..:? "uninstallAppsDisabled")
            Core.<*> (o Core..:? "unmuteMicrophoneDisabled")
            Core.<*> (o Core..:? "usbFileTransferDisabled")
            Core.<*> (o Core..:? "usbMassStorageEnabled")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "vpnConfigDisabled")
            Core.<*> (o Core..:? "wifiConfigDisabled")
            Core.<*> (o Core..:? "wifiConfigsLockdownEnabled")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountTypesWithManagementDisabled" Core..=)
              Core.<$> accountTypesWithManagementDisabled,
            ("addUserDisabled" Core..=) Core.<$> addUserDisabled,
            ("adjustVolumeDisabled" Core..=)
              Core.<$> adjustVolumeDisabled,
            ("advancedSecurityOverrides" Core..=)
              Core.<$> advancedSecurityOverrides,
            ("alwaysOnVpnPackage" Core..=)
              Core.<$> alwaysOnVpnPackage,
            ("androidDevicePolicyTracks" Core..=)
              Core.<$> androidDevicePolicyTracks,
            ("appAutoUpdatePolicy" Core..=)
              Core.<$> appAutoUpdatePolicy,
            ("applications" Core..=) Core.<$> applications,
            ("autoDateAndTimeZone" Core..=)
              Core.<$> autoDateAndTimeZone,
            ("autoTimeRequired" Core..=)
              Core.<$> autoTimeRequired,
            ("blockApplicationsEnabled" Core..=)
              Core.<$> blockApplicationsEnabled,
            ("bluetoothConfigDisabled" Core..=)
              Core.<$> bluetoothConfigDisabled,
            ("bluetoothContactSharingDisabled" Core..=)
              Core.<$> bluetoothContactSharingDisabled,
            ("bluetoothDisabled" Core..=)
              Core.<$> bluetoothDisabled,
            ("cameraAccess" Core..=) Core.<$> cameraAccess,
            ("cameraDisabled" Core..=) Core.<$> cameraDisabled,
            ("cellBroadcastsConfigDisabled" Core..=)
              Core.<$> cellBroadcastsConfigDisabled,
            ("choosePrivateKeyRules" Core..=)
              Core.<$> choosePrivateKeyRules,
            ("complianceRules" Core..=) Core.<$> complianceRules,
            ("createWindowsDisabled" Core..=)
              Core.<$> createWindowsDisabled,
            ("credentialsConfigDisabled" Core..=)
              Core.<$> credentialsConfigDisabled,
            ("crossProfilePolicies" Core..=)
              Core.<$> crossProfilePolicies,
            ("dataRoamingDisabled" Core..=)
              Core.<$> dataRoamingDisabled,
            ("debuggingFeaturesAllowed" Core..=)
              Core.<$> debuggingFeaturesAllowed,
            ("defaultPermissionPolicy" Core..=)
              Core.<$> defaultPermissionPolicy,
            ("deviceOwnerLockScreenInfo" Core..=)
              Core.<$> deviceOwnerLockScreenInfo,
            ("encryptionPolicy" Core..=)
              Core.<$> encryptionPolicy,
            ("ensureVerifyAppsEnabled" Core..=)
              Core.<$> ensureVerifyAppsEnabled,
            ("factoryResetDisabled" Core..=)
              Core.<$> factoryResetDisabled,
            ("frpAdminEmails" Core..=) Core.<$> frpAdminEmails,
            ("funDisabled" Core..=) Core.<$> funDisabled,
            ("installAppsDisabled" Core..=)
              Core.<$> installAppsDisabled,
            ("installUnknownSourcesAllowed" Core..=)
              Core.<$> installUnknownSourcesAllowed,
            ("keyguardDisabled" Core..=)
              Core.<$> keyguardDisabled,
            ("keyguardDisabledFeatures" Core..=)
              Core.<$> keyguardDisabledFeatures,
            ("kioskCustomLauncherEnabled" Core..=)
              Core.<$> kioskCustomLauncherEnabled,
            ("kioskCustomization" Core..=)
              Core.<$> kioskCustomization,
            ("locationMode" Core..=) Core.<$> locationMode,
            ("longSupportMessage" Core..=)
              Core.<$> longSupportMessage,
            ("maximumTimeToLock" Core..=) Core.. Core.AsText
              Core.<$> maximumTimeToLock,
            ("microphoneAccess" Core..=)
              Core.<$> microphoneAccess,
            ("minimumApiLevel" Core..=) Core.<$> minimumApiLevel,
            ("mobileNetworksConfigDisabled" Core..=)
              Core.<$> mobileNetworksConfigDisabled,
            ("modifyAccountsDisabled" Core..=)
              Core.<$> modifyAccountsDisabled,
            ("mountPhysicalMediaDisabled" Core..=)
              Core.<$> mountPhysicalMediaDisabled,
            ("name" Core..=) Core.<$> name,
            ("networkEscapeHatchEnabled" Core..=)
              Core.<$> networkEscapeHatchEnabled,
            ("networkResetDisabled" Core..=)
              Core.<$> networkResetDisabled,
            ("oncCertificateProviders" Core..=)
              Core.<$> oncCertificateProviders,
            ("openNetworkConfiguration" Core..=)
              Core.<$> openNetworkConfiguration,
            ("outgoingBeamDisabled" Core..=)
              Core.<$> outgoingBeamDisabled,
            ("outgoingCallsDisabled" Core..=)
              Core.<$> outgoingCallsDisabled,
            ("passwordPolicies" Core..=)
              Core.<$> passwordPolicies,
            ("passwordRequirements" Core..=)
              Core.<$> passwordRequirements,
            ("permissionGrants" Core..=)
              Core.<$> permissionGrants,
            ("permittedAccessibilityServices" Core..=)
              Core.<$> permittedAccessibilityServices,
            ("permittedInputMethods" Core..=)
              Core.<$> permittedInputMethods,
            ("persistentPreferredActivities" Core..=)
              Core.<$> persistentPreferredActivities,
            ("personalUsagePolicies" Core..=)
              Core.<$> personalUsagePolicies,
            ("playStoreMode" Core..=) Core.<$> playStoreMode,
            ("policyEnforcementRules" Core..=)
              Core.<$> policyEnforcementRules,
            ("preferentialNetworkService" Core..=)
              Core.<$> preferentialNetworkService,
            ("privateKeySelectionEnabled" Core..=)
              Core.<$> privateKeySelectionEnabled,
            ("recommendedGlobalProxy" Core..=)
              Core.<$> recommendedGlobalProxy,
            ("removeUserDisabled" Core..=)
              Core.<$> removeUserDisabled,
            ("safeBootDisabled" Core..=)
              Core.<$> safeBootDisabled,
            ("screenCaptureDisabled" Core..=)
              Core.<$> screenCaptureDisabled,
            ("setUserIconDisabled" Core..=)
              Core.<$> setUserIconDisabled,
            ("setWallpaperDisabled" Core..=)
              Core.<$> setWallpaperDisabled,
            ("setupActions" Core..=) Core.<$> setupActions,
            ("shareLocationDisabled" Core..=)
              Core.<$> shareLocationDisabled,
            ("shortSupportMessage" Core..=)
              Core.<$> shortSupportMessage,
            ("skipFirstUseHintsEnabled" Core..=)
              Core.<$> skipFirstUseHintsEnabled,
            ("smsDisabled" Core..=) Core.<$> smsDisabled,
            ("statusBarDisabled" Core..=)
              Core.<$> statusBarDisabled,
            ("statusReportingSettings" Core..=)
              Core.<$> statusReportingSettings,
            ("stayOnPluggedModes" Core..=)
              Core.<$> stayOnPluggedModes,
            ("systemUpdate" Core..=) Core.<$> systemUpdate,
            ("tetheringConfigDisabled" Core..=)
              Core.<$> tetheringConfigDisabled,
            ("uninstallAppsDisabled" Core..=)
              Core.<$> uninstallAppsDisabled,
            ("unmuteMicrophoneDisabled" Core..=)
              Core.<$> unmuteMicrophoneDisabled,
            ("usbFileTransferDisabled" Core..=)
              Core.<$> usbFileTransferDisabled,
            ("usbMassStorageEnabled" Core..=)
              Core.<$> usbMassStorageEnabled,
            ("version" Core..=) Core.. Core.AsText
              Core.<$> version,
            ("vpnConfigDisabled" Core..=)
              Core.<$> vpnConfigDisabled,
            ("wifiConfigDisabled" Core..=)
              Core.<$> wifiConfigDisabled,
            ("wifiConfigsLockdownEnabled" Core..=)
              Core.<$> wifiConfigsLockdownEnabled
          ]
      )

-- | Network configuration for the device. See configure networks for more information.
--
-- /See:/ 'newPolicy_OpenNetworkConfiguration' smart constructor.
newtype Policy_OpenNetworkConfiguration = Policy_OpenNetworkConfiguration
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_OpenNetworkConfiguration' with the minimum fields required to make a request.
newPolicy_OpenNetworkConfiguration ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Policy_OpenNetworkConfiguration
newPolicy_OpenNetworkConfiguration addtional =
  Policy_OpenNetworkConfiguration {addtional = addtional}

instance
  Core.FromJSON
    Policy_OpenNetworkConfiguration
  where
  parseJSON =
    Core.withObject
      "Policy_OpenNetworkConfiguration"
      ( \o ->
          Policy_OpenNetworkConfiguration
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Policy_OpenNetworkConfiguration where
  toJSON Policy_OpenNetworkConfiguration {..} =
    Core.toJSON addtional

-- | A rule that defines the actions to take if a device or work profile is not compliant with the policy specified in settingName.
--
-- /See:/ 'newPolicyEnforcementRule' smart constructor.
data PolicyEnforcementRule = PolicyEnforcementRule
  { -- | An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.
    blockAction :: (Core.Maybe BlockAction),
    -- | The top-level policy to enforce. For example, applications or passwordPolicies.
    settingName :: (Core.Maybe Core.Text),
    -- | An action to reset a fully managed device or delete a work profile. Note: blockAction must also be specified.
    wipeAction :: (Core.Maybe WipeAction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyEnforcementRule' with the minimum fields required to make a request.
newPolicyEnforcementRule ::
  PolicyEnforcementRule
newPolicyEnforcementRule =
  PolicyEnforcementRule
    { blockAction = Core.Nothing,
      settingName = Core.Nothing,
      wipeAction = Core.Nothing
    }

instance Core.FromJSON PolicyEnforcementRule where
  parseJSON =
    Core.withObject
      "PolicyEnforcementRule"
      ( \o ->
          PolicyEnforcementRule
            Core.<$> (o Core..:? "blockAction")
            Core.<*> (o Core..:? "settingName")
            Core.<*> (o Core..:? "wipeAction")
      )

instance Core.ToJSON PolicyEnforcementRule where
  toJSON PolicyEnforcementRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockAction" Core..=) Core.<$> blockAction,
            ("settingName" Core..=) Core.<$> settingName,
            ("wipeAction" Core..=) Core.<$> wipeAction
          ]
      )

-- | Additional details regarding the security posture of the device.
--
-- /See:/ 'newPostureDetail' smart constructor.
data PostureDetail = PostureDetail
  { -- | Corresponding admin-facing advice to mitigate this security risk and improve the security posture of the device.
    advice :: (Core.Maybe [UserFacingMessage]),
    -- | A specific security risk that negatively affects the security posture of the device.
    securityRisk :: (Core.Maybe PostureDetail_SecurityRisk)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostureDetail' with the minimum fields required to make a request.
newPostureDetail ::
  PostureDetail
newPostureDetail =
  PostureDetail {advice = Core.Nothing, securityRisk = Core.Nothing}

instance Core.FromJSON PostureDetail where
  parseJSON =
    Core.withObject
      "PostureDetail"
      ( \o ->
          PostureDetail
            Core.<$> (o Core..:? "advice" Core..!= Core.mempty)
            Core.<*> (o Core..:? "securityRisk")
      )

instance Core.ToJSON PostureDetail where
  toJSON PostureDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("advice" Core..=) Core.<$> advice,
            ("securityRisk" Core..=) Core.<$> securityRisk
          ]
      )

-- | A power management event.
--
-- /See:/ 'newPowerManagementEvent' smart constructor.
data PowerManagementEvent = PowerManagementEvent
  { -- | For BATTERY/LEVEL/COLLECTED events, the battery level as a percentage.
    batteryLevel :: (Core.Maybe Core.Double),
    -- | The creation time of the event.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Event type.
    eventType :: (Core.Maybe PowerManagementEvent_EventType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PowerManagementEvent' with the minimum fields required to make a request.
newPowerManagementEvent ::
  PowerManagementEvent
newPowerManagementEvent =
  PowerManagementEvent
    { batteryLevel = Core.Nothing,
      createTime = Core.Nothing,
      eventType = Core.Nothing
    }

instance Core.FromJSON PowerManagementEvent where
  parseJSON =
    Core.withObject
      "PowerManagementEvent"
      ( \o ->
          PowerManagementEvent
            Core.<$> (o Core..:? "batteryLevel")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventType")
      )

instance Core.ToJSON PowerManagementEvent where
  toJSON PowerManagementEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("batteryLevel" Core..=) Core.<$> batteryLevel,
            ("createTime" Core..=) Core.<$> createTime,
            ("eventType" Core..=) Core.<$> eventType
          ]
      )

-- | Configuration info for an HTTP proxy. For a direct proxy, set the host, port, and excluded/hosts fields. For a PAC script proxy, set the pac/uri field.
--
-- /See:/ 'newProxyInfo' smart constructor.
data ProxyInfo = ProxyInfo
  { -- | For a direct proxy, the hosts for which the proxy is bypassed. The host names may contain wildcards such as *.example.com.
    excludedHosts :: (Core.Maybe [Core.Text]),
    -- | The host of the direct proxy.
    host :: (Core.Maybe Core.Text),
    -- | The URI of the PAC script used to configure the proxy.
    pacUri :: (Core.Maybe Core.Text),
    -- | The port of the direct proxy.
    port :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProxyInfo' with the minimum fields required to make a request.
newProxyInfo ::
  ProxyInfo
newProxyInfo =
  ProxyInfo
    { excludedHosts = Core.Nothing,
      host = Core.Nothing,
      pacUri = Core.Nothing,
      port = Core.Nothing
    }

instance Core.FromJSON ProxyInfo where
  parseJSON =
    Core.withObject
      "ProxyInfo"
      ( \o ->
          ProxyInfo
            Core.<$> (o Core..:? "excludedHosts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "pacUri")
            Core.<*> (o Core..:? "port")
      )

instance Core.ToJSON ProxyInfo where
  toJSON ProxyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludedHosts" Core..=) Core.<$> excludedHosts,
            ("host" Core..=) Core.<$> host,
            ("pacUri" Core..=) Core.<$> pacUri,
            ("port" Core..=) Core.<$> port
          ]
      )

-- | The security posture of the device, as determined by the current device state and the policies applied.
--
-- /See:/ 'newSecurityPosture' smart constructor.
data SecurityPosture = SecurityPosture
  { -- | Device\'s security posture value.
    devicePosture :: (Core.Maybe SecurityPosture_DevicePosture),
    -- | Additional details regarding the security posture of the device.
    postureDetails :: (Core.Maybe [PostureDetail])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityPosture' with the minimum fields required to make a request.
newSecurityPosture ::
  SecurityPosture
newSecurityPosture =
  SecurityPosture {devicePosture = Core.Nothing, postureDetails = Core.Nothing}

instance Core.FromJSON SecurityPosture where
  parseJSON =
    Core.withObject
      "SecurityPosture"
      ( \o ->
          SecurityPosture
            Core.<$> (o Core..:? "devicePosture")
            Core.<*> (o Core..:? "postureDetails" Core..!= Core.mempty)
      )

instance Core.ToJSON SecurityPosture where
  toJSON SecurityPosture {..} =
    Core.object
      ( Core.catMaybes
          [ ("devicePosture" Core..=) Core.<$> devicePosture,
            ("postureDetails" Core..=) Core.<$> postureDetails
          ]
      )

-- | An action executed during setup.
--
-- /See:/ 'newSetupAction' smart constructor.
data SetupAction = SetupAction
  { -- | Description of this action.
    description :: (Core.Maybe UserFacingMessage),
    -- | An action to launch an app. The app will be launched with an intent containing an extra with key com.google.android.apps.work.clouddpc.EXTRA/LAUNCHED/AS/SETUP/ACTION set to the boolean value true to indicate that this is a setup action flow.
    launchApp :: (Core.Maybe LaunchAppAction),
    -- | Title of this action.
    title :: (Core.Maybe UserFacingMessage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetupAction' with the minimum fields required to make a request.
newSetupAction ::
  SetupAction
newSetupAction =
  SetupAction
    { description = Core.Nothing,
      launchApp = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SetupAction where
  parseJSON =
    Core.withObject
      "SetupAction"
      ( \o ->
          SetupAction
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "launchApp")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SetupAction where
  toJSON SetupAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("launchApp" Core..=) Core.<$> launchApp,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A resource containing sign in details for an enterprise.
--
-- /See:/ 'newSigninDetail' smart constructor.
data SigninDetail = SigninDetail
  { -- | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
    allowPersonalUsage :: (Core.Maybe SigninDetail_AllowPersonalUsage),
    -- | A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON. This is a read-only field generated by the server.
    qrCode :: (Core.Maybe Core.Text),
    -- | An enterprise wide enrollment token used to trigger custom sign-in flow. This is a read-only field generated by the server.
    signinEnrollmentToken :: (Core.Maybe Core.Text),
    -- | Sign-in URL for authentication when device is provisioned with a sign-in enrollment token. The sign-in endpoint should finish authentication flow with a URL in the form of https:\/\/enterprise.google.com\/android\/enroll?et= for a successful login, or https:\/\/enterprise.google.com\/android\/enroll\/invalid for a failed login.
    signinUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SigninDetail' with the minimum fields required to make a request.
newSigninDetail ::
  SigninDetail
newSigninDetail =
  SigninDetail
    { allowPersonalUsage = Core.Nothing,
      qrCode = Core.Nothing,
      signinEnrollmentToken = Core.Nothing,
      signinUrl = Core.Nothing
    }

instance Core.FromJSON SigninDetail where
  parseJSON =
    Core.withObject
      "SigninDetail"
      ( \o ->
          SigninDetail
            Core.<$> (o Core..:? "allowPersonalUsage")
            Core.<*> (o Core..:? "qrCode")
            Core.<*> (o Core..:? "signinEnrollmentToken")
            Core.<*> (o Core..:? "signinUrl")
      )

instance Core.ToJSON SigninDetail where
  toJSON SigninDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowPersonalUsage" Core..=)
              Core.<$> allowPersonalUsage,
            ("qrCode" Core..=) Core.<$> qrCode,
            ("signinEnrollmentToken" Core..=)
              Core.<$> signinEnrollmentToken,
            ("signinUrl" Core..=) Core.<$> signinUrl
          ]
      )

-- | An enterprise signup URL.
--
-- /See:/ 'newSignupUrl' smart constructor.
data SignupUrl = SignupUrl
  { -- | The name of the resource. Use this value in the signupUrl field when calling enterprises.create to complete the enterprise signup flow.
    name :: (Core.Maybe Core.Text),
    -- | A URL where an enterprise admin can register their enterprise. The page can\'t be rendered in an iframe.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignupUrl' with the minimum fields required to make a request.
newSignupUrl ::
  SignupUrl
newSignupUrl = SignupUrl {name = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON SignupUrl where
  parseJSON =
    Core.withObject
      "SignupUrl"
      ( \o ->
          SignupUrl
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON SignupUrl where
  toJSON SignupUrl {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Information about device software.
--
-- /See:/ 'newSoftwareInfo' smart constructor.
data SoftwareInfo = SoftwareInfo
  { -- | Android build ID string meant for displaying to the user. For example, shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.
    androidBuildNumber :: (Core.Maybe Core.Text),
    -- | Build time.
    androidBuildTime :: (Core.Maybe Core.DateTime'),
    -- | The Android Device Policy app version code.
    androidDevicePolicyVersionCode :: (Core.Maybe Core.Int32),
    -- | The Android Device Policy app version as displayed to the user.
    androidDevicePolicyVersionName :: (Core.Maybe Core.Text),
    -- | The user-visible Android version string. For example, 6.0.1.
    androidVersion :: (Core.Maybe Core.Text),
    -- | The system bootloader version number, e.g. 0.6.7.
    bootloaderVersion :: (Core.Maybe Core.Text),
    -- | SHA-256 hash of android.content.pm.Signature (https:\/\/developer.android.com\/reference\/android\/content\/pm\/Signature.html) associated with the system package, which can be used to verify that the system build hasn\'t been modified.
    deviceBuildSignature :: (Core.Maybe Core.Text),
    -- | Kernel version, for example, 2.6.32.9-g103d848.
    deviceKernelVersion :: (Core.Maybe Core.Text),
    -- | An IETF BCP 47 language code for the primary locale on the device.
    primaryLanguageCode :: (Core.Maybe Core.Text),
    -- | Security patch level, e.g. 2016-05-01.
    securityPatchLevel :: (Core.Maybe Core.Text),
    -- | Information about a potential pending system update.
    systemUpdateInfo :: (Core.Maybe SystemUpdateInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareInfo' with the minimum fields required to make a request.
newSoftwareInfo ::
  SoftwareInfo
newSoftwareInfo =
  SoftwareInfo
    { androidBuildNumber = Core.Nothing,
      androidBuildTime = Core.Nothing,
      androidDevicePolicyVersionCode = Core.Nothing,
      androidDevicePolicyVersionName = Core.Nothing,
      androidVersion = Core.Nothing,
      bootloaderVersion = Core.Nothing,
      deviceBuildSignature = Core.Nothing,
      deviceKernelVersion = Core.Nothing,
      primaryLanguageCode = Core.Nothing,
      securityPatchLevel = Core.Nothing,
      systemUpdateInfo = Core.Nothing
    }

instance Core.FromJSON SoftwareInfo where
  parseJSON =
    Core.withObject
      "SoftwareInfo"
      ( \o ->
          SoftwareInfo
            Core.<$> (o Core..:? "androidBuildNumber")
            Core.<*> (o Core..:? "androidBuildTime")
            Core.<*> (o Core..:? "androidDevicePolicyVersionCode")
            Core.<*> (o Core..:? "androidDevicePolicyVersionName")
            Core.<*> (o Core..:? "androidVersion")
            Core.<*> (o Core..:? "bootloaderVersion")
            Core.<*> (o Core..:? "deviceBuildSignature")
            Core.<*> (o Core..:? "deviceKernelVersion")
            Core.<*> (o Core..:? "primaryLanguageCode")
            Core.<*> (o Core..:? "securityPatchLevel")
            Core.<*> (o Core..:? "systemUpdateInfo")
      )

instance Core.ToJSON SoftwareInfo where
  toJSON SoftwareInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidBuildNumber" Core..=)
              Core.<$> androidBuildNumber,
            ("androidBuildTime" Core..=)
              Core.<$> androidBuildTime,
            ("androidDevicePolicyVersionCode" Core..=)
              Core.<$> androidDevicePolicyVersionCode,
            ("androidDevicePolicyVersionName" Core..=)
              Core.<$> androidDevicePolicyVersionName,
            ("androidVersion" Core..=) Core.<$> androidVersion,
            ("bootloaderVersion" Core..=)
              Core.<$> bootloaderVersion,
            ("deviceBuildSignature" Core..=)
              Core.<$> deviceBuildSignature,
            ("deviceKernelVersion" Core..=)
              Core.<$> deviceKernelVersion,
            ("primaryLanguageCode" Core..=)
              Core.<$> primaryLanguageCode,
            ("securityPatchLevel" Core..=)
              Core.<$> securityPatchLevel,
            ("systemUpdateInfo" Core..=)
              Core.<$> systemUpdateInfo
          ]
      )

-- | The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https:\/\/github.com\/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | Settings controlling the behavior of status reports.
--
-- /See:/ 'newStatusReportingSettings' smart constructor.
data StatusReportingSettings = StatusReportingSettings
  { -- | Application reporting settings. Only applicable if application/reports/enabled is true.
    applicationReportingSettings :: (Core.Maybe ApplicationReportingSettings),
    -- | Whether app reports are enabled.
    applicationReportsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether Common Criteria Mode reporting is enabled.
    commonCriteriaModeEnabled :: (Core.Maybe Core.Bool),
    -- | Whether device settings reporting is enabled.
    deviceSettingsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether displays reporting is enabled. Report data is not available for personally owned devices with work profiles.
    displayInfoEnabled :: (Core.Maybe Core.Bool),
    -- | Whether hardware status reporting is enabled. Report data is not available for personally owned devices with work profiles.
    hardwareStatusEnabled :: (Core.Maybe Core.Bool),
    -- | Whether memory event reporting is enabled.
    memoryInfoEnabled :: (Core.Maybe Core.Bool),
    -- | Whether network info reporting is enabled.
    networkInfoEnabled :: (Core.Maybe Core.Bool),
    -- | Whether power management event reporting is enabled. Report data is not available for personally owned devices with work profiles.
    powerManagementEventsEnabled :: (Core.Maybe Core.Bool),
    -- | Whether software info reporting is enabled.
    softwareInfoEnabled :: (Core.Maybe Core.Bool),
    -- | Whether system properties reporting is enabled.
    systemPropertiesEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatusReportingSettings' with the minimum fields required to make a request.
newStatusReportingSettings ::
  StatusReportingSettings
newStatusReportingSettings =
  StatusReportingSettings
    { applicationReportingSettings = Core.Nothing,
      applicationReportsEnabled = Core.Nothing,
      commonCriteriaModeEnabled = Core.Nothing,
      deviceSettingsEnabled = Core.Nothing,
      displayInfoEnabled = Core.Nothing,
      hardwareStatusEnabled = Core.Nothing,
      memoryInfoEnabled = Core.Nothing,
      networkInfoEnabled = Core.Nothing,
      powerManagementEventsEnabled = Core.Nothing,
      softwareInfoEnabled = Core.Nothing,
      systemPropertiesEnabled = Core.Nothing
    }

instance Core.FromJSON StatusReportingSettings where
  parseJSON =
    Core.withObject
      "StatusReportingSettings"
      ( \o ->
          StatusReportingSettings
            Core.<$> (o Core..:? "applicationReportingSettings")
            Core.<*> (o Core..:? "applicationReportsEnabled")
            Core.<*> (o Core..:? "commonCriteriaModeEnabled")
            Core.<*> (o Core..:? "deviceSettingsEnabled")
            Core.<*> (o Core..:? "displayInfoEnabled")
            Core.<*> (o Core..:? "hardwareStatusEnabled")
            Core.<*> (o Core..:? "memoryInfoEnabled")
            Core.<*> (o Core..:? "networkInfoEnabled")
            Core.<*> (o Core..:? "powerManagementEventsEnabled")
            Core.<*> (o Core..:? "softwareInfoEnabled")
            Core.<*> (o Core..:? "systemPropertiesEnabled")
      )

instance Core.ToJSON StatusReportingSettings where
  toJSON StatusReportingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationReportingSettings" Core..=)
              Core.<$> applicationReportingSettings,
            ("applicationReportsEnabled" Core..=)
              Core.<$> applicationReportsEnabled,
            ("commonCriteriaModeEnabled" Core..=)
              Core.<$> commonCriteriaModeEnabled,
            ("deviceSettingsEnabled" Core..=)
              Core.<$> deviceSettingsEnabled,
            ("displayInfoEnabled" Core..=)
              Core.<$> displayInfoEnabled,
            ("hardwareStatusEnabled" Core..=)
              Core.<$> hardwareStatusEnabled,
            ("memoryInfoEnabled" Core..=)
              Core.<$> memoryInfoEnabled,
            ("networkInfoEnabled" Core..=)
              Core.<$> networkInfoEnabled,
            ("powerManagementEventsEnabled" Core..=)
              Core.<$> powerManagementEventsEnabled,
            ("softwareInfoEnabled" Core..=)
              Core.<$> softwareInfoEnabled,
            ("systemPropertiesEnabled" Core..=)
              Core.<$> systemPropertiesEnabled
          ]
      )

-- | Configuration for managing system updates
--
-- /See:/ 'newSystemUpdate' smart constructor.
data SystemUpdate = SystemUpdate
  { -- | If the type is WINDOWED, the end of the maintenance window, measured as the number of minutes after midnight in device\'s local time. This value must be between 0 and 1439, inclusive. If this value is less than start_minutes, then the maintenance window spans midnight. If the maintenance window specified is smaller than 30 minutes, the actual window is extended to 30 minutes beyond the start time.
    endMinutes :: (Core.Maybe Core.Int32),
    -- | An annually repeating time period in which over-the-air (OTA) system updates are postponed to freeze the OS version running on a device. To prevent freezing the device indefinitely, each freeze period must be separated by at least 60 days.
    freezePeriods :: (Core.Maybe [FreezePeriod]),
    -- | If the type is WINDOWED, the start of the maintenance window, measured as the number of minutes after midnight in the device\'s local time. This value must be between 0 and 1439, inclusive.
    startMinutes :: (Core.Maybe Core.Int32),
    -- | The type of system update to configure.
    type' :: (Core.Maybe SystemUpdate_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemUpdate' with the minimum fields required to make a request.
newSystemUpdate ::
  SystemUpdate
newSystemUpdate =
  SystemUpdate
    { endMinutes = Core.Nothing,
      freezePeriods = Core.Nothing,
      startMinutes = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SystemUpdate where
  parseJSON =
    Core.withObject
      "SystemUpdate"
      ( \o ->
          SystemUpdate
            Core.<$> (o Core..:? "endMinutes")
            Core.<*> (o Core..:? "freezePeriods" Core..!= Core.mempty)
            Core.<*> (o Core..:? "startMinutes")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SystemUpdate where
  toJSON SystemUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("endMinutes" Core..=) Core.<$> endMinutes,
            ("freezePeriods" Core..=) Core.<$> freezePeriods,
            ("startMinutes" Core..=) Core.<$> startMinutes,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about a potential pending system update.
--
-- /See:/ 'newSystemUpdateInfo' smart constructor.
data SystemUpdateInfo = SystemUpdateInfo
  { -- | The time when the update was first available. A zero value indicates that this field is not set. This field is set only if an update is available (that is, updateStatus is neither UPDATE/STATUS/UNKNOWN nor UP/TO/DATE).
    updateReceivedTime :: (Core.Maybe Core.DateTime'),
    -- | The status of an update: whether an update exists and what type it is.
    updateStatus :: (Core.Maybe SystemUpdateInfo_UpdateStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemUpdateInfo' with the minimum fields required to make a request.
newSystemUpdateInfo ::
  SystemUpdateInfo
newSystemUpdateInfo =
  SystemUpdateInfo
    { updateReceivedTime = Core.Nothing,
      updateStatus = Core.Nothing
    }

instance Core.FromJSON SystemUpdateInfo where
  parseJSON =
    Core.withObject
      "SystemUpdateInfo"
      ( \o ->
          SystemUpdateInfo
            Core.<$> (o Core..:? "updateReceivedTime")
            Core.<*> (o Core..:? "updateStatus")
      )

instance Core.ToJSON SystemUpdateInfo where
  toJSON SystemUpdateInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("updateReceivedTime" Core..=)
              Core.<$> updateReceivedTime,
            ("updateStatus" Core..=) Core.<$> updateStatus
          ]
      )

-- | Telephony information associated with a given SIM card on the device. Only supported on fully managed devices starting from Android API level 23.
--
-- /See:/ 'newTelephonyInfo' smart constructor.
data TelephonyInfo = TelephonyInfo
  { -- | The carrier name associated with this SIM card.
    carrierName :: (Core.Maybe Core.Text),
    -- | The phone number associated with this SIM card.
    phoneNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TelephonyInfo' with the minimum fields required to make a request.
newTelephonyInfo ::
  TelephonyInfo
newTelephonyInfo =
  TelephonyInfo {carrierName = Core.Nothing, phoneNumber = Core.Nothing}

instance Core.FromJSON TelephonyInfo where
  parseJSON =
    Core.withObject
      "TelephonyInfo"
      ( \o ->
          TelephonyInfo
            Core.<$> (o Core..:? "carrierName")
            Core.<*> (o Core..:? "phoneNumber")
      )

instance Core.ToJSON TelephonyInfo where
  toJSON TelephonyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrierName" Core..=) Core.<$> carrierName,
            ("phoneNumber" Core..=) Core.<$> phoneNumber
          ]
      )

-- | A terms and conditions page to be accepted during provisioning.
--
-- /See:/ 'newTermsAndConditions' smart constructor.
data TermsAndConditions = TermsAndConditions
  { -- | A well-formatted HTML string. It will be parsed on the client with android.text.Html#fromHtml.
    content :: (Core.Maybe UserFacingMessage),
    -- | A short header which appears above the HTML content.
    header :: (Core.Maybe UserFacingMessage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TermsAndConditions' with the minimum fields required to make a request.
newTermsAndConditions ::
  TermsAndConditions
newTermsAndConditions =
  TermsAndConditions {content = Core.Nothing, header = Core.Nothing}

instance Core.FromJSON TermsAndConditions where
  parseJSON =
    Core.withObject
      "TermsAndConditions"
      ( \o ->
          TermsAndConditions
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "header")
      )

instance Core.ToJSON TermsAndConditions where
  toJSON TermsAndConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("header" Core..=) Core.<$> header
          ]
      )

-- | A user belonging to an enterprise.
--
-- /See:/ 'newUser' smart constructor.
newtype User = User
  { -- | A unique identifier you create for this user, such as user342 or asset#44418. This field must be set when the user is created and can\'t be updated. This field must not contain personally identifiable information (PII). This identifier must be 1024 characters or less; otherwise, the update policy request will fail.
    accountIdentifier :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser = User {accountIdentifier = Core.Nothing}

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User Core.<$> (o Core..:? "accountIdentifier")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountIdentifier" Core..=)
              Core.<$> accountIdentifier
          ]
      )

-- | Provides a user-facing message with locale info. The maximum message length is 4096 characters.
--
-- /See:/ 'newUserFacingMessage' smart constructor.
data UserFacingMessage = UserFacingMessage
  { -- | The default message displayed if no localized message is specified or the user\'s locale doesn\'t match with any of the localized messages. A default message must be provided if any localized messages are provided.
    defaultMessage :: (Core.Maybe Core.Text),
    -- | A map containing pairs, where locale is a well-formed BCP 47 language (https:\/\/www.w3.org\/International\/articles\/language-tags\/) code, such as en-US, es-ES, or fr.
    localizedMessages :: (Core.Maybe UserFacingMessage_LocalizedMessages)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserFacingMessage' with the minimum fields required to make a request.
newUserFacingMessage ::
  UserFacingMessage
newUserFacingMessage =
  UserFacingMessage
    { defaultMessage = Core.Nothing,
      localizedMessages = Core.Nothing
    }

instance Core.FromJSON UserFacingMessage where
  parseJSON =
    Core.withObject
      "UserFacingMessage"
      ( \o ->
          UserFacingMessage
            Core.<$> (o Core..:? "defaultMessage")
            Core.<*> (o Core..:? "localizedMessages")
      )

instance Core.ToJSON UserFacingMessage where
  toJSON UserFacingMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultMessage" Core..=) Core.<$> defaultMessage,
            ("localizedMessages" Core..=)
              Core.<$> localizedMessages
          ]
      )

-- | A map containing pairs, where locale is a well-formed BCP 47 language (https:\/\/www.w3.org\/International\/articles\/language-tags\/) code, such as en-US, es-ES, or fr.
--
-- /See:/ 'newUserFacingMessage_LocalizedMessages' smart constructor.
newtype UserFacingMessage_LocalizedMessages = UserFacingMessage_LocalizedMessages
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserFacingMessage_LocalizedMessages' with the minimum fields required to make a request.
newUserFacingMessage_LocalizedMessages ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  UserFacingMessage_LocalizedMessages
newUserFacingMessage_LocalizedMessages addtional =
  UserFacingMessage_LocalizedMessages {addtional = addtional}

instance
  Core.FromJSON
    UserFacingMessage_LocalizedMessages
  where
  parseJSON =
    Core.withObject
      "UserFacingMessage_LocalizedMessages"
      ( \o ->
          UserFacingMessage_LocalizedMessages
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    UserFacingMessage_LocalizedMessages
  where
  toJSON UserFacingMessage_LocalizedMessages {..} =
    Core.toJSON addtional

-- | A web app.
--
-- /See:/ 'newWebApp' smart constructor.
data WebApp = WebApp
  { -- | The display mode of the web app.
    displayMode :: (Core.Maybe WebApp_DisplayMode),
    -- | A list of icons for the web app. Must have at least one element.
    icons :: (Core.Maybe [WebAppIcon]),
    -- | The name of the web app, which is generated by the server during creation in the form enterprises\/{enterpriseId}\/webApps\/{packageName}.
    name :: (Core.Maybe Core.Text),
    -- | The start URL, i.e. the URL that should load when the user opens the application.
    startUrl :: (Core.Maybe Core.Text),
    -- | The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon).
    title :: (Core.Maybe Core.Text),
    -- | The current version of the app.Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date.
    versionCode :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebApp' with the minimum fields required to make a request.
newWebApp ::
  WebApp
newWebApp =
  WebApp
    { displayMode = Core.Nothing,
      icons = Core.Nothing,
      name = Core.Nothing,
      startUrl = Core.Nothing,
      title = Core.Nothing,
      versionCode = Core.Nothing
    }

instance Core.FromJSON WebApp where
  parseJSON =
    Core.withObject
      "WebApp"
      ( \o ->
          WebApp
            Core.<$> (o Core..:? "displayMode")
            Core.<*> (o Core..:? "icons" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "startUrl")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "versionCode")
      )

instance Core.ToJSON WebApp where
  toJSON WebApp {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayMode" Core..=) Core.<$> displayMode,
            ("icons" Core..=) Core.<$> icons,
            ("name" Core..=) Core.<$> name,
            ("startUrl" Core..=) Core.<$> startUrl,
            ("title" Core..=) Core.<$> title,
            ("versionCode" Core..=) Core.. Core.AsText
              Core.<$> versionCode
          ]
      )

-- | An icon for a web app. Supported formats are: png, jpg and webp.
--
-- /See:/ 'newWebAppIcon' smart constructor.
newtype WebAppIcon = WebAppIcon
  { -- | The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 \"Base 64 Encoding with URL and Filename Safe Alphabet\"). - The image type can be png or jpg. - The image should ideally be square. - The image should ideally have a size of 512x512.
    imageData :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebAppIcon' with the minimum fields required to make a request.
newWebAppIcon ::
  WebAppIcon
newWebAppIcon = WebAppIcon {imageData = Core.Nothing}

instance Core.FromJSON WebAppIcon where
  parseJSON =
    Core.withObject
      "WebAppIcon"
      (\o -> WebAppIcon Core.<$> (o Core..:? "imageData"))

instance Core.ToJSON WebAppIcon where
  toJSON WebAppIcon {..} =
    Core.object
      ( Core.catMaybes
          [("imageData" Core..=) Core.<$> imageData]
      )

-- | A web token used to access the managed Google Play iframe.
--
-- /See:/ 'newWebToken' smart constructor.
data WebToken = WebToken
  { -- | The features to enable. Use this if you want to control exactly which feature(s) will be activated; leave empty to allow all features.Restrictions \/ things to note: - If no features are listed here, all features are enabled — this is the default behavior where you give access to all features to your admins. - This must not contain any FEATURE_UNSPECIFIED values. - Repeated values are ignored
    enabledFeatures :: (Core.Maybe [WebToken_EnabledFeaturesItem]),
    -- | The name of the web token, which is generated by the server during creation in the form enterprises\/{enterpriseId}\/webTokens\/{webTokenId}.
    name :: (Core.Maybe Core.Text),
    -- | The URL of the parent frame hosting the iframe with the embedded UI. To prevent XSS, the iframe may not be hosted at other URLs. The URL must use the https scheme.
    parentFrameUrl :: (Core.Maybe Core.Text),
    -- | Permissions available to an admin in the embedded UI. An admin must have all of these permissions in order to view the UI. This field is deprecated.
    permissions :: (Core.Maybe [WebToken_PermissionsItem]),
    -- | The token value which is used in the hosting page to generate the iframe with the embedded UI. This is a read-only field generated by the server.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebToken' with the minimum fields required to make a request.
newWebToken ::
  WebToken
newWebToken =
  WebToken
    { enabledFeatures = Core.Nothing,
      name = Core.Nothing,
      parentFrameUrl = Core.Nothing,
      permissions = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON WebToken where
  parseJSON =
    Core.withObject
      "WebToken"
      ( \o ->
          WebToken
            Core.<$> (o Core..:? "enabledFeatures" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentFrameUrl")
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON WebToken where
  toJSON WebToken {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabledFeatures" Core..=)
              Core.<$> enabledFeatures,
            ("name" Core..=) Core.<$> name,
            ("parentFrameUrl" Core..=) Core.<$> parentFrameUrl,
            ("permissions" Core..=) Core.<$> permissions,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An action to reset a fully managed device or delete a work profile. Note: blockAction must also be specified.
--
-- /See:/ 'newWipeAction' smart constructor.
data WipeAction = WipeAction
  { -- | Whether the factory-reset protection data is preserved on the device. This setting doesn’t apply to work profiles.
    preserveFrp :: (Core.Maybe Core.Bool),
    -- | Number of days the policy is non-compliant before the device or work profile is wiped. wipeAfterDays must be greater than blockAfterDays.
    wipeAfterDays :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WipeAction' with the minimum fields required to make a request.
newWipeAction ::
  WipeAction
newWipeAction =
  WipeAction {preserveFrp = Core.Nothing, wipeAfterDays = Core.Nothing}

instance Core.FromJSON WipeAction where
  parseJSON =
    Core.withObject
      "WipeAction"
      ( \o ->
          WipeAction
            Core.<$> (o Core..:? "preserveFrp")
            Core.<*> (o Core..:? "wipeAfterDays")
      )

instance Core.ToJSON WipeAction where
  toJSON WipeAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("preserveFrp" Core..=) Core.<$> preserveFrp,
            ("wipeAfterDays" Core..=) Core.<$> wipeAfterDays
          ]
      )
