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
-- Module      : Network.Google.AndroidEnterprise
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the deployment of apps to Android Enterprise devices.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference>
module Network.Google.AndroidEnterprise
  ( -- * Configuration
    androidEnterpriseService,

    -- * OAuth Scopes
    androidEnterpriseScope,

    -- * Resources

    -- ** androidenterprise.devices.forceReportUpload
    AndroidEnterpriseDevicesForceReportUploadResource,
    newAndroidEnterpriseDevicesForceReportUpload,
    AndroidEnterpriseDevicesForceReportUpload,

    -- ** androidenterprise.devices.get
    AndroidEnterpriseDevicesGetResource,
    newAndroidEnterpriseDevicesGet,
    AndroidEnterpriseDevicesGet,

    -- ** androidenterprise.devices.getState
    AndroidEnterpriseDevicesGetStateResource,
    newAndroidEnterpriseDevicesGetState,
    AndroidEnterpriseDevicesGetState,

    -- ** androidenterprise.devices.list
    AndroidEnterpriseDevicesListResource,
    newAndroidEnterpriseDevicesList,
    AndroidEnterpriseDevicesList,

    -- ** androidenterprise.devices.setState
    AndroidEnterpriseDevicesSetStateResource,
    newAndroidEnterpriseDevicesSetState,
    AndroidEnterpriseDevicesSetState,

    -- ** androidenterprise.devices.update
    AndroidEnterpriseDevicesUpdateResource,
    newAndroidEnterpriseDevicesUpdate,
    AndroidEnterpriseDevicesUpdate,

    -- ** androidenterprise.enterprises.acknowledgeNotificationSet
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource,
    newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet,
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSet,

    -- ** androidenterprise.enterprises.completeSignup
    AndroidEnterpriseEnterprisesCompleteSignupResource,
    newAndroidEnterpriseEnterprisesCompleteSignup,
    AndroidEnterpriseEnterprisesCompleteSignup,

    -- ** androidenterprise.enterprises.createWebToken
    AndroidEnterpriseEnterprisesCreateWebTokenResource,
    newAndroidEnterpriseEnterprisesCreateWebToken,
    AndroidEnterpriseEnterprisesCreateWebToken,

    -- ** androidenterprise.enterprises.enroll
    AndroidEnterpriseEnterprisesEnrollResource,
    newAndroidEnterpriseEnterprisesEnroll,
    AndroidEnterpriseEnterprisesEnroll,

    -- ** androidenterprise.enterprises.generateSignupUrl
    AndroidEnterpriseEnterprisesGenerateSignupUrlResource,
    newAndroidEnterpriseEnterprisesGenerateSignupUrl,
    AndroidEnterpriseEnterprisesGenerateSignupUrl,

    -- ** androidenterprise.enterprises.get
    AndroidEnterpriseEnterprisesGetResource,
    newAndroidEnterpriseEnterprisesGet,
    AndroidEnterpriseEnterprisesGet,

    -- ** androidenterprise.enterprises.getServiceAccount
    AndroidEnterpriseEnterprisesGetServiceAccountResource,
    newAndroidEnterpriseEnterprisesGetServiceAccount,
    AndroidEnterpriseEnterprisesGetServiceAccount,

    -- ** androidenterprise.enterprises.getStoreLayout
    AndroidEnterpriseEnterprisesGetStoreLayoutResource,
    newAndroidEnterpriseEnterprisesGetStoreLayout,
    AndroidEnterpriseEnterprisesGetStoreLayout,

    -- ** androidenterprise.enterprises.list
    AndroidEnterpriseEnterprisesListResource,
    newAndroidEnterpriseEnterprisesList,
    AndroidEnterpriseEnterprisesList,

    -- ** androidenterprise.enterprises.pullNotificationSet
    AndroidEnterpriseEnterprisesPullNotificationSetResource,
    newAndroidEnterpriseEnterprisesPullNotificationSet,
    AndroidEnterpriseEnterprisesPullNotificationSet,

    -- ** androidenterprise.enterprises.sendTestPushNotification
    AndroidEnterpriseEnterprisesSendTestPushNotificationResource,
    newAndroidEnterpriseEnterprisesSendTestPushNotification,
    AndroidEnterpriseEnterprisesSendTestPushNotification,

    -- ** androidenterprise.enterprises.setAccount
    AndroidEnterpriseEnterprisesSetAccountResource,
    newAndroidEnterpriseEnterprisesSetAccount,
    AndroidEnterpriseEnterprisesSetAccount,

    -- ** androidenterprise.enterprises.setStoreLayout
    AndroidEnterpriseEnterprisesSetStoreLayoutResource,
    newAndroidEnterpriseEnterprisesSetStoreLayout,
    AndroidEnterpriseEnterprisesSetStoreLayout,

    -- ** androidenterprise.enterprises.unenroll
    AndroidEnterpriseEnterprisesUnenrollResource,
    newAndroidEnterpriseEnterprisesUnenroll,
    AndroidEnterpriseEnterprisesUnenroll,

    -- ** androidenterprise.entitlements.delete
    AndroidEnterpriseEntitlementsDeleteResource,
    newAndroidEnterpriseEntitlementsDelete,
    AndroidEnterpriseEntitlementsDelete,

    -- ** androidenterprise.entitlements.get
    AndroidEnterpriseEntitlementsGetResource,
    newAndroidEnterpriseEntitlementsGet,
    AndroidEnterpriseEntitlementsGet,

    -- ** androidenterprise.entitlements.list
    AndroidEnterpriseEntitlementsListResource,
    newAndroidEnterpriseEntitlementsList,
    AndroidEnterpriseEntitlementsList,

    -- ** androidenterprise.entitlements.update
    AndroidEnterpriseEntitlementsUpdateResource,
    newAndroidEnterpriseEntitlementsUpdate,
    AndroidEnterpriseEntitlementsUpdate,

    -- ** androidenterprise.grouplicenses.get
    AndroidEnterpriseGrouplicensesGetResource,
    newAndroidEnterpriseGrouplicensesGet,
    AndroidEnterpriseGrouplicensesGet,

    -- ** androidenterprise.grouplicenses.list
    AndroidEnterpriseGrouplicensesListResource,
    newAndroidEnterpriseGrouplicensesList,
    AndroidEnterpriseGrouplicensesList,

    -- ** androidenterprise.grouplicenseusers.list
    AndroidEnterpriseGrouplicenseusersListResource,
    newAndroidEnterpriseGrouplicenseusersList,
    AndroidEnterpriseGrouplicenseusersList,

    -- ** androidenterprise.installs.delete
    AndroidEnterpriseInstallsDeleteResource,
    newAndroidEnterpriseInstallsDelete,
    AndroidEnterpriseInstallsDelete,

    -- ** androidenterprise.installs.get
    AndroidEnterpriseInstallsGetResource,
    newAndroidEnterpriseInstallsGet,
    AndroidEnterpriseInstallsGet,

    -- ** androidenterprise.installs.list
    AndroidEnterpriseInstallsListResource,
    newAndroidEnterpriseInstallsList,
    AndroidEnterpriseInstallsList,

    -- ** androidenterprise.installs.update
    AndroidEnterpriseInstallsUpdateResource,
    newAndroidEnterpriseInstallsUpdate,
    AndroidEnterpriseInstallsUpdate,

    -- ** androidenterprise.managedconfigurationsfordevice.delete
    AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource,
    newAndroidEnterpriseManagedconfigurationsfordeviceDelete,
    AndroidEnterpriseManagedconfigurationsfordeviceDelete,

    -- ** androidenterprise.managedconfigurationsfordevice.get
    AndroidEnterpriseManagedconfigurationsfordeviceGetResource,
    newAndroidEnterpriseManagedconfigurationsfordeviceGet,
    AndroidEnterpriseManagedconfigurationsfordeviceGet,

    -- ** androidenterprise.managedconfigurationsfordevice.list
    AndroidEnterpriseManagedconfigurationsfordeviceListResource,
    newAndroidEnterpriseManagedconfigurationsfordeviceList,
    AndroidEnterpriseManagedconfigurationsfordeviceList,

    -- ** androidenterprise.managedconfigurationsfordevice.update
    AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource,
    newAndroidEnterpriseManagedconfigurationsfordeviceUpdate,
    AndroidEnterpriseManagedconfigurationsfordeviceUpdate,

    -- ** androidenterprise.managedconfigurationsforuser.delete
    AndroidEnterpriseManagedconfigurationsforuserDeleteResource,
    newAndroidEnterpriseManagedconfigurationsforuserDelete,
    AndroidEnterpriseManagedconfigurationsforuserDelete,

    -- ** androidenterprise.managedconfigurationsforuser.get
    AndroidEnterpriseManagedconfigurationsforuserGetResource,
    newAndroidEnterpriseManagedconfigurationsforuserGet,
    AndroidEnterpriseManagedconfigurationsforuserGet,

    -- ** androidenterprise.managedconfigurationsforuser.list
    AndroidEnterpriseManagedconfigurationsforuserListResource,
    newAndroidEnterpriseManagedconfigurationsforuserList,
    AndroidEnterpriseManagedconfigurationsforuserList,

    -- ** androidenterprise.managedconfigurationsforuser.update
    AndroidEnterpriseManagedconfigurationsforuserUpdateResource,
    newAndroidEnterpriseManagedconfigurationsforuserUpdate,
    AndroidEnterpriseManagedconfigurationsforuserUpdate,

    -- ** androidenterprise.managedconfigurationssettings.list
    AndroidEnterpriseManagedconfigurationssettingsListResource,
    newAndroidEnterpriseManagedconfigurationssettingsList,
    AndroidEnterpriseManagedconfigurationssettingsList,

    -- ** androidenterprise.permissions.get
    AndroidEnterprisePermissionsGetResource,
    newAndroidEnterprisePermissionsGet,
    AndroidEnterprisePermissionsGet,

    -- ** androidenterprise.products.approve
    AndroidEnterpriseProductsApproveResource,
    newAndroidEnterpriseProductsApprove,
    AndroidEnterpriseProductsApprove,

    -- ** androidenterprise.products.generateApprovalUrl
    AndroidEnterpriseProductsGenerateApprovalUrlResource,
    newAndroidEnterpriseProductsGenerateApprovalUrl,
    AndroidEnterpriseProductsGenerateApprovalUrl,

    -- ** androidenterprise.products.get
    AndroidEnterpriseProductsGetResource,
    newAndroidEnterpriseProductsGet,
    AndroidEnterpriseProductsGet,

    -- ** androidenterprise.products.getAppRestrictionsSchema
    AndroidEnterpriseProductsGetAppRestrictionsSchemaResource,
    newAndroidEnterpriseProductsGetAppRestrictionsSchema,
    AndroidEnterpriseProductsGetAppRestrictionsSchema,

    -- ** androidenterprise.products.getPermissions
    AndroidEnterpriseProductsGetPermissionsResource,
    newAndroidEnterpriseProductsGetPermissions,
    AndroidEnterpriseProductsGetPermissions,

    -- ** androidenterprise.products.list
    AndroidEnterpriseProductsListResource,
    newAndroidEnterpriseProductsList,
    AndroidEnterpriseProductsList,

    -- ** androidenterprise.products.unapprove
    AndroidEnterpriseProductsUnapproveResource,
    newAndroidEnterpriseProductsUnapprove,
    AndroidEnterpriseProductsUnapprove,

    -- ** androidenterprise.serviceaccountkeys.delete
    AndroidEnterpriseServiceaccountkeysDeleteResource,
    newAndroidEnterpriseServiceaccountkeysDelete,
    AndroidEnterpriseServiceaccountkeysDelete,

    -- ** androidenterprise.serviceaccountkeys.insert
    AndroidEnterpriseServiceaccountkeysInsertResource,
    newAndroidEnterpriseServiceaccountkeysInsert,
    AndroidEnterpriseServiceaccountkeysInsert,

    -- ** androidenterprise.serviceaccountkeys.list
    AndroidEnterpriseServiceaccountkeysListResource,
    newAndroidEnterpriseServiceaccountkeysList,
    AndroidEnterpriseServiceaccountkeysList,

    -- ** androidenterprise.storelayoutclusters.delete
    AndroidEnterpriseStorelayoutclustersDeleteResource,
    newAndroidEnterpriseStorelayoutclustersDelete,
    AndroidEnterpriseStorelayoutclustersDelete,

    -- ** androidenterprise.storelayoutclusters.get
    AndroidEnterpriseStorelayoutclustersGetResource,
    newAndroidEnterpriseStorelayoutclustersGet,
    AndroidEnterpriseStorelayoutclustersGet,

    -- ** androidenterprise.storelayoutclusters.insert
    AndroidEnterpriseStorelayoutclustersInsertResource,
    newAndroidEnterpriseStorelayoutclustersInsert,
    AndroidEnterpriseStorelayoutclustersInsert,

    -- ** androidenterprise.storelayoutclusters.list
    AndroidEnterpriseStorelayoutclustersListResource,
    newAndroidEnterpriseStorelayoutclustersList,
    AndroidEnterpriseStorelayoutclustersList,

    -- ** androidenterprise.storelayoutclusters.update
    AndroidEnterpriseStorelayoutclustersUpdateResource,
    newAndroidEnterpriseStorelayoutclustersUpdate,
    AndroidEnterpriseStorelayoutclustersUpdate,

    -- ** androidenterprise.storelayoutpages.delete
    AndroidEnterpriseStorelayoutpagesDeleteResource,
    newAndroidEnterpriseStorelayoutpagesDelete,
    AndroidEnterpriseStorelayoutpagesDelete,

    -- ** androidenterprise.storelayoutpages.get
    AndroidEnterpriseStorelayoutpagesGetResource,
    newAndroidEnterpriseStorelayoutpagesGet,
    AndroidEnterpriseStorelayoutpagesGet,

    -- ** androidenterprise.storelayoutpages.insert
    AndroidEnterpriseStorelayoutpagesInsertResource,
    newAndroidEnterpriseStorelayoutpagesInsert,
    AndroidEnterpriseStorelayoutpagesInsert,

    -- ** androidenterprise.storelayoutpages.list
    AndroidEnterpriseStorelayoutpagesListResource,
    newAndroidEnterpriseStorelayoutpagesList,
    AndroidEnterpriseStorelayoutpagesList,

    -- ** androidenterprise.storelayoutpages.update
    AndroidEnterpriseStorelayoutpagesUpdateResource,
    newAndroidEnterpriseStorelayoutpagesUpdate,
    AndroidEnterpriseStorelayoutpagesUpdate,

    -- ** androidenterprise.users.delete
    AndroidEnterpriseUsersDeleteResource,
    newAndroidEnterpriseUsersDelete,
    AndroidEnterpriseUsersDelete,

    -- ** androidenterprise.users.generateAuthenticationToken
    AndroidEnterpriseUsersGenerateAuthenticationTokenResource,
    newAndroidEnterpriseUsersGenerateAuthenticationToken,
    AndroidEnterpriseUsersGenerateAuthenticationToken,

    -- ** androidenterprise.users.get
    AndroidEnterpriseUsersGetResource,
    newAndroidEnterpriseUsersGet,
    AndroidEnterpriseUsersGet,

    -- ** androidenterprise.users.getAvailableProductSet
    AndroidEnterpriseUsersGetAvailableProductSetResource,
    newAndroidEnterpriseUsersGetAvailableProductSet,
    AndroidEnterpriseUsersGetAvailableProductSet,

    -- ** androidenterprise.users.insert
    AndroidEnterpriseUsersInsertResource,
    newAndroidEnterpriseUsersInsert,
    AndroidEnterpriseUsersInsert,

    -- ** androidenterprise.users.list
    AndroidEnterpriseUsersListResource,
    newAndroidEnterpriseUsersList,
    AndroidEnterpriseUsersList,

    -- ** androidenterprise.users.revokeDeviceAccess
    AndroidEnterpriseUsersRevokeDeviceAccessResource,
    newAndroidEnterpriseUsersRevokeDeviceAccess,
    AndroidEnterpriseUsersRevokeDeviceAccess,

    -- ** androidenterprise.users.setAvailableProductSet
    AndroidEnterpriseUsersSetAvailableProductSetResource,
    newAndroidEnterpriseUsersSetAvailableProductSet,
    AndroidEnterpriseUsersSetAvailableProductSet,

    -- ** androidenterprise.users.update
    AndroidEnterpriseUsersUpdateResource,
    newAndroidEnterpriseUsersUpdate,
    AndroidEnterpriseUsersUpdate,

    -- ** androidenterprise.webapps.delete
    AndroidEnterpriseWebappsDeleteResource,
    newAndroidEnterpriseWebappsDelete,
    AndroidEnterpriseWebappsDelete,

    -- ** androidenterprise.webapps.get
    AndroidEnterpriseWebappsGetResource,
    newAndroidEnterpriseWebappsGet,
    AndroidEnterpriseWebappsGet,

    -- ** androidenterprise.webapps.insert
    AndroidEnterpriseWebappsInsertResource,
    newAndroidEnterpriseWebappsInsert,
    AndroidEnterpriseWebappsInsert,

    -- ** androidenterprise.webapps.list
    AndroidEnterpriseWebappsListResource,
    newAndroidEnterpriseWebappsList,
    AndroidEnterpriseWebappsList,

    -- ** androidenterprise.webapps.update
    AndroidEnterpriseWebappsUpdateResource,
    newAndroidEnterpriseWebappsUpdate,
    AndroidEnterpriseWebappsUpdate,

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

import Network.Google.AndroidEnterprise.Devices.ForceReportUpload
import Network.Google.AndroidEnterprise.Devices.Get
import Network.Google.AndroidEnterprise.Devices.GetState
import Network.Google.AndroidEnterprise.Devices.List
import Network.Google.AndroidEnterprise.Devices.SetState
import Network.Google.AndroidEnterprise.Devices.Update
import Network.Google.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
import Network.Google.AndroidEnterprise.Enterprises.CompleteSignup
import Network.Google.AndroidEnterprise.Enterprises.CreateWebToken
import Network.Google.AndroidEnterprise.Enterprises.Enroll
import Network.Google.AndroidEnterprise.Enterprises.GenerateSignupUrl
import Network.Google.AndroidEnterprise.Enterprises.Get
import Network.Google.AndroidEnterprise.Enterprises.GetServiceAccount
import Network.Google.AndroidEnterprise.Enterprises.GetStoreLayout
import Network.Google.AndroidEnterprise.Enterprises.List
import Network.Google.AndroidEnterprise.Enterprises.PullNotificationSet
import Network.Google.AndroidEnterprise.Enterprises.SendTestPushNotification
import Network.Google.AndroidEnterprise.Enterprises.SetAccount
import Network.Google.AndroidEnterprise.Enterprises.SetStoreLayout
import Network.Google.AndroidEnterprise.Enterprises.Unenroll
import Network.Google.AndroidEnterprise.Entitlements.Delete
import Network.Google.AndroidEnterprise.Entitlements.Get
import Network.Google.AndroidEnterprise.Entitlements.List
import Network.Google.AndroidEnterprise.Entitlements.Update
import Network.Google.AndroidEnterprise.Grouplicenses.Get
import Network.Google.AndroidEnterprise.Grouplicenses.List
import Network.Google.AndroidEnterprise.Grouplicenseusers.List
import Network.Google.AndroidEnterprise.Installs.Delete
import Network.Google.AndroidEnterprise.Installs.Get
import Network.Google.AndroidEnterprise.Installs.List
import Network.Google.AndroidEnterprise.Installs.Update
import Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.Delete
import Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.Get
import Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.List
import Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.Update
import Network.Google.AndroidEnterprise.Managedconfigurationsforuser.Delete
import Network.Google.AndroidEnterprise.Managedconfigurationsforuser.Get
import Network.Google.AndroidEnterprise.Managedconfigurationsforuser.List
import Network.Google.AndroidEnterprise.Managedconfigurationsforuser.Update
import Network.Google.AndroidEnterprise.Managedconfigurationssettings.List
import Network.Google.AndroidEnterprise.Permissions.Get
import Network.Google.AndroidEnterprise.Products.Approve
import Network.Google.AndroidEnterprise.Products.GenerateApprovalUrl
import Network.Google.AndroidEnterprise.Products.Get
import Network.Google.AndroidEnterprise.Products.GetAppRestrictionsSchema
import Network.Google.AndroidEnterprise.Products.GetPermissions
import Network.Google.AndroidEnterprise.Products.List
import Network.Google.AndroidEnterprise.Products.Unapprove
import Network.Google.AndroidEnterprise.Serviceaccountkeys.Delete
import Network.Google.AndroidEnterprise.Serviceaccountkeys.Insert
import Network.Google.AndroidEnterprise.Serviceaccountkeys.List
import Network.Google.AndroidEnterprise.Storelayoutclusters.Delete
import Network.Google.AndroidEnterprise.Storelayoutclusters.Get
import Network.Google.AndroidEnterprise.Storelayoutclusters.Insert
import Network.Google.AndroidEnterprise.Storelayoutclusters.List
import Network.Google.AndroidEnterprise.Storelayoutclusters.Update
import Network.Google.AndroidEnterprise.Storelayoutpages.Delete
import Network.Google.AndroidEnterprise.Storelayoutpages.Get
import Network.Google.AndroidEnterprise.Storelayoutpages.Insert
import Network.Google.AndroidEnterprise.Storelayoutpages.List
import Network.Google.AndroidEnterprise.Storelayoutpages.Update
import Network.Google.AndroidEnterprise.Types
import Network.Google.AndroidEnterprise.Users.Delete
import Network.Google.AndroidEnterprise.Users.GenerateAuthenticationToken
import Network.Google.AndroidEnterprise.Users.Get
import Network.Google.AndroidEnterprise.Users.GetAvailableProductSet
import Network.Google.AndroidEnterprise.Users.Insert
import Network.Google.AndroidEnterprise.Users.List
import Network.Google.AndroidEnterprise.Users.RevokeDeviceAccess
import Network.Google.AndroidEnterprise.Users.SetAvailableProductSet
import Network.Google.AndroidEnterprise.Users.Update
import Network.Google.AndroidEnterprise.Webapps.Delete
import Network.Google.AndroidEnterprise.Webapps.Get
import Network.Google.AndroidEnterprise.Webapps.Insert
import Network.Google.AndroidEnterprise.Webapps.List
import Network.Google.AndroidEnterprise.Webapps.Update
