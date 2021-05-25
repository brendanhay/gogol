{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the deployment of apps to Android Enterprise devices.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference>
module Network.Google.AndroidEnterprise
    (
    -- * Service Configuration
      androidEnterpriseService

    -- * OAuth Scopes
    , androidEnterpriseScope

    -- * API Declaration
    , AndroidEnterpriseAPI

    -- * Resources

    -- ** androidenterprise.devices.forceReportUpload
    , module Network.Google.Resource.AndroidEnterprise.Devices.ForceReportUpload

    -- ** androidenterprise.devices.get
    , module Network.Google.Resource.AndroidEnterprise.Devices.Get

    -- ** androidenterprise.devices.getState
    , module Network.Google.Resource.AndroidEnterprise.Devices.GetState

    -- ** androidenterprise.devices.list
    , module Network.Google.Resource.AndroidEnterprise.Devices.List

    -- ** androidenterprise.devices.setState
    , module Network.Google.Resource.AndroidEnterprise.Devices.SetState

    -- ** androidenterprise.devices.update
    , module Network.Google.Resource.AndroidEnterprise.Devices.Update

    -- ** androidenterprise.enterprises.acknowledgeNotificationSet
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet

    -- ** androidenterprise.enterprises.completeSignup
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup

    -- ** androidenterprise.enterprises.createWebToken
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken

    -- ** androidenterprise.enterprises.enroll
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll

    -- ** androidenterprise.enterprises.generateSignupUrl
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.GenerateSignupURL

    -- ** androidenterprise.enterprises.get
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Get

    -- ** androidenterprise.enterprises.getServiceAccount
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.GetServiceAccount

    -- ** androidenterprise.enterprises.getStoreLayout
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout

    -- ** androidenterprise.enterprises.list
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.List

    -- ** androidenterprise.enterprises.pullNotificationSet
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.PullNotificationSet

    -- ** androidenterprise.enterprises.sendTestPushNotification
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification

    -- ** androidenterprise.enterprises.setAccount
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount

    -- ** androidenterprise.enterprises.setStoreLayout
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.SetStoreLayout

    -- ** androidenterprise.enterprises.unenroll
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll

    -- ** androidenterprise.entitlements.delete
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Delete

    -- ** androidenterprise.entitlements.get
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Get

    -- ** androidenterprise.entitlements.list
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.List

    -- ** androidenterprise.entitlements.update
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Update

    -- ** androidenterprise.grouplicenses.get
    , module Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get

    -- ** androidenterprise.grouplicenses.list
    , module Network.Google.Resource.AndroidEnterprise.Grouplicenses.List

    -- ** androidenterprise.grouplicenseusers.list
    , module Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List

    -- ** androidenterprise.installs.delete
    , module Network.Google.Resource.AndroidEnterprise.Installs.Delete

    -- ** androidenterprise.installs.get
    , module Network.Google.Resource.AndroidEnterprise.Installs.Get

    -- ** androidenterprise.installs.list
    , module Network.Google.Resource.AndroidEnterprise.Installs.List

    -- ** androidenterprise.installs.update
    , module Network.Google.Resource.AndroidEnterprise.Installs.Update

    -- ** androidenterprise.managedconfigurationsfordevice.delete
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Delete

    -- ** androidenterprise.managedconfigurationsfordevice.get
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Get

    -- ** androidenterprise.managedconfigurationsfordevice.list
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.List

    -- ** androidenterprise.managedconfigurationsfordevice.update
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Update

    -- ** androidenterprise.managedconfigurationsforuser.delete
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete

    -- ** androidenterprise.managedconfigurationsforuser.get
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Get

    -- ** androidenterprise.managedconfigurationsforuser.list
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.List

    -- ** androidenterprise.managedconfigurationsforuser.update
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Update

    -- ** androidenterprise.managedconfigurationssettings.list
    , module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationssettings.List

    -- ** androidenterprise.permissions.get
    , module Network.Google.Resource.AndroidEnterprise.Permissions.Get

    -- ** androidenterprise.products.approve
    , module Network.Google.Resource.AndroidEnterprise.Products.Approve

    -- ** androidenterprise.products.generateApprovalUrl
    , module Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL

    -- ** androidenterprise.products.get
    , module Network.Google.Resource.AndroidEnterprise.Products.Get

    -- ** androidenterprise.products.getAppRestrictionsSchema
    , module Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema

    -- ** androidenterprise.products.getPermissions
    , module Network.Google.Resource.AndroidEnterprise.Products.GetPermissions

    -- ** androidenterprise.products.list
    , module Network.Google.Resource.AndroidEnterprise.Products.List

    -- ** androidenterprise.products.unapprove
    , module Network.Google.Resource.AndroidEnterprise.Products.UnApprove

    -- ** androidenterprise.serviceaccountkeys.delete
    , module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Delete

    -- ** androidenterprise.serviceaccountkeys.insert
    , module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Insert

    -- ** androidenterprise.serviceaccountkeys.list
    , module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List

    -- ** androidenterprise.storelayoutclusters.delete
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete

    -- ** androidenterprise.storelayoutclusters.get
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get

    -- ** androidenterprise.storelayoutclusters.insert
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert

    -- ** androidenterprise.storelayoutclusters.list
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List

    -- ** androidenterprise.storelayoutclusters.update
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Update

    -- ** androidenterprise.storelayoutpages.delete
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete

    -- ** androidenterprise.storelayoutpages.get
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Get

    -- ** androidenterprise.storelayoutpages.insert
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Insert

    -- ** androidenterprise.storelayoutpages.list
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List

    -- ** androidenterprise.storelayoutpages.update
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update

    -- ** androidenterprise.users.delete
    , module Network.Google.Resource.AndroidEnterprise.Users.Delete

    -- ** androidenterprise.users.generateAuthenticationToken
    , module Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken

    -- ** androidenterprise.users.get
    , module Network.Google.Resource.AndroidEnterprise.Users.Get

    -- ** androidenterprise.users.getAvailableProductSet
    , module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet

    -- ** androidenterprise.users.insert
    , module Network.Google.Resource.AndroidEnterprise.Users.Insert

    -- ** androidenterprise.users.list
    , module Network.Google.Resource.AndroidEnterprise.Users.List

    -- ** androidenterprise.users.revokeDeviceAccess
    , module Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess

    -- ** androidenterprise.users.setAvailableProductSet
    , module Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet

    -- ** androidenterprise.users.update
    , module Network.Google.Resource.AndroidEnterprise.Users.Update

    -- ** androidenterprise.webapps.delete
    , module Network.Google.Resource.AndroidEnterprise.WebApps.Delete

    -- ** androidenterprise.webapps.get
    , module Network.Google.Resource.AndroidEnterprise.WebApps.Get

    -- ** androidenterprise.webapps.insert
    , module Network.Google.Resource.AndroidEnterprise.WebApps.Insert

    -- ** androidenterprise.webapps.list
    , module Network.Google.Resource.AndroidEnterprise.WebApps.List

    -- ** androidenterprise.webapps.update
    , module Network.Google.Resource.AndroidEnterprise.WebApps.Update

    -- * Types

    -- ** GroupLicense
    , GroupLicense
    , groupLicense
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glPermissions
    , glProductId
    , glAcquisitionKind

    -- ** StoreLayoutPagesListResponse
    , StoreLayoutPagesListResponse
    , storeLayoutPagesListResponse
    , slplrPage

    -- ** EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaAccountEmail

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- ** AdministratorWebTokenSpecPlaySearch
    , AdministratorWebTokenSpecPlaySearch
    , administratorWebTokenSpecPlaySearch
    , awtspsEnabled
    , awtspsApproveApps

    -- ** DeviceState
    , DeviceState
    , deviceState
    , dsAccountState

    -- ** AppRestrictionsSchemaRestrictionRestrictionType
    , AppRestrictionsSchemaRestrictionRestrictionType (..)

    -- ** ProductPermissionState
    , ProductPermissionState (..)

    -- ** GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrUser

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** AdministratorWebTokenSpecWebApps
    , AdministratorWebTokenSpecWebApps
    , administratorWebTokenSpecWebApps
    , awtswaEnabled

    -- ** ProductDistributionChannel
    , ProductDistributionChannel (..)

    -- ** ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL

    -- ** ManagedConfigurationsSettingsListResponse
    , ManagedConfigurationsSettingsListResponse
    , managedConfigurationsSettingsListResponse
    , mcslrManagedConfigurationsSettings

    -- ** ManagedProperty
    , ManagedProperty
    , managedProperty
    , mpValueStringArray
    , mpValueBool
    , mpKey
    , mpValueBundle
    , mpValueInteger
    , mpValueBundleArray
    , mpValueString

    -- ** StoreLayoutClustersListResponse
    , StoreLayoutClustersListResponse
    , storeLayoutClustersListResponse
    , slclrCluster

    -- ** ManagedConfiguration
    , ManagedConfiguration
    , managedConfiguration
    , mcManagedProperty
    , mcKind
    , mcConfigurationVariables
    , mcProductId

    -- ** AutoInstallConstraintDeviceIdleStateConstraint
    , AutoInstallConstraintDeviceIdleStateConstraint (..)

    -- ** StoreCluster
    , StoreCluster
    , storeCluster
    , scName
    , scOrderInPage
    , scId
    , scProductId

    -- ** AdministratorWebTokenSpec
    , AdministratorWebTokenSpec
    , administratorWebTokenSpec
    , awtsParent
    , awtsZeroTouch
    , awtsPrivateApps
    , awtsPlaySearch
    , awtsWebApps
    , awtsPermission
    , awtsStoreBuilder
    , awtsManagedConfigurations

    -- ** ProductContentRating
    , ProductContentRating (..)

    -- ** ProductVisibility
    , ProductVisibility
    , productVisibility
    , pvTracks
    , pvTrackIds
    , pvProductId

    -- ** EntitlementReason
    , EntitlementReason (..)

    -- ** Notification
    , Notification
    , notification
    , nEnterpriseId
    , nNewPermissionsEvent
    , nProductApprovalEvent
    , nProductAvailabilityChangeEvent
    , nAppUpdateEvent
    , nInstallFailureEvent
    , nNotificationType
    , nAppRestrictionsSchemaChangeEvent
    , nNewDeviceEvent
    , nTimestampMillis
    , nDeviceReportUpdateEvent

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- ** ProductAvailabilityChangeEventAvailabilityStatus
    , ProductAvailabilityChangeEventAvailabilityStatus (..)

    -- ** ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- ** AutoInstallConstraintNetworkTypeConstraint
    , AutoInstallConstraintNetworkTypeConstraint (..)

    -- ** StoreLayoutStoreLayoutType
    , StoreLayoutStoreLayoutType (..)

    -- ** NewPermissionsEvent
    , NewPermissionsEvent
    , newPermissionsEvent
    , npeRequestedPermissions
    , npeApprovedPermissions
    , npeProductId

    -- ** ProductAvailabilityChangeEvent
    , ProductAvailabilityChangeEvent
    , productAvailabilityChangeEvent
    , paceAvailabilityStatus
    , paceProductId

    -- ** ProductApprovalEvent
    , ProductApprovalEvent
    , productApprovalEvent
    , paeApproved
    , paeProductId

    -- ** UserAccountType
    , UserAccountType (..)

    -- ** Device
    , Device
    , device
    , dReport
    , dPolicy
    , dManagementType
    , dAndroidId

    -- ** WebAppDisplayMode
    , WebAppDisplayMode (..)

    -- ** AutoInstallConstraint
    , AutoInstallConstraint
    , autoInstallConstraint
    , aicChargingStateConstraint
    , aicDeviceIdleStateConstraint
    , aicNetworkTypeConstraint

    -- ** ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakData
    , sakId
    , sakType
    , sakPublicData

    -- ** InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrInstall

    -- ** AppRestrictionsSchemaRestriction
    , AppRestrictionsSchemaRestriction
    , appRestrictionsSchemaRestriction
    , arsrRestrictionType
    , arsrEntry
    , arsrKey
    , arsrEntryValue
    , arsrDefaultValue
    , arsrTitle
    , arsrDescription
    , arsrNestedRestriction

    -- ** ProductPolicy
    , ProductPolicy
    , productPolicy
    , ppTracks
    , ppManagedConfiguration
    , ppTrackIds
    , ppAutoUpdateMode
    , ppAutoInstallPolicy
    , ppProductId

    -- ** Administrator
    , Administrator
    , administrator
    , aEmail

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrUser

    -- ** NewDeviceEventManagementType
    , NewDeviceEventManagementType (..)

    -- ** AdministratorWebTokenSpecStoreBuilder
    , AdministratorWebTokenSpecStoreBuilder
    , administratorWebTokenSpecStoreBuilder
    , awtssbEnabled

    -- ** AuthenticationToken
    , AuthenticationToken
    , authenticationToken
    , atToken

    -- ** ProductAvailableTracksItem
    , ProductAvailableTracksItem (..)

    -- ** ManagedConfigurationsSettings
    , ManagedConfigurationsSettings
    , managedConfigurationsSettings
    , mcsLastUpdatedTimestampMillis
    , mcsMcmId
    , mcsName

    -- ** AppVersion
    , AppVersion
    , appVersion
    , avTrack
    , avVersionCode
    , avVersionString
    , avTrackId
    , avIsProduction

    -- ** AdministratorWebTokenSpecPermissionItem
    , AdministratorWebTokenSpecPermissionItem (..)

    -- ** AppState
    , AppState
    , appState
    , asPackageName
    , asKeyedAppState

    -- ** EnterprisesPullNotificationSetRequestMode
    , EnterprisesPullNotificationSetRequestMode (..)

    -- ** DeviceReport
    , DeviceReport
    , deviceReport
    , drLastUpdatedTimestampMillis
    , drAppState

    -- ** PolicyAutoUpdatePolicy
    , PolicyAutoUpdatePolicy (..)

    -- ** ManagedPropertyBundle
    , ManagedPropertyBundle
    , managedPropertyBundle
    , mpbManagedProperty

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense

    -- ** PolicyDeviceReportPolicy
    , PolicyDeviceReportPolicy (..)

    -- ** ProductPolicyAutoUpdateMode
    , ProductPolicyAutoUpdateMode (..)

    -- ** AutoInstallConstraintChargingStateConstraint
    , AutoInstallConstraintChargingStateConstraint (..)

    -- ** InstallFailureEventFailureReason
    , InstallFailureEventFailureReason (..)

    -- ** ProductSet
    , ProductSet
    , productSet
    , psProductVisibility
    , psProductSetBehavior
    , psProductId

    -- ** Install
    , Install
    , install
    , iVersionCode
    , iInstallState
    , iProductId

    -- ** MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwDurationMs
    , mwStartTimeAfterMidnightMs

    -- ** ServiceAccountKeysListResponse
    , ServiceAccountKeysListResponse
    , serviceAccountKeysListResponse
    , saklrServiceAccountKey

    -- ** TrackInfo
    , TrackInfo
    , trackInfo
    , tiTrackAlias
    , tiTrackId

    -- ** User
    , User
    , user
    , uAccountIdentifier
    , uDisplayName
    , uId
    , uPrimaryEmail
    , uManagementType
    , uAccountType

    -- ** AppVersionTrack
    , AppVersionTrack (..)

    -- ** AppRestrictionsSchemaRestrictionRestrictionValueType
    , AppRestrictionsSchemaRestrictionRestrictionValueType (..)

    -- ** ProductSetProductSetBehavior
    , ProductSetProductSetBehavior (..)

    -- ** ManagedConfigurationsForDeviceListResponse
    , ManagedConfigurationsForDeviceListResponse
    , managedConfigurationsForDeviceListResponse
    , mcfdlrManagedConfigurationForDevice

    -- ** ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurURL

    -- ** StorePage
    , StorePage
    , storePage
    , spLink
    , spName
    , spId

    -- ** ProductVisibilityTracksItem
    , ProductVisibilityTracksItem (..)

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saKey
    , saName

    -- ** VariableSet
    , VariableSet
    , variableSet
    , vsUserValue
    , vsPlaceholder

    -- ** AppUpdateEvent
    , AppUpdateEvent
    , appUpdateEvent
    , aueProductId

    -- ** GroupLicensePermissions
    , GroupLicensePermissions (..)

    -- ** EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrEnterprise

    -- ** NotificationSet
    , NotificationSet
    , notificationSet
    , nsNotificationSetId
    , nsNotification

    -- ** InstallInstallState
    , InstallInstallState (..)

    -- ** AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- ** UserManagementType
    , UserManagementType (..)

    -- ** PolicyProductAvailabilityPolicy
    , PolicyProductAvailabilityPolicy (..)

    -- ** WebAppIcon
    , WebAppIcon
    , webAppIcon
    , waiImageData

    -- ** LocalizedText
    , LocalizedText
    , localizedText
    , ltText
    , ltLocale

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdministratorWebTokenSpecPrivateApps
    , AdministratorWebTokenSpecPrivateApps
    , administratorWebTokenSpecPrivateApps
    , awtspaEnabled

    -- ** ProductPolicyTracksItem
    , ProductPolicyTracksItem (..)

    -- ** AdministratorWebTokenSpecZeroTouch
    , AdministratorWebTokenSpecZeroTouch
    , administratorWebTokenSpecZeroTouch
    , awtsztEnabled

    -- ** DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrDevice

    -- ** ProductSigningCertificate
    , ProductSigningCertificate
    , productSigningCertificate
    , pscCertificateHashSha256
    , pscCertificateHashSha1

    -- ** Enterprise
    , Enterprise
    , enterprise
    , eAdministrator
    , ePrimaryDomain
    , eName
    , eId

    -- ** GroupLicenseAcquisitionKind
    , GroupLicenseAcquisitionKind (..)

    -- ** ProductsApproveRequestApprovedPermissions
    , ProductsApproveRequestApprovedPermissions (..)

    -- ** InstallFailureEvent
    , InstallFailureEvent
    , installFailureEvent
    , ifeFailureReason
    , ifeFailureDetails
    , ifeUserId
    , ifeDeviceId
    , ifeProductId

    -- ** ManagedConfigurationsForUserListResponse
    , ManagedConfigurationsForUserListResponse
    , managedConfigurationsForUserListResponse
    , mcfulrManagedConfigurationForUser

    -- ** ConfigurationVariables
    , ConfigurationVariables
    , configurationVariables
    , cvMcmId
    , cvVariableSet

    -- ** StoreLayout
    , StoreLayout
    , storeLayout
    , slStoreLayoutType
    , slHomepageId

    -- ** AppRestrictionsSchemaChangeEvent
    , AppRestrictionsSchemaChangeEvent
    , appRestrictionsSchemaChangeEvent
    , arsceProductId

    -- ** NotificationNotificationType
    , NotificationNotificationType (..)

    -- ** ProductProductPricing
    , ProductProductPricing (..)

    -- ** NewDeviceEvent
    , NewDeviceEvent
    , newDeviceEvent
    , ndeUserId
    , ndeDpcPackageName
    , ndeDeviceId
    , ndeManagementType

    -- ** Policy
    , Policy
    , policy
    , pProductAvailabilityPolicy
    , pProductPolicy
    , pMaintenanceWindow
    , pDeviceReportPolicy
    , pAutoUpdatePolicy

    -- ** KeyedAppState
    , KeyedAppState
    , keyedAppState
    , kasStateTimestampMillis
    , kasData
    , kasSeverity
    , kasKey
    , kasMessage

    -- ** AdministratorWebToken
    , AdministratorWebToken
    , administratorWebToken
    , awtToken

    -- ** SignupInfo
    , SignupInfo
    , signupInfo
    , siCompletionToken
    , siKind
    , siURL

    -- ** DeviceManagementType
    , DeviceManagementType (..)

    -- ** Product
    , Product
    , product
    , pScreenshotURLs
    , pLastUpdatedTimestampMillis
    , pSmallIconURL
    , pAuthorName
    , pAppTracks
    , pWorkDetailsURL
    , pRequiresContainerApp
    , pCategory
    , pAppVersion
    , pProductPricing
    , pDistributionChannel
    , pMinAndroidSdkVersion
    , pAvailableCountries
    , pFeatures
    , pAvailableTracks
    , pIconURL
    , pPermissions
    , pTitle
    , pSigningCertificate
    , pContentRating
    , pProductId
    , pRecentChanges
    , pDescription
    , pDetailsURL

    -- ** GroupLicenseApproval
    , GroupLicenseApproval (..)

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrEntitlement

    -- ** KeyedAppStateSeverity
    , KeyedAppStateSeverity (..)

    -- ** EnterprisesGetServiceAccountKeyType
    , EnterprisesGetServiceAccountKeyType (..)

    -- ** ProductPermissions
    , ProductPermissions
    , productPermissions
    , ppsPermission
    , ppsProductId

    -- ** AdministratorWebTokenSpecManagedConfigurations
    , AdministratorWebTokenSpecManagedConfigurations
    , administratorWebTokenSpecManagedConfigurations
    , awtsmcEnabled

    -- ** Permission
    , Permission
    , permission
    , perName
    , perDescription
    , perPermissionId

    -- ** ServiceAccountKeyType
    , ServiceAccountKeyType (..)

    -- ** AutoInstallPolicyAutoInstallMode
    , AutoInstallPolicyAutoInstallMode (..)

    -- ** DeviceReportUpdateEvent
    , DeviceReportUpdateEvent
    , deviceReportUpdateEvent
    , drueReport
    , drueUserId
    , drueDeviceId

    -- ** ProductApprovalEventApproved
    , ProductApprovalEventApproved (..)

    -- ** WebAppsListResponse
    , WebAppsListResponse
    , webAppsListResponse
    , walrWebApp

    -- ** ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalURLInfo
    , parApprovedPermissions

    -- ** AutoInstallPolicy
    , AutoInstallPolicy
    , autoInstallPolicy
    , aipAutoInstallConstraint
    , aipAutoInstallPriority
    , aipAutoInstallMode
    , aipMinimumVersionCode

    -- ** ProductFeaturesItem
    , ProductFeaturesItem (..)

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eReason
    , eProductId

    -- ** ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plrTokenPagination
    , plrPageInfo
    , plrProduct

    -- ** DeviceStateAccountState
    , DeviceStateAccountState (..)

    -- ** WebApp
    , WebApp
    , webApp
    , waWebAppId
    , waVersionCode
    , waIcons
    , waStartURL
    , waDisplayMode
    , waIsPublished
    , waTitle
    ) where

import Network.Google.Prelude
import Network.Google.AndroidEnterprise.Types
import Network.Google.Resource.AndroidEnterprise.Devices.ForceReportUpload
import Network.Google.Resource.AndroidEnterprise.Devices.Get
import Network.Google.Resource.AndroidEnterprise.Devices.GetState
import Network.Google.Resource.AndroidEnterprise.Devices.List
import Network.Google.Resource.AndroidEnterprise.Devices.SetState
import Network.Google.Resource.AndroidEnterprise.Devices.Update
import Network.Google.Resource.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
import Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup
import Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken
import Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
import Network.Google.Resource.AndroidEnterprise.Enterprises.GenerateSignupURL
import Network.Google.Resource.AndroidEnterprise.Enterprises.Get
import Network.Google.Resource.AndroidEnterprise.Enterprises.GetServiceAccount
import Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout
import Network.Google.Resource.AndroidEnterprise.Enterprises.List
import Network.Google.Resource.AndroidEnterprise.Enterprises.PullNotificationSet
import Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
import Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
import Network.Google.Resource.AndroidEnterprise.Enterprises.SetStoreLayout
import Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
import Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
import Network.Google.Resource.AndroidEnterprise.Entitlements.Get
import Network.Google.Resource.AndroidEnterprise.Entitlements.List
import Network.Google.Resource.AndroidEnterprise.Entitlements.Update
import Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
import Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
import Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
import Network.Google.Resource.AndroidEnterprise.Installs.Delete
import Network.Google.Resource.AndroidEnterprise.Installs.Get
import Network.Google.Resource.AndroidEnterprise.Installs.List
import Network.Google.Resource.AndroidEnterprise.Installs.Update
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Delete
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Get
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.List
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Update
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Get
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.List
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Update
import Network.Google.Resource.AndroidEnterprise.ManagedConfigurationssettings.List
import Network.Google.Resource.AndroidEnterprise.Permissions.Get
import Network.Google.Resource.AndroidEnterprise.Products.Approve
import Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
import Network.Google.Resource.AndroidEnterprise.Products.Get
import Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema
import Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
import Network.Google.Resource.AndroidEnterprise.Products.List
import Network.Google.Resource.AndroidEnterprise.Products.UnApprove
import Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Delete
import Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Insert
import Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List
import Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete
import Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get
import Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert
import Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List
import Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Update
import Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
import Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Get
import Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Insert
import Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
import Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
import Network.Google.Resource.AndroidEnterprise.Users.Delete
import Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken
import Network.Google.Resource.AndroidEnterprise.Users.Get
import Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
import Network.Google.Resource.AndroidEnterprise.Users.Insert
import Network.Google.Resource.AndroidEnterprise.Users.List
import Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess
import Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet
import Network.Google.Resource.AndroidEnterprise.Users.Update
import Network.Google.Resource.AndroidEnterprise.WebApps.Delete
import Network.Google.Resource.AndroidEnterprise.WebApps.Get
import Network.Google.Resource.AndroidEnterprise.WebApps.Insert
import Network.Google.Resource.AndroidEnterprise.WebApps.List
import Network.Google.Resource.AndroidEnterprise.WebApps.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play EMM API service.
type AndroidEnterpriseAPI =
     StorelayoutclustersInsertResource :<|>
       StorelayoutclustersListResource
       :<|> StorelayoutclustersGetResource
       :<|> StorelayoutclustersDeleteResource
       :<|> StorelayoutclustersUpdateResource
       :<|> UsersInsertResource
       :<|> UsersListResource
       :<|> UsersGenerateAuthenticationTokenResource
       :<|> UsersGetResource
       :<|> UsersRevokeDeviceAccessResource
       :<|> UsersSetAvailableProductSetResource
       :<|> UsersGetAvailableProductSetResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
       :<|> InstallsListResource
       :<|> InstallsGetResource
       :<|> InstallsDeleteResource
       :<|> InstallsUpdateResource
       :<|> StorelayoutpagesInsertResource
       :<|> StorelayoutpagesListResource
       :<|> StorelayoutpagesGetResource
       :<|> StorelayoutpagesDeleteResource
       :<|> StorelayoutpagesUpdateResource
       :<|> ServiceAccountkeysInsertResource
       :<|> ServiceAccountkeysListResource
       :<|> ServiceAccountkeysDeleteResource
       :<|> ManagedConfigurationssettingsListResource
       :<|> EnterprisesCompleteSignupResource
       :<|> EnterprisesCreateWebTokenResource
       :<|> EnterprisesGetServiceAccountResource
       :<|> EnterprisesListResource
       :<|> EnterprisesUnenrollResource
       :<|> EnterprisesGetStoreLayoutResource
       :<|> EnterprisesSetAccountResource
       :<|> EnterprisesEnrollResource
       :<|> EnterprisesGetResource
       :<|> EnterprisesGenerateSignupURLResource
       :<|> EnterprisesSendTestPushNotificationResource
       :<|> EnterprisesSetStoreLayoutResource
       :<|> EnterprisesAcknowledgeNotificationSetResource
       :<|> EnterprisesPullNotificationSetResource
       :<|> ManagedConfigurationsforUserListResource
       :<|> ManagedConfigurationsforUserGetResource
       :<|> ManagedConfigurationsforUserDeleteResource
       :<|> ManagedConfigurationsforUserUpdateResource
       :<|> GrouplicensesListResource
       :<|> GrouplicensesGetResource
       :<|> WebAppsInsertResource
       :<|> WebAppsListResource
       :<|> WebAppsGetResource
       :<|> WebAppsDeleteResource
       :<|> WebAppsUpdateResource
       :<|> EntitlementsListResource
       :<|> EntitlementsGetResource
       :<|> EntitlementsDeleteResource
       :<|> EntitlementsUpdateResource
       :<|> ManagedConfigurationsforDeviceListResource
       :<|> ManagedConfigurationsforDeviceGetResource
       :<|> ManagedConfigurationsforDeviceDeleteResource
       :<|> ManagedConfigurationsforDeviceUpdateResource
       :<|> PermissionsGetResource
       :<|> ProductsGenerateApprovalURLResource
       :<|> ProductsListResource
       :<|> ProductsGetResource
       :<|> ProductsGetAppRestrictionsSchemaResource
       :<|> ProductsUnApproveResource
       :<|> ProductsApproveResource
       :<|> ProductsGetPermissionsResource
       :<|> DevicesListResource
       :<|> DevicesSetStateResource
       :<|> DevicesForceReportUploadResource
       :<|> DevicesGetResource
       :<|> DevicesGetStateResource
       :<|> DevicesUpdateResource
       :<|> GrouplicenseUsersListResource
