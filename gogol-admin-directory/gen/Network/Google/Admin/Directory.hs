{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Admin.Directory
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Admin SDK Directory API lets you view and manage enterprise
-- resources such as users and groups, administrative notifications,
-- security features, and more.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference>
module Network.Google.Admin.Directory
    (
    -- * REST Resources

    -- ** Admin Directory API
      AdminDirectory
    , adminDirectory
    , adminDirectoryURL

    -- ** directory.asps.delete
    , module Network.Google.API.Directory.Asps.Delete

    -- ** directory.asps.get
    , module Network.Google.API.Directory.Asps.Get

    -- ** directory.asps.list
    , module Network.Google.API.Directory.Asps.List

    -- ** admin.channels.stop
    , module Network.Google.API.Admin.Channels.Stop

    -- ** directory.chromeosdevices.get
    , module Network.Google.API.Directory.Chromeosdevices.Get

    -- ** directory.chromeosdevices.list
    , module Network.Google.API.Directory.Chromeosdevices.List

    -- ** directory.chromeosdevices.patch
    , module Network.Google.API.Directory.Chromeosdevices.Patch

    -- ** directory.chromeosdevices.update
    , module Network.Google.API.Directory.Chromeosdevices.Update

    -- ** directory.groups.aliases.delete
    , module Network.Google.API.Directory.Groups.Aliases.Delete

    -- ** directory.groups.aliases.insert
    , module Network.Google.API.Directory.Groups.Aliases.Insert

    -- ** directory.groups.aliases.list
    , module Network.Google.API.Directory.Groups.Aliases.List

    -- ** directory.members.delete
    , module Network.Google.API.Directory.Members.Delete

    -- ** directory.members.get
    , module Network.Google.API.Directory.Members.Get

    -- ** directory.members.insert
    , module Network.Google.API.Directory.Members.Insert

    -- ** directory.members.list
    , module Network.Google.API.Directory.Members.List

    -- ** directory.members.patch
    , module Network.Google.API.Directory.Members.Patch

    -- ** directory.members.update
    , module Network.Google.API.Directory.Members.Update

    -- ** directory.mobiledevices.action
    , module Network.Google.API.Directory.Mobiledevices.Action

    -- ** directory.mobiledevices.delete
    , module Network.Google.API.Directory.Mobiledevices.Delete

    -- ** directory.mobiledevices.get
    , module Network.Google.API.Directory.Mobiledevices.Get

    -- ** directory.mobiledevices.list
    , module Network.Google.API.Directory.Mobiledevices.List

    -- ** directory.notifications.delete
    , module Network.Google.API.Directory.Notifications.Delete

    -- ** directory.notifications.get
    , module Network.Google.API.Directory.Notifications.Get

    -- ** directory.notifications.list
    , module Network.Google.API.Directory.Notifications.List

    -- ** directory.notifications.patch
    , module Network.Google.API.Directory.Notifications.Patch

    -- ** directory.notifications.update
    , module Network.Google.API.Directory.Notifications.Update

    -- ** directory.orgunits.delete
    , module Network.Google.API.Directory.Orgunits.Delete

    -- ** directory.orgunits.get
    , module Network.Google.API.Directory.Orgunits.Get

    -- ** directory.orgunits.insert
    , module Network.Google.API.Directory.Orgunits.Insert

    -- ** directory.orgunits.list
    , module Network.Google.API.Directory.Orgunits.List

    -- ** directory.orgunits.patch
    , module Network.Google.API.Directory.Orgunits.Patch

    -- ** directory.orgunits.update
    , module Network.Google.API.Directory.Orgunits.Update

    -- ** directory.schemas.delete
    , module Network.Google.API.Directory.Schemas.Delete

    -- ** directory.schemas.get
    , module Network.Google.API.Directory.Schemas.Get

    -- ** directory.schemas.insert
    , module Network.Google.API.Directory.Schemas.Insert

    -- ** directory.schemas.list
    , module Network.Google.API.Directory.Schemas.List

    -- ** directory.schemas.patch
    , module Network.Google.API.Directory.Schemas.Patch

    -- ** directory.schemas.update
    , module Network.Google.API.Directory.Schemas.Update

    -- ** directory.tokens.delete
    , module Network.Google.API.Directory.Tokens.Delete

    -- ** directory.tokens.get
    , module Network.Google.API.Directory.Tokens.Get

    -- ** directory.tokens.list
    , module Network.Google.API.Directory.Tokens.List

    -- ** directory.users.aliases.delete
    , module Network.Google.API.Directory.Users.Aliases.Delete

    -- ** directory.users.aliases.insert
    , module Network.Google.API.Directory.Users.Aliases.Insert

    -- ** directory.users.aliases.list
    , module Network.Google.API.Directory.Users.Aliases.List

    -- ** directory.users.aliases.watch
    , module Network.Google.API.Directory.Users.Aliases.Watch

    -- ** directory.users.photos.delete
    , module Network.Google.API.Directory.Users.Photos.Delete

    -- ** directory.users.photos.get
    , module Network.Google.API.Directory.Users.Photos.Get

    -- ** directory.users.photos.patch
    , module Network.Google.API.Directory.Users.Photos.Patch

    -- ** directory.users.photos.update
    , module Network.Google.API.Directory.Users.Photos.Update

    -- ** directory.verificationCodes.generate
    , module Network.Google.API.Directory.VerificationCodes.Generate

    -- ** directory.verificationCodes.invalidate
    , module Network.Google.API.Directory.VerificationCodes.Invalidate

    -- ** directory.verificationCodes.list
    , module Network.Google.API.Directory.VerificationCodes.List

    -- * Types

    -- ** MobiledevicesGet'Projection
    , MobiledevicesGet'Projection (..)

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- ** MobileDeviceItemApplications
    , MobileDeviceItemApplications
    , mobileDeviceItemApplications
    , mdiaVersionCode
    , mdiaVersionName
    , mdiaPackageName
    , mdiaDisplayName
    , mdiaPermission

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vcEtag
    , vcKind
    , vcItems

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , ouEtag
    , ouKind
    , ouOrganizationUnits

    -- ** Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- ** Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

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

    -- ** Alt
    , Alt (..)

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

    -- ** UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- ** UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- ** ChromeOsDeviceItemRecentUsers
    , ChromeOsDeviceItemRecentUsers
    , chromeOsDeviceItemRecentUsers
    , codiruEmail
    , codiruType

    -- ** Member
    , Member
    , member
    , mEmail
    , mEtag
    , mKind
    , mRole
    , mId
    , mType

    -- ** UsersAliasesList'Event
    , UsersAliasesList'Event (..)

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

    -- ** UsersAliasesWatch'Event
    , UsersAliasesWatch'Event (..)

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- ** UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas

    -- ** Alias
    , Alias
    , alias
    , aEtag
    , aKind
    , aAlias
    , aId
    , aPrimaryEmail

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- ** ChromeOsDeviceItemActiveTimeRanges
    , ChromeOsDeviceItemActiveTimeRanges
    , chromeOsDeviceItemActiveTimeRanges
    , codiatrDate
    , codiatrActiveTime

    -- ** UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- ** MobiledevicesList'SortOrder
    , MobiledevicesList'SortOrder (..)

    -- ** ChromeOsDevices
    , ChromeOsDevices
    , chromeOsDevices
    , cEtag
    , cNextPageToken
    , cKind
    , cChromeosdevices

    -- ** ChromeosdevicesUpdate'Projection
    , ChromeosdevicesUpdate'Projection (..)

    -- ** Asps
    , Asps
    , asps
    , aaEtag
    , aaKind
    , aaItems

    -- ** UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

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

    -- ** UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vVerificationCode
    , vEtag
    , vKind
    , vUserId

    -- ** Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- ** ChannelParams
    , ChannelParams
    , channelParams

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

    -- ** UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

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

    -- ** ChromeosdevicesList'OrderBy
    , ChromeosdevicesList'OrderBy (..)

    -- ** ChromeosdevicesList'Projection
    , ChromeosdevicesList'Projection (..)

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

    -- ** SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- ** UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- ** Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- ** Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- ** MobiledevicesList'Projection
    , MobiledevicesList'Projection (..)

    -- ** MobiledevicesList'OrderBy
    , MobiledevicesList'OrderBy (..)

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

    -- ** ChromeosdevicesList'SortOrder
    , ChromeosdevicesList'SortOrder (..)

    -- ** Members
    , Members
    , members
    , memEtag
    , memNextPageToken
    , memKind
    , memMembers

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

    -- ** MobileDevices
    , MobileDevices
    , mobileDevices
    , mdsEtag
    , mdsNextPageToken
    , mdsKind
    , mdsMobiledevices

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** ChromeosdevicesGet'Projection
    , ChromeosdevicesGet'Projection (..)

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

    -- ** MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- ** ChromeosdevicesPatch'Projection
    , ChromeosdevicesPatch'Projection (..)

    -- ** Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

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

    -- ** OrgunitsList'Type
    , OrgunitsList'Type (..)
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.API.Admin.Channels.Stop
import           Network.Google.API.Directory.Asps.Delete
import           Network.Google.API.Directory.Asps.Get
import           Network.Google.API.Directory.Asps.List
import           Network.Google.API.Directory.Chromeosdevices.Get
import           Network.Google.API.Directory.Chromeosdevices.List
import           Network.Google.API.Directory.Chromeosdevices.Patch
import           Network.Google.API.Directory.Chromeosdevices.Update
import           Network.Google.API.Directory.Groups.Aliases.Delete
import           Network.Google.API.Directory.Groups.Aliases.Insert
import           Network.Google.API.Directory.Groups.Aliases.List
import           Network.Google.API.Directory.Members.Delete
import           Network.Google.API.Directory.Members.Get
import           Network.Google.API.Directory.Members.Insert
import           Network.Google.API.Directory.Members.List
import           Network.Google.API.Directory.Members.Patch
import           Network.Google.API.Directory.Members.Update
import           Network.Google.API.Directory.Mobiledevices.Action
import           Network.Google.API.Directory.Mobiledevices.Delete
import           Network.Google.API.Directory.Mobiledevices.Get
import           Network.Google.API.Directory.Mobiledevices.List
import           Network.Google.API.Directory.Notifications.Delete
import           Network.Google.API.Directory.Notifications.Get
import           Network.Google.API.Directory.Notifications.List
import           Network.Google.API.Directory.Notifications.Patch
import           Network.Google.API.Directory.Notifications.Update
import           Network.Google.API.Directory.Orgunits.Delete
import           Network.Google.API.Directory.Orgunits.Get
import           Network.Google.API.Directory.Orgunits.Insert
import           Network.Google.API.Directory.Orgunits.List
import           Network.Google.API.Directory.Orgunits.Patch
import           Network.Google.API.Directory.Orgunits.Update
import           Network.Google.API.Directory.Schemas.Delete
import           Network.Google.API.Directory.Schemas.Get
import           Network.Google.API.Directory.Schemas.Insert
import           Network.Google.API.Directory.Schemas.List
import           Network.Google.API.Directory.Schemas.Patch
import           Network.Google.API.Directory.Schemas.Update
import           Network.Google.API.Directory.Tokens.Delete
import           Network.Google.API.Directory.Tokens.Get
import           Network.Google.API.Directory.Tokens.List
import           Network.Google.API.Directory.Users.Aliases.Delete
import           Network.Google.API.Directory.Users.Aliases.Insert
import           Network.Google.API.Directory.Users.Aliases.List
import           Network.Google.API.Directory.Users.Aliases.Watch
import           Network.Google.API.Directory.Users.Photos.Delete
import           Network.Google.API.Directory.Users.Photos.Get
import           Network.Google.API.Directory.Users.Photos.Patch
import           Network.Google.API.Directory.Users.Photos.Update
import           Network.Google.API.Directory.VerificationCodes.Generate
import           Network.Google.API.Directory.VerificationCodes.Invalidate
import           Network.Google.API.Directory.VerificationCodes.List
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminDirectory =
     OrgunitsInsertAPI :<|> NotificationsListAPI :<|>
       VerificationCodesGenerateAPI
       :<|> OrgunitsPatchAPI
       :<|> AspsListAPI
       :<|> NotificationsUpdateAPI
       :<|> TokensGetAPI
       :<|> AspsDeleteAPI
       :<|> TokensListAPI
       :<|> MembersPatchAPI
       :<|> UsersPhotosGetAPI
       :<|> MobiledevicesActionAPI
       :<|> ChromeosdevicesGetAPI
       :<|> UsersPhotosDeleteAPI
       :<|> SchemasDeleteAPI
       :<|> OrgunitsGetAPI
       :<|> UsersAliasesWatchAPI
       :<|> UsersAliasesDeleteAPI
       :<|> GroupsAliasesDeleteAPI
       :<|> UsersPhotosUpdateAPI
       :<|> SchemasGetAPI
       :<|> GroupsAliasesInsertAPI
       :<|> MembersGetAPI
       :<|> OrgunitsListAPI
       :<|> SchemasInsertAPI
       :<|> UsersAliasesInsertAPI
       :<|> TokensDeleteAPI
       :<|> OrgunitsDeleteAPI
       :<|> SchemasPatchAPI
       :<|> VerificationCodesInvalidateAPI
       :<|> ChromeosdevicesUpdateAPI
       :<|> NotificationsDeleteAPI
       :<|> MobiledevicesGetAPI
       :<|> ChromeosdevicesListAPI
       :<|> ChannelsStopAPI
       :<|> SchemasListAPI
       :<|> NotificationsGetAPI
       :<|> MembersDeleteAPI
       :<|> UsersAliasesListAPI
       :<|> OrgunitsUpdateAPI
       :<|> GroupsAliasesListAPI
       :<|> SchemasUpdateAPI
       :<|> UsersPhotosPatchAPI
       :<|> MobiledevicesListAPI
       :<|> MembersUpdateAPI
       :<|> MobiledevicesDeleteAPI
       :<|> NotificationsPatchAPI
       :<|> MembersInsertAPI
       :<|> VerificationCodesListAPI
       :<|> AspsGetAPI
       :<|> ChromeosdevicesPatchAPI
       :<|> MembersListAPI

adminDirectory :: Proxy AdminDirectory
adminDirectory = Proxy
