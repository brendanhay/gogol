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
-- Module      : Network.Google.AndroidEnterprise.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AndroidEnterprise.Types
  ( -- * Configuration
    androidEnterpriseService,

    -- * OAuth Scopes
    androidEnterpriseScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Administrator
    Administrator (..),
    newAdministrator,

    -- ** AdministratorWebToken
    AdministratorWebToken (..),
    newAdministratorWebToken,

    -- ** AdministratorWebTokenSpec
    AdministratorWebTokenSpec (..),
    newAdministratorWebTokenSpec,

    -- ** AdministratorWebTokenSpec_PermissionItem
    AdministratorWebTokenSpec_PermissionItem (..),

    -- ** AdministratorWebTokenSpecManagedConfigurations
    AdministratorWebTokenSpecManagedConfigurations (..),
    newAdministratorWebTokenSpecManagedConfigurations,

    -- ** AdministratorWebTokenSpecPlaySearch
    AdministratorWebTokenSpecPlaySearch (..),
    newAdministratorWebTokenSpecPlaySearch,

    -- ** AdministratorWebTokenSpecPrivateApps
    AdministratorWebTokenSpecPrivateApps (..),
    newAdministratorWebTokenSpecPrivateApps,

    -- ** AdministratorWebTokenSpecStoreBuilder
    AdministratorWebTokenSpecStoreBuilder (..),
    newAdministratorWebTokenSpecStoreBuilder,

    -- ** AdministratorWebTokenSpecWebApps
    AdministratorWebTokenSpecWebApps (..),
    newAdministratorWebTokenSpecWebApps,

    -- ** AdministratorWebTokenSpecZeroTouch
    AdministratorWebTokenSpecZeroTouch (..),
    newAdministratorWebTokenSpecZeroTouch,

    -- ** AppRestrictionsSchema
    AppRestrictionsSchema (..),
    newAppRestrictionsSchema,

    -- ** AppRestrictionsSchemaChangeEvent
    AppRestrictionsSchemaChangeEvent (..),
    newAppRestrictionsSchemaChangeEvent,

    -- ** AppRestrictionsSchemaRestriction
    AppRestrictionsSchemaRestriction (..),
    newAppRestrictionsSchemaRestriction,

    -- ** AppRestrictionsSchemaRestriction_RestrictionType
    AppRestrictionsSchemaRestriction_RestrictionType (..),

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    AppRestrictionsSchemaRestrictionRestrictionValue (..),
    newAppRestrictionsSchemaRestrictionRestrictionValue,

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue_Type
    AppRestrictionsSchemaRestrictionRestrictionValue_Type (..),

    -- ** AppState
    AppState (..),
    newAppState,

    -- ** AppUpdateEvent
    AppUpdateEvent (..),
    newAppUpdateEvent,

    -- ** AppVersion
    AppVersion (..),
    newAppVersion,

    -- ** AppVersion_Track
    AppVersion_Track (..),

    -- ** ApprovalUrlInfo
    ApprovalUrlInfo (..),
    newApprovalUrlInfo,

    -- ** AuthenticationToken
    AuthenticationToken (..),
    newAuthenticationToken,

    -- ** AutoInstallConstraint
    AutoInstallConstraint (..),
    newAutoInstallConstraint,

    -- ** AutoInstallConstraint_ChargingStateConstraint
    AutoInstallConstraint_ChargingStateConstraint (..),

    -- ** AutoInstallConstraint_DeviceIdleStateConstraint
    AutoInstallConstraint_DeviceIdleStateConstraint (..),

    -- ** AutoInstallConstraint_NetworkTypeConstraint
    AutoInstallConstraint_NetworkTypeConstraint (..),

    -- ** AutoInstallPolicy
    AutoInstallPolicy (..),
    newAutoInstallPolicy,

    -- ** AutoInstallPolicy_AutoInstallMode
    AutoInstallPolicy_AutoInstallMode (..),

    -- ** ConfigurationVariables
    ConfigurationVariables (..),
    newConfigurationVariables,

    -- ** Device
    Device (..),
    newDevice,

    -- ** Device_ManagementType
    Device_ManagementType (..),

    -- ** DeviceReport
    DeviceReport (..),
    newDeviceReport,

    -- ** DeviceReportUpdateEvent
    DeviceReportUpdateEvent (..),
    newDeviceReportUpdateEvent,

    -- ** DeviceState
    DeviceState (..),
    newDeviceState,

    -- ** DeviceState_AccountState
    DeviceState_AccountState (..),

    -- ** DevicesListResponse
    DevicesListResponse (..),
    newDevicesListResponse,

    -- ** Enterprise
    Enterprise (..),
    newEnterprise,

    -- ** EnterpriseAccount
    EnterpriseAccount (..),
    newEnterpriseAccount,

    -- ** EnterprisesListResponse
    EnterprisesListResponse (..),
    newEnterprisesListResponse,

    -- ** EnterprisesSendTestPushNotificationResponse
    EnterprisesSendTestPushNotificationResponse (..),
    newEnterprisesSendTestPushNotificationResponse,

    -- ** Entitlement
    Entitlement (..),
    newEntitlement,

    -- ** Entitlement_Reason
    Entitlement_Reason (..),

    -- ** EntitlementsListResponse
    EntitlementsListResponse (..),
    newEntitlementsListResponse,

    -- ** GroupLicense
    GroupLicense (..),
    newGroupLicense,

    -- ** GroupLicense_AcquisitionKind
    GroupLicense_AcquisitionKind (..),

    -- ** GroupLicense_Approval
    GroupLicense_Approval (..),

    -- ** GroupLicense_Permissions
    GroupLicense_Permissions (..),

    -- ** GroupLicenseUsersListResponse
    GroupLicenseUsersListResponse (..),
    newGroupLicenseUsersListResponse,

    -- ** GroupLicensesListResponse
    GroupLicensesListResponse (..),
    newGroupLicensesListResponse,

    -- ** Install
    Install (..),
    newInstall,

    -- ** Install_InstallState
    Install_InstallState (..),

    -- ** InstallFailureEvent
    InstallFailureEvent (..),
    newInstallFailureEvent,

    -- ** InstallFailureEvent_FailureReason
    InstallFailureEvent_FailureReason (..),

    -- ** InstallsListResponse
    InstallsListResponse (..),
    newInstallsListResponse,

    -- ** KeyedAppState
    KeyedAppState (..),
    newKeyedAppState,

    -- ** KeyedAppState_Severity
    KeyedAppState_Severity (..),

    -- ** LocalizedText
    LocalizedText (..),
    newLocalizedText,

    -- ** MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- ** ManagedConfiguration
    ManagedConfiguration (..),
    newManagedConfiguration,

    -- ** ManagedConfigurationsForDeviceListResponse
    ManagedConfigurationsForDeviceListResponse (..),
    newManagedConfigurationsForDeviceListResponse,

    -- ** ManagedConfigurationsForUserListResponse
    ManagedConfigurationsForUserListResponse (..),
    newManagedConfigurationsForUserListResponse,

    -- ** ManagedConfigurationsSettings
    ManagedConfigurationsSettings (..),
    newManagedConfigurationsSettings,

    -- ** ManagedConfigurationsSettingsListResponse
    ManagedConfigurationsSettingsListResponse (..),
    newManagedConfigurationsSettingsListResponse,

    -- ** ManagedProperty
    ManagedProperty (..),
    newManagedProperty,

    -- ** ManagedPropertyBundle
    ManagedPropertyBundle (..),
    newManagedPropertyBundle,

    -- ** NewDeviceEvent
    NewDeviceEvent (..),
    newNewDeviceEvent,

    -- ** NewDeviceEvent_ManagementType
    NewDeviceEvent_ManagementType (..),

    -- ** NewPermissionsEvent
    NewPermissionsEvent (..),
    newNewPermissionsEvent,

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** Notification_NotificationType
    Notification_NotificationType (..),

    -- ** NotificationSet
    NotificationSet (..),
    newNotificationSet,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_AutoUpdatePolicy
    Policy_AutoUpdatePolicy (..),

    -- ** Policy_DeviceReportPolicy
    Policy_DeviceReportPolicy (..),

    -- ** Policy_ProductAvailabilityPolicy
    Policy_ProductAvailabilityPolicy (..),

    -- ** Product
    Product (..),
    newProduct,

    -- ** Product_AvailableTracksItem
    Product_AvailableTracksItem (..),

    -- ** Product_ContentRating
    Product_ContentRating (..),

    -- ** Product_DistributionChannel
    Product_DistributionChannel (..),

    -- ** Product_FeaturesItem
    Product_FeaturesItem (..),

    -- ** Product_ProductPricing
    Product_ProductPricing (..),

    -- ** ProductApprovalEvent
    ProductApprovalEvent (..),
    newProductApprovalEvent,

    -- ** ProductApprovalEvent_Approved
    ProductApprovalEvent_Approved (..),

    -- ** ProductAvailabilityChangeEvent
    ProductAvailabilityChangeEvent (..),
    newProductAvailabilityChangeEvent,

    -- ** ProductAvailabilityChangeEvent_AvailabilityStatus
    ProductAvailabilityChangeEvent_AvailabilityStatus (..),

    -- ** ProductPermission
    ProductPermission (..),
    newProductPermission,

    -- ** ProductPermission_State
    ProductPermission_State (..),

    -- ** ProductPermissions
    ProductPermissions (..),
    newProductPermissions,

    -- ** ProductPolicy
    ProductPolicy (..),
    newProductPolicy,

    -- ** ProductPolicy_AutoUpdateMode
    ProductPolicy_AutoUpdateMode (..),

    -- ** ProductPolicy_TracksItem
    ProductPolicy_TracksItem (..),

    -- ** ProductSet
    ProductSet (..),
    newProductSet,

    -- ** ProductSet_ProductSetBehavior
    ProductSet_ProductSetBehavior (..),

    -- ** ProductSigningCertificate
    ProductSigningCertificate (..),
    newProductSigningCertificate,

    -- ** ProductVisibility
    ProductVisibility (..),
    newProductVisibility,

    -- ** ProductVisibility_TracksItem
    ProductVisibility_TracksItem (..),

    -- ** ProductsApproveRequest
    ProductsApproveRequest (..),
    newProductsApproveRequest,

    -- ** ProductsApproveRequest_ApprovedPermissions
    ProductsApproveRequest_ApprovedPermissions (..),

    -- ** ProductsGenerateApprovalUrlResponse
    ProductsGenerateApprovalUrlResponse (..),
    newProductsGenerateApprovalUrlResponse,

    -- ** ProductsListResponse
    ProductsListResponse (..),
    newProductsListResponse,

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceAccountKey
    ServiceAccountKey (..),
    newServiceAccountKey,

    -- ** ServiceAccountKey_Type
    ServiceAccountKey_Type (..),

    -- ** ServiceAccountKeysListResponse
    ServiceAccountKeysListResponse (..),
    newServiceAccountKeysListResponse,

    -- ** SignupInfo
    SignupInfo (..),
    newSignupInfo,

    -- ** StoreCluster
    StoreCluster (..),
    newStoreCluster,

    -- ** StoreLayout
    StoreLayout (..),
    newStoreLayout,

    -- ** StoreLayout_StoreLayoutType
    StoreLayout_StoreLayoutType (..),

    -- ** StoreLayoutClustersListResponse
    StoreLayoutClustersListResponse (..),
    newStoreLayoutClustersListResponse,

    -- ** StoreLayoutPagesListResponse
    StoreLayoutPagesListResponse (..),
    newStoreLayoutPagesListResponse,

    -- ** StorePage
    StorePage (..),
    newStorePage,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- ** TrackInfo
    TrackInfo (..),
    newTrackInfo,

    -- ** User
    User (..),
    newUser,

    -- ** User_AccountType
    User_AccountType (..),

    -- ** User_ManagementType
    User_ManagementType (..),

    -- ** UsersListResponse
    UsersListResponse (..),
    newUsersListResponse,

    -- ** VariableSet
    VariableSet (..),
    newVariableSet,

    -- ** WebApp
    WebApp (..),
    newWebApp,

    -- ** WebApp_DisplayMode
    WebApp_DisplayMode (..),

    -- ** WebAppIcon
    WebAppIcon (..),
    newWebAppIcon,

    -- ** WebAppsListResponse
    WebAppsListResponse (..),
    newWebAppsListResponse,

    -- ** EnterprisesGetServiceAccountKeyType
    EnterprisesGetServiceAccountKeyType (..),

    -- ** EnterprisesPullNotificationSetRequestMode
    EnterprisesPullNotificationSetRequestMode (..),
  )
where

import Network.Google.AndroidEnterprise.Internal.Product
import Network.Google.AndroidEnterprise.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Google Play EMM API. This contains the host and root path used as a starting point for constructing service requests.
androidEnterpriseService :: Core.ServiceConfig
androidEnterpriseService =
  Core.defaultService
    (Core.ServiceId "androidenterprise:v1")
    "androidenterprise.googleapis.com"

-- | Manage corporate Android devices
androidEnterpriseScope :: Core.Proxy '["https://www.googleapis.com/auth/androidenterprise"]
androidEnterpriseScope = Core.Proxy
