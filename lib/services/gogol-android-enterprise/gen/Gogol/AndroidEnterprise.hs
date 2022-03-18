{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidEnterprise
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the deployment of apps to Android Enterprise devices.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference>
module Gogol.AndroidEnterprise
    (
    -- * Configuration
      androidEnterpriseService

    -- * OAuth Scopes
    , androidEnterpriseScope

    -- * Resources

    -- ** androidenterprise.devices.forceReportUpload
    , AndroidEnterpriseDevicesForceReportUploadResource
    , newAndroidEnterpriseDevicesForceReportUpload
    , AndroidEnterpriseDevicesForceReportUpload

    -- ** androidenterprise.devices.get
    , AndroidEnterpriseDevicesGetResource
    , newAndroidEnterpriseDevicesGet
    , AndroidEnterpriseDevicesGet

    -- ** androidenterprise.devices.getState
    , AndroidEnterpriseDevicesGetStateResource
    , newAndroidEnterpriseDevicesGetState
    , AndroidEnterpriseDevicesGetState

    -- ** androidenterprise.devices.list
    , AndroidEnterpriseDevicesListResource
    , newAndroidEnterpriseDevicesList
    , AndroidEnterpriseDevicesList

    -- ** androidenterprise.devices.setState
    , AndroidEnterpriseDevicesSetStateResource
    , newAndroidEnterpriseDevicesSetState
    , AndroidEnterpriseDevicesSetState

    -- ** androidenterprise.devices.update
    , AndroidEnterpriseDevicesUpdateResource
    , newAndroidEnterpriseDevicesUpdate
    , AndroidEnterpriseDevicesUpdate

    -- ** androidenterprise.enterprises.acknowledgeNotificationSet
    , AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource
    , newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet
    , AndroidEnterpriseEnterprisesAcknowledgeNotificationSet

    -- ** androidenterprise.enterprises.completeSignup
    , AndroidEnterpriseEnterprisesCompleteSignupResource
    , newAndroidEnterpriseEnterprisesCompleteSignup
    , AndroidEnterpriseEnterprisesCompleteSignup

    -- ** androidenterprise.enterprises.createWebToken
    , AndroidEnterpriseEnterprisesCreateWebTokenResource
    , newAndroidEnterpriseEnterprisesCreateWebToken
    , AndroidEnterpriseEnterprisesCreateWebToken

    -- ** androidenterprise.enterprises.enroll
    , AndroidEnterpriseEnterprisesEnrollResource
    , newAndroidEnterpriseEnterprisesEnroll
    , AndroidEnterpriseEnterprisesEnroll

    -- ** androidenterprise.enterprises.generateSignupUrl
    , AndroidEnterpriseEnterprisesGenerateSignupUrlResource
    , newAndroidEnterpriseEnterprisesGenerateSignupUrl
    , AndroidEnterpriseEnterprisesGenerateSignupUrl

    -- ** androidenterprise.enterprises.get
    , AndroidEnterpriseEnterprisesGetResource
    , newAndroidEnterpriseEnterprisesGet
    , AndroidEnterpriseEnterprisesGet

    -- ** androidenterprise.enterprises.getServiceAccount
    , AndroidEnterpriseEnterprisesGetServiceAccountResource
    , newAndroidEnterpriseEnterprisesGetServiceAccount
    , AndroidEnterpriseEnterprisesGetServiceAccount

    -- ** androidenterprise.enterprises.getStoreLayout
    , AndroidEnterpriseEnterprisesGetStoreLayoutResource
    , newAndroidEnterpriseEnterprisesGetStoreLayout
    , AndroidEnterpriseEnterprisesGetStoreLayout

    -- ** androidenterprise.enterprises.list
    , AndroidEnterpriseEnterprisesListResource
    , newAndroidEnterpriseEnterprisesList
    , AndroidEnterpriseEnterprisesList

    -- ** androidenterprise.enterprises.pullNotificationSet
    , AndroidEnterpriseEnterprisesPullNotificationSetResource
    , newAndroidEnterpriseEnterprisesPullNotificationSet
    , AndroidEnterpriseEnterprisesPullNotificationSet

    -- ** androidenterprise.enterprises.sendTestPushNotification
    , AndroidEnterpriseEnterprisesSendTestPushNotificationResource
    , newAndroidEnterpriseEnterprisesSendTestPushNotification
    , AndroidEnterpriseEnterprisesSendTestPushNotification

    -- ** androidenterprise.enterprises.setAccount
    , AndroidEnterpriseEnterprisesSetAccountResource
    , newAndroidEnterpriseEnterprisesSetAccount
    , AndroidEnterpriseEnterprisesSetAccount

    -- ** androidenterprise.enterprises.setStoreLayout
    , AndroidEnterpriseEnterprisesSetStoreLayoutResource
    , newAndroidEnterpriseEnterprisesSetStoreLayout
    , AndroidEnterpriseEnterprisesSetStoreLayout

    -- ** androidenterprise.enterprises.unenroll
    , AndroidEnterpriseEnterprisesUnenrollResource
    , newAndroidEnterpriseEnterprisesUnenroll
    , AndroidEnterpriseEnterprisesUnenroll

    -- ** androidenterprise.entitlements.delete
    , AndroidEnterpriseEntitlementsDeleteResource
    , newAndroidEnterpriseEntitlementsDelete
    , AndroidEnterpriseEntitlementsDelete

    -- ** androidenterprise.entitlements.get
    , AndroidEnterpriseEntitlementsGetResource
    , newAndroidEnterpriseEntitlementsGet
    , AndroidEnterpriseEntitlementsGet

    -- ** androidenterprise.entitlements.list
    , AndroidEnterpriseEntitlementsListResource
    , newAndroidEnterpriseEntitlementsList
    , AndroidEnterpriseEntitlementsList

    -- ** androidenterprise.entitlements.update
    , AndroidEnterpriseEntitlementsUpdateResource
    , newAndroidEnterpriseEntitlementsUpdate
    , AndroidEnterpriseEntitlementsUpdate

    -- ** androidenterprise.grouplicenses.get
    , AndroidEnterpriseGrouplicensesGetResource
    , newAndroidEnterpriseGrouplicensesGet
    , AndroidEnterpriseGrouplicensesGet

    -- ** androidenterprise.grouplicenses.list
    , AndroidEnterpriseGrouplicensesListResource
    , newAndroidEnterpriseGrouplicensesList
    , AndroidEnterpriseGrouplicensesList

    -- ** androidenterprise.grouplicenseusers.list
    , AndroidEnterpriseGrouplicenseusersListResource
    , newAndroidEnterpriseGrouplicenseusersList
    , AndroidEnterpriseGrouplicenseusersList

    -- ** androidenterprise.installs.delete
    , AndroidEnterpriseInstallsDeleteResource
    , newAndroidEnterpriseInstallsDelete
    , AndroidEnterpriseInstallsDelete

    -- ** androidenterprise.installs.get
    , AndroidEnterpriseInstallsGetResource
    , newAndroidEnterpriseInstallsGet
    , AndroidEnterpriseInstallsGet

    -- ** androidenterprise.installs.list
    , AndroidEnterpriseInstallsListResource
    , newAndroidEnterpriseInstallsList
    , AndroidEnterpriseInstallsList

    -- ** androidenterprise.installs.update
    , AndroidEnterpriseInstallsUpdateResource
    , newAndroidEnterpriseInstallsUpdate
    , AndroidEnterpriseInstallsUpdate

    -- ** androidenterprise.managedconfigurationsfordevice.delete
    , AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource
    , newAndroidEnterpriseManagedconfigurationsfordeviceDelete
    , AndroidEnterpriseManagedconfigurationsfordeviceDelete

    -- ** androidenterprise.managedconfigurationsfordevice.get
    , AndroidEnterpriseManagedconfigurationsfordeviceGetResource
    , newAndroidEnterpriseManagedconfigurationsfordeviceGet
    , AndroidEnterpriseManagedconfigurationsfordeviceGet

    -- ** androidenterprise.managedconfigurationsfordevice.list
    , AndroidEnterpriseManagedconfigurationsfordeviceListResource
    , newAndroidEnterpriseManagedconfigurationsfordeviceList
    , AndroidEnterpriseManagedconfigurationsfordeviceList

    -- ** androidenterprise.managedconfigurationsfordevice.update
    , AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource
    , newAndroidEnterpriseManagedconfigurationsfordeviceUpdate
    , AndroidEnterpriseManagedconfigurationsfordeviceUpdate

    -- ** androidenterprise.managedconfigurationsforuser.delete
    , AndroidEnterpriseManagedconfigurationsforuserDeleteResource
    , newAndroidEnterpriseManagedconfigurationsforuserDelete
    , AndroidEnterpriseManagedconfigurationsforuserDelete

    -- ** androidenterprise.managedconfigurationsforuser.get
    , AndroidEnterpriseManagedconfigurationsforuserGetResource
    , newAndroidEnterpriseManagedconfigurationsforuserGet
    , AndroidEnterpriseManagedconfigurationsforuserGet

    -- ** androidenterprise.managedconfigurationsforuser.list
    , AndroidEnterpriseManagedconfigurationsforuserListResource
    , newAndroidEnterpriseManagedconfigurationsforuserList
    , AndroidEnterpriseManagedconfigurationsforuserList

    -- ** androidenterprise.managedconfigurationsforuser.update
    , AndroidEnterpriseManagedconfigurationsforuserUpdateResource
    , newAndroidEnterpriseManagedconfigurationsforuserUpdate
    , AndroidEnterpriseManagedconfigurationsforuserUpdate

    -- ** androidenterprise.managedconfigurationssettings.list
    , AndroidEnterpriseManagedconfigurationssettingsListResource
    , newAndroidEnterpriseManagedconfigurationssettingsList
    , AndroidEnterpriseManagedconfigurationssettingsList

    -- ** androidenterprise.permissions.get
    , AndroidEnterprisePermissionsGetResource
    , newAndroidEnterprisePermissionsGet
    , AndroidEnterprisePermissionsGet

    -- ** androidenterprise.products.approve
    , AndroidEnterpriseProductsApproveResource
    , newAndroidEnterpriseProductsApprove
    , AndroidEnterpriseProductsApprove

    -- ** androidenterprise.products.generateApprovalUrl
    , AndroidEnterpriseProductsGenerateApprovalUrlResource
    , newAndroidEnterpriseProductsGenerateApprovalUrl
    , AndroidEnterpriseProductsGenerateApprovalUrl

    -- ** androidenterprise.products.get
    , AndroidEnterpriseProductsGetResource
    , newAndroidEnterpriseProductsGet
    , AndroidEnterpriseProductsGet

    -- ** androidenterprise.products.getAppRestrictionsSchema
    , AndroidEnterpriseProductsGetAppRestrictionsSchemaResource
    , newAndroidEnterpriseProductsGetAppRestrictionsSchema
    , AndroidEnterpriseProductsGetAppRestrictionsSchema

    -- ** androidenterprise.products.getPermissions
    , AndroidEnterpriseProductsGetPermissionsResource
    , newAndroidEnterpriseProductsGetPermissions
    , AndroidEnterpriseProductsGetPermissions

    -- ** androidenterprise.products.list
    , AndroidEnterpriseProductsListResource
    , newAndroidEnterpriseProductsList
    , AndroidEnterpriseProductsList

    -- ** androidenterprise.products.unapprove
    , AndroidEnterpriseProductsUnapproveResource
    , newAndroidEnterpriseProductsUnapprove
    , AndroidEnterpriseProductsUnapprove

    -- ** androidenterprise.serviceaccountkeys.delete
    , AndroidEnterpriseServiceaccountkeysDeleteResource
    , newAndroidEnterpriseServiceaccountkeysDelete
    , AndroidEnterpriseServiceaccountkeysDelete

    -- ** androidenterprise.serviceaccountkeys.insert
    , AndroidEnterpriseServiceaccountkeysInsertResource
    , newAndroidEnterpriseServiceaccountkeysInsert
    , AndroidEnterpriseServiceaccountkeysInsert

    -- ** androidenterprise.serviceaccountkeys.list
    , AndroidEnterpriseServiceaccountkeysListResource
    , newAndroidEnterpriseServiceaccountkeysList
    , AndroidEnterpriseServiceaccountkeysList

    -- ** androidenterprise.storelayoutclusters.delete
    , AndroidEnterpriseStorelayoutclustersDeleteResource
    , newAndroidEnterpriseStorelayoutclustersDelete
    , AndroidEnterpriseStorelayoutclustersDelete

    -- ** androidenterprise.storelayoutclusters.get
    , AndroidEnterpriseStorelayoutclustersGetResource
    , newAndroidEnterpriseStorelayoutclustersGet
    , AndroidEnterpriseStorelayoutclustersGet

    -- ** androidenterprise.storelayoutclusters.insert
    , AndroidEnterpriseStorelayoutclustersInsertResource
    , newAndroidEnterpriseStorelayoutclustersInsert
    , AndroidEnterpriseStorelayoutclustersInsert

    -- ** androidenterprise.storelayoutclusters.list
    , AndroidEnterpriseStorelayoutclustersListResource
    , newAndroidEnterpriseStorelayoutclustersList
    , AndroidEnterpriseStorelayoutclustersList

    -- ** androidenterprise.storelayoutclusters.update
    , AndroidEnterpriseStorelayoutclustersUpdateResource
    , newAndroidEnterpriseStorelayoutclustersUpdate
    , AndroidEnterpriseStorelayoutclustersUpdate

    -- ** androidenterprise.storelayoutpages.delete
    , AndroidEnterpriseStorelayoutpagesDeleteResource
    , newAndroidEnterpriseStorelayoutpagesDelete
    , AndroidEnterpriseStorelayoutpagesDelete

    -- ** androidenterprise.storelayoutpages.get
    , AndroidEnterpriseStorelayoutpagesGetResource
    , newAndroidEnterpriseStorelayoutpagesGet
    , AndroidEnterpriseStorelayoutpagesGet

    -- ** androidenterprise.storelayoutpages.insert
    , AndroidEnterpriseStorelayoutpagesInsertResource
    , newAndroidEnterpriseStorelayoutpagesInsert
    , AndroidEnterpriseStorelayoutpagesInsert

    -- ** androidenterprise.storelayoutpages.list
    , AndroidEnterpriseStorelayoutpagesListResource
    , newAndroidEnterpriseStorelayoutpagesList
    , AndroidEnterpriseStorelayoutpagesList

    -- ** androidenterprise.storelayoutpages.update
    , AndroidEnterpriseStorelayoutpagesUpdateResource
    , newAndroidEnterpriseStorelayoutpagesUpdate
    , AndroidEnterpriseStorelayoutpagesUpdate

    -- ** androidenterprise.users.delete
    , AndroidEnterpriseUsersDeleteResource
    , newAndroidEnterpriseUsersDelete
    , AndroidEnterpriseUsersDelete

    -- ** androidenterprise.users.generateAuthenticationToken
    , AndroidEnterpriseUsersGenerateAuthenticationTokenResource
    , newAndroidEnterpriseUsersGenerateAuthenticationToken
    , AndroidEnterpriseUsersGenerateAuthenticationToken

    -- ** androidenterprise.users.get
    , AndroidEnterpriseUsersGetResource
    , newAndroidEnterpriseUsersGet
    , AndroidEnterpriseUsersGet

    -- ** androidenterprise.users.getAvailableProductSet
    , AndroidEnterpriseUsersGetAvailableProductSetResource
    , newAndroidEnterpriseUsersGetAvailableProductSet
    , AndroidEnterpriseUsersGetAvailableProductSet

    -- ** androidenterprise.users.insert
    , AndroidEnterpriseUsersInsertResource
    , newAndroidEnterpriseUsersInsert
    , AndroidEnterpriseUsersInsert

    -- ** androidenterprise.users.list
    , AndroidEnterpriseUsersListResource
    , newAndroidEnterpriseUsersList
    , AndroidEnterpriseUsersList

    -- ** androidenterprise.users.revokeDeviceAccess
    , AndroidEnterpriseUsersRevokeDeviceAccessResource
    , newAndroidEnterpriseUsersRevokeDeviceAccess
    , AndroidEnterpriseUsersRevokeDeviceAccess

    -- ** androidenterprise.users.setAvailableProductSet
    , AndroidEnterpriseUsersSetAvailableProductSetResource
    , newAndroidEnterpriseUsersSetAvailableProductSet
    , AndroidEnterpriseUsersSetAvailableProductSet

    -- ** androidenterprise.users.update
    , AndroidEnterpriseUsersUpdateResource
    , newAndroidEnterpriseUsersUpdate
    , AndroidEnterpriseUsersUpdate

    -- ** androidenterprise.webapps.delete
    , AndroidEnterpriseWebappsDeleteResource
    , newAndroidEnterpriseWebappsDelete
    , AndroidEnterpriseWebappsDelete

    -- ** androidenterprise.webapps.get
    , AndroidEnterpriseWebappsGetResource
    , newAndroidEnterpriseWebappsGet
    , AndroidEnterpriseWebappsGet

    -- ** androidenterprise.webapps.insert
    , AndroidEnterpriseWebappsInsertResource
    , newAndroidEnterpriseWebappsInsert
    , AndroidEnterpriseWebappsInsert

    -- ** androidenterprise.webapps.list
    , AndroidEnterpriseWebappsListResource
    , newAndroidEnterpriseWebappsList
    , AndroidEnterpriseWebappsList

    -- ** androidenterprise.webapps.update
    , AndroidEnterpriseWebappsUpdateResource
    , newAndroidEnterpriseWebappsUpdate
    , AndroidEnterpriseWebappsUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Administrator
    , Administrator (..)
    , newAdministrator

    -- ** AdministratorWebToken
    , AdministratorWebToken (..)
    , newAdministratorWebToken

    -- ** AdministratorWebTokenSpec
    , AdministratorWebTokenSpec (..)
    , newAdministratorWebTokenSpec

    -- ** AdministratorWebTokenSpec_PermissionItem
    , AdministratorWebTokenSpec_PermissionItem (..)

    -- ** AdministratorWebTokenSpecManagedConfigurations
    , AdministratorWebTokenSpecManagedConfigurations (..)
    , newAdministratorWebTokenSpecManagedConfigurations

    -- ** AdministratorWebTokenSpecPlaySearch
    , AdministratorWebTokenSpecPlaySearch (..)
    , newAdministratorWebTokenSpecPlaySearch

    -- ** AdministratorWebTokenSpecPrivateApps
    , AdministratorWebTokenSpecPrivateApps (..)
    , newAdministratorWebTokenSpecPrivateApps

    -- ** AdministratorWebTokenSpecStoreBuilder
    , AdministratorWebTokenSpecStoreBuilder (..)
    , newAdministratorWebTokenSpecStoreBuilder

    -- ** AdministratorWebTokenSpecWebApps
    , AdministratorWebTokenSpecWebApps (..)
    , newAdministratorWebTokenSpecWebApps

    -- ** AdministratorWebTokenSpecZeroTouch
    , AdministratorWebTokenSpecZeroTouch (..)
    , newAdministratorWebTokenSpecZeroTouch

    -- ** AppRestrictionsSchema
    , AppRestrictionsSchema (..)
    , newAppRestrictionsSchema

    -- ** AppRestrictionsSchemaChangeEvent
    , AppRestrictionsSchemaChangeEvent (..)
    , newAppRestrictionsSchemaChangeEvent

    -- ** AppRestrictionsSchemaRestriction
    , AppRestrictionsSchemaRestriction (..)
    , newAppRestrictionsSchemaRestriction

    -- ** AppRestrictionsSchemaRestriction_RestrictionType
    , AppRestrictionsSchemaRestriction_RestrictionType (..)

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue (..)
    , newAppRestrictionsSchemaRestrictionRestrictionValue

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue_Type
    , AppRestrictionsSchemaRestrictionRestrictionValue_Type (..)

    -- ** AppState
    , AppState (..)
    , newAppState

    -- ** AppUpdateEvent
    , AppUpdateEvent (..)
    , newAppUpdateEvent

    -- ** AppVersion
    , AppVersion (..)
    , newAppVersion

    -- ** AppVersion_Track
    , AppVersion_Track (..)

    -- ** ApprovalUrlInfo
    , ApprovalUrlInfo (..)
    , newApprovalUrlInfo

    -- ** AuthenticationToken
    , AuthenticationToken (..)
    , newAuthenticationToken

    -- ** AutoInstallConstraint
    , AutoInstallConstraint (..)
    , newAutoInstallConstraint

    -- ** AutoInstallConstraint_ChargingStateConstraint
    , AutoInstallConstraint_ChargingStateConstraint (..)

    -- ** AutoInstallConstraint_DeviceIdleStateConstraint
    , AutoInstallConstraint_DeviceIdleStateConstraint (..)

    -- ** AutoInstallConstraint_NetworkTypeConstraint
    , AutoInstallConstraint_NetworkTypeConstraint (..)

    -- ** AutoInstallPolicy
    , AutoInstallPolicy (..)
    , newAutoInstallPolicy

    -- ** AutoInstallPolicy_AutoInstallMode
    , AutoInstallPolicy_AutoInstallMode (..)

    -- ** ConfigurationVariables
    , ConfigurationVariables (..)
    , newConfigurationVariables

    -- ** Device
    , Device (..)
    , newDevice

    -- ** Device_ManagementType
    , Device_ManagementType (..)

    -- ** DeviceReport
    , DeviceReport (..)
    , newDeviceReport

    -- ** DeviceReportUpdateEvent
    , DeviceReportUpdateEvent (..)
    , newDeviceReportUpdateEvent

    -- ** DeviceState
    , DeviceState (..)
    , newDeviceState

    -- ** DeviceState_AccountState
    , DeviceState_AccountState (..)

    -- ** DevicesListResponse
    , DevicesListResponse (..)
    , newDevicesListResponse

    -- ** Enterprise
    , Enterprise (..)
    , newEnterprise

    -- ** EnterpriseAccount
    , EnterpriseAccount (..)
    , newEnterpriseAccount

    -- ** EnterprisesListResponse
    , EnterprisesListResponse (..)
    , newEnterprisesListResponse

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse (..)
    , newEnterprisesSendTestPushNotificationResponse

    -- ** Entitlement
    , Entitlement (..)
    , newEntitlement

    -- ** Entitlement_Reason
    , Entitlement_Reason (..)

    -- ** EntitlementsListResponse
    , EntitlementsListResponse (..)
    , newEntitlementsListResponse

    -- ** GroupLicense
    , GroupLicense (..)
    , newGroupLicense

    -- ** GroupLicense_AcquisitionKind
    , GroupLicense_AcquisitionKind (..)

    -- ** GroupLicense_Approval
    , GroupLicense_Approval (..)

    -- ** GroupLicense_Permissions
    , GroupLicense_Permissions (..)

    -- ** GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse (..)
    , newGroupLicenseUsersListResponse

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse (..)
    , newGroupLicensesListResponse

    -- ** Install
    , Install (..)
    , newInstall

    -- ** Install_InstallState
    , Install_InstallState (..)

    -- ** InstallFailureEvent
    , InstallFailureEvent (..)
    , newInstallFailureEvent

    -- ** InstallFailureEvent_FailureReason
    , InstallFailureEvent_FailureReason (..)

    -- ** InstallsListResponse
    , InstallsListResponse (..)
    , newInstallsListResponse

    -- ** KeyedAppState
    , KeyedAppState (..)
    , newKeyedAppState

    -- ** KeyedAppState_Severity
    , KeyedAppState_Severity (..)

    -- ** LocalizedText
    , LocalizedText (..)
    , newLocalizedText

    -- ** MaintenanceWindow
    , MaintenanceWindow (..)
    , newMaintenanceWindow

    -- ** ManagedConfiguration
    , ManagedConfiguration (..)
    , newManagedConfiguration

    -- ** ManagedConfigurationsForDeviceListResponse
    , ManagedConfigurationsForDeviceListResponse (..)
    , newManagedConfigurationsForDeviceListResponse

    -- ** ManagedConfigurationsForUserListResponse
    , ManagedConfigurationsForUserListResponse (..)
    , newManagedConfigurationsForUserListResponse

    -- ** ManagedConfigurationsSettings
    , ManagedConfigurationsSettings (..)
    , newManagedConfigurationsSettings

    -- ** ManagedConfigurationsSettingsListResponse
    , ManagedConfigurationsSettingsListResponse (..)
    , newManagedConfigurationsSettingsListResponse

    -- ** ManagedProperty
    , ManagedProperty (..)
    , newManagedProperty

    -- ** ManagedPropertyBundle
    , ManagedPropertyBundle (..)
    , newManagedPropertyBundle

    -- ** NewDeviceEvent
    , NewDeviceEvent (..)
    , newNewDeviceEvent

    -- ** NewDeviceEvent_ManagementType
    , NewDeviceEvent_ManagementType (..)

    -- ** NewPermissionsEvent
    , NewPermissionsEvent (..)
    , newNewPermissionsEvent

    -- ** Notification
    , Notification (..)
    , newNotification

    -- ** Notification_NotificationType
    , Notification_NotificationType (..)

    -- ** NotificationSet
    , NotificationSet (..)
    , newNotificationSet

    -- ** PageInfo
    , PageInfo (..)
    , newPageInfo

    -- ** Permission
    , Permission (..)
    , newPermission

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Policy_AutoUpdatePolicy
    , Policy_AutoUpdatePolicy (..)

    -- ** Policy_DeviceReportPolicy
    , Policy_DeviceReportPolicy (..)

    -- ** Policy_ProductAvailabilityPolicy
    , Policy_ProductAvailabilityPolicy (..)

    -- ** Product
    , Product (..)
    , newProduct

    -- ** Product_AvailableTracksItem
    , Product_AvailableTracksItem (..)

    -- ** Product_ContentRating
    , Product_ContentRating (..)

    -- ** Product_DistributionChannel
    , Product_DistributionChannel (..)

    -- ** Product_FeaturesItem
    , Product_FeaturesItem (..)

    -- ** Product_ProductPricing
    , Product_ProductPricing (..)

    -- ** ProductApprovalEvent
    , ProductApprovalEvent (..)
    , newProductApprovalEvent

    -- ** ProductApprovalEvent_Approved
    , ProductApprovalEvent_Approved (..)

    -- ** ProductAvailabilityChangeEvent
    , ProductAvailabilityChangeEvent (..)
    , newProductAvailabilityChangeEvent

    -- ** ProductAvailabilityChangeEvent_AvailabilityStatus
    , ProductAvailabilityChangeEvent_AvailabilityStatus (..)

    -- ** ProductPermission
    , ProductPermission (..)
    , newProductPermission

    -- ** ProductPermission_State
    , ProductPermission_State (..)

    -- ** ProductPermissions
    , ProductPermissions (..)
    , newProductPermissions

    -- ** ProductPolicy
    , ProductPolicy (..)
    , newProductPolicy

    -- ** ProductPolicy_AutoUpdateMode
    , ProductPolicy_AutoUpdateMode (..)

    -- ** ProductPolicy_TracksItem
    , ProductPolicy_TracksItem (..)

    -- ** ProductSet
    , ProductSet (..)
    , newProductSet

    -- ** ProductSet_ProductSetBehavior
    , ProductSet_ProductSetBehavior (..)

    -- ** ProductSigningCertificate
    , ProductSigningCertificate (..)
    , newProductSigningCertificate

    -- ** ProductVisibility
    , ProductVisibility (..)
    , newProductVisibility

    -- ** ProductVisibility_TracksItem
    , ProductVisibility_TracksItem (..)

    -- ** ProductsApproveRequest
    , ProductsApproveRequest (..)
    , newProductsApproveRequest

    -- ** ProductsApproveRequest_ApprovedPermissions
    , ProductsApproveRequest_ApprovedPermissions (..)

    -- ** ProductsGenerateApprovalUrlResponse
    , ProductsGenerateApprovalUrlResponse (..)
    , newProductsGenerateApprovalUrlResponse

    -- ** ProductsListResponse
    , ProductsListResponse (..)
    , newProductsListResponse

    -- ** ServiceAccount
    , ServiceAccount (..)
    , newServiceAccount

    -- ** ServiceAccountKey
    , ServiceAccountKey (..)
    , newServiceAccountKey

    -- ** ServiceAccountKey_Type
    , ServiceAccountKey_Type (..)

    -- ** ServiceAccountKeysListResponse
    , ServiceAccountKeysListResponse (..)
    , newServiceAccountKeysListResponse

    -- ** SignupInfo
    , SignupInfo (..)
    , newSignupInfo

    -- ** StoreCluster
    , StoreCluster (..)
    , newStoreCluster

    -- ** StoreLayout
    , StoreLayout (..)
    , newStoreLayout

    -- ** StoreLayout_StoreLayoutType
    , StoreLayout_StoreLayoutType (..)

    -- ** StoreLayoutClustersListResponse
    , StoreLayoutClustersListResponse (..)
    , newStoreLayoutClustersListResponse

    -- ** StoreLayoutPagesListResponse
    , StoreLayoutPagesListResponse (..)
    , newStoreLayoutPagesListResponse

    -- ** StorePage
    , StorePage (..)
    , newStorePage

    -- ** TokenPagination
    , TokenPagination (..)
    , newTokenPagination

    -- ** TrackInfo
    , TrackInfo (..)
    , newTrackInfo

    -- ** User
    , User (..)
    , newUser

    -- ** User_AccountType
    , User_AccountType (..)

    -- ** User_ManagementType
    , User_ManagementType (..)

    -- ** UsersListResponse
    , UsersListResponse (..)
    , newUsersListResponse

    -- ** VariableSet
    , VariableSet (..)
    , newVariableSet

    -- ** WebApp
    , WebApp (..)
    , newWebApp

    -- ** WebApp_DisplayMode
    , WebApp_DisplayMode (..)

    -- ** WebAppIcon
    , WebAppIcon (..)
    , newWebAppIcon

    -- ** WebAppsListResponse
    , WebAppsListResponse (..)
    , newWebAppsListResponse

    -- ** EnterprisesGetServiceAccountKeyType
    , EnterprisesGetServiceAccountKeyType (..)

    -- ** EnterprisesPullNotificationSetRequestMode
    , EnterprisesPullNotificationSetRequestMode (..)
    ) where

import Gogol.AndroidEnterprise.Devices.ForceReportUpload
import Gogol.AndroidEnterprise.Devices.Get
import Gogol.AndroidEnterprise.Devices.GetState
import Gogol.AndroidEnterprise.Devices.List
import Gogol.AndroidEnterprise.Devices.SetState
import Gogol.AndroidEnterprise.Devices.Update
import Gogol.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
import Gogol.AndroidEnterprise.Enterprises.CompleteSignup
import Gogol.AndroidEnterprise.Enterprises.CreateWebToken
import Gogol.AndroidEnterprise.Enterprises.Enroll
import Gogol.AndroidEnterprise.Enterprises.GenerateSignupUrl
import Gogol.AndroidEnterprise.Enterprises.Get
import Gogol.AndroidEnterprise.Enterprises.GetServiceAccount
import Gogol.AndroidEnterprise.Enterprises.GetStoreLayout
import Gogol.AndroidEnterprise.Enterprises.List
import Gogol.AndroidEnterprise.Enterprises.PullNotificationSet
import Gogol.AndroidEnterprise.Enterprises.SendTestPushNotification
import Gogol.AndroidEnterprise.Enterprises.SetAccount
import Gogol.AndroidEnterprise.Enterprises.SetStoreLayout
import Gogol.AndroidEnterprise.Enterprises.Unenroll
import Gogol.AndroidEnterprise.Entitlements.Delete
import Gogol.AndroidEnterprise.Entitlements.Get
import Gogol.AndroidEnterprise.Entitlements.List
import Gogol.AndroidEnterprise.Entitlements.Update
import Gogol.AndroidEnterprise.Grouplicenses.Get
import Gogol.AndroidEnterprise.Grouplicenses.List
import Gogol.AndroidEnterprise.Grouplicenseusers.List
import Gogol.AndroidEnterprise.Installs.Delete
import Gogol.AndroidEnterprise.Installs.Get
import Gogol.AndroidEnterprise.Installs.List
import Gogol.AndroidEnterprise.Installs.Update
import Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Delete
import Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Get
import Gogol.AndroidEnterprise.Managedconfigurationsfordevice.List
import Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Update
import Gogol.AndroidEnterprise.Managedconfigurationsforuser.Delete
import Gogol.AndroidEnterprise.Managedconfigurationsforuser.Get
import Gogol.AndroidEnterprise.Managedconfigurationsforuser.List
import Gogol.AndroidEnterprise.Managedconfigurationsforuser.Update
import Gogol.AndroidEnterprise.Managedconfigurationssettings.List
import Gogol.AndroidEnterprise.Permissions.Get
import Gogol.AndroidEnterprise.Products.Approve
import Gogol.AndroidEnterprise.Products.GenerateApprovalUrl
import Gogol.AndroidEnterprise.Products.Get
import Gogol.AndroidEnterprise.Products.GetAppRestrictionsSchema
import Gogol.AndroidEnterprise.Products.GetPermissions
import Gogol.AndroidEnterprise.Products.List
import Gogol.AndroidEnterprise.Products.Unapprove
import Gogol.AndroidEnterprise.Serviceaccountkeys.Delete
import Gogol.AndroidEnterprise.Serviceaccountkeys.Insert
import Gogol.AndroidEnterprise.Serviceaccountkeys.List
import Gogol.AndroidEnterprise.Storelayoutclusters.Delete
import Gogol.AndroidEnterprise.Storelayoutclusters.Get
import Gogol.AndroidEnterprise.Storelayoutclusters.Insert
import Gogol.AndroidEnterprise.Storelayoutclusters.List
import Gogol.AndroidEnterprise.Storelayoutclusters.Update
import Gogol.AndroidEnterprise.Storelayoutpages.Delete
import Gogol.AndroidEnterprise.Storelayoutpages.Get
import Gogol.AndroidEnterprise.Storelayoutpages.Insert
import Gogol.AndroidEnterprise.Storelayoutpages.List
import Gogol.AndroidEnterprise.Storelayoutpages.Update
import Gogol.AndroidEnterprise.Types
import Gogol.AndroidEnterprise.Users.Delete
import Gogol.AndroidEnterprise.Users.GenerateAuthenticationToken
import Gogol.AndroidEnterprise.Users.Get
import Gogol.AndroidEnterprise.Users.GetAvailableProductSet
import Gogol.AndroidEnterprise.Users.Insert
import Gogol.AndroidEnterprise.Users.List
import Gogol.AndroidEnterprise.Users.RevokeDeviceAccess
import Gogol.AndroidEnterprise.Users.SetAvailableProductSet
import Gogol.AndroidEnterprise.Users.Update
import Gogol.AndroidEnterprise.Webapps.Delete
import Gogol.AndroidEnterprise.Webapps.Get
import Gogol.AndroidEnterprise.Webapps.Insert
import Gogol.AndroidEnterprise.Webapps.List
import Gogol.AndroidEnterprise.Webapps.Update
