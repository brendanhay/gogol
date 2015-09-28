{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Play.Enterprise
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
module Network.Google.Play.Enterprise
    (
    -- * REST Resources

    -- ** Google Play EMM API
      PlayEnterprise
    , playEnterprise
    , playEnterpriseURL

    -- ** androidenterprise.collections.delete
    , module Network.Google.API.Androidenterprise.Collections.Delete

    -- ** androidenterprise.collections.get
    , module Network.Google.API.Androidenterprise.Collections.Get

    -- ** androidenterprise.collections.insert
    , module Network.Google.API.Androidenterprise.Collections.Insert

    -- ** androidenterprise.collections.list
    , module Network.Google.API.Androidenterprise.Collections.List

    -- ** androidenterprise.collections.patch
    , module Network.Google.API.Androidenterprise.Collections.Patch

    -- ** androidenterprise.collections.update
    , module Network.Google.API.Androidenterprise.Collections.Update

    -- ** androidenterprise.collectionviewers.delete
    , module Network.Google.API.Androidenterprise.Collectionviewers.Delete

    -- ** androidenterprise.collectionviewers.get
    , module Network.Google.API.Androidenterprise.Collectionviewers.Get

    -- ** androidenterprise.collectionviewers.list
    , module Network.Google.API.Androidenterprise.Collectionviewers.List

    -- ** androidenterprise.collectionviewers.patch
    , module Network.Google.API.Androidenterprise.Collectionviewers.Patch

    -- ** androidenterprise.collectionviewers.update
    , module Network.Google.API.Androidenterprise.Collectionviewers.Update

    -- ** androidenterprise.devices.get
    , module Network.Google.API.Androidenterprise.Devices.Get

    -- ** androidenterprise.devices.getState
    , module Network.Google.API.Androidenterprise.Devices.GetState

    -- ** androidenterprise.devices.list
    , module Network.Google.API.Androidenterprise.Devices.List

    -- ** androidenterprise.devices.setState
    , module Network.Google.API.Androidenterprise.Devices.SetState

    -- ** androidenterprise.enterprises.delete
    , module Network.Google.API.Androidenterprise.Enterprises.Delete

    -- ** androidenterprise.enterprises.enroll
    , module Network.Google.API.Androidenterprise.Enterprises.Enroll

    -- ** androidenterprise.enterprises.get
    , module Network.Google.API.Androidenterprise.Enterprises.Get

    -- ** androidenterprise.enterprises.insert
    , module Network.Google.API.Androidenterprise.Enterprises.Insert

    -- ** androidenterprise.enterprises.list
    , module Network.Google.API.Androidenterprise.Enterprises.List

    -- ** androidenterprise.enterprises.sendTestPushNotification
    , module Network.Google.API.Androidenterprise.Enterprises.SendTestPushNotification

    -- ** androidenterprise.enterprises.setAccount
    , module Network.Google.API.Androidenterprise.Enterprises.SetAccount

    -- ** androidenterprise.enterprises.unenroll
    , module Network.Google.API.Androidenterprise.Enterprises.Unenroll

    -- ** androidenterprise.entitlements.delete
    , module Network.Google.API.Androidenterprise.Entitlements.Delete

    -- ** androidenterprise.entitlements.get
    , module Network.Google.API.Androidenterprise.Entitlements.Get

    -- ** androidenterprise.entitlements.list
    , module Network.Google.API.Androidenterprise.Entitlements.List

    -- ** androidenterprise.entitlements.patch
    , module Network.Google.API.Androidenterprise.Entitlements.Patch

    -- ** androidenterprise.entitlements.update
    , module Network.Google.API.Androidenterprise.Entitlements.Update

    -- ** androidenterprise.grouplicenses.get
    , module Network.Google.API.Androidenterprise.Grouplicenses.Get

    -- ** androidenterprise.grouplicenses.list
    , module Network.Google.API.Androidenterprise.Grouplicenses.List

    -- ** androidenterprise.grouplicenseusers.list
    , module Network.Google.API.Androidenterprise.Grouplicenseusers.List

    -- ** androidenterprise.installs.delete
    , module Network.Google.API.Androidenterprise.Installs.Delete

    -- ** androidenterprise.installs.get
    , module Network.Google.API.Androidenterprise.Installs.Get

    -- ** androidenterprise.installs.list
    , module Network.Google.API.Androidenterprise.Installs.List

    -- ** androidenterprise.installs.patch
    , module Network.Google.API.Androidenterprise.Installs.Patch

    -- ** androidenterprise.installs.update
    , module Network.Google.API.Androidenterprise.Installs.Update

    -- ** androidenterprise.permissions.get
    , module Network.Google.API.Androidenterprise.Permissions.Get

    -- ** androidenterprise.products.approve
    , module Network.Google.API.Androidenterprise.Products.Approve

    -- ** androidenterprise.products.generateApprovalUrl
    , module Network.Google.API.Androidenterprise.Products.GenerateApprovalURL

    -- ** androidenterprise.products.get
    , module Network.Google.API.Androidenterprise.Products.Get

    -- ** androidenterprise.products.getAppRestrictionsSchema
    , module Network.Google.API.Androidenterprise.Products.GetAppRestrictionsSchema

    -- ** androidenterprise.products.getPermissions
    , module Network.Google.API.Androidenterprise.Products.GetPermissions

    -- ** androidenterprise.products.updatePermissions
    , module Network.Google.API.Androidenterprise.Products.UpdatePermissions

    -- ** androidenterprise.users.generateToken
    , module Network.Google.API.Androidenterprise.Users.GenerateToken

    -- ** androidenterprise.users.get
    , module Network.Google.API.Androidenterprise.Users.Get

    -- ** androidenterprise.users.getAvailableProductSet
    , module Network.Google.API.Androidenterprise.Users.GetAvailableProductSet

    -- ** androidenterprise.users.list
    , module Network.Google.API.Androidenterprise.Users.List

    -- ** androidenterprise.users.revokeToken
    , module Network.Google.API.Androidenterprise.Users.RevokeToken

    -- ** androidenterprise.users.setAvailableProductSet
    , module Network.Google.API.Androidenterprise.Users.SetAvailableProductSet

    -- * Types

    -- ** ProductsGenerateApprovalUrlResponse
    , ProductsGenerateApprovalUrlResponse
    , productsGenerateApprovalUrlResponse
    , pgaurUrl

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

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

    -- ** Alt
    , Alt (..)

    -- ** ApprovalUrlInfo
    , ApprovalUrlInfo
    , approvalUrlInfo
    , auiApprovalUrl
    , auiKind

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
    , pAuthorName
    , pKind
    , pWorkDetailsUrl
    , pRequiresContainerApp
    , pAppVersion
    , pDistributionChannel
    , pIconUrl
    , pTitle
    , pProductId
    , pDetailsUrl

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

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- ** Collection
    , Collection
    , collection
    , ccKind
    , ccCollectionId
    , ccVisibility
    , ccName
    , ccProductId

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

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

    -- ** ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalUrlInfo

    -- ** CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

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

    -- ** ProductSet
    , ProductSet
    , productSet
    , psKind
    , psProductId
    ) where

import           Network.Google.API.Androidenterprise.Collections.Delete
import           Network.Google.API.Androidenterprise.Collections.Get
import           Network.Google.API.Androidenterprise.Collections.Insert
import           Network.Google.API.Androidenterprise.Collections.List
import           Network.Google.API.Androidenterprise.Collections.Patch
import           Network.Google.API.Androidenterprise.Collections.Update
import           Network.Google.API.Androidenterprise.Collectionviewers.Delete
import           Network.Google.API.Androidenterprise.Collectionviewers.Get
import           Network.Google.API.Androidenterprise.Collectionviewers.List
import           Network.Google.API.Androidenterprise.Collectionviewers.Patch
import           Network.Google.API.Androidenterprise.Collectionviewers.Update
import           Network.Google.API.Androidenterprise.Devices.Get
import           Network.Google.API.Androidenterprise.Devices.GetState
import           Network.Google.API.Androidenterprise.Devices.List
import           Network.Google.API.Androidenterprise.Devices.SetState
import           Network.Google.API.Androidenterprise.Enterprises.Delete
import           Network.Google.API.Androidenterprise.Enterprises.Enroll
import           Network.Google.API.Androidenterprise.Enterprises.Get
import           Network.Google.API.Androidenterprise.Enterprises.Insert
import           Network.Google.API.Androidenterprise.Enterprises.List
import           Network.Google.API.Androidenterprise.Enterprises.SendTestPushNotification
import           Network.Google.API.Androidenterprise.Enterprises.SetAccount
import           Network.Google.API.Androidenterprise.Enterprises.Unenroll
import           Network.Google.API.Androidenterprise.Entitlements.Delete
import           Network.Google.API.Androidenterprise.Entitlements.Get
import           Network.Google.API.Androidenterprise.Entitlements.List
import           Network.Google.API.Androidenterprise.Entitlements.Patch
import           Network.Google.API.Androidenterprise.Entitlements.Update
import           Network.Google.API.Androidenterprise.Grouplicenses.Get
import           Network.Google.API.Androidenterprise.Grouplicenses.List
import           Network.Google.API.Androidenterprise.Grouplicenseusers.List
import           Network.Google.API.Androidenterprise.Installs.Delete
import           Network.Google.API.Androidenterprise.Installs.Get
import           Network.Google.API.Androidenterprise.Installs.List
import           Network.Google.API.Androidenterprise.Installs.Patch
import           Network.Google.API.Androidenterprise.Installs.Update
import           Network.Google.API.Androidenterprise.Permissions.Get
import           Network.Google.API.Androidenterprise.Products.Approve
import           Network.Google.API.Androidenterprise.Products.GenerateApprovalURL
import           Network.Google.API.Androidenterprise.Products.Get
import           Network.Google.API.Androidenterprise.Products.GetAppRestrictionsSchema
import           Network.Google.API.Androidenterprise.Products.GetPermissions
import           Network.Google.API.Androidenterprise.Products.UpdatePermissions
import           Network.Google.API.Androidenterprise.Users.GenerateToken
import           Network.Google.API.Androidenterprise.Users.Get
import           Network.Google.API.Androidenterprise.Users.GetAvailableProductSet
import           Network.Google.API.Androidenterprise.Users.List
import           Network.Google.API.Androidenterprise.Users.RevokeToken
import           Network.Google.API.Androidenterprise.Users.SetAvailableProductSet
import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayEnterprise =
     ProductsGetPermissionsAPI :<|> InstallsGetAPI :<|>
       CollectionsUpdateAPI
       :<|> UsersGetAPI
       :<|> CollectionviewersDeleteAPI
       :<|> ProductsApproveAPI
       :<|> DevicesGetAPI
       :<|> CollectionviewersUpdateAPI
       :<|> GrouplicenseusersListAPI
       :<|> InstallsPatchAPI
       :<|> EntitlementsDeleteAPI
       :<|> EnterprisesDeleteAPI
       :<|> CollectionviewersListAPI
       :<|> EntitlementsGetAPI
       :<|> UsersListAPI
       :<|> EnterprisesGetAPI
       :<|> PermissionsGetAPI
       :<|> InstallsListAPI
       :<|> CollectionsPatchAPI
       :<|> InstallsUpdateAPI
       :<|> EnterprisesSendTestPushNotificationAPI
       :<|> DevicesSetStateAPI
       :<|> EntitlementsPatchAPI
       :<|> CollectionviewersPatchAPI
       :<|> UsersRevokeTokenAPI
       :<|> DevicesListAPI
       :<|> ProductsUpdatePermissionsAPI
       :<|> UsersGenerateTokenAPI
       :<|> EnterprisesListAPI
       :<|> EntitlementsListAPI
       :<|> GrouplicensesGetAPI
       :<|> EntitlementsUpdateAPI
       :<|> DevicesGetStateAPI
       :<|> UsersGetAvailableProductSetAPI
       :<|> ProductsGetAppRestrictionsSchemaAPI
       :<|> CollectionsGetAPI
       :<|> EnterprisesEnrollAPI
       :<|> CollectionsInsertAPI
       :<|> ProductsGetAPI
       :<|> CollectionviewersGetAPI
       :<|> EnterprisesInsertAPI
       :<|> CollectionsListAPI
       :<|> ProductsGenerateApprovalURLAPI
       :<|> UsersSetAvailableProductSetAPI
       :<|> CollectionsDeleteAPI
       :<|> EnterprisesSetAccountAPI
       :<|> EnterprisesUnenrollAPI
       :<|> InstallsDeleteAPI
       :<|> GrouplicensesListAPI

playEnterprise :: Proxy PlayEnterprise
playEnterprise = Proxy
