{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdminDirectory
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
module Network.Google.AdminDirectory
    (
    -- * API
      AdminDirectoryAPI
    , adminDirectoryAPI
    , adminDirectoryURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdminChannelsStop
    , module Admin.Channels.Stop

    -- ** DirectoryAspsDelete
    , module Directory.Asps.Delete

    -- ** DirectoryAspsGet
    , module Directory.Asps.Get

    -- ** DirectoryAspsList
    , module Directory.Asps.List

    -- ** DirectoryChromeosdevicesGet
    , module Directory.Chromeosdevices.Get

    -- ** DirectoryChromeosdevicesList
    , module Directory.Chromeosdevices.List

    -- ** DirectoryChromeosdevicesPatch
    , module Directory.Chromeosdevices.Patch

    -- ** DirectoryChromeosdevicesUpdate
    , module Directory.Chromeosdevices.Update

    -- ** DirectoryGroupsAliasesDelete
    , module Directory.Groups.Aliases.Delete

    -- ** DirectoryGroupsAliasesInsert
    , module Directory.Groups.Aliases.Insert

    -- ** DirectoryGroupsAliasesList
    , module Directory.Groups.Aliases.List

    -- ** DirectoryGroupsDelete
    , module Directory.Groups.Delete

    -- ** DirectoryGroupsGet
    , module Directory.Groups.Get

    -- ** DirectoryGroupsInsert
    , module Directory.Groups.Insert

    -- ** DirectoryGroupsList
    , module Directory.Groups.List

    -- ** DirectoryGroupsPatch
    , module Directory.Groups.Patch

    -- ** DirectoryGroupsUpdate
    , module Directory.Groups.Update

    -- ** DirectoryMembersDelete
    , module Directory.Members.Delete

    -- ** DirectoryMembersGet
    , module Directory.Members.Get

    -- ** DirectoryMembersInsert
    , module Directory.Members.Insert

    -- ** DirectoryMembersList
    , module Directory.Members.List

    -- ** DirectoryMembersPatch
    , module Directory.Members.Patch

    -- ** DirectoryMembersUpdate
    , module Directory.Members.Update

    -- ** DirectoryMobiledevicesAction
    , module Directory.Mobiledevices.Action

    -- ** DirectoryMobiledevicesDelete
    , module Directory.Mobiledevices.Delete

    -- ** DirectoryMobiledevicesGet
    , module Directory.Mobiledevices.Get

    -- ** DirectoryMobiledevicesList
    , module Directory.Mobiledevices.List

    -- ** DirectoryNotificationsDelete
    , module Directory.Notifications.Delete

    -- ** DirectoryNotificationsGet
    , module Directory.Notifications.Get

    -- ** DirectoryNotificationsList
    , module Directory.Notifications.List

    -- ** DirectoryNotificationsPatch
    , module Directory.Notifications.Patch

    -- ** DirectoryNotificationsUpdate
    , module Directory.Notifications.Update

    -- ** DirectoryOrgunitsDelete
    , module Directory.Orgunits.Delete

    -- ** DirectoryOrgunitsGet
    , module Directory.Orgunits.Get

    -- ** DirectoryOrgunitsInsert
    , module Directory.Orgunits.Insert

    -- ** DirectoryOrgunitsList
    , module Directory.Orgunits.List

    -- ** DirectoryOrgunitsPatch
    , module Directory.Orgunits.Patch

    -- ** DirectoryOrgunitsUpdate
    , module Directory.Orgunits.Update

    -- ** DirectorySchemasDelete
    , module Directory.Schemas.Delete

    -- ** DirectorySchemasGet
    , module Directory.Schemas.Get

    -- ** DirectorySchemasInsert
    , module Directory.Schemas.Insert

    -- ** DirectorySchemasList
    , module Directory.Schemas.List

    -- ** DirectorySchemasPatch
    , module Directory.Schemas.Patch

    -- ** DirectorySchemasUpdate
    , module Directory.Schemas.Update

    -- ** DirectoryTokensDelete
    , module Directory.Tokens.Delete

    -- ** DirectoryTokensGet
    , module Directory.Tokens.Get

    -- ** DirectoryTokensList
    , module Directory.Tokens.List

    -- ** DirectoryUsersAliasesDelete
    , module Directory.Users.Aliases.Delete

    -- ** DirectoryUsersAliasesInsert
    , module Directory.Users.Aliases.Insert

    -- ** DirectoryUsersAliasesList
    , module Directory.Users.Aliases.List

    -- ** DirectoryUsersAliasesWatch
    , module Directory.Users.Aliases.Watch

    -- ** DirectoryUsersDelete
    , module Directory.Users.Delete

    -- ** DirectoryUsersGet
    , module Directory.Users.Get

    -- ** DirectoryUsersInsert
    , module Directory.Users.Insert

    -- ** DirectoryUsersList
    , module Directory.Users.List

    -- ** DirectoryUsersMakeAdmin
    , module Directory.Users.MakeAdmin

    -- ** DirectoryUsersPatch
    , module Directory.Users.Patch

    -- ** DirectoryUsersPhotosDelete
    , module Directory.Users.Photos.Delete

    -- ** DirectoryUsersPhotosGet
    , module Directory.Users.Photos.Get

    -- ** DirectoryUsersPhotosPatch
    , module Directory.Users.Photos.Patch

    -- ** DirectoryUsersPhotosUpdate
    , module Directory.Users.Photos.Update

    -- ** DirectoryUsersUndelete
    , module Directory.Users.Undelete

    -- ** DirectoryUsersUpdate
    , module Directory.Users.Update

    -- ** DirectoryUsersWatch
    , module Directory.Users.Watch

    -- ** DirectoryVerificationCodesGenerate
    , module Directory.VerificationCodes.Generate

    -- ** DirectoryVerificationCodesInvalidate
    , module Directory.VerificationCodes.Invalidate

    -- ** DirectoryVerificationCodesList
    , module Directory.VerificationCodes.List

    -- * Types

    -- ** UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- ** OrgUnit
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

    -- ** Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- ** UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

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

    -- ** Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- ** UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

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

    -- ** Aliases
    , Aliases
    , aliases
    , aEtag
    , aKind
    , aAliases

    -- ** Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

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

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** MobileDevices
    , MobileDevices
    , mobileDevices
    , mdEtag
    , mdNextPageToken
    , mdKind
    , mdMobiledevices

    -- ** Members
    , Members
    , members
    , mEtag
    , mNextPageToken
    , mKind
    , mMembers

    -- ** Channel
    , Channel
    , channel
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** Alias
    , Alias
    , alias
    , aliEtag
    , aliKind
    , aliAlias
    , aliId
    , aliPrimaryEmail

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

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

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

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

    -- ** UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- ** Member
    , Member
    , member
    , memEmail
    , memEtag
    , memKind
    , memRole
    , memId
    , memType

    -- ** MobileDevice
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
    , mobOs
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
    , mobWifiMacAddress
    , mobSerialNumber
    , mobHardwareId
    , mobBasebandVersion
    , mobSupportsWorkProfile
    , mobDeviceCompromisedStatus
    , mobApplications
    , mobDefaultLanguage

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- ** MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

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

    -- ** Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- ** UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- ** Asps
    , Asps
    , asps
    , aaEtag
    , aaKind
    , aaItems

    -- ** ChromeOsDevices
    , ChromeOsDevices
    , chromeOsDevices
    , codsEtag
    , codsNextPageToken
    , codsKind
    , codsChromeosdevices
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Admin.Channels.Stop
import           Network.Google.Resource.Directory.Asps.Delete
import           Network.Google.Resource.Directory.Asps.Get
import           Network.Google.Resource.Directory.Asps.List
import           Network.Google.Resource.Directory.Chromeosdevices.Get
import           Network.Google.Resource.Directory.Chromeosdevices.List
import           Network.Google.Resource.Directory.Chromeosdevices.Patch
import           Network.Google.Resource.Directory.Chromeosdevices.Update
import           Network.Google.Resource.Directory.Groups.Aliases.Delete
import           Network.Google.Resource.Directory.Groups.Aliases.Insert
import           Network.Google.Resource.Directory.Groups.Aliases.List
import           Network.Google.Resource.Directory.Groups.Delete
import           Network.Google.Resource.Directory.Groups.Get
import           Network.Google.Resource.Directory.Groups.Insert
import           Network.Google.Resource.Directory.Groups.List
import           Network.Google.Resource.Directory.Groups.Patch
import           Network.Google.Resource.Directory.Groups.Update
import           Network.Google.Resource.Directory.Members.Delete
import           Network.Google.Resource.Directory.Members.Get
import           Network.Google.Resource.Directory.Members.Insert
import           Network.Google.Resource.Directory.Members.List
import           Network.Google.Resource.Directory.Members.Patch
import           Network.Google.Resource.Directory.Members.Update
import           Network.Google.Resource.Directory.Mobiledevices.Action
import           Network.Google.Resource.Directory.Mobiledevices.Delete
import           Network.Google.Resource.Directory.Mobiledevices.Get
import           Network.Google.Resource.Directory.Mobiledevices.List
import           Network.Google.Resource.Directory.Notifications.Delete
import           Network.Google.Resource.Directory.Notifications.Get
import           Network.Google.Resource.Directory.Notifications.List
import           Network.Google.Resource.Directory.Notifications.Patch
import           Network.Google.Resource.Directory.Notifications.Update
import           Network.Google.Resource.Directory.Orgunits.Delete
import           Network.Google.Resource.Directory.Orgunits.Get
import           Network.Google.Resource.Directory.Orgunits.Insert
import           Network.Google.Resource.Directory.Orgunits.List
import           Network.Google.Resource.Directory.Orgunits.Patch
import           Network.Google.Resource.Directory.Orgunits.Update
import           Network.Google.Resource.Directory.Schemas.Delete
import           Network.Google.Resource.Directory.Schemas.Get
import           Network.Google.Resource.Directory.Schemas.Insert
import           Network.Google.Resource.Directory.Schemas.List
import           Network.Google.Resource.Directory.Schemas.Patch
import           Network.Google.Resource.Directory.Schemas.Update
import           Network.Google.Resource.Directory.Tokens.Delete
import           Network.Google.Resource.Directory.Tokens.Get
import           Network.Google.Resource.Directory.Tokens.List
import           Network.Google.Resource.Directory.Users.Aliases.Delete
import           Network.Google.Resource.Directory.Users.Aliases.Insert
import           Network.Google.Resource.Directory.Users.Aliases.List
import           Network.Google.Resource.Directory.Users.Aliases.Watch
import           Network.Google.Resource.Directory.Users.Delete
import           Network.Google.Resource.Directory.Users.Get
import           Network.Google.Resource.Directory.Users.Insert
import           Network.Google.Resource.Directory.Users.List
import           Network.Google.Resource.Directory.Users.MakeAdmin
import           Network.Google.Resource.Directory.Users.Patch
import           Network.Google.Resource.Directory.Users.Photos.Delete
import           Network.Google.Resource.Directory.Users.Photos.Get
import           Network.Google.Resource.Directory.Users.Photos.Patch
import           Network.Google.Resource.Directory.Users.Photos.Update
import           Network.Google.Resource.Directory.Users.Undelete
import           Network.Google.Resource.Directory.Users.Update
import           Network.Google.Resource.Directory.Users.Watch
import           Network.Google.Resource.Directory.VerificationCodes.Generate
import           Network.Google.Resource.Directory.VerificationCodes.Invalidate
import           Network.Google.Resource.Directory.VerificationCodes.List

{- $resources
TODO
-}

type AdminDirectoryAPI =
     Groups :<|> Users :<|> Schemas :<|> Tokens :<|>
       Channels
       :<|> Members
       :<|> Mobiledevices
       :<|> Orgunits
       :<|> VerificationCodes
       :<|> Notifications
       :<|> Chromeosdevices
       :<|> Asps

adminDirectoryAPI :: Proxy AdminDirectoryAPI
adminDirectoryAPI = Proxy
