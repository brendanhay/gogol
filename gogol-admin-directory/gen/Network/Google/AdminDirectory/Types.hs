{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminDirectory.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminDirectory.Types
    (
    -- * Service URL
      adminDirectoryURL

    -- * ApplicationsItem
    , ApplicationsItem
    , applicationsItem
    , aiVersionCode
    , aiVersionName
    , aiPackageName
    , aiDisplayName
    , aiPermission

    -- * UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- * VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- * OrgUnit
    , OrgUnit
    , orgUnit
    , ouEtag
    , ouParentOrgUnitPath
    , ouKind
    , ouOrgUnitPath
    , ouName
    , ouBlockInheritance
    , ouParentOrgUnitId
    , ouDescription
    , ouOrgUnitId

    -- * Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- * UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- * Event
    , Event (..)

    -- * DirectoryChromeosDevicesListProjection
    , DirectoryChromeosDevicesListProjection (..)

    -- * UserAddress
    , UserAddress
    , userAddress
    , uaStreetAddress
    , uaPoBox
    , uaCountry
    , uaPostalCode
    , uaFormatted
    , uaExtendedAddress
    , uaLocality
    , uaPrimary
    , uaCountryCode
    , uaRegion
    , uaType
    , uaCustomType
    , uaSourceIsStructured

    -- * DirectoryUsersWatchOrderBy
    , DirectoryUsersWatchOrderBy (..)

    -- * Group
    , Group
    , group'
    , groEmail
    , groEtag
    , groDirectMembersCount
    , groKind
    , groAliases
    , groNonEditableAliases
    , groName
    , groAdminCreated
    , groId
    , groDescription

    -- * DirectoryUsersWatchViewType
    , DirectoryUsersWatchViewType (..)

    -- * Asp
    , Asp
    , asp
    , aCreationTime
    , aEtag
    , aCodeId
    , aKind
    , aName
    , aLastTimeUsed
    , aUserKey

    -- * Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- * ChromeOSDevice
    , ChromeOSDevice
    , chromeOSDevice
    , codStatus
    , codEtag
    , codAnnotatedUser
    , codPlatformVersion
    , codLastSync
    , codActiveTimeRanges
    , codKind
    , codEthernetMACAddress
    , codLastEnrollmentTime
    , codAnnotatedLocation
    , codMACAddress
    , codOrgUnitPath
    , codRecentUsers
    , codSupportEndDate
    , codModel
    , codWillAutoRenew
    , codMeid
    , codDeviceId
    , codBootMode
    , codOrderNumber
    , codAnnotatedAssetId
    , codNotes
    , codSerialNumber
    , codFirmwareVersion
    , codOSVersion

    -- * Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- * UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- * OrderBy
    , OrderBy (..)

    -- * DirectoryMobileDevicesListOrderBy
    , DirectoryMobileDevicesListOrderBy (..)

    -- * ViewType
    , ViewType (..)

    -- * Notification
    , Notification
    , notification
    , nSubject
    , nEtag
    , nKind
    , nBody
    , nFromAddress
    , nIsUnread
    , nNotificationId
    , nSendTime

    -- * DirectoryUsersGetViewType
    , DirectoryUsersGetViewType (..)

    -- * Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- * NumericIndexingSpec
    , NumericIndexingSpec
    , numericIndexingSpec
    , nisMaxValue
    , nisMinValue

    -- * Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- * Token
    , Token
    , token
    , tokClientId
    , tokEtag
    , tokDisplayText
    , tokKind
    , tokScopes
    , tokNATiveApp
    , tokAnonymous
    , tokUserKey

    -- * UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- * MobileDevices
    , MobileDevices
    , mobileDevices
    , mdEtag
    , mdNextPageToken
    , mdKind
    , mdMobileDevices

    -- * Members
    , Members
    , members
    , mEtag
    , mNextPageToken
    , mKind
    , mMembers

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * Alias
    , Alias
    , alias
    , aaEtag
    , aaKind
    , aaAlias
    , aaId
    , aaPrimaryEmail

    -- * DirectoryUsersAliasesWatchEvent
    , DirectoryUsersAliasesWatchEvent (..)

    -- * UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- * DirectoryUsersWatchSortOrder
    , DirectoryUsersWatchSortOrder (..)

    -- * DirectoryMobileDevicesGetProjection
    , DirectoryMobileDevicesGetProjection (..)

    -- * User
    , User
    , user
    , useCreationTime
    , useLastLoginTime
    , useThumbnailPhotoEtag
    , useEtag
    , useIPWhiteListed
    , useRelations
    , useHashFunction
    , useKind
    , useChangePasswordAtNextLogin
    , useWebsites
    , useAddresses
    , useAliases
    , useThumbnailPhotoURL
    , useExternalIds
    , useSuspended
    , useAgreedToTerms
    , useDeletionTime
    , useNonEditableAliases
    , useOrgUnitPath
    , useCustomerId
    , useIncludeInGlobalAddressList
    , usePhones
    , useName
    , usePassword
    , useEmails
    , useIms
    , useIsAdmin
    , useId
    , useOrganizations
    , usePrimaryEmail
    , useNotes
    , useIsDelegatedAdmin
    , useIsMailboxSetup
    , useCustomSchemas
    , useSuspensionReason

    -- * Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- * Params
    , Params
    , params

    -- * SortOrder
    , SortOrder (..)

    -- * DirectoryMobileDevicesListSortOrder
    , DirectoryMobileDevicesListSortOrder (..)

    -- * RecentUsersItem
    , RecentUsersItem
    , recentUsersItem
    , ruiEmail
    , ruiType

    -- * DirectoryChromeosDevicesUpdateProjection
    , DirectoryChromeosDevicesUpdateProjection (..)

    -- * DirectoryUsersWatchProjection
    , DirectoryUsersWatchProjection (..)

    -- * OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- * VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- * UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- * DirectoryChromeosDevicesListOrderBy
    , DirectoryChromeosDevicesListOrderBy (..)

    -- * UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

    -- * UserOrganization
    , UserOrganization
    , userOrganization
    , uoDePartment
    , uoLocation
    , uoCostCenter
    , uoDomain
    , uoSymbol
    , uoPrimary
    , uoName
    , uoTitle
    , uoType
    , uoCustomType
    , uoDescription

    -- * UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- * UserPhoto
    , UserPhoto
    , userPhoto
    , upPhotoData
    , upEtag
    , upHeight
    , upKind
    , upWidth
    , upMimeType
    , upId
    , upPrimaryEmail

    -- * DirectoryUsersListEvent
    , DirectoryUsersListEvent (..)

    -- * DirectoryMobileDevicesListProjection
    , DirectoryMobileDevicesListProjection (..)

    -- * Projection
    , Projection (..)

    -- * UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- * Member
    , Member
    , member
    , memEmail
    , memEtag
    , memKind
    , memRole
    , memId
    , memType

    -- * DirectoryUsersGetProjection
    , DirectoryUsersGetProjection (..)

    -- * MobileDevice
    , MobileDevice
    , mobileDevice
    , mobEmail
    , mobStatus
    , mobEtag
    , mobResourceId
    , mobBuildNumber
    , mobManagedAccountIsOnOwnerProfile
    , mobLastSync
    , mobOtherAccountsInfo
    , mobKind
    , mobAdbStatus
    , mobNetworkOperator
    , mobKernelVersion
    , mobOS
    , mobName
    , mobModel
    , mobDeveloperOptionsStatus
    , mobUnknownSourcesStatus
    , mobMeid
    , mobDeviceId
    , mobFirstSync
    , mobUserAgent
    , mobImei
    , mobType
    , mobWifiMACAddress
    , mobSerialNumber
    , mobHardwareId
    , mobBasebandVersion
    , mobSupportsWorkProfile
    , mobDeviceCompromisedStatus
    , mobApplications
    , mobDefaultLanguage

    -- * ActiveTimeRangesItem
    , ActiveTimeRangesItem
    , activeTimeRangesItem
    , atriDate
    , atriActiveTime

    -- * Type
    , Type (..)

    -- * DirectoryChromeosDevicesGetProjection
    , DirectoryChromeosDevicesGetProjection (..)

    -- * DirectoryChromeosDevicesPatchProjection
    , DirectoryChromeosDevicesPatchProjection (..)

    -- * UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- * MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- * SchemaFieldSpec
    , SchemaFieldSpec
    , schemaFieldSpec
    , sfsEtag
    , sfsKind
    , sfsNumericIndexingSpec
    , sfsReadAccessType
    , sfsFieldId
    , sfsIndexed
    , sfsFieldType
    , sfsFieldName
    , sfsMultiValued

    -- * DirectoryUsersWatchEvent
    , DirectoryUsersWatchEvent (..)

    -- * Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- * DirectoryChromeosDevicesListSortOrder
    , DirectoryChromeosDevicesListSortOrder (..)

    -- * UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- * Asps
    , Asps
    , asps
    , a1Etag
    , a1Kind
    , a1Items

    -- * CustomSchemas
    , CustomSchemas
    , customSchemas

    -- * ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices
    ) where

import           Network.Google.AdminDirectory.Types.Product
import           Network.Google.AdminDirectory.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'directory_v1' of the Admin Directory API.
adminDirectoryURL :: BaseUrl
adminDirectoryURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/directory/v1/"
      443
