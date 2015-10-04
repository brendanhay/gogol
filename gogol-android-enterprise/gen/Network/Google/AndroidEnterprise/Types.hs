{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidEnterprise.Types
    (
    -- * Service URL
      androidEnterpriseURL

    -- * CollectionsListResponse
    , CollectionsListResponse
    , collectionsListResponse
    , clrKind
    , clrCollection

    -- * EnterpriseAccount
    , EnterpriseAccount
    , enterpriseAccount
    , eaKind
    , eaAccountEmail

    -- * GroupLicense
    , GroupLicense
    , groupLicense
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glProductId
    , glAcquisitionKind

    -- * AppRestrictionsSchemaRestrictionRestrictionValue
    , AppRestrictionsSchemaRestrictionRestrictionValue
    , appRestrictionsSchemaRestrictionRestrictionValue
    , arsrrvValueMultiselect
    , arsrrvValueBool
    , arsrrvValueInteger
    , arsrrvType
    , arsrrvValueString

    -- * GroupLicenseUsersListResponse
    , GroupLicenseUsersListResponse
    , groupLicenseUsersListResponse
    , glulrKind
    , glulrUser

    -- * DeviceState
    , DeviceState
    , deviceState
    , dsKind
    , dsAccountState

    -- * ApprovalURLInfo
    , ApprovalURLInfo
    , approvalURLInfo
    , auiApprovalURL
    , auiKind

    -- * Device
    , Device
    , device
    , dKind
    , dManagementType
    , dAndroidId

    -- * ProductPermission
    , ProductPermission
    , productPermission
    , ppState
    , ppPermissionId

    -- * AppVersion
    , AppVersion
    , appVersion
    , avVersionCode
    , avVersionString

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

    -- * InstallsListResponse
    , InstallsListResponse
    , installsListResponse
    , ilrKind
    , ilrInstall

    -- * Collection
    , Collection
    , collection
    , cKind
    , cCollectionId
    , cVisibility
    , cName
    , cProductId

    -- * GroupLicensesListResponse
    , GroupLicensesListResponse
    , groupLicensesListResponse
    , gllrGroupLicense
    , gllrKind

    -- * User
    , User
    , user
    , uKind
    , uId
    , uPrimaryEmail

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

    -- * EnterprisesSendTestPushNotificationResponse
    , EnterprisesSendTestPushNotificationResponse
    , enterprisesSendTestPushNotificationResponse
    , estpnrTopicName
    , estpnrMessageId

    -- * ProductsGenerateApprovalURLResponse
    , ProductsGenerateApprovalURLResponse
    , productsGenerateApprovalURLResponse
    , pgaurURL

    -- * AppRestrictionsSchema
    , AppRestrictionsSchema
    , appRestrictionsSchema
    , arsKind
    , arsRestrictions

    -- * EnterprisesListResponse
    , EnterprisesListResponse
    , enterprisesListResponse
    , elrKind
    , elrEnterprise

    -- * DevicesListResponse
    , DevicesListResponse
    , devicesListResponse
    , dlrKind
    , dlrDevice

    -- * UserToken
    , UserToken
    , userToken
    , utKind
    , utToken
    , utUserId

    -- * Enterprise
    , Enterprise
    , enterprise
    , eKind
    , ePrimaryDomain
    , eName
    , eId

    -- * Permission
    , Permission
    , permission
    , pKind
    , pName
    , pDescription
    , pPermissionId

    -- * Product
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

    -- * CollectionViewersListResponse
    , CollectionViewersListResponse
    , collectionViewersListResponse
    , cvlrKind
    , cvlrUser

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
    ) where

import           Network.Google.AndroidEnterprise.Types.Product
import           Network.Google.AndroidEnterprise.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Play EMM API.
androidEnterpriseURL :: BaseUrl
androidEnterpriseURL
  = BaseUrl Https
      "https://www.googleapis.com/androidenterprise/v1/"
      443
