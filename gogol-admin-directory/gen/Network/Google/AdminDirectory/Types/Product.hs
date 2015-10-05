{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminDirectory.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminDirectory.Types.Product where

import           Network.Google.AdminDirectory.Types.Sum
import           Network.Google.Prelude

-- | JSON template for verification codes in Directory API.
--
-- /See:/ 'verificationCode' smart constructor.
data VerificationCode = VerificationCode
    { _vcVerificationCode :: !(Maybe Text)
    , _vcEtag             :: !(Maybe Text)
    , _vcKind             :: !Text
    , _vcUserId           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcVerificationCode'
--
-- * 'vcEtag'
--
-- * 'vcKind'
--
-- * 'vcUserId'
verificationCode
    :: VerificationCode
verificationCode =
    VerificationCode
    { _vcVerificationCode = Nothing
    , _vcEtag = Nothing
    , _vcKind = "admin#directory#verificationCode"
    , _vcUserId = Nothing
    }

-- | A current verification code for the user. Invalidated or used
-- verification codes are not returned as part of the result.
vcVerificationCode :: Lens' VerificationCode (Maybe Text)
vcVerificationCode
  = lens _vcVerificationCode
      (\ s a -> s{_vcVerificationCode = a})

-- | ETag of the resource.
vcEtag :: Lens' VerificationCode (Maybe Text)
vcEtag = lens _vcEtag (\ s a -> s{_vcEtag = a})

-- | The type of the resource. This is always
-- admin#directory#verificationCode.
vcKind :: Lens' VerificationCode Text
vcKind = lens _vcKind (\ s a -> s{_vcKind = a})

-- | The obfuscated unique ID of the user.
vcUserId :: Lens' VerificationCode (Maybe Text)
vcUserId = lens _vcUserId (\ s a -> s{_vcUserId = a})

instance FromJSON VerificationCode where
        parseJSON
          = withObject "VerificationCode"
              (\ o ->
                 VerificationCode <$>
                   (o .:? "verificationCode") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#verificationCode")
                     <*> (o .:? "userId"))

instance ToJSON VerificationCode where
        toJSON VerificationCode{..}
          = object
              (catMaybes
                 [("verificationCode" .=) <$> _vcVerificationCode,
                  ("etag" .=) <$> _vcEtag, Just ("kind" .= _vcKind),
                  ("userId" .=) <$> _vcUserId])

-- | JSON template for Org Unit resource in Directory API.
--
-- /See:/ 'orgUnit' smart constructor.
data OrgUnit = OrgUnit
    { _ouEtag              :: !(Maybe Text)
    , _ouParentOrgUnitPath :: !(Maybe Text)
    , _ouKind              :: !Text
    , _ouOrgUnitPath       :: !(Maybe Text)
    , _ouName              :: !(Maybe Text)
    , _ouBlockInheritance  :: !(Maybe Bool)
    , _ouParentOrgUnitId   :: !(Maybe Text)
    , _ouDescription       :: !(Maybe Text)
    , _ouOrgUnitId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouEtag'
--
-- * 'ouParentOrgUnitPath'
--
-- * 'ouKind'
--
-- * 'ouOrgUnitPath'
--
-- * 'ouName'
--
-- * 'ouBlockInheritance'
--
-- * 'ouParentOrgUnitId'
--
-- * 'ouDescription'
--
-- * 'ouOrgUnitId'
orgUnit
    :: OrgUnit
orgUnit =
    OrgUnit
    { _ouEtag = Nothing
    , _ouParentOrgUnitPath = Nothing
    , _ouKind = "admin#directory#orgUnit"
    , _ouOrgUnitPath = Nothing
    , _ouName = Nothing
    , _ouBlockInheritance = Nothing
    , _ouParentOrgUnitId = Nothing
    , _ouDescription = Nothing
    , _ouOrgUnitId = Nothing
    }

-- | ETag of the resource.
ouEtag :: Lens' OrgUnit (Maybe Text)
ouEtag = lens _ouEtag (\ s a -> s{_ouEtag = a})

-- | Path of parent OrgUnit
ouParentOrgUnitPath :: Lens' OrgUnit (Maybe Text)
ouParentOrgUnitPath
  = lens _ouParentOrgUnitPath
      (\ s a -> s{_ouParentOrgUnitPath = a})

-- | Kind of resource this is.
ouKind :: Lens' OrgUnit Text
ouKind = lens _ouKind (\ s a -> s{_ouKind = a})

-- | Path of OrgUnit
ouOrgUnitPath :: Lens' OrgUnit (Maybe Text)
ouOrgUnitPath
  = lens _ouOrgUnitPath
      (\ s a -> s{_ouOrgUnitPath = a})

-- | Name of OrgUnit
ouName :: Lens' OrgUnit (Maybe Text)
ouName = lens _ouName (\ s a -> s{_ouName = a})

-- | Should block inheritance
ouBlockInheritance :: Lens' OrgUnit (Maybe Bool)
ouBlockInheritance
  = lens _ouBlockInheritance
      (\ s a -> s{_ouBlockInheritance = a})

-- | Id of parent OrgUnit
ouParentOrgUnitId :: Lens' OrgUnit (Maybe Text)
ouParentOrgUnitId
  = lens _ouParentOrgUnitId
      (\ s a -> s{_ouParentOrgUnitId = a})

-- | Description of OrgUnit
ouDescription :: Lens' OrgUnit (Maybe Text)
ouDescription
  = lens _ouDescription
      (\ s a -> s{_ouDescription = a})

-- | Id of OrgUnit
ouOrgUnitId :: Lens' OrgUnit (Maybe Text)
ouOrgUnitId
  = lens _ouOrgUnitId (\ s a -> s{_ouOrgUnitId = a})

instance FromJSON OrgUnit where
        parseJSON
          = withObject "OrgUnit"
              (\ o ->
                 OrgUnit <$>
                   (o .:? "etag") <*> (o .:? "parentOrgUnitPath") <*>
                     (o .:? "kind" .!= "admin#directory#orgUnit")
                     <*> (o .:? "orgUnitPath")
                     <*> (o .:? "name")
                     <*> (o .:? "blockInheritance")
                     <*> (o .:? "parentOrgUnitId")
                     <*> (o .:? "description")
                     <*> (o .:? "orgUnitId"))

instance ToJSON OrgUnit where
        toJSON OrgUnit{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ouEtag,
                  ("parentOrgUnitPath" .=) <$> _ouParentOrgUnitPath,
                  Just ("kind" .= _ouKind),
                  ("orgUnitPath" .=) <$> _ouOrgUnitPath,
                  ("name" .=) <$> _ouName,
                  ("blockInheritance" .=) <$> _ouBlockInheritance,
                  ("parentOrgUnitId" .=) <$> _ouParentOrgUnitId,
                  ("description" .=) <$> _ouDescription,
                  ("orgUnitId" .=) <$> _ouOrgUnitId])

-- | JSON request template for setting\/revoking admin status of a user in
-- Directory API.
--
-- /See:/ 'userMakeAdmin' smart constructor.
newtype UserMakeAdmin = UserMakeAdmin
    { _umaStatus :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserMakeAdmin where
        parseJSON
          = withObject "UserMakeAdmin"
              (\ o -> UserMakeAdmin <$> (o .:? "status"))

instance ToJSON UserMakeAdmin where
        toJSON UserMakeAdmin{..}
          = object (catMaybes [("status" .=) <$> _umaStatus])

-- | JSON template for About (notes) of a user in Directory API.
--
-- /See:/ 'userAbout' smart constructor.
data UserAbout = UserAbout
    { _uaValue       :: !(Maybe Text)
    , _uaContentType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserAbout where
        parseJSON
          = withObject "UserAbout"
              (\ o ->
                 UserAbout <$>
                   (o .:? "value") <*> (o .:? "contentType"))

instance ToJSON UserAbout where
        toJSON UserAbout{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uaValue,
                  ("contentType" .=) <$> _uaContentType])

-- | JSON response template for List Groups operation in Directory API.
--
-- /See:/ 'groups' smart constructor.
data Groups = Groups
    { _gGroups        :: !(Maybe [Group])
    , _gEtag          :: !(Maybe Text)
    , _gNextPageToken :: !(Maybe Text)
    , _gKind          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
gGroups :: Lens' Groups [Group]
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

instance FromJSON Groups where
        parseJSON
          = withObject "Groups"
              (\ o ->
                 Groups <$>
                   (o .:? "groups" .!= mempty) <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "admin#directory#groups"))

instance ToJSON Groups where
        toJSON Groups{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _gGroups, ("etag" .=) <$> _gEtag,
                  ("nextPageToken" .=) <$> _gNextPageToken,
                  Just ("kind" .= _gKind)])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserAddress where
        parseJSON
          = withObject "UserAddress"
              (\ o ->
                 UserAddress <$>
                   (o .:? "streetAddress") <*> (o .:? "poBox") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "formatted")
                     <*> (o .:? "extendedAddress")
                     <*> (o .:? "locality")
                     <*> (o .:? "primary")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "region")
                     <*> (o .:? "type")
                     <*> (o .:? "customType")
                     <*> (o .:? "sourceIsStructured"))

instance ToJSON UserAddress where
        toJSON UserAddress{..}
          = object
              (catMaybes
                 [("streetAddress" .=) <$> _uaStreetAddress,
                  ("poBox" .=) <$> _uaPoBox,
                  ("country" .=) <$> _uaCountry,
                  ("postalCode" .=) <$> _uaPostalCode,
                  ("formatted" .=) <$> _uaFormatted,
                  ("extendedAddress" .=) <$> _uaExtendedAddress,
                  ("locality" .=) <$> _uaLocality,
                  ("primary" .=) <$> _uaPrimary,
                  ("countryCode" .=) <$> _uaCountryCode,
                  ("region" .=) <$> _uaRegion, ("type" .=) <$> _uaType,
                  ("customType" .=) <$> _uaCustomType,
                  ("sourceIsStructured" .=) <$> _uaSourceIsStructured])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "directMembersCount")
                     <*> (o .:? "kind" .!= "admin#directory#group")
                     <*> (o .:? "aliases" .!= mempty)
                     <*> (o .:? "nonEditableAliases" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "adminCreated")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON Group where
        toJSON Group{..}
          = object
              (catMaybes
                 [("email" .=) <$> _groEmail,
                  ("etag" .=) <$> _groEtag,
                  ("directMembersCount" .=) <$> _groDirectMembersCount,
                  Just ("kind" .= _groKind),
                  ("aliases" .=) <$> _groAliases,
                  ("nonEditableAliases" .=) <$> _groNonEditableAliases,
                  ("name" .=) <$> _groName,
                  ("adminCreated" .=) <$> _groAdminCreated,
                  ("id" .=) <$> _groId,
                  ("description" .=) <$> _groDescription])

-- | JSON template for Chrome Os Device resource in Directory API.
--
-- /See:/ 'chromeOSDevice' smart constructor.
data ChromeOSDevice = ChromeOSDevice
    { _codStatus             :: !(Maybe Text)
    , _codEtag               :: !(Maybe Text)
    , _codAnnotatedUser      :: !(Maybe Text)
    , _codPlatformVersion    :: !(Maybe Text)
    , _codLastSync           :: !(Maybe DateTime')
    , _codActiveTimeRanges   :: !(Maybe [ChromeOSDeviceActiveTimeRangesItem])
    , _codKind               :: !Text
    , _codEthernetMACAddress :: !(Maybe Text)
    , _codLastEnrollmentTime :: !(Maybe DateTime')
    , _codAnnotatedLocation  :: !(Maybe Text)
    , _codMACAddress         :: !(Maybe Text)
    , _codOrgUnitPath        :: !(Maybe Text)
    , _codRecentUsers        :: !(Maybe [ChromeOSDeviceRecentUsersItem])
    , _codSupportEndDate     :: !(Maybe DateTime')
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
    , _codOSVersion          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOSDevice' with the minimum fields required to make a request.
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
-- * 'codEthernetMACAddress'
--
-- * 'codLastEnrollmentTime'
--
-- * 'codAnnotatedLocation'
--
-- * 'codMACAddress'
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
-- * 'codOSVersion'
chromeOSDevice
    :: ChromeOSDevice
chromeOSDevice =
    ChromeOSDevice
    { _codStatus = Nothing
    , _codEtag = Nothing
    , _codAnnotatedUser = Nothing
    , _codPlatformVersion = Nothing
    , _codLastSync = Nothing
    , _codActiveTimeRanges = Nothing
    , _codKind = "admin#directory#chromeosdevice"
    , _codEthernetMACAddress = Nothing
    , _codLastEnrollmentTime = Nothing
    , _codAnnotatedLocation = Nothing
    , _codMACAddress = Nothing
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
    , _codOSVersion = Nothing
    }

-- | status of the device (Read-only)
codStatus :: Lens' ChromeOSDevice (Maybe Text)
codStatus
  = lens _codStatus (\ s a -> s{_codStatus = a})

-- | ETag of the resource.
codEtag :: Lens' ChromeOSDevice (Maybe Text)
codEtag = lens _codEtag (\ s a -> s{_codEtag = a})

-- | User of the device
codAnnotatedUser :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedUser
  = lens _codAnnotatedUser
      (\ s a -> s{_codAnnotatedUser = a})

-- | Chromebook platform version (Read-only)
codPlatformVersion :: Lens' ChromeOSDevice (Maybe Text)
codPlatformVersion
  = lens _codPlatformVersion
      (\ s a -> s{_codPlatformVersion = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
codLastSync :: Lens' ChromeOSDevice (Maybe UTCTime)
codLastSync
  = lens _codLastSync (\ s a -> s{_codLastSync = a}) .
      mapping _DateTime

-- | List of active time ranges (Read-only)
codActiveTimeRanges :: Lens' ChromeOSDevice [ChromeOSDeviceActiveTimeRangesItem]
codActiveTimeRanges
  = lens _codActiveTimeRanges
      (\ s a -> s{_codActiveTimeRanges = a})
      . _Default
      . _Coerce

-- | Kind of resource this is.
codKind :: Lens' ChromeOSDevice Text
codKind = lens _codKind (\ s a -> s{_codKind = a})

-- | Chromebook Mac Address on ethernet network interface (Read-only)
codEthernetMACAddress :: Lens' ChromeOSDevice (Maybe Text)
codEthernetMACAddress
  = lens _codEthernetMACAddress
      (\ s a -> s{_codEthernetMACAddress = a})

-- | Date and time the device was last enrolled (Read-only)
codLastEnrollmentTime :: Lens' ChromeOSDevice (Maybe UTCTime)
codLastEnrollmentTime
  = lens _codLastEnrollmentTime
      (\ s a -> s{_codLastEnrollmentTime = a})
      . mapping _DateTime

-- | Address or location of the device as noted by the administrator
codAnnotatedLocation :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedLocation
  = lens _codAnnotatedLocation
      (\ s a -> s{_codAnnotatedLocation = a})

-- | Chromebook Mac Address on wifi network interface (Read-only)
codMACAddress :: Lens' ChromeOSDevice (Maybe Text)
codMACAddress
  = lens _codMACAddress
      (\ s a -> s{_codMACAddress = a})

-- | OrgUnit of the device
codOrgUnitPath :: Lens' ChromeOSDevice (Maybe Text)
codOrgUnitPath
  = lens _codOrgUnitPath
      (\ s a -> s{_codOrgUnitPath = a})

-- | List of recent device users, in descending order by last login time
-- (Read-only)
codRecentUsers :: Lens' ChromeOSDevice [ChromeOSDeviceRecentUsersItem]
codRecentUsers
  = lens _codRecentUsers
      (\ s a -> s{_codRecentUsers = a})
      . _Default
      . _Coerce

-- | Final date the device will be supported (Read-only)
codSupportEndDate :: Lens' ChromeOSDevice (Maybe UTCTime)
codSupportEndDate
  = lens _codSupportEndDate
      (\ s a -> s{_codSupportEndDate = a})
      . mapping _DateTime

-- | Chromebook Model (Read-only)
codModel :: Lens' ChromeOSDevice (Maybe Text)
codModel = lens _codModel (\ s a -> s{_codModel = a})

-- | Will Chromebook auto renew after support end date (Read-only)
codWillAutoRenew :: Lens' ChromeOSDevice (Maybe Bool)
codWillAutoRenew
  = lens _codWillAutoRenew
      (\ s a -> s{_codWillAutoRenew = a})

-- | Mobile Equipment identifier for the 3G mobile card in the Chromebook
-- (Read-only)
codMeid :: Lens' ChromeOSDevice (Maybe Text)
codMeid = lens _codMeid (\ s a -> s{_codMeid = a})

-- | Unique identifier of Chrome OS Device (Read-only)
codDeviceId :: Lens' ChromeOSDevice (Maybe Text)
codDeviceId
  = lens _codDeviceId (\ s a -> s{_codDeviceId = a})

-- | Chromebook boot mode (Read-only)
codBootMode :: Lens' ChromeOSDevice (Maybe Text)
codBootMode
  = lens _codBootMode (\ s a -> s{_codBootMode = a})

-- | Chromebook order number (Read-only)
codOrderNumber :: Lens' ChromeOSDevice (Maybe Text)
codOrderNumber
  = lens _codOrderNumber
      (\ s a -> s{_codOrderNumber = a})

-- | AssetId specified during enrollment or through later annotation
codAnnotatedAssetId :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedAssetId
  = lens _codAnnotatedAssetId
      (\ s a -> s{_codAnnotatedAssetId = a})

-- | Notes added by the administrator
codNotes :: Lens' ChromeOSDevice (Maybe Text)
codNotes = lens _codNotes (\ s a -> s{_codNotes = a})

-- | Chromebook serial number (Read-only)
codSerialNumber :: Lens' ChromeOSDevice (Maybe Text)
codSerialNumber
  = lens _codSerialNumber
      (\ s a -> s{_codSerialNumber = a})

-- | Chromebook firmware version (Read-only)
codFirmwareVersion :: Lens' ChromeOSDevice (Maybe Text)
codFirmwareVersion
  = lens _codFirmwareVersion
      (\ s a -> s{_codFirmwareVersion = a})

-- | Chromebook Os Version (Read-only)
codOSVersion :: Lens' ChromeOSDevice (Maybe Text)
codOSVersion
  = lens _codOSVersion (\ s a -> s{_codOSVersion = a})

instance FromJSON ChromeOSDevice where
        parseJSON
          = withObject "ChromeOSDevice"
              (\ o ->
                 ChromeOSDevice <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "annotatedUser")
                     <*> (o .:? "platformVersion")
                     <*> (o .:? "lastSync")
                     <*> (o .:? "activeTimeRanges" .!= mempty)
                     <*>
                     (o .:? "kind" .!= "admin#directory#chromeosdevice")
                     <*> (o .:? "ethernetMacAddress")
                     <*> (o .:? "lastEnrollmentTime")
                     <*> (o .:? "annotatedLocation")
                     <*> (o .:? "macAddress")
                     <*> (o .:? "orgUnitPath")
                     <*> (o .:? "recentUsers" .!= mempty)
                     <*> (o .:? "supportEndDate")
                     <*> (o .:? "model")
                     <*> (o .:? "willAutoRenew")
                     <*> (o .:? "meid")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "bootMode")
                     <*> (o .:? "orderNumber")
                     <*> (o .:? "annotatedAssetId")
                     <*> (o .:? "notes")
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "firmwareVersion")
                     <*> (o .:? "osVersion"))

instance ToJSON ChromeOSDevice where
        toJSON ChromeOSDevice{..}
          = object
              (catMaybes
                 [("status" .=) <$> _codStatus,
                  ("etag" .=) <$> _codEtag,
                  ("annotatedUser" .=) <$> _codAnnotatedUser,
                  ("platformVersion" .=) <$> _codPlatformVersion,
                  ("lastSync" .=) <$> _codLastSync,
                  ("activeTimeRanges" .=) <$> _codActiveTimeRanges,
                  Just ("kind" .= _codKind),
                  ("ethernetMacAddress" .=) <$> _codEthernetMACAddress,
                  ("lastEnrollmentTime" .=) <$> _codLastEnrollmentTime,
                  ("annotatedLocation" .=) <$> _codAnnotatedLocation,
                  ("macAddress" .=) <$> _codMACAddress,
                  ("orgUnitPath" .=) <$> _codOrgUnitPath,
                  ("recentUsers" .=) <$> _codRecentUsers,
                  ("supportEndDate" .=) <$> _codSupportEndDate,
                  ("model" .=) <$> _codModel,
                  ("willAutoRenew" .=) <$> _codWillAutoRenew,
                  ("meid" .=) <$> _codMeid,
                  ("deviceId" .=) <$> _codDeviceId,
                  ("bootMode" .=) <$> _codBootMode,
                  ("orderNumber" .=) <$> _codOrderNumber,
                  ("annotatedAssetId" .=) <$> _codAnnotatedAssetId,
                  ("notes" .=) <$> _codNotes,
                  ("serialNumber" .=) <$> _codSerialNumber,
                  ("firmwareVersion" .=) <$> _codFirmwareVersion,
                  ("osVersion" .=) <$> _codOSVersion])

-- | JSON response template for List Users operation in Apps Directory API.
--
-- /See:/ 'users' smart constructor.
data Users = Users
    { _uEtag          :: !(Maybe Text)
    , _uNextPageToken :: !(Maybe Text)
    , _uUsers         :: !(Maybe [User])
    , _uKind          :: !Text
    , _uTriggerEvent  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
uUsers :: Lens' Users [User]
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

instance FromJSON Users where
        parseJSON
          = withObject "Users"
              (\ o ->
                 Users <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "users" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#directory#users")
                     <*> (o .:? "trigger_event"))

instance ToJSON Users where
        toJSON Users{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag,
                  ("nextPageToken" .=) <$> _uNextPageToken,
                  ("users" .=) <$> _uUsers, Just ("kind" .= _uKind),
                  ("trigger_event" .=) <$> _uTriggerEvent])

-- | The template that returns individual ASP (Access Code) data.
--
-- /See:/ 'asp' smart constructor.
data Asp = Asp
    { _aCreationTime :: !(Maybe Int64)
    , _aEtag         :: !(Maybe Text)
    , _aCodeId       :: !(Maybe Int32)
    , _aKind         :: !Text
    , _aName         :: !(Maybe Text)
    , _aLastTimeUsed :: !(Maybe Int64)
    , _aUserKey      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCreationTime'
--
-- * 'aEtag'
--
-- * 'aCodeId'
--
-- * 'aKind'
--
-- * 'aName'
--
-- * 'aLastTimeUsed'
--
-- * 'aUserKey'
asp
    :: Asp
asp =
    Asp
    { _aCreationTime = Nothing
    , _aEtag = Nothing
    , _aCodeId = Nothing
    , _aKind = "admin#directory#asp"
    , _aName = Nothing
    , _aLastTimeUsed = Nothing
    , _aUserKey = Nothing
    }

-- | The time when the ASP was created. Expressed in Unix time format.
aCreationTime :: Lens' Asp (Maybe Int64)
aCreationTime
  = lens _aCreationTime
      (\ s a -> s{_aCreationTime = a})

-- | ETag of the ASP.
aEtag :: Lens' Asp (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The unique ID of the ASP.
aCodeId :: Lens' Asp (Maybe Int32)
aCodeId = lens _aCodeId (\ s a -> s{_aCodeId = a})

-- | The type of the API resource. This is always admin#directory#asp.
aKind :: Lens' Asp Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The name of the application that the user, represented by their userId,
-- entered when the ASP was created.
aName :: Lens' Asp (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The time when the ASP was last used. Expressed in Unix time format.
aLastTimeUsed :: Lens' Asp (Maybe Int64)
aLastTimeUsed
  = lens _aLastTimeUsed
      (\ s a -> s{_aLastTimeUsed = a})

-- | The unique ID of the user who issued the ASP.
aUserKey :: Lens' Asp (Maybe Text)
aUserKey = lens _aUserKey (\ s a -> s{_aUserKey = a})

instance FromJSON Asp where
        parseJSON
          = withObject "Asp"
              (\ o ->
                 Asp <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "codeId")
                     <*> (o .:? "kind" .!= "admin#directory#asp")
                     <*> (o .:? "name")
                     <*> (o .:? "lastTimeUsed")
                     <*> (o .:? "userKey"))

instance ToJSON Asp where
        toJSON Asp{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _aCreationTime,
                  ("etag" .=) <$> _aEtag, ("codeId" .=) <$> _aCodeId,
                  Just ("kind" .= _aKind), ("name" .=) <$> _aName,
                  ("lastTimeUsed" .=) <$> _aLastTimeUsed,
                  ("userKey" .=) <$> _aUserKey])

-- | JSON response template for List Schema operation in Directory API.
--
-- /See:/ 'schemas' smart constructor.
data Schemas = Schemas
    { _sEtag    :: !(Maybe Text)
    , _sSchemas :: !(Maybe [Schema])
    , _sKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
sSchemas :: Lens' Schemas [Schema]
sSchemas
  = lens _sSchemas (\ s a -> s{_sSchemas = a}) .
      _Default
      . _Coerce

-- | Kind of resource this is.
sKind :: Lens' Schemas Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

instance FromJSON Schemas where
        parseJSON
          = withObject "Schemas"
              (\ o ->
                 Schemas <$>
                   (o .:? "etag") <*> (o .:? "schemas" .!= mempty) <*>
                     (o .:? "kind" .!= "admin#directory#schemas"))

instance ToJSON Schemas where
        toJSON Schemas{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("schemas" .=) <$> _sSchemas,
                  Just ("kind" .= _sKind)])

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
    , _nSendTime       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _nSendTime (\ s a -> s{_nSendTime = a}) .
      mapping _DateTime

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o ->
                 Notification <$>
                   (o .:? "subject") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#notification")
                     <*> (o .:? "body")
                     <*> (o .:? "fromAddress")
                     <*> (o .:? "isUnread")
                     <*> (o .:? "notificationId")
                     <*> (o .:? "sendTime"))

instance ToJSON Notification where
        toJSON Notification{..}
          = object
              (catMaybes
                 [("subject" .=) <$> _nSubject,
                  ("etag" .=) <$> _nEtag, Just ("kind" .= _nKind),
                  ("body" .=) <$> _nBody,
                  ("fromAddress" .=) <$> _nFromAddress,
                  ("isUnread" .=) <$> _nIsUnread,
                  ("notificationId" .=) <$> _nNotificationId,
                  ("sendTime" .=) <$> _nSendTime])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserIm where
        parseJSON
          = withObject "UserIm"
              (\ o ->
                 UserIm <$>
                   (o .:? "im") <*> (o .:? "protocol") <*>
                     (o .:? "primary")
                     <*> (o .:? "customProtocol")
                     <*> (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserIm where
        toJSON UserIm{..}
          = object
              (catMaybes
                 [("im" .=) <$> _uiIm,
                  ("protocol" .=) <$> _uiProtocol,
                  ("primary" .=) <$> _uiPrimary,
                  ("customProtocol" .=) <$> _uiCustomProtocol,
                  ("type" .=) <$> _uiType,
                  ("customType" .=) <$> _uiCustomType])

-- | JSON response template for List tokens operation in Directory API.
--
-- /See:/ 'tokens' smart constructor.
data Tokens = Tokens
    { _tEtag  :: !(Maybe Text)
    , _tKind  :: !Text
    , _tItems :: !(Maybe [Token])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
tItems :: Lens' Tokens [Token]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON Tokens where
        parseJSON
          = withObject "Tokens"
              (\ o ->
                 Tokens <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#tokenList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Tokens where
        toJSON Tokens{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tEtag, Just ("kind" .= _tKind),
                  ("items" .=) <$> _tItems])

-- | Custom fields of the user.
--
-- /See:/ 'userCustomSchemas' smart constructor.
data UserCustomSchemas =
    UserCustomSchemas
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserCustomSchemas' with the minimum fields required to make a request.
--
userCustomSchemas
    :: UserCustomSchemas
userCustomSchemas = UserCustomSchemas

instance FromJSON UserCustomSchemas where
        parseJSON
          = withObject "UserCustomSchemas"
              (\ o -> pure UserCustomSchemas)

instance ToJSON UserCustomSchemas where
        toJSON = const (Object mempty)

-- | JSON response template to list aliases in Directory API.
--
-- /See:/ 'aliases' smart constructor.
data Aliases = Aliases
    { _aliEtag    :: !(Maybe Text)
    , _aliKind    :: !Text
    , _aliAliases :: !(Maybe [Alias])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
aliAliases :: Lens' Aliases [Alias]
aliAliases
  = lens _aliAliases (\ s a -> s{_aliAliases = a}) .
      _Default
      . _Coerce

instance FromJSON Aliases where
        parseJSON
          = withObject "Aliases"
              (\ o ->
                 Aliases <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#aliases")
                     <*> (o .:? "aliases" .!= mempty))

instance ToJSON Aliases where
        toJSON Aliases{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aliEtag, Just ("kind" .= _aliKind),
                  ("aliases" .=) <$> _aliAliases])

-- | JSON request template to undelete a user in Directory API.
--
-- /See:/ 'userUndelete' smart constructor.
newtype UserUndelete = UserUndelete
    { _uuOrgUnitPath :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserUndelete where
        parseJSON
          = withObject "UserUndelete"
              (\ o -> UserUndelete <$> (o .:? "orgUnitPath"))

instance ToJSON UserUndelete where
        toJSON UserUndelete{..}
          = object
              (catMaybes [("orgUnitPath" .=) <$> _uuOrgUnitPath])

-- | JSON response template for List Members operation in Directory API.
--
-- /See:/ 'members' smart constructor.
data Members = Members
    { _mEtag          :: !(Maybe Text)
    , _mNextPageToken :: !(Maybe Text)
    , _mKind          :: !Text
    , _mMembers       :: !(Maybe [Member])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Members' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mEtag'
--
-- * 'mNextPageToken'
--
-- * 'mKind'
--
-- * 'mMembers'
members
    :: Members
members =
    Members
    { _mEtag = Nothing
    , _mNextPageToken = Nothing
    , _mKind = "admin#directory#members"
    , _mMembers = Nothing
    }

-- | ETag of the resource.
mEtag :: Lens' Members (Maybe Text)
mEtag = lens _mEtag (\ s a -> s{_mEtag = a})

-- | Token used to access next page of this result.
mNextPageToken :: Lens' Members (Maybe Text)
mNextPageToken
  = lens _mNextPageToken
      (\ s a -> s{_mNextPageToken = a})

-- | Kind of resource this is.
mKind :: Lens' Members Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | List of member objects.
mMembers :: Lens' Members [Member]
mMembers
  = lens _mMembers (\ s a -> s{_mMembers = a}) .
      _Default
      . _Coerce

instance FromJSON Members where
        parseJSON
          = withObject "Members"
              (\ o ->
                 Members <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#members")
                     <*> (o .:? "members" .!= mempty))

instance ToJSON Members where
        toJSON Members{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _mEtag,
                  ("nextPageToken" .=) <$> _mNextPageToken,
                  Just ("kind" .= _mKind),
                  ("members" .=) <$> _mMembers])

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceURI'
--
-- * 'cResourceId'
--
-- * 'cKind'
--
-- * 'cExpiration'
--
-- * 'cToken'
--
-- * 'cAddress'
--
-- * 'cPayload'
--
-- * 'cParams'
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
    Channel
    { _cResourceURI = Nothing
    , _cResourceId = Nothing
    , _cKind = "api#channel"
    , _cExpiration = Nothing
    , _cToken = Nothing
    , _cAddress = Nothing
    , _cPayload = Nothing
    , _cParams = Nothing
    , _cId = Nothing
    , _cType = Nothing
    }

-- | A version-specific identifier for the watched resource.
cResourceURI :: Lens' Channel (Maybe Text)
cResourceURI
  = lens _cResourceURI (\ s a -> s{_cResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
cResourceId :: Lens' Channel (Maybe Text)
cResourceId
  = lens _cResourceId (\ s a -> s{_cResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
cToken :: Lens' Channel (Maybe Text)
cToken = lens _cToken (\ s a -> s{_cToken = a})

-- | The address where notifications are delivered for this channel.
cAddress :: Lens' Channel (Maybe Text)
cAddress = lens _cAddress (\ s a -> s{_cAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
cPayload :: Lens' Channel (Maybe Bool)
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
cParams :: Lens' Channel (Maybe ChannelParams)
cParams = lens _cParams (\ s a -> s{_cParams = a})

-- | A UUID or similar unique string that identifies this channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of delivery mechanism used for this channel.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel <$>
                   (o .:? "resourceUri") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "api#channel")
                     <*> (o .:? "expiration")
                     <*> (o .:? "token")
                     <*> (o .:? "address")
                     <*> (o .:? "payload")
                     <*> (o .:? "params")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _cResourceURI,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

-- | JSON response template for List Mobile Devices operation in Directory
-- API.
--
-- /See:/ 'mobileDevices' smart constructor.
data MobileDevices = MobileDevices
    { _mdEtag          :: !(Maybe Text)
    , _mdNextPageToken :: !(Maybe Text)
    , _mdKind          :: !Text
    , _mdMobileDevices :: !(Maybe [MobileDevice])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdEtag'
--
-- * 'mdNextPageToken'
--
-- * 'mdKind'
--
-- * 'mdMobileDevices'
mobileDevices
    :: MobileDevices
mobileDevices =
    MobileDevices
    { _mdEtag = Nothing
    , _mdNextPageToken = Nothing
    , _mdKind = "admin#directory#mobiledevices"
    , _mdMobileDevices = Nothing
    }

-- | ETag of the resource.
mdEtag :: Lens' MobileDevices (Maybe Text)
mdEtag = lens _mdEtag (\ s a -> s{_mdEtag = a})

-- | Token used to access next page of this result.
mdNextPageToken :: Lens' MobileDevices (Maybe Text)
mdNextPageToken
  = lens _mdNextPageToken
      (\ s a -> s{_mdNextPageToken = a})

-- | Kind of resource this is.
mdKind :: Lens' MobileDevices Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | List of Mobile Device objects.
mdMobileDevices :: Lens' MobileDevices [MobileDevice]
mdMobileDevices
  = lens _mdMobileDevices
      (\ s a -> s{_mdMobileDevices = a})
      . _Default
      . _Coerce

instance FromJSON MobileDevices where
        parseJSON
          = withObject "MobileDevices"
              (\ o ->
                 MobileDevices <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#mobiledevices")
                     <*> (o .:? "mobiledevices" .!= mempty))

instance ToJSON MobileDevices where
        toJSON MobileDevices{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _mdEtag,
                  ("nextPageToken" .=) <$> _mdNextPageToken,
                  Just ("kind" .= _mdKind),
                  ("mobiledevices" .=) <$> _mdMobileDevices])

-- | JSON template for token resource in Directory API.
--
-- /See:/ 'token' smart constructor.
data Token = Token
    { _tokClientId    :: !(Maybe Text)
    , _tokEtag        :: !(Maybe Text)
    , _tokDisplayText :: !(Maybe Text)
    , _tokKind        :: !Text
    , _tokScopes      :: !(Maybe [Text])
    , _tokNATiveApp   :: !(Maybe Bool)
    , _tokAnonymous   :: !(Maybe Bool)
    , _tokUserKey     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tokNATiveApp'
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
    , _tokNATiveApp = Nothing
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
tokNATiveApp :: Lens' Token (Maybe Bool)
tokNATiveApp
  = lens _tokNATiveApp (\ s a -> s{_tokNATiveApp = a})

-- | Whether the application is registered with Google. The value is true if
-- the application has an anonymous Client ID.
tokAnonymous :: Lens' Token (Maybe Bool)
tokAnonymous
  = lens _tokAnonymous (\ s a -> s{_tokAnonymous = a})

-- | The unique ID of the user that issued the token.
tokUserKey :: Lens' Token (Maybe Text)
tokUserKey
  = lens _tokUserKey (\ s a -> s{_tokUserKey = a})

instance FromJSON Token where
        parseJSON
          = withObject "Token"
              (\ o ->
                 Token <$>
                   (o .:? "clientId") <*> (o .:? "etag") <*>
                     (o .:? "displayText")
                     <*> (o .:? "kind" .!= "admin#directory#token")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "nativeApp")
                     <*> (o .:? "anonymous")
                     <*> (o .:? "userKey"))

instance ToJSON Token where
        toJSON Token{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _tokClientId,
                  ("etag" .=) <$> _tokEtag,
                  ("displayText" .=) <$> _tokDisplayText,
                  Just ("kind" .= _tokKind),
                  ("scopes" .=) <$> _tokScopes,
                  ("nativeApp" .=) <$> _tokNATiveApp,
                  ("anonymous" .=) <$> _tokAnonymous,
                  ("userKey" .=) <$> _tokUserKey])

-- | JSON template for name of a user in Directory API.
--
-- /See:/ 'userName' smart constructor.
data UserName = UserName
    { _unGivenName  :: !(Maybe Text)
    , _unFullName   :: !(Maybe Text)
    , _unFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserName where
        parseJSON
          = withObject "UserName"
              (\ o ->
                 UserName <$>
                   (o .:? "givenName") <*> (o .:? "fullName") <*>
                     (o .:? "familyName"))

instance ToJSON UserName where
        toJSON UserName{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _unGivenName,
                  ("fullName" .=) <$> _unFullName,
                  ("familyName" .=) <$> _unFamilyName])

--
-- /See:/ 'chromeOSDeviceRecentUsersItem' smart constructor.
data ChromeOSDeviceRecentUsersItem = ChromeOSDeviceRecentUsersItem
    { _codruiEmail :: !(Maybe Text)
    , _codruiType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOSDeviceRecentUsersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codruiEmail'
--
-- * 'codruiType'
chromeOSDeviceRecentUsersItem
    :: ChromeOSDeviceRecentUsersItem
chromeOSDeviceRecentUsersItem =
    ChromeOSDeviceRecentUsersItem
    { _codruiEmail = Nothing
    , _codruiType = Nothing
    }

-- | Email address of the user. Present only if the user type is managed
codruiEmail :: Lens' ChromeOSDeviceRecentUsersItem (Maybe Text)
codruiEmail
  = lens _codruiEmail (\ s a -> s{_codruiEmail = a})

-- | The type of the user
codruiType :: Lens' ChromeOSDeviceRecentUsersItem (Maybe Text)
codruiType
  = lens _codruiType (\ s a -> s{_codruiType = a})

instance FromJSON ChromeOSDeviceRecentUsersItem where
        parseJSON
          = withObject "ChromeOSDeviceRecentUsersItem"
              (\ o ->
                 ChromeOSDeviceRecentUsersItem <$>
                   (o .:? "email") <*> (o .:? "type"))

instance ToJSON ChromeOSDeviceRecentUsersItem where
        toJSON ChromeOSDeviceRecentUsersItem{..}
          = object
              (catMaybes
                 [("email" .=) <$> _codruiEmail,
                  ("type" .=) <$> _codruiType])

-- | JSON template for Alias object in Directory API.
--
-- /See:/ 'alias' smart constructor.
data Alias = Alias
    { _aaEtag         :: !(Maybe Text)
    , _aaKind         :: !Text
    , _aaAlias        :: !(Maybe Text)
    , _aaId           :: !(Maybe Text)
    , _aaPrimaryEmail :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEtag'
--
-- * 'aaKind'
--
-- * 'aaAlias'
--
-- * 'aaId'
--
-- * 'aaPrimaryEmail'
alias
    :: Alias
alias =
    Alias
    { _aaEtag = Nothing
    , _aaKind = "admin#directory#alias"
    , _aaAlias = Nothing
    , _aaId = Nothing
    , _aaPrimaryEmail = Nothing
    }

-- | ETag of the resource.
aaEtag :: Lens' Alias (Maybe Text)
aaEtag = lens _aaEtag (\ s a -> s{_aaEtag = a})

-- | Kind of resource this is.
aaKind :: Lens' Alias Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | A alias email
aaAlias :: Lens' Alias (Maybe Text)
aaAlias = lens _aaAlias (\ s a -> s{_aaAlias = a})

-- | Unique id of the group (Read-only) Unique id of the user (Read-only)
aaId :: Lens' Alias (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Group\'s primary email (Read-only) User\'s primary email (Read-only)
aaPrimaryEmail :: Lens' Alias (Maybe Text)
aaPrimaryEmail
  = lens _aaPrimaryEmail
      (\ s a -> s{_aaPrimaryEmail = a})

instance FromJSON Alias where
        parseJSON
          = withObject "Alias"
              (\ o ->
                 Alias <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#alias")
                     <*> (o .:? "alias")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryEmail"))

instance ToJSON Alias where
        toJSON Alias{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aaEtag, Just ("kind" .= _aaKind),
                  ("alias" .=) <$> _aaAlias, ("id" .=) <$> _aaId,
                  ("primaryEmail" .=) <$> _aaPrimaryEmail])

-- | JSON template for Schema resource in Directory API.
--
-- /See:/ 'schema' smart constructor.
data Schema = Schema
    { _schEtag       :: !(Maybe Text)
    , _schKind       :: !Text
    , _schSchemaName :: !(Maybe Text)
    , _schSchemaId   :: !(Maybe Text)
    , _schFields     :: !(Maybe [SchemaFieldSpec])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
schFields :: Lens' Schema [SchemaFieldSpec]
schFields
  = lens _schFields (\ s a -> s{_schFields = a}) .
      _Default
      . _Coerce

instance FromJSON Schema where
        parseJSON
          = withObject "Schema"
              (\ o ->
                 Schema <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#schema")
                     <*> (o .:? "schemaName")
                     <*> (o .:? "schemaId")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON Schema where
        toJSON Schema{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _schEtag, Just ("kind" .= _schKind),
                  ("schemaName" .=) <$> _schSchemaName,
                  ("schemaId" .=) <$> _schSchemaId,
                  ("fields" .=) <$> _schFields])

-- | JSON template for User object in Directory API.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _useCreationTime               :: !(Maybe DateTime')
    , _useLastLoginTime              :: !(Maybe DateTime')
    , _useThumbnailPhotoEtag         :: !(Maybe Text)
    , _useEtag                       :: !(Maybe Text)
    , _useIPWhiteListed              :: !(Maybe Bool)
    , _useRelations                  :: !(Maybe JSONValue)
    , _useHashFunction               :: !(Maybe Text)
    , _useKind                       :: !Text
    , _useChangePasswordAtNextLogin  :: !(Maybe Bool)
    , _useWebsites                   :: !(Maybe JSONValue)
    , _useAddresses                  :: !(Maybe JSONValue)
    , _useAliases                    :: !(Maybe [Text])
    , _useThumbnailPhotoURL          :: !(Maybe Text)
    , _useExternalIds                :: !(Maybe JSONValue)
    , _useSuspended                  :: !(Maybe Bool)
    , _useAgreedToTerms              :: !(Maybe Bool)
    , _useDeletionTime               :: !(Maybe DateTime')
    , _useNonEditableAliases         :: !(Maybe [Text])
    , _useOrgUnitPath                :: !(Maybe Text)
    , _useCustomerId                 :: !(Maybe Text)
    , _useIncludeInGlobalAddressList :: !(Maybe Bool)
    , _usePhones                     :: !(Maybe JSONValue)
    , _useName                       :: !(Maybe UserName)
    , _usePassword                   :: !(Maybe Text)
    , _useEmails                     :: !(Maybe JSONValue)
    , _useIms                        :: !(Maybe JSONValue)
    , _useIsAdmin                    :: !(Maybe Bool)
    , _useId                         :: !(Maybe Text)
    , _useOrganizations              :: !(Maybe JSONValue)
    , _usePrimaryEmail               :: !(Maybe Text)
    , _useNotes                      :: !(Maybe JSONValue)
    , _useIsDelegatedAdmin           :: !(Maybe Bool)
    , _useIsMailboxSetup             :: !(Maybe Bool)
    , _useCustomSchemas              :: !(Maybe UserCustomSchemas)
    , _useSuspensionReason           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'useIPWhiteListed'
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
-- * 'useThumbnailPhotoURL'
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
    , _useIPWhiteListed = Nothing
    , _useRelations = Nothing
    , _useHashFunction = Nothing
    , _useKind = "admin#directory#user"
    , _useChangePasswordAtNextLogin = Nothing
    , _useWebsites = Nothing
    , _useAddresses = Nothing
    , _useAliases = Nothing
    , _useThumbnailPhotoURL = Nothing
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
      . mapping _DateTime

-- | User\'s last login time. (Read-only)
useLastLoginTime :: Lens' User (Maybe UTCTime)
useLastLoginTime
  = lens _useLastLoginTime
      (\ s a -> s{_useLastLoginTime = a})
      . mapping _DateTime

-- | ETag of the user\'s photo (Read-only)
useThumbnailPhotoEtag :: Lens' User (Maybe Text)
useThumbnailPhotoEtag
  = lens _useThumbnailPhotoEtag
      (\ s a -> s{_useThumbnailPhotoEtag = a})

-- | ETag of the resource.
useEtag :: Lens' User (Maybe Text)
useEtag = lens _useEtag (\ s a -> s{_useEtag = a})

-- | Boolean indicating if ip is whitelisted
useIPWhiteListed :: Lens' User (Maybe Bool)
useIPWhiteListed
  = lens _useIPWhiteListed
      (\ s a -> s{_useIPWhiteListed = a})

useRelations :: Lens' User (Maybe JSONValue)
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

useWebsites :: Lens' User (Maybe JSONValue)
useWebsites
  = lens _useWebsites (\ s a -> s{_useWebsites = a})

useAddresses :: Lens' User (Maybe JSONValue)
useAddresses
  = lens _useAddresses (\ s a -> s{_useAddresses = a})

-- | List of aliases (Read-only)
useAliases :: Lens' User [Text]
useAliases
  = lens _useAliases (\ s a -> s{_useAliases = a}) .
      _Default
      . _Coerce

-- | Photo Url of the user (Read-only)
useThumbnailPhotoURL :: Lens' User (Maybe Text)
useThumbnailPhotoURL
  = lens _useThumbnailPhotoURL
      (\ s a -> s{_useThumbnailPhotoURL = a})

useExternalIds :: Lens' User (Maybe JSONValue)
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
      . mapping _DateTime

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

usePhones :: Lens' User (Maybe JSONValue)
usePhones
  = lens _usePhones (\ s a -> s{_usePhones = a})

-- | User\'s name
useName :: Lens' User (Maybe UserName)
useName = lens _useName (\ s a -> s{_useName = a})

-- | User\'s password
usePassword :: Lens' User (Maybe Text)
usePassword
  = lens _usePassword (\ s a -> s{_usePassword = a})

useEmails :: Lens' User (Maybe JSONValue)
useEmails
  = lens _useEmails (\ s a -> s{_useEmails = a})

useIms :: Lens' User (Maybe JSONValue)
useIms = lens _useIms (\ s a -> s{_useIms = a})

-- | Boolean indicating if the user is admin (Read-only)
useIsAdmin :: Lens' User (Maybe Bool)
useIsAdmin
  = lens _useIsAdmin (\ s a -> s{_useIsAdmin = a})

-- | Unique identifier of User (Read-only)
useId :: Lens' User (Maybe Text)
useId = lens _useId (\ s a -> s{_useId = a})

useOrganizations :: Lens' User (Maybe JSONValue)
useOrganizations
  = lens _useOrganizations
      (\ s a -> s{_useOrganizations = a})

-- | username of User
usePrimaryEmail :: Lens' User (Maybe Text)
usePrimaryEmail
  = lens _usePrimaryEmail
      (\ s a -> s{_usePrimaryEmail = a})

useNotes :: Lens' User (Maybe JSONValue)
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

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User <$>
                   (o .:? "creationTime") <*> (o .:? "lastLoginTime")
                     <*> (o .:? "thumbnailPhotoEtag")
                     <*> (o .:? "etag")
                     <*> (o .:? "ipWhitelisted")
                     <*> (o .:? "relations")
                     <*> (o .:? "hashFunction")
                     <*> (o .:? "kind" .!= "admin#directory#user")
                     <*> (o .:? "changePasswordAtNextLogin")
                     <*> (o .:? "websites")
                     <*> (o .:? "addresses")
                     <*> (o .:? "aliases" .!= mempty)
                     <*> (o .:? "thumbnailPhotoUrl")
                     <*> (o .:? "externalIds")
                     <*> (o .:? "suspended")
                     <*> (o .:? "agreedToTerms")
                     <*> (o .:? "deletionTime")
                     <*> (o .:? "nonEditableAliases" .!= mempty)
                     <*> (o .:? "orgUnitPath")
                     <*> (o .:? "customerId")
                     <*> (o .:? "includeInGlobalAddressList")
                     <*> (o .:? "phones")
                     <*> (o .:? "name")
                     <*> (o .:? "password")
                     <*> (o .:? "emails")
                     <*> (o .:? "ims")
                     <*> (o .:? "isAdmin")
                     <*> (o .:? "id")
                     <*> (o .:? "organizations")
                     <*> (o .:? "primaryEmail")
                     <*> (o .:? "notes")
                     <*> (o .:? "isDelegatedAdmin")
                     <*> (o .:? "isMailboxSetup")
                     <*> (o .:? "customSchemas")
                     <*> (o .:? "suspensionReason"))

instance ToJSON User where
        toJSON User{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _useCreationTime,
                  ("lastLoginTime" .=) <$> _useLastLoginTime,
                  ("thumbnailPhotoEtag" .=) <$> _useThumbnailPhotoEtag,
                  ("etag" .=) <$> _useEtag,
                  ("ipWhitelisted" .=) <$> _useIPWhiteListed,
                  ("relations" .=) <$> _useRelations,
                  ("hashFunction" .=) <$> _useHashFunction,
                  Just ("kind" .= _useKind),
                  ("changePasswordAtNextLogin" .=) <$>
                    _useChangePasswordAtNextLogin,
                  ("websites" .=) <$> _useWebsites,
                  ("addresses" .=) <$> _useAddresses,
                  ("aliases" .=) <$> _useAliases,
                  ("thumbnailPhotoUrl" .=) <$> _useThumbnailPhotoURL,
                  ("externalIds" .=) <$> _useExternalIds,
                  ("suspended" .=) <$> _useSuspended,
                  ("agreedToTerms" .=) <$> _useAgreedToTerms,
                  ("deletionTime" .=) <$> _useDeletionTime,
                  ("nonEditableAliases" .=) <$> _useNonEditableAliases,
                  ("orgUnitPath" .=) <$> _useOrgUnitPath,
                  ("customerId" .=) <$> _useCustomerId,
                  ("includeInGlobalAddressList" .=) <$>
                    _useIncludeInGlobalAddressList,
                  ("phones" .=) <$> _usePhones,
                  ("name" .=) <$> _useName,
                  ("password" .=) <$> _usePassword,
                  ("emails" .=) <$> _useEmails, ("ims" .=) <$> _useIms,
                  ("isAdmin" .=) <$> _useIsAdmin, ("id" .=) <$> _useId,
                  ("organizations" .=) <$> _useOrganizations,
                  ("primaryEmail" .=) <$> _usePrimaryEmail,
                  ("notes" .=) <$> _useNotes,
                  ("isDelegatedAdmin" .=) <$> _useIsDelegatedAdmin,
                  ("isMailboxSetup" .=) <$> _useIsMailboxSetup,
                  ("customSchemas" .=) <$> _useCustomSchemas,
                  ("suspensionReason" .=) <$> _useSuspensionReason])

--
-- /See:/ 'mobileDeviceApplicationsItem' smart constructor.
data MobileDeviceApplicationsItem = MobileDeviceApplicationsItem
    { _mdaiVersionCode :: !(Maybe Int32)
    , _mdaiVersionName :: !(Maybe Text)
    , _mdaiPackageName :: !(Maybe Text)
    , _mdaiDisplayName :: !(Maybe Text)
    , _mdaiPermission  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDeviceApplicationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaiVersionCode'
--
-- * 'mdaiVersionName'
--
-- * 'mdaiPackageName'
--
-- * 'mdaiDisplayName'
--
-- * 'mdaiPermission'
mobileDeviceApplicationsItem
    :: MobileDeviceApplicationsItem
mobileDeviceApplicationsItem =
    MobileDeviceApplicationsItem
    { _mdaiVersionCode = Nothing
    , _mdaiVersionName = Nothing
    , _mdaiPackageName = Nothing
    , _mdaiDisplayName = Nothing
    , _mdaiPermission = Nothing
    }

-- | Version code of application
mdaiVersionCode :: Lens' MobileDeviceApplicationsItem (Maybe Int32)
mdaiVersionCode
  = lens _mdaiVersionCode
      (\ s a -> s{_mdaiVersionCode = a})

-- | Version name of application
mdaiVersionName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiVersionName
  = lens _mdaiVersionName
      (\ s a -> s{_mdaiVersionName = a})

-- | Package name of application
mdaiPackageName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiPackageName
  = lens _mdaiPackageName
      (\ s a -> s{_mdaiPackageName = a})

-- | Display name of application
mdaiDisplayName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiDisplayName
  = lens _mdaiDisplayName
      (\ s a -> s{_mdaiDisplayName = a})

-- | List of Permissions for application
mdaiPermission :: Lens' MobileDeviceApplicationsItem [Text]
mdaiPermission
  = lens _mdaiPermission
      (\ s a -> s{_mdaiPermission = a})
      . _Default
      . _Coerce

instance FromJSON MobileDeviceApplicationsItem where
        parseJSON
          = withObject "MobileDeviceApplicationsItem"
              (\ o ->
                 MobileDeviceApplicationsItem <$>
                   (o .:? "versionCode") <*> (o .:? "versionName") <*>
                     (o .:? "packageName")
                     <*> (o .:? "displayName")
                     <*> (o .:? "permission" .!= mempty))

instance ToJSON MobileDeviceApplicationsItem where
        toJSON MobileDeviceApplicationsItem{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _mdaiVersionCode,
                  ("versionName" .=) <$> _mdaiVersionName,
                  ("packageName" .=) <$> _mdaiPackageName,
                  ("displayName" .=) <$> _mdaiDisplayName,
                  ("permission" .=) <$> _mdaiPermission])

-- | JSON response template for List Organization Units operation in
-- Directory API.
--
-- /See:/ 'orgUnits' smart constructor.
data OrgUnits = OrgUnits
    { _oEtag              :: !(Maybe Text)
    , _oKind              :: !Text
    , _oOrganizationUnits :: !(Maybe [OrgUnit])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oEtag'
--
-- * 'oKind'
--
-- * 'oOrganizationUnits'
orgUnits
    :: OrgUnits
orgUnits =
    OrgUnits
    { _oEtag = Nothing
    , _oKind = "admin#directory#orgUnits"
    , _oOrganizationUnits = Nothing
    }

-- | ETag of the resource.
oEtag :: Lens' OrgUnits (Maybe Text)
oEtag = lens _oEtag (\ s a -> s{_oEtag = a})

-- | Kind of resource this is.
oKind :: Lens' OrgUnits Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | List of user objects.
oOrganizationUnits :: Lens' OrgUnits [OrgUnit]
oOrganizationUnits
  = lens _oOrganizationUnits
      (\ s a -> s{_oOrganizationUnits = a})
      . _Default
      . _Coerce

instance FromJSON OrgUnits where
        parseJSON
          = withObject "OrgUnits"
              (\ o ->
                 OrgUnits <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#orgUnits")
                     <*> (o .:? "organizationUnits" .!= mempty))

instance ToJSON OrgUnits where
        toJSON OrgUnits{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _oEtag, Just ("kind" .= _oKind),
                  ("organizationUnits" .=) <$> _oOrganizationUnits])

-- | JSON response template for List verification codes operation in
-- Directory API.
--
-- /See:/ 'verificationCodes' smart constructor.
data VerificationCodes = VerificationCodes
    { _vEtag  :: !(Maybe Text)
    , _vKind  :: !Text
    , _vItems :: !(Maybe [VerificationCode])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vEtag'
--
-- * 'vKind'
--
-- * 'vItems'
verificationCodes
    :: VerificationCodes
verificationCodes =
    VerificationCodes
    { _vEtag = Nothing
    , _vKind = "admin#directory#verificationCodesList"
    , _vItems = Nothing
    }

-- | ETag of the resource.
vEtag :: Lens' VerificationCodes (Maybe Text)
vEtag = lens _vEtag (\ s a -> s{_vEtag = a})

-- | The type of the resource. This is always
-- admin#directory#verificationCodesList.
vKind :: Lens' VerificationCodes Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | A list of verification code resources.
vItems :: Lens' VerificationCodes [VerificationCode]
vItems
  = lens _vItems (\ s a -> s{_vItems = a}) . _Default .
      _Coerce

instance FromJSON VerificationCodes where
        parseJSON
          = withObject "VerificationCodes"
              (\ o ->
                 VerificationCodes <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "admin#directory#verificationCodesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON VerificationCodes where
        toJSON VerificationCodes{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vEtag, Just ("kind" .= _vKind),
                  ("items" .=) <$> _vItems])

-- | JSON template for a relation entry.
--
-- /See:/ 'userRelation' smart constructor.
data UserRelation = UserRelation
    { _urValue      :: !(Maybe Text)
    , _urType       :: !(Maybe Text)
    , _urCustomType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserRelation where
        parseJSON
          = withObject "UserRelation"
              (\ o ->
                 UserRelation <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "customType"))

instance ToJSON UserRelation where
        toJSON UserRelation{..}
          = object
              (catMaybes
                 [("value" .=) <$> _urValue, ("type" .=) <$> _urType,
                  ("customType" .=) <$> _urCustomType])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> pure ChannelParams)

instance ToJSON ChannelParams where
        toJSON = const (Object mempty)

-- | JSON template for an organization entry.
--
-- /See:/ 'userOrganization' smart constructor.
data UserOrganization = UserOrganization
    { _uoDePartment  :: !(Maybe Text)
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
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoDePartment'
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
    { _uoDePartment = Nothing
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
uoDePartment :: Lens' UserOrganization (Maybe Text)
uoDePartment
  = lens _uoDePartment (\ s a -> s{_uoDePartment = a})

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

instance FromJSON UserOrganization where
        parseJSON
          = withObject "UserOrganization"
              (\ o ->
                 UserOrganization <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "costCenter")
                     <*> (o .:? "domain")
                     <*> (o .:? "symbol")
                     <*> (o .:? "primary")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "customType")
                     <*> (o .:? "description"))

instance ToJSON UserOrganization where
        toJSON UserOrganization{..}
          = object
              (catMaybes
                 [("department" .=) <$> _uoDePartment,
                  ("location" .=) <$> _uoLocation,
                  ("costCenter" .=) <$> _uoCostCenter,
                  ("domain" .=) <$> _uoDomain,
                  ("symbol" .=) <$> _uoSymbol,
                  ("primary" .=) <$> _uoPrimary,
                  ("name" .=) <$> _uoName, ("title" .=) <$> _uoTitle,
                  ("type" .=) <$> _uoType,
                  ("customType" .=) <$> _uoCustomType,
                  ("description" .=) <$> _uoDescription])

-- | JSON template for a website entry.
--
-- /See:/ 'userWebsite' smart constructor.
data UserWebsite = UserWebsite
    { _uwValue      :: !(Maybe Text)
    , _uwPrimary    :: !(Maybe Bool)
    , _uwType       :: !(Maybe Text)
    , _uwCustomType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserWebsite where
        parseJSON
          = withObject "UserWebsite"
              (\ o ->
                 UserWebsite <$>
                   (o .:? "value") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserWebsite where
        toJSON UserWebsite{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uwValue,
                  ("primary" .=) <$> _uwPrimary,
                  ("type" .=) <$> _uwType,
                  ("customType" .=) <$> _uwCustomType])

--
-- /See:/ 'chromeOSDeviceActiveTimeRangesItem' smart constructor.
data ChromeOSDeviceActiveTimeRangesItem = ChromeOSDeviceActiveTimeRangesItem
    { _codatriDate       :: !(Maybe Date')
    , _codatriActiveTime :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOSDeviceActiveTimeRangesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codatriDate'
--
-- * 'codatriActiveTime'
chromeOSDeviceActiveTimeRangesItem
    :: ChromeOSDeviceActiveTimeRangesItem
chromeOSDeviceActiveTimeRangesItem =
    ChromeOSDeviceActiveTimeRangesItem
    { _codatriDate = Nothing
    , _codatriActiveTime = Nothing
    }

-- | Date of usage
codatriDate :: Lens' ChromeOSDeviceActiveTimeRangesItem (Maybe LocalTime)
codatriDate
  = lens _codatriDate (\ s a -> s{_codatriDate = a}) .
      mapping _Date

-- | Duration in milliseconds
codatriActiveTime :: Lens' ChromeOSDeviceActiveTimeRangesItem (Maybe Int32)
codatriActiveTime
  = lens _codatriActiveTime
      (\ s a -> s{_codatriActiveTime = a})

instance FromJSON ChromeOSDeviceActiveTimeRangesItem
         where
        parseJSON
          = withObject "ChromeOSDeviceActiveTimeRangesItem"
              (\ o ->
                 ChromeOSDeviceActiveTimeRangesItem <$>
                   (o .:? "date") <*> (o .:? "activeTime"))

instance ToJSON ChromeOSDeviceActiveTimeRangesItem
         where
        toJSON ChromeOSDeviceActiveTimeRangesItem{..}
          = object
              (catMaybes
                 [("date" .=) <$> _codatriDate,
                  ("activeTime" .=) <$> _codatriActiveTime])

-- | JSON template for an email.
--
-- /See:/ 'userEmail' smart constructor.
data UserEmail = UserEmail
    { _ueAddress    :: !(Maybe Text)
    , _uePrimary    :: !(Maybe Bool)
    , _ueType       :: !(Maybe Text)
    , _ueCustomType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserEmail where
        parseJSON
          = withObject "UserEmail"
              (\ o ->
                 UserEmail <$>
                   (o .:? "address") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserEmail where
        toJSON UserEmail{..}
          = object
              (catMaybes
                 [("address" .=) <$> _ueAddress,
                  ("primary" .=) <$> _uePrimary,
                  ("type" .=) <$> _ueType,
                  ("customType" .=) <$> _ueCustomType])

-- | JSON template for a phone entry.
--
-- /See:/ 'userPhone' smart constructor.
data UserPhone = UserPhone
    { _upValue      :: !(Maybe Text)
    , _upPrimary    :: !(Maybe Bool)
    , _upType       :: !(Maybe Text)
    , _upCustomType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserPhone where
        parseJSON
          = withObject "UserPhone"
              (\ o ->
                 UserPhone <$>
                   (o .:? "value") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserPhone where
        toJSON UserPhone{..}
          = object
              (catMaybes
                 [("value" .=) <$> _upValue,
                  ("primary" .=) <$> _upPrimary,
                  ("type" .=) <$> _upType,
                  ("customType" .=) <$> _upCustomType])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserPhoto where
        parseJSON
          = withObject "UserPhoto"
              (\ o ->
                 UserPhoto <$>
                   (o .:? "photoData") <*> (o .:? "etag") <*>
                     (o .:? "height")
                     <*> (o .:? "kind" .!= "admin#directory#user#photo")
                     <*> (o .:? "width")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryEmail"))

instance ToJSON UserPhoto where
        toJSON UserPhoto{..}
          = object
              (catMaybes
                 [("photoData" .=) <$> _upPhotoData,
                  ("etag" .=) <$> _upEtag, ("height" .=) <$> _upHeight,
                  Just ("kind" .= _upKind), ("width" .=) <$> _upWidth,
                  ("mimeType" .=) <$> _upMimeType, ("id" .=) <$> _upId,
                  ("primaryEmail" .=) <$> _upPrimaryEmail])

-- | JSON template for Mobile Device resource in Directory API.
--
-- /See:/ 'mobileDevice' smart constructor.
data MobileDevice = MobileDevice
    { _mobEmail                          :: !(Maybe [Text])
    , _mobStatus                         :: !(Maybe Text)
    , _mobEtag                           :: !(Maybe Text)
    , _mobResourceId                     :: !(Maybe Text)
    , _mobBuildNumber                    :: !(Maybe Text)
    , _mobManagedAccountIsOnOwnerProFile :: !(Maybe Bool)
    , _mobLastSync                       :: !(Maybe DateTime')
    , _mobOtherAccountsInfo              :: !(Maybe [Text])
    , _mobKind                           :: !Text
    , _mobAdbStatus                      :: !(Maybe Bool)
    , _mobNetworkOperator                :: !(Maybe Text)
    , _mobKernelVersion                  :: !(Maybe Text)
    , _mobOS                             :: !(Maybe Text)
    , _mobName                           :: !(Maybe [Text])
    , _mobModel                          :: !(Maybe Text)
    , _mobDeveloperOptionsStatus         :: !(Maybe Bool)
    , _mobUnknownSourcesStatus           :: !(Maybe Bool)
    , _mobMeid                           :: !(Maybe Text)
    , _mobDeviceId                       :: !(Maybe Text)
    , _mobFirstSync                      :: !(Maybe DateTime')
    , _mobUserAgent                      :: !(Maybe Text)
    , _mobImei                           :: !(Maybe Text)
    , _mobType                           :: !(Maybe Text)
    , _mobWifiMACAddress                 :: !(Maybe Text)
    , _mobSerialNumber                   :: !(Maybe Text)
    , _mobHardwareId                     :: !(Maybe Text)
    , _mobBasebandVersion                :: !(Maybe Text)
    , _mobSupportsWorkProFile            :: !(Maybe Bool)
    , _mobDeviceCompromisedStatus        :: !(Maybe Text)
    , _mobApplications                   :: !(Maybe [MobileDeviceApplicationsItem])
    , _mobDefaultLanguage                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mobEmail'
--
-- * 'mobStatus'
--
-- * 'mobEtag'
--
-- * 'mobResourceId'
--
-- * 'mobBuildNumber'
--
-- * 'mobManagedAccountIsOnOwnerProFile'
--
-- * 'mobLastSync'
--
-- * 'mobOtherAccountsInfo'
--
-- * 'mobKind'
--
-- * 'mobAdbStatus'
--
-- * 'mobNetworkOperator'
--
-- * 'mobKernelVersion'
--
-- * 'mobOS'
--
-- * 'mobName'
--
-- * 'mobModel'
--
-- * 'mobDeveloperOptionsStatus'
--
-- * 'mobUnknownSourcesStatus'
--
-- * 'mobMeid'
--
-- * 'mobDeviceId'
--
-- * 'mobFirstSync'
--
-- * 'mobUserAgent'
--
-- * 'mobImei'
--
-- * 'mobType'
--
-- * 'mobWifiMACAddress'
--
-- * 'mobSerialNumber'
--
-- * 'mobHardwareId'
--
-- * 'mobBasebandVersion'
--
-- * 'mobSupportsWorkProFile'
--
-- * 'mobDeviceCompromisedStatus'
--
-- * 'mobApplications'
--
-- * 'mobDefaultLanguage'
mobileDevice
    :: MobileDevice
mobileDevice =
    MobileDevice
    { _mobEmail = Nothing
    , _mobStatus = Nothing
    , _mobEtag = Nothing
    , _mobResourceId = Nothing
    , _mobBuildNumber = Nothing
    , _mobManagedAccountIsOnOwnerProFile = Nothing
    , _mobLastSync = Nothing
    , _mobOtherAccountsInfo = Nothing
    , _mobKind = "admin#directory#mobiledevice"
    , _mobAdbStatus = Nothing
    , _mobNetworkOperator = Nothing
    , _mobKernelVersion = Nothing
    , _mobOS = Nothing
    , _mobName = Nothing
    , _mobModel = Nothing
    , _mobDeveloperOptionsStatus = Nothing
    , _mobUnknownSourcesStatus = Nothing
    , _mobMeid = Nothing
    , _mobDeviceId = Nothing
    , _mobFirstSync = Nothing
    , _mobUserAgent = Nothing
    , _mobImei = Nothing
    , _mobType = Nothing
    , _mobWifiMACAddress = Nothing
    , _mobSerialNumber = Nothing
    , _mobHardwareId = Nothing
    , _mobBasebandVersion = Nothing
    , _mobSupportsWorkProFile = Nothing
    , _mobDeviceCompromisedStatus = Nothing
    , _mobApplications = Nothing
    , _mobDefaultLanguage = Nothing
    }

-- | List of owner user\'s email addresses (Read-only)
mobEmail :: Lens' MobileDevice [Text]
mobEmail
  = lens _mobEmail (\ s a -> s{_mobEmail = a}) .
      _Default
      . _Coerce

-- | Status of the device (Read-only)
mobStatus :: Lens' MobileDevice (Maybe Text)
mobStatus
  = lens _mobStatus (\ s a -> s{_mobStatus = a})

-- | ETag of the resource.
mobEtag :: Lens' MobileDevice (Maybe Text)
mobEtag = lens _mobEtag (\ s a -> s{_mobEtag = a})

-- | Unique identifier of Mobile Device (Read-only)
mobResourceId :: Lens' MobileDevice (Maybe Text)
mobResourceId
  = lens _mobResourceId
      (\ s a -> s{_mobResourceId = a})

-- | Mobile Device Build number (Read-only)
mobBuildNumber :: Lens' MobileDevice (Maybe Text)
mobBuildNumber
  = lens _mobBuildNumber
      (\ s a -> s{_mobBuildNumber = a})

-- | Boolean indicating if this account is on owner\/primary profile or not
-- (Read-only)
mobManagedAccountIsOnOwnerProFile :: Lens' MobileDevice (Maybe Bool)
mobManagedAccountIsOnOwnerProFile
  = lens _mobManagedAccountIsOnOwnerProFile
      (\ s a -> s{_mobManagedAccountIsOnOwnerProFile = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
mobLastSync :: Lens' MobileDevice (Maybe UTCTime)
mobLastSync
  = lens _mobLastSync (\ s a -> s{_mobLastSync = a}) .
      mapping _DateTime

-- | List of accounts added on device (Read-only)
mobOtherAccountsInfo :: Lens' MobileDevice [Text]
mobOtherAccountsInfo
  = lens _mobOtherAccountsInfo
      (\ s a -> s{_mobOtherAccountsInfo = a})
      . _Default
      . _Coerce

-- | Kind of resource this is.
mobKind :: Lens' MobileDevice Text
mobKind = lens _mobKind (\ s a -> s{_mobKind = a})

-- | Adb (USB debugging) enabled or disabled on device (Read-only)
mobAdbStatus :: Lens' MobileDevice (Maybe Bool)
mobAdbStatus
  = lens _mobAdbStatus (\ s a -> s{_mobAdbStatus = a})

-- | Mobile Device mobile or network operator (if available) (Read-only)
mobNetworkOperator :: Lens' MobileDevice (Maybe Text)
mobNetworkOperator
  = lens _mobNetworkOperator
      (\ s a -> s{_mobNetworkOperator = a})

-- | Mobile Device Kernel version (Read-only)
mobKernelVersion :: Lens' MobileDevice (Maybe Text)
mobKernelVersion
  = lens _mobKernelVersion
      (\ s a -> s{_mobKernelVersion = a})

-- | Name of the mobile operating system
mobOS :: Lens' MobileDevice (Maybe Text)
mobOS = lens _mobOS (\ s a -> s{_mobOS = a})

-- | List of owner user\'s names (Read-only)
mobName :: Lens' MobileDevice [Text]
mobName
  = lens _mobName (\ s a -> s{_mobName = a}) . _Default
      . _Coerce

-- | Name of the model of the device
mobModel :: Lens' MobileDevice (Maybe Text)
mobModel = lens _mobModel (\ s a -> s{_mobModel = a})

-- | Developer options enabled or disabled on device (Read-only)
mobDeveloperOptionsStatus :: Lens' MobileDevice (Maybe Bool)
mobDeveloperOptionsStatus
  = lens _mobDeveloperOptionsStatus
      (\ s a -> s{_mobDeveloperOptionsStatus = a})

-- | Unknown sources enabled or disabled on device (Read-only)
mobUnknownSourcesStatus :: Lens' MobileDevice (Maybe Bool)
mobUnknownSourcesStatus
  = lens _mobUnknownSourcesStatus
      (\ s a -> s{_mobUnknownSourcesStatus = a})

-- | Mobile Device MEID number (Read-only)
mobMeid :: Lens' MobileDevice (Maybe Text)
mobMeid = lens _mobMeid (\ s a -> s{_mobMeid = a})

-- | Mobile Device serial number (Read-only)
mobDeviceId :: Lens' MobileDevice (Maybe Text)
mobDeviceId
  = lens _mobDeviceId (\ s a -> s{_mobDeviceId = a})

-- | Date and time the device was first synchronized with the policy settings
-- in the Google Apps administrator control panel (Read-only)
mobFirstSync :: Lens' MobileDevice (Maybe UTCTime)
mobFirstSync
  = lens _mobFirstSync (\ s a -> s{_mobFirstSync = a})
      . mapping _DateTime

-- | Mobile Device user agent
mobUserAgent :: Lens' MobileDevice (Maybe Text)
mobUserAgent
  = lens _mobUserAgent (\ s a -> s{_mobUserAgent = a})

-- | Mobile Device IMEI number (Read-only)
mobImei :: Lens' MobileDevice (Maybe Text)
mobImei = lens _mobImei (\ s a -> s{_mobImei = a})

-- | The type of device (Read-only)
mobType :: Lens' MobileDevice (Maybe Text)
mobType = lens _mobType (\ s a -> s{_mobType = a})

-- | Mobile Device WiFi MAC address (Read-only)
mobWifiMACAddress :: Lens' MobileDevice (Maybe Text)
mobWifiMACAddress
  = lens _mobWifiMACAddress
      (\ s a -> s{_mobWifiMACAddress = a})

-- | Mobile Device SSN or Serial Number (Read-only)
mobSerialNumber :: Lens' MobileDevice (Maybe Text)
mobSerialNumber
  = lens _mobSerialNumber
      (\ s a -> s{_mobSerialNumber = a})

-- | Mobile Device Hardware Id (Read-only)
mobHardwareId :: Lens' MobileDevice (Maybe Text)
mobHardwareId
  = lens _mobHardwareId
      (\ s a -> s{_mobHardwareId = a})

-- | Mobile Device Baseband version (Read-only)
mobBasebandVersion :: Lens' MobileDevice (Maybe Text)
mobBasebandVersion
  = lens _mobBasebandVersion
      (\ s a -> s{_mobBasebandVersion = a})

-- | Work profile supported on device (Read-only)
mobSupportsWorkProFile :: Lens' MobileDevice (Maybe Bool)
mobSupportsWorkProFile
  = lens _mobSupportsWorkProFile
      (\ s a -> s{_mobSupportsWorkProFile = a})

-- | Mobile Device compromised status (Read-only)
mobDeviceCompromisedStatus :: Lens' MobileDevice (Maybe Text)
mobDeviceCompromisedStatus
  = lens _mobDeviceCompromisedStatus
      (\ s a -> s{_mobDeviceCompromisedStatus = a})

-- | List of applications installed on Mobile Device
mobApplications :: Lens' MobileDevice [MobileDeviceApplicationsItem]
mobApplications
  = lens _mobApplications
      (\ s a -> s{_mobApplications = a})
      . _Default
      . _Coerce

-- | The default locale used on the Mobile Device (Read-only)
mobDefaultLanguage :: Lens' MobileDevice (Maybe Text)
mobDefaultLanguage
  = lens _mobDefaultLanguage
      (\ s a -> s{_mobDefaultLanguage = a})

instance FromJSON MobileDevice where
        parseJSON
          = withObject "MobileDevice"
              (\ o ->
                 MobileDevice <$>
                   (o .:? "email" .!= mempty) <*> (o .:? "status") <*>
                     (o .:? "etag")
                     <*> (o .:? "resourceId")
                     <*> (o .:? "buildNumber")
                     <*> (o .:? "managedAccountIsOnOwnerProfile")
                     <*> (o .:? "lastSync")
                     <*> (o .:? "otherAccountsInfo" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#directory#mobiledevice")
                     <*> (o .:? "adbStatus")
                     <*> (o .:? "networkOperator")
                     <*> (o .:? "kernelVersion")
                     <*> (o .:? "os")
                     <*> (o .:? "name" .!= mempty)
                     <*> (o .:? "model")
                     <*> (o .:? "developerOptionsStatus")
                     <*> (o .:? "unknownSourcesStatus")
                     <*> (o .:? "meid")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "firstSync")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "imei")
                     <*> (o .:? "type")
                     <*> (o .:? "wifiMacAddress")
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "hardwareId")
                     <*> (o .:? "basebandVersion")
                     <*> (o .:? "supportsWorkProfile")
                     <*> (o .:? "deviceCompromisedStatus")
                     <*> (o .:? "applications" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON MobileDevice where
        toJSON MobileDevice{..}
          = object
              (catMaybes
                 [("email" .=) <$> _mobEmail,
                  ("status" .=) <$> _mobStatus,
                  ("etag" .=) <$> _mobEtag,
                  ("resourceId" .=) <$> _mobResourceId,
                  ("buildNumber" .=) <$> _mobBuildNumber,
                  ("managedAccountIsOnOwnerProfile" .=) <$>
                    _mobManagedAccountIsOnOwnerProFile,
                  ("lastSync" .=) <$> _mobLastSync,
                  ("otherAccountsInfo" .=) <$> _mobOtherAccountsInfo,
                  Just ("kind" .= _mobKind),
                  ("adbStatus" .=) <$> _mobAdbStatus,
                  ("networkOperator" .=) <$> _mobNetworkOperator,
                  ("kernelVersion" .=) <$> _mobKernelVersion,
                  ("os" .=) <$> _mobOS, ("name" .=) <$> _mobName,
                  ("model" .=) <$> _mobModel,
                  ("developerOptionsStatus" .=) <$>
                    _mobDeveloperOptionsStatus,
                  ("unknownSourcesStatus" .=) <$>
                    _mobUnknownSourcesStatus,
                  ("meid" .=) <$> _mobMeid,
                  ("deviceId" .=) <$> _mobDeviceId,
                  ("firstSync" .=) <$> _mobFirstSync,
                  ("userAgent" .=) <$> _mobUserAgent,
                  ("imei" .=) <$> _mobImei, ("type" .=) <$> _mobType,
                  ("wifiMacAddress" .=) <$> _mobWifiMACAddress,
                  ("serialNumber" .=) <$> _mobSerialNumber,
                  ("hardwareId" .=) <$> _mobHardwareId,
                  ("basebandVersion" .=) <$> _mobBasebandVersion,
                  ("supportsWorkProfile" .=) <$>
                    _mobSupportsWorkProFile,
                  ("deviceCompromisedStatus" .=) <$>
                    _mobDeviceCompromisedStatus,
                  ("applications" .=) <$> _mobApplications,
                  ("defaultLanguage" .=) <$> _mobDefaultLanguage])

-- | JSON template for Member resource in Directory API.
--
-- /See:/ 'member' smart constructor.
data Member = Member
    { _memEmail :: !(Maybe Text)
    , _memEtag  :: !(Maybe Text)
    , _memKind  :: !Text
    , _memRole  :: !(Maybe Text)
    , _memId    :: !(Maybe Text)
    , _memType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'memEmail'
--
-- * 'memEtag'
--
-- * 'memKind'
--
-- * 'memRole'
--
-- * 'memId'
--
-- * 'memType'
member
    :: Member
member =
    Member
    { _memEmail = Nothing
    , _memEtag = Nothing
    , _memKind = "admin#directory#member"
    , _memRole = Nothing
    , _memId = Nothing
    , _memType = Nothing
    }

-- | Email of member (Read-only)
memEmail :: Lens' Member (Maybe Text)
memEmail = lens _memEmail (\ s a -> s{_memEmail = a})

-- | ETag of the resource.
memEtag :: Lens' Member (Maybe Text)
memEtag = lens _memEtag (\ s a -> s{_memEtag = a})

-- | Kind of resource this is.
memKind :: Lens' Member Text
memKind = lens _memKind (\ s a -> s{_memKind = a})

-- | Role of member
memRole :: Lens' Member (Maybe Text)
memRole = lens _memRole (\ s a -> s{_memRole = a})

-- | Unique identifier of customer member (Read-only) Unique identifier of
-- group (Read-only) Unique identifier of member (Read-only)
memId :: Lens' Member (Maybe Text)
memId = lens _memId (\ s a -> s{_memId = a})

-- | Type of member (Immutable)
memType :: Lens' Member (Maybe Text)
memType = lens _memType (\ s a -> s{_memType = a})

instance FromJSON Member where
        parseJSON
          = withObject "Member"
              (\ o ->
                 Member <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#member")
                     <*> (o .:? "role")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Member where
        toJSON Member{..}
          = object
              (catMaybes
                 [("email" .=) <$> _memEmail,
                  ("etag" .=) <$> _memEtag, Just ("kind" .= _memKind),
                  ("role" .=) <$> _memRole, ("id" .=) <$> _memId,
                  ("type" .=) <$> _memType])

-- | JSON template for a set of custom properties (i.e. all fields in a
-- particular schema)
--
-- /See:/ 'userCustomProperties' smart constructor.
data UserCustomProperties =
    UserCustomProperties
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserCustomProperties' with the minimum fields required to make a request.
--
userCustomProperties
    :: UserCustomProperties
userCustomProperties = UserCustomProperties

instance FromJSON UserCustomProperties where
        parseJSON
          = withObject "UserCustomProperties"
              (\ o -> pure UserCustomProperties)

instance ToJSON UserCustomProperties where
        toJSON = const (Object mempty)

-- | Template for notifications list response.
--
-- /See:/ 'notifications' smart constructor.
data Notifications = Notifications
    { _notEtag                     :: !(Maybe Text)
    , _notNextPageToken            :: !(Maybe Text)
    , _notKind                     :: !Text
    , _notItems                    :: !(Maybe [Notification])
    , _notUnreadNotificationsCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
notItems :: Lens' Notifications [Notification]
notItems
  = lens _notItems (\ s a -> s{_notItems = a}) .
      _Default
      . _Coerce

-- | Number of unread notification for the domain.
notUnreadNotificationsCount :: Lens' Notifications (Maybe Int32)
notUnreadNotificationsCount
  = lens _notUnreadNotificationsCount
      (\ s a -> s{_notUnreadNotificationsCount = a})

instance FromJSON Notifications where
        parseJSON
          = withObject "Notifications"
              (\ o ->
                 Notifications <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#notifications")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "unreadNotificationsCount"))

instance ToJSON Notifications where
        toJSON Notifications{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _notEtag,
                  ("nextPageToken" .=) <$> _notNextPageToken,
                  Just ("kind" .= _notKind),
                  ("items" .=) <$> _notItems,
                  ("unreadNotificationsCount" .=) <$>
                    _notUnreadNotificationsCount])

-- | Indexing spec for a numeric field. By default, only exact match queries
-- will be supported for numeric fields. Setting the numericIndexingSpec
-- allows range queries to be supported.
--
-- /See:/ 'schemaFieldSpecNumericIndexingSpec' smart constructor.
data SchemaFieldSpecNumericIndexingSpec = SchemaFieldSpecNumericIndexingSpec
    { _sfsnisMaxValue :: !(Maybe Double)
    , _sfsnisMinValue :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON SchemaFieldSpecNumericIndexingSpec
         where
        parseJSON
          = withObject "SchemaFieldSpecNumericIndexingSpec"
              (\ o ->
                 SchemaFieldSpecNumericIndexingSpec <$>
                   (o .:? "maxValue") <*> (o .:? "minValue"))

instance ToJSON SchemaFieldSpecNumericIndexingSpec
         where
        toJSON SchemaFieldSpecNumericIndexingSpec{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _sfsnisMaxValue,
                  ("minValue" .=) <$> _sfsnisMinValue])

-- | JSON request template for firing commands on Mobile Device in Directory
-- Devices API.
--
-- /See:/ 'mobileDeviceAction' smart constructor.
newtype MobileDeviceAction = MobileDeviceAction
    { _mdaAction :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON MobileDeviceAction where
        parseJSON
          = withObject "MobileDeviceAction"
              (\ o -> MobileDeviceAction <$> (o .:? "action"))

instance ToJSON MobileDeviceAction where
        toJSON MobileDeviceAction{..}
          = object (catMaybes [("action" .=) <$> _mdaAction])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON SchemaFieldSpec where
        parseJSON
          = withObject "SchemaFieldSpec"
              (\ o ->
                 SchemaFieldSpec <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#schema#fieldspec")
                     <*> (o .:? "numericIndexingSpec")
                     <*> (o .:? "readAccessType" .!= "ALL_DOMAIN_USERS")
                     <*> (o .:? "fieldId")
                     <*> (o .:? "indexed" .!= True)
                     <*> (o .:? "fieldType")
                     <*> (o .:? "fieldName")
                     <*> (o .:? "multiValued"))

instance ToJSON SchemaFieldSpec where
        toJSON SchemaFieldSpec{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sfsEtag, Just ("kind" .= _sfsKind),
                  ("numericIndexingSpec" .=) <$>
                    _sfsNumericIndexingSpec,
                  Just ("readAccessType" .= _sfsReadAccessType),
                  ("fieldId" .=) <$> _sfsFieldId,
                  Just ("indexed" .= _sfsIndexed),
                  ("fieldType" .=) <$> _sfsFieldType,
                  ("fieldName" .=) <$> _sfsFieldName,
                  ("multiValued" .=) <$> _sfsMultiValued])

-- | JSON response template for List Chrome OS Devices operation in Directory
-- API.
--
-- /See:/ 'chromeOSDevices' smart constructor.
data ChromeOSDevices = ChromeOSDevices
    { _cosdEtag            :: !(Maybe Text)
    , _cosdNextPageToken   :: !(Maybe Text)
    , _cosdKind            :: !Text
    , _cosdChromeosDevices :: !(Maybe [ChromeOSDevice])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeOSDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cosdEtag'
--
-- * 'cosdNextPageToken'
--
-- * 'cosdKind'
--
-- * 'cosdChromeosDevices'
chromeOSDevices
    :: ChromeOSDevices
chromeOSDevices =
    ChromeOSDevices
    { _cosdEtag = Nothing
    , _cosdNextPageToken = Nothing
    , _cosdKind = "admin#directory#chromeosdevices"
    , _cosdChromeosDevices = Nothing
    }

-- | ETag of the resource.
cosdEtag :: Lens' ChromeOSDevices (Maybe Text)
cosdEtag = lens _cosdEtag (\ s a -> s{_cosdEtag = a})

-- | Token used to access next page of this result.
cosdNextPageToken :: Lens' ChromeOSDevices (Maybe Text)
cosdNextPageToken
  = lens _cosdNextPageToken
      (\ s a -> s{_cosdNextPageToken = a})

-- | Kind of resource this is.
cosdKind :: Lens' ChromeOSDevices Text
cosdKind = lens _cosdKind (\ s a -> s{_cosdKind = a})

-- | List of Chrome OS Device objects.
cosdChromeosDevices :: Lens' ChromeOSDevices [ChromeOSDevice]
cosdChromeosDevices
  = lens _cosdChromeosDevices
      (\ s a -> s{_cosdChromeosDevices = a})
      . _Default
      . _Coerce

instance FromJSON ChromeOSDevices where
        parseJSON
          = withObject "ChromeOSDevices"
              (\ o ->
                 ChromeOSDevices <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#chromeosdevices")
                     <*> (o .:? "chromeosdevices" .!= mempty))

instance ToJSON ChromeOSDevices where
        toJSON ChromeOSDevices{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cosdEtag,
                  ("nextPageToken" .=) <$> _cosdNextPageToken,
                  Just ("kind" .= _cosdKind),
                  ("chromeosdevices" .=) <$> _cosdChromeosDevices])

-- | JSON template for an externalId entry.
--
-- /See:/ 'userExternalId' smart constructor.
data UserExternalId = UserExternalId
    { _ueiValue      :: !(Maybe Text)
    , _ueiType       :: !(Maybe Text)
    , _ueiCustomType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserExternalId where
        parseJSON
          = withObject "UserExternalId"
              (\ o ->
                 UserExternalId <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "customType"))

instance ToJSON UserExternalId where
        toJSON UserExternalId{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ueiValue,
                  ("type" .=) <$> _ueiType,
                  ("customType" .=) <$> _ueiCustomType])

--
-- /See:/ 'asps' smart constructor.
data Asps = Asps
    { _aspEtag  :: !(Maybe Text)
    , _aspKind  :: !Text
    , _aspItems :: !(Maybe [Asp])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspEtag'
--
-- * 'aspKind'
--
-- * 'aspItems'
asps
    :: Asps
asps =
    Asps
    { _aspEtag = Nothing
    , _aspKind = "admin#directory#aspList"
    , _aspItems = Nothing
    }

-- | ETag of the resource.
aspEtag :: Lens' Asps (Maybe Text)
aspEtag = lens _aspEtag (\ s a -> s{_aspEtag = a})

-- | The type of the API resource. This is always admin#directory#aspList.
aspKind :: Lens' Asps Text
aspKind = lens _aspKind (\ s a -> s{_aspKind = a})

-- | A list of ASP resources.
aspItems :: Lens' Asps [Asp]
aspItems
  = lens _aspItems (\ s a -> s{_aspItems = a}) .
      _Default
      . _Coerce

instance FromJSON Asps where
        parseJSON
          = withObject "Asps"
              (\ o ->
                 Asps <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#aspList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Asps where
        toJSON Asps{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aspEtag, Just ("kind" .= _aspKind),
                  ("items" .=) <$> _aspItems])
