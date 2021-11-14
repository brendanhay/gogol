{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidEnterprise.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The type of the restriction.
data AppRestrictionsSchemaRestrictionRestrictionType
    = Bool
      -- ^ @bool@
      -- A restriction of boolean type.
    | String
      -- ^ @string@
      -- A restriction of string type.
    | Integer
      -- ^ @integer@
      -- A restriction of integer type.
    | Choice
      -- ^ @choice@
      -- A choice of one item from a set.
    | Multiselect
      -- ^ @multiselect@
      -- A choice of multiple items from a set.
    | Hidden
      -- ^ @hidden@
      -- A hidden restriction of string type (the default value can be used to
      -- pass along information that cannot be modified, such as a version code).
    | Bundle
      -- ^ @bundle@
      -- [M+ devices only] A bundle of restrictions
    | BundleArray
      -- ^ @bundleArray@
      -- [M+ devices only] An array of restriction bundles
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppRestrictionsSchemaRestrictionRestrictionType

instance FromHttpApiData AppRestrictionsSchemaRestrictionRestrictionType where
    parseQueryParam = \case
        "bool" -> Right Bool
        "string" -> Right String
        "integer" -> Right Integer
        "choice" -> Right Choice
        "multiselect" -> Right Multiselect
        "hidden" -> Right Hidden
        "bundle" -> Right Bundle
        "bundleArray" -> Right BundleArray
        x -> Left ("Unable to parse AppRestrictionsSchemaRestrictionRestrictionType from: " <> x)

instance ToHttpApiData AppRestrictionsSchemaRestrictionRestrictionType where
    toQueryParam = \case
        Bool -> "bool"
        String -> "string"
        Integer -> "integer"
        Choice -> "choice"
        Multiselect -> "multiselect"
        Hidden -> "hidden"
        Bundle -> "bundle"
        BundleArray -> "bundleArray"

instance FromJSON AppRestrictionsSchemaRestrictionRestrictionType where
    parseJSON = parseJSONText "AppRestrictionsSchemaRestrictionRestrictionType"

instance ToJSON AppRestrictionsSchemaRestrictionRestrictionType where
    toJSON = toJSONText

-- | Whether the permission has been accepted or not.
data ProductPermissionState
    = Required
      -- ^ @required@
      -- The permission is required by the app but has not yet been accepted by
      -- the enterprise.
    | Accepted
      -- ^ @accepted@
      -- The permission has been accepted by the enterprise.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductPermissionState

instance FromHttpApiData ProductPermissionState where
    parseQueryParam = \case
        "required" -> Right Required
        "accepted" -> Right Accepted
        x -> Left ("Unable to parse ProductPermissionState from: " <> x)

instance ToHttpApiData ProductPermissionState where
    toQueryParam = \case
        Required -> "required"
        Accepted -> "accepted"

instance FromJSON ProductPermissionState where
    parseJSON = parseJSONText "ProductPermissionState"

instance ToJSON ProductPermissionState where
    toJSON = toJSONText

-- | How and to whom the package is made available. The value
-- publicGoogleHosted means that the package is available through the Play
-- store and not restricted to a specific enterprise. The value
-- privateGoogleHosted means that the package is a private app (restricted
-- to an enterprise) but hosted by Google. The value privateSelfHosted
-- means that the package is a private app (restricted to an enterprise)
-- and is privately hosted.
data ProductDistributionChannel
    = PublicGoogleHosted
      -- ^ @publicGoogleHosted@
    | PrivateGoogleHosted
      -- ^ @privateGoogleHosted@
    | PrivateSelfHosted
      -- ^ @privateSelfHosted@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductDistributionChannel

instance FromHttpApiData ProductDistributionChannel where
    parseQueryParam = \case
        "publicGoogleHosted" -> Right PublicGoogleHosted
        "privateGoogleHosted" -> Right PrivateGoogleHosted
        "privateSelfHosted" -> Right PrivateSelfHosted
        x -> Left ("Unable to parse ProductDistributionChannel from: " <> x)

instance ToHttpApiData ProductDistributionChannel where
    toQueryParam = \case
        PublicGoogleHosted -> "publicGoogleHosted"
        PrivateGoogleHosted -> "privateGoogleHosted"
        PrivateSelfHosted -> "privateSelfHosted"

instance FromJSON ProductDistributionChannel where
    parseJSON = parseJSONText "ProductDistributionChannel"

instance ToJSON ProductDistributionChannel where
    toJSON = toJSONText

-- | Device idle state constraint.
data AutoInstallConstraintDeviceIdleStateConstraint
    = DeviceIdleStateConstraintUnspecified
      -- ^ @deviceIdleStateConstraintUnspecified@
    | DeviceIdleNotRequired
      -- ^ @deviceIdleNotRequired@
      -- Device doesn\'t have to be idle, app can be installed while the user is
      -- interacting with the device.
    | DeviceIdleRequired
      -- ^ @deviceIdleRequired@
      -- Device has to be idle.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoInstallConstraintDeviceIdleStateConstraint

instance FromHttpApiData AutoInstallConstraintDeviceIdleStateConstraint where
    parseQueryParam = \case
        "deviceIdleStateConstraintUnspecified" -> Right DeviceIdleStateConstraintUnspecified
        "deviceIdleNotRequired" -> Right DeviceIdleNotRequired
        "deviceIdleRequired" -> Right DeviceIdleRequired
        x -> Left ("Unable to parse AutoInstallConstraintDeviceIdleStateConstraint from: " <> x)

instance ToHttpApiData AutoInstallConstraintDeviceIdleStateConstraint where
    toQueryParam = \case
        DeviceIdleStateConstraintUnspecified -> "deviceIdleStateConstraintUnspecified"
        DeviceIdleNotRequired -> "deviceIdleNotRequired"
        DeviceIdleRequired -> "deviceIdleRequired"

instance FromJSON AutoInstallConstraintDeviceIdleStateConstraint where
    parseJSON = parseJSONText "AutoInstallConstraintDeviceIdleStateConstraint"

instance ToJSON AutoInstallConstraintDeviceIdleStateConstraint where
    toJSON = toJSONText

-- | The content rating for this app.
data ProductContentRating
    = RatingUnknown
      -- ^ @ratingUnknown@
    | All
      -- ^ @all@
    | PreTeen
      -- ^ @preTeen@
    | Teen
      -- ^ @teen@
    | Mature
      -- ^ @mature@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductContentRating

instance FromHttpApiData ProductContentRating where
    parseQueryParam = \case
        "ratingUnknown" -> Right RatingUnknown
        "all" -> Right All
        "preTeen" -> Right PreTeen
        "teen" -> Right Teen
        "mature" -> Right Mature
        x -> Left ("Unable to parse ProductContentRating from: " <> x)

instance ToHttpApiData ProductContentRating where
    toQueryParam = \case
        RatingUnknown -> "ratingUnknown"
        All -> "all"
        PreTeen -> "preTeen"
        Teen -> "teen"
        Mature -> "mature"

instance FromJSON ProductContentRating where
    parseJSON = parseJSONText "ProductContentRating"

instance ToJSON ProductContentRating where
    toJSON = toJSONText

-- | The reason for the entitlement. For example, \"free\" for free apps.
-- This property is temporary: it will be replaced by the acquisition kind
-- field of group licenses.
data EntitlementReason
    = ERFree
      -- ^ @free@
    | ERGroupLicense
      -- ^ @groupLicense@
    | ERUserPurchase
      -- ^ @userPurchase@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntitlementReason

instance FromHttpApiData EntitlementReason where
    parseQueryParam = \case
        "free" -> Right ERFree
        "groupLicense" -> Right ERGroupLicense
        "userPurchase" -> Right ERUserPurchase
        x -> Left ("Unable to parse EntitlementReason from: " <> x)

instance ToHttpApiData EntitlementReason where
    toQueryParam = \case
        ERFree -> "free"
        ERGroupLicense -> "groupLicense"
        ERUserPurchase -> "userPurchase"

instance FromJSON EntitlementReason where
    parseJSON = parseJSONText "EntitlementReason"

instance ToJSON EntitlementReason where
    toJSON = toJSONText

-- | The new state of the product. This field will always be present.
data ProductAvailabilityChangeEventAvailabilityStatus
    = Unknown
      -- ^ @unknown@
      -- Conveys no information.
    | Available
      -- ^ @available@
      -- The previously unavailable product is again available on Google Play.
    | Removed
      -- ^ @removed@
      -- The product was removed from Google Play.
    | UnPublished
      -- ^ @unpublished@
      -- The product was unpublished by the developer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductAvailabilityChangeEventAvailabilityStatus

instance FromHttpApiData ProductAvailabilityChangeEventAvailabilityStatus where
    parseQueryParam = \case
        "unknown" -> Right Unknown
        "available" -> Right Available
        "removed" -> Right Removed
        "unpublished" -> Right UnPublished
        x -> Left ("Unable to parse ProductAvailabilityChangeEventAvailabilityStatus from: " <> x)

instance ToHttpApiData ProductAvailabilityChangeEventAvailabilityStatus where
    toQueryParam = \case
        Unknown -> "unknown"
        Available -> "available"
        Removed -> "removed"
        UnPublished -> "unpublished"

instance FromJSON ProductAvailabilityChangeEventAvailabilityStatus where
    parseJSON = parseJSONText "ProductAvailabilityChangeEventAvailabilityStatus"

instance ToJSON ProductAvailabilityChangeEventAvailabilityStatus where
    toJSON = toJSONText

-- | Network type constraint.
data AutoInstallConstraintNetworkTypeConstraint
    = NetworkTypeConstraintUnspecified
      -- ^ @networkTypeConstraintUnspecified@
    | AnyNetwork
      -- ^ @anyNetwork@
      -- Any active networks (Wi-Fi, cellular, etc.).
    | UnmeteredNetwork
      -- ^ @unmeteredNetwork@
      -- Any unmetered network (e.g. Wi-FI).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoInstallConstraintNetworkTypeConstraint

instance FromHttpApiData AutoInstallConstraintNetworkTypeConstraint where
    parseQueryParam = \case
        "networkTypeConstraintUnspecified" -> Right NetworkTypeConstraintUnspecified
        "anyNetwork" -> Right AnyNetwork
        "unmeteredNetwork" -> Right UnmeteredNetwork
        x -> Left ("Unable to parse AutoInstallConstraintNetworkTypeConstraint from: " <> x)

instance ToHttpApiData AutoInstallConstraintNetworkTypeConstraint where
    toQueryParam = \case
        NetworkTypeConstraintUnspecified -> "networkTypeConstraintUnspecified"
        AnyNetwork -> "anyNetwork"
        UnmeteredNetwork -> "unmeteredNetwork"

instance FromJSON AutoInstallConstraintNetworkTypeConstraint where
    parseJSON = parseJSONText "AutoInstallConstraintNetworkTypeConstraint"

instance ToJSON AutoInstallConstraintNetworkTypeConstraint where
    toJSON = toJSONText

-- | The store layout type. By default, this value is set to \"basic\" if the
-- homepageId field is not set, and to \"custom\" otherwise. If set to
-- \"basic\", the layout will consist of all approved apps that have been
-- whitelisted for the user.
data StoreLayoutStoreLayoutType
    = SLSLTUnknown
      -- ^ @unknown@
    | SLSLTBasic
      -- ^ @basic@
    | SLSLTCustom
      -- ^ @custom@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StoreLayoutStoreLayoutType

instance FromHttpApiData StoreLayoutStoreLayoutType where
    parseQueryParam = \case
        "unknown" -> Right SLSLTUnknown
        "basic" -> Right SLSLTBasic
        "custom" -> Right SLSLTCustom
        x -> Left ("Unable to parse StoreLayoutStoreLayoutType from: " <> x)

instance ToHttpApiData StoreLayoutStoreLayoutType where
    toQueryParam = \case
        SLSLTUnknown -> "unknown"
        SLSLTBasic -> "basic"
        SLSLTCustom -> "custom"

instance FromJSON StoreLayoutStoreLayoutType where
    parseJSON = parseJSONText "StoreLayoutStoreLayoutType"

instance ToJSON StoreLayoutStoreLayoutType where
    toJSON = toJSONText

-- | The type of account that this user represents. A userAccount can be
-- installed on multiple devices, but a deviceAccount is specific to a
-- single device. An EMM-managed user (emmManaged) can be either type
-- (userAccount, deviceAccount), but a Google-managed user (googleManaged)
-- is always a userAccount.
data UserAccountType
    = DeviceAccount
      -- ^ @deviceAccount@
    | UserAccount
      -- ^ @userAccount@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserAccountType

instance FromHttpApiData UserAccountType where
    parseQueryParam = \case
        "deviceAccount" -> Right DeviceAccount
        "userAccount" -> Right UserAccount
        x -> Left ("Unable to parse UserAccountType from: " <> x)

instance ToHttpApiData UserAccountType where
    toQueryParam = \case
        DeviceAccount -> "deviceAccount"
        UserAccount -> "userAccount"

instance FromJSON UserAccountType where
    parseJSON = parseJSONText "UserAccountType"

instance ToJSON UserAccountType where
    toJSON = toJSONText

-- | The display mode of the web app. Possible values include: -
-- \"minimalUi\", the device\'s status bar, navigation bar, the app\'s URL,
-- and a refresh button are visible when the app is open. For HTTP URLs,
-- you can only select this option. - \"standalone\", the device\'s status
-- bar and navigation bar are visible when the app is open. -
-- \"fullScreen\", the app opens in full screen mode, hiding the device\'s
-- status and navigation bars. All browser UI elements, page URL, system
-- status bar and back button are not visible, and the web app takes up the
-- entirety of the available display area.
data WebAppDisplayMode
    = DisplayModeUnspecified
      -- ^ @displayModeUnspecified@
    | MinimalUi
      -- ^ @minimalUi@
      -- Opens the web app with a minimal set of browser UI elements for
      -- controlling navigation and viewing the page URL.
    | Standalone
      -- ^ @standalone@
      -- Opens the web app to look and feel like a standalone native application.
      -- The browser UI elements and page URL are not visible, however the system
      -- status bar and back button are visible.
    | FullScreen
      -- ^ @fullScreen@
      -- Opens the web app in full screen without any visible controls. The
      -- browser UI elements, page URL, system status bar and back button are not
      -- visible, and the web app takes up the entirety of the available display
      -- area.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebAppDisplayMode

instance FromHttpApiData WebAppDisplayMode where
    parseQueryParam = \case
        "displayModeUnspecified" -> Right DisplayModeUnspecified
        "minimalUi" -> Right MinimalUi
        "standalone" -> Right Standalone
        "fullScreen" -> Right FullScreen
        x -> Left ("Unable to parse WebAppDisplayMode from: " <> x)

instance ToHttpApiData WebAppDisplayMode where
    toQueryParam = \case
        DisplayModeUnspecified -> "displayModeUnspecified"
        MinimalUi -> "minimalUi"
        Standalone -> "standalone"
        FullScreen -> "fullScreen"

instance FromJSON WebAppDisplayMode where
    parseJSON = parseJSONText "WebAppDisplayMode"

instance ToJSON WebAppDisplayMode where
    toJSON = toJSONText

-- | Identifies the extent to which the device is controlled by an Android
-- EMM in various deployment configurations. Possible values include: -
-- \"managedDevice\", a device where the DPC is set as device owner, -
-- \"managedProfile\", a device where the DPC is set as profile owner.
data NewDeviceEventManagementType
    = ManagedDevice
      -- ^ @managedDevice@
    | ManagedProFile
      -- ^ @managedProfile@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NewDeviceEventManagementType

instance FromHttpApiData NewDeviceEventManagementType where
    parseQueryParam = \case
        "managedDevice" -> Right ManagedDevice
        "managedProfile" -> Right ManagedProFile
        x -> Left ("Unable to parse NewDeviceEventManagementType from: " <> x)

instance ToHttpApiData NewDeviceEventManagementType where
    toQueryParam = \case
        ManagedDevice -> "managedDevice"
        ManagedProFile -> "managedProfile"

instance FromJSON NewDeviceEventManagementType where
    parseJSON = parseJSONText "NewDeviceEventManagementType"

instance ToJSON NewDeviceEventManagementType where
    toJSON = toJSONText

data ProductAvailableTracksItem
    = AppTrackUnspecified
      -- ^ @appTrackUnspecified@
    | Production
      -- ^ @production@
    | Beta
      -- ^ @beta@
    | Alpha
      -- ^ @alpha@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductAvailableTracksItem

instance FromHttpApiData ProductAvailableTracksItem where
    parseQueryParam = \case
        "appTrackUnspecified" -> Right AppTrackUnspecified
        "production" -> Right Production
        "beta" -> Right Beta
        "alpha" -> Right Alpha
        x -> Left ("Unable to parse ProductAvailableTracksItem from: " <> x)

instance ToHttpApiData ProductAvailableTracksItem where
    toQueryParam = \case
        AppTrackUnspecified -> "appTrackUnspecified"
        Production -> "production"
        Beta -> "beta"
        Alpha -> "alpha"

instance FromJSON ProductAvailableTracksItem where
    parseJSON = parseJSONText "ProductAvailableTracksItem"

instance ToJSON ProductAvailableTracksItem where
    toJSON = toJSONText

data AdministratorWebTokenSpecPermissionItem
    = AWTSPIUnknown
      -- ^ @unknown@
      -- Unknown permission.
    | AWTSPIApproveApps
      -- ^ @approveApps@
      -- Permission to approve and unapprove apps.
    | AWTSPIManageMcm
      -- ^ @manageMcm@
      -- Permission to manage app restrictions.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdministratorWebTokenSpecPermissionItem

instance FromHttpApiData AdministratorWebTokenSpecPermissionItem where
    parseQueryParam = \case
        "unknown" -> Right AWTSPIUnknown
        "approveApps" -> Right AWTSPIApproveApps
        "manageMcm" -> Right AWTSPIManageMcm
        x -> Left ("Unable to parse AdministratorWebTokenSpecPermissionItem from: " <> x)

instance ToHttpApiData AdministratorWebTokenSpecPermissionItem where
    toQueryParam = \case
        AWTSPIUnknown -> "unknown"
        AWTSPIApproveApps -> "approveApps"
        AWTSPIManageMcm -> "manageMcm"

instance FromJSON AdministratorWebTokenSpecPermissionItem where
    parseJSON = parseJSONText "AdministratorWebTokenSpecPermissionItem"

instance ToJSON AdministratorWebTokenSpecPermissionItem where
    toJSON = toJSONText

-- | The request mode for pulling notifications. Specifying
-- waitForNotifications will cause the request to block and wait until one
-- or more notifications are present, or return an empty notification list
-- if no notifications are present after some time. Speciying
-- returnImmediately will cause the request to immediately return the
-- pending notifications, or an empty list if no notifications are present.
-- If omitted, defaults to waitForNotifications.
data EnterprisesPullNotificationSetRequestMode
    = WaitForNotifications
      -- ^ @waitForNotifications@
      -- Wait until one or more notifications are present.
    | ReturnImmediately
      -- ^ @returnImmediately@
      -- Returns immediately whether notifications are present or not.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesPullNotificationSetRequestMode

instance FromHttpApiData EnterprisesPullNotificationSetRequestMode where
    parseQueryParam = \case
        "waitForNotifications" -> Right WaitForNotifications
        "returnImmediately" -> Right ReturnImmediately
        x -> Left ("Unable to parse EnterprisesPullNotificationSetRequestMode from: " <> x)

instance ToHttpApiData EnterprisesPullNotificationSetRequestMode where
    toQueryParam = \case
        WaitForNotifications -> "waitForNotifications"
        ReturnImmediately -> "returnImmediately"

instance FromJSON EnterprisesPullNotificationSetRequestMode where
    parseJSON = parseJSONText "EnterprisesPullNotificationSetRequestMode"

instance ToJSON EnterprisesPullNotificationSetRequestMode where
    toJSON = toJSONText

-- | Deprecated. Use autoUpdateMode instead. When autoUpdateMode is set to
-- AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no
-- effect. \"choiceToTheUser\" allows the device\'s user to configure the
-- app update policy. \"always\" enables auto updates. \"never\" disables
-- auto updates. \"wifiOnly\" enables auto updates only when the device is
-- connected to wifi.
data PolicyAutoUpdatePolicy
    = AutoUpdatePolicyUnspecified
      -- ^ @autoUpdatePolicyUnspecified@
      -- The auto update policy is not set.
    | ChoiceToTheUser
      -- ^ @choiceToTheUser@
      -- The user can control auto-updates.
    | Never
      -- ^ @never@
      -- Apps are never auto-updated.
    | WifiOnly
      -- ^ @wifiOnly@
      -- Apps are auto-updated over WiFi only.
    | Always
      -- ^ @always@
      -- Apps are auto-updated at any time. Data charges may apply.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyAutoUpdatePolicy

instance FromHttpApiData PolicyAutoUpdatePolicy where
    parseQueryParam = \case
        "autoUpdatePolicyUnspecified" -> Right AutoUpdatePolicyUnspecified
        "choiceToTheUser" -> Right ChoiceToTheUser
        "never" -> Right Never
        "wifiOnly" -> Right WifiOnly
        "always" -> Right Always
        x -> Left ("Unable to parse PolicyAutoUpdatePolicy from: " <> x)

instance ToHttpApiData PolicyAutoUpdatePolicy where
    toQueryParam = \case
        AutoUpdatePolicyUnspecified -> "autoUpdatePolicyUnspecified"
        ChoiceToTheUser -> "choiceToTheUser"
        Never -> "never"
        WifiOnly -> "wifiOnly"
        Always -> "always"

instance FromJSON PolicyAutoUpdatePolicy where
    parseJSON = parseJSONText "PolicyAutoUpdatePolicy"

instance ToJSON PolicyAutoUpdatePolicy where
    toJSON = toJSONText

-- | Whether the device reports app states to the EMM. The default value is
-- \"deviceReportDisabled\".
data PolicyDeviceReportPolicy
    = DeviceReportPolicyUnspecified
      -- ^ @deviceReportPolicyUnspecified@
      -- The device report policy is not set.
    | DeviceReportDisabled
      -- ^ @deviceReportDisabled@
      -- Device reports are disabled.
    | DeviceReportEnabled
      -- ^ @deviceReportEnabled@
      -- Device reports are enabled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyDeviceReportPolicy

instance FromHttpApiData PolicyDeviceReportPolicy where
    parseQueryParam = \case
        "deviceReportPolicyUnspecified" -> Right DeviceReportPolicyUnspecified
        "deviceReportDisabled" -> Right DeviceReportDisabled
        "deviceReportEnabled" -> Right DeviceReportEnabled
        x -> Left ("Unable to parse PolicyDeviceReportPolicy from: " <> x)

instance ToHttpApiData PolicyDeviceReportPolicy where
    toQueryParam = \case
        DeviceReportPolicyUnspecified -> "deviceReportPolicyUnspecified"
        DeviceReportDisabled -> "deviceReportDisabled"
        DeviceReportEnabled -> "deviceReportEnabled"

instance FromJSON PolicyDeviceReportPolicy where
    parseJSON = parseJSONText "PolicyDeviceReportPolicy"

instance ToJSON PolicyDeviceReportPolicy where
    toJSON = toJSONText

-- | The auto-update mode for the product.
data ProductPolicyAutoUpdateMode
    = AutoUpdateModeUnspecified
      -- ^ @autoUpdateModeUnspecified@
      -- Unspecified. Defaults to AUTO_UPDATE_DEFAULT.
    | AutoUpdateDefault
      -- ^ @autoUpdateDefault@
      -- The app is automatically updated with low priority to minimize the
      -- impact on the user. The app is updated when the following constraints
      -- are met: * The device is not actively used * The device is connected to
      -- an unmetered network * The device is charging The device is notified
      -- about a new update within 24 hours after it is published by the
      -- developer, after which the app is updated the next time the constraints
      -- above are met.
    | AutoUpdatePostponed
      -- ^ @autoUpdatePostponed@
      -- The app is not automatically updated for a maximum of 90 days after the
      -- app becomes out of date. 90 days after the app becomes out of date, the
      -- latest available version is installed automatically with low priority
      -- (see AUTO_UPDATE_DEFAULT). After the app is updated it is not
      -- automatically updated again until 90 days after it becomes out of date
      -- again. The user can still manually update the app from the Play Store at
      -- any time.
    | AutoUpdateHighPriority
      -- ^ @autoUpdateHighPriority@
      -- The app is updated as soon as possible. No constraints are applied. The
      -- device is notified immediately about a new app update after it is
      -- published by the developer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductPolicyAutoUpdateMode

instance FromHttpApiData ProductPolicyAutoUpdateMode where
    parseQueryParam = \case
        "autoUpdateModeUnspecified" -> Right AutoUpdateModeUnspecified
        "autoUpdateDefault" -> Right AutoUpdateDefault
        "autoUpdatePostponed" -> Right AutoUpdatePostponed
        "autoUpdateHighPriority" -> Right AutoUpdateHighPriority
        x -> Left ("Unable to parse ProductPolicyAutoUpdateMode from: " <> x)

instance ToHttpApiData ProductPolicyAutoUpdateMode where
    toQueryParam = \case
        AutoUpdateModeUnspecified -> "autoUpdateModeUnspecified"
        AutoUpdateDefault -> "autoUpdateDefault"
        AutoUpdatePostponed -> "autoUpdatePostponed"
        AutoUpdateHighPriority -> "autoUpdateHighPriority"

instance FromJSON ProductPolicyAutoUpdateMode where
    parseJSON = parseJSONText "ProductPolicyAutoUpdateMode"

instance ToJSON ProductPolicyAutoUpdateMode where
    toJSON = toJSONText

-- | Charging state constraint.
data AutoInstallConstraintChargingStateConstraint
    = ChargingStateConstraintUnspecified
      -- ^ @chargingStateConstraintUnspecified@
    | ChargingNotRequired
      -- ^ @chargingNotRequired@
      -- Device doesn\'t have to be charging.
    | ChargingRequired
      -- ^ @chargingRequired@
      -- Device has to be charging.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoInstallConstraintChargingStateConstraint

instance FromHttpApiData AutoInstallConstraintChargingStateConstraint where
    parseQueryParam = \case
        "chargingStateConstraintUnspecified" -> Right ChargingStateConstraintUnspecified
        "chargingNotRequired" -> Right ChargingNotRequired
        "chargingRequired" -> Right ChargingRequired
        x -> Left ("Unable to parse AutoInstallConstraintChargingStateConstraint from: " <> x)

instance ToHttpApiData AutoInstallConstraintChargingStateConstraint where
    toQueryParam = \case
        ChargingStateConstraintUnspecified -> "chargingStateConstraintUnspecified"
        ChargingNotRequired -> "chargingNotRequired"
        ChargingRequired -> "chargingRequired"

instance FromJSON AutoInstallConstraintChargingStateConstraint where
    parseJSON = parseJSONText "AutoInstallConstraintChargingStateConstraint"

instance ToJSON AutoInstallConstraintChargingStateConstraint where
    toJSON = toJSONText

-- | The reason for the installation failure. This field will always be
-- present.
data InstallFailureEventFailureReason
    = IFEFRUnknown
      -- ^ @unknown@
      -- Used whenever no better reason for failure can be provided.
    | IFEFRTimeout
      -- ^ @timeout@
      -- Used when the installation timed out. This can cover a number of
      -- situations, for example when the device did not have connectivity at any
      -- point during the retry period, or if the device is OOM.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstallFailureEventFailureReason

instance FromHttpApiData InstallFailureEventFailureReason where
    parseQueryParam = \case
        "unknown" -> Right IFEFRUnknown
        "timeout" -> Right IFEFRTimeout
        x -> Left ("Unable to parse InstallFailureEventFailureReason from: " <> x)

instance ToHttpApiData InstallFailureEventFailureReason where
    toQueryParam = \case
        IFEFRUnknown -> "unknown"
        IFEFRTimeout -> "timeout"

instance FromJSON InstallFailureEventFailureReason where
    parseJSON = parseJSONText "InstallFailureEventFailureReason"

instance ToJSON InstallFailureEventFailureReason where
    toJSON = toJSONText

-- | Deprecated, use trackId instead.
data AppVersionTrack
    = AVTAppTrackUnspecified
      -- ^ @appTrackUnspecified@
    | AVTProduction
      -- ^ @production@
    | AVTBeta
      -- ^ @beta@
    | AVTAlpha
      -- ^ @alpha@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppVersionTrack

instance FromHttpApiData AppVersionTrack where
    parseQueryParam = \case
        "appTrackUnspecified" -> Right AVTAppTrackUnspecified
        "production" -> Right AVTProduction
        "beta" -> Right AVTBeta
        "alpha" -> Right AVTAlpha
        x -> Left ("Unable to parse AppVersionTrack from: " <> x)

instance ToHttpApiData AppVersionTrack where
    toQueryParam = \case
        AVTAppTrackUnspecified -> "appTrackUnspecified"
        AVTProduction -> "production"
        AVTBeta -> "beta"
        AVTAlpha -> "alpha"

instance FromJSON AppVersionTrack where
    parseJSON = parseJSONText "AppVersionTrack"

instance ToJSON AppVersionTrack where
    toJSON = toJSONText

-- | The type of the value being provided.
data AppRestrictionsSchemaRestrictionRestrictionValueType
    = ARSRRVTBool
      -- ^ @bool@
      -- A restriction of boolean type.
    | ARSRRVTString
      -- ^ @string@
      -- A restriction of string type.
    | ARSRRVTInteger
      -- ^ @integer@
      -- A restriction of integer type.
    | ARSRRVTChoice
      -- ^ @choice@
      -- A choice of one item from a set.
    | ARSRRVTMultiselect
      -- ^ @multiselect@
      -- A choice of multiple items from a set.
    | ARSRRVTHidden
      -- ^ @hidden@
      -- A hidden restriction of string type (the default value can be used to
      -- pass along information that cannot be modified, such as a version code).
    | ARSRRVTBundle
      -- ^ @bundle@
      -- [M+ devices only] A bundle of restrictions
    | ARSRRVTBundleArray
      -- ^ @bundleArray@
      -- [M+ devices only] An array of restriction bundles
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppRestrictionsSchemaRestrictionRestrictionValueType

instance FromHttpApiData AppRestrictionsSchemaRestrictionRestrictionValueType where
    parseQueryParam = \case
        "bool" -> Right ARSRRVTBool
        "string" -> Right ARSRRVTString
        "integer" -> Right ARSRRVTInteger
        "choice" -> Right ARSRRVTChoice
        "multiselect" -> Right ARSRRVTMultiselect
        "hidden" -> Right ARSRRVTHidden
        "bundle" -> Right ARSRRVTBundle
        "bundleArray" -> Right ARSRRVTBundleArray
        x -> Left ("Unable to parse AppRestrictionsSchemaRestrictionRestrictionValueType from: " <> x)

instance ToHttpApiData AppRestrictionsSchemaRestrictionRestrictionValueType where
    toQueryParam = \case
        ARSRRVTBool -> "bool"
        ARSRRVTString -> "string"
        ARSRRVTInteger -> "integer"
        ARSRRVTChoice -> "choice"
        ARSRRVTMultiselect -> "multiselect"
        ARSRRVTHidden -> "hidden"
        ARSRRVTBundle -> "bundle"
        ARSRRVTBundleArray -> "bundleArray"

instance FromJSON AppRestrictionsSchemaRestrictionRestrictionValueType where
    parseJSON = parseJSONText "AppRestrictionsSchemaRestrictionRestrictionValueType"

instance ToJSON AppRestrictionsSchemaRestrictionRestrictionValueType where
    toJSON = toJSONText

-- | The interpretation of this product set. \"unknown\" should never be sent
-- and is ignored if received. \"whitelist\" means that the user is
-- entitled to access the product set. \"includeAll\" means that all
-- products are accessible, including products that are approved, products
-- with revoked approval, and products that have never been approved.
-- \"allApproved\" means that the user is entitled to access all products
-- that are approved for the enterprise. If the value is \"allApproved\" or
-- \"includeAll\", the productId field is ignored. If no value is provided,
-- it is interpreted as \"whitelist\" for backwards compatibility. Further
-- \"allApproved\" or \"includeAll\" does not enable automatic visibility
-- of \"alpha\" or \"beta\" tracks for Android app. Use ProductVisibility
-- to enable \"alpha\" or \"beta\" tracks per user.
data ProductSetProductSetBehavior
    = PSPSBUnknown
      -- ^ @unknown@
      -- This value should never be sent and ignored if received.
    | PSPSBWhiteList
      -- ^ @whitelist@
      -- This product set constitutes a whitelist.
    | PSPSBIncludeAll
      -- ^ @includeAll@
      -- This product set represents all products. For Android app it represents
      -- only \"production\" track. (The value of the productId field is
      -- therefore ignored).
    | PSPSBAllApproved
      -- ^ @allApproved@
      -- This product set represents all approved products. For Android app it
      -- represents only \"production\" track. (The value of the product_id field
      -- is therefore ignored).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductSetProductSetBehavior

instance FromHttpApiData ProductSetProductSetBehavior where
    parseQueryParam = \case
        "unknown" -> Right PSPSBUnknown
        "whitelist" -> Right PSPSBWhiteList
        "includeAll" -> Right PSPSBIncludeAll
        "allApproved" -> Right PSPSBAllApproved
        x -> Left ("Unable to parse ProductSetProductSetBehavior from: " <> x)

instance ToHttpApiData ProductSetProductSetBehavior where
    toQueryParam = \case
        PSPSBUnknown -> "unknown"
        PSPSBWhiteList -> "whitelist"
        PSPSBIncludeAll -> "includeAll"
        PSPSBAllApproved -> "allApproved"

instance FromJSON ProductSetProductSetBehavior where
    parseJSON = parseJSONText "ProductSetProductSetBehavior"

instance ToJSON ProductSetProductSetBehavior where
    toJSON = toJSONText

data ProductVisibilityTracksItem
    = PVTIAppTrackUnspecified
      -- ^ @appTrackUnspecified@
    | PVTIProduction
      -- ^ @production@
    | PVTIBeta
      -- ^ @beta@
    | PVTIAlpha
      -- ^ @alpha@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductVisibilityTracksItem

instance FromHttpApiData ProductVisibilityTracksItem where
    parseQueryParam = \case
        "appTrackUnspecified" -> Right PVTIAppTrackUnspecified
        "production" -> Right PVTIProduction
        "beta" -> Right PVTIBeta
        "alpha" -> Right PVTIAlpha
        x -> Left ("Unable to parse ProductVisibilityTracksItem from: " <> x)

instance ToHttpApiData ProductVisibilityTracksItem where
    toQueryParam = \case
        PVTIAppTrackUnspecified -> "appTrackUnspecified"
        PVTIProduction -> "production"
        PVTIBeta -> "beta"
        PVTIAlpha -> "alpha"

instance FromJSON ProductVisibilityTracksItem where
    parseJSON = parseJSONText "ProductVisibilityTracksItem"

instance ToJSON ProductVisibilityTracksItem where
    toJSON = toJSONText

-- | The permission approval status of the product. This field is only set if
-- the product is approved. Possible states are: - \"currentApproved\", the
-- current set of permissions is approved, but additional permissions will
-- require the administrator to reapprove the product (If the product was
-- approved without specifying the approved permissions setting, then this
-- is the default behavior.), - \"needsReapproval\", the product has
-- unapproved permissions. No additional product licenses can be assigned
-- until the product is reapproved, - \"allCurrentAndFutureApproved\", the
-- current permissions are approved and any future permission updates will
-- be automatically approved without administrator review.
data GroupLicensePermissions
    = CurrentApproved
      -- ^ @currentApproved@
    | NeedsReApproval
      -- ^ @needsReapproval@
    | AllCurrentAndFutureApproved
      -- ^ @allCurrentAndFutureApproved@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupLicensePermissions

instance FromHttpApiData GroupLicensePermissions where
    parseQueryParam = \case
        "currentApproved" -> Right CurrentApproved
        "needsReapproval" -> Right NeedsReApproval
        "allCurrentAndFutureApproved" -> Right AllCurrentAndFutureApproved
        x -> Left ("Unable to parse GroupLicensePermissions from: " <> x)

instance ToHttpApiData GroupLicensePermissions where
    toQueryParam = \case
        CurrentApproved -> "currentApproved"
        NeedsReApproval -> "needsReapproval"
        AllCurrentAndFutureApproved -> "allCurrentAndFutureApproved"

instance FromJSON GroupLicensePermissions where
    parseJSON = parseJSONText "GroupLicensePermissions"

instance ToJSON GroupLicensePermissions where
    toJSON = toJSONText

-- | Install state. The state \"installPending\" means that an install
-- request has recently been made and download to the device is in
-- progress. The state \"installed\" means that the app has been installed.
-- This field is read-only.
data InstallInstallState
    = Installed
      -- ^ @installed@
    | InstallPending
      -- ^ @installPending@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstallInstallState

instance FromHttpApiData InstallInstallState where
    parseQueryParam = \case
        "installed" -> Right Installed
        "installPending" -> Right InstallPending
        x -> Left ("Unable to parse InstallInstallState from: " <> x)

instance ToHttpApiData InstallInstallState where
    toQueryParam = \case
        Installed -> "installed"
        InstallPending -> "installPending"

instance FromJSON InstallInstallState where
    parseJSON = parseJSONText "InstallInstallState"

instance ToJSON InstallInstallState where
    toJSON = toJSONText

-- | The entity that manages the user. With googleManaged users, the source
-- of truth is Google so EMMs have to make sure a Google Account exists for
-- the user. With emmManaged users, the EMM is in charge.
data UserManagementType
    = GoogleManaged
      -- ^ @googleManaged@
    | EmmManaged
      -- ^ @emmManaged@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserManagementType

instance FromHttpApiData UserManagementType where
    parseQueryParam = \case
        "googleManaged" -> Right GoogleManaged
        "emmManaged" -> Right EmmManaged
        x -> Left ("Unable to parse UserManagementType from: " <> x)

instance ToHttpApiData UserManagementType where
    toQueryParam = \case
        GoogleManaged -> "googleManaged"
        EmmManaged -> "emmManaged"

instance FromJSON UserManagementType where
    parseJSON = parseJSONText "UserManagementType"

instance ToJSON UserManagementType where
    toJSON = toJSONText

-- | The availability granted to the device for the specified products.
-- \"all\" gives the device access to all products, regardless of approval
-- status. \"all\" does not enable automatic visibility of \"alpha\" or
-- \"beta\" tracks. \"whitelist\" grants the device access the products
-- specified in productPolicy[]. Only products that are approved or
-- products that were previously approved (products with revoked approval)
-- by the enterprise can be whitelisted. If no value is provided, the
-- availability set at the user level is applied by default.
data PolicyProductAvailabilityPolicy
    = PPAPProductAvailabilityPolicyUnspecified
      -- ^ @productAvailabilityPolicyUnspecified@
      -- Unspecified, applies the user available product set by default.
    | PPAPWhiteList
      -- ^ @whitelist@
      -- The approved products with product availability set to AVAILABLE in the
      -- product policy are available.
    | PPAPAll
      -- ^ @all@
      -- All products are available except those explicitly marked as unavailable
      -- in the product availability policy.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyProductAvailabilityPolicy

instance FromHttpApiData PolicyProductAvailabilityPolicy where
    parseQueryParam = \case
        "productAvailabilityPolicyUnspecified" -> Right PPAPProductAvailabilityPolicyUnspecified
        "whitelist" -> Right PPAPWhiteList
        "all" -> Right PPAPAll
        x -> Left ("Unable to parse PolicyProductAvailabilityPolicy from: " <> x)

instance ToHttpApiData PolicyProductAvailabilityPolicy where
    toQueryParam = \case
        PPAPProductAvailabilityPolicyUnspecified -> "productAvailabilityPolicyUnspecified"
        PPAPWhiteList -> "whitelist"
        PPAPAll -> "all"

instance FromJSON PolicyProductAvailabilityPolicy where
    parseJSON = parseJSONText "PolicyProductAvailabilityPolicy"

instance ToJSON PolicyProductAvailabilityPolicy where
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

data ProductPolicyTracksItem
    = PPTIAppTrackUnspecified
      -- ^ @appTrackUnspecified@
    | PPTIProduction
      -- ^ @production@
    | PPTIBeta
      -- ^ @beta@
    | PPTIAlpha
      -- ^ @alpha@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductPolicyTracksItem

instance FromHttpApiData ProductPolicyTracksItem where
    parseQueryParam = \case
        "appTrackUnspecified" -> Right PPTIAppTrackUnspecified
        "production" -> Right PPTIProduction
        "beta" -> Right PPTIBeta
        "alpha" -> Right PPTIAlpha
        x -> Left ("Unable to parse ProductPolicyTracksItem from: " <> x)

instance ToHttpApiData ProductPolicyTracksItem where
    toQueryParam = \case
        PPTIAppTrackUnspecified -> "appTrackUnspecified"
        PPTIProduction -> "production"
        PPTIBeta -> "beta"
        PPTIAlpha -> "alpha"

instance FromJSON ProductPolicyTracksItem where
    parseJSON = parseJSONText "ProductPolicyTracksItem"

instance ToJSON ProductPolicyTracksItem where
    toJSON = toJSONText

-- | How this group license was acquired. \"bulkPurchase\" means that this
-- Grouplicenses resource was created because the enterprise purchased
-- licenses for this product; otherwise, the value is \"free\" (for free
-- products).
data GroupLicenseAcquisitionKind
    = Free
      -- ^ @free@
    | BulkPurchase
      -- ^ @bulkPurchase@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupLicenseAcquisitionKind

instance FromHttpApiData GroupLicenseAcquisitionKind where
    parseQueryParam = \case
        "free" -> Right Free
        "bulkPurchase" -> Right BulkPurchase
        x -> Left ("Unable to parse GroupLicenseAcquisitionKind from: " <> x)

instance ToHttpApiData GroupLicenseAcquisitionKind where
    toQueryParam = \case
        Free -> "free"
        BulkPurchase -> "bulkPurchase"

instance FromJSON GroupLicenseAcquisitionKind where
    parseJSON = parseJSONText "GroupLicenseAcquisitionKind"

instance ToJSON GroupLicenseAcquisitionKind where
    toJSON = toJSONText

-- | Sets how new permission requests for the product are handled.
-- \"allPermissions\" automatically approves all current and future
-- permissions for the product. \"currentPermissionsOnly\" approves the
-- current set of permissions for the product, but any future permissions
-- added through updates will require manual reapproval. If not specified,
-- only the current set of permissions will be approved.
data ProductsApproveRequestApprovedPermissions
    = CurrentPermissionsOnly
      -- ^ @currentPermissionsOnly@
      -- Approve only the permissions the product requires at approval time. If
      -- an update requires additional permissions, the app will not be updated
      -- on devices associated with enterprise users until the additional
      -- permissions are approved.
    | AllPermissions
      -- ^ @allPermissions@
      -- All current and future permissions the app requires are automatically
      -- approved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductsApproveRequestApprovedPermissions

instance FromHttpApiData ProductsApproveRequestApprovedPermissions where
    parseQueryParam = \case
        "currentPermissionsOnly" -> Right CurrentPermissionsOnly
        "allPermissions" -> Right AllPermissions
        x -> Left ("Unable to parse ProductsApproveRequestApprovedPermissions from: " <> x)

instance ToHttpApiData ProductsApproveRequestApprovedPermissions where
    toQueryParam = \case
        CurrentPermissionsOnly -> "currentPermissionsOnly"
        AllPermissions -> "allPermissions"

instance FromJSON ProductsApproveRequestApprovedPermissions where
    parseJSON = parseJSONText "ProductsApproveRequestApprovedPermissions"

instance ToJSON ProductsApproveRequestApprovedPermissions where
    toJSON = toJSONText

-- | Type of the notification.
data NotificationNotificationType
    = NNTUnknown
      -- ^ @unknown@
    | NNTTestNotification
      -- ^ @testNotification@
      -- A test push notification.
    | NNTProductApproval
      -- ^ @productApproval@
      -- Notification about change to a product\'s approval status.
    | NNTInstallFailure
      -- ^ @installFailure@
      -- Notification about an app installation failure.
    | NNTAppUpdate
      -- ^ @appUpdate@
      -- Notification about app update.
    | NNTNewPermissions
      -- ^ @newPermissions@
      -- Notification about new app permissions.
    | NNTAppRestricionsSchemaChange
      -- ^ @appRestricionsSchemaChange@
      -- Notification about new app restrictions schema change.
    | NNTProductAvailabilityChange
      -- ^ @productAvailabilityChange@
      -- Notification about product availability change.
    | NNTNewDevice
      -- ^ @newDevice@
      -- Notification about a new device.
    | NNTDeviceReportUpdate
      -- ^ @deviceReportUpdate@
      -- Notification about an updated device report.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NotificationNotificationType

instance FromHttpApiData NotificationNotificationType where
    parseQueryParam = \case
        "unknown" -> Right NNTUnknown
        "testNotification" -> Right NNTTestNotification
        "productApproval" -> Right NNTProductApproval
        "installFailure" -> Right NNTInstallFailure
        "appUpdate" -> Right NNTAppUpdate
        "newPermissions" -> Right NNTNewPermissions
        "appRestricionsSchemaChange" -> Right NNTAppRestricionsSchemaChange
        "productAvailabilityChange" -> Right NNTProductAvailabilityChange
        "newDevice" -> Right NNTNewDevice
        "deviceReportUpdate" -> Right NNTDeviceReportUpdate
        x -> Left ("Unable to parse NotificationNotificationType from: " <> x)

instance ToHttpApiData NotificationNotificationType where
    toQueryParam = \case
        NNTUnknown -> "unknown"
        NNTTestNotification -> "testNotification"
        NNTProductApproval -> "productApproval"
        NNTInstallFailure -> "installFailure"
        NNTAppUpdate -> "appUpdate"
        NNTNewPermissions -> "newPermissions"
        NNTAppRestricionsSchemaChange -> "appRestricionsSchemaChange"
        NNTProductAvailabilityChange -> "productAvailabilityChange"
        NNTNewDevice -> "newDevice"
        NNTDeviceReportUpdate -> "deviceReportUpdate"

instance FromJSON NotificationNotificationType where
    parseJSON = parseJSONText "NotificationNotificationType"

instance ToJSON NotificationNotificationType where
    toJSON = toJSONText

-- | Whether this product is free, free with in-app purchases, or paid. If
-- the pricing is unknown, this means the product is not generally
-- available anymore (even though it might still be available to people who
-- own it).
data ProductProductPricing
    = PPPUnknown
      -- ^ @unknown@
      -- Unknown pricing, used to denote an approved product that is not
      -- generally available.
    | PPPFree
      -- ^ @free@
      -- The product is free.
    | PPPFreeWithInAppPurchase
      -- ^ @freeWithInAppPurchase@
      -- The product is free, but offers in-app purchases.
    | PPPPaid
      -- ^ @paid@
      -- The product is paid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductProductPricing

instance FromHttpApiData ProductProductPricing where
    parseQueryParam = \case
        "unknown" -> Right PPPUnknown
        "free" -> Right PPPFree
        "freeWithInAppPurchase" -> Right PPPFreeWithInAppPurchase
        "paid" -> Right PPPPaid
        x -> Left ("Unable to parse ProductProductPricing from: " <> x)

instance ToHttpApiData ProductProductPricing where
    toQueryParam = \case
        PPPUnknown -> "unknown"
        PPPFree -> "free"
        PPPFreeWithInAppPurchase -> "freeWithInAppPurchase"
        PPPPaid -> "paid"

instance FromJSON ProductProductPricing where
    parseJSON = parseJSONText "ProductProductPricing"

instance ToJSON ProductProductPricing where
    toJSON = toJSONText

-- | Identifies the extent to which the device is controlled by a managed
-- Google Play EMM in various deployment configurations. Possible values
-- include: - \"managedDevice\", a device that has the EMM\'s device policy
-- controller (DPC) as the device owner. - \"managedProfile\", a device
-- that has a profile managed by the DPC (DPC is profile owner) in addition
-- to a separate, personal profile that is unavailable to the DPC. -
-- \"containerApp\", no longer used (deprecated). - \"unmanagedProfile\", a
-- device that has been allowed (by the domain\'s admin, using the Admin
-- Console to enable the privilege) to use managed Google Play, but the
-- profile is itself not owned by a DPC.
data DeviceManagementType
    = DMTManagedDevice
      -- ^ @managedDevice@
    | DMTManagedProFile
      -- ^ @managedProfile@
    | DMTContainerApp
      -- ^ @containerApp@
    | DMTUnmanagedProFile
      -- ^ @unmanagedProfile@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceManagementType

instance FromHttpApiData DeviceManagementType where
    parseQueryParam = \case
        "managedDevice" -> Right DMTManagedDevice
        "managedProfile" -> Right DMTManagedProFile
        "containerApp" -> Right DMTContainerApp
        "unmanagedProfile" -> Right DMTUnmanagedProFile
        x -> Left ("Unable to parse DeviceManagementType from: " <> x)

instance ToHttpApiData DeviceManagementType where
    toQueryParam = \case
        DMTManagedDevice -> "managedDevice"
        DMTManagedProFile -> "managedProfile"
        DMTContainerApp -> "containerApp"
        DMTUnmanagedProFile -> "unmanagedProfile"

instance FromJSON DeviceManagementType where
    parseJSON = parseJSONText "DeviceManagementType"

instance ToJSON DeviceManagementType where
    toJSON = toJSONText

-- | Whether the product to which this group license relates is currently
-- approved by the enterprise. Products are approved when a group license
-- is first created, but this approval may be revoked by an enterprise
-- admin via Google Play. Unapproved products will not be visible to end
-- users in collections, and new entitlements to them should not normally
-- be created.
data GroupLicenseApproval
    = Approved
      -- ^ @approved@
    | UnApproved
      -- ^ @unapproved@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupLicenseApproval

instance FromHttpApiData GroupLicenseApproval where
    parseQueryParam = \case
        "approved" -> Right Approved
        "unapproved" -> Right UnApproved
        x -> Left ("Unable to parse GroupLicenseApproval from: " <> x)

instance ToHttpApiData GroupLicenseApproval where
    toQueryParam = \case
        Approved -> "approved"
        UnApproved -> "unapproved"

instance FromJSON GroupLicenseApproval where
    parseJSON = parseJSONText "GroupLicenseApproval"

instance ToJSON GroupLicenseApproval where
    toJSON = toJSONText

-- | Severity of the app state. This field will always be present.
data KeyedAppStateSeverity
    = SeverityUnknown
      -- ^ @severityUnknown@
    | SeverityInfo
      -- ^ @severityInfo@
    | SeverityError
      -- ^ @severityError@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KeyedAppStateSeverity

instance FromHttpApiData KeyedAppStateSeverity where
    parseQueryParam = \case
        "severityUnknown" -> Right SeverityUnknown
        "severityInfo" -> Right SeverityInfo
        "severityError" -> Right SeverityError
        x -> Left ("Unable to parse KeyedAppStateSeverity from: " <> x)

instance ToHttpApiData KeyedAppStateSeverity where
    toQueryParam = \case
        SeverityUnknown -> "severityUnknown"
        SeverityInfo -> "severityInfo"
        SeverityError -> "severityError"

instance FromJSON KeyedAppStateSeverity where
    parseJSON = parseJSONText "KeyedAppStateSeverity"

instance ToJSON KeyedAppStateSeverity where
    toJSON = toJSONText

-- | The type of credential to return with the service account. Required.
data EnterprisesGetServiceAccountKeyType
    = GoogleCredentials
      -- ^ @googleCredentials@
      -- Google Credentials File format.
    | PKCS12
      -- ^ @pkcs12@
      -- PKCS12 format. The password for the PKCS12 file is \'notasecret\'. For
      -- more information, see https:\/\/tools.ietf.org\/html\/rfc7292. The data
      -- for keys of this type are base64 encoded according to RFC 4648 Section
      -- 4. See http:\/\/tools.ietf.org\/html\/rfc4648#section-4.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesGetServiceAccountKeyType

instance FromHttpApiData EnterprisesGetServiceAccountKeyType where
    parseQueryParam = \case
        "googleCredentials" -> Right GoogleCredentials
        "pkcs12" -> Right PKCS12
        x -> Left ("Unable to parse EnterprisesGetServiceAccountKeyType from: " <> x)

instance ToHttpApiData EnterprisesGetServiceAccountKeyType where
    toQueryParam = \case
        GoogleCredentials -> "googleCredentials"
        PKCS12 -> "pkcs12"

instance FromJSON EnterprisesGetServiceAccountKeyType where
    parseJSON = parseJSONText "EnterprisesGetServiceAccountKeyType"

instance ToJSON EnterprisesGetServiceAccountKeyType where
    toJSON = toJSONText

-- | The file format of the generated key data.
data ServiceAccountKeyType
    = SAKTGoogleCredentials
      -- ^ @googleCredentials@
      -- Google Credentials File format.
    | SAKTPKCS12
      -- ^ @pkcs12@
      -- PKCS12 format. The password for the PKCS12 file is \'notasecret\'. For
      -- more information, see https:\/\/tools.ietf.org\/html\/rfc7292. The data
      -- for keys of this type are base64 encoded according to RFC 4648 Section
      -- 4. See http:\/\/tools.ietf.org\/html\/rfc4648#section-4.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceAccountKeyType

instance FromHttpApiData ServiceAccountKeyType where
    parseQueryParam = \case
        "googleCredentials" -> Right SAKTGoogleCredentials
        "pkcs12" -> Right SAKTPKCS12
        x -> Left ("Unable to parse ServiceAccountKeyType from: " <> x)

instance ToHttpApiData ServiceAccountKeyType where
    toQueryParam = \case
        SAKTGoogleCredentials -> "googleCredentials"
        SAKTPKCS12 -> "pkcs12"

instance FromJSON ServiceAccountKeyType where
    parseJSON = parseJSONText "ServiceAccountKeyType"

instance ToJSON ServiceAccountKeyType where
    toJSON = toJSONText

-- | The auto-install mode. If unset defaults to \"doNotAutoInstall\".
data AutoInstallPolicyAutoInstallMode
    = AutoInstallModeUnspecified
      -- ^ @autoInstallModeUnspecified@
    | DoNotAutoInstall
      -- ^ @doNotAutoInstall@
      -- The product is not installed automatically, the user needs to install it
      -- from the Play Store.
    | AutoInstallOnce
      -- ^ @autoInstallOnce@
      -- The product is automatically installed once, if the user uninstalls the
      -- product it will not be installed again.
    | ForceAutoInstall
      -- ^ @forceAutoInstall@
      -- The product is automatically installed, if the user uninstalls the
      -- product it will be installed again. On managed devices the DPC should
      -- block uninstall.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoInstallPolicyAutoInstallMode

instance FromHttpApiData AutoInstallPolicyAutoInstallMode where
    parseQueryParam = \case
        "autoInstallModeUnspecified" -> Right AutoInstallModeUnspecified
        "doNotAutoInstall" -> Right DoNotAutoInstall
        "autoInstallOnce" -> Right AutoInstallOnce
        "forceAutoInstall" -> Right ForceAutoInstall
        x -> Left ("Unable to parse AutoInstallPolicyAutoInstallMode from: " <> x)

instance ToHttpApiData AutoInstallPolicyAutoInstallMode where
    toQueryParam = \case
        AutoInstallModeUnspecified -> "autoInstallModeUnspecified"
        DoNotAutoInstall -> "doNotAutoInstall"
        AutoInstallOnce -> "autoInstallOnce"
        ForceAutoInstall -> "forceAutoInstall"

instance FromJSON AutoInstallPolicyAutoInstallMode where
    parseJSON = parseJSONText "AutoInstallPolicyAutoInstallMode"

instance ToJSON AutoInstallPolicyAutoInstallMode where
    toJSON = toJSONText

-- | Whether the product was approved or unapproved. This field will always
-- be present.
data ProductApprovalEventApproved
    = PAEAUnknown
      -- ^ @unknown@
      -- Conveys no information.
    | PAEAApproved
      -- ^ @approved@
      -- The product was approved.
    | PAEAUnApproved
      -- ^ @unapproved@
      -- The product was unapproved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductApprovalEventApproved

instance FromHttpApiData ProductApprovalEventApproved where
    parseQueryParam = \case
        "unknown" -> Right PAEAUnknown
        "approved" -> Right PAEAApproved
        "unapproved" -> Right PAEAUnApproved
        x -> Left ("Unable to parse ProductApprovalEventApproved from: " <> x)

instance ToHttpApiData ProductApprovalEventApproved where
    toQueryParam = \case
        PAEAUnknown -> "unknown"
        PAEAApproved -> "approved"
        PAEAUnApproved -> "unapproved"

instance FromJSON ProductApprovalEventApproved where
    parseJSON = parseJSONText "ProductApprovalEventApproved"

instance ToJSON ProductApprovalEventApproved where
    toJSON = toJSONText

data ProductFeaturesItem
    = FeatureUnknown
      -- ^ @featureUnknown@
    | VPNApp
      -- ^ @vpnApp@
      -- The app is a VPN.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProductFeaturesItem

instance FromHttpApiData ProductFeaturesItem where
    parseQueryParam = \case
        "featureUnknown" -> Right FeatureUnknown
        "vpnApp" -> Right VPNApp
        x -> Left ("Unable to parse ProductFeaturesItem from: " <> x)

instance ToHttpApiData ProductFeaturesItem where
    toQueryParam = \case
        FeatureUnknown -> "featureUnknown"
        VPNApp -> "vpnApp"

instance FromJSON ProductFeaturesItem where
    parseJSON = parseJSONText "ProductFeaturesItem"

instance ToJSON ProductFeaturesItem where
    toJSON = toJSONText

-- | The state of the Google account on the device. \"enabled\" indicates
-- that the Google account on the device can be used to access Google
-- services (including Google Play), while \"disabled\" means that it
-- cannot. A new device is initially in the \"disabled\" state.
data DeviceStateAccountState
    = Enabled
      -- ^ @enabled@
    | Disabled
      -- ^ @disabled@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceStateAccountState

instance FromHttpApiData DeviceStateAccountState where
    parseQueryParam = \case
        "enabled" -> Right Enabled
        "disabled" -> Right Disabled
        x -> Left ("Unable to parse DeviceStateAccountState from: " <> x)

instance ToHttpApiData DeviceStateAccountState where
    toQueryParam = \case
        Enabled -> "enabled"
        Disabled -> "disabled"

instance FromJSON DeviceStateAccountState where
    parseJSON = parseJSONText "DeviceStateAccountState"

instance ToJSON DeviceStateAccountState where
    toJSON = toJSONText
