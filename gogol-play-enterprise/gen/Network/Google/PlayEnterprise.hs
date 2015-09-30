{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlayEnterprise
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Allows MDMs\/EMMs and enterprises to manage the deployment of apps to
-- Android for Work users.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference>
module Network.Google.PlayEnterprise
    (
    -- * API
      PlayEnterpriseAPI
    , playEnterpriseAPI
    , playEnterpriseURL

    -- * Service Methods

    -- * REST Resources

    -- ** AndroidenterpriseCollectionsDelete
    , module Network.Google.Resource.Androidenterprise.Collections.Delete

    -- ** AndroidenterpriseCollectionsGet
    , module Network.Google.Resource.Androidenterprise.Collections.Get

    -- ** AndroidenterpriseCollectionsInsert
    , module Network.Google.Resource.Androidenterprise.Collections.Insert

    -- ** AndroidenterpriseCollectionsList
    , module Network.Google.Resource.Androidenterprise.Collections.List

    -- ** AndroidenterpriseCollectionsPatch
    , module Network.Google.Resource.Androidenterprise.Collections.Patch

    -- ** AndroidenterpriseCollectionsUpdate
    , module Network.Google.Resource.Androidenterprise.Collections.Update

    -- ** AndroidenterpriseCollectionviewersDelete
    , module Network.Google.Resource.Androidenterprise.Collectionviewers.Delete

    -- ** AndroidenterpriseCollectionviewersGet
    , module Network.Google.Resource.Androidenterprise.Collectionviewers.Get

    -- ** AndroidenterpriseCollectionviewersList
    , module Network.Google.Resource.Androidenterprise.Collectionviewers.List

    -- ** AndroidenterpriseCollectionviewersPatch
    , module Network.Google.Resource.Androidenterprise.Collectionviewers.Patch

    -- ** AndroidenterpriseCollectionviewersUpdate
    , module Network.Google.Resource.Androidenterprise.Collectionviewers.Update

    -- ** AndroidenterpriseDevicesGet
    , module Network.Google.Resource.Androidenterprise.Devices.Get

    -- ** AndroidenterpriseDevicesGetState
    , module Network.Google.Resource.Androidenterprise.Devices.GetState

    -- ** AndroidenterpriseDevicesList
    , module Network.Google.Resource.Androidenterprise.Devices.List

    -- ** AndroidenterpriseDevicesSetState
    , module Network.Google.Resource.Androidenterprise.Devices.SetState

    -- ** AndroidenterpriseEnterprisesDelete
    , module Network.Google.Resource.Androidenterprise.Enterprises.Delete

    -- ** AndroidenterpriseEnterprisesEnroll
    , module Network.Google.Resource.Androidenterprise.Enterprises.Enroll

    -- ** AndroidenterpriseEnterprisesGet
    , module Network.Google.Resource.Androidenterprise.Enterprises.Get

    -- ** AndroidenterpriseEnterprisesInsert
    , module Network.Google.Resource.Androidenterprise.Enterprises.Insert

    -- ** AndroidenterpriseEnterprisesList
    , module Network.Google.Resource.Androidenterprise.Enterprises.List

    -- ** AndroidenterpriseEnterprisesSendTestPushNotification
    , module Network.Google.Resource.Androidenterprise.Enterprises.SendTestPushNotification

    -- ** AndroidenterpriseEnterprisesSetAccount
    , module Network.Google.Resource.Androidenterprise.Enterprises.SetAccount

    -- ** AndroidenterpriseEnterprisesUnenroll
    , module Network.Google.Resource.Androidenterprise.Enterprises.Unenroll

    -- ** AndroidenterpriseEntitlementsDelete
    , module Network.Google.Resource.Androidenterprise.Entitlements.Delete

    -- ** AndroidenterpriseEntitlementsGet
    , module Network.Google.Resource.Androidenterprise.Entitlements.Get

    -- ** AndroidenterpriseEntitlementsList
    , module Network.Google.Resource.Androidenterprise.Entitlements.List

    -- ** AndroidenterpriseEntitlementsPatch
    , module Network.Google.Resource.Androidenterprise.Entitlements.Patch

    -- ** AndroidenterpriseEntitlementsUpdate
    , module Network.Google.Resource.Androidenterprise.Entitlements.Update

    -- ** AndroidenterpriseGrouplicensesGet
    , module Network.Google.Resource.Androidenterprise.Grouplicenses.Get

    -- ** AndroidenterpriseGrouplicensesList
    , module Network.Google.Resource.Androidenterprise.Grouplicenses.List

    -- ** AndroidenterpriseGrouplicenseusersList
    , module Network.Google.Resource.Androidenterprise.Grouplicenseusers.List

    -- ** AndroidenterpriseInstallsDelete
    , module Network.Google.Resource.Androidenterprise.Installs.Delete

    -- ** AndroidenterpriseInstallsGet
    , module Network.Google.Resource.Androidenterprise.Installs.Get

    -- ** AndroidenterpriseInstallsList
    , module Network.Google.Resource.Androidenterprise.Installs.List

    -- ** AndroidenterpriseInstallsPatch
    , module Network.Google.Resource.Androidenterprise.Installs.Patch

    -- ** AndroidenterpriseInstallsUpdate
    , module Network.Google.Resource.Androidenterprise.Installs.Update

    -- ** AndroidenterprisePermissionsGet
    , module Network.Google.Resource.Androidenterprise.Permissions.Get

    -- ** AndroidenterpriseProductsApprove
    , module Network.Google.Resource.Androidenterprise.Products.Approve

    -- ** AndroidenterpriseProductsGenerateApprovalURL
    , module Network.Google.Resource.Androidenterprise.Products.GenerateApprovalURL

    -- ** AndroidenterpriseProductsGet
    , module Network.Google.Resource.Androidenterprise.Products.Get

    -- ** AndroidenterpriseProductsGetAppRestrictionsSchema
    , module Network.Google.Resource.Androidenterprise.Products.GetAppRestrictionsSchema

    -- ** AndroidenterpriseProductsGetPermissions
    , module Network.Google.Resource.Androidenterprise.Products.GetPermissions

    -- ** AndroidenterpriseProductsUpdatePermissions
    , module Network.Google.Resource.Androidenterprise.Products.UpdatePermissions

    -- ** AndroidenterpriseUsersGenerateToken
    , module Network.Google.Resource.Androidenterprise.Users.GenerateToken

    -- ** AndroidenterpriseUsersGet
    , module Network.Google.Resource.Androidenterprise.Users.Get

    -- ** AndroidenterpriseUsersGetAvailableProductSet
    , module Network.Google.Resource.Androidenterprise.Users.GetAvailableProductSet

    -- ** AndroidenterpriseUsersList
    , module Network.Google.Resource.Androidenterprise.Users.List

    -- ** AndroidenterpriseUsersRevokeToken
    , module Network.Google.Resource.Androidenterprise.Users.RevokeToken

    -- ** AndroidenterpriseUsersSetAvailableProductSet
    , module Network.Google.Resource.Androidenterprise.Users.SetAvailableProductSet

    -- * Types

    -- ** CollectionsListResponse
    , CollectionsListResponse
    , collectionsListResponse
    , clrKind
    , clrCollection

    -- ** EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaKind
    , eaAccountEmail

    -- ** GroupLicense
    , GroupLicense
    , groupLicense
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glProductId
    , glAcquisitionKind

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- ** GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrKind
    , glulrUser

    -- ** DeviceState
    , DeviceState
    , deviceState
    , dsKind
    , dsAccountState

    -- ** ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalUrl
    , auiKind

    -- ** Device
    , Device
    , device
    , dKind
    , dManagementType
    , dAndroidId

    -- ** ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- ** AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

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

    -- ** InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrKind
    , ilrInstall

    -- ** Collection
    , Collection
    , collection
    , cKind
    , cCollectionId
    , cVisibility
    , cName
    , cProductId

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- ** User
    , User
    , user
    , uKind
    , uId
    , uPrimaryEmail

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

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- ** ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurUrl

    -- ** AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- ** EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

    -- ** DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrKind
    , dlrDevice

    -- ** UserToken
    , UserToken
    , userToken
    , utKind
    , utToken
    , utUserId

    -- ** Enterprise
    , Enterprise
    , enterprise
    , eKind
    , ePrimaryDomain
    , eName
    , eId

    -- ** Permission
    , Permission
    , permission
    , pKind
    , pName
    , pDescription
    , pPermissionId

    -- ** Product
    , Product
    , product
    , proAuthorName
    , proKind
    , proWorkDetailsUrl
    , proRequiresContainerApp
    , proAppVersion
    , proDistributionChannel
    , proIconUrl
    , proTitle
    , proProductId
    , proDetailsUrl

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

    -- ** CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

    -- ** ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalUrlInfo

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Androidenterprise.Collections.Delete
import           Network.Google.Resource.Androidenterprise.Collections.Get
import           Network.Google.Resource.Androidenterprise.Collections.Insert
import           Network.Google.Resource.Androidenterprise.Collections.List
import           Network.Google.Resource.Androidenterprise.Collections.Patch
import           Network.Google.Resource.Androidenterprise.Collections.Update
import           Network.Google.Resource.Androidenterprise.Collectionviewers.Delete
import           Network.Google.Resource.Androidenterprise.Collectionviewers.Get
import           Network.Google.Resource.Androidenterprise.Collectionviewers.List
import           Network.Google.Resource.Androidenterprise.Collectionviewers.Patch
import           Network.Google.Resource.Androidenterprise.Collectionviewers.Update
import           Network.Google.Resource.Androidenterprise.Devices.Get
import           Network.Google.Resource.Androidenterprise.Devices.GetState
import           Network.Google.Resource.Androidenterprise.Devices.List
import           Network.Google.Resource.Androidenterprise.Devices.SetState
import           Network.Google.Resource.Androidenterprise.Enterprises.Delete
import           Network.Google.Resource.Androidenterprise.Enterprises.Enroll
import           Network.Google.Resource.Androidenterprise.Enterprises.Get
import           Network.Google.Resource.Androidenterprise.Enterprises.Insert
import           Network.Google.Resource.Androidenterprise.Enterprises.List
import           Network.Google.Resource.Androidenterprise.Enterprises.SendTestPushNotification
import           Network.Google.Resource.Androidenterprise.Enterprises.SetAccount
import           Network.Google.Resource.Androidenterprise.Enterprises.Unenroll
import           Network.Google.Resource.Androidenterprise.Entitlements.Delete
import           Network.Google.Resource.Androidenterprise.Entitlements.Get
import           Network.Google.Resource.Androidenterprise.Entitlements.List
import           Network.Google.Resource.Androidenterprise.Entitlements.Patch
import           Network.Google.Resource.Androidenterprise.Entitlements.Update
import           Network.Google.Resource.Androidenterprise.Grouplicenses.Get
import           Network.Google.Resource.Androidenterprise.Grouplicenses.List
import           Network.Google.Resource.Androidenterprise.Grouplicenseusers.List
import           Network.Google.Resource.Androidenterprise.Installs.Delete
import           Network.Google.Resource.Androidenterprise.Installs.Get
import           Network.Google.Resource.Androidenterprise.Installs.List
import           Network.Google.Resource.Androidenterprise.Installs.Patch
import           Network.Google.Resource.Androidenterprise.Installs.Update
import           Network.Google.Resource.Androidenterprise.Permissions.Get
import           Network.Google.Resource.Androidenterprise.Products.Approve
import           Network.Google.Resource.Androidenterprise.Products.GenerateApprovalURL
import           Network.Google.Resource.Androidenterprise.Products.Get
import           Network.Google.Resource.Androidenterprise.Products.GetAppRestrictionsSchema
import           Network.Google.Resource.Androidenterprise.Products.GetPermissions
import           Network.Google.Resource.Androidenterprise.Products.UpdatePermissions
import           Network.Google.Resource.Androidenterprise.Users.GenerateToken
import           Network.Google.Resource.Androidenterprise.Users.Get
import           Network.Google.Resource.Androidenterprise.Users.GetAvailableProductSet
import           Network.Google.Resource.Androidenterprise.Users.List
import           Network.Google.Resource.Androidenterprise.Users.RevokeToken
import           Network.Google.Resource.Androidenterprise.Users.SetAvailableProductSet

{- $resources
TODO
-}

type PlayEnterpriseAPI =
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
       :<|> GrouplicenseusersListResource

playEnterpriseAPI :: Proxy PlayEnterpriseAPI
playEnterpriseAPI = Proxy
