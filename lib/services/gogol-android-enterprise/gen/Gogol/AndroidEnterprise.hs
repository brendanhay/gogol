{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    , Androidenterprise'FullControl

    -- * Resources

    -- ** androidenterprise.devices.forceReportUpload
    , AndroidEnterpriseDevicesForceReportUploadResource
    , AndroidEnterpriseDevicesForceReportUpload (..)
    , newAndroidEnterpriseDevicesForceReportUpload

    -- ** androidenterprise.devices.get
    , AndroidEnterpriseDevicesGetResource
    , AndroidEnterpriseDevicesGet (..)
    , newAndroidEnterpriseDevicesGet

    -- ** androidenterprise.devices.getState
    , AndroidEnterpriseDevicesGetStateResource
    , AndroidEnterpriseDevicesGetState (..)
    , newAndroidEnterpriseDevicesGetState

    -- ** androidenterprise.devices.list
    , AndroidEnterpriseDevicesListResource
    , AndroidEnterpriseDevicesList (..)
    , newAndroidEnterpriseDevicesList

    -- ** androidenterprise.devices.setState
    , AndroidEnterpriseDevicesSetStateResource
    , AndroidEnterpriseDevicesSetState (..)
    , newAndroidEnterpriseDevicesSetState

    -- ** androidenterprise.devices.update
    , AndroidEnterpriseDevicesUpdateResource
    , AndroidEnterpriseDevicesUpdate (..)
    , newAndroidEnterpriseDevicesUpdate

    -- ** androidenterprise.enterprises.acknowledgeNotificationSet
    , AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource
    , AndroidEnterpriseEnterprisesAcknowledgeNotificationSet (..)
    , newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet

    -- ** androidenterprise.enterprises.completeSignup
    , AndroidEnterpriseEnterprisesCompleteSignupResource
    , AndroidEnterpriseEnterprisesCompleteSignup (..)
    , newAndroidEnterpriseEnterprisesCompleteSignup

    -- ** androidenterprise.enterprises.createEnrollmentToken
    , AndroidEnterpriseEnterprisesCreateEnrollmentTokenResource
    , AndroidEnterpriseEnterprisesCreateEnrollmentToken (..)
    , newAndroidEnterpriseEnterprisesCreateEnrollmentToken

    -- ** androidenterprise.enterprises.createWebToken
    , AndroidEnterpriseEnterprisesCreateWebTokenResource
    , AndroidEnterpriseEnterprisesCreateWebToken (..)
    , newAndroidEnterpriseEnterprisesCreateWebToken

    -- ** androidenterprise.enterprises.enroll
    , AndroidEnterpriseEnterprisesEnrollResource
    , AndroidEnterpriseEnterprisesEnroll (..)
    , newAndroidEnterpriseEnterprisesEnroll

    -- ** androidenterprise.enterprises.generateSignupUrl
    , AndroidEnterpriseEnterprisesGenerateSignupUrlResource
    , AndroidEnterpriseEnterprisesGenerateSignupUrl (..)
    , newAndroidEnterpriseEnterprisesGenerateSignupUrl

    -- ** androidenterprise.enterprises.get
    , AndroidEnterpriseEnterprisesGetResource
    , AndroidEnterpriseEnterprisesGet (..)
    , newAndroidEnterpriseEnterprisesGet

    -- ** androidenterprise.enterprises.getServiceAccount
    , AndroidEnterpriseEnterprisesGetServiceAccountResource
    , AndroidEnterpriseEnterprisesGetServiceAccount (..)
    , newAndroidEnterpriseEnterprisesGetServiceAccount

    -- ** androidenterprise.enterprises.getStoreLayout
    , AndroidEnterpriseEnterprisesGetStoreLayoutResource
    , AndroidEnterpriseEnterprisesGetStoreLayout (..)
    , newAndroidEnterpriseEnterprisesGetStoreLayout

    -- ** androidenterprise.enterprises.list
    , AndroidEnterpriseEnterprisesListResource
    , AndroidEnterpriseEnterprisesList (..)
    , newAndroidEnterpriseEnterprisesList

    -- ** androidenterprise.enterprises.pullNotificationSet
    , AndroidEnterpriseEnterprisesPullNotificationSetResource
    , AndroidEnterpriseEnterprisesPullNotificationSet (..)
    , newAndroidEnterpriseEnterprisesPullNotificationSet

    -- ** androidenterprise.enterprises.sendTestPushNotification
    , AndroidEnterpriseEnterprisesSendTestPushNotificationResource
    , AndroidEnterpriseEnterprisesSendTestPushNotification (..)
    , newAndroidEnterpriseEnterprisesSendTestPushNotification

    -- ** androidenterprise.enterprises.setAccount
    , AndroidEnterpriseEnterprisesSetAccountResource
    , AndroidEnterpriseEnterprisesSetAccount (..)
    , newAndroidEnterpriseEnterprisesSetAccount

    -- ** androidenterprise.enterprises.setStoreLayout
    , AndroidEnterpriseEnterprisesSetStoreLayoutResource
    , AndroidEnterpriseEnterprisesSetStoreLayout (..)
    , newAndroidEnterpriseEnterprisesSetStoreLayout

    -- ** androidenterprise.enterprises.unenroll
    , AndroidEnterpriseEnterprisesUnenrollResource
    , AndroidEnterpriseEnterprisesUnenroll (..)
    , newAndroidEnterpriseEnterprisesUnenroll

    -- ** androidenterprise.entitlements.delete
    , AndroidEnterpriseEntitlementsDeleteResource
    , AndroidEnterpriseEntitlementsDelete (..)
    , newAndroidEnterpriseEntitlementsDelete

    -- ** androidenterprise.entitlements.get
    , AndroidEnterpriseEntitlementsGetResource
    , AndroidEnterpriseEntitlementsGet (..)
    , newAndroidEnterpriseEntitlementsGet

    -- ** androidenterprise.entitlements.list
    , AndroidEnterpriseEntitlementsListResource
    , AndroidEnterpriseEntitlementsList (..)
    , newAndroidEnterpriseEntitlementsList

    -- ** androidenterprise.entitlements.update
    , AndroidEnterpriseEntitlementsUpdateResource
    , AndroidEnterpriseEntitlementsUpdate (..)
    , newAndroidEnterpriseEntitlementsUpdate

    -- ** androidenterprise.grouplicenses.get
    , AndroidEnterpriseGrouplicensesGetResource
    , AndroidEnterpriseGrouplicensesGet (..)
    , newAndroidEnterpriseGrouplicensesGet

    -- ** androidenterprise.grouplicenses.list
    , AndroidEnterpriseGrouplicensesListResource
    , AndroidEnterpriseGrouplicensesList (..)
    , newAndroidEnterpriseGrouplicensesList

    -- ** androidenterprise.grouplicenseusers.list
    , AndroidEnterpriseGrouplicenseusersListResource
    , AndroidEnterpriseGrouplicenseusersList (..)
    , newAndroidEnterpriseGrouplicenseusersList

    -- ** androidenterprise.installs.delete
    , AndroidEnterpriseInstallsDeleteResource
    , AndroidEnterpriseInstallsDelete (..)
    , newAndroidEnterpriseInstallsDelete

    -- ** androidenterprise.installs.get
    , AndroidEnterpriseInstallsGetResource
    , AndroidEnterpriseInstallsGet (..)
    , newAndroidEnterpriseInstallsGet

    -- ** androidenterprise.installs.list
    , AndroidEnterpriseInstallsListResource
    , AndroidEnterpriseInstallsList (..)
    , newAndroidEnterpriseInstallsList

    -- ** androidenterprise.installs.update
    , AndroidEnterpriseInstallsUpdateResource
    , AndroidEnterpriseInstallsUpdate (..)
    , newAndroidEnterpriseInstallsUpdate

    -- ** androidenterprise.managedconfigurationsfordevice.delete
    , AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource
    , AndroidEnterpriseManagedconfigurationsfordeviceDelete (..)
    , newAndroidEnterpriseManagedconfigurationsfordeviceDelete

    -- ** androidenterprise.managedconfigurationsfordevice.get
    , AndroidEnterpriseManagedconfigurationsfordeviceGetResource
    , AndroidEnterpriseManagedconfigurationsfordeviceGet (..)
    , newAndroidEnterpriseManagedconfigurationsfordeviceGet

    -- ** androidenterprise.managedconfigurationsfordevice.list
    , AndroidEnterpriseManagedconfigurationsfordeviceListResource
    , AndroidEnterpriseManagedconfigurationsfordeviceList (..)
    , newAndroidEnterpriseManagedconfigurationsfordeviceList

    -- ** androidenterprise.managedconfigurationsfordevice.update
    , AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource
    , AndroidEnterpriseManagedconfigurationsfordeviceUpdate (..)
    , newAndroidEnterpriseManagedconfigurationsfordeviceUpdate

    -- ** androidenterprise.managedconfigurationsforuser.delete
    , AndroidEnterpriseManagedconfigurationsforuserDeleteResource
    , AndroidEnterpriseManagedconfigurationsforuserDelete (..)
    , newAndroidEnterpriseManagedconfigurationsforuserDelete

    -- ** androidenterprise.managedconfigurationsforuser.get
    , AndroidEnterpriseManagedconfigurationsforuserGetResource
    , AndroidEnterpriseManagedconfigurationsforuserGet (..)
    , newAndroidEnterpriseManagedconfigurationsforuserGet

    -- ** androidenterprise.managedconfigurationsforuser.list
    , AndroidEnterpriseManagedconfigurationsforuserListResource
    , AndroidEnterpriseManagedconfigurationsforuserList (..)
    , newAndroidEnterpriseManagedconfigurationsforuserList

    -- ** androidenterprise.managedconfigurationsforuser.update
    , AndroidEnterpriseManagedconfigurationsforuserUpdateResource
    , AndroidEnterpriseManagedconfigurationsforuserUpdate (..)
    , newAndroidEnterpriseManagedconfigurationsforuserUpdate

    -- ** androidenterprise.managedconfigurationssettings.list
    , AndroidEnterpriseManagedconfigurationssettingsListResource
    , AndroidEnterpriseManagedconfigurationssettingsList (..)
    , newAndroidEnterpriseManagedconfigurationssettingsList

    -- ** androidenterprise.permissions.get
    , AndroidEnterprisePermissionsGetResource
    , AndroidEnterprisePermissionsGet (..)
    , newAndroidEnterprisePermissionsGet

    -- ** androidenterprise.products.approve
    , AndroidEnterpriseProductsApproveResource
    , AndroidEnterpriseProductsApprove (..)
    , newAndroidEnterpriseProductsApprove

    -- ** androidenterprise.products.generateApprovalUrl
    , AndroidEnterpriseProductsGenerateApprovalUrlResource
    , AndroidEnterpriseProductsGenerateApprovalUrl (..)
    , newAndroidEnterpriseProductsGenerateApprovalUrl

    -- ** androidenterprise.products.get
    , AndroidEnterpriseProductsGetResource
    , AndroidEnterpriseProductsGet (..)
    , newAndroidEnterpriseProductsGet

    -- ** androidenterprise.products.getAppRestrictionsSchema
    , AndroidEnterpriseProductsGetAppRestrictionsSchemaResource
    , AndroidEnterpriseProductsGetAppRestrictionsSchema (..)
    , newAndroidEnterpriseProductsGetAppRestrictionsSchema

    -- ** androidenterprise.products.getPermissions
    , AndroidEnterpriseProductsGetPermissionsResource
    , AndroidEnterpriseProductsGetPermissions (..)
    , newAndroidEnterpriseProductsGetPermissions

    -- ** androidenterprise.products.list
    , AndroidEnterpriseProductsListResource
    , AndroidEnterpriseProductsList (..)
    , newAndroidEnterpriseProductsList

    -- ** androidenterprise.products.unapprove
    , AndroidEnterpriseProductsUnapproveResource
    , AndroidEnterpriseProductsUnapprove (..)
    , newAndroidEnterpriseProductsUnapprove

    -- ** androidenterprise.serviceaccountkeys.delete
    , AndroidEnterpriseServiceaccountkeysDeleteResource
    , AndroidEnterpriseServiceaccountkeysDelete (..)
    , newAndroidEnterpriseServiceaccountkeysDelete

    -- ** androidenterprise.serviceaccountkeys.insert
    , AndroidEnterpriseServiceaccountkeysInsertResource
    , AndroidEnterpriseServiceaccountkeysInsert (..)
    , newAndroidEnterpriseServiceaccountkeysInsert

    -- ** androidenterprise.serviceaccountkeys.list
    , AndroidEnterpriseServiceaccountkeysListResource
    , AndroidEnterpriseServiceaccountkeysList (..)
    , newAndroidEnterpriseServiceaccountkeysList

    -- ** androidenterprise.storelayoutclusters.delete
    , AndroidEnterpriseStorelayoutclustersDeleteResource
    , AndroidEnterpriseStorelayoutclustersDelete (..)
    , newAndroidEnterpriseStorelayoutclustersDelete

    -- ** androidenterprise.storelayoutclusters.get
    , AndroidEnterpriseStorelayoutclustersGetResource
    , AndroidEnterpriseStorelayoutclustersGet (..)
    , newAndroidEnterpriseStorelayoutclustersGet

    -- ** androidenterprise.storelayoutclusters.insert
    , AndroidEnterpriseStorelayoutclustersInsertResource
    , AndroidEnterpriseStorelayoutclustersInsert (..)
    , newAndroidEnterpriseStorelayoutclustersInsert

    -- ** androidenterprise.storelayoutclusters.list
    , AndroidEnterpriseStorelayoutclustersListResource
    , AndroidEnterpriseStorelayoutclustersList (..)
    , newAndroidEnterpriseStorelayoutclustersList

    -- ** androidenterprise.storelayoutclusters.update
    , AndroidEnterpriseStorelayoutclustersUpdateResource
    , AndroidEnterpriseStorelayoutclustersUpdate (..)
    , newAndroidEnterpriseStorelayoutclustersUpdate

    -- ** androidenterprise.storelayoutpages.delete
    , AndroidEnterpriseStorelayoutpagesDeleteResource
    , AndroidEnterpriseStorelayoutpagesDelete (..)
    , newAndroidEnterpriseStorelayoutpagesDelete

    -- ** androidenterprise.storelayoutpages.get
    , AndroidEnterpriseStorelayoutpagesGetResource
    , AndroidEnterpriseStorelayoutpagesGet (..)
    , newAndroidEnterpriseStorelayoutpagesGet

    -- ** androidenterprise.storelayoutpages.insert
    , AndroidEnterpriseStorelayoutpagesInsertResource
    , AndroidEnterpriseStorelayoutpagesInsert (..)
    , newAndroidEnterpriseStorelayoutpagesInsert

    -- ** androidenterprise.storelayoutpages.list
    , AndroidEnterpriseStorelayoutpagesListResource
    , AndroidEnterpriseStorelayoutpagesList (..)
    , newAndroidEnterpriseStorelayoutpagesList

    -- ** androidenterprise.storelayoutpages.update
    , AndroidEnterpriseStorelayoutpagesUpdateResource
    , AndroidEnterpriseStorelayoutpagesUpdate (..)
    , newAndroidEnterpriseStorelayoutpagesUpdate

    -- ** androidenterprise.users.delete
    , AndroidEnterpriseUsersDeleteResource
    , AndroidEnterpriseUsersDelete (..)
    , newAndroidEnterpriseUsersDelete

    -- ** androidenterprise.users.generateAuthenticationToken
    , AndroidEnterpriseUsersGenerateAuthenticationTokenResource
    , AndroidEnterpriseUsersGenerateAuthenticationToken (..)
    , newAndroidEnterpriseUsersGenerateAuthenticationToken

    -- ** androidenterprise.users.get
    , AndroidEnterpriseUsersGetResource
    , AndroidEnterpriseUsersGet (..)
    , newAndroidEnterpriseUsersGet

    -- ** androidenterprise.users.getAvailableProductSet
    , AndroidEnterpriseUsersGetAvailableProductSetResource
    , AndroidEnterpriseUsersGetAvailableProductSet (..)
    , newAndroidEnterpriseUsersGetAvailableProductSet

    -- ** androidenterprise.users.insert
    , AndroidEnterpriseUsersInsertResource
    , AndroidEnterpriseUsersInsert (..)
    , newAndroidEnterpriseUsersInsert

    -- ** androidenterprise.users.list
    , AndroidEnterpriseUsersListResource
    , AndroidEnterpriseUsersList (..)
    , newAndroidEnterpriseUsersList

    -- ** androidenterprise.users.revokeDeviceAccess
    , AndroidEnterpriseUsersRevokeDeviceAccessResource
    , AndroidEnterpriseUsersRevokeDeviceAccess (..)
    , newAndroidEnterpriseUsersRevokeDeviceAccess

    -- ** androidenterprise.users.setAvailableProductSet
    , AndroidEnterpriseUsersSetAvailableProductSetResource
    , AndroidEnterpriseUsersSetAvailableProductSet (..)
    , newAndroidEnterpriseUsersSetAvailableProductSet

    -- ** androidenterprise.users.update
    , AndroidEnterpriseUsersUpdateResource
    , AndroidEnterpriseUsersUpdate (..)
    , newAndroidEnterpriseUsersUpdate

    -- ** androidenterprise.webapps.delete
    , AndroidEnterpriseWebappsDeleteResource
    , AndroidEnterpriseWebappsDelete (..)
    , newAndroidEnterpriseWebappsDelete

    -- ** androidenterprise.webapps.get
    , AndroidEnterpriseWebappsGetResource
    , AndroidEnterpriseWebappsGet (..)
    , newAndroidEnterpriseWebappsGet

    -- ** androidenterprise.webapps.insert
    , AndroidEnterpriseWebappsInsertResource
    , AndroidEnterpriseWebappsInsert (..)
    , newAndroidEnterpriseWebappsInsert

    -- ** androidenterprise.webapps.list
    , AndroidEnterpriseWebappsListResource
    , AndroidEnterpriseWebappsList (..)
    , newAndroidEnterpriseWebappsList

    -- ** androidenterprise.webapps.update
    , AndroidEnterpriseWebappsUpdateResource
    , AndroidEnterpriseWebappsUpdate (..)
    , newAndroidEnterpriseWebappsUpdate

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

    -- ** CreateEnrollmentTokenResponse
    , CreateEnrollmentTokenResponse (..)
    , newCreateEnrollmentTokenResponse

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

    -- ** EnrollmentToken
    , EnrollmentToken (..)
    , newEnrollmentToken

    -- ** EnrollmentToken_EnrollmentTokenType
    , EnrollmentToken_EnrollmentTokenType (..)

    -- ** Enterprise
    , Enterprise (..)
    , newEnterprise

    -- ** EnterpriseAccount
    , EnterpriseAccount (..)
    , newEnterpriseAccount

    -- ** EnterpriseAuthenticationAppLinkConfig
    , EnterpriseAuthenticationAppLinkConfig (..)
    , newEnterpriseAuthenticationAppLinkConfig

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

    -- ** GoogleAuthenticationSettings
    , GoogleAuthenticationSettings (..)
    , newGoogleAuthenticationSettings

    -- ** GoogleAuthenticationSettings_DedicatedDevicesAllowed
    , GoogleAuthenticationSettings_DedicatedDevicesAllowed (..)

    -- ** GoogleAuthenticationSettings_GoogleAuthenticationRequired
    , GoogleAuthenticationSettings_GoogleAuthenticationRequired (..)

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

    -- ** EnterprisesCreateEnrollmentTokenDeviceType
    , EnterprisesCreateEnrollmentTokenDeviceType (..)

    -- ** EnterprisesCreateEnrollmentTokenEnrollmentTokenEnrollmentTokenType
    , EnterprisesCreateEnrollmentTokenEnrollmentTokenEnrollmentTokenType (..)

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
import Gogol.AndroidEnterprise.Enterprises.CreateEnrollmentToken
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
