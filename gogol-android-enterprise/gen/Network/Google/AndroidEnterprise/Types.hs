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

    -- * ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL
    , auiKind

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
    , awtsKind
    , awtsPermission

    -- * Notification
    , Notification
    , notification
    , nEnterpriseId
    , nNewPermissionsEvent
    , nProductApprovalEvent
    , nProductAvailabilityChangeEvent
    , nAppUpdateEvent
    , nInstallFailureEvent
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
    , dManagementType
    , dAndroidId

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

    -- * Administrator
    , Administrator
    , administrator
    , aEmail

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrKind
    , ulrUser

    -- * AuthenticationToken
    , AuthenticationToken
    , authenticationToken
    , atKind
    , atToken

    -- * AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

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

    -- * ServiceAccountKeysListResponse
    , ServiceAccountKeysListResponse
    , serviceAccountKeysListResponse
    , saklrServiceAccountKey

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

    -- * DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrKind
    , dlrDevice

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
    , ndeDeviceId
    , ndeManagementType

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
    , pSmallIconURL
    , pAuthorName
    , pKind
    , pWorkDetailsURL
    , pRequiresContainerApp
    , pAppVersion
    , pProductPricing
    , pDistributionChannel
    , pIconURL
    , pTitle
    , pProductId
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
    , ppKind
    , ppPermission
    , ppProductId

    -- * Permission
    , Permission
    , permission
    , perKind
    , perName
    , perDescription
    , perPermissionId

    -- * ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalURLInfo

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
androidEnterpriseScope = Proxy;
