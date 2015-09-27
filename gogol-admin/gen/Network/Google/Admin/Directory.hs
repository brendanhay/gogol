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
    -- * Resources
      AdminDirectory
    , GroupsAPI
    , AliasesAPI
    , AliasesInsert
    , AliasesList
    , AliasesDelete
    , UsersAPI
    , AliasesAPI
    , AliasesInsert
    , AliasesList
    , AliasesDelete
    , AliasesWatch
    , PhotosAPI
    , PhotosPatch
    , PhotosGet
    , PhotosDelete
    , PhotosUpdate
    , SchemasAPI
    , SchemasInsert
    , SchemasList
    , SchemasPatch
    , SchemasGet
    , SchemasDelete
    , SchemasUpdate
    , TokensAPI
    , TokensList
    , TokensGet
    , TokensDelete
    , ChannelsAPI
    , ChannelsStop
    , MembersAPI
    , MembersInsert
    , MembersList
    , MembersPatch
    , MembersGet
    , MembersDelete
    , MembersUpdate
    , MobiledevicesAPI
    , MobiledevicesList
    , MobiledevicesGet
    , MobiledevicesAction
    , MobiledevicesDelete
    , OrgunitsAPI
    , OrgunitsInsert
    , OrgunitsList
    , OrgunitsPatch
    , OrgunitsGet
    , OrgunitsDelete
    , OrgunitsUpdate
    , VerificationCodesAPI
    , VerificationCodesList
    , VerificationCodesGenerate
    , VerificationCodesInvalidate
    , NotificationsAPI
    , NotificationsList
    , NotificationsPatch
    , NotificationsGet
    , NotificationsDelete
    , NotificationsUpdate
    , ChromeosdevicesAPI
    , ChromeosdevicesList
    , ChromeosdevicesPatch
    , ChromeosdevicesGet
    , ChromeosdevicesUpdate
    , AspsAPI
    , AspsList
    , AspsGet
    , AspsDelete

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

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminDirectory =
     GroupsAPI :<|> UsersAPI :<|> SchemasAPI :<|>
       TokensAPI
       :<|> ChannelsAPI
       :<|> MembersAPI
       :<|> MobiledevicesAPI
       :<|> OrgunitsAPI
       :<|> VerificationCodesAPI
       :<|> NotificationsAPI
       :<|> ChromeosdevicesAPI
       :<|> AspsAPI

type GroupsAPI = AliasesAPI

type AliasesAPI =
     AliasesInsert :<|> AliasesList :<|> AliasesDelete

-- | Add a alias for the group
type AliasesInsert =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Alias

-- | List all aliases for a group
type AliasesList =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Aliases

-- | Remove a alias for the group
type AliasesDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 Capture "alias" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

type UsersAPI = AliasesAPI :<|> PhotosAPI

type AliasesAPI =
     AliasesInsert :<|> AliasesList :<|> AliasesDelete
       :<|> AliasesWatch

-- | Add a alias for the user
type AliasesInsert =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Alias

-- | List all aliases for a user
type AliasesList =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 QueryParam "event" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Aliases

-- | Remove a alias for the user
type AliasesDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 Capture "alias" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Watch for changes in user aliases list
type AliasesWatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 "watch" :>
                   QueryParam "event" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Channel

type PhotosAPI =
     PhotosPatch :<|> PhotosGet :<|> PhotosDelete :<|>
       PhotosUpdate

-- | Add a photo for the user. This method supports patch semantics.
type PhotosPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "photos" :>
                 "thumbnail" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] UserPhoto

-- | Retrieve photo of a user
type PhotosGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "photos" :>
                 "thumbnail" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] UserPhoto

-- | Remove photos for the user
type PhotosDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "photos" :>
                 "thumbnail" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Add a photo for the user
type PhotosUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "photos" :>
                 "thumbnail" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] UserPhoto

type SchemasAPI =
     SchemasInsert :<|> SchemasList :<|> SchemasPatch :<|>
       SchemasGet
       :<|> SchemasDelete
       :<|> SchemasUpdate

-- | Create schema.
type SchemasInsert =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Schema

-- | Retrieve all schemas for a customer
type SchemasList =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Schemas

-- | Update schema. This method supports patch semantics.
type SchemasPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Schema

-- | Retrieve schema
type SchemasGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Schema

-- | Delete schema
type SchemasDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Update schema
type SchemasUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Schema

type TokensAPI =
     TokensList :<|> TokensGet :<|> TokensDelete

-- | Returns the set of tokens specified user has issued to 3rd party
-- applications.
type TokensList =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Tokens

-- | Get information about an access token issued by a user.
type TokensGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 Capture "clientId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Token

-- | Delete all access tokens issued by a user for an application.
type TokensDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 Capture "clientId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

type ChannelsAPI = ChannelsStop

-- | Stop watching resources through this channel
type ChannelsStop =
     "admin" :>
       "directory" :>
         "v1" :>
           "admin" :>
             "directory_v1" :>
               "channels" :>
                 "stop" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] ()

type MembersAPI =
     MembersInsert :<|> MembersList :<|> MembersPatch :<|>
       MembersGet
       :<|> MembersDelete
       :<|> MembersUpdate

-- | Add user to the specified group.
type MembersInsert =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] Member

-- | Retrieve all members in a group (paginated)
type MembersList =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "roles" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Natural :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Get '[JSON] Members

-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
type MembersPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] Member

-- | Retrieve Group Member
type MembersGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Member

-- | Remove membership.
type MembersDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Update membership of a user in the specified group.
type MembersUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Member

type MobiledevicesAPI =
     MobiledevicesList :<|> MobiledevicesGet :<|>
       MobiledevicesAction
       :<|> MobiledevicesDelete

-- | Retrieve all Mobile Devices of a customer (paginated)
type MobiledevicesList =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "orderBy" Text :>
                         QueryParam "userIp" Text :>
                           QueryParam "sortOrder" Text :>
                             QueryParam "key" Text :>
                               QueryParam "query" Text :>
                                 QueryParam "projection" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "oauth_token" Text :>
                                       QueryParam "maxResults" Natural :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Text :>
                                             Get '[JSON] MobileDevices

-- | Retrieve Mobile Device
type MobiledevicesGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "projection" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] MobileDevice

-- | Take action on Mobile Device
type MobiledevicesAction =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     "action" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] ()

-- | Delete Mobile Device
type MobiledevicesDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

type OrgunitsAPI =
     OrgunitsInsert :<|> OrgunitsList :<|> OrgunitsPatch
       :<|> OrgunitsGet
       :<|> OrgunitsDelete
       :<|> OrgunitsUpdate

-- | Add Organization Unit
type OrgunitsInsert =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] OrgUnit

-- | Retrieve all Organization Units
type OrgunitsList =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "orgUnitPath" Text :>
                         QueryParam "key" Text :>
                           QueryParam "type" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] OrgUnits

-- | Update Organization Unit. This method supports patch semantics.
type OrgunitsPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits{" :>
                 "orgUnitPath*}" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] OrgUnit

-- | Retrieve Organization Unit
type OrgunitsGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits{" :>
                 "orgUnitPath*}" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] OrgUnit

-- | Remove Organization Unit
type OrgunitsDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits{" :>
                 "orgUnitPath*}" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Update Organization Unit
type OrgunitsUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits{" :>
                 "orgUnitPath*}" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] OrgUnit

type VerificationCodesAPI =
     VerificationCodesList :<|> VerificationCodesGenerate
       :<|> VerificationCodesInvalidate

-- | Returns the current set of valid backup verification codes for the
-- specified user.
type VerificationCodesList =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] VerificationCodes

-- | Generate new backup verification codes for the user.
type VerificationCodesGenerate =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "generate" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] ()

-- | Invalidate the current backup verification codes for the user.
type VerificationCodesInvalidate =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "invalidate" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] ()

type NotificationsAPI =
     NotificationsList :<|> NotificationsPatch :<|>
       NotificationsGet
       :<|> NotificationsDelete
       :<|> NotificationsUpdate

-- | Retrieves a list of notifications.
type NotificationsList =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "language" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] Notifications

-- | Updates a notification. This method supports patch semantics.
type NotificationsPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Patch '[JSON] Notification

-- | Retrieves a notification.
type NotificationsGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Notification

-- | Deletes a notification
type NotificationsDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a notification.
type NotificationsUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "notifications" :>
                 Capture "notificationId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] Notification

type ChromeosdevicesAPI =
     ChromeosdevicesList :<|> ChromeosdevicesPatch :<|>
       ChromeosdevicesGet
       :<|> ChromeosdevicesUpdate

-- | Retrieve all Chrome OS Devices of a customer (paginated)
type ChromeosdevicesList =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "orderBy" Text :>
                         QueryParam "userIp" Text :>
                           QueryParam "sortOrder" Text :>
                             QueryParam "key" Text :>
                               QueryParam "query" Text :>
                                 QueryParam "projection" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "oauth_token" Text :>
                                       QueryParam "maxResults" Natural :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Text :>
                                             Get '[JSON] ChromeOsDevices

-- | Update Chrome OS Device. This method supports patch semantics.
type ChromeosdevicesPatch =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "projection" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Patch '[JSON] ChromeOsDevice

-- | Retrieve Chrome OS Device
type ChromeosdevicesGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "projection" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ChromeOsDevice

-- | Update Chrome OS Device
type ChromeosdevicesUpdate =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "projection" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] ChromeOsDevice

type AspsAPI = AspsList :<|> AspsGet :<|> AspsDelete

-- | List the ASPs issued by a user.
type AspsList =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Asps

-- | Get information about an ASP issued by a user.
type AspsGet =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 Capture "codeId" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Asp

-- | Delete an ASP issued by a user.
type AspsDelete =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 Capture "codeId" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()
