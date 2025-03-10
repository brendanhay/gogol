{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidEnterprise.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidEnterprise.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdministratorWebTokenSpec_PermissionItem
    AdministratorWebTokenSpec_PermissionItem
      ( AdministratorWebTokenSpec_PermissionItem_Unknown,
        AdministratorWebTokenSpec_PermissionItem_ApproveApps,
        AdministratorWebTokenSpec_PermissionItem_ManageMcm,
        ..
      ),

    -- * AppRestrictionsSchemaRestriction_RestrictionType
    AppRestrictionsSchemaRestriction_RestrictionType
      ( AppRestrictionsSchemaRestriction_RestrictionType_Bool,
        AppRestrictionsSchemaRestriction_RestrictionType_String,
        AppRestrictionsSchemaRestriction_RestrictionType_Integer,
        AppRestrictionsSchemaRestriction_RestrictionType_Choice,
        AppRestrictionsSchemaRestriction_RestrictionType_Multiselect,
        AppRestrictionsSchemaRestriction_RestrictionType_Hidden,
        AppRestrictionsSchemaRestriction_RestrictionType_Bundle,
        AppRestrictionsSchemaRestriction_RestrictionType_BundleArray,
        ..
      ),

    -- * AppRestrictionsSchemaRestrictionRestrictionValue_Type
    AppRestrictionsSchemaRestrictionRestrictionValue_Type
      ( AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bool,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_String,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_Integer,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_Choice,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_Multiselect,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_Hidden,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bundle,
        AppRestrictionsSchemaRestrictionRestrictionValue_Type_BundleArray,
        ..
      ),

    -- * AppVersion_Track
    AppVersion_Track
      ( AppVersion_Track_AppTrackUnspecified,
        AppVersion_Track_Production,
        AppVersion_Track_Beta,
        AppVersion_Track_Alpha,
        ..
      ),

    -- * AutoInstallConstraint_ChargingStateConstraint
    AutoInstallConstraint_ChargingStateConstraint
      ( AutoInstallConstraint_ChargingStateConstraint_ChargingStateConstraintUnspecified,
        AutoInstallConstraint_ChargingStateConstraint_ChargingNotRequired,
        AutoInstallConstraint_ChargingStateConstraint_ChargingRequired,
        ..
      ),

    -- * AutoInstallConstraint_DeviceIdleStateConstraint
    AutoInstallConstraint_DeviceIdleStateConstraint
      ( AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleStateConstraintUnspecified,
        AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleNotRequired,
        AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleRequired,
        ..
      ),

    -- * AutoInstallConstraint_NetworkTypeConstraint
    AutoInstallConstraint_NetworkTypeConstraint
      ( AutoInstallConstraint_NetworkTypeConstraint_NetworkTypeConstraintUnspecified,
        AutoInstallConstraint_NetworkTypeConstraint_AnyNetwork,
        AutoInstallConstraint_NetworkTypeConstraint_UnmeteredNetwork,
        ..
      ),

    -- * AutoInstallPolicy_AutoInstallMode
    AutoInstallPolicy_AutoInstallMode
      ( AutoInstallPolicy_AutoInstallMode_AutoInstallModeUnspecified,
        AutoInstallPolicy_AutoInstallMode_DoNotAutoInstall,
        AutoInstallPolicy_AutoInstallMode_AutoInstallOnce,
        AutoInstallPolicy_AutoInstallMode_ForceAutoInstall,
        ..
      ),

    -- * Device_ManagementType
    Device_ManagementType
      ( Device_ManagementType_ManagedDevice,
        Device_ManagementType_ManagedProfile,
        Device_ManagementType_ContainerApp,
        Device_ManagementType_UnmanagedProfile,
        ..
      ),

    -- * DeviceState_AccountState
    DeviceState_AccountState
      ( DeviceState_AccountState_Enabled,
        DeviceState_AccountState_Disabled,
        ..
      ),

    -- * EnrollmentToken_EnrollmentTokenType
    EnrollmentToken_EnrollmentTokenType
      ( EnrollmentToken_EnrollmentTokenType_EnrollmentTokenTypeUnspecified,
        EnrollmentToken_EnrollmentTokenType_UserlessDevice,
        EnrollmentToken_EnrollmentTokenType_UserDevice,
        ..
      ),

    -- * Enterprise_EnterpriseType
    Enterprise_EnterpriseType
      ( Enterprise_EnterpriseType_EnterpriseTypeUnspecified,
        Enterprise_EnterpriseType_ManagedGoogleDomain,
        Enterprise_EnterpriseType_ManagedGooglePlayAccountsEnterprise,
        ..
      ),

    -- * Enterprise_ManagedGoogleDomainType
    Enterprise_ManagedGoogleDomainType
      ( Enterprise_ManagedGoogleDomainType_ManagedGoogleDomainTypeUnspecified,
        Enterprise_ManagedGoogleDomainType_TypeTeam,
        Enterprise_ManagedGoogleDomainType_TypeDomain,
        ..
      ),

    -- * EnterpriseUpgradeEvent_UpgradeState
    EnterpriseUpgradeEvent_UpgradeState
      ( EnterpriseUpgradeEvent_UpgradeState_UpgradeStateUnspecified,
        EnterpriseUpgradeEvent_UpgradeState_UpgradeStateSucceeded,
        ..
      ),

    -- * Entitlement_Reason
    Entitlement_Reason
      ( Entitlement_Reason_Free,
        Entitlement_Reason_GroupLicense,
        Entitlement_Reason_UserPurchase,
        ..
      ),

    -- * GoogleAuthenticationSettings_DedicatedDevicesAllowed
    GoogleAuthenticationSettings_DedicatedDevicesAllowed
      ( GoogleAuthenticationSettings_DedicatedDevicesAllowed_DedicatedDevicesAllowedUnspecified,
        GoogleAuthenticationSettings_DedicatedDevicesAllowed_Disallowed,
        GoogleAuthenticationSettings_DedicatedDevicesAllowed_Allowed,
        ..
      ),

    -- * GoogleAuthenticationSettings_GoogleAuthenticationRequired
    GoogleAuthenticationSettings_GoogleAuthenticationRequired
      ( GoogleAuthenticationSettings_GoogleAuthenticationRequired_GoogleAuthenticationRequiredUnspecified,
        GoogleAuthenticationSettings_GoogleAuthenticationRequired_NotRequired,
        GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required,
        ..
      ),

    -- * GroupLicense_AcquisitionKind
    GroupLicense_AcquisitionKind
      ( GroupLicense_AcquisitionKind_Free,
        GroupLicense_AcquisitionKind_BulkPurchase,
        ..
      ),

    -- * GroupLicense_Approval
    GroupLicense_Approval
      ( GroupLicense_Approval_Approved,
        GroupLicense_Approval_Unapproved,
        ..
      ),

    -- * GroupLicense_Permissions
    GroupLicense_Permissions
      ( GroupLicense_Permissions_CurrentApproved,
        GroupLicense_Permissions_NeedsReapproval,
        GroupLicense_Permissions_AllCurrentAndFutureApproved,
        ..
      ),

    -- * Install_InstallState
    Install_InstallState
      ( Install_InstallState_Installed,
        Install_InstallState_InstallPending,
        ..
      ),

    -- * InstallFailureEvent_FailureReason
    InstallFailureEvent_FailureReason
      ( InstallFailureEvent_FailureReason_Unknown,
        InstallFailureEvent_FailureReason_Timeout,
        ..
      ),

    -- * KeyedAppState_Severity
    KeyedAppState_Severity
      ( KeyedAppState_Severity_SeverityUnknown,
        KeyedAppState_Severity_SeverityInfo,
        KeyedAppState_Severity_SeverityError,
        ..
      ),

    -- * NewDeviceEvent_ManagementType
    NewDeviceEvent_ManagementType
      ( NewDeviceEvent_ManagementType_ManagedDevice,
        NewDeviceEvent_ManagementType_ManagedProfile,
        ..
      ),

    -- * Notification_NotificationType
    Notification_NotificationType
      ( Notification_NotificationType_Unknown,
        Notification_NotificationType_TestNotification,
        Notification_NotificationType_ProductApproval,
        Notification_NotificationType_InstallFailure,
        Notification_NotificationType_AppUpdate,
        Notification_NotificationType_NewPermissions,
        Notification_NotificationType_AppRestricionsSchemaChange,
        Notification_NotificationType_ProductAvailabilityChange,
        Notification_NotificationType_NewDevice,
        Notification_NotificationType_DeviceReportUpdate,
        Notification_NotificationType_EnterpriseUpgrade,
        ..
      ),

    -- * Policy_AutoUpdatePolicy
    Policy_AutoUpdatePolicy
      ( Policy_AutoUpdatePolicy_AutoUpdatePolicyUnspecified,
        Policy_AutoUpdatePolicy_ChoiceToTheUser,
        Policy_AutoUpdatePolicy_Never,
        Policy_AutoUpdatePolicy_WifiOnly,
        Policy_AutoUpdatePolicy_Always,
        ..
      ),

    -- * Policy_DeviceReportPolicy
    Policy_DeviceReportPolicy
      ( Policy_DeviceReportPolicy_DeviceReportPolicyUnspecified,
        Policy_DeviceReportPolicy_DeviceReportDisabled,
        Policy_DeviceReportPolicy_DeviceReportEnabled,
        ..
      ),

    -- * Policy_ProductAvailabilityPolicy
    Policy_ProductAvailabilityPolicy
      ( Policy_ProductAvailabilityPolicy_ProductAvailabilityPolicyUnspecified,
        Policy_ProductAvailabilityPolicy_Whitelist,
        Policy_ProductAvailabilityPolicy_All,
        ..
      ),

    -- * Product_AvailableTracksItem
    Product_AvailableTracksItem
      ( Product_AvailableTracksItem_AppTrackUnspecified,
        Product_AvailableTracksItem_Production,
        Product_AvailableTracksItem_Beta,
        Product_AvailableTracksItem_Alpha,
        ..
      ),

    -- * Product_ContentRating
    Product_ContentRating
      ( Product_ContentRating_RatingUnknown,
        Product_ContentRating_All,
        Product_ContentRating_PreTeen,
        Product_ContentRating_Teen,
        Product_ContentRating_Mature,
        ..
      ),

    -- * Product_DistributionChannel
    Product_DistributionChannel
      ( Product_DistributionChannel_PublicGoogleHosted,
        Product_DistributionChannel_PrivateGoogleHosted,
        Product_DistributionChannel_PrivateSelfHosted,
        ..
      ),

    -- * Product_FeaturesItem
    Product_FeaturesItem
      ( Product_FeaturesItem_FeatureUnknown,
        Product_FeaturesItem_VpnApp,
        ..
      ),

    -- * Product_ProductPricing
    Product_ProductPricing
      ( Product_ProductPricing_Unknown,
        Product_ProductPricing_Free,
        Product_ProductPricing_FreeWithInAppPurchase,
        Product_ProductPricing_Paid,
        ..
      ),

    -- * ProductApprovalEvent_Approved
    ProductApprovalEvent_Approved
      ( ProductApprovalEvent_Approved_Unknown,
        ProductApprovalEvent_Approved_Approved,
        ProductApprovalEvent_Approved_Unapproved,
        ..
      ),

    -- * ProductAvailabilityChangeEvent_AvailabilityStatus
    ProductAvailabilityChangeEvent_AvailabilityStatus
      ( ProductAvailabilityChangeEvent_AvailabilityStatus_Unknown,
        ProductAvailabilityChangeEvent_AvailabilityStatus_Available,
        ProductAvailabilityChangeEvent_AvailabilityStatus_Removed,
        ProductAvailabilityChangeEvent_AvailabilityStatus_Unpublished,
        ..
      ),

    -- * ProductPermission_State
    ProductPermission_State
      ( ProductPermission_State_Required,
        ProductPermission_State_Accepted,
        ..
      ),

    -- * ProductPolicy_AutoUpdateMode
    ProductPolicy_AutoUpdateMode
      ( ProductPolicy_AutoUpdateMode_AutoUpdateModeUnspecified,
        ProductPolicy_AutoUpdateMode_AutoUpdateDefault,
        ProductPolicy_AutoUpdateMode_AutoUpdatePostponed,
        ProductPolicy_AutoUpdateMode_AutoUpdateHighPriority,
        ..
      ),

    -- * ProductPolicy_TracksItem
    ProductPolicy_TracksItem
      ( ProductPolicy_TracksItem_AppTrackUnspecified,
        ProductPolicy_TracksItem_Production,
        ProductPolicy_TracksItem_Beta,
        ProductPolicy_TracksItem_Alpha,
        ..
      ),

    -- * ProductSet_ProductSetBehavior
    ProductSet_ProductSetBehavior
      ( ProductSet_ProductSetBehavior_Unknown,
        ProductSet_ProductSetBehavior_Whitelist,
        ProductSet_ProductSetBehavior_IncludeAll,
        ProductSet_ProductSetBehavior_AllApproved,
        ..
      ),

    -- * ProductVisibility_TracksItem
    ProductVisibility_TracksItem
      ( ProductVisibility_TracksItem_AppTrackUnspecified,
        ProductVisibility_TracksItem_Production,
        ProductVisibility_TracksItem_Beta,
        ProductVisibility_TracksItem_Alpha,
        ..
      ),

    -- * ProductsApproveRequest_ApprovedPermissions
    ProductsApproveRequest_ApprovedPermissions
      ( ProductsApproveRequest_ApprovedPermissions_CurrentPermissionsOnly,
        ProductsApproveRequest_ApprovedPermissions_AllPermissions,
        ..
      ),

    -- * ServiceAccountKey_Type
    ServiceAccountKey_Type
      ( ServiceAccountKey_Type_GoogleCredentials,
        ServiceAccountKey_Type_PKCS12,
        ..
      ),

    -- * StoreLayout_StoreLayoutType
    StoreLayout_StoreLayoutType
      ( StoreLayout_StoreLayoutType_Unknown,
        StoreLayout_StoreLayoutType_Basic,
        StoreLayout_StoreLayoutType_Custom,
        ..
      ),

    -- * User_AccountType
    User_AccountType
      ( User_AccountType_DeviceAccount,
        User_AccountType_UserAccount,
        ..
      ),

    -- * User_ManagementType
    User_ManagementType
      ( User_ManagementType_GoogleManaged,
        User_ManagementType_EmmManaged,
        ..
      ),

    -- * WebApp_DisplayMode
    WebApp_DisplayMode
      ( WebApp_DisplayMode_DisplayModeUnspecified,
        WebApp_DisplayMode_MinimalUi,
        WebApp_DisplayMode_Standalone,
        WebApp_DisplayMode_FullScreen,
        ..
      ),

    -- * EnterprisesGetServiceAccountKeyType
    EnterprisesGetServiceAccountKeyType
      ( EnterprisesGetServiceAccountKeyType_GoogleCredentials,
        EnterprisesGetServiceAccountKeyType_PKCS12,
        ..
      ),

    -- * EnterprisesPullNotificationSetRequestMode
    EnterprisesPullNotificationSetRequestMode
      ( EnterprisesPullNotificationSetRequestMode_WaitForNotifications,
        EnterprisesPullNotificationSetRequestMode_ReturnImmediately,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

newtype AdministratorWebTokenSpec_PermissionItem = AdministratorWebTokenSpec_PermissionItem {fromAdministratorWebTokenSpec_PermissionItem :: Core.Text}
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

-- | Unknown permission.
pattern AdministratorWebTokenSpec_PermissionItem_Unknown :: AdministratorWebTokenSpec_PermissionItem
pattern AdministratorWebTokenSpec_PermissionItem_Unknown = AdministratorWebTokenSpec_PermissionItem "unknown"

-- | Permission to approve and unapprove apps.
pattern AdministratorWebTokenSpec_PermissionItem_ApproveApps :: AdministratorWebTokenSpec_PermissionItem
pattern AdministratorWebTokenSpec_PermissionItem_ApproveApps = AdministratorWebTokenSpec_PermissionItem "approveApps"

-- | Permission to manage app restrictions.
pattern AdministratorWebTokenSpec_PermissionItem_ManageMcm :: AdministratorWebTokenSpec_PermissionItem
pattern AdministratorWebTokenSpec_PermissionItem_ManageMcm = AdministratorWebTokenSpec_PermissionItem "manageMcm"

{-# COMPLETE
  AdministratorWebTokenSpec_PermissionItem_Unknown,
  AdministratorWebTokenSpec_PermissionItem_ApproveApps,
  AdministratorWebTokenSpec_PermissionItem_ManageMcm,
  AdministratorWebTokenSpec_PermissionItem
  #-}

-- | The type of the restriction.
newtype AppRestrictionsSchemaRestriction_RestrictionType = AppRestrictionsSchemaRestriction_RestrictionType {fromAppRestrictionsSchemaRestriction_RestrictionType :: Core.Text}
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

-- | A restriction of boolean type.
pattern AppRestrictionsSchemaRestriction_RestrictionType_Bool :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Bool = AppRestrictionsSchemaRestriction_RestrictionType "bool"

-- | A restriction of string type.
pattern AppRestrictionsSchemaRestriction_RestrictionType_String :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_String = AppRestrictionsSchemaRestriction_RestrictionType "string"

-- | A restriction of integer type.
pattern AppRestrictionsSchemaRestriction_RestrictionType_Integer :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Integer = AppRestrictionsSchemaRestriction_RestrictionType "integer"

-- | A choice of one item from a set.
pattern AppRestrictionsSchemaRestriction_RestrictionType_Choice :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Choice = AppRestrictionsSchemaRestriction_RestrictionType "choice"

-- | A choice of multiple items from a set.
pattern AppRestrictionsSchemaRestriction_RestrictionType_Multiselect :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Multiselect = AppRestrictionsSchemaRestriction_RestrictionType "multiselect"

-- | A hidden restriction of string type (the default value can be used to pass along information that cannot be modified, such as a version code).
pattern AppRestrictionsSchemaRestriction_RestrictionType_Hidden :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Hidden = AppRestrictionsSchemaRestriction_RestrictionType "hidden"

-- | [M+ devices only] A bundle of restrictions
pattern AppRestrictionsSchemaRestriction_RestrictionType_Bundle :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_Bundle = AppRestrictionsSchemaRestriction_RestrictionType "bundle"

-- | [M+ devices only] An array of restriction bundles
pattern AppRestrictionsSchemaRestriction_RestrictionType_BundleArray :: AppRestrictionsSchemaRestriction_RestrictionType
pattern AppRestrictionsSchemaRestriction_RestrictionType_BundleArray = AppRestrictionsSchemaRestriction_RestrictionType "bundleArray"

{-# COMPLETE
  AppRestrictionsSchemaRestriction_RestrictionType_Bool,
  AppRestrictionsSchemaRestriction_RestrictionType_String,
  AppRestrictionsSchemaRestriction_RestrictionType_Integer,
  AppRestrictionsSchemaRestriction_RestrictionType_Choice,
  AppRestrictionsSchemaRestriction_RestrictionType_Multiselect,
  AppRestrictionsSchemaRestriction_RestrictionType_Hidden,
  AppRestrictionsSchemaRestriction_RestrictionType_Bundle,
  AppRestrictionsSchemaRestriction_RestrictionType_BundleArray,
  AppRestrictionsSchemaRestriction_RestrictionType
  #-}

-- | The type of the value being provided.
newtype AppRestrictionsSchemaRestrictionRestrictionValue_Type = AppRestrictionsSchemaRestrictionRestrictionValue_Type {fromAppRestrictionsSchemaRestrictionRestrictionValue_Type :: Core.Text}
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

-- | A restriction of boolean type.
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bool :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bool = AppRestrictionsSchemaRestrictionRestrictionValue_Type "bool"

-- | A restriction of string type.
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_String :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_String = AppRestrictionsSchemaRestrictionRestrictionValue_Type "string"

-- | A restriction of integer type.
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Integer :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Integer = AppRestrictionsSchemaRestrictionRestrictionValue_Type "integer"

-- | A choice of one item from a set.
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Choice :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Choice = AppRestrictionsSchemaRestrictionRestrictionValue_Type "choice"

-- | A choice of multiple items from a set.
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Multiselect :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Multiselect = AppRestrictionsSchemaRestrictionRestrictionValue_Type "multiselect"

-- | A hidden restriction of string type (the default value can be used to pass along information that cannot be modified, such as a version code).
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Hidden :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Hidden = AppRestrictionsSchemaRestrictionRestrictionValue_Type "hidden"

-- | [M+ devices only] A bundle of restrictions
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bundle :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bundle = AppRestrictionsSchemaRestrictionRestrictionValue_Type "bundle"

-- | [M+ devices only] An array of restriction bundles
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_BundleArray :: AppRestrictionsSchemaRestrictionRestrictionValue_Type
pattern AppRestrictionsSchemaRestrictionRestrictionValue_Type_BundleArray = AppRestrictionsSchemaRestrictionRestrictionValue_Type "bundleArray"

{-# COMPLETE
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bool,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_String,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Integer,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Choice,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Multiselect,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Hidden,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_Bundle,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type_BundleArray,
  AppRestrictionsSchemaRestrictionRestrictionValue_Type
  #-}

-- | Deprecated, use trackId instead.
newtype AppVersion_Track = AppVersion_Track {fromAppVersion_Track :: Core.Text}
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

pattern AppVersion_Track_AppTrackUnspecified :: AppVersion_Track
pattern AppVersion_Track_AppTrackUnspecified = AppVersion_Track "appTrackUnspecified"

pattern AppVersion_Track_Production :: AppVersion_Track
pattern AppVersion_Track_Production = AppVersion_Track "production"

pattern AppVersion_Track_Beta :: AppVersion_Track
pattern AppVersion_Track_Beta = AppVersion_Track "beta"

pattern AppVersion_Track_Alpha :: AppVersion_Track
pattern AppVersion_Track_Alpha = AppVersion_Track "alpha"

{-# COMPLETE
  AppVersion_Track_AppTrackUnspecified,
  AppVersion_Track_Production,
  AppVersion_Track_Beta,
  AppVersion_Track_Alpha,
  AppVersion_Track
  #-}

-- | Charging state constraint.
newtype AutoInstallConstraint_ChargingStateConstraint = AutoInstallConstraint_ChargingStateConstraint {fromAutoInstallConstraint_ChargingStateConstraint :: Core.Text}
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

pattern AutoInstallConstraint_ChargingStateConstraint_ChargingStateConstraintUnspecified :: AutoInstallConstraint_ChargingStateConstraint
pattern AutoInstallConstraint_ChargingStateConstraint_ChargingStateConstraintUnspecified = AutoInstallConstraint_ChargingStateConstraint "chargingStateConstraintUnspecified"

-- | Device doesn\'t have to be charging.
pattern AutoInstallConstraint_ChargingStateConstraint_ChargingNotRequired :: AutoInstallConstraint_ChargingStateConstraint
pattern AutoInstallConstraint_ChargingStateConstraint_ChargingNotRequired = AutoInstallConstraint_ChargingStateConstraint "chargingNotRequired"

-- | Device has to be charging.
pattern AutoInstallConstraint_ChargingStateConstraint_ChargingRequired :: AutoInstallConstraint_ChargingStateConstraint
pattern AutoInstallConstraint_ChargingStateConstraint_ChargingRequired = AutoInstallConstraint_ChargingStateConstraint "chargingRequired"

{-# COMPLETE
  AutoInstallConstraint_ChargingStateConstraint_ChargingStateConstraintUnspecified,
  AutoInstallConstraint_ChargingStateConstraint_ChargingNotRequired,
  AutoInstallConstraint_ChargingStateConstraint_ChargingRequired,
  AutoInstallConstraint_ChargingStateConstraint
  #-}

-- | Device idle state constraint.
newtype AutoInstallConstraint_DeviceIdleStateConstraint = AutoInstallConstraint_DeviceIdleStateConstraint {fromAutoInstallConstraint_DeviceIdleStateConstraint :: Core.Text}
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

pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleStateConstraintUnspecified :: AutoInstallConstraint_DeviceIdleStateConstraint
pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleStateConstraintUnspecified = AutoInstallConstraint_DeviceIdleStateConstraint "deviceIdleStateConstraintUnspecified"

-- | Device doesn\'t have to be idle, app can be installed while the user is interacting with the device.
pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleNotRequired :: AutoInstallConstraint_DeviceIdleStateConstraint
pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleNotRequired = AutoInstallConstraint_DeviceIdleStateConstraint "deviceIdleNotRequired"

-- | Device has to be idle.
pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleRequired :: AutoInstallConstraint_DeviceIdleStateConstraint
pattern AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleRequired = AutoInstallConstraint_DeviceIdleStateConstraint "deviceIdleRequired"

{-# COMPLETE
  AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleStateConstraintUnspecified,
  AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleNotRequired,
  AutoInstallConstraint_DeviceIdleStateConstraint_DeviceIdleRequired,
  AutoInstallConstraint_DeviceIdleStateConstraint
  #-}

-- | Network type constraint.
newtype AutoInstallConstraint_NetworkTypeConstraint = AutoInstallConstraint_NetworkTypeConstraint {fromAutoInstallConstraint_NetworkTypeConstraint :: Core.Text}
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

pattern AutoInstallConstraint_NetworkTypeConstraint_NetworkTypeConstraintUnspecified :: AutoInstallConstraint_NetworkTypeConstraint
pattern AutoInstallConstraint_NetworkTypeConstraint_NetworkTypeConstraintUnspecified = AutoInstallConstraint_NetworkTypeConstraint "networkTypeConstraintUnspecified"

-- | Any active networks (Wi-Fi, cellular, etc.).
pattern AutoInstallConstraint_NetworkTypeConstraint_AnyNetwork :: AutoInstallConstraint_NetworkTypeConstraint
pattern AutoInstallConstraint_NetworkTypeConstraint_AnyNetwork = AutoInstallConstraint_NetworkTypeConstraint "anyNetwork"

-- | Any unmetered network (e.g. Wi-FI).
pattern AutoInstallConstraint_NetworkTypeConstraint_UnmeteredNetwork :: AutoInstallConstraint_NetworkTypeConstraint
pattern AutoInstallConstraint_NetworkTypeConstraint_UnmeteredNetwork = AutoInstallConstraint_NetworkTypeConstraint "unmeteredNetwork"

{-# COMPLETE
  AutoInstallConstraint_NetworkTypeConstraint_NetworkTypeConstraintUnspecified,
  AutoInstallConstraint_NetworkTypeConstraint_AnyNetwork,
  AutoInstallConstraint_NetworkTypeConstraint_UnmeteredNetwork,
  AutoInstallConstraint_NetworkTypeConstraint
  #-}

-- | The auto-install mode. If unset, defaults to \"doNotAutoInstall\". An app is automatically installed regardless of a set maintenance window.
newtype AutoInstallPolicy_AutoInstallMode = AutoInstallPolicy_AutoInstallMode {fromAutoInstallPolicy_AutoInstallMode :: Core.Text}
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

pattern AutoInstallPolicy_AutoInstallMode_AutoInstallModeUnspecified :: AutoInstallPolicy_AutoInstallMode
pattern AutoInstallPolicy_AutoInstallMode_AutoInstallModeUnspecified = AutoInstallPolicy_AutoInstallMode "autoInstallModeUnspecified"

-- | The product is not installed automatically, the user needs to install it from the Play Store.
pattern AutoInstallPolicy_AutoInstallMode_DoNotAutoInstall :: AutoInstallPolicy_AutoInstallMode
pattern AutoInstallPolicy_AutoInstallMode_DoNotAutoInstall = AutoInstallPolicy_AutoInstallMode "doNotAutoInstall"

-- | The product is automatically installed once, if the user uninstalls the product it will not be installed again.
pattern AutoInstallPolicy_AutoInstallMode_AutoInstallOnce :: AutoInstallPolicy_AutoInstallMode
pattern AutoInstallPolicy_AutoInstallMode_AutoInstallOnce = AutoInstallPolicy_AutoInstallMode "autoInstallOnce"

-- | The product is automatically installed, if the user uninstalls the product it will be installed again. On managed devices the DPC should block uninstall.
pattern AutoInstallPolicy_AutoInstallMode_ForceAutoInstall :: AutoInstallPolicy_AutoInstallMode
pattern AutoInstallPolicy_AutoInstallMode_ForceAutoInstall = AutoInstallPolicy_AutoInstallMode "forceAutoInstall"

{-# COMPLETE
  AutoInstallPolicy_AutoInstallMode_AutoInstallModeUnspecified,
  AutoInstallPolicy_AutoInstallMode_DoNotAutoInstall,
  AutoInstallPolicy_AutoInstallMode_AutoInstallOnce,
  AutoInstallPolicy_AutoInstallMode_ForceAutoInstall,
  AutoInstallPolicy_AutoInstallMode
  #-}

-- | Identifies the extent to which the device is controlled by a managed Google Play EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device that has the EMM\'s device policy controller (DPC) as the device owner. - \"managedProfile\", a device that has a profile managed by the DPC (DPC is profile owner) in addition to a separate, personal profile that is unavailable to the DPC. - \"containerApp\", no longer used (deprecated). - \"unmanagedProfile\", a device that has been allowed (by the domain\'s admin, using the Admin Console to enable the privilege) to use managed Google Play, but the profile is itself not owned by a DPC.
newtype Device_ManagementType = Device_ManagementType {fromDevice_ManagementType :: Core.Text}
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

pattern Device_ManagementType_ManagedDevice :: Device_ManagementType
pattern Device_ManagementType_ManagedDevice = Device_ManagementType "managedDevice"

pattern Device_ManagementType_ManagedProfile :: Device_ManagementType
pattern Device_ManagementType_ManagedProfile = Device_ManagementType "managedProfile"

pattern Device_ManagementType_ContainerApp :: Device_ManagementType
pattern Device_ManagementType_ContainerApp = Device_ManagementType "containerApp"

pattern Device_ManagementType_UnmanagedProfile :: Device_ManagementType
pattern Device_ManagementType_UnmanagedProfile = Device_ManagementType "unmanagedProfile"

{-# COMPLETE
  Device_ManagementType_ManagedDevice,
  Device_ManagementType_ManagedProfile,
  Device_ManagementType_ContainerApp,
  Device_ManagementType_UnmanagedProfile,
  Device_ManagementType
  #-}

-- | The state of the Google account on the device. \"enabled\" indicates that the Google account on the device can be used to access Google services (including Google Play), while \"disabled\" means that it cannot. A new device is initially in the \"disabled\" state.
newtype DeviceState_AccountState = DeviceState_AccountState {fromDeviceState_AccountState :: Core.Text}
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

pattern DeviceState_AccountState_Enabled :: DeviceState_AccountState
pattern DeviceState_AccountState_Enabled = DeviceState_AccountState "enabled"

pattern DeviceState_AccountState_Disabled :: DeviceState_AccountState
pattern DeviceState_AccountState_Disabled = DeviceState_AccountState "disabled"

{-# COMPLETE
  DeviceState_AccountState_Enabled,
  DeviceState_AccountState_Disabled,
  DeviceState_AccountState
  #-}

-- | [Required] The type of the enrollment token.
newtype EnrollmentToken_EnrollmentTokenType = EnrollmentToken_EnrollmentTokenType {fromEnrollmentToken_EnrollmentTokenType :: Core.Text}
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

-- | The value is unused.
pattern EnrollmentToken_EnrollmentTokenType_EnrollmentTokenTypeUnspecified :: EnrollmentToken_EnrollmentTokenType
pattern EnrollmentToken_EnrollmentTokenType_EnrollmentTokenTypeUnspecified = EnrollmentToken_EnrollmentTokenType "enrollmentTokenTypeUnspecified"

-- | The enrollment token is for a userless device.
pattern EnrollmentToken_EnrollmentTokenType_UserlessDevice :: EnrollmentToken_EnrollmentTokenType
pattern EnrollmentToken_EnrollmentTokenType_UserlessDevice = EnrollmentToken_EnrollmentTokenType "userlessDevice"

-- | The enrollment token is for a user device.
pattern EnrollmentToken_EnrollmentTokenType_UserDevice :: EnrollmentToken_EnrollmentTokenType
pattern EnrollmentToken_EnrollmentTokenType_UserDevice = EnrollmentToken_EnrollmentTokenType "userDevice"

{-# COMPLETE
  EnrollmentToken_EnrollmentTokenType_EnrollmentTokenTypeUnspecified,
  EnrollmentToken_EnrollmentTokenType_UserlessDevice,
  EnrollmentToken_EnrollmentTokenType_UserDevice,
  EnrollmentToken_EnrollmentTokenType
  #-}

-- | The type of the enterprise.
newtype Enterprise_EnterpriseType = Enterprise_EnterpriseType {fromEnterprise_EnterpriseType :: Core.Text}
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

-- | This value is not used.
pattern Enterprise_EnterpriseType_EnterpriseTypeUnspecified :: Enterprise_EnterpriseType
pattern Enterprise_EnterpriseType_EnterpriseTypeUnspecified = Enterprise_EnterpriseType "enterpriseTypeUnspecified"

-- | The enterprise belongs to a managed Google domain.
pattern Enterprise_EnterpriseType_ManagedGoogleDomain :: Enterprise_EnterpriseType
pattern Enterprise_EnterpriseType_ManagedGoogleDomain = Enterprise_EnterpriseType "managedGoogleDomain"

-- | The enterprise is a managed Google Play Accounts enterprise.
pattern Enterprise_EnterpriseType_ManagedGooglePlayAccountsEnterprise :: Enterprise_EnterpriseType
pattern Enterprise_EnterpriseType_ManagedGooglePlayAccountsEnterprise = Enterprise_EnterpriseType "managedGooglePlayAccountsEnterprise"

{-# COMPLETE
  Enterprise_EnterpriseType_EnterpriseTypeUnspecified,
  Enterprise_EnterpriseType_ManagedGoogleDomain,
  Enterprise_EnterpriseType_ManagedGooglePlayAccountsEnterprise,
  Enterprise_EnterpriseType
  #-}

-- | The type of managed Google domain
newtype Enterprise_ManagedGoogleDomainType = Enterprise_ManagedGoogleDomainType {fromEnterprise_ManagedGoogleDomainType :: Core.Text}
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

-- | The managed Google domain type is not specified.
pattern Enterprise_ManagedGoogleDomainType_ManagedGoogleDomainTypeUnspecified :: Enterprise_ManagedGoogleDomainType
pattern Enterprise_ManagedGoogleDomainType_ManagedGoogleDomainTypeUnspecified = Enterprise_ManagedGoogleDomainType "managedGoogleDomainTypeUnspecified"

-- | The managed Google domain is an email-verified team.
pattern Enterprise_ManagedGoogleDomainType_TypeTeam :: Enterprise_ManagedGoogleDomainType
pattern Enterprise_ManagedGoogleDomainType_TypeTeam = Enterprise_ManagedGoogleDomainType "typeTeam"

-- | The managed Google domain is domain-verified.
pattern Enterprise_ManagedGoogleDomainType_TypeDomain :: Enterprise_ManagedGoogleDomainType
pattern Enterprise_ManagedGoogleDomainType_TypeDomain = Enterprise_ManagedGoogleDomainType "typeDomain"

{-# COMPLETE
  Enterprise_ManagedGoogleDomainType_ManagedGoogleDomainTypeUnspecified,
  Enterprise_ManagedGoogleDomainType_TypeTeam,
  Enterprise_ManagedGoogleDomainType_TypeDomain,
  Enterprise_ManagedGoogleDomainType
  #-}

-- | The upgrade state.
newtype EnterpriseUpgradeEvent_UpgradeState = EnterpriseUpgradeEvent_UpgradeState {fromEnterpriseUpgradeEvent_UpgradeState :: Core.Text}
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

-- | Unspecified. This value is not used.
pattern EnterpriseUpgradeEvent_UpgradeState_UpgradeStateUnspecified :: EnterpriseUpgradeEvent_UpgradeState
pattern EnterpriseUpgradeEvent_UpgradeState_UpgradeStateUnspecified = EnterpriseUpgradeEvent_UpgradeState "upgradeStateUnspecified"

-- | The upgrade has succeeded.
pattern EnterpriseUpgradeEvent_UpgradeState_UpgradeStateSucceeded :: EnterpriseUpgradeEvent_UpgradeState
pattern EnterpriseUpgradeEvent_UpgradeState_UpgradeStateSucceeded = EnterpriseUpgradeEvent_UpgradeState "upgradeStateSucceeded"

{-# COMPLETE
  EnterpriseUpgradeEvent_UpgradeState_UpgradeStateUnspecified,
  EnterpriseUpgradeEvent_UpgradeState_UpgradeStateSucceeded,
  EnterpriseUpgradeEvent_UpgradeState
  #-}

-- | The reason for the entitlement. For example, \"free\" for free apps. This property is temporary: it will be replaced by the acquisition kind field of group licenses.
newtype Entitlement_Reason = Entitlement_Reason {fromEntitlement_Reason :: Core.Text}
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

pattern Entitlement_Reason_Free :: Entitlement_Reason
pattern Entitlement_Reason_Free = Entitlement_Reason "free"

pattern Entitlement_Reason_GroupLicense :: Entitlement_Reason
pattern Entitlement_Reason_GroupLicense = Entitlement_Reason "groupLicense"

pattern Entitlement_Reason_UserPurchase :: Entitlement_Reason
pattern Entitlement_Reason_UserPurchase = Entitlement_Reason "userPurchase"

{-# COMPLETE
  Entitlement_Reason_Free,
  Entitlement_Reason_GroupLicense,
  Entitlement_Reason_UserPurchase,
  Entitlement_Reason
  #-}

-- | Whether dedicated devices are allowed.
newtype GoogleAuthenticationSettings_DedicatedDevicesAllowed = GoogleAuthenticationSettings_DedicatedDevicesAllowed {fromGoogleAuthenticationSettings_DedicatedDevicesAllowed :: Core.Text}
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

-- | This value is unused.
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_DedicatedDevicesAllowedUnspecified :: GoogleAuthenticationSettings_DedicatedDevicesAllowed
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_DedicatedDevicesAllowedUnspecified = GoogleAuthenticationSettings_DedicatedDevicesAllowed "dedicatedDevicesAllowedUnspecified"

-- | Dedicated devices are not allowed.
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_Disallowed :: GoogleAuthenticationSettings_DedicatedDevicesAllowed
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_Disallowed = GoogleAuthenticationSettings_DedicatedDevicesAllowed "disallowed"

-- | Dedicated devices are allowed.
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_Allowed :: GoogleAuthenticationSettings_DedicatedDevicesAllowed
pattern GoogleAuthenticationSettings_DedicatedDevicesAllowed_Allowed = GoogleAuthenticationSettings_DedicatedDevicesAllowed "allowed"

{-# COMPLETE
  GoogleAuthenticationSettings_DedicatedDevicesAllowed_DedicatedDevicesAllowedUnspecified,
  GoogleAuthenticationSettings_DedicatedDevicesAllowed_Disallowed,
  GoogleAuthenticationSettings_DedicatedDevicesAllowed_Allowed,
  GoogleAuthenticationSettings_DedicatedDevicesAllowed
  #-}

-- | Whether Google authentication is required.
newtype GoogleAuthenticationSettings_GoogleAuthenticationRequired = GoogleAuthenticationSettings_GoogleAuthenticationRequired {fromGoogleAuthenticationSettings_GoogleAuthenticationRequired :: Core.Text}
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

-- | This value is unused.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_GoogleAuthenticationRequiredUnspecified :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_GoogleAuthenticationRequiredUnspecified = GoogleAuthenticationSettings_GoogleAuthenticationRequired "googleAuthenticationRequiredUnspecified"

-- | Google authentication is not required.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_NotRequired :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_NotRequired = GoogleAuthenticationSettings_GoogleAuthenticationRequired "notRequired"

-- | User is required to be successfully authenticated by Google.
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required :: GoogleAuthenticationSettings_GoogleAuthenticationRequired
pattern GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required = GoogleAuthenticationSettings_GoogleAuthenticationRequired "required"

{-# COMPLETE
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_GoogleAuthenticationRequiredUnspecified,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_NotRequired,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired_Required,
  GoogleAuthenticationSettings_GoogleAuthenticationRequired
  #-}

-- | How this group license was acquired. \"bulkPurchase\" means that this Grouplicenses resource was created because the enterprise purchased licenses for this product; otherwise, the value is \"free\" (for free products).
newtype GroupLicense_AcquisitionKind = GroupLicense_AcquisitionKind {fromGroupLicense_AcquisitionKind :: Core.Text}
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

pattern GroupLicense_AcquisitionKind_Free :: GroupLicense_AcquisitionKind
pattern GroupLicense_AcquisitionKind_Free = GroupLicense_AcquisitionKind "free"

pattern GroupLicense_AcquisitionKind_BulkPurchase :: GroupLicense_AcquisitionKind
pattern GroupLicense_AcquisitionKind_BulkPurchase = GroupLicense_AcquisitionKind "bulkPurchase"

{-# COMPLETE
  GroupLicense_AcquisitionKind_Free,
  GroupLicense_AcquisitionKind_BulkPurchase,
  GroupLicense_AcquisitionKind
  #-}

-- | Whether the product to which this group license relates is currently approved by the enterprise. Products are approved when a group license is first created, but this approval may be revoked by an enterprise admin via Google Play. Unapproved products will not be visible to end users in collections, and new entitlements to them should not normally be created.
newtype GroupLicense_Approval = GroupLicense_Approval {fromGroupLicense_Approval :: Core.Text}
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

pattern GroupLicense_Approval_Approved :: GroupLicense_Approval
pattern GroupLicense_Approval_Approved = GroupLicense_Approval "approved"

pattern GroupLicense_Approval_Unapproved :: GroupLicense_Approval
pattern GroupLicense_Approval_Unapproved = GroupLicense_Approval "unapproved"

{-# COMPLETE
  GroupLicense_Approval_Approved,
  GroupLicense_Approval_Unapproved,
  GroupLicense_Approval
  #-}

-- | The permission approval status of the product. This field is only set if the product is approved. Possible states are: - \"currentApproved\", the current set of permissions is approved, but additional permissions will require the administrator to reapprove the product (If the product was approved without specifying the approved permissions setting, then this is the default behavior.), - \"needsReapproval\", the product has unapproved permissions. No additional product licenses can be assigned until the product is reapproved, - \"allCurrentAndFutureApproved\", the current permissions are approved and any future permission updates will be automatically approved without administrator review.
newtype GroupLicense_Permissions = GroupLicense_Permissions {fromGroupLicense_Permissions :: Core.Text}
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

pattern GroupLicense_Permissions_CurrentApproved :: GroupLicense_Permissions
pattern GroupLicense_Permissions_CurrentApproved = GroupLicense_Permissions "currentApproved"

pattern GroupLicense_Permissions_NeedsReapproval :: GroupLicense_Permissions
pattern GroupLicense_Permissions_NeedsReapproval = GroupLicense_Permissions "needsReapproval"

pattern GroupLicense_Permissions_AllCurrentAndFutureApproved :: GroupLicense_Permissions
pattern GroupLicense_Permissions_AllCurrentAndFutureApproved = GroupLicense_Permissions "allCurrentAndFutureApproved"

{-# COMPLETE
  GroupLicense_Permissions_CurrentApproved,
  GroupLicense_Permissions_NeedsReapproval,
  GroupLicense_Permissions_AllCurrentAndFutureApproved,
  GroupLicense_Permissions
  #-}

-- | Install state. The state \"installPending\" means that an install request has recently been made and download to the device is in progress. The state \"installed\" means that the app has been installed. This field is read-only.
newtype Install_InstallState = Install_InstallState {fromInstall_InstallState :: Core.Text}
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

pattern Install_InstallState_Installed :: Install_InstallState
pattern Install_InstallState_Installed = Install_InstallState "installed"

pattern Install_InstallState_InstallPending :: Install_InstallState
pattern Install_InstallState_InstallPending = Install_InstallState "installPending"

{-# COMPLETE
  Install_InstallState_Installed,
  Install_InstallState_InstallPending,
  Install_InstallState
  #-}

-- | The reason for the installation failure. This field will always be present.
newtype InstallFailureEvent_FailureReason = InstallFailureEvent_FailureReason {fromInstallFailureEvent_FailureReason :: Core.Text}
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

-- | Used whenever no better reason for failure can be provided.
pattern InstallFailureEvent_FailureReason_Unknown :: InstallFailureEvent_FailureReason
pattern InstallFailureEvent_FailureReason_Unknown = InstallFailureEvent_FailureReason "unknown"

-- | Used when the installation timed out. This can cover a number of situations, for example when the device did not have connectivity at any point during the retry period, or if the device is OOM.
pattern InstallFailureEvent_FailureReason_Timeout :: InstallFailureEvent_FailureReason
pattern InstallFailureEvent_FailureReason_Timeout = InstallFailureEvent_FailureReason "timeout"

{-# COMPLETE
  InstallFailureEvent_FailureReason_Unknown,
  InstallFailureEvent_FailureReason_Timeout,
  InstallFailureEvent_FailureReason
  #-}

-- | Severity of the app state. This field will always be present.
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

pattern KeyedAppState_Severity_SeverityUnknown :: KeyedAppState_Severity
pattern KeyedAppState_Severity_SeverityUnknown = KeyedAppState_Severity "severityUnknown"

pattern KeyedAppState_Severity_SeverityInfo :: KeyedAppState_Severity
pattern KeyedAppState_Severity_SeverityInfo = KeyedAppState_Severity "severityInfo"

pattern KeyedAppState_Severity_SeverityError :: KeyedAppState_Severity
pattern KeyedAppState_Severity_SeverityError = KeyedAppState_Severity "severityError"

{-# COMPLETE
  KeyedAppState_Severity_SeverityUnknown,
  KeyedAppState_Severity_SeverityInfo,
  KeyedAppState_Severity_SeverityError,
  KeyedAppState_Severity
  #-}

-- | Identifies the extent to which the device is controlled by an Android EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device where the DPC is set as device owner, - \"managedProfile\", a device where the DPC is set as profile owner.
newtype NewDeviceEvent_ManagementType = NewDeviceEvent_ManagementType {fromNewDeviceEvent_ManagementType :: Core.Text}
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

pattern NewDeviceEvent_ManagementType_ManagedDevice :: NewDeviceEvent_ManagementType
pattern NewDeviceEvent_ManagementType_ManagedDevice = NewDeviceEvent_ManagementType "managedDevice"

pattern NewDeviceEvent_ManagementType_ManagedProfile :: NewDeviceEvent_ManagementType
pattern NewDeviceEvent_ManagementType_ManagedProfile = NewDeviceEvent_ManagementType "managedProfile"

{-# COMPLETE
  NewDeviceEvent_ManagementType_ManagedDevice,
  NewDeviceEvent_ManagementType_ManagedProfile,
  NewDeviceEvent_ManagementType
  #-}

-- | Type of the notification.
newtype Notification_NotificationType = Notification_NotificationType {fromNotification_NotificationType :: Core.Text}
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

pattern Notification_NotificationType_Unknown :: Notification_NotificationType
pattern Notification_NotificationType_Unknown = Notification_NotificationType "unknown"

-- | A test push notification.
pattern Notification_NotificationType_TestNotification :: Notification_NotificationType
pattern Notification_NotificationType_TestNotification = Notification_NotificationType "testNotification"

-- | Notification about change to a product\'s approval status.
pattern Notification_NotificationType_ProductApproval :: Notification_NotificationType
pattern Notification_NotificationType_ProductApproval = Notification_NotificationType "productApproval"

-- | Notification about an app installation failure.
pattern Notification_NotificationType_InstallFailure :: Notification_NotificationType
pattern Notification_NotificationType_InstallFailure = Notification_NotificationType "installFailure"

-- | Notification about app update.
pattern Notification_NotificationType_AppUpdate :: Notification_NotificationType
pattern Notification_NotificationType_AppUpdate = Notification_NotificationType "appUpdate"

-- | Notification about new app permissions.
pattern Notification_NotificationType_NewPermissions :: Notification_NotificationType
pattern Notification_NotificationType_NewPermissions = Notification_NotificationType "newPermissions"

-- | Notification about new app restrictions schema change.
pattern Notification_NotificationType_AppRestricionsSchemaChange :: Notification_NotificationType
pattern Notification_NotificationType_AppRestricionsSchemaChange = Notification_NotificationType "appRestricionsSchemaChange"

-- | Notification about product availability change.
pattern Notification_NotificationType_ProductAvailabilityChange :: Notification_NotificationType
pattern Notification_NotificationType_ProductAvailabilityChange = Notification_NotificationType "productAvailabilityChange"

-- | Notification about a new device.
pattern Notification_NotificationType_NewDevice :: Notification_NotificationType
pattern Notification_NotificationType_NewDevice = Notification_NotificationType "newDevice"

-- | Notification about an updated device report.
pattern Notification_NotificationType_DeviceReportUpdate :: Notification_NotificationType
pattern Notification_NotificationType_DeviceReportUpdate = Notification_NotificationType "deviceReportUpdate"

-- | Notification about an enterprise upgrade. __Note:__ This feature is not generally available.
pattern Notification_NotificationType_EnterpriseUpgrade :: Notification_NotificationType
pattern Notification_NotificationType_EnterpriseUpgrade = Notification_NotificationType "enterpriseUpgrade"

{-# COMPLETE
  Notification_NotificationType_Unknown,
  Notification_NotificationType_TestNotification,
  Notification_NotificationType_ProductApproval,
  Notification_NotificationType_InstallFailure,
  Notification_NotificationType_AppUpdate,
  Notification_NotificationType_NewPermissions,
  Notification_NotificationType_AppRestricionsSchemaChange,
  Notification_NotificationType_ProductAvailabilityChange,
  Notification_NotificationType_NewDevice,
  Notification_NotificationType_DeviceReportUpdate,
  Notification_NotificationType_EnterpriseUpgrade,
  Notification_NotificationType
  #-}

-- | Controls when automatic app updates on the device can be applied. Recommended alternative: autoUpdateMode which is set per app, provides greater flexibility around update frequency. When autoUpdateMode is set to AUTO/UPDATE/POSTPONED or AUTO/UPDATE/HIGH_PRIORITY, autoUpdatePolicy has no effect. - choiceToTheUser allows the device\'s user to configure the app update policy. - always enables auto updates. - never disables auto updates. - wifiOnly enables auto updates only when the device is connected to wifi. /Important:/ Changes to app update policies don\'t affect updates that are in progress. Any policy changes will apply to subsequent app updates.
newtype Policy_AutoUpdatePolicy = Policy_AutoUpdatePolicy {fromPolicy_AutoUpdatePolicy :: Core.Text}
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

-- | The auto update policy is not set.
pattern Policy_AutoUpdatePolicy_AutoUpdatePolicyUnspecified :: Policy_AutoUpdatePolicy
pattern Policy_AutoUpdatePolicy_AutoUpdatePolicyUnspecified = Policy_AutoUpdatePolicy "autoUpdatePolicyUnspecified"

-- | The user can control auto-updates.
pattern Policy_AutoUpdatePolicy_ChoiceToTheUser :: Policy_AutoUpdatePolicy
pattern Policy_AutoUpdatePolicy_ChoiceToTheUser = Policy_AutoUpdatePolicy "choiceToTheUser"

-- | Apps are never auto-updated.
pattern Policy_AutoUpdatePolicy_Never :: Policy_AutoUpdatePolicy
pattern Policy_AutoUpdatePolicy_Never = Policy_AutoUpdatePolicy "never"

-- | Apps are auto-updated over WiFi only.
pattern Policy_AutoUpdatePolicy_WifiOnly :: Policy_AutoUpdatePolicy
pattern Policy_AutoUpdatePolicy_WifiOnly = Policy_AutoUpdatePolicy "wifiOnly"

-- | Apps are auto-updated at any time. Data charges may apply.
pattern Policy_AutoUpdatePolicy_Always :: Policy_AutoUpdatePolicy
pattern Policy_AutoUpdatePolicy_Always = Policy_AutoUpdatePolicy "always"

{-# COMPLETE
  Policy_AutoUpdatePolicy_AutoUpdatePolicyUnspecified,
  Policy_AutoUpdatePolicy_ChoiceToTheUser,
  Policy_AutoUpdatePolicy_Never,
  Policy_AutoUpdatePolicy_WifiOnly,
  Policy_AutoUpdatePolicy_Always,
  Policy_AutoUpdatePolicy
  #-}

-- | Whether the device reports app states to the EMM. The default value is \"deviceReportDisabled\".
newtype Policy_DeviceReportPolicy = Policy_DeviceReportPolicy {fromPolicy_DeviceReportPolicy :: Core.Text}
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

-- | The device report policy is not set.
pattern Policy_DeviceReportPolicy_DeviceReportPolicyUnspecified :: Policy_DeviceReportPolicy
pattern Policy_DeviceReportPolicy_DeviceReportPolicyUnspecified = Policy_DeviceReportPolicy "deviceReportPolicyUnspecified"

-- | Device reports are disabled.
pattern Policy_DeviceReportPolicy_DeviceReportDisabled :: Policy_DeviceReportPolicy
pattern Policy_DeviceReportPolicy_DeviceReportDisabled = Policy_DeviceReportPolicy "deviceReportDisabled"

-- | Device reports are enabled.
pattern Policy_DeviceReportPolicy_DeviceReportEnabled :: Policy_DeviceReportPolicy
pattern Policy_DeviceReportPolicy_DeviceReportEnabled = Policy_DeviceReportPolicy "deviceReportEnabled"

{-# COMPLETE
  Policy_DeviceReportPolicy_DeviceReportPolicyUnspecified,
  Policy_DeviceReportPolicy_DeviceReportDisabled,
  Policy_DeviceReportPolicy_DeviceReportEnabled,
  Policy_DeviceReportPolicy
  #-}

-- | The availability granted to the device for the specified products. \"all\" gives the device access to all products, regardless of approval status. \"all\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks. \"whitelist\" grants the device access the products specified in productPolicy[]. Only products that are approved or products that were previously approved (products with revoked approval) by the enterprise can be whitelisted. If no value is provided, the availability set at the user level is applied by default.
newtype Policy_ProductAvailabilityPolicy = Policy_ProductAvailabilityPolicy {fromPolicy_ProductAvailabilityPolicy :: Core.Text}
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

-- | Unspecified, applies the user available product set by default.
pattern Policy_ProductAvailabilityPolicy_ProductAvailabilityPolicyUnspecified :: Policy_ProductAvailabilityPolicy
pattern Policy_ProductAvailabilityPolicy_ProductAvailabilityPolicyUnspecified = Policy_ProductAvailabilityPolicy "productAvailabilityPolicyUnspecified"

-- | The approved products with product availability set to AVAILABLE in the product policy are available.
pattern Policy_ProductAvailabilityPolicy_Whitelist :: Policy_ProductAvailabilityPolicy
pattern Policy_ProductAvailabilityPolicy_Whitelist = Policy_ProductAvailabilityPolicy "whitelist"

-- | All products are available except those explicitly marked as unavailable in the product availability policy.
pattern Policy_ProductAvailabilityPolicy_All :: Policy_ProductAvailabilityPolicy
pattern Policy_ProductAvailabilityPolicy_All = Policy_ProductAvailabilityPolicy "all"

{-# COMPLETE
  Policy_ProductAvailabilityPolicy_ProductAvailabilityPolicyUnspecified,
  Policy_ProductAvailabilityPolicy_Whitelist,
  Policy_ProductAvailabilityPolicy_All,
  Policy_ProductAvailabilityPolicy
  #-}

newtype Product_AvailableTracksItem = Product_AvailableTracksItem {fromProduct_AvailableTracksItem :: Core.Text}
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

pattern Product_AvailableTracksItem_AppTrackUnspecified :: Product_AvailableTracksItem
pattern Product_AvailableTracksItem_AppTrackUnspecified = Product_AvailableTracksItem "appTrackUnspecified"

pattern Product_AvailableTracksItem_Production :: Product_AvailableTracksItem
pattern Product_AvailableTracksItem_Production = Product_AvailableTracksItem "production"

pattern Product_AvailableTracksItem_Beta :: Product_AvailableTracksItem
pattern Product_AvailableTracksItem_Beta = Product_AvailableTracksItem "beta"

pattern Product_AvailableTracksItem_Alpha :: Product_AvailableTracksItem
pattern Product_AvailableTracksItem_Alpha = Product_AvailableTracksItem "alpha"

{-# COMPLETE
  Product_AvailableTracksItem_AppTrackUnspecified,
  Product_AvailableTracksItem_Production,
  Product_AvailableTracksItem_Beta,
  Product_AvailableTracksItem_Alpha,
  Product_AvailableTracksItem
  #-}

-- | The content rating for this app.
newtype Product_ContentRating = Product_ContentRating {fromProduct_ContentRating :: Core.Text}
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

pattern Product_ContentRating_RatingUnknown :: Product_ContentRating
pattern Product_ContentRating_RatingUnknown = Product_ContentRating "ratingUnknown"

pattern Product_ContentRating_All :: Product_ContentRating
pattern Product_ContentRating_All = Product_ContentRating "all"

pattern Product_ContentRating_PreTeen :: Product_ContentRating
pattern Product_ContentRating_PreTeen = Product_ContentRating "preTeen"

pattern Product_ContentRating_Teen :: Product_ContentRating
pattern Product_ContentRating_Teen = Product_ContentRating "teen"

pattern Product_ContentRating_Mature :: Product_ContentRating
pattern Product_ContentRating_Mature = Product_ContentRating "mature"

{-# COMPLETE
  Product_ContentRating_RatingUnknown,
  Product_ContentRating_All,
  Product_ContentRating_PreTeen,
  Product_ContentRating_Teen,
  Product_ContentRating_Mature,
  Product_ContentRating
  #-}

-- | How and to whom the package is made available. The value publicGoogleHosted means that the package is available through the Play store and not restricted to a specific enterprise. The value privateGoogleHosted means that the package is a private app (restricted to an enterprise) but hosted by Google. The value privateSelfHosted means that the package is a private app (restricted to an enterprise) and is privately hosted.
newtype Product_DistributionChannel = Product_DistributionChannel {fromProduct_DistributionChannel :: Core.Text}
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

pattern Product_DistributionChannel_PublicGoogleHosted :: Product_DistributionChannel
pattern Product_DistributionChannel_PublicGoogleHosted = Product_DistributionChannel "publicGoogleHosted"

pattern Product_DistributionChannel_PrivateGoogleHosted :: Product_DistributionChannel
pattern Product_DistributionChannel_PrivateGoogleHosted = Product_DistributionChannel "privateGoogleHosted"

pattern Product_DistributionChannel_PrivateSelfHosted :: Product_DistributionChannel
pattern Product_DistributionChannel_PrivateSelfHosted = Product_DistributionChannel "privateSelfHosted"

{-# COMPLETE
  Product_DistributionChannel_PublicGoogleHosted,
  Product_DistributionChannel_PrivateGoogleHosted,
  Product_DistributionChannel_PrivateSelfHosted,
  Product_DistributionChannel
  #-}

newtype Product_FeaturesItem = Product_FeaturesItem {fromProduct_FeaturesItem :: Core.Text}
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

pattern Product_FeaturesItem_FeatureUnknown :: Product_FeaturesItem
pattern Product_FeaturesItem_FeatureUnknown = Product_FeaturesItem "featureUnknown"

-- | The app is a VPN.
pattern Product_FeaturesItem_VpnApp :: Product_FeaturesItem
pattern Product_FeaturesItem_VpnApp = Product_FeaturesItem "vpnApp"

{-# COMPLETE
  Product_FeaturesItem_FeatureUnknown,
  Product_FeaturesItem_VpnApp,
  Product_FeaturesItem
  #-}

-- | Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, this means the product is not generally available anymore (even though it might still be available to people who own it).
newtype Product_ProductPricing = Product_ProductPricing {fromProduct_ProductPricing :: Core.Text}
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

-- | Unknown pricing, used to denote an approved product that is not generally available.
pattern Product_ProductPricing_Unknown :: Product_ProductPricing
pattern Product_ProductPricing_Unknown = Product_ProductPricing "unknown"

-- | The product is free.
pattern Product_ProductPricing_Free :: Product_ProductPricing
pattern Product_ProductPricing_Free = Product_ProductPricing "free"

-- | The product is free, but offers in-app purchases.
pattern Product_ProductPricing_FreeWithInAppPurchase :: Product_ProductPricing
pattern Product_ProductPricing_FreeWithInAppPurchase = Product_ProductPricing "freeWithInAppPurchase"

-- | The product is paid.
pattern Product_ProductPricing_Paid :: Product_ProductPricing
pattern Product_ProductPricing_Paid = Product_ProductPricing "paid"

{-# COMPLETE
  Product_ProductPricing_Unknown,
  Product_ProductPricing_Free,
  Product_ProductPricing_FreeWithInAppPurchase,
  Product_ProductPricing_Paid,
  Product_ProductPricing
  #-}

-- | Whether the product was approved or unapproved. This field will always be present.
newtype ProductApprovalEvent_Approved = ProductApprovalEvent_Approved {fromProductApprovalEvent_Approved :: Core.Text}
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

-- | Conveys no information.
pattern ProductApprovalEvent_Approved_Unknown :: ProductApprovalEvent_Approved
pattern ProductApprovalEvent_Approved_Unknown = ProductApprovalEvent_Approved "unknown"

-- | The product was approved.
pattern ProductApprovalEvent_Approved_Approved :: ProductApprovalEvent_Approved
pattern ProductApprovalEvent_Approved_Approved = ProductApprovalEvent_Approved "approved"

-- | The product was unapproved.
pattern ProductApprovalEvent_Approved_Unapproved :: ProductApprovalEvent_Approved
pattern ProductApprovalEvent_Approved_Unapproved = ProductApprovalEvent_Approved "unapproved"

{-# COMPLETE
  ProductApprovalEvent_Approved_Unknown,
  ProductApprovalEvent_Approved_Approved,
  ProductApprovalEvent_Approved_Unapproved,
  ProductApprovalEvent_Approved
  #-}

-- | The new state of the product. This field will always be present.
newtype ProductAvailabilityChangeEvent_AvailabilityStatus = ProductAvailabilityChangeEvent_AvailabilityStatus {fromProductAvailabilityChangeEvent_AvailabilityStatus :: Core.Text}
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

-- | Conveys no information.
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Unknown :: ProductAvailabilityChangeEvent_AvailabilityStatus
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Unknown = ProductAvailabilityChangeEvent_AvailabilityStatus "unknown"

-- | The previously unavailable product is again available on Google Play.
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Available :: ProductAvailabilityChangeEvent_AvailabilityStatus
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Available = ProductAvailabilityChangeEvent_AvailabilityStatus "available"

-- | The product was removed from Google Play.
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Removed :: ProductAvailabilityChangeEvent_AvailabilityStatus
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Removed = ProductAvailabilityChangeEvent_AvailabilityStatus "removed"

-- | The product was unpublished by the developer.
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Unpublished :: ProductAvailabilityChangeEvent_AvailabilityStatus
pattern ProductAvailabilityChangeEvent_AvailabilityStatus_Unpublished = ProductAvailabilityChangeEvent_AvailabilityStatus "unpublished"

{-# COMPLETE
  ProductAvailabilityChangeEvent_AvailabilityStatus_Unknown,
  ProductAvailabilityChangeEvent_AvailabilityStatus_Available,
  ProductAvailabilityChangeEvent_AvailabilityStatus_Removed,
  ProductAvailabilityChangeEvent_AvailabilityStatus_Unpublished,
  ProductAvailabilityChangeEvent_AvailabilityStatus
  #-}

-- | Whether the permission has been accepted or not.
newtype ProductPermission_State = ProductPermission_State {fromProductPermission_State :: Core.Text}
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

-- | The permission is required by the app but has not yet been accepted by the enterprise.
pattern ProductPermission_State_Required :: ProductPermission_State
pattern ProductPermission_State_Required = ProductPermission_State "required"

-- | The permission has been accepted by the enterprise.
pattern ProductPermission_State_Accepted :: ProductPermission_State
pattern ProductPermission_State_Accepted = ProductPermission_State "accepted"

{-# COMPLETE
  ProductPermission_State_Required,
  ProductPermission_State_Accepted,
  ProductPermission_State
  #-}

-- | The auto-update mode for the product. When autoUpdateMode is used, it always takes precedence over the user\'s choice. So when a user makes changes to the device settings manually, these changes are ignored.
newtype ProductPolicy_AutoUpdateMode = ProductPolicy_AutoUpdateMode {fromProductPolicy_AutoUpdateMode :: Core.Text}
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
pattern ProductPolicy_AutoUpdateMode_AutoUpdateModeUnspecified :: ProductPolicy_AutoUpdateMode
pattern ProductPolicy_AutoUpdateMode_AutoUpdateModeUnspecified = ProductPolicy_AutoUpdateMode "autoUpdateModeUnspecified"

-- | The app is automatically updated with low priority to minimize the impact on the user. The app is updated when the following constraints are met: * The device is not actively used * The device is connected to an unmetered network * The device is charging The device is notified about a new update within 24 hours after it is published by the developer, after which the app is updated the next time the constraints above are met.
pattern ProductPolicy_AutoUpdateMode_AutoUpdateDefault :: ProductPolicy_AutoUpdateMode
pattern ProductPolicy_AutoUpdateMode_AutoUpdateDefault = ProductPolicy_AutoUpdateMode "autoUpdateDefault"

-- | The app is not automatically updated for a maximum of 90 days after the app becomes out of date. 90 days after the app becomes out of date, the latest available version is installed automatically with low priority (see AUTO/UPDATE/DEFAULT). After the app is updated it is not automatically updated again until 90 days after it becomes out of date again. The user can still manually update the app from the Play Store at any time.
pattern ProductPolicy_AutoUpdateMode_AutoUpdatePostponed :: ProductPolicy_AutoUpdateMode
pattern ProductPolicy_AutoUpdateMode_AutoUpdatePostponed = ProductPolicy_AutoUpdateMode "autoUpdatePostponed"

-- | The app is updated as soon as possible. No constraints are applied. The device is notified as soon as possible about a new app update after it is published by the developer.
pattern ProductPolicy_AutoUpdateMode_AutoUpdateHighPriority :: ProductPolicy_AutoUpdateMode
pattern ProductPolicy_AutoUpdateMode_AutoUpdateHighPriority = ProductPolicy_AutoUpdateMode "autoUpdateHighPriority"

{-# COMPLETE
  ProductPolicy_AutoUpdateMode_AutoUpdateModeUnspecified,
  ProductPolicy_AutoUpdateMode_AutoUpdateDefault,
  ProductPolicy_AutoUpdateMode_AutoUpdatePostponed,
  ProductPolicy_AutoUpdateMode_AutoUpdateHighPriority,
  ProductPolicy_AutoUpdateMode
  #-}

newtype ProductPolicy_TracksItem = ProductPolicy_TracksItem {fromProductPolicy_TracksItem :: Core.Text}
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

pattern ProductPolicy_TracksItem_AppTrackUnspecified :: ProductPolicy_TracksItem
pattern ProductPolicy_TracksItem_AppTrackUnspecified = ProductPolicy_TracksItem "appTrackUnspecified"

pattern ProductPolicy_TracksItem_Production :: ProductPolicy_TracksItem
pattern ProductPolicy_TracksItem_Production = ProductPolicy_TracksItem "production"

pattern ProductPolicy_TracksItem_Beta :: ProductPolicy_TracksItem
pattern ProductPolicy_TracksItem_Beta = ProductPolicy_TracksItem "beta"

pattern ProductPolicy_TracksItem_Alpha :: ProductPolicy_TracksItem
pattern ProductPolicy_TracksItem_Alpha = ProductPolicy_TracksItem "alpha"

{-# COMPLETE
  ProductPolicy_TracksItem_AppTrackUnspecified,
  ProductPolicy_TracksItem_Production,
  ProductPolicy_TracksItem_Beta,
  ProductPolicy_TracksItem_Alpha,
  ProductPolicy_TracksItem
  #-}

-- | The interpretation of this product set. \"unknown\" should never be sent and is ignored if received. \"whitelist\" means that the user is entitled to access the product set. \"includeAll\" means that all products are accessible, including products that are approved, products with revoked approval, and products that have never been approved. \"allApproved\" means that the user is entitled to access all products that are approved for the enterprise. If the value is \"allApproved\" or \"includeAll\", the productId field is ignored. If no value is provided, it is interpreted as \"whitelist\" for backwards compatibility. Further \"allApproved\" or \"includeAll\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks for Android app. Use ProductVisibility to enable \"alpha\" or \"beta\" tracks per user.
newtype ProductSet_ProductSetBehavior = ProductSet_ProductSetBehavior {fromProductSet_ProductSetBehavior :: Core.Text}
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

-- | This value should never be sent and ignored if received.
pattern ProductSet_ProductSetBehavior_Unknown :: ProductSet_ProductSetBehavior
pattern ProductSet_ProductSetBehavior_Unknown = ProductSet_ProductSetBehavior "unknown"

-- | This product set constitutes a whitelist.
pattern ProductSet_ProductSetBehavior_Whitelist :: ProductSet_ProductSetBehavior
pattern ProductSet_ProductSetBehavior_Whitelist = ProductSet_ProductSetBehavior "whitelist"

-- | This product set represents all products. For Android app it represents only \"production\" track. (The value of the productId field is therefore ignored).
pattern ProductSet_ProductSetBehavior_IncludeAll :: ProductSet_ProductSetBehavior
pattern ProductSet_ProductSetBehavior_IncludeAll = ProductSet_ProductSetBehavior "includeAll"

-- | This product set represents all approved products. For Android app it represents only \"production\" track. (The value of the product_id field is therefore ignored).
pattern ProductSet_ProductSetBehavior_AllApproved :: ProductSet_ProductSetBehavior
pattern ProductSet_ProductSetBehavior_AllApproved = ProductSet_ProductSetBehavior "allApproved"

{-# COMPLETE
  ProductSet_ProductSetBehavior_Unknown,
  ProductSet_ProductSetBehavior_Whitelist,
  ProductSet_ProductSetBehavior_IncludeAll,
  ProductSet_ProductSetBehavior_AllApproved,
  ProductSet_ProductSetBehavior
  #-}

newtype ProductVisibility_TracksItem = ProductVisibility_TracksItem {fromProductVisibility_TracksItem :: Core.Text}
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

pattern ProductVisibility_TracksItem_AppTrackUnspecified :: ProductVisibility_TracksItem
pattern ProductVisibility_TracksItem_AppTrackUnspecified = ProductVisibility_TracksItem "appTrackUnspecified"

pattern ProductVisibility_TracksItem_Production :: ProductVisibility_TracksItem
pattern ProductVisibility_TracksItem_Production = ProductVisibility_TracksItem "production"

pattern ProductVisibility_TracksItem_Beta :: ProductVisibility_TracksItem
pattern ProductVisibility_TracksItem_Beta = ProductVisibility_TracksItem "beta"

pattern ProductVisibility_TracksItem_Alpha :: ProductVisibility_TracksItem
pattern ProductVisibility_TracksItem_Alpha = ProductVisibility_TracksItem "alpha"

{-# COMPLETE
  ProductVisibility_TracksItem_AppTrackUnspecified,
  ProductVisibility_TracksItem_Production,
  ProductVisibility_TracksItem_Beta,
  ProductVisibility_TracksItem_Alpha,
  ProductVisibility_TracksItem
  #-}

-- | Sets how new permission requests for the product are handled. \"allPermissions\" automatically approves all current and future permissions for the product. \"currentPermissionsOnly\" approves the current set of permissions for the product, but any future permissions added through updates will require manual reapproval. If not specified, only the current set of permissions will be approved.
newtype ProductsApproveRequest_ApprovedPermissions = ProductsApproveRequest_ApprovedPermissions {fromProductsApproveRequest_ApprovedPermissions :: Core.Text}
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

-- | Approve only the permissions the product requires at approval time. If an update requires additional permissions, the app will not be updated on devices associated with enterprise users until the additional permissions are approved.
pattern ProductsApproveRequest_ApprovedPermissions_CurrentPermissionsOnly :: ProductsApproveRequest_ApprovedPermissions
pattern ProductsApproveRequest_ApprovedPermissions_CurrentPermissionsOnly = ProductsApproveRequest_ApprovedPermissions "currentPermissionsOnly"

-- | All current and future permissions the app requires are automatically approved.
pattern ProductsApproveRequest_ApprovedPermissions_AllPermissions :: ProductsApproveRequest_ApprovedPermissions
pattern ProductsApproveRequest_ApprovedPermissions_AllPermissions = ProductsApproveRequest_ApprovedPermissions "allPermissions"

{-# COMPLETE
  ProductsApproveRequest_ApprovedPermissions_CurrentPermissionsOnly,
  ProductsApproveRequest_ApprovedPermissions_AllPermissions,
  ProductsApproveRequest_ApprovedPermissions
  #-}

-- | The file format of the generated key data.
newtype ServiceAccountKey_Type = ServiceAccountKey_Type {fromServiceAccountKey_Type :: Core.Text}
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

-- | Google Credentials File format.
pattern ServiceAccountKey_Type_GoogleCredentials :: ServiceAccountKey_Type
pattern ServiceAccountKey_Type_GoogleCredentials = ServiceAccountKey_Type "googleCredentials"

-- | PKCS12 format. The password for the PKCS12 file is \'notasecret\'. For more information, see https:\/\/tools.ietf.org\/html\/rfc7292. The data for keys of this type are base64 encoded according to RFC 4648 Section 4. See http:\/\/tools.ietf.org\/html\/rfc4648#section-4.
pattern ServiceAccountKey_Type_PKCS12 :: ServiceAccountKey_Type
pattern ServiceAccountKey_Type_PKCS12 = ServiceAccountKey_Type "pkcs12"

{-# COMPLETE
  ServiceAccountKey_Type_GoogleCredentials,
  ServiceAccountKey_Type_PKCS12,
  ServiceAccountKey_Type
  #-}

-- | The store layout type. By default, this value is set to \"basic\" if the homepageId field is not set, and to \"custom\" otherwise. If set to \"basic\", the layout will consist of all approved apps that have been whitelisted for the user.
newtype StoreLayout_StoreLayoutType = StoreLayout_StoreLayoutType {fromStoreLayout_StoreLayoutType :: Core.Text}
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

pattern StoreLayout_StoreLayoutType_Unknown :: StoreLayout_StoreLayoutType
pattern StoreLayout_StoreLayoutType_Unknown = StoreLayout_StoreLayoutType "unknown"

pattern StoreLayout_StoreLayoutType_Basic :: StoreLayout_StoreLayoutType
pattern StoreLayout_StoreLayoutType_Basic = StoreLayout_StoreLayoutType "basic"

pattern StoreLayout_StoreLayoutType_Custom :: StoreLayout_StoreLayoutType
pattern StoreLayout_StoreLayoutType_Custom = StoreLayout_StoreLayoutType "custom"

{-# COMPLETE
  StoreLayout_StoreLayoutType_Unknown,
  StoreLayout_StoreLayoutType_Basic,
  StoreLayout_StoreLayoutType_Custom,
  StoreLayout_StoreLayoutType
  #-}

-- | The type of account that this user represents. A userAccount can be installed on multiple devices, but a deviceAccount is specific to a single device. An EMM-managed user (emmManaged) can be either type (userAccount, deviceAccount), but a Google-managed user (googleManaged) is always a userAccount.
newtype User_AccountType = User_AccountType {fromUser_AccountType :: Core.Text}
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

pattern User_AccountType_DeviceAccount :: User_AccountType
pattern User_AccountType_DeviceAccount = User_AccountType "deviceAccount"

pattern User_AccountType_UserAccount :: User_AccountType
pattern User_AccountType_UserAccount = User_AccountType "userAccount"

{-# COMPLETE
  User_AccountType_DeviceAccount,
  User_AccountType_UserAccount,
  User_AccountType
  #-}

-- | The entity that manages the user. With googleManaged users, the source of truth is Google so EMMs have to make sure a Google Account exists for the user. With emmManaged users, the EMM is in charge.
newtype User_ManagementType = User_ManagementType {fromUser_ManagementType :: Core.Text}
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

pattern User_ManagementType_GoogleManaged :: User_ManagementType
pattern User_ManagementType_GoogleManaged = User_ManagementType "googleManaged"

pattern User_ManagementType_EmmManaged :: User_ManagementType
pattern User_ManagementType_EmmManaged = User_ManagementType "emmManaged"

{-# COMPLETE
  User_ManagementType_GoogleManaged,
  User_ManagementType_EmmManaged,
  User_ManagementType
  #-}

-- | The display mode of the web app. Possible values include: - \"minimalUi\", the device\'s status bar, navigation bar, the app\'s URL, and a refresh button are visible when the app is open. For HTTP URLs, you can only select this option. - \"standalone\", the device\'s status bar and navigation bar are visible when the app is open. - \"fullScreen\", the app opens in full screen mode, hiding the device\'s status and navigation bars. All browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.
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

pattern WebApp_DisplayMode_DisplayModeUnspecified :: WebApp_DisplayMode
pattern WebApp_DisplayMode_DisplayModeUnspecified = WebApp_DisplayMode "displayModeUnspecified"

-- | Opens the web app with a minimal set of browser UI elements for controlling navigation and viewing the page URL.
pattern WebApp_DisplayMode_MinimalUi :: WebApp_DisplayMode
pattern WebApp_DisplayMode_MinimalUi = WebApp_DisplayMode "minimalUi"

-- | Opens the web app to look and feel like a standalone native application. The browser UI elements and page URL are not visible, however the system status bar and back button are visible.
pattern WebApp_DisplayMode_Standalone :: WebApp_DisplayMode
pattern WebApp_DisplayMode_Standalone = WebApp_DisplayMode "standalone"

-- | Opens the web app in full screen without any visible controls. The browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.
pattern WebApp_DisplayMode_FullScreen :: WebApp_DisplayMode
pattern WebApp_DisplayMode_FullScreen = WebApp_DisplayMode "fullScreen"

{-# COMPLETE
  WebApp_DisplayMode_DisplayModeUnspecified,
  WebApp_DisplayMode_MinimalUi,
  WebApp_DisplayMode_Standalone,
  WebApp_DisplayMode_FullScreen,
  WebApp_DisplayMode
  #-}

-- | The type of credential to return with the service account. Required.
newtype EnterprisesGetServiceAccountKeyType = EnterprisesGetServiceAccountKeyType {fromEnterprisesGetServiceAccountKeyType :: Core.Text}
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

-- | Google Credentials File format.
pattern EnterprisesGetServiceAccountKeyType_GoogleCredentials :: EnterprisesGetServiceAccountKeyType
pattern EnterprisesGetServiceAccountKeyType_GoogleCredentials = EnterprisesGetServiceAccountKeyType "googleCredentials"

-- | PKCS12 format. The password for the PKCS12 file is \'notasecret\'. For more information, see https:\/\/tools.ietf.org\/html\/rfc7292. The data for keys of this type are base64 encoded according to RFC 4648 Section 4. See http:\/\/tools.ietf.org\/html\/rfc4648#section-4.
pattern EnterprisesGetServiceAccountKeyType_PKCS12 :: EnterprisesGetServiceAccountKeyType
pattern EnterprisesGetServiceAccountKeyType_PKCS12 = EnterprisesGetServiceAccountKeyType "pkcs12"

{-# COMPLETE
  EnterprisesGetServiceAccountKeyType_GoogleCredentials,
  EnterprisesGetServiceAccountKeyType_PKCS12,
  EnterprisesGetServiceAccountKeyType
  #-}

-- | The request mode for pulling notifications. Specifying waitForNotifications will cause the request to block and wait until one or more notifications are present, or return an empty notification list if no notifications are present after some time. Specifying returnImmediately will cause the request to immediately return the pending notifications, or an empty list if no notifications are present. If omitted, defaults to waitForNotifications.
newtype EnterprisesPullNotificationSetRequestMode = EnterprisesPullNotificationSetRequestMode {fromEnterprisesPullNotificationSetRequestMode :: Core.Text}
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

-- | Wait until one or more notifications are present.
pattern EnterprisesPullNotificationSetRequestMode_WaitForNotifications :: EnterprisesPullNotificationSetRequestMode
pattern EnterprisesPullNotificationSetRequestMode_WaitForNotifications = EnterprisesPullNotificationSetRequestMode "waitForNotifications"

-- | Returns immediately whether notifications are present or not.
pattern EnterprisesPullNotificationSetRequestMode_ReturnImmediately :: EnterprisesPullNotificationSetRequestMode
pattern EnterprisesPullNotificationSetRequestMode_ReturnImmediately = EnterprisesPullNotificationSetRequestMode "returnImmediately"

{-# COMPLETE
  EnterprisesPullNotificationSetRequestMode_WaitForNotifications,
  EnterprisesPullNotificationSetRequestMode_ReturnImmediately,
  EnterprisesPullNotificationSetRequestMode
  #-}
