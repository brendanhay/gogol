-- |
-- Module      : Network.Google.AndroidEnterprise
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows MDMs/EMMs and enterprises to manage the deployment of apps to Android for Work users.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference>
module Network.Google.AndroidEnterprise
    (
    -- * API Definition
      AndroidEnterprise



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

import           Network.Google.AndroidEnterprise.Types

{- $resources
TODO
-}

type AndroidEnterprise = ()

androidEnterprise :: Proxy AndroidEnterprise
androidEnterprise = Proxy




