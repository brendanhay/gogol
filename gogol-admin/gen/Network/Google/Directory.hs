-- |
-- Module      : Network.Google.Directory
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Admin SDK Directory API lets you view and manage enterprise resources such as users and groups, administrative notifications, security features, and more.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference>
module Network.Google.Directory
    (
    -- * API Definition
      Directory



    -- * Types

    -- ** Alias
    , Alias
    , alias
    , aEtag
    , aKind
    , aAlias
    , aId
    , aPrimaryEmail

    -- ** Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- ** Asp
    , Asp
    , asp
    , aspCreationTime
    , aspEtag
    , aspCodeId
    , aspKind
    , aspName
    , aspLastTimeUsed
    , aspUserKey

    -- ** Asps
    , Asps
    , asps
    , aaEtag
    , aaKind
    , aaItems

    -- ** Channel
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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** ChromeOsDevice
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

    -- ** ChromeOsDeviceItemActiveTimeRanges
    , ChromeOsDeviceItemActiveTimeRanges
    , chromeOsDeviceItemActiveTimeRanges
    , codiatrDate
    , codiatrActiveTime

    -- ** ChromeOsDeviceItemRecentUsers
    , ChromeOsDeviceItemRecentUsers
    , chromeOsDeviceItemRecentUsers
    , codiruEmail
    , codiruType

    -- ** ChromeOsDevices
    , ChromeOsDevices
    , chromeOsDevices
    , cEtag
    , cNextPageToken
    , cKind
    , cChromeosdevices

    -- ** Group
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

    -- ** Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- ** Member
    , Member
    , member
    , mEmail
    , mEtag
    , mKind
    , mRole
    , mId
    , mType

    -- ** Members
    , Members
    , members
    , memEtag
    , memNextPageToken
    , memKind
    , memMembers

    -- ** MobileDevice
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

    -- ** MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- ** MobileDeviceItemApplications
    , MobileDeviceItemApplications
    , mobileDeviceItemApplications
    , mdiaVersionCode
    , mdiaVersionName
    , mdiaPackageName
    , mdiaDisplayName
    , mdiaPermission

    -- ** MobileDevices
    , MobileDevices
    , mobileDevices
    , mdsEtag
    , mdsNextPageToken
    , mdsKind
    , mdsMobiledevices

    -- ** Notification
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

    -- ** Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- ** OrgUnit
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

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , ouEtag
    , ouKind
    , ouOrganizationUnits

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- ** SchemaFieldSpec
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

    -- ** SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- ** Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- ** Token
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

    -- ** Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- ** User
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

    -- ** UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- ** UserAddress
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

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- ** UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas

    -- ** UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- ** UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- ** UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- ** UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- ** UserOrganization
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

    -- ** UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- ** UserPhoto
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

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

    -- ** Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vVerificationCode
    , vEtag
    , vKind
    , vUserId

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vcEtag
    , vcKind
    , vcItems
    ) where

import           Network.Google.Directory.Types

{- $resources
TODO
-}

type Directory = ()

directory :: Proxy Directory
directory = Proxy




