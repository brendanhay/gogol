{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Allows MDMs\/EMMs and enterprises to manage the deployment of apps to
-- Android for Work users.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference>
module Network.Google.AndroidEnterprise
    (
    -- * API
      AndroidEnterpriseAPI
    , androidEnterpriseAPI
    , androidEnterpriseURL

    -- * Service Methods

    -- * REST Resources

    -- ** AndroidEnterpriseCollectionsDelete
    , module Network.Google.Resource.AndroidEnterprise.Collections.Delete

    -- ** AndroidEnterpriseCollectionsGet
    , module Network.Google.Resource.AndroidEnterprise.Collections.Get

    -- ** AndroidEnterpriseCollectionsInsert
    , module Network.Google.Resource.AndroidEnterprise.Collections.Insert

    -- ** AndroidEnterpriseCollectionsList
    , module Network.Google.Resource.AndroidEnterprise.Collections.List

    -- ** AndroidEnterpriseCollectionsPatch
    , module Network.Google.Resource.AndroidEnterprise.Collections.Patch

    -- ** AndroidEnterpriseCollectionsUpdate
    , module Network.Google.Resource.AndroidEnterprise.Collections.Update

    -- ** AndroidEnterpriseCollectionviewersDelete
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete

    -- ** AndroidEnterpriseCollectionviewersGet
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get

    -- ** AndroidEnterpriseCollectionviewersList
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.List

    -- ** AndroidEnterpriseCollectionviewersPatch
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch

    -- ** AndroidEnterpriseCollectionviewersUpdate
    , module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update

    -- ** AndroidEnterpriseDevicesGet
    , module Network.Google.Resource.AndroidEnterprise.Devices.Get

    -- ** AndroidEnterpriseDevicesGetState
    , module Network.Google.Resource.AndroidEnterprise.Devices.GetState

    -- ** AndroidEnterpriseDevicesList
    , module Network.Google.Resource.AndroidEnterprise.Devices.List

    -- ** AndroidEnterpriseDevicesSetState
    , module Network.Google.Resource.AndroidEnterprise.Devices.SetState

    -- ** AndroidEnterpriseEnterprisesDelete
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Delete

    -- ** AndroidEnterpriseEnterprisesEnroll
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll

    -- ** AndroidEnterpriseEnterprisesGet
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Get

    -- ** AndroidEnterpriseEnterprisesInsert
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Insert

    -- ** AndroidEnterpriseEnterprisesList
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.List

    -- ** AndroidEnterpriseEnterprisesSendTestPushNotification
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification

    -- ** AndroidEnterpriseEnterprisesSetAccount
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount

    -- ** AndroidEnterpriseEnterprisesUnenroll
    , module Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll

    -- ** AndroidEnterpriseEntitlementsDelete
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Delete

    -- ** AndroidEnterpriseEntitlementsGet
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Get

    -- ** AndroidEnterpriseEntitlementsList
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.List

    -- ** AndroidEnterpriseEntitlementsPatch
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Patch

    -- ** AndroidEnterpriseEntitlementsUpdate
    , module Network.Google.Resource.AndroidEnterprise.Entitlements.Update

    -- ** AndroidEnterpriseGrouplicensesGet
    , module Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get

    -- ** AndroidEnterpriseGrouplicensesList
    , module Network.Google.Resource.AndroidEnterprise.Grouplicenses.List

    -- ** AndroidEnterpriseGrouplicenseUsersList
    , module Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List

    -- ** AndroidEnterpriseInstallsDelete
    , module Network.Google.Resource.AndroidEnterprise.Installs.Delete

    -- ** AndroidEnterpriseInstallsGet
    , module Network.Google.Resource.AndroidEnterprise.Installs.Get

    -- ** AndroidEnterpriseInstallsList
    , module Network.Google.Resource.AndroidEnterprise.Installs.List

    -- ** AndroidEnterpriseInstallsPatch
    , module Network.Google.Resource.AndroidEnterprise.Installs.Patch

    -- ** AndroidEnterpriseInstallsUpdate
    , module Network.Google.Resource.AndroidEnterprise.Installs.Update

    -- ** AndroidEnterprisePermissionsGet
    , module Network.Google.Resource.AndroidEnterprise.Permissions.Get

    -- ** AndroidEnterpriseProductsApprove
    , module Network.Google.Resource.AndroidEnterprise.Products.Approve

    -- ** AndroidEnterpriseProductsGenerateApprovalURL
    , module Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL

    -- ** AndroidEnterpriseProductsGet
    , module Network.Google.Resource.AndroidEnterprise.Products.Get

    -- ** AndroidEnterpriseProductsGetAppRestrictionsSchema
    , module Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema

    -- ** AndroidEnterpriseProductsGetPermissions
    , module Network.Google.Resource.AndroidEnterprise.Products.GetPermissions

    -- ** AndroidEnterpriseProductsUpdatePermissions
    , module Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions

    -- ** AndroidEnterpriseUsersGenerateToken
    , module Network.Google.Resource.AndroidEnterprise.Users.GenerateToken

    -- ** AndroidEnterpriseUsersGet
    , module Network.Google.Resource.AndroidEnterprise.Users.Get

    -- ** AndroidEnterpriseUsersGetAvailableProductSet
    , module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet

    -- ** AndroidEnterpriseUsersList
    , module Network.Google.Resource.AndroidEnterprise.Users.List

    -- ** AndroidEnterpriseUsersRevokeToken
    , module Network.Google.Resource.AndroidEnterprise.Users.RevokeToken

    -- ** AndroidEnterpriseUsersSetAvailableProductSet
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
    , cKind
    , cCollectionId
    , cVisibility
    , cName
    , cProductId

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

    -- ** Product
    , Product
    , product
    , proAuthorName
    , proKind
    , proWorkDetailsURL
    , proRequiresContainerApp
    , proAppVersion
    , proDistributionChannel
    , proIconURL
    , proTitle
    , proProductId
    , proDetailsURL

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
    , pKind
    , pName
    , pDescription
    , pPermissionId

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
import           Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
import           Network.Google.Resource.AndroidEnterprise.Enterprises.List
import           Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
import           Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
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
import           Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
import           Network.Google.Resource.AndroidEnterprise.Users.Get
import           Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
import           Network.Google.Resource.AndroidEnterprise.Users.List
import           Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
import           Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet

{- $resources
TODO
-}

type AndroidEnterpriseAPI =
     CollectionviewersListResource :<|>
       CollectionviewersPatchResource
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
       :<|> CollectionsInsertResource
       :<|> CollectionsListResource
       :<|> CollectionsPatchResource
       :<|> CollectionsGetResource
       :<|> CollectionsDeleteResource
       :<|> CollectionsUpdateResource
       :<|> EnterprisesInsertResource
       :<|> EnterprisesListResource
       :<|> EnterprisesUnenrollResource
       :<|> EnterprisesSetAccountResource
       :<|> EnterprisesEnrollResource
       :<|> EnterprisesGetResource
       :<|> EnterprisesSendTestPushNotificationResource
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

androidEnterpriseAPI :: Proxy AndroidEnterpriseAPI
androidEnterpriseAPI = Proxy
