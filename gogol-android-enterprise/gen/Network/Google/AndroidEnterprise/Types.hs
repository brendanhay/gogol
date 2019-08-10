{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glPermissions
    , glProductId
    , glAcquisitionKind

    -- * StoreLayoutPagesListResponse
    , StoreLayoutPagesListResponse
    , storeLayoutPagesListResponse
    , slplrKind
    , slplrPage

    -- * EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaKind
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
    , dsKind
    , dsAccountState

    -- * GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrKind
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

    -- * ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL
    , auiKind

    -- * ManagedConfigurationsSettingsListResponse
    , ManagedConfigurationsSettingsListResponse
    , managedConfigurationsSettingsListResponse
    , mcslrKind
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
    , slclrKind

    -- * ManagedConfiguration
    , ManagedConfiguration
    , managedConfiguration
    , mcManagedProperty
    , mcKind
    , mcConfigurationVariables
    , mcProductId

    -- * StoreCluster
    , StoreCluster
    , storeCluster
    , scKind
    , scName
    , scOrderInPage
    , scId
    , scProductId

    -- * AdministratorWebTokenSpec
    , AdministratorWebTokenSpec
    , administratorWebTokenSpec
    , awtsParent
    , awtsPrivateApps
    , awtsPlaySearch
    , awtsKind
    , awtsWebApps
    , awtsPermission
    , awtsStoreBuilder
    , awtsManagedConfigurations

    -- * ProductVisibility
    , ProductVisibility
    , productVisibility
    , pvTracks
    , pvTrackIds
    , pvProductId

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

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- * ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

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

    -- * Device
    , Device
    , device
    , dKind
    , dPolicy
    , dManagementType
    , dAndroidId

    -- * AutoInstallConstraint
    , AutoInstallConstraint
    , autoInstallConstraint
    , aicChargingStateConstraint
    , aicDeviceIdleStateConstraint
    , aicNetworkTypeConstraint

    -- * ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakKind
    , sakData
    , sakId
    , sakType
    , sakPublicData

    -- * InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrKind
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
    , ppAutoInstallPolicy
    , ppProductId

    -- * Administrator
    , Administrator
    , administrator
    , aEmail

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrKind
    , ulrUser

    -- * AdministratorWebTokenSpecStoreBuilder
    , AdministratorWebTokenSpecStoreBuilder
    , administratorWebTokenSpecStoreBuilder
    , awtssbEnabled

    -- * AuthenticationToken
    , AuthenticationToken
    , authenticationToken
    , atKind
    , atToken

    -- * ManagedConfigurationsSettings
    , ManagedConfigurationsSettings
    , managedConfigurationsSettings
    , mcsLastUpdatedTimestampMillis
    , mcsManagedProperty
    , mcsKind
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

    -- * EnterprisesPullNotificationSetRequestMode
    , EnterprisesPullNotificationSetRequestMode (..)

    -- * ManagedPropertyBundle
    , ManagedPropertyBundle
    , managedPropertyBundle
    , mpbManagedProperty

    -- * GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- * ProductSet
    , ProductSet
    , productSet
    , psProductVisibility
    , psKind
    , psProductSetBehavior
    , psProductId

    -- * Install
    , Install
    , install
    , iVersionCode
    , iKind
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
    , uKind
    , uDisplayName
    , uId
    , uPrimaryEmail
    , uManagementType
    , uAccountType

    -- * ManagedConfigurationsForDeviceListResponse
    , ManagedConfigurationsForDeviceListResponse
    , managedConfigurationsForDeviceListResponse
    , mcfdlrKind
    , mcfdlrManagedConfigurationForDevice

    -- * ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurURL

    -- * StorePage
    , StorePage
    , storePage
    , spKind
    , spLink
    , spName
    , spId

    -- * EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saKind
    , saKey
    , saName

    -- * VariableSet
    , VariableSet
    , variableSet
    , vsKind
    , vsUserValue
    , vsPlaceholder

    -- * AppUpdateEvent
    , AppUpdateEvent
    , appUpdateEvent
    , aueProductId

    -- * EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

    -- * NotificationSet
    , NotificationSet
    , notificationSet
    , nsNotificationSetId
    , nsNotification
    , nsKind

    -- * AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- * WebAppIcon
    , WebAppIcon
    , webAppIcon
    , waiImageData

    -- * LocalizedText
    , LocalizedText
    , localizedText
    , ltText
    , ltLocale

    -- * UserToken
    , UserToken
    , userToken
    , utKind
    , utToken
    , utUserId

    -- * AdministratorWebTokenSpecPrivateApps
    , AdministratorWebTokenSpecPrivateApps
    , administratorWebTokenSpecPrivateApps
    , awtspaEnabled

    -- * DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrKind
    , dlrDevice

    -- * ProductSigningCertificate
    , ProductSigningCertificate
    , productSigningCertificate
    , pscCertificateHashSha256
    , pscCertificateHashSha1

    -- * Enterprise
    , Enterprise
    , enterprise
    , eKind
    , eAdministrator
    , ePrimaryDomain
    , eName
    , eId

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
    , mcfulrKind

    -- * ConfigurationVariables
    , ConfigurationVariables
    , configurationVariables
    , cvKind
    , cvMcmId
    , cvVariableSet

    -- * StoreLayout
    , StoreLayout
    , storeLayout
    , slStoreLayoutType
    , slKind
    , slHomepageId

    -- * AppRestrictionsSchemaChangeEvent
    , AppRestrictionsSchemaChangeEvent
    , appRestrictionsSchemaChangeEvent
    , arsceProductId

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
    , pAutoUpdatePolicy

    -- * AdministratorWebToken
    , AdministratorWebToken
    , administratorWebToken
    , awtKind
    , awtToken

    -- * SignupInfo
    , SignupInfo
    , signupInfo
    , siCompletionToken
    , siKind
    , siURL

    -- * Product
    , Product
    , product
    , pScreenshotURLs
    , pLastUpdatedTimestampMillis
    , pSmallIconURL
    , pAuthorName
    , pAppTracks
    , pKind
    , pWorkDetailsURL
    , pRequiresContainerApp
    , pCategory
    , pAppVersion
    , pProductPricing
    , pDistributionChannel
    , pMinAndroidSdkVersion
    , pAvailableCountries
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

    -- * EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , entKind
    , entEntitlement

    -- * EnterprisesGetServiceAccountKeyType
    , EnterprisesGetServiceAccountKeyType (..)

    -- * ProductPermissions
    , ProductPermissions
    , productPermissions
    , ppsKind
    , ppsPermission
    , ppsProductId

    -- * AdministratorWebTokenSpecManagedConfigurations
    , AdministratorWebTokenSpecManagedConfigurations
    , administratorWebTokenSpecManagedConfigurations
    , awtsmcEnabled

    -- * Permission
    , Permission
    , permission
    , perKind
    , perName
    , perDescription
    , perPermissionId

    -- * WebAppsListResponse
    , WebAppsListResponse
    , webAppsListResponse
    , walrKind
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

    -- * Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plrTokenPagination
    , plrPageInfo
    , plrKind
    , plrProduct

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

import           Network.Google.AndroidEnterprise.Types.Product
import           Network.Google.AndroidEnterprise.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play EMM API. This contains the host and root path used as a starting point for constructing service requests.
androidEnterpriseService :: ServiceConfig
androidEnterpriseService
  = defaultService (ServiceId "androidenterprise:v1")
      "www.googleapis.com"

-- | Manage corporate Android devices
androidEnterpriseScope :: Proxy '["https://www.googleapis.com/auth/androidenterprise"]
androidEnterpriseScope = Proxy
