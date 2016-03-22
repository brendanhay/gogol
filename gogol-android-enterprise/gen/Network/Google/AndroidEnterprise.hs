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
-- Allows MDMs\/EMMs and enterprises to manage the deployment of apps to
-- Android for Work users.
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

    -- ** androidenterprise.collections.delete
    , module Network.Google.Resource.AndroidEnterprise.Collections.Delete

    -- ** androidenterprise.collections.get
    , module Network.Google.Resource.AndroidEnterprise.Collections.Get

    -- ** androidenterprise.collections.insert
    , module Network.Google.Resource.AndroidEnterprise.Collections.Insert

    -- ** androidenterprise.collections.list
    , module Network.Google.Resource.AndroidEnterprise.Collections.List

    -- ** androidenterprise.collections.patch
    , module Network.Google.Resource.AndroidEnterprise.Collections.Patch

    -- ** androidenterprise.collections.update
    , module Network.Google.Resource.AndroidEnterprise.Collections.Update

    -- ** androidenterprise.collectionviewers.delete
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete

    -- ** androidenterprise.collectionviewers.get
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get

    -- ** androidenterprise.collectionviewers.list
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.List

    -- ** androidenterprise.collectionviewers.patch
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch

    -- ** androidenterprise.collectionviewers.update
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update

    -- ** androidenterprise.devices.get
    , module Network.Google.Resource.AndroidEnterprise.Devices.Get

    -- ** androidenterprise.devices.getState
    , module Network.Google.Resource.AndroidEnterprise.Devices.GetState

    -- ** androidenterprise.devices.list
    , module Network.Google.Resource.AndroidEnterprise.Devices.List

    -- ** androidenterprise.devices.setState
    , module Network.Google.Resource.AndroidEnterprise.Devices.SetState

    -- ** androidenterprise.enterprises.delete
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Delete

    -- ** androidenterprise.enterprises.enroll
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll

    -- ** androidenterprise.enterprises.get
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Get

    -- ** androidenterprise.enterprises.getStoreLayout
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout

    -- ** androidenterprise.enterprises.insert
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Insert

    -- ** androidenterprise.enterprises.list
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.List

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

    -- ** androidenterprise.entitlements.patch
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Patch

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

    -- ** androidenterprise.installs.patch
    , module Network.Google.Resource.AndroidEnterprise.Installs.Patch

    -- ** androidenterprise.installs.update
    , module Network.Google.Resource.AndroidEnterprise.Installs.Update

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

    -- ** androidenterprise.products.updatePermissions
    , module Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions

    -- ** androidenterprise.storelayoutclusters.delete
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete

    -- ** androidenterprise.storelayoutclusters.get
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get

    -- ** androidenterprise.storelayoutclusters.insert
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert

    -- ** androidenterprise.storelayoutclusters.list
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List

    -- ** androidenterprise.storelayoutclusters.patch
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Patch

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

    -- ** androidenterprise.storelayoutpages.patch
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Patch

    -- ** androidenterprise.storelayoutpages.update
    , module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update

    -- ** androidenterprise.users.generateToken
    , module Network.Google.Resource.AndroidEnterprise.Users.GenerateToken

    -- ** androidenterprise.users.get
    , module Network.Google.Resource.AndroidEnterprise.Users.Get

    -- ** androidenterprise.users.getAvailableProductSet
    , module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet

    -- ** androidenterprise.users.list
    , module Network.Google.Resource.AndroidEnterprise.Users.List

    -- ** androidenterprise.users.revokeToken
    , module Network.Google.Resource.AndroidEnterprise.Users.RevokeToken

    -- ** androidenterprise.users.setAvailableProductSet
    , module Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet

    -- * Types

    -- ** GroupLicense
    , GroupLicense
    , groupLicense
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glProductId
    , glAcquisitionKind

    -- ** StoreLayoutPagesListResponse
    , StoreLayoutPagesListResponse
    , storeLayoutPagesListResponse
    , slplrKind
    , slplrPage

    -- ** EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaKind
    , eaAccountEmail

    -- ** CollectionsListResponse
    , CollectionsListResponse
    , collectionsListResponse
    , clrKind
    , clrCollection

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- ** DeviceState
    , DeviceState
    , deviceState
    , dsKind
    , dsAccountState

    -- ** GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrKind
    , glulrUser

    -- ** ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL
    , auiKind

    -- ** StoreLayoutClustersListResponse
    , StoreLayoutClustersListResponse
    , storeLayoutClustersListResponse
    , slclrCluster
    , slclrKind

    -- ** StoreCluster
    , StoreCluster
    , storeCluster
    , scKind
    , scName
    , scOrderInPage
    , scId
    , scProductId

    -- ** ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- ** Device
    , Device
    , device
    , dKind
    , dManagementType
    , dAndroidId

    -- ** InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrKind
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

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrKind
    , ulrUser

    -- ** AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- ** Collection
    , Collection
    , collection
    , colKind
    , colCollectionId
    , colVisibility
    , colName
    , colProductId

    -- ** ProductSet
    , ProductSet
    , productSet
    , psKind
    , psProductId

    -- ** Install
    , Install
    , install
    , iVersionCode
    , iKind
    , iInstallState
    , iProductId

    -- ** User
    , User
    , user
    , uKind
    , uId
    , uPrimaryEmail

    -- ** ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurURL

    -- ** StorePage
    , StorePage
    , storePage
    , spKind
    , spLink
    , spName
    , spId

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- ** EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

    -- ** AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- ** LocalizedText
    , LocalizedText
    , localizedText
    , ltText
    , ltLocale

    -- ** UserToken
    , UserToken
    , userToken
    , utKind
    , utToken
    , utUserId

    -- ** DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrKind
    , dlrDevice

    -- ** Enterprise
    , Enterprise
    , enterprise
    , eKind
    , ePrimaryDomain
    , eName
    , eId

    -- ** StoreLayout
    , StoreLayout
    , storeLayout
    , slKind
    , slHomepageId

    -- ** Product
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

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , entKind
    , entEntitlement

    -- ** ProductPermissions
    , ProductPermissions
    , productPermissions
    , ppKind
    , ppPermission
    , ppProductId

    -- ** Permission
    , Permission
    , permission
    , perKind
    , perName
    , perDescription
    , perPermissionId

    -- ** ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalURLInfo

    -- ** CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AndroidEnterprise.Collections.Delete
import           Network.Google.Resource.AndroidEnterprise.Collections.Get
import           Network.Google.Resource.AndroidEnterprise.Collections.Insert
import           Network.Google.Resource.AndroidEnterprise.Collections.List
import           Network.Google.Resource.AndroidEnterprise.Collections.Patch
import           Network.Google.Resource.AndroidEnterprise.Collections.Update
import           Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
import           Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
import           Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
import           Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
import           Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
import           Network.Google.Resource.AndroidEnterprise.Devices.Get
import           Network.Google.Resource.AndroidEnterprise.Devices.GetState
import           Network.Google.Resource.AndroidEnterprise.Devices.List
import           Network.Google.Resource.AndroidEnterprise.Devices.SetState
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Get
import           Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
import           Network.Google.Resource.AndroidEnterprise.Enterprises.List
import           Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
import           Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
import           Network.Google.Resource.AndroidEnterprise.Enterprises.SetStoreLayout
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
import           Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
import           Network.Google.Resource.AndroidEnterprise.Entitlements.Get
import           Network.Google.Resource.AndroidEnterprise.Entitlements.List
import           Network.Google.Resource.AndroidEnterprise.Entitlements.Patch
import           Network.Google.Resource.AndroidEnterprise.Entitlements.Update
import           Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
import           Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
import           Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
import           Network.Google.Resource.AndroidEnterprise.Installs.Delete
import           Network.Google.Resource.AndroidEnterprise.Installs.Get
import           Network.Google.Resource.AndroidEnterprise.Installs.List
import           Network.Google.Resource.AndroidEnterprise.Installs.Patch
import           Network.Google.Resource.AndroidEnterprise.Installs.Update
import           Network.Google.Resource.AndroidEnterprise.Permissions.Get
import           Network.Google.Resource.AndroidEnterprise.Products.Approve
import           Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
import           Network.Google.Resource.AndroidEnterprise.Products.Get
import           Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema
import           Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
import           Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Patch
import           Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Update
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Get
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Insert
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Patch
import           Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
import           Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
import           Network.Google.Resource.AndroidEnterprise.Users.Get
import           Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
import           Network.Google.Resource.AndroidEnterprise.Users.List
import           Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
import           Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play EMM API service.
type AndroidEnterpriseAPI =
     StorelayoutclustersInsertResource :<|>
       StorelayoutclustersListResource
       :<|> StorelayoutclustersPatchResource
       :<|> StorelayoutclustersGetResource
       :<|> StorelayoutclustersDeleteResource
       :<|> StorelayoutclustersUpdateResource
       :<|> CollectionviewersListResource
       :<|> CollectionviewersPatchResource
       :<|> CollectionviewersGetResource
       :<|> CollectionviewersDeleteResource
       :<|> CollectionviewersUpdateResource
       :<|> UsersListResource
       :<|> UsersGenerateTokenResource
       :<|> UsersGetResource
       :<|> UsersSetAvailableProductSetResource
       :<|> UsersRevokeTokenResource
       :<|> UsersGetAvailableProductSetResource
       :<|> InstallsListResource
       :<|> InstallsPatchResource
       :<|> InstallsGetResource
       :<|> InstallsDeleteResource
       :<|> InstallsUpdateResource
       :<|> StorelayoutpagesInsertResource
       :<|> StorelayoutpagesListResource
       :<|> StorelayoutpagesPatchResource
       :<|> StorelayoutpagesGetResource
       :<|> StorelayoutpagesDeleteResource
       :<|> StorelayoutpagesUpdateResource
       :<|> CollectionsInsertResource
       :<|> CollectionsListResource
       :<|> CollectionsPatchResource
       :<|> CollectionsGetResource
       :<|> CollectionsDeleteResource
       :<|> CollectionsUpdateResource
       :<|> EnterprisesInsertResource
       :<|> EnterprisesListResource
       :<|> EnterprisesUnenrollResource
       :<|> EnterprisesGetStoreLayoutResource
       :<|> EnterprisesSetAccountResource
       :<|> EnterprisesEnrollResource
       :<|> EnterprisesGetResource
       :<|> EnterprisesSendTestPushNotificationResource
       :<|> EnterprisesSetStoreLayoutResource
       :<|> EnterprisesDeleteResource
       :<|> GrouplicensesListResource
       :<|> GrouplicensesGetResource
       :<|> EntitlementsListResource
       :<|> EntitlementsPatchResource
       :<|> EntitlementsGetResource
       :<|> EntitlementsDeleteResource
       :<|> EntitlementsUpdateResource
       :<|> PermissionsGetResource
       :<|> ProductsGenerateApprovalURLResource
       :<|> ProductsGetResource
       :<|> ProductsGetAppRestrictionsSchemaResource
       :<|> ProductsApproveResource
       :<|> ProductsGetPermissionsResource
       :<|> ProductsUpdatePermissionsResource
       :<|> DevicesListResource
       :<|> DevicesSetStateResource
       :<|> DevicesGetResource
       :<|> DevicesGetStateResource
       :<|> GrouplicenseUsersListResource
