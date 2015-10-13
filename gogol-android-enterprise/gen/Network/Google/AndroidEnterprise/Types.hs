{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      androidEnterpriseService

    -- * OAuth Scopes
    , androidenterpriseScope

    -- * GroupLicense
    , GroupLicense
    , groupLicense
    , glKind
    , glNumProvisioned
    , glNumPurchased
    , glApproval
    , glProductId
    , glAcquisitionKind

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
    , cKind
    , cCollectionId
    , cVisibility
    , cName
    , cProductId

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

    -- * Permission
    , Permission
    , permission
    , pKind
    , pName
    , pDescription
    , pPermissionId

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
      "androidenterprise/v1/"

-- | Manage corporate Android devices
androidenterpriseScope :: OAuthScope
androidenterpriseScope = OAuthScope "https://www.googleapis.com/auth/androidenterprise";
