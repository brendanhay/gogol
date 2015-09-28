{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Admin.Directory.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Admin.Directory.Types
    (
    -- * Service URL
      adminDirectoryURL

    -- * MobiledevicesGet'Projection
    , MobiledevicesGet'Projection (..)

    -- * UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- * MobileDeviceItemApplications
    , MobileDeviceItemApplications
    , mobileDeviceItemApplications
    , mdiaVersionCode
    , mdiaVersionName
    , mdiaPackageName
    , mdiaDisplayName
    , mdiaPermission

    -- * VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vcEtag
    , vcKind
    , vcItems

    -- * OrgUnits
    , OrgUnits
    , orgUnits
    , ouEtag
    , ouKind
    , ouOrganizationUnits

    -- * Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- * Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- * ChromeOsDevice
    , ChromeOsDevice
    , chromeOsDevice
    , codStatus
    , codEtag
    , codAnnotatedUser
    , codPlatformVersion
    , codLastSync
    , codActiveTimeRanges
    , codKind
    , codEthernetMacAddress
    , codLastEnrollmentTime
    , codAnnotatedLocation
    , codMacAddress
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
    , codOsVersion

    -- * Alt
    , Alt (..)

    -- * Asp
    , Asp
    , asp
    , aspCreationTime
    , aspEtag
    , aspCodeId
    , aspKind
    , aspName
    , aspLastTimeUsed
    , aspUserKey

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

    -- * UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- * UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- * ChromeOsDeviceItemRecentUsers
    , ChromeOsDeviceItemRecentUsers
    , chromeOsDeviceItemRecentUsers
    , codiruEmail
    , codiruType

    -- * Member
    , Member
    , member
    , mEmail
    , mEtag
    , mKind
    , mRole
    , mId
    , mType

    -- * UsersAliasesList'Event
    , UsersAliasesList'Event (..)

    -- * MobileDevice
    , MobileDevice
    , mobileDevice
    , mdEmail
    , mdStatus
    , mdEtag
    , mdResourceId
    , mdBuildNumber
    , mdManagedAccountIsOnOwnerProfile
    , mdLastSync
    , mdOtherAccountsInfo
    , mdKind
    , mdAdbStatus
    , mdNetworkOperator
    , mdKernelVersion
    , mdOs
    , mdName
    , mdModel
    , mdDeveloperOptionsStatus
    , mdUnknownSourcesStatus
    , mdMeid
    , mdDeviceId
    , mdFirstSync
    , mdUserAgent
    , mdImei
    , mdType
    , mdWifiMacAddress
    , mdSerialNumber
    , mdHardwareId
    , mdBasebandVersion
    , mdSupportsWorkProfile
    , mdDeviceCompromisedStatus
    , mdApplications
    , mdDefaultLanguage

    -- * UsersAliasesWatch'Event
    , UsersAliasesWatch'Event (..)

    -- * UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- * UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas

    -- * Alias
    , Alias
    , alias
    , aEtag
    , aKind
    , aAlias
    , aId
    , aPrimaryEmail

    -- * UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- * ChromeOsDeviceItemActiveTimeRanges
    , ChromeOsDeviceItemActiveTimeRanges
    , chromeOsDeviceItemActiveTimeRanges
    , codiatrDate
    , codiatrActiveTime

    -- * UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- * MobiledevicesList'SortOrder
    , MobiledevicesList'SortOrder (..)

    -- * ChromeOsDevices
    , ChromeOsDevices
    , chromeOsDevices
    , cEtag
    , cNextPageToken
    , cKind
    , cChromeosdevices

    -- * ChromeosdevicesUpdate'Projection
    , ChromeosdevicesUpdate'Projection (..)

    -- * Asps
    , Asps
    , asps
    , aaEtag
    , aaKind
    , aaItems

    -- * UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- * OrgUnit
    , OrgUnit
    , orgUnit
    , oEtag
    , oParentOrgUnitPath
    , oKind
    , oOrgUnitPath
    , oName
    , oBlockInheritance
    , oParentOrgUnitId
    , oDescription
    , oOrgUnitId

    -- * UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- * VerificationCode
    , VerificationCode
    , verificationCode
    , vVerificationCode
    , vEtag
    , vKind
    , vUserId

    -- * Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- * ChannelParams
    , ChannelParams
    , channelParams

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
    , uoDepartment
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

    -- * ChromeosdevicesList'OrderBy
    , ChromeosdevicesList'OrderBy (..)

    -- * ChromeosdevicesList'Projection
    , ChromeosdevicesList'Projection (..)

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

    -- * SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- * UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- * Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- * Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- * MobiledevicesList'Projection
    , MobiledevicesList'Projection (..)

    -- * MobiledevicesList'OrderBy
    , MobiledevicesList'OrderBy (..)

    -- * Token
    , Token
    , token
    , tokClientId
    , tokEtag
    , tokDisplayText
    , tokKind
    , tokScopes
    , tokNativeApp
    , tokAnonymous
    , tokUserKey

    -- * ChromeosdevicesList'SortOrder
    , ChromeosdevicesList'SortOrder (..)

    -- * Members
    , Members
    , members
    , memEtag
    , memNextPageToken
    , memKind
    , memMembers

    -- * Channel
    , Channel
    , channel
    , chaResourceUri
    , chaResourceId
    , chaKind
    , chaExpiration
    , chaToken
    , chaAddress
    , chaPayload
    , chaParams
    , chaId
    , chaType

    -- * MobileDevices
    , MobileDevices
    , mobileDevices
    , mdsEtag
    , mdsNextPageToken
    , mdsKind
    , mdsMobiledevices

    -- * UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- * ChromeosdevicesGet'Projection
    , ChromeosdevicesGet'Projection (..)

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

    -- * MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- * ChromeosdevicesPatch'Projection
    , ChromeosdevicesPatch'Projection (..)

    -- * Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- * Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- * User
    , User
    , user
    , useCreationTime
    , useLastLoginTime
    , useThumbnailPhotoEtag
    , useEtag
    , useIpWhitelisted
    , useRelations
    , useHashFunction
    , useKind
    , useChangePasswordAtNextLogin
    , useWebsites
    , useAddresses
    , useAliases
    , useThumbnailPhotoUrl
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

    -- * OrgunitsList'Type
    , OrgunitsList'Type (..)
    ) where

import           Network.Google.Admin.Directory.Types.Product
import           Network.Google.Admin.Directory.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'directory_v1' of the Admin Directory API.
adminDirectoryURL :: BaseUrl
adminDirectoryURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/directory/v1/"
      443
