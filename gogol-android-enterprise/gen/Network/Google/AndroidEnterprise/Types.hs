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
    , authAndroidenterpriseScope

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

    -- * CollectionsListResponse
    , CollectionsListResponse
    , collectionsListResponse
    , clrKind
    , clrCollection

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

    -- * ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL
    , auiKind

    -- * StoreLayoutClustersListResponse
    , StoreLayoutClustersListResponse
    , storeLayoutClustersListResponse
    , slclrCluster
    , slclrKind

    -- * StoreCluster
    , StoreCluster
    , storeCluster
    , scKind
    , scName
    , scOrderInPage
    , scId
    , scProductId

    -- * ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- * Device
    , Device
    , device
    , dKind
    , dManagementType
    , dAndroidId

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

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrKind
    , ulrUser

    -- * AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

    -- * GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- * Collection
    , Collection
    , collection
    , colKind
    , colCollectionId
    , colVisibility
    , colName
    , colProductId

    -- * ProductSet
    , ProductSet
    , productSet
    , psKind
    , psProductId

    -- * Install
    , Install
    , install
    , iVersionCode
    , iKind
    , iInstallState
    , iProductId

    -- * User
    , User
    , user
    , uKind
    , uId
    , uPrimaryEmail

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

    -- * EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

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
    , ePrimaryDomain
    , eName
    , eId

    -- * StoreLayout
    , StoreLayout
    , storeLayout
    , slKind
    , slHomepageId

    -- * Product
    , Product
    , product
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

    -- * CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

    -- * Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId
    ) where

import           Network.Google.AndroidEnterprise.Types.Product
import           Network.Google.AndroidEnterprise.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play EMM API. This contains the host and root path used as a starting point for constructing service requests.
androidEnterpriseService :: Service
androidEnterpriseService
  = defaultService (ServiceId "androidenterprise:v1")
      "www.googleapis.com"

-- | Manage corporate Android devices
authAndroidenterpriseScope :: Proxy '["https://www.googleapis.com/auth/androidenterprise"]
authAndroidenterpriseScope = Proxy;
