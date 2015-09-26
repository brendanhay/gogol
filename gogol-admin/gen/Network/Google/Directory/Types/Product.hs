{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Directory.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Directory.Types.Product where

import           Network.Google.Directory.Types.Sum
import           Network.Google.Prelude

-- | JSON template for Alias object in Directory API.
--
-- /See:/ 'alias' smart constructor.
data Alias = Alias
    { _aEtag         :: !(Maybe Text)
    , _aKind         :: !Text
    , _aAlias        :: !(Maybe Text)
    , _aId           :: !(Maybe Text)
    , _aPrimaryEmail :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aKind'
--
-- * 'aAlias'
--
-- * 'aId'
--
-- * 'aPrimaryEmail'
alias
    :: Alias
alias =
    Alias
    { _aEtag = Nothing
    , _aKind = "admin#directory#alias"
    , _aAlias = Nothing
    , _aId = Nothing
    , _aPrimaryEmail = Nothing
    }

-- | ETag of the resource.
aEtag :: Lens' Alias (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Kind of resource this is.
aKind :: Lens' Alias Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | A alias email
aAlias :: Lens' Alias (Maybe Text)
aAlias = lens _aAlias (\ s a -> s{_aAlias = a})

-- | Unique id of the group (Read-only) Unique id of the user (Read-only)
aId :: Lens' Alias (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Group\'s primary email (Read-only) User\'s primary email (Read-only)
aPrimaryEmail :: Lens' Alias (Maybe Text)
aPrimaryEmail
  = lens _aPrimaryEmail
      (\ s a -> s{_aPrimaryEmail = a})

-- | JSON response template to list aliases in Directory API.
--
-- /See:/ 'aliases' smart constructor.
data Aliases = Aliases
    { _aliEtag    :: !(Maybe Text)
    , _aliKind    :: !Text
    , _aliAliases :: !(Maybe [Maybe Alias])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Aliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aliEtag'
--
-- * 'aliKind'
--
-- * 'aliAliases'
aliases
    :: Aliases
aliases =
    Aliases
    { _aliEtag = Nothing
    , _aliKind = "admin#directory#aliases"
    , _aliAliases = Nothing
    }

-- | ETag of the resource.
aliEtag :: Lens' Aliases (Maybe Text)
aliEtag = lens _aliEtag (\ s a -> s{_aliEtag = a})

-- | Kind of resource this is.
aliKind :: Lens' Aliases Text
aliKind = lens _aliKind (\ s a -> s{_aliKind = a})

-- | List of alias objects.
aliAliases :: Lens' Aliases [Maybe Alias]
aliAliases
  = lens _aliAliases (\ s a -> s{_aliAliases = a}) .
      _Default
      . _Coerce

-- | The template that returns individual ASP (Access Code) data.
--
-- /See:/ 'asp' smart constructor.
data Asp = Asp
    { _aspCreationTime :: !(Maybe Int64)
    , _aspEtag         :: !(Maybe Text)
    , _aspCodeId       :: !(Maybe Int32)
    , _aspKind         :: !Text
    , _aspName         :: !(Maybe Text)
    , _aspLastTimeUsed :: !(Maybe Int64)
    , _aspUserKey      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspCreationTime'
--
-- * 'aspEtag'
--
-- * 'aspCodeId'
--
-- * 'aspKind'
--
-- * 'aspName'
--
-- * 'aspLastTimeUsed'
--
-- * 'aspUserKey'
asp
    :: Asp
asp =
    Asp
    { _aspCreationTime = Nothing
    , _aspEtag = Nothing
    , _aspCodeId = Nothing
    , _aspKind = "admin#directory#asp"
    , _aspName = Nothing
    , _aspLastTimeUsed = Nothing
    , _aspUserKey = Nothing
    }

-- | The time when the ASP was created. Expressed in Unix time format.
aspCreationTime :: Lens' Asp (Maybe Int64)
aspCreationTime
  = lens _aspCreationTime
      (\ s a -> s{_aspCreationTime = a})

-- | ETag of the ASP.
aspEtag :: Lens' Asp (Maybe Text)
aspEtag = lens _aspEtag (\ s a -> s{_aspEtag = a})

-- | The unique ID of the ASP.
aspCodeId :: Lens' Asp (Maybe Int32)
aspCodeId
  = lens _aspCodeId (\ s a -> s{_aspCodeId = a})

-- | The type of the API resource. This is always admin#directory#asp.
aspKind :: Lens' Asp Text
aspKind = lens _aspKind (\ s a -> s{_aspKind = a})

-- | The name of the application that the user, represented by their userId,
-- entered when the ASP was created.
aspName :: Lens' Asp (Maybe Text)
aspName = lens _aspName (\ s a -> s{_aspName = a})

-- | The time when the ASP was last used. Expressed in Unix time format.
aspLastTimeUsed :: Lens' Asp (Maybe Int64)
aspLastTimeUsed
  = lens _aspLastTimeUsed
      (\ s a -> s{_aspLastTimeUsed = a})

-- | The unique ID of the user who issued the ASP.
aspUserKey :: Lens' Asp (Maybe Text)
aspUserKey
  = lens _aspUserKey (\ s a -> s{_aspUserKey = a})

--
-- /See:/ 'asps' smart constructor.
data Asps = Asps
    { _aaEtag  :: !(Maybe Text)
    , _aaKind  :: !Text
    , _aaItems :: !(Maybe [Maybe Asp])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEtag'
--
-- * 'aaKind'
--
-- * 'aaItems'
asps
    :: Asps
asps =
    Asps
    { _aaEtag = Nothing
    , _aaKind = "admin#directory#aspList"
    , _aaItems = Nothing
    }

-- | ETag of the resource.
aaEtag :: Lens' Asps (Maybe Text)
aaEtag = lens _aaEtag (\ s a -> s{_aaEtag = a})

-- | The type of the API resource. This is always admin#directory#aspList.
aaKind :: Lens' Asps Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | A list of ASP resources.
aaItems :: Lens' Asps [Maybe Asp]
aaItems
  = lens _aaItems (\ s a -> s{_aaItems = a}) . _Default
      . _Coerce

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _chaResourceUri :: !(Maybe Text)
    , _chaResourceId  :: !(Maybe Text)
    , _chaKind        :: !Text
    , _chaExpiration  :: !(Maybe Int64)
    , _chaToken       :: !(Maybe Text)
    , _chaAddress     :: !(Maybe Text)
    , _chaPayload     :: !(Maybe Bool)
    , _chaParams      :: !(Maybe ChannelParams)
    , _chaId          :: !(Maybe Text)
    , _chaType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaResourceUri'
--
-- * 'chaResourceId'
--
-- * 'chaKind'
--
-- * 'chaExpiration'
--
-- * 'chaToken'
--
-- * 'chaAddress'
--
-- * 'chaPayload'
--
-- * 'chaParams'
--
-- * 'chaId'
--
-- * 'chaType'
channel
    :: Channel
channel =
    Channel
    { _chaResourceUri = Nothing
    , _chaResourceId = Nothing
    , _chaKind = "api#channel"
    , _chaExpiration = Nothing
    , _chaToken = Nothing
    , _chaAddress = Nothing
    , _chaPayload = Nothing
    , _chaParams = Nothing
    , _chaId = Nothing
    , _chaType = Nothing
    }

-- | A version-specific identifier for the watched resource.
chaResourceUri :: Lens' Channel (Maybe Text)
chaResourceUri
  = lens _chaResourceUri
      (\ s a -> s{_chaResourceUri = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
chaResourceId :: Lens' Channel (Maybe Text)
chaResourceId
  = lens _chaResourceId
      (\ s a -> s{_chaResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
chaKind :: Lens' Channel Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
chaExpiration :: Lens' Channel (Maybe Int64)
chaExpiration
  = lens _chaExpiration
      (\ s a -> s{_chaExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
chaToken :: Lens' Channel (Maybe Text)
chaToken = lens _chaToken (\ s a -> s{_chaToken = a})

-- | The address where notifications are delivered for this channel.
chaAddress :: Lens' Channel (Maybe Text)
chaAddress
  = lens _chaAddress (\ s a -> s{_chaAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
chaPayload :: Lens' Channel (Maybe Bool)
chaPayload
  = lens _chaPayload (\ s a -> s{_chaPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
chaParams :: Lens' Channel (Maybe ChannelParams)
chaParams
  = lens _chaParams (\ s a -> s{_chaParams = a})

-- | A UUID or similar unique string that identifies this channel.
chaId :: Lens' Channel (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | The type of delivery mechanism used for this channel.
chaType :: Lens' Channel (Maybe Text)
chaType = lens _chaType (\ s a -> s{_chaType = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

-- | JSON template for Chrome Os Device resource in Directory API.
--
-- /See:/ 'chromeOsDevice' smart constructor.
data ChromeOsDevice = ChromeOsDevice
    { _codStatus             :: !(Maybe Text)
    , _codEtag               :: !(Maybe Text)
    , _codAnnotatedUser      :: !(Maybe Text)
    , _codPlatformVersion    :: !(Maybe Text)
    , _codLastSync           :: !(Maybe UTCTime)
    , _codActiveTimeRanges   :: !(Maybe [ChromeOsDeviceItemActiveTimeRanges])
    , _codKind               :: !Text
    , _codEthernetMacAddress :: !(Maybe Text)
    , _codLastEnrollmentTime :: !(Maybe UTCTime)
    , _codAnnotatedLocation  :: !(Maybe Text)
    , _codMacAddress         :: !(Maybe Text)
    , _codOrgUnitPath        :: !(Maybe Text)
    , _codRecentUsers        :: !(Maybe [ChromeOsDeviceItemRecentUsers])
    , _codSupportEndDate     :: !(Maybe UTCTime)
    , _codModel              :: !(Maybe Text)
    , _codWillAutoRenew      :: !(Maybe Bool)
    , _codMeid               :: !(Maybe Text)
    , _codDeviceId           :: !(Maybe Text)
    , _codBootMode           :: !(Maybe Text)
    , _codOrderNumber        :: !(Maybe Text)
    , _codAnnotatedAssetId   :: !(Maybe Text)
    , _codNotes              :: !(Maybe Text)
    , _codSerialNumber       :: !(Maybe Text)
    , _codFirmwareVersion    :: !(Maybe Text)
    , _codOsVersion          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOsDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codStatus'
--
-- * 'codEtag'
--
-- * 'codAnnotatedUser'
--
-- * 'codPlatformVersion'
--
-- * 'codLastSync'
--
-- * 'codActiveTimeRanges'
--
-- * 'codKind'
--
-- * 'codEthernetMacAddress'
--
-- * 'codLastEnrollmentTime'
--
-- * 'codAnnotatedLocation'
--
-- * 'codMacAddress'
--
-- * 'codOrgUnitPath'
--
-- * 'codRecentUsers'
--
-- * 'codSupportEndDate'
--
-- * 'codModel'
--
-- * 'codWillAutoRenew'
--
-- * 'codMeid'
--
-- * 'codDeviceId'
--
-- * 'codBootMode'
--
-- * 'codOrderNumber'
--
-- * 'codAnnotatedAssetId'
--
-- * 'codNotes'
--
-- * 'codSerialNumber'
--
-- * 'codFirmwareVersion'
--
-- * 'codOsVersion'
chromeOsDevice
    :: ChromeOsDevice
chromeOsDevice =
    ChromeOsDevice
    { _codStatus = Nothing
    , _codEtag = Nothing
    , _codAnnotatedUser = Nothing
    , _codPlatformVersion = Nothing
    , _codLastSync = Nothing
    , _codActiveTimeRanges = Nothing
    , _codKind = "admin#directory#chromeosdevice"
    , _codEthernetMacAddress = Nothing
    , _codLastEnrollmentTime = Nothing
    , _codAnnotatedLocation = Nothing
    , _codMacAddress = Nothing
    , _codOrgUnitPath = Nothing
    , _codRecentUsers = Nothing
    , _codSupportEndDate = Nothing
    , _codModel = Nothing
    , _codWillAutoRenew = Nothing
    , _codMeid = Nothing
    , _codDeviceId = Nothing
    , _codBootMode = Nothing
    , _codOrderNumber = Nothing
    , _codAnnotatedAssetId = Nothing
    , _codNotes = Nothing
    , _codSerialNumber = Nothing
    , _codFirmwareVersion = Nothing
    , _codOsVersion = Nothing
    }

-- | status of the device (Read-only)
codStatus :: Lens' ChromeOsDevice (Maybe Text)
codStatus
  = lens _codStatus (\ s a -> s{_codStatus = a})

-- | ETag of the resource.
codEtag :: Lens' ChromeOsDevice (Maybe Text)
codEtag = lens _codEtag (\ s a -> s{_codEtag = a})

-- | User of the device
codAnnotatedUser :: Lens' ChromeOsDevice (Maybe Text)
codAnnotatedUser
  = lens _codAnnotatedUser
      (\ s a -> s{_codAnnotatedUser = a})

-- | Chromebook platform version (Read-only)
codPlatformVersion :: Lens' ChromeOsDevice (Maybe Text)
codPlatformVersion
  = lens _codPlatformVersion
      (\ s a -> s{_codPlatformVersion = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
codLastSync :: Lens' ChromeOsDevice (Maybe UTCTime)
codLastSync
  = lens _codLastSync (\ s a -> s{_codLastSync = a})

-- | List of active time ranges (Read-only)
codActiveTimeRanges :: Lens' ChromeOsDevice [ChromeOsDeviceItemActiveTimeRanges]
codActiveTimeRanges
  = lens _codActiveTimeRanges
      (\ s a -> s{_codActiveTimeRanges = a})
      . _Default
      . _Coerce

-- | Kind of resource this is.
codKind :: Lens' ChromeOsDevice Text
codKind = lens _codKind (\ s a -> s{_codKind = a})

-- | Chromebook Mac Address on ethernet network interface (Read-only)
codEthernetMacAddress :: Lens' ChromeOsDevice (Maybe Text)
codEthernetMacAddress
  = lens _codEthernetMacAddress
      (\ s a -> s{_codEthernetMacAddress = a})

-- | Date and time the device was last enrolled (Read-only)
codLastEnrollmentTime :: Lens' ChromeOsDevice (Maybe UTCTime)
codLastEnrollmentTime
  = lens _codLastEnrollmentTime
      (\ s a -> s{_codLastEnrollmentTime = a})

-- | Address or location of the device as noted by the administrator
codAnnotatedLocation :: Lens' ChromeOsDevice (Maybe Text)
codAnnotatedLocation
  = lens _codAnnotatedLocation
      (\ s a -> s{_codAnnotatedLocation = a})

-- | Chromebook Mac Address on wifi network interface (Read-only)
codMacAddress :: Lens' ChromeOsDevice (Maybe Text)
codMacAddress
  = lens _codMacAddress
      (\ s a -> s{_codMacAddress = a})

-- | OrgUnit of the device
codOrgUnitPath :: Lens' ChromeOsDevice (Maybe Text)
codOrgUnitPath
  = lens _codOrgUnitPath
      (\ s a -> s{_codOrgUnitPath = a})

-- | List of recent device users, in descending order by last login time
-- (Read-only)
codRecentUsers :: Lens' ChromeOsDevice [ChromeOsDeviceItemRecentUsers]
codRecentUsers
  = lens _codRecentUsers
      (\ s a -> s{_codRecentUsers = a})
      . _Default
      . _Coerce

-- | Final date the device will be supported (Read-only)
codSupportEndDate :: Lens' ChromeOsDevice (Maybe UTCTime)
codSupportEndDate
  = lens _codSupportEndDate
      (\ s a -> s{_codSupportEndDate = a})

-- | Chromebook Model (Read-only)
codModel :: Lens' ChromeOsDevice (Maybe Text)
codModel = lens _codModel (\ s a -> s{_codModel = a})

-- | Will Chromebook auto renew after support end date (Read-only)
codWillAutoRenew :: Lens' ChromeOsDevice (Maybe Bool)
codWillAutoRenew
  = lens _codWillAutoRenew
      (\ s a -> s{_codWillAutoRenew = a})

-- | Mobile Equipment identifier for the 3G mobile card in the Chromebook
-- (Read-only)
codMeid :: Lens' ChromeOsDevice (Maybe Text)
codMeid = lens _codMeid (\ s a -> s{_codMeid = a})

-- | Unique identifier of Chrome OS Device (Read-only)
codDeviceId :: Lens' ChromeOsDevice (Maybe Text)
codDeviceId
  = lens _codDeviceId (\ s a -> s{_codDeviceId = a})

-- | Chromebook boot mode (Read-only)
codBootMode :: Lens' ChromeOsDevice (Maybe Text)
codBootMode
  = lens _codBootMode (\ s a -> s{_codBootMode = a})

-- | Chromebook order number (Read-only)
codOrderNumber :: Lens' ChromeOsDevice (Maybe Text)
codOrderNumber
  = lens _codOrderNumber
      (\ s a -> s{_codOrderNumber = a})

-- | AssetId specified during enrollment or through later annotation
codAnnotatedAssetId :: Lens' ChromeOsDevice (Maybe Text)
codAnnotatedAssetId
  = lens _codAnnotatedAssetId
      (\ s a -> s{_codAnnotatedAssetId = a})

-- | Notes added by the administrator
codNotes :: Lens' ChromeOsDevice (Maybe Text)
codNotes = lens _codNotes (\ s a -> s{_codNotes = a})

-- | Chromebook serial number (Read-only)
codSerialNumber :: Lens' ChromeOsDevice (Maybe Text)
codSerialNumber
  = lens _codSerialNumber
      (\ s a -> s{_codSerialNumber = a})

-- | Chromebook firmware version (Read-only)
codFirmwareVersion :: Lens' ChromeOsDevice (Maybe Text)
codFirmwareVersion
  = lens _codFirmwareVersion
      (\ s a -> s{_codFirmwareVersion = a})

-- | Chromebook Os Version (Read-only)
codOsVersion :: Lens' ChromeOsDevice (Maybe Text)
codOsVersion
  = lens _codOsVersion (\ s a -> s{_codOsVersion = a})

--
-- /See:/ 'chromeOsDeviceItemActiveTimeRanges' smart constructor.
data ChromeOsDeviceItemActiveTimeRanges = ChromeOsDeviceItemActiveTimeRanges
    { _codiatrDate       :: !(Maybe UTCTime)
    , _codiatrActiveTime :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOsDeviceItemActiveTimeRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codiatrDate'
--
-- * 'codiatrActiveTime'
chromeOsDeviceItemActiveTimeRanges
    :: ChromeOsDeviceItemActiveTimeRanges
chromeOsDeviceItemActiveTimeRanges =
    ChromeOsDeviceItemActiveTimeRanges
    { _codiatrDate = Nothing
    , _codiatrActiveTime = Nothing
    }

-- | Date of usage
codiatrDate :: Lens' ChromeOsDeviceItemActiveTimeRanges (Maybe UTCTime)
codiatrDate
  = lens _codiatrDate (\ s a -> s{_codiatrDate = a})

-- | Duration in milliseconds
codiatrActiveTime :: Lens' ChromeOsDeviceItemActiveTimeRanges (Maybe Int32)
codiatrActiveTime
  = lens _codiatrActiveTime
      (\ s a -> s{_codiatrActiveTime = a})

--
-- /See:/ 'chromeOsDeviceItemRecentUsers' smart constructor.
data ChromeOsDeviceItemRecentUsers = ChromeOsDeviceItemRecentUsers
    { _codiruEmail :: !(Maybe Text)
    , _codiruType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOsDeviceItemRecentUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codiruEmail'
--
-- * 'codiruType'
chromeOsDeviceItemRecentUsers
    :: ChromeOsDeviceItemRecentUsers
chromeOsDeviceItemRecentUsers =
    ChromeOsDeviceItemRecentUsers
    { _codiruEmail = Nothing
    , _codiruType = Nothing
    }

-- | Email address of the user. Present only if the user type is managed
codiruEmail :: Lens' ChromeOsDeviceItemRecentUsers (Maybe Text)
codiruEmail
  = lens _codiruEmail (\ s a -> s{_codiruEmail = a})

-- | The type of the user
codiruType :: Lens' ChromeOsDeviceItemRecentUsers (Maybe Text)
codiruType
  = lens _codiruType (\ s a -> s{_codiruType = a})

-- | JSON response template for List Chrome OS Devices operation in Directory
-- API.
--
-- /See:/ 'chromeOsDevices' smart constructor.
data ChromeOsDevices = ChromeOsDevices
    { _cEtag            :: !(Maybe Text)
    , _cNextPageToken   :: !(Maybe Text)
    , _cKind            :: !Text
    , _cChromeosdevices :: !(Maybe [Maybe ChromeOsDevice])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOsDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cNextPageToken'
--
-- * 'cKind'
--
-- * 'cChromeosdevices'
chromeOsDevices
    :: ChromeOsDevices
chromeOsDevices =
    ChromeOsDevices
    { _cEtag = Nothing
    , _cNextPageToken = Nothing
    , _cKind = "admin#directory#chromeosdevices"
    , _cChromeosdevices = Nothing
    }

-- | ETag of the resource.
cEtag :: Lens' ChromeOsDevices (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Token used to access next page of this result.
cNextPageToken :: Lens' ChromeOsDevices (Maybe Text)
cNextPageToken
  = lens _cNextPageToken
      (\ s a -> s{_cNextPageToken = a})

-- | Kind of resource this is.
cKind :: Lens' ChromeOsDevices Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | List of Chrome OS Device objects.
cChromeosdevices :: Lens' ChromeOsDevices [Maybe ChromeOsDevice]
cChromeosdevices
  = lens _cChromeosdevices
      (\ s a -> s{_cChromeosdevices = a})
      . _Default
      . _Coerce

-- | JSON template for Group resource in Directory API.
--
-- /See:/ 'group'' smart constructor.
data Group = Group
    { _groEmail              :: !(Maybe Text)
    , _groEtag               :: !(Maybe Text)
    , _groDirectMembersCount :: !(Maybe Int64)
    , _groKind               :: !Text
    , _groAliases            :: !(Maybe [Text])
    , _groNonEditableAliases :: !(Maybe [Text])
    , _groName               :: !(Maybe Text)
    , _groAdminCreated       :: !(Maybe Bool)
    , _groId                 :: !(Maybe Text)
    , _groDescription        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'groEmail'
--
-- * 'groEtag'
--
-- * 'groDirectMembersCount'
--
-- * 'groKind'
--
-- * 'groAliases'
--
-- * 'groNonEditableAliases'
--
-- * 'groName'
--
-- * 'groAdminCreated'
--
-- * 'groId'
--
-- * 'groDescription'
group'
    :: Group
group' =
    Group
    { _groEmail = Nothing
    , _groEtag = Nothing
    , _groDirectMembersCount = Nothing
    , _groKind = "admin#directory#group"
    , _groAliases = Nothing
    , _groNonEditableAliases = Nothing
    , _groName = Nothing
    , _groAdminCreated = Nothing
    , _groId = Nothing
    , _groDescription = Nothing
    }

-- | Email of Group
groEmail :: Lens' Group (Maybe Text)
groEmail = lens _groEmail (\ s a -> s{_groEmail = a})

-- | ETag of the resource.
groEtag :: Lens' Group (Maybe Text)
groEtag = lens _groEtag (\ s a -> s{_groEtag = a})

-- | Group direct members count
groDirectMembersCount :: Lens' Group (Maybe Int64)
groDirectMembersCount
  = lens _groDirectMembersCount
      (\ s a -> s{_groDirectMembersCount = a})

-- | Kind of resource this is.
groKind :: Lens' Group Text
groKind = lens _groKind (\ s a -> s{_groKind = a})

-- | List of aliases (Read-only)
groAliases :: Lens' Group [Text]
groAliases
  = lens _groAliases (\ s a -> s{_groAliases = a}) .
      _Default
      . _Coerce

-- | List of non editable aliases (Read-only)
groNonEditableAliases :: Lens' Group [Text]
groNonEditableAliases
  = lens _groNonEditableAliases
      (\ s a -> s{_groNonEditableAliases = a})
      . _Default
      . _Coerce

-- | Group name
groName :: Lens' Group (Maybe Text)
groName = lens _groName (\ s a -> s{_groName = a})

-- | Is the group created by admin (Read-only) *
groAdminCreated :: Lens' Group (Maybe Bool)
groAdminCreated
  = lens _groAdminCreated
      (\ s a -> s{_groAdminCreated = a})

-- | Unique identifier of Group (Read-only)
groId :: Lens' Group (Maybe Text)
groId = lens _groId (\ s a -> s{_groId = a})

-- | Description of the group
groDescription :: Lens' Group (Maybe Text)
groDescription
  = lens _groDescription
      (\ s a -> s{_groDescription = a})

-- | JSON response template for List Groups operation in Directory API.
--
-- /See:/ 'groups' smart constructor.
data Groups = Groups
    { _gGroups        :: !(Maybe [Maybe Group])
    , _gEtag          :: !(Maybe Text)
    , _gNextPageToken :: !(Maybe Text)
    , _gKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGroups'
--
-- * 'gEtag'
--
-- * 'gNextPageToken'
--
-- * 'gKind'
groups
    :: Groups
groups =
    Groups
    { _gGroups = Nothing
    , _gEtag = Nothing
    , _gNextPageToken = Nothing
    , _gKind = "admin#directory#groups"
    }

-- | List of group objects.
gGroups :: Lens' Groups [Maybe Group]
gGroups
  = lens _gGroups (\ s a -> s{_gGroups = a}) . _Default
      . _Coerce

-- | ETag of the resource.
gEtag :: Lens' Groups (Maybe Text)
gEtag = lens _gEtag (\ s a -> s{_gEtag = a})

-- | Token used to access next page of this result.
gNextPageToken :: Lens' Groups (Maybe Text)
gNextPageToken
  = lens _gNextPageToken
      (\ s a -> s{_gNextPageToken = a})

-- | Kind of resource this is.
gKind :: Lens' Groups Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | JSON template for Member resource in Directory API.
--
-- /See:/ 'member' smart constructor.
data Member = Member
    { _mEmail :: !(Maybe Text)
    , _mEtag  :: !(Maybe Text)
    , _mKind  :: !Text
    , _mRole  :: !(Maybe Text)
    , _mId    :: !(Maybe Text)
    , _mType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mEmail'
--
-- * 'mEtag'
--
-- * 'mKind'
--
-- * 'mRole'
--
-- * 'mId'
--
-- * 'mType'
member
    :: Member
member =
    Member
    { _mEmail = Nothing
    , _mEtag = Nothing
    , _mKind = "admin#directory#member"
    , _mRole = Nothing
    , _mId = Nothing
    , _mType = Nothing
    }

-- | Email of member (Read-only)
mEmail :: Lens' Member (Maybe Text)
mEmail = lens _mEmail (\ s a -> s{_mEmail = a})

-- | ETag of the resource.
mEtag :: Lens' Member (Maybe Text)
mEtag = lens _mEtag (\ s a -> s{_mEtag = a})

-- | Kind of resource this is.
mKind :: Lens' Member Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | Role of member
mRole :: Lens' Member (Maybe Text)
mRole = lens _mRole (\ s a -> s{_mRole = a})

-- | Unique identifier of customer member (Read-only) Unique identifier of
-- group (Read-only) Unique identifier of member (Read-only)
mId :: Lens' Member (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | Type of member (Immutable)
mType :: Lens' Member (Maybe Text)
mType = lens _mType (\ s a -> s{_mType = a})

-- | JSON response template for List Members operation in Directory API.
--
-- /See:/ 'members' smart constructor.
data Members = Members
    { _memEtag          :: !(Maybe Text)
    , _memNextPageToken :: !(Maybe Text)
    , _memKind          :: !Text
    , _memMembers       :: !(Maybe [Maybe Member])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Members' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'memEtag'
--
-- * 'memNextPageToken'
--
-- * 'memKind'
--
-- * 'memMembers'
members
    :: Members
members =
    Members
    { _memEtag = Nothing
    , _memNextPageToken = Nothing
    , _memKind = "admin#directory#members"
    , _memMembers = Nothing
    }

-- | ETag of the resource.
memEtag :: Lens' Members (Maybe Text)
memEtag = lens _memEtag (\ s a -> s{_memEtag = a})

-- | Token used to access next page of this result.
memNextPageToken :: Lens' Members (Maybe Text)
memNextPageToken
  = lens _memNextPageToken
      (\ s a -> s{_memNextPageToken = a})

-- | Kind of resource this is.
memKind :: Lens' Members Text
memKind = lens _memKind (\ s a -> s{_memKind = a})

-- | List of member objects.
memMembers :: Lens' Members [Maybe Member]
memMembers
  = lens _memMembers (\ s a -> s{_memMembers = a}) .
      _Default
      . _Coerce

-- | JSON template for Mobile Device resource in Directory API.
--
-- /See:/ 'mobileDevice' smart constructor.
data MobileDevice = MobileDevice
    { _mdEmail                          :: !(Maybe [Text])
    , _mdStatus                         :: !(Maybe Text)
    , _mdEtag                           :: !(Maybe Text)
    , _mdResourceId                     :: !(Maybe Text)
    , _mdBuildNumber                    :: !(Maybe Text)
    , _mdManagedAccountIsOnOwnerProfile :: !(Maybe Bool)
    , _mdLastSync                       :: !(Maybe UTCTime)
    , _mdOtherAccountsInfo              :: !(Maybe [Text])
    , _mdKind                           :: !Text
    , _mdAdbStatus                      :: !(Maybe Bool)
    , _mdNetworkOperator                :: !(Maybe Text)
    , _mdKernelVersion                  :: !(Maybe Text)
    , _mdOs                             :: !(Maybe Text)
    , _mdName                           :: !(Maybe [Text])
    , _mdModel                          :: !(Maybe Text)
    , _mdDeveloperOptionsStatus         :: !(Maybe Bool)
    , _mdUnknownSourcesStatus           :: !(Maybe Bool)
    , _mdMeid                           :: !(Maybe Text)
    , _mdDeviceId                       :: !(Maybe Text)
    , _mdFirstSync                      :: !(Maybe UTCTime)
    , _mdUserAgent                      :: !(Maybe Text)
    , _mdImei                           :: !(Maybe Text)
    , _mdType                           :: !(Maybe Text)
    , _mdWifiMacAddress                 :: !(Maybe Text)
    , _mdSerialNumber                   :: !(Maybe Text)
    , _mdHardwareId                     :: !(Maybe Text)
    , _mdBasebandVersion                :: !(Maybe Text)
    , _mdSupportsWorkProfile            :: !(Maybe Bool)
    , _mdDeviceCompromisedStatus        :: !(Maybe Text)
    , _mdApplications                   :: !(Maybe [MobileDeviceItemApplications])
    , _mdDefaultLanguage                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdEmail'
--
-- * 'mdStatus'
--
-- * 'mdEtag'
--
-- * 'mdResourceId'
--
-- * 'mdBuildNumber'
--
-- * 'mdManagedAccountIsOnOwnerProfile'
--
-- * 'mdLastSync'
--
-- * 'mdOtherAccountsInfo'
--
-- * 'mdKind'
--
-- * 'mdAdbStatus'
--
-- * 'mdNetworkOperator'
--
-- * 'mdKernelVersion'
--
-- * 'mdOs'
--
-- * 'mdName'
--
-- * 'mdModel'
--
-- * 'mdDeveloperOptionsStatus'
--
-- * 'mdUnknownSourcesStatus'
--
-- * 'mdMeid'
--
-- * 'mdDeviceId'
--
-- * 'mdFirstSync'
--
-- * 'mdUserAgent'
--
-- * 'mdImei'
--
-- * 'mdType'
--
-- * 'mdWifiMacAddress'
--
-- * 'mdSerialNumber'
--
-- * 'mdHardwareId'
--
-- * 'mdBasebandVersion'
--
-- * 'mdSupportsWorkProfile'
--
-- * 'mdDeviceCompromisedStatus'
--
-- * 'mdApplications'
--
-- * 'mdDefaultLanguage'
mobileDevice
    :: MobileDevice
mobileDevice =
    MobileDevice
    { _mdEmail = Nothing
    , _mdStatus = Nothing
    , _mdEtag = Nothing
    , _mdResourceId = Nothing
    , _mdBuildNumber = Nothing
    , _mdManagedAccountIsOnOwnerProfile = Nothing
    , _mdLastSync = Nothing
    , _mdOtherAccountsInfo = Nothing
    , _mdKind = "admin#directory#mobiledevice"
    , _mdAdbStatus = Nothing
    , _mdNetworkOperator = Nothing
    , _mdKernelVersion = Nothing
    , _mdOs = Nothing
    , _mdName = Nothing
    , _mdModel = Nothing
    , _mdDeveloperOptionsStatus = Nothing
    , _mdUnknownSourcesStatus = Nothing
    , _mdMeid = Nothing
    , _mdDeviceId = Nothing
    , _mdFirstSync = Nothing
    , _mdUserAgent = Nothing
    , _mdImei = Nothing
    , _mdType = Nothing
    , _mdWifiMacAddress = Nothing
    , _mdSerialNumber = Nothing
    , _mdHardwareId = Nothing
    , _mdBasebandVersion = Nothing
    , _mdSupportsWorkProfile = Nothing
    , _mdDeviceCompromisedStatus = Nothing
    , _mdApplications = Nothing
    , _mdDefaultLanguage = Nothing
    }

-- | List of owner user\'s email addresses (Read-only)
mdEmail :: Lens' MobileDevice [Text]
mdEmail
  = lens _mdEmail (\ s a -> s{_mdEmail = a}) . _Default
      . _Coerce

-- | Status of the device (Read-only)
mdStatus :: Lens' MobileDevice (Maybe Text)
mdStatus = lens _mdStatus (\ s a -> s{_mdStatus = a})

-- | ETag of the resource.
mdEtag :: Lens' MobileDevice (Maybe Text)
mdEtag = lens _mdEtag (\ s a -> s{_mdEtag = a})

-- | Unique identifier of Mobile Device (Read-only)
mdResourceId :: Lens' MobileDevice (Maybe Text)
mdResourceId
  = lens _mdResourceId (\ s a -> s{_mdResourceId = a})

-- | Mobile Device Build number (Read-only)
mdBuildNumber :: Lens' MobileDevice (Maybe Text)
mdBuildNumber
  = lens _mdBuildNumber
      (\ s a -> s{_mdBuildNumber = a})

-- | Boolean indicating if this account is on owner\/primary profile or not
-- (Read-only)
mdManagedAccountIsOnOwnerProfile :: Lens' MobileDevice (Maybe Bool)
mdManagedAccountIsOnOwnerProfile
  = lens _mdManagedAccountIsOnOwnerProfile
      (\ s a -> s{_mdManagedAccountIsOnOwnerProfile = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
mdLastSync :: Lens' MobileDevice (Maybe UTCTime)
mdLastSync
  = lens _mdLastSync (\ s a -> s{_mdLastSync = a})

-- | List of accounts added on device (Read-only)
mdOtherAccountsInfo :: Lens' MobileDevice [Text]
mdOtherAccountsInfo
  = lens _mdOtherAccountsInfo
      (\ s a -> s{_mdOtherAccountsInfo = a})
      . _Default
      . _Coerce

-- | Kind of resource this is.
mdKind :: Lens' MobileDevice Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | Adb (USB debugging) enabled or disabled on device (Read-only)
mdAdbStatus :: Lens' MobileDevice (Maybe Bool)
mdAdbStatus
  = lens _mdAdbStatus (\ s a -> s{_mdAdbStatus = a})

-- | Mobile Device mobile or network operator (if available) (Read-only)
mdNetworkOperator :: Lens' MobileDevice (Maybe Text)
mdNetworkOperator
  = lens _mdNetworkOperator
      (\ s a -> s{_mdNetworkOperator = a})

-- | Mobile Device Kernel version (Read-only)
mdKernelVersion :: Lens' MobileDevice (Maybe Text)
mdKernelVersion
  = lens _mdKernelVersion
      (\ s a -> s{_mdKernelVersion = a})

-- | Name of the mobile operating system
mdOs :: Lens' MobileDevice (Maybe Text)
mdOs = lens _mdOs (\ s a -> s{_mdOs = a})

-- | List of owner user\'s names (Read-only)
mdName :: Lens' MobileDevice [Text]
mdName
  = lens _mdName (\ s a -> s{_mdName = a}) . _Default .
      _Coerce

-- | Name of the model of the device
mdModel :: Lens' MobileDevice (Maybe Text)
mdModel = lens _mdModel (\ s a -> s{_mdModel = a})

-- | Developer options enabled or disabled on device (Read-only)
mdDeveloperOptionsStatus :: Lens' MobileDevice (Maybe Bool)
mdDeveloperOptionsStatus
  = lens _mdDeveloperOptionsStatus
      (\ s a -> s{_mdDeveloperOptionsStatus = a})

-- | Unknown sources enabled or disabled on device (Read-only)
mdUnknownSourcesStatus :: Lens' MobileDevice (Maybe Bool)
mdUnknownSourcesStatus
  = lens _mdUnknownSourcesStatus
      (\ s a -> s{_mdUnknownSourcesStatus = a})

-- | Mobile Device MEID number (Read-only)
mdMeid :: Lens' MobileDevice (Maybe Text)
mdMeid = lens _mdMeid (\ s a -> s{_mdMeid = a})

-- | Mobile Device serial number (Read-only)
mdDeviceId :: Lens' MobileDevice (Maybe Text)
mdDeviceId
  = lens _mdDeviceId (\ s a -> s{_mdDeviceId = a})

-- | Date and time the device was first synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
mdFirstSync :: Lens' MobileDevice (Maybe UTCTime)
mdFirstSync
  = lens _mdFirstSync (\ s a -> s{_mdFirstSync = a})

-- | Mobile Device user agent
mdUserAgent :: Lens' MobileDevice (Maybe Text)
mdUserAgent
  = lens _mdUserAgent (\ s a -> s{_mdUserAgent = a})

-- | Mobile Device IMEI number (Read-only)
mdImei :: Lens' MobileDevice (Maybe Text)
mdImei = lens _mdImei (\ s a -> s{_mdImei = a})

-- | The type of device (Read-only)
mdType :: Lens' MobileDevice (Maybe Text)
mdType = lens _mdType (\ s a -> s{_mdType = a})

-- | Mobile Device WiFi MAC address (Read-only)
mdWifiMacAddress :: Lens' MobileDevice (Maybe Text)
mdWifiMacAddress
  = lens _mdWifiMacAddress
      (\ s a -> s{_mdWifiMacAddress = a})

-- | Mobile Device SSN or Serial Number (Read-only)
mdSerialNumber :: Lens' MobileDevice (Maybe Text)
mdSerialNumber
  = lens _mdSerialNumber
      (\ s a -> s{_mdSerialNumber = a})

-- | Mobile Device Hardware Id (Read-only)
mdHardwareId :: Lens' MobileDevice (Maybe Text)
mdHardwareId
  = lens _mdHardwareId (\ s a -> s{_mdHardwareId = a})

-- | Mobile Device Baseband version (Read-only)
mdBasebandVersion :: Lens' MobileDevice (Maybe Text)
mdBasebandVersion
  = lens _mdBasebandVersion
      (\ s a -> s{_mdBasebandVersion = a})

-- | Work profile supported on device (Read-only)
mdSupportsWorkProfile :: Lens' MobileDevice (Maybe Bool)
mdSupportsWorkProfile
  = lens _mdSupportsWorkProfile
      (\ s a -> s{_mdSupportsWorkProfile = a})

-- | Mobile Device compromised status (Read-only)
mdDeviceCompromisedStatus :: Lens' MobileDevice (Maybe Text)
mdDeviceCompromisedStatus
  = lens _mdDeviceCompromisedStatus
      (\ s a -> s{_mdDeviceCompromisedStatus = a})

-- | List of applications installed on Mobile Device
mdApplications :: Lens' MobileDevice [MobileDeviceItemApplications]
mdApplications
  = lens _mdApplications
      (\ s a -> s{_mdApplications = a})
      . _Default
      . _Coerce

-- | The default locale used on the Mobile Device (Read-only)
mdDefaultLanguage :: Lens' MobileDevice (Maybe Text)
mdDefaultLanguage
  = lens _mdDefaultLanguage
      (\ s a -> s{_mdDefaultLanguage = a})

-- | JSON request template for firing commands on Mobile Device in Directory
-- Devices API.
--
-- /See:/ 'mobileDeviceAction' smart constructor.
newtype MobileDeviceAction = MobileDeviceAction
    { _mdaAction :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDeviceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaAction'
mobileDeviceAction
    :: MobileDeviceAction
mobileDeviceAction =
    MobileDeviceAction
    { _mdaAction = Nothing
    }

-- | Action to be taken on the Mobile Device
mdaAction :: Lens' MobileDeviceAction (Maybe Text)
mdaAction
  = lens _mdaAction (\ s a -> s{_mdaAction = a})

--
-- /See:/ 'mobileDeviceItemApplications' smart constructor.
data MobileDeviceItemApplications = MobileDeviceItemApplications
    { _mdiaVersionCode :: !(Maybe Int32)
    , _mdiaVersionName :: !(Maybe Text)
    , _mdiaPackageName :: !(Maybe Text)
    , _mdiaDisplayName :: !(Maybe Text)
    , _mdiaPermission  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDeviceItemApplications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdiaVersionCode'
--
-- * 'mdiaVersionName'
--
-- * 'mdiaPackageName'
--
-- * 'mdiaDisplayName'
--
-- * 'mdiaPermission'
mobileDeviceItemApplications
    :: MobileDeviceItemApplications
mobileDeviceItemApplications =
    MobileDeviceItemApplications
    { _mdiaVersionCode = Nothing
    , _mdiaVersionName = Nothing
    , _mdiaPackageName = Nothing
    , _mdiaDisplayName = Nothing
    , _mdiaPermission = Nothing
    }

-- | Version code of application
mdiaVersionCode :: Lens' MobileDeviceItemApplications (Maybe Int32)
mdiaVersionCode
  = lens _mdiaVersionCode
      (\ s a -> s{_mdiaVersionCode = a})

-- | Version name of application
mdiaVersionName :: Lens' MobileDeviceItemApplications (Maybe Text)
mdiaVersionName
  = lens _mdiaVersionName
      (\ s a -> s{_mdiaVersionName = a})

-- | Package name of application
mdiaPackageName :: Lens' MobileDeviceItemApplications (Maybe Text)
mdiaPackageName
  = lens _mdiaPackageName
      (\ s a -> s{_mdiaPackageName = a})

-- | Display name of application
mdiaDisplayName :: Lens' MobileDeviceItemApplications (Maybe Text)
mdiaDisplayName
  = lens _mdiaDisplayName
      (\ s a -> s{_mdiaDisplayName = a})

-- | List of Permissions for application
mdiaPermission :: Lens' MobileDeviceItemApplications [Text]
mdiaPermission
  = lens _mdiaPermission
      (\ s a -> s{_mdiaPermission = a})
      . _Default
      . _Coerce

-- | JSON response template for List Mobile Devices operation in Directory
-- API.
--
-- /See:/ 'mobileDevices' smart constructor.
data MobileDevices = MobileDevices
    { _mdsEtag          :: !(Maybe Text)
    , _mdsNextPageToken :: !(Maybe Text)
    , _mdsKind          :: !Text
    , _mdsMobiledevices :: !(Maybe [Maybe MobileDevice])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsEtag'
--
-- * 'mdsNextPageToken'
--
-- * 'mdsKind'
--
-- * 'mdsMobiledevices'
mobileDevices
    :: MobileDevices
mobileDevices =
    MobileDevices
    { _mdsEtag = Nothing
    , _mdsNextPageToken = Nothing
    , _mdsKind = "admin#directory#mobiledevices"
    , _mdsMobiledevices = Nothing
    }

-- | ETag of the resource.
mdsEtag :: Lens' MobileDevices (Maybe Text)
mdsEtag = lens _mdsEtag (\ s a -> s{_mdsEtag = a})

-- | Token used to access next page of this result.
mdsNextPageToken :: Lens' MobileDevices (Maybe Text)
mdsNextPageToken
  = lens _mdsNextPageToken
      (\ s a -> s{_mdsNextPageToken = a})

-- | Kind of resource this is.
mdsKind :: Lens' MobileDevices Text
mdsKind = lens _mdsKind (\ s a -> s{_mdsKind = a})

-- | List of Mobile Device objects.
mdsMobiledevices :: Lens' MobileDevices [Maybe MobileDevice]
mdsMobiledevices
  = lens _mdsMobiledevices
      (\ s a -> s{_mdsMobiledevices = a})
      . _Default
      . _Coerce

-- | Template for a notification resource.
--
-- /See:/ 'notification' smart constructor.
data Notification = Notification
    { _nSubject        :: !(Maybe Text)
    , _nEtag           :: !(Maybe Text)
    , _nKind           :: !Text
    , _nBody           :: !(Maybe Text)
    , _nFromAddress    :: !(Maybe Text)
    , _nIsUnread       :: !(Maybe Bool)
    , _nNotificationId :: !(Maybe Text)
    , _nSendTime       :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nSubject'
--
-- * 'nEtag'
--
-- * 'nKind'
--
-- * 'nBody'
--
-- * 'nFromAddress'
--
-- * 'nIsUnread'
--
-- * 'nNotificationId'
--
-- * 'nSendTime'
notification
    :: Notification
notification =
    Notification
    { _nSubject = Nothing
    , _nEtag = Nothing
    , _nKind = "admin#directory#notification"
    , _nBody = Nothing
    , _nFromAddress = Nothing
    , _nIsUnread = Nothing
    , _nNotificationId = Nothing
    , _nSendTime = Nothing
    }

-- | Subject of the notification (Read-only)
nSubject :: Lens' Notification (Maybe Text)
nSubject = lens _nSubject (\ s a -> s{_nSubject = a})

-- | ETag of the resource.
nEtag :: Lens' Notification (Maybe Text)
nEtag = lens _nEtag (\ s a -> s{_nEtag = a})

-- | The type of the resource.
nKind :: Lens' Notification Text
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | Body of the notification (Read-only)
nBody :: Lens' Notification (Maybe Text)
nBody = lens _nBody (\ s a -> s{_nBody = a})

-- | Address from which the notification is received (Read-only)
nFromAddress :: Lens' Notification (Maybe Text)
nFromAddress
  = lens _nFromAddress (\ s a -> s{_nFromAddress = a})

-- | Boolean indicating whether the notification is unread or not.
nIsUnread :: Lens' Notification (Maybe Bool)
nIsUnread
  = lens _nIsUnread (\ s a -> s{_nIsUnread = a})

nNotificationId :: Lens' Notification (Maybe Text)
nNotificationId
  = lens _nNotificationId
      (\ s a -> s{_nNotificationId = a})

-- | Time at which notification was sent (Read-only)
nSendTime :: Lens' Notification (Maybe UTCTime)
nSendTime
  = lens _nSendTime (\ s a -> s{_nSendTime = a})

-- | Template for notifications list response.
--
-- /See:/ 'notifications' smart constructor.
data Notifications = Notifications
    { _notEtag                     :: !(Maybe Text)
    , _notNextPageToken            :: !(Maybe Text)
    , _notKind                     :: !Text
    , _notItems                    :: !(Maybe [Maybe Notification])
    , _notUnreadNotificationsCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Notifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'notEtag'
--
-- * 'notNextPageToken'
--
-- * 'notKind'
--
-- * 'notItems'
--
-- * 'notUnreadNotificationsCount'
notifications
    :: Notifications
notifications =
    Notifications
    { _notEtag = Nothing
    , _notNextPageToken = Nothing
    , _notKind = "admin#directory#notifications"
    , _notItems = Nothing
    , _notUnreadNotificationsCount = Nothing
    }

-- | ETag of the resource.
notEtag :: Lens' Notifications (Maybe Text)
notEtag = lens _notEtag (\ s a -> s{_notEtag = a})

-- | Token for fetching the next page of notifications.
notNextPageToken :: Lens' Notifications (Maybe Text)
notNextPageToken
  = lens _notNextPageToken
      (\ s a -> s{_notNextPageToken = a})

-- | The type of the resource.
notKind :: Lens' Notifications Text
notKind = lens _notKind (\ s a -> s{_notKind = a})

-- | List of notifications in this page.
notItems :: Lens' Notifications [Maybe Notification]
notItems
  = lens _notItems (\ s a -> s{_notItems = a}) .
      _Default
      . _Coerce

-- | Number of unread notification for the domain.
notUnreadNotificationsCount :: Lens' Notifications (Maybe Int32)
notUnreadNotificationsCount
  = lens _notUnreadNotificationsCount
      (\ s a -> s{_notUnreadNotificationsCount = a})

-- | JSON template for Org Unit resource in Directory API.
--
-- /See:/ 'orgUnit' smart constructor.
data OrgUnit = OrgUnit
    { _oEtag              :: !(Maybe Text)
    , _oParentOrgUnitPath :: !(Maybe Text)
    , _oKind              :: !Text
    , _oOrgUnitPath       :: !(Maybe Text)
    , _oName              :: !(Maybe Text)
    , _oBlockInheritance  :: !(Maybe Bool)
    , _oParentOrgUnitId   :: !(Maybe Text)
    , _oDescription       :: !(Maybe Text)
    , _oOrgUnitId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oEtag'
--
-- * 'oParentOrgUnitPath'
--
-- * 'oKind'
--
-- * 'oOrgUnitPath'
--
-- * 'oName'
--
-- * 'oBlockInheritance'
--
-- * 'oParentOrgUnitId'
--
-- * 'oDescription'
--
-- * 'oOrgUnitId'
orgUnit
    :: OrgUnit
orgUnit =
    OrgUnit
    { _oEtag = Nothing
    , _oParentOrgUnitPath = Nothing
    , _oKind = "admin#directory#orgUnit"
    , _oOrgUnitPath = Nothing
    , _oName = Nothing
    , _oBlockInheritance = Nothing
    , _oParentOrgUnitId = Nothing
    , _oDescription = Nothing
    , _oOrgUnitId = Nothing
    }

-- | ETag of the resource.
oEtag :: Lens' OrgUnit (Maybe Text)
oEtag = lens _oEtag (\ s a -> s{_oEtag = a})

-- | Path of parent OrgUnit
oParentOrgUnitPath :: Lens' OrgUnit (Maybe Text)
oParentOrgUnitPath
  = lens _oParentOrgUnitPath
      (\ s a -> s{_oParentOrgUnitPath = a})

-- | Kind of resource this is.
oKind :: Lens' OrgUnit Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | Path of OrgUnit
oOrgUnitPath :: Lens' OrgUnit (Maybe Text)
oOrgUnitPath
  = lens _oOrgUnitPath (\ s a -> s{_oOrgUnitPath = a})

-- | Name of OrgUnit
oName :: Lens' OrgUnit (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Should block inheritance
oBlockInheritance :: Lens' OrgUnit (Maybe Bool)
oBlockInheritance
  = lens _oBlockInheritance
      (\ s a -> s{_oBlockInheritance = a})

-- | Id of parent OrgUnit
oParentOrgUnitId :: Lens' OrgUnit (Maybe Text)
oParentOrgUnitId
  = lens _oParentOrgUnitId
      (\ s a -> s{_oParentOrgUnitId = a})

-- | Description of OrgUnit
oDescription :: Lens' OrgUnit (Maybe Text)
oDescription
  = lens _oDescription (\ s a -> s{_oDescription = a})

-- | Id of OrgUnit
oOrgUnitId :: Lens' OrgUnit (Maybe Text)
oOrgUnitId
  = lens _oOrgUnitId (\ s a -> s{_oOrgUnitId = a})

-- | JSON response template for List Organization Units operation in
-- Directory API.
--
-- /See:/ 'orgUnits' smart constructor.
data OrgUnits = OrgUnits
    { _ouEtag              :: !(Maybe Text)
    , _ouKind              :: !Text
    , _ouOrganizationUnits :: !(Maybe [Maybe OrgUnit])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouEtag'
--
-- * 'ouKind'
--
-- * 'ouOrganizationUnits'
orgUnits
    :: OrgUnits
orgUnits =
    OrgUnits
    { _ouEtag = Nothing
    , _ouKind = "admin#directory#orgUnits"
    , _ouOrganizationUnits = Nothing
    }

-- | ETag of the resource.
ouEtag :: Lens' OrgUnits (Maybe Text)
ouEtag = lens _ouEtag (\ s a -> s{_ouEtag = a})

-- | Kind of resource this is.
ouKind :: Lens' OrgUnits Text
ouKind = lens _ouKind (\ s a -> s{_ouKind = a})

-- | List of user objects.
ouOrganizationUnits :: Lens' OrgUnits [Maybe OrgUnit]
ouOrganizationUnits
  = lens _ouOrganizationUnits
      (\ s a -> s{_ouOrganizationUnits = a})
      . _Default
      . _Coerce

-- | JSON template for Schema resource in Directory API.
--
-- /See:/ 'schema' smart constructor.
data Schema = Schema
    { _schEtag       :: !(Maybe Text)
    , _schKind       :: !Text
    , _schSchemaName :: !(Maybe Text)
    , _schSchemaId   :: !(Maybe Text)
    , _schFields     :: !(Maybe [Maybe SchemaFieldSpec])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Schema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'schEtag'
--
-- * 'schKind'
--
-- * 'schSchemaName'
--
-- * 'schSchemaId'
--
-- * 'schFields'
schema
    :: Schema
schema =
    Schema
    { _schEtag = Nothing
    , _schKind = "admin#directory#schema"
    , _schSchemaName = Nothing
    , _schSchemaId = Nothing
    , _schFields = Nothing
    }

-- | ETag of the resource.
schEtag :: Lens' Schema (Maybe Text)
schEtag = lens _schEtag (\ s a -> s{_schEtag = a})

-- | Kind of resource this is.
schKind :: Lens' Schema Text
schKind = lens _schKind (\ s a -> s{_schKind = a})

-- | Schema name
schSchemaName :: Lens' Schema (Maybe Text)
schSchemaName
  = lens _schSchemaName
      (\ s a -> s{_schSchemaName = a})

-- | Unique identifier of Schema (Read-only)
schSchemaId :: Lens' Schema (Maybe Text)
schSchemaId
  = lens _schSchemaId (\ s a -> s{_schSchemaId = a})

-- | Fields of Schema
schFields :: Lens' Schema [Maybe SchemaFieldSpec]
schFields
  = lens _schFields (\ s a -> s{_schFields = a}) .
      _Default
      . _Coerce

-- | JSON template for FieldSpec resource for Schemas in Directory API.
--
-- /See:/ 'schemaFieldSpec' smart constructor.
data SchemaFieldSpec = SchemaFieldSpec
    { _sfsEtag                :: !(Maybe Text)
    , _sfsKind                :: !Text
    , _sfsNumericIndexingSpec :: !(Maybe SchemaFieldSpecNumericIndexingSpec)
    , _sfsReadAccessType      :: !Text
    , _sfsFieldId             :: !(Maybe Text)
    , _sfsIndexed             :: !Bool
    , _sfsFieldType           :: !(Maybe Text)
    , _sfsFieldName           :: !(Maybe Text)
    , _sfsMultiValued         :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemaFieldSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfsEtag'
--
-- * 'sfsKind'
--
-- * 'sfsNumericIndexingSpec'
--
-- * 'sfsReadAccessType'
--
-- * 'sfsFieldId'
--
-- * 'sfsIndexed'
--
-- * 'sfsFieldType'
--
-- * 'sfsFieldName'
--
-- * 'sfsMultiValued'
schemaFieldSpec
    :: SchemaFieldSpec
schemaFieldSpec =
    SchemaFieldSpec
    { _sfsEtag = Nothing
    , _sfsKind = "admin#directory#schema#fieldspec"
    , _sfsNumericIndexingSpec = Nothing
    , _sfsReadAccessType = "ALL_DOMAIN_USERS"
    , _sfsFieldId = Nothing
    , _sfsIndexed = True
    , _sfsFieldType = Nothing
    , _sfsFieldName = Nothing
    , _sfsMultiValued = Nothing
    }

-- | ETag of the resource.
sfsEtag :: Lens' SchemaFieldSpec (Maybe Text)
sfsEtag = lens _sfsEtag (\ s a -> s{_sfsEtag = a})

-- | Kind of resource this is.
sfsKind :: Lens' SchemaFieldSpec Text
sfsKind = lens _sfsKind (\ s a -> s{_sfsKind = a})

-- | Indexing spec for a numeric field. By default, only exact match queries
-- will be supported for numeric fields. Setting the numericIndexingSpec
-- allows range queries to be supported.
sfsNumericIndexingSpec :: Lens' SchemaFieldSpec (Maybe SchemaFieldSpecNumericIndexingSpec)
sfsNumericIndexingSpec
  = lens _sfsNumericIndexingSpec
      (\ s a -> s{_sfsNumericIndexingSpec = a})

-- | Read ACLs on the field specifying who can view values of this field.
-- Valid values are \"ALL_DOMAIN_USERS\" and \"ADMINS_AND_SELF\".
sfsReadAccessType :: Lens' SchemaFieldSpec Text
sfsReadAccessType
  = lens _sfsReadAccessType
      (\ s a -> s{_sfsReadAccessType = a})

-- | Unique identifier of Field (Read-only)
sfsFieldId :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldId
  = lens _sfsFieldId (\ s a -> s{_sfsFieldId = a})

-- | Boolean specifying whether the field is indexed or not.
sfsIndexed :: Lens' SchemaFieldSpec Bool
sfsIndexed
  = lens _sfsIndexed (\ s a -> s{_sfsIndexed = a})

-- | Type of the field.
sfsFieldType :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldType
  = lens _sfsFieldType (\ s a -> s{_sfsFieldType = a})

-- | Name of the field.
sfsFieldName :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldName
  = lens _sfsFieldName (\ s a -> s{_sfsFieldName = a})

-- | Boolean specifying whether this is a multi-valued field or not.
sfsMultiValued :: Lens' SchemaFieldSpec (Maybe Bool)
sfsMultiValued
  = lens _sfsMultiValued
      (\ s a -> s{_sfsMultiValued = a})

-- | Indexing spec for a numeric field. By default, only exact match queries
-- will be supported for numeric fields. Setting the numericIndexingSpec
-- allows range queries to be supported.
--
-- /See:/ 'schemaFieldSpecNumericIndexingSpec' smart constructor.
data SchemaFieldSpecNumericIndexingSpec = SchemaFieldSpecNumericIndexingSpec
    { _sfsnisMaxValue :: !(Maybe Double)
    , _sfsnisMinValue :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemaFieldSpecNumericIndexingSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfsnisMaxValue'
--
-- * 'sfsnisMinValue'
schemaFieldSpecNumericIndexingSpec
    :: SchemaFieldSpecNumericIndexingSpec
schemaFieldSpecNumericIndexingSpec =
    SchemaFieldSpecNumericIndexingSpec
    { _sfsnisMaxValue = Nothing
    , _sfsnisMinValue = Nothing
    }

-- | Maximum value of this field. This is meant to be indicative rather than
-- enforced. Values outside this range will still be indexed, but search
-- may not be as performant.
sfsnisMaxValue :: Lens' SchemaFieldSpecNumericIndexingSpec (Maybe Double)
sfsnisMaxValue
  = lens _sfsnisMaxValue
      (\ s a -> s{_sfsnisMaxValue = a})

-- | Minimum value of this field. This is meant to be indicative rather than
-- enforced. Values outside this range will still be indexed, but search
-- may not be as performant.
sfsnisMinValue :: Lens' SchemaFieldSpecNumericIndexingSpec (Maybe Double)
sfsnisMinValue
  = lens _sfsnisMinValue
      (\ s a -> s{_sfsnisMinValue = a})

-- | JSON response template for List Schema operation in Directory API.
--
-- /See:/ 'schemas' smart constructor.
data Schemas = Schemas
    { _sEtag    :: !(Maybe Text)
    , _sSchemas :: !(Maybe [Maybe Schema])
    , _sKind    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Schemas' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sSchemas'
--
-- * 'sKind'
schemas
    :: Schemas
schemas =
    Schemas
    { _sEtag = Nothing
    , _sSchemas = Nothing
    , _sKind = "admin#directory#schemas"
    }

-- | ETag of the resource.
sEtag :: Lens' Schemas (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

-- | List of UserSchema objects.
sSchemas :: Lens' Schemas [Maybe Schema]
sSchemas
  = lens _sSchemas (\ s a -> s{_sSchemas = a}) .
      _Default
      . _Coerce

-- | Kind of resource this is.
sKind :: Lens' Schemas Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | JSON template for token resource in Directory API.
--
-- /See:/ 'token' smart constructor.
data Token = Token
    { _tokClientId    :: !(Maybe Text)
    , _tokEtag        :: !(Maybe Text)
    , _tokDisplayText :: !(Maybe Text)
    , _tokKind        :: !Text
    , _tokScopes      :: !(Maybe [Text])
    , _tokNativeApp   :: !(Maybe Bool)
    , _tokAnonymous   :: !(Maybe Bool)
    , _tokUserKey     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Token' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tokClientId'
--
-- * 'tokEtag'
--
-- * 'tokDisplayText'
--
-- * 'tokKind'
--
-- * 'tokScopes'
--
-- * 'tokNativeApp'
--
-- * 'tokAnonymous'
--
-- * 'tokUserKey'
token
    :: Token
token =
    Token
    { _tokClientId = Nothing
    , _tokEtag = Nothing
    , _tokDisplayText = Nothing
    , _tokKind = "admin#directory#token"
    , _tokScopes = Nothing
    , _tokNativeApp = Nothing
    , _tokAnonymous = Nothing
    , _tokUserKey = Nothing
    }

-- | The Client ID of the application the token is issued to.
tokClientId :: Lens' Token (Maybe Text)
tokClientId
  = lens _tokClientId (\ s a -> s{_tokClientId = a})

-- | ETag of the resource.
tokEtag :: Lens' Token (Maybe Text)
tokEtag = lens _tokEtag (\ s a -> s{_tokEtag = a})

-- | The displayable name of the application the token is issued to.
tokDisplayText :: Lens' Token (Maybe Text)
tokDisplayText
  = lens _tokDisplayText
      (\ s a -> s{_tokDisplayText = a})

-- | The type of the API resource. This is always admin#directory#token.
tokKind :: Lens' Token Text
tokKind = lens _tokKind (\ s a -> s{_tokKind = a})

-- | A list of authorization scopes the application is granted.
tokScopes :: Lens' Token [Text]
tokScopes
  = lens _tokScopes (\ s a -> s{_tokScopes = a}) .
      _Default
      . _Coerce

-- | Whether the token is issued to an installed application. The value is
-- true if the application is installed to a desktop or mobile device.
tokNativeApp :: Lens' Token (Maybe Bool)
tokNativeApp
  = lens _tokNativeApp (\ s a -> s{_tokNativeApp = a})

-- | Whether the application is registered with Google. The value is true if
-- the application has an anonymous Client ID.
tokAnonymous :: Lens' Token (Maybe Bool)
tokAnonymous
  = lens _tokAnonymous (\ s a -> s{_tokAnonymous = a})

-- | The unique ID of the user that issued the token.
tokUserKey :: Lens' Token (Maybe Text)
tokUserKey
  = lens _tokUserKey (\ s a -> s{_tokUserKey = a})

-- | JSON response template for List tokens operation in Directory API.
--
-- /See:/ 'tokens' smart constructor.
data Tokens = Tokens
    { _tEtag  :: !(Maybe Text)
    , _tKind  :: !Text
    , _tItems :: !(Maybe [Maybe Token])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tokens' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tEtag'
--
-- * 'tKind'
--
-- * 'tItems'
tokens
    :: Tokens
tokens =
    Tokens
    { _tEtag = Nothing
    , _tKind = "admin#directory#tokenList"
    , _tItems = Nothing
    }

-- | ETag of the resource.
tEtag :: Lens' Tokens (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | The type of the API resource. This is always admin#directory#tokenList.
tKind :: Lens' Tokens Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | A list of Token resources.
tItems :: Lens' Tokens [Maybe Token]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

-- | JSON template for User object in Directory API.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _useCreationTime               :: !(Maybe UTCTime)
    , _useLastLoginTime              :: !(Maybe UTCTime)
    , _useThumbnailPhotoEtag         :: !(Maybe Text)
    , _useEtag                       :: !(Maybe Text)
    , _useIpWhitelisted              :: !(Maybe Bool)
    , _useRelations                  :: !(Maybe (Either Text Int64))
    , _useHashFunction               :: !(Maybe Text)
    , _useKind                       :: !Text
    , _useChangePasswordAtNextLogin  :: !(Maybe Bool)
    , _useWebsites                   :: !(Maybe (Either Text Int64))
    , _useAddresses                  :: !(Maybe (Either Text Int64))
    , _useAliases                    :: !(Maybe [Text])
    , _useThumbnailPhotoUrl          :: !(Maybe Text)
    , _useExternalIds                :: !(Maybe (Either Text Int64))
    , _useSuspended                  :: !(Maybe Bool)
    , _useAgreedToTerms              :: !(Maybe Bool)
    , _useDeletionTime               :: !(Maybe UTCTime)
    , _useNonEditableAliases         :: !(Maybe [Text])
    , _useOrgUnitPath                :: !(Maybe Text)
    , _useCustomerId                 :: !(Maybe Text)
    , _useIncludeInGlobalAddressList :: !(Maybe Bool)
    , _usePhones                     :: !(Maybe (Either Text Int64))
    , _useName                       :: !(Maybe (Maybe UserName))
    , _usePassword                   :: !(Maybe Text)
    , _useEmails                     :: !(Maybe (Either Text Int64))
    , _useIms                        :: !(Maybe (Either Text Int64))
    , _useIsAdmin                    :: !(Maybe Bool)
    , _useId                         :: !(Maybe Text)
    , _useOrganizations              :: !(Maybe (Either Text Int64))
    , _usePrimaryEmail               :: !(Maybe Text)
    , _useNotes                      :: !(Maybe (Either Text Int64))
    , _useIsDelegatedAdmin           :: !(Maybe Bool)
    , _useIsMailboxSetup             :: !(Maybe Bool)
    , _useCustomSchemas              :: !(Maybe UserCustomSchemas)
    , _useSuspensionReason           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'useCreationTime'
--
-- * 'useLastLoginTime'
--
-- * 'useThumbnailPhotoEtag'
--
-- * 'useEtag'
--
-- * 'useIpWhitelisted'
--
-- * 'useRelations'
--
-- * 'useHashFunction'
--
-- * 'useKind'
--
-- * 'useChangePasswordAtNextLogin'
--
-- * 'useWebsites'
--
-- * 'useAddresses'
--
-- * 'useAliases'
--
-- * 'useThumbnailPhotoUrl'
--
-- * 'useExternalIds'
--
-- * 'useSuspended'
--
-- * 'useAgreedToTerms'
--
-- * 'useDeletionTime'
--
-- * 'useNonEditableAliases'
--
-- * 'useOrgUnitPath'
--
-- * 'useCustomerId'
--
-- * 'useIncludeInGlobalAddressList'
--
-- * 'usePhones'
--
-- * 'useName'
--
-- * 'usePassword'
--
-- * 'useEmails'
--
-- * 'useIms'
--
-- * 'useIsAdmin'
--
-- * 'useId'
--
-- * 'useOrganizations'
--
-- * 'usePrimaryEmail'
--
-- * 'useNotes'
--
-- * 'useIsDelegatedAdmin'
--
-- * 'useIsMailboxSetup'
--
-- * 'useCustomSchemas'
--
-- * 'useSuspensionReason'
user
    :: User
user =
    User
    { _useCreationTime = Nothing
    , _useLastLoginTime = Nothing
    , _useThumbnailPhotoEtag = Nothing
    , _useEtag = Nothing
    , _useIpWhitelisted = Nothing
    , _useRelations = Nothing
    , _useHashFunction = Nothing
    , _useKind = "admin#directory#user"
    , _useChangePasswordAtNextLogin = Nothing
    , _useWebsites = Nothing
    , _useAddresses = Nothing
    , _useAliases = Nothing
    , _useThumbnailPhotoUrl = Nothing
    , _useExternalIds = Nothing
    , _useSuspended = Nothing
    , _useAgreedToTerms = Nothing
    , _useDeletionTime = Nothing
    , _useNonEditableAliases = Nothing
    , _useOrgUnitPath = Nothing
    , _useCustomerId = Nothing
    , _useIncludeInGlobalAddressList = Nothing
    , _usePhones = Nothing
    , _useName = Nothing
    , _usePassword = Nothing
    , _useEmails = Nothing
    , _useIms = Nothing
    , _useIsAdmin = Nothing
    , _useId = Nothing
    , _useOrganizations = Nothing
    , _usePrimaryEmail = Nothing
    , _useNotes = Nothing
    , _useIsDelegatedAdmin = Nothing
    , _useIsMailboxSetup = Nothing
    , _useCustomSchemas = Nothing
    , _useSuspensionReason = Nothing
    }

-- | User\'s Google account creation time. (Read-only)
useCreationTime :: Lens' User (Maybe UTCTime)
useCreationTime
  = lens _useCreationTime
      (\ s a -> s{_useCreationTime = a})

-- | User\'s last login time. (Read-only)
useLastLoginTime :: Lens' User (Maybe UTCTime)
useLastLoginTime
  = lens _useLastLoginTime
      (\ s a -> s{_useLastLoginTime = a})

-- | ETag of the user\'s photo (Read-only)
useThumbnailPhotoEtag :: Lens' User (Maybe Text)
useThumbnailPhotoEtag
  = lens _useThumbnailPhotoEtag
      (\ s a -> s{_useThumbnailPhotoEtag = a})

-- | ETag of the resource.
useEtag :: Lens' User (Maybe Text)
useEtag = lens _useEtag (\ s a -> s{_useEtag = a})

-- | Boolean indicating if ip is whitelisted
useIpWhitelisted :: Lens' User (Maybe Bool)
useIpWhitelisted
  = lens _useIpWhitelisted
      (\ s a -> s{_useIpWhitelisted = a})

useRelations :: Lens' User (Maybe (Either Text Int64))
useRelations
  = lens _useRelations (\ s a -> s{_useRelations = a})

-- | Hash function name for password. Supported are MD5, SHA-1 and crypt
useHashFunction :: Lens' User (Maybe Text)
useHashFunction
  = lens _useHashFunction
      (\ s a -> s{_useHashFunction = a})

-- | Kind of resource this is.
useKind :: Lens' User Text
useKind = lens _useKind (\ s a -> s{_useKind = a})

-- | Boolean indicating if the user should change password in next login
useChangePasswordAtNextLogin :: Lens' User (Maybe Bool)
useChangePasswordAtNextLogin
  = lens _useChangePasswordAtNextLogin
      (\ s a -> s{_useChangePasswordAtNextLogin = a})

useWebsites :: Lens' User (Maybe (Either Text Int64))
useWebsites
  = lens _useWebsites (\ s a -> s{_useWebsites = a})

useAddresses :: Lens' User (Maybe (Either Text Int64))
useAddresses
  = lens _useAddresses (\ s a -> s{_useAddresses = a})

-- | List of aliases (Read-only)
useAliases :: Lens' User [Text]
useAliases
  = lens _useAliases (\ s a -> s{_useAliases = a}) .
      _Default
      . _Coerce

-- | Photo Url of the user (Read-only)
useThumbnailPhotoUrl :: Lens' User (Maybe Text)
useThumbnailPhotoUrl
  = lens _useThumbnailPhotoUrl
      (\ s a -> s{_useThumbnailPhotoUrl = a})

useExternalIds :: Lens' User (Maybe (Either Text Int64))
useExternalIds
  = lens _useExternalIds
      (\ s a -> s{_useExternalIds = a})

-- | Indicates if user is suspended
useSuspended :: Lens' User (Maybe Bool)
useSuspended
  = lens _useSuspended (\ s a -> s{_useSuspended = a})

-- | Indicates if user has agreed to terms (Read-only)
useAgreedToTerms :: Lens' User (Maybe Bool)
useAgreedToTerms
  = lens _useAgreedToTerms
      (\ s a -> s{_useAgreedToTerms = a})

useDeletionTime :: Lens' User (Maybe UTCTime)
useDeletionTime
  = lens _useDeletionTime
      (\ s a -> s{_useDeletionTime = a})

-- | List of non editable aliases (Read-only)
useNonEditableAliases :: Lens' User [Text]
useNonEditableAliases
  = lens _useNonEditableAliases
      (\ s a -> s{_useNonEditableAliases = a})
      . _Default
      . _Coerce

-- | OrgUnit of User
useOrgUnitPath :: Lens' User (Maybe Text)
useOrgUnitPath
  = lens _useOrgUnitPath
      (\ s a -> s{_useOrgUnitPath = a})

-- | CustomerId of User (Read-only)
useCustomerId :: Lens' User (Maybe Text)
useCustomerId
  = lens _useCustomerId
      (\ s a -> s{_useCustomerId = a})

-- | Boolean indicating if user is included in Global Address List
useIncludeInGlobalAddressList :: Lens' User (Maybe Bool)
useIncludeInGlobalAddressList
  = lens _useIncludeInGlobalAddressList
      (\ s a -> s{_useIncludeInGlobalAddressList = a})

usePhones :: Lens' User (Maybe (Either Text Int64))
usePhones
  = lens _usePhones (\ s a -> s{_usePhones = a})

-- | User\'s name
useName :: Lens' User (Maybe (Maybe UserName))
useName = lens _useName (\ s a -> s{_useName = a})

-- | User\'s password
usePassword :: Lens' User (Maybe Text)
usePassword
  = lens _usePassword (\ s a -> s{_usePassword = a})

useEmails :: Lens' User (Maybe (Either Text Int64))
useEmails
  = lens _useEmails (\ s a -> s{_useEmails = a})

useIms :: Lens' User (Maybe (Either Text Int64))
useIms = lens _useIms (\ s a -> s{_useIms = a})

-- | Boolean indicating if the user is admin (Read-only)
useIsAdmin :: Lens' User (Maybe Bool)
useIsAdmin
  = lens _useIsAdmin (\ s a -> s{_useIsAdmin = a})

-- | Unique identifier of User (Read-only)
useId :: Lens' User (Maybe Text)
useId = lens _useId (\ s a -> s{_useId = a})

useOrganizations :: Lens' User (Maybe (Either Text Int64))
useOrganizations
  = lens _useOrganizations
      (\ s a -> s{_useOrganizations = a})

-- | username of User
usePrimaryEmail :: Lens' User (Maybe Text)
usePrimaryEmail
  = lens _usePrimaryEmail
      (\ s a -> s{_usePrimaryEmail = a})

useNotes :: Lens' User (Maybe (Either Text Int64))
useNotes = lens _useNotes (\ s a -> s{_useNotes = a})

-- | Boolean indicating if the user is delegated admin (Read-only)
useIsDelegatedAdmin :: Lens' User (Maybe Bool)
useIsDelegatedAdmin
  = lens _useIsDelegatedAdmin
      (\ s a -> s{_useIsDelegatedAdmin = a})

-- | Is mailbox setup (Read-only)
useIsMailboxSetup :: Lens' User (Maybe Bool)
useIsMailboxSetup
  = lens _useIsMailboxSetup
      (\ s a -> s{_useIsMailboxSetup = a})

-- | Custom fields of the user.
useCustomSchemas :: Lens' User (Maybe UserCustomSchemas)
useCustomSchemas
  = lens _useCustomSchemas
      (\ s a -> s{_useCustomSchemas = a})

-- | Suspension reason if user is suspended (Read-only)
useSuspensionReason :: Lens' User (Maybe Text)
useSuspensionReason
  = lens _useSuspensionReason
      (\ s a -> s{_useSuspensionReason = a})

-- | JSON template for About (notes) of a user in Directory API.
--
-- /See:/ 'userAbout' smart constructor.
data UserAbout = UserAbout
    { _uaValue       :: !(Maybe Text)
    , _uaContentType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserAbout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaValue'
--
-- * 'uaContentType'
userAbout
    :: UserAbout
userAbout =
    UserAbout
    { _uaValue = Nothing
    , _uaContentType = Nothing
    }

-- | Actual value of notes.
uaValue :: Lens' UserAbout (Maybe Text)
uaValue = lens _uaValue (\ s a -> s{_uaValue = a})

-- | About entry can have a type which indicates the content type. It can
-- either be plain or html. By default, notes contents are assumed to
-- contain plain text.
uaContentType :: Lens' UserAbout (Maybe Text)
uaContentType
  = lens _uaContentType
      (\ s a -> s{_uaContentType = a})

-- | JSON template for address.
--
-- /See:/ 'userAddress' smart constructor.
data UserAddress = UserAddress
    { _uaStreetAddress      :: !(Maybe Text)
    , _uaPoBox              :: !(Maybe Text)
    , _uaCountry            :: !(Maybe Text)
    , _uaPostalCode         :: !(Maybe Text)
    , _uaFormatted          :: !(Maybe Text)
    , _uaExtendedAddress    :: !(Maybe Text)
    , _uaLocality           :: !(Maybe Text)
    , _uaPrimary            :: !(Maybe Bool)
    , _uaCountryCode        :: !(Maybe Text)
    , _uaRegion             :: !(Maybe Text)
    , _uaType               :: !(Maybe Text)
    , _uaCustomType         :: !(Maybe Text)
    , _uaSourceIsStructured :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaStreetAddress'
--
-- * 'uaPoBox'
--
-- * 'uaCountry'
--
-- * 'uaPostalCode'
--
-- * 'uaFormatted'
--
-- * 'uaExtendedAddress'
--
-- * 'uaLocality'
--
-- * 'uaPrimary'
--
-- * 'uaCountryCode'
--
-- * 'uaRegion'
--
-- * 'uaType'
--
-- * 'uaCustomType'
--
-- * 'uaSourceIsStructured'
userAddress
    :: UserAddress
userAddress =
    UserAddress
    { _uaStreetAddress = Nothing
    , _uaPoBox = Nothing
    , _uaCountry = Nothing
    , _uaPostalCode = Nothing
    , _uaFormatted = Nothing
    , _uaExtendedAddress = Nothing
    , _uaLocality = Nothing
    , _uaPrimary = Nothing
    , _uaCountryCode = Nothing
    , _uaRegion = Nothing
    , _uaType = Nothing
    , _uaCustomType = Nothing
    , _uaSourceIsStructured = Nothing
    }

-- | Street.
uaStreetAddress :: Lens' UserAddress (Maybe Text)
uaStreetAddress
  = lens _uaStreetAddress
      (\ s a -> s{_uaStreetAddress = a})

-- | Other parts of address.
uaPoBox :: Lens' UserAddress (Maybe Text)
uaPoBox = lens _uaPoBox (\ s a -> s{_uaPoBox = a})

-- | Country.
uaCountry :: Lens' UserAddress (Maybe Text)
uaCountry
  = lens _uaCountry (\ s a -> s{_uaCountry = a})

-- | Postal code.
uaPostalCode :: Lens' UserAddress (Maybe Text)
uaPostalCode
  = lens _uaPostalCode (\ s a -> s{_uaPostalCode = a})

-- | Formatted address.
uaFormatted :: Lens' UserAddress (Maybe Text)
uaFormatted
  = lens _uaFormatted (\ s a -> s{_uaFormatted = a})

-- | Extended Address.
uaExtendedAddress :: Lens' UserAddress (Maybe Text)
uaExtendedAddress
  = lens _uaExtendedAddress
      (\ s a -> s{_uaExtendedAddress = a})

-- | Locality.
uaLocality :: Lens' UserAddress (Maybe Text)
uaLocality
  = lens _uaLocality (\ s a -> s{_uaLocality = a})

-- | If this is user\'s primary address. Only one entry could be marked as
-- primary.
uaPrimary :: Lens' UserAddress (Maybe Bool)
uaPrimary
  = lens _uaPrimary (\ s a -> s{_uaPrimary = a})

-- | Country code.
uaCountryCode :: Lens' UserAddress (Maybe Text)
uaCountryCode
  = lens _uaCountryCode
      (\ s a -> s{_uaCountryCode = a})

-- | Region.
uaRegion :: Lens' UserAddress (Maybe Text)
uaRegion = lens _uaRegion (\ s a -> s{_uaRegion = a})

-- | Each entry can have a type which indicates standard values of that
-- entry. For example address could be of home, work etc. In addition to
-- the standard type, an entry can have a custom type and can take any
-- value. Such type should have the CUSTOM value as type and also have a
-- customType value.
uaType :: Lens' UserAddress (Maybe Text)
uaType = lens _uaType (\ s a -> s{_uaType = a})

-- | Custom type.
uaCustomType :: Lens' UserAddress (Maybe Text)
uaCustomType
  = lens _uaCustomType (\ s a -> s{_uaCustomType = a})

-- | User supplied address was structured. Structured addresses are NOT
-- supported at this time. You might be able to write structured addresses,
-- but any values will eventually be clobbered.
uaSourceIsStructured :: Lens' UserAddress (Maybe Bool)
uaSourceIsStructured
  = lens _uaSourceIsStructured
      (\ s a -> s{_uaSourceIsStructured = a})

-- | JSON template for a set of custom properties (i.e. all fields in a
-- particular schema)
--
-- /See:/ 'userCustomProperties' smart constructor.
data UserCustomProperties =
    UserCustomProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserCustomProperties' with the minimum fields required to make a request.
--
userCustomProperties
    :: UserCustomProperties
userCustomProperties = UserCustomProperties

-- | Custom fields of the user.
--
-- /See:/ 'userCustomSchemas' smart constructor.
data UserCustomSchemas =
    UserCustomSchemas
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserCustomSchemas' with the minimum fields required to make a request.
--
userCustomSchemas
    :: UserCustomSchemas
userCustomSchemas = UserCustomSchemas

-- | JSON template for an email.
--
-- /See:/ 'userEmail' smart constructor.
data UserEmail = UserEmail
    { _ueAddress    :: !(Maybe Text)
    , _uePrimary    :: !(Maybe Bool)
    , _ueType       :: !(Maybe Text)
    , _ueCustomType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserEmail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueAddress'
--
-- * 'uePrimary'
--
-- * 'ueType'
--
-- * 'ueCustomType'
userEmail
    :: UserEmail
userEmail =
    UserEmail
    { _ueAddress = Nothing
    , _uePrimary = Nothing
    , _ueType = Nothing
    , _ueCustomType = Nothing
    }

-- | Email id of the user.
ueAddress :: Lens' UserEmail (Maybe Text)
ueAddress
  = lens _ueAddress (\ s a -> s{_ueAddress = a})

-- | If this is user\'s primary email. Only one entry could be marked as
-- primary.
uePrimary :: Lens' UserEmail (Maybe Bool)
uePrimary
  = lens _uePrimary (\ s a -> s{_uePrimary = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example email could be of home, work etc. In addition to the
-- standard type, an entry can have a custom type and can take any value
-- Such types should have the CUSTOM value as type and also have a
-- customType value.
ueType :: Lens' UserEmail (Maybe Text)
ueType = lens _ueType (\ s a -> s{_ueType = a})

-- | Custom Type.
ueCustomType :: Lens' UserEmail (Maybe Text)
ueCustomType
  = lens _ueCustomType (\ s a -> s{_ueCustomType = a})

-- | JSON template for an externalId entry.
--
-- /See:/ 'userExternalId' smart constructor.
data UserExternalId = UserExternalId
    { _ueiValue      :: !(Maybe Text)
    , _ueiType       :: !(Maybe Text)
    , _ueiCustomType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserExternalId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueiValue'
--
-- * 'ueiType'
--
-- * 'ueiCustomType'
userExternalId
    :: UserExternalId
userExternalId =
    UserExternalId
    { _ueiValue = Nothing
    , _ueiType = Nothing
    , _ueiCustomType = Nothing
    }

-- | The value of the id.
ueiValue :: Lens' UserExternalId (Maybe Text)
ueiValue = lens _ueiValue (\ s a -> s{_ueiValue = a})

-- | The type of the Id.
ueiType :: Lens' UserExternalId (Maybe Text)
ueiType = lens _ueiType (\ s a -> s{_ueiType = a})

-- | Custom type.
ueiCustomType :: Lens' UserExternalId (Maybe Text)
ueiCustomType
  = lens _ueiCustomType
      (\ s a -> s{_ueiCustomType = a})

-- | JSON template for instant messenger of an user.
--
-- /See:/ 'userIm' smart constructor.
data UserIm = UserIm
    { _uiIm             :: !(Maybe Text)
    , _uiProtocol       :: !(Maybe Text)
    , _uiPrimary        :: !(Maybe Bool)
    , _uiCustomProtocol :: !(Maybe Text)
    , _uiType           :: !(Maybe Text)
    , _uiCustomType     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserIm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiIm'
--
-- * 'uiProtocol'
--
-- * 'uiPrimary'
--
-- * 'uiCustomProtocol'
--
-- * 'uiType'
--
-- * 'uiCustomType'
userIm
    :: UserIm
userIm =
    UserIm
    { _uiIm = Nothing
    , _uiProtocol = Nothing
    , _uiPrimary = Nothing
    , _uiCustomProtocol = Nothing
    , _uiType = Nothing
    , _uiCustomType = Nothing
    }

-- | Instant messenger id.
uiIm :: Lens' UserIm (Maybe Text)
uiIm = lens _uiIm (\ s a -> s{_uiIm = a})

-- | Protocol used in the instant messenger. It should be one of the values
-- from ImProtocolTypes map. Similar to type, it can take a CUSTOM value
-- and specify the custom name in customProtocol field.
uiProtocol :: Lens' UserIm (Maybe Text)
uiProtocol
  = lens _uiProtocol (\ s a -> s{_uiProtocol = a})

-- | If this is user\'s primary im. Only one entry could be marked as
-- primary.
uiPrimary :: Lens' UserIm (Maybe Bool)
uiPrimary
  = lens _uiPrimary (\ s a -> s{_uiPrimary = a})

-- | Custom protocol.
uiCustomProtocol :: Lens' UserIm (Maybe Text)
uiCustomProtocol
  = lens _uiCustomProtocol
      (\ s a -> s{_uiCustomProtocol = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example instant messengers could be of home, work etc. In addition
-- to the standard type, an entry can have a custom type and can take any
-- value. Such types should have the CUSTOM value as type and also have a
-- customType value.
uiType :: Lens' UserIm (Maybe Text)
uiType = lens _uiType (\ s a -> s{_uiType = a})

-- | Custom type.
uiCustomType :: Lens' UserIm (Maybe Text)
uiCustomType
  = lens _uiCustomType (\ s a -> s{_uiCustomType = a})

-- | JSON request template for setting\/revoking admin status of a user in
-- Directory API.
--
-- /See:/ 'userMakeAdmin' smart constructor.
newtype UserMakeAdmin = UserMakeAdmin
    { _umaStatus :: Maybe Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserMakeAdmin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaStatus'
userMakeAdmin
    :: UserMakeAdmin
userMakeAdmin =
    UserMakeAdmin
    { _umaStatus = Nothing
    }

-- | Boolean indicating new admin status of the user
umaStatus :: Lens' UserMakeAdmin (Maybe Bool)
umaStatus
  = lens _umaStatus (\ s a -> s{_umaStatus = a})

-- | JSON template for name of a user in Directory API.
--
-- /See:/ 'userName' smart constructor.
data UserName = UserName
    { _unGivenName  :: !(Maybe Text)
    , _unFullName   :: !(Maybe Text)
    , _unFamilyName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unGivenName'
--
-- * 'unFullName'
--
-- * 'unFamilyName'
userName
    :: UserName
userName =
    UserName
    { _unGivenName = Nothing
    , _unFullName = Nothing
    , _unFamilyName = Nothing
    }

-- | First Name
unGivenName :: Lens' UserName (Maybe Text)
unGivenName
  = lens _unGivenName (\ s a -> s{_unGivenName = a})

-- | Full Name
unFullName :: Lens' UserName (Maybe Text)
unFullName
  = lens _unFullName (\ s a -> s{_unFullName = a})

-- | Last Name
unFamilyName :: Lens' UserName (Maybe Text)
unFamilyName
  = lens _unFamilyName (\ s a -> s{_unFamilyName = a})

-- | JSON template for an organization entry.
--
-- /See:/ 'userOrganization' smart constructor.
data UserOrganization = UserOrganization
    { _uoDepartment  :: !(Maybe Text)
    , _uoLocation    :: !(Maybe Text)
    , _uoCostCenter  :: !(Maybe Text)
    , _uoDomain      :: !(Maybe Text)
    , _uoSymbol      :: !(Maybe Text)
    , _uoPrimary     :: !(Maybe Bool)
    , _uoName        :: !(Maybe Text)
    , _uoTitle       :: !(Maybe Text)
    , _uoType        :: !(Maybe Text)
    , _uoCustomType  :: !(Maybe Text)
    , _uoDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoDepartment'
--
-- * 'uoLocation'
--
-- * 'uoCostCenter'
--
-- * 'uoDomain'
--
-- * 'uoSymbol'
--
-- * 'uoPrimary'
--
-- * 'uoName'
--
-- * 'uoTitle'
--
-- * 'uoType'
--
-- * 'uoCustomType'
--
-- * 'uoDescription'
userOrganization
    :: UserOrganization
userOrganization =
    UserOrganization
    { _uoDepartment = Nothing
    , _uoLocation = Nothing
    , _uoCostCenter = Nothing
    , _uoDomain = Nothing
    , _uoSymbol = Nothing
    , _uoPrimary = Nothing
    , _uoName = Nothing
    , _uoTitle = Nothing
    , _uoType = Nothing
    , _uoCustomType = Nothing
    , _uoDescription = Nothing
    }

-- | Department within the organization.
uoDepartment :: Lens' UserOrganization (Maybe Text)
uoDepartment
  = lens _uoDepartment (\ s a -> s{_uoDepartment = a})

-- | Location of the organization. This need not be fully qualified address.
uoLocation :: Lens' UserOrganization (Maybe Text)
uoLocation
  = lens _uoLocation (\ s a -> s{_uoLocation = a})

-- | The cost center of the users department.
uoCostCenter :: Lens' UserOrganization (Maybe Text)
uoCostCenter
  = lens _uoCostCenter (\ s a -> s{_uoCostCenter = a})

-- | The domain to which the organization belongs to.
uoDomain :: Lens' UserOrganization (Maybe Text)
uoDomain = lens _uoDomain (\ s a -> s{_uoDomain = a})

-- | Symbol of the organization.
uoSymbol :: Lens' UserOrganization (Maybe Text)
uoSymbol = lens _uoSymbol (\ s a -> s{_uoSymbol = a})

-- | If it user\'s primary organization.
uoPrimary :: Lens' UserOrganization (Maybe Bool)
uoPrimary
  = lens _uoPrimary (\ s a -> s{_uoPrimary = a})

-- | Name of the organization
uoName :: Lens' UserOrganization (Maybe Text)
uoName = lens _uoName (\ s a -> s{_uoName = a})

-- | Title (designation) of the user in the organization.
uoTitle :: Lens' UserOrganization (Maybe Text)
uoTitle = lens _uoTitle (\ s a -> s{_uoTitle = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example organization could be of school, work etc. In addition to
-- the standard type, an entry can have a custom type and can give it any
-- name. Such types should have the CUSTOM value as type and also have a
-- CustomType value.
uoType :: Lens' UserOrganization (Maybe Text)
uoType = lens _uoType (\ s a -> s{_uoType = a})

-- | Custom type.
uoCustomType :: Lens' UserOrganization (Maybe Text)
uoCustomType
  = lens _uoCustomType (\ s a -> s{_uoCustomType = a})

-- | Description of the organization.
uoDescription :: Lens' UserOrganization (Maybe Text)
uoDescription
  = lens _uoDescription
      (\ s a -> s{_uoDescription = a})

-- | JSON template for a phone entry.
--
-- /See:/ 'userPhone' smart constructor.
data UserPhone = UserPhone
    { _upValue      :: !(Maybe Text)
    , _upPrimary    :: !(Maybe Bool)
    , _upType       :: !(Maybe Text)
    , _upCustomType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserPhone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upValue'
--
-- * 'upPrimary'
--
-- * 'upType'
--
-- * 'upCustomType'
userPhone
    :: UserPhone
userPhone =
    UserPhone
    { _upValue = Nothing
    , _upPrimary = Nothing
    , _upType = Nothing
    , _upCustomType = Nothing
    }

-- | Phone number.
upValue :: Lens' UserPhone (Maybe Text)
upValue = lens _upValue (\ s a -> s{_upValue = a})

-- | If this is user\'s primary phone or not.
upPrimary :: Lens' UserPhone (Maybe Bool)
upPrimary
  = lens _upPrimary (\ s a -> s{_upPrimary = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example phone could be of home_fax, work, mobile etc. In addition to
-- the standard type, an entry can have a custom type and can give it any
-- name. Such types should have the CUSTOM value as type and also have a
-- customType value.
upType :: Lens' UserPhone (Maybe Text)
upType = lens _upType (\ s a -> s{_upType = a})

-- | Custom Type.
upCustomType :: Lens' UserPhone (Maybe Text)
upCustomType
  = lens _upCustomType (\ s a -> s{_upCustomType = a})

-- | JSON template for Photo object in Directory API.
--
-- /See:/ 'userPhoto' smart constructor.
data UserPhoto = UserPhoto
    { _upPhotoData    :: !(Maybe Word8)
    , _upEtag         :: !(Maybe Text)
    , _upHeight       :: !(Maybe Int32)
    , _upKind         :: !Text
    , _upWidth        :: !(Maybe Int32)
    , _upMimeType     :: !(Maybe Text)
    , _upId           :: !(Maybe Text)
    , _upPrimaryEmail :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPhotoData'
--
-- * 'upEtag'
--
-- * 'upHeight'
--
-- * 'upKind'
--
-- * 'upWidth'
--
-- * 'upMimeType'
--
-- * 'upId'
--
-- * 'upPrimaryEmail'
userPhoto
    :: UserPhoto
userPhoto =
    UserPhoto
    { _upPhotoData = Nothing
    , _upEtag = Nothing
    , _upHeight = Nothing
    , _upKind = "admin#directory#user#photo"
    , _upWidth = Nothing
    , _upMimeType = Nothing
    , _upId = Nothing
    , _upPrimaryEmail = Nothing
    }

-- | Base64 encoded photo data
upPhotoData :: Lens' UserPhoto (Maybe Word8)
upPhotoData
  = lens _upPhotoData (\ s a -> s{_upPhotoData = a})

-- | ETag of the resource.
upEtag :: Lens' UserPhoto (Maybe Text)
upEtag = lens _upEtag (\ s a -> s{_upEtag = a})

-- | Height in pixels of the photo
upHeight :: Lens' UserPhoto (Maybe Int32)
upHeight = lens _upHeight (\ s a -> s{_upHeight = a})

-- | Kind of resource this is.
upKind :: Lens' UserPhoto Text
upKind = lens _upKind (\ s a -> s{_upKind = a})

-- | Width in pixels of the photo
upWidth :: Lens' UserPhoto (Maybe Int32)
upWidth = lens _upWidth (\ s a -> s{_upWidth = a})

-- | Mime Type of the photo
upMimeType :: Lens' UserPhoto (Maybe Text)
upMimeType
  = lens _upMimeType (\ s a -> s{_upMimeType = a})

-- | Unique identifier of User (Read-only)
upId :: Lens' UserPhoto (Maybe Text)
upId = lens _upId (\ s a -> s{_upId = a})

-- | Primary email of User (Read-only)
upPrimaryEmail :: Lens' UserPhoto (Maybe Text)
upPrimaryEmail
  = lens _upPrimaryEmail
      (\ s a -> s{_upPrimaryEmail = a})

-- | JSON template for a relation entry.
--
-- /See:/ 'userRelation' smart constructor.
data UserRelation = UserRelation
    { _urValue      :: !(Maybe Text)
    , _urType       :: !(Maybe Text)
    , _urCustomType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urValue'
--
-- * 'urType'
--
-- * 'urCustomType'
userRelation
    :: UserRelation
userRelation =
    UserRelation
    { _urValue = Nothing
    , _urType = Nothing
    , _urCustomType = Nothing
    }

-- | The name of the relation.
urValue :: Lens' UserRelation (Maybe Text)
urValue = lens _urValue (\ s a -> s{_urValue = a})

-- | The relation of the user. Some of the possible values are mother,
-- father, sister, brother, manager, assistant, partner.
urType :: Lens' UserRelation (Maybe Text)
urType = lens _urType (\ s a -> s{_urType = a})

-- | Custom Type.
urCustomType :: Lens' UserRelation (Maybe Text)
urCustomType
  = lens _urCustomType (\ s a -> s{_urCustomType = a})

-- | JSON request template to undelete a user in Directory API.
--
-- /See:/ 'userUndelete' smart constructor.
newtype UserUndelete = UserUndelete
    { _uuOrgUnitPath :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuOrgUnitPath'
userUndelete
    :: UserUndelete
userUndelete =
    UserUndelete
    { _uuOrgUnitPath = Nothing
    }

-- | OrgUnit of User
uuOrgUnitPath :: Lens' UserUndelete (Maybe Text)
uuOrgUnitPath
  = lens _uuOrgUnitPath
      (\ s a -> s{_uuOrgUnitPath = a})

-- | JSON template for a website entry.
--
-- /See:/ 'userWebsite' smart constructor.
data UserWebsite = UserWebsite
    { _uwValue      :: !(Maybe Text)
    , _uwPrimary    :: !(Maybe Bool)
    , _uwType       :: !(Maybe Text)
    , _uwCustomType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserWebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwValue'
--
-- * 'uwPrimary'
--
-- * 'uwType'
--
-- * 'uwCustomType'
userWebsite
    :: UserWebsite
userWebsite =
    UserWebsite
    { _uwValue = Nothing
    , _uwPrimary = Nothing
    , _uwType = Nothing
    , _uwCustomType = Nothing
    }

-- | Website.
uwValue :: Lens' UserWebsite (Maybe Text)
uwValue = lens _uwValue (\ s a -> s{_uwValue = a})

-- | If this is user\'s primary website or not.
uwPrimary :: Lens' UserWebsite (Maybe Bool)
uwPrimary
  = lens _uwPrimary (\ s a -> s{_uwPrimary = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example website could be of home, work, blog etc. In addition to the
-- standard type, an entry can have a custom type and can give it any name.
-- Such types should have the CUSTOM value as type and also have a
-- customType value.
uwType :: Lens' UserWebsite (Maybe Text)
uwType = lens _uwType (\ s a -> s{_uwType = a})

-- | Custom Type.
uwCustomType :: Lens' UserWebsite (Maybe Text)
uwCustomType
  = lens _uwCustomType (\ s a -> s{_uwCustomType = a})

-- | JSON response template for List Users operation in Apps Directory API.
--
-- /See:/ 'users' smart constructor.
data Users = Users
    { _uEtag          :: !(Maybe Text)
    , _uNextPageToken :: !(Maybe Text)
    , _uUsers         :: !(Maybe [Maybe User])
    , _uKind          :: !Text
    , _uTriggerEvent  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Users' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uEtag'
--
-- * 'uNextPageToken'
--
-- * 'uUsers'
--
-- * 'uKind'
--
-- * 'uTriggerEvent'
users
    :: Users
users =
    Users
    { _uEtag = Nothing
    , _uNextPageToken = Nothing
    , _uUsers = Nothing
    , _uKind = "admin#directory#users"
    , _uTriggerEvent = Nothing
    }

-- | ETag of the resource.
uEtag :: Lens' Users (Maybe Text)
uEtag = lens _uEtag (\ s a -> s{_uEtag = a})

-- | Token used to access next page of this result.
uNextPageToken :: Lens' Users (Maybe Text)
uNextPageToken
  = lens _uNextPageToken
      (\ s a -> s{_uNextPageToken = a})

-- | List of user objects.
uUsers :: Lens' Users [Maybe User]
uUsers
  = lens _uUsers (\ s a -> s{_uUsers = a}) . _Default .
      _Coerce

-- | Kind of resource this is.
uKind :: Lens' Users Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | Event that triggered this response (only used in case of Push Response)
uTriggerEvent :: Lens' Users (Maybe Text)
uTriggerEvent
  = lens _uTriggerEvent
      (\ s a -> s{_uTriggerEvent = a})

-- | JSON template for verification codes in Directory API.
--
-- /See:/ 'verificationCode' smart constructor.
data VerificationCode = VerificationCode
    { _vVerificationCode :: !(Maybe Text)
    , _vEtag             :: !(Maybe Text)
    , _vKind             :: !Text
    , _vUserId           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vVerificationCode'
--
-- * 'vEtag'
--
-- * 'vKind'
--
-- * 'vUserId'
verificationCode
    :: VerificationCode
verificationCode =
    VerificationCode
    { _vVerificationCode = Nothing
    , _vEtag = Nothing
    , _vKind = "admin#directory#verificationCode"
    , _vUserId = Nothing
    }

-- | A current verification code for the user. Invalidated or used
-- verification codes are not returned as part of the result.
vVerificationCode :: Lens' VerificationCode (Maybe Text)
vVerificationCode
  = lens _vVerificationCode
      (\ s a -> s{_vVerificationCode = a})

-- | ETag of the resource.
vEtag :: Lens' VerificationCode (Maybe Text)
vEtag = lens _vEtag (\ s a -> s{_vEtag = a})

-- | The type of the resource. This is always
-- admin#directory#verificationCode.
vKind :: Lens' VerificationCode Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | The obfuscated unique ID of the user.
vUserId :: Lens' VerificationCode (Maybe Text)
vUserId = lens _vUserId (\ s a -> s{_vUserId = a})

-- | JSON response template for List verification codes operation in
-- Directory API.
--
-- /See:/ 'verificationCodes' smart constructor.
data VerificationCodes = VerificationCodes
    { _vcEtag  :: !(Maybe Text)
    , _vcKind  :: !Text
    , _vcItems :: !(Maybe [Maybe VerificationCode])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcEtag'
--
-- * 'vcKind'
--
-- * 'vcItems'
verificationCodes
    :: VerificationCodes
verificationCodes =
    VerificationCodes
    { _vcEtag = Nothing
    , _vcKind = "admin#directory#verificationCodesList"
    , _vcItems = Nothing
    }

-- | ETag of the resource.
vcEtag :: Lens' VerificationCodes (Maybe Text)
vcEtag = lens _vcEtag (\ s a -> s{_vcEtag = a})

-- | The type of the resource. This is always
-- admin#directory#verificationCodesList.
vcKind :: Lens' VerificationCodes Text
vcKind = lens _vcKind (\ s a -> s{_vcKind = a})

-- | A list of verification code resources.
vcItems :: Lens' VerificationCodes [Maybe VerificationCode]
vcItems
  = lens _vcItems (\ s a -> s{_vcItems = a}) . _Default
      . _Coerce
