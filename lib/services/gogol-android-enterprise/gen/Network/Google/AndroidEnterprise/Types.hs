{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidEnterprise.Types
    (
    -- * Service Configuration
      androidEnterpriseService

    -- * OAuth Scopes
    , androidEnterpriseScope

    -- * GroupLicense
    , GroupLicense
    , groupLicense
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glPermissions
    , glProductId
    , glAcquisitionKind

    -- * StoreLayoutPagesListResponse
    , StoreLayoutPagesListResponse
    , storeLayoutPagesListResponse
    , slplrPage

    -- * EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaAccountEmail

    -- * AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- * AdministratorWebTokenSpecPlaySearch
    , AdministratorWebTokenSpecPlaySearch
    , administratorWebTokenSpecPlaySearch
    , awtspsEnabled
    , awtspsApproveApps

    -- * DeviceState
    , DeviceState
    , deviceState
    , dsAccountState

    -- * AppRestrictionsSchemaRestrictionRestrictionType
    , AppRestrictionsSchemaRestrictionRestrictionType (..)

    -- * ProductPermissionState
    , ProductPermissionState (..)

    -- * GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrUser

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- * AdministratorWebTokenSpecWebApps
    , AdministratorWebTokenSpecWebApps
    , administratorWebTokenSpecWebApps
    , awtswaEnabled

    -- * ProductDistributionChannel
    , ProductDistributionChannel (..)

    -- * ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL

    -- * ManagedConfigurationsSettingsListResponse
    , ManagedConfigurationsSettingsListResponse
    , managedConfigurationsSettingsListResponse
    , mcslrManagedConfigurationsSettings

    -- * ManagedProperty
    , ManagedProperty
    , managedProperty
    , mpValueStringArray
    , mpValueBool
    , mpKey
    , mpValueBundle
    , mpValueInteger
    , mpValueBundleArray
    , mpValueString

    -- * StoreLayoutClustersListResponse
    , StoreLayoutClustersListResponse
    , storeLayoutClustersListResponse
    , slclrCluster

    -- * ManagedConfiguration
    , ManagedConfiguration
    , managedConfiguration
    , mcManagedProperty
    , mcKind
    , mcConfigurationVariables
    , mcProductId

    -- * AutoInstallConstraintDeviceIdleStateConstraint
    , AutoInstallConstraintDeviceIdleStateConstraint (..)

    -- * StoreCluster
    , StoreCluster
    , storeCluster
    , scName
    , scOrderInPage
    , scId
    , scProductId

    -- * AdministratorWebTokenSpec
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

    -- * ProductContentRating
    , ProductContentRating (..)

    -- * ProductVisibility
    , ProductVisibility
    , productVisibility
    , pvTracks
    , pvTrackIds
    , pvProductId

    -- * EntitlementReason
    , EntitlementReason (..)

    -- * Notification
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

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- * ProductAvailabilityChangeEventAvailabilityStatus
    , ProductAvailabilityChangeEventAvailabilityStatus (..)

    -- * ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- * AutoInstallConstraintNetworkTypeConstraint
    , AutoInstallConstraintNetworkTypeConstraint (..)

    -- * StoreLayoutStoreLayoutType
    , StoreLayoutStoreLayoutType (..)

    -- * NewPermissionsEvent
    , NewPermissionsEvent
    , newPermissionsEvent
    , npeRequestedPermissions
    , npeApprovedPermissions
    , npeProductId

    -- * ProductAvailabilityChangeEvent
    , ProductAvailabilityChangeEvent
    , productAvailabilityChangeEvent
    , paceAvailabilityStatus
    , paceProductId

    -- * ProductApprovalEvent
    , ProductApprovalEvent
    , productApprovalEvent
    , paeApproved
    , paeProductId

    -- * UserAccountType
    , UserAccountType (..)

    -- * Device
    , Device
    , device
    , dReport
    , dPolicy
    , dManagementType
    , dAndroidId

    -- * WebAppDisplayMode
    , WebAppDisplayMode (..)

    -- * AutoInstallConstraint
    , AutoInstallConstraint
    , autoInstallConstraint
    , aicChargingStateConstraint
    , aicDeviceIdleStateConstraint
    , aicNetworkTypeConstraint

    -- * ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakData
    , sakId
    , sakType
    , sakPublicData

    -- * InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrInstall

    -- * AppRestrictionsSchemaRestriction
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

    -- * ProductPolicy
    , ProductPolicy
    , productPolicy
    , ppTracks
    , ppManagedConfiguration
    , ppTrackIds
    , ppAutoUpdateMode
    , ppAutoInstallPolicy
    , ppProductId

    -- * Administrator
    , Administrator
    , administrator
    , aEmail

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrUser

    -- * NewDeviceEventManagementType
    , NewDeviceEventManagementType (..)

    -- * AdministratorWebTokenSpecStoreBuilder
    , AdministratorWebTokenSpecStoreBuilder
    , administratorWebTokenSpecStoreBuilder
    , awtssbEnabled

    -- * AuthenticationToken
    , AuthenticationToken
    , authenticationToken
    , atToken

    -- * ProductAvailableTracksItem
    , ProductAvailableTracksItem (..)

    -- * ManagedConfigurationsSettings
    , ManagedConfigurationsSettings
    , managedConfigurationsSettings
    , mcsLastUpdatedTimestampMillis
    , mcsMcmId
    , mcsName

    -- * AppVersion
    , AppVersion
    , appVersion
    , avTrack
    , avVersionCode
    , avVersionString
    , avTrackId
    , avIsProduction

    -- * AdministratorWebTokenSpecPermissionItem
    , AdministratorWebTokenSpecPermissionItem (..)

    -- * AppState
    , AppState
    , appState
    , asPackageName
    , asKeyedAppState

    -- * EnterprisesPullNotificationSetRequestMode
    , EnterprisesPullNotificationSetRequestMode (..)

    -- * DeviceReport
    , DeviceReport
    , deviceReport
    , drLastUpdatedTimestampMillis
    , drAppState

    -- * PolicyAutoUpdatePolicy
    , PolicyAutoUpdatePolicy (..)

    -- * ManagedPropertyBundle
    , ManagedPropertyBundle
    , managedPropertyBundle
    , mpbManagedProperty

    -- * GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense

    -- * PolicyDeviceReportPolicy
    , PolicyDeviceReportPolicy (..)

    -- * ProductPolicyAutoUpdateMode
    , ProductPolicyAutoUpdateMode (..)

    -- * AutoInstallConstraintChargingStateConstraint
    , AutoInstallConstraintChargingStateConstraint (..)

    -- * InstallFailureEventFailureReason
    , InstallFailureEventFailureReason (..)

    -- * ProductSet
    , ProductSet
    , productSet
    , psProductVisibility
    , psProductSetBehavior
    , psProductId

    -- * Install
    , Install
    , install
    , iVersionCode
    , iInstallState
    , iProductId

    -- * MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwDurationMs
    , mwStartTimeAfterMidnightMs

    -- * ServiceAccountKeysListResponse
    , ServiceAccountKeysListResponse
    , serviceAccountKeysListResponse
    , saklrServiceAccountKey

    -- * TrackInfo
    , TrackInfo
    , trackInfo
    , tiTrackAlias
    , tiTrackId

    -- * User
    , User
    , user
    , uAccountIdentifier
    , uDisplayName
    , uId
    , uPrimaryEmail
    , uManagementType
    , uAccountType

    -- * AppVersionTrack
    , AppVersionTrack (..)

    -- * AppRestrictionsSchemaRestrictionRestrictionValueType
    , AppRestrictionsSchemaRestrictionRestrictionValueType (..)

    -- * ProductSetProductSetBehavior
    , ProductSetProductSetBehavior (..)

    -- * ManagedConfigurationsForDeviceListResponse
    , ManagedConfigurationsForDeviceListResponse
    , managedConfigurationsForDeviceListResponse
    , mcfdlrManagedConfigurationForDevice

    -- * ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurURL

    -- * StorePage
    , StorePage
    , storePage
    , spLink
    , spName
    , spId

    -- * ProductVisibilityTracksItem
    , ProductVisibilityTracksItem (..)

    -- * EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saKey
    , saName

    -- * VariableSet
    , VariableSet
    , variableSet
    , vsUserValue
    , vsPlaceholder

    -- * AppUpdateEvent
    , AppUpdateEvent
    , appUpdateEvent
    , aueProductId

    -- * GroupLicensePermissions
    , GroupLicensePermissions (..)

    -- * EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrEnterprise

    -- * NotificationSet
    , NotificationSet
    , notificationSet
    , nsNotificationSetId
    , nsNotification

    -- * InstallInstallState
    , InstallInstallState (..)

    -- * AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- * UserManagementType
    , UserManagementType (..)

    -- * PolicyProductAvailabilityPolicy
    , PolicyProductAvailabilityPolicy (..)

    -- * WebAppIcon
    , WebAppIcon
    , webAppIcon
    , waiImageData

    -- * LocalizedText
    , LocalizedText
    , localizedText
    , ltText
    , ltLocale

    -- * Xgafv
    , Xgafv (..)

    -- * AdministratorWebTokenSpecPrivateApps
    , AdministratorWebTokenSpecPrivateApps
    , administratorWebTokenSpecPrivateApps
    , awtspaEnabled

    -- * ProductPolicyTracksItem
    , ProductPolicyTracksItem (..)

    -- * AdministratorWebTokenSpecZeroTouch
    , AdministratorWebTokenSpecZeroTouch
    , administratorWebTokenSpecZeroTouch
    , awtsztEnabled

    -- * DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrDevice

    -- * ProductSigningCertificate
    , ProductSigningCertificate
    , productSigningCertificate
    , pscCertificateHashSha256
    , pscCertificateHashSha1

    -- * Enterprise
    , Enterprise
    , enterprise
    , eAdministrator
    , ePrimaryDomain
    , eName
    , eId

    -- * GroupLicenseAcquisitionKind
    , GroupLicenseAcquisitionKind (..)

    -- * ProductsApproveRequestApprovedPermissions
    , ProductsApproveRequestApprovedPermissions (..)

    -- * InstallFailureEvent
    , InstallFailureEvent
    , installFailureEvent
    , ifeFailureReason
    , ifeFailureDetails
    , ifeUserId
    , ifeDeviceId
    , ifeProductId

    -- * ManagedConfigurationsForUserListResponse
    , ManagedConfigurationsForUserListResponse
    , managedConfigurationsForUserListResponse
    , mcfulrManagedConfigurationForUser

    -- * ConfigurationVariables
    , ConfigurationVariables
    , configurationVariables
    , cvMcmId
    , cvVariableSet

    -- * StoreLayout
    , StoreLayout
    , storeLayout
    , slStoreLayoutType
    , slHomepageId

    -- * AppRestrictionsSchemaChangeEvent
    , AppRestrictionsSchemaChangeEvent
    , appRestrictionsSchemaChangeEvent
    , arsceProductId

    -- * NotificationNotificationType
    , NotificationNotificationType (..)

    -- * ProductProductPricing
    , ProductProductPricing (..)

    -- * NewDeviceEvent
    , NewDeviceEvent
    , newDeviceEvent
    , ndeUserId
    , ndeDpcPackageName
    , ndeDeviceId
    , ndeManagementType

    -- * Policy
    , Policy
    , policy
    , pProductAvailabilityPolicy
    , pProductPolicy
    , pMaintenanceWindow
    , pDeviceReportPolicy
    , pAutoUpdatePolicy

    -- * KeyedAppState
    , KeyedAppState
    , keyedAppState
    , kasStateTimestampMillis
    , kasData
    , kasSeverity
    , kasKey
    , kasMessage

    -- * AdministratorWebToken
    , AdministratorWebToken
    , administratorWebToken
    , awtToken

    -- * SignupInfo
    , SignupInfo
    , signupInfo
    , siCompletionToken
    , siKind
    , siURL

    -- * DeviceManagementType
    , DeviceManagementType (..)

    -- * Product
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

    -- * GroupLicenseApproval
    , GroupLicenseApproval (..)

    -- * EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrEntitlement

    -- * KeyedAppStateSeverity
    , KeyedAppStateSeverity (..)

    -- * EnterprisesGetServiceAccountKeyType
    , EnterprisesGetServiceAccountKeyType (..)

    -- * ProductPermissions
    , ProductPermissions
    , productPermissions
    , ppsPermission
    , ppsProductId

    -- * AdministratorWebTokenSpecManagedConfigurations
    , AdministratorWebTokenSpecManagedConfigurations
    , administratorWebTokenSpecManagedConfigurations
    , awtsmcEnabled

    -- * Permission
    , Permission
    , permission
    , perName
    , perDescription
    , perPermissionId

    -- * ServiceAccountKeyType
    , ServiceAccountKeyType (..)

    -- * AutoInstallPolicyAutoInstallMode
    , AutoInstallPolicyAutoInstallMode (..)

    -- * DeviceReportUpdateEvent
    , DeviceReportUpdateEvent
    , deviceReportUpdateEvent
    , drueReport
    , drueUserId
    , drueDeviceId

    -- * ProductApprovalEventApproved
    , ProductApprovalEventApproved (..)

    -- * WebAppsListResponse
    , WebAppsListResponse
    , webAppsListResponse
    , walrWebApp

    -- * ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalURLInfo
    , parApprovedPermissions

    -- * AutoInstallPolicy
    , AutoInstallPolicy
    , autoInstallPolicy
    , aipAutoInstallConstraint
    , aipAutoInstallPriority
    , aipAutoInstallMode
    , aipMinimumVersionCode

    -- * ProductFeaturesItem
    , ProductFeaturesItem (..)

    -- * Entitlement
    , Entitlement
    , entitlement
    , eReason
    , eProductId

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plrTokenPagination
    , plrPageInfo
    , plrProduct

    -- * DeviceStateAccountState
    , DeviceStateAccountState (..)

    -- * WebApp
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

import Network.Google.AndroidEnterprise.Types.Product
import Network.Google.AndroidEnterprise.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play EMM API. This contains the host and root path used as a starting point for constructing service requests.
androidEnterpriseService :: ServiceConfig
androidEnterpriseService
  = defaultService (ServiceId "androidenterprise:v1")
      "androidenterprise.googleapis.com"

-- | Manage corporate Android devices
androidEnterpriseScope :: Proxy '["https://www.googleapis.com/auth/androidenterprise"]
androidEnterpriseScope = Proxy
