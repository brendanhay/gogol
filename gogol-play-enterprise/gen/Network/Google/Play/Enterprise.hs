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
    -- * Resources
      PlayEnterprise
    , CollectionviewersAPI
    , CollectionviewersList
    , CollectionviewersPatch
    , CollectionviewersGet
    , CollectionviewersDelete
    , CollectionviewersUpdate
    , UsersAPI
    , UsersList
    , UsersGenerateToken
    , UsersGet
    , UsersSetAvailableProductSet
    , UsersRevokeToken
    , UsersGetAvailableProductSet
    , InstallsAPI
    , InstallsList
    , InstallsPatch
    , InstallsGet
    , InstallsDelete
    , InstallsUpdate
    , CollectionsAPI
    , CollectionsInsert
    , CollectionsList
    , CollectionsPatch
    , CollectionsGet
    , CollectionsDelete
    , CollectionsUpdate
    , EnterprisesAPI
    , EnterprisesInsert
    , EnterprisesList
    , EnterprisesUnenroll
    , EnterprisesSetAccount
    , EnterprisesEnroll
    , EnterprisesGet
    , EnterprisesSendTestPushNotification
    , EnterprisesDelete
    , GrouplicensesAPI
    , GrouplicensesList
    , GrouplicensesGet
    , EntitlementsAPI
    , EntitlementsList
    , EntitlementsPatch
    , EntitlementsGet
    , EntitlementsDelete
    , EntitlementsUpdate
    , PermissionsAPI
    , PermissionsGet
    , ProductsAPI
    , ProductsGenerateApprovalUrl
    , ProductsGet
    , ProductsGetAppRestrictionsSchema
    , ProductsApprove
    , ProductsGetPermissions
    , ProductsUpdatePermissions
    , DevicesAPI
    , DevicesList
    , DevicesSetState
    , DevicesGet
    , DevicesGetState
    , GrouplicenseusersAPI
    , GrouplicenseusersList

    -- * Types

    -- ** AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

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

    -- ** AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- ** AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

    -- ** ApprovalUrlInfo
    , ApprovalUrlInfo
    , approvalUrlInfo
    , auiApprovalUrl
    , auiKind

    -- ** Collection
    , Collection
    , collection
    , cKind
    , cCollectionId
    , cVisibility
    , cName
    , cProductId

    -- ** CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

    -- ** CollectionsListResponse
    , CollectionsListResponse
    , collectionsListResponse
    , clrKind
    , clrCollection

    -- ** Device
    , Device
    , device
    , dKind
    , dManagementType
    , dAndroidId

    -- ** DeviceState
    , DeviceState
    , deviceState
    , dsKind
    , dsAccountState

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

    -- ** EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaKind
    , eaAccountEmail

    -- ** EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

    -- ** EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eeKind
    , eeReason
    , eeProductId

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , entKind
    , entEntitlement

    -- ** GroupLicense
    , GroupLicense
    , groupLicense
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glProductId
    , glAcquisitionKind

    -- ** GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrKind
    , glulrUser

    -- ** GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- ** Install
    , Install
    , install
    , iVersionCode
    , iKind
    , iInstallState
    , iProductId

    -- ** InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrKind
    , ilrInstall

    -- ** Permission
    , Permission
    , permission
    , perKind
    , perName
    , perDescription
    , perPermissionId

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

    -- ** ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- ** ProductPermissions
    , ProductPermissions
    , productPermissions
    , ppKind
    , ppPermission
    , ppProductId

    -- ** ProductSet
    , ProductSet
    , productSet
    , psKind
    , psProductId

    -- ** ProductsApproveRequest
    , ProductsApproveRequest
    , productsApproveRequest
    , parApprovalUrlInfo

    -- ** ProductsGenerateApprovalUrlResponse
    , ProductsGenerateApprovalUrlResponse
    , productsGenerateApprovalUrlResponse
    , pgaurUrl

    -- ** User
    , User
    , user
    , uKind
    , uId
    , uPrimaryEmail

    -- ** UserToken
    , UserToken
    , userToken
    , utKind
    , utToken
    , utUserId

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrKind
    , ulrUser
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayEnterprise =
     CollectionviewersAPI :<|> UsersAPI :<|> InstallsAPI
       :<|> CollectionsAPI
       :<|> EnterprisesAPI
       :<|> GrouplicensesAPI
       :<|> EntitlementsAPI
       :<|> PermissionsAPI
       :<|> ProductsAPI
       :<|> DevicesAPI
       :<|> GrouplicenseusersAPI

type CollectionviewersAPI =
     CollectionviewersList :<|> CollectionviewersPatch
       :<|> CollectionviewersGet
       :<|> CollectionviewersDelete
       :<|> CollectionviewersUpdate

-- | Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
type CollectionviewersList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] CollectionViewersListResponse

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
type CollectionviewersPatch =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   Capture "userId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Patch '[JSON] User

-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
type CollectionviewersGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   Capture "userId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] User

-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
type CollectionviewersDelete =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   Capture "userId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
type CollectionviewersUpdate =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   Capture "userId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] User

type UsersAPI =
     UsersList :<|> UsersGenerateToken :<|> UsersGet :<|>
       UsersSetAvailableProductSet
       :<|> UsersRevokeToken
       :<|> UsersGetAvailableProductSet

-- | Looks up a user by email address.
type UsersList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               QueryParam "email" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] UsersListResponse

-- | Generates a token (activation code) to allow this user to configure
-- their work account in the Android Setup Wizard. Revokes any previously
-- generated token.
type UsersGenerateToken =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "token" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] UserToken

-- | Retrieves a user\'s details.
type UsersGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] User

-- | Modifies the set of products a user is entitled to access.
type UsersSetAvailableProductSet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "availableProductSet" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] ProductSet

-- | Revokes a previously generated token (activation code) for the user.
type UsersRevokeToken =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "token" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Retrieves the set of products a user is entitled to access.
type UsersGetAvailableProductSet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "availableProductSet" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] ProductSet

type InstallsAPI =
     InstallsList :<|> InstallsPatch :<|> InstallsGet :<|>
       InstallsDelete
       :<|> InstallsUpdate

-- | Retrieves the details of all apps installed on the specified device.
type InstallsList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] InstallsListResponse

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary. This method supports patch semantics.
type InstallsPatch =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       Capture "installId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Patch '[JSON] Install

-- | Retrieves details of an installation of an app on a device.
type InstallsGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       Capture "installId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] Install

-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
type InstallsDelete =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       Capture "installId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :> Delete '[JSON] ()

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
type InstallsUpdate =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       Capture "installId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Put '[JSON] Install

type CollectionsAPI =
     CollectionsInsert :<|> CollectionsList :<|>
       CollectionsPatch
       :<|> CollectionsGet
       :<|> CollectionsDelete
       :<|> CollectionsUpdate

-- | Creates a new collection.
type CollectionsInsert =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Collection

-- | Retrieves the IDs of all the collections for an enterprise.
type CollectionsList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] CollectionsListResponse

-- | Updates a collection. This method supports patch semantics.
type CollectionsPatch =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Patch '[JSON] Collection

-- | Retrieves the details of a collection.
type CollectionsGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Collection

-- | Deletes a collection.
type CollectionsDelete =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a collection.
type CollectionsUpdate =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Put '[JSON] Collection

type EnterprisesAPI =
     EnterprisesInsert :<|> EnterprisesList :<|>
       EnterprisesUnenroll
       :<|> EnterprisesSetAccount
       :<|> EnterprisesEnroll
       :<|> EnterprisesGet
       :<|> EnterprisesSendTestPushNotification
       :<|> EnterprisesDelete

-- | Establishes the binding between the MDM and an enterprise. This is now
-- deprecated; use enroll instead.
type EnterprisesInsert =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "token" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Post '[JSON] Enterprise

-- | Looks up an enterprise by domain name.
type EnterprisesList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "domain" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Get '[JSON] EnterprisesListResponse

-- | Unenrolls an enterprise from the calling MDM.
type EnterprisesUnenroll =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "unenroll" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] ()

-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
type EnterprisesSetAccount =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "account" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Put '[JSON] EnterpriseAccount

-- | Enrolls an enterprise with the calling MDM.
type EnterprisesEnroll =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "enroll" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "token" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
type EnterprisesGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] Enterprise

-- | Sends a test push notification to validate the MDM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
type EnterprisesSendTestPushNotification =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "sendTestPushNotification" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON]
                               EnterprisesSendTestPushNotificationResponse

-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
type EnterprisesDelete =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Delete '[JSON] ()

type GrouplicensesAPI =
     GrouplicensesList :<|> GrouplicensesGet

-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
type GrouplicensesList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] GroupLicensesListResponse

-- | Retrieves details of an enterprise\'s group license for a product.
type GrouplicensesGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] GroupLicense

type EntitlementsAPI =
     EntitlementsList :<|> EntitlementsPatch :<|>
       EntitlementsGet
       :<|> EntitlementsDelete
       :<|> EntitlementsUpdate

-- | List of all entitlements for the specified user. Only the ID is set.
type EntitlementsList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] EntitlementsListResponse

-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
type EntitlementsPatch =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "install" Bool :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Patch '[JSON] Entitlement

-- | Retrieves details of an entitlement.
type EntitlementsGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] Entitlement

-- | Removes an entitlement to an app for a user and uninstalls it.
type EntitlementsDelete =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Adds or updates an entitlement to an app for a user.
type EntitlementsUpdate =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "install" Bool :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] Entitlement

type PermissionsAPI = PermissionsGet

-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
type PermissionsGet =
     "androidenterprise" :>
       "v1" :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "language" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Get '[JSON] Permission

type ProductsAPI =
     ProductsGenerateApprovalUrl :<|> ProductsGet :<|>
       ProductsGetAppRestrictionsSchema
       :<|> ProductsApprove
       :<|> ProductsGetPermissions
       :<|> ProductsUpdatePermissions

-- | Generates a URL that can be rendered in an iframe to display the
-- permissions (if any) of a product. An enterprise admin must view these
-- permissions and accept them on behalf of their organization in order to
-- approve that product. Admins should accept the displayed permissions by
-- interacting with a separate UI element in the EMM console, which in turn
-- should trigger the use of this URL as the approvalUrlInfo.approvalUrl
-- property in a Products.approve call to approve the product. This URL can
-- only be used to display permissions for up to 1 day.
type ProductsGenerateApprovalUrl =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "generateApprovalUrl" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "languageCode" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON]
                                     ProductsGenerateApprovalUrlResponse

-- | Retrieves details of a product for display to an enterprise admin.
type ProductsGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "language" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Product

-- | Retrieves the schema defining app restrictions configurable for this
-- product. All products have a schema, but this may be empty if no app
-- restrictions are defined.
type ProductsGetAppRestrictionsSchema =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "appRestrictionsSchema" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "language" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] AppRestrictionsSchema

-- | Approves the specified product (and the relevant app permissions, if
-- any).
type ProductsApprove =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "approve" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] ()

-- | Retrieves the Android app permissions required by this app.
type ProductsGetPermissions =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "permissions" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ProductPermissions

-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
type ProductsUpdatePermissions =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "permissions" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Put '[JSON] ProductPermissions

type DevicesAPI =
     DevicesList :<|> DevicesSetState :<|> DevicesGet :<|>
       DevicesGetState

-- | Retrieves the IDs of all of a user\'s devices.
type DevicesList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] DevicesListResponse

-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
type DevicesSetState =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "state" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] DeviceState

-- | Retrieves the details of a device.
type DevicesGet =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Device

-- | Retrieves whether a device is enabled or disabled for access by the user
-- to Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
type DevicesGetState =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "state" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] DeviceState

type GrouplicenseusersAPI = GrouplicenseusersList

-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
type GrouplicenseusersList =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 "users" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] GroupLicenseUsersListResponse
