{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Directory.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Directory.Types.Product where

import Network.Google.Directory.Types.Sum
import Network.Google.Prelude

-- | JSON template for a location entry.
--
-- /See:/ 'userLocation' smart constructor.
data UserLocation =
  UserLocation'
    { _ulArea :: !(Maybe Text)
    , _ulBuildingId :: !(Maybe Text)
    , _ulDeskCode :: !(Maybe Text)
    , _ulFloorName :: !(Maybe Text)
    , _ulType :: !(Maybe Text)
    , _ulCustomType :: !(Maybe Text)
    , _ulFloorSection :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulArea'
--
-- * 'ulBuildingId'
--
-- * 'ulDeskCode'
--
-- * 'ulFloorName'
--
-- * 'ulType'
--
-- * 'ulCustomType'
--
-- * 'ulFloorSection'
userLocation
    :: UserLocation
userLocation =
  UserLocation'
    { _ulArea = Nothing
    , _ulBuildingId = Nothing
    , _ulDeskCode = Nothing
    , _ulFloorName = Nothing
    , _ulType = Nothing
    , _ulCustomType = Nothing
    , _ulFloorSection = Nothing
    }


-- | Textual location. This is most useful for display purposes to concisely
-- describe the location. For example \'Mountain View, CA\', \'Near
-- Seattle\', \'US-NYC-9TH 9A209A.\'\'
ulArea :: Lens' UserLocation (Maybe Text)
ulArea = lens _ulArea (\ s a -> s{_ulArea = a})

-- | Building Identifier.
ulBuildingId :: Lens' UserLocation (Maybe Text)
ulBuildingId
  = lens _ulBuildingId (\ s a -> s{_ulBuildingId = a})

-- | Most specific textual code of individual desk location.
ulDeskCode :: Lens' UserLocation (Maybe Text)
ulDeskCode
  = lens _ulDeskCode (\ s a -> s{_ulDeskCode = a})

-- | Floor name\/number.
ulFloorName :: Lens' UserLocation (Maybe Text)
ulFloorName
  = lens _ulFloorName (\ s a -> s{_ulFloorName = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example location could be of types default and desk. In addition to
-- standard type an entry can have a custom type and can give it any name.
-- Such types should have \'custom\' as type and also have a customType
-- value.
ulType :: Lens' UserLocation (Maybe Text)
ulType = lens _ulType (\ s a -> s{_ulType = a})

-- | Custom Type.
ulCustomType :: Lens' UserLocation (Maybe Text)
ulCustomType
  = lens _ulCustomType (\ s a -> s{_ulCustomType = a})

-- | Floor section. More specific location within the floor. For example if a
-- floor is divided into sections \'A\', \'B\' and \'C\' this field would
-- identify one of those values.
ulFloorSection :: Lens' UserLocation (Maybe Text)
ulFloorSection
  = lens _ulFloorSection
      (\ s a -> s{_ulFloorSection = a})

instance FromJSON UserLocation where
        parseJSON
          = withObject "UserLocation"
              (\ o ->
                 UserLocation' <$>
                   (o .:? "area") <*> (o .:? "buildingId") <*>
                     (o .:? "deskCode")
                     <*> (o .:? "floorName")
                     <*> (o .:? "type")
                     <*> (o .:? "customType")
                     <*> (o .:? "floorSection"))

instance ToJSON UserLocation where
        toJSON UserLocation'{..}
          = object
              (catMaybes
                 [("area" .=) <$> _ulArea,
                  ("buildingId" .=) <$> _ulBuildingId,
                  ("deskCode" .=) <$> _ulDeskCode,
                  ("floorName" .=) <$> _ulFloorName,
                  ("type" .=) <$> _ulType,
                  ("customType" .=) <$> _ulCustomType,
                  ("floorSection" .=) <$> _ulFloorSection])

-- | The Directory API allows you to view, generate, and invalidate backup
-- verification codes for a user.
--
-- /See:/ 'verificationCode' smart constructor.
data VerificationCode =
  VerificationCode'
    { _vcVerificationCode :: !(Maybe Text)
    , _vcEtag :: !(Maybe Text)
    , _vcKind :: !Text
    , _vcUserId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VerificationCode'
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
-- \`admin#directory#verificationCode\`.
vcKind :: Lens' VerificationCode Text
vcKind = lens _vcKind (\ s a -> s{_vcKind = a})

-- | The obfuscated unique ID of the user.
vcUserId :: Lens' VerificationCode (Maybe Text)
vcUserId = lens _vcUserId (\ s a -> s{_vcUserId = a})

instance FromJSON VerificationCode where
        parseJSON
          = withObject "VerificationCode"
              (\ o ->
                 VerificationCode' <$>
                   (o .:? "verificationCode") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#verificationCode")
                     <*> (o .:? "userId"))

instance ToJSON VerificationCode where
        toJSON VerificationCode'{..}
          = object
              (catMaybes
                 [("verificationCode" .=) <$> _vcVerificationCode,
                  ("etag" .=) <$> _vcEtag, Just ("kind" .= _vcKind),
                  ("userId" .=) <$> _vcUserId])

-- | JSON template for Feature object in Directory API.
--
-- /See:/ 'feature' smart constructor.
data Feature =
  Feature'
    { _fEtags :: !(Maybe Text)
    , _fKind :: !Text
    , _fName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Feature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fEtags'
--
-- * 'fKind'
--
-- * 'fName'
feature
    :: Feature
feature =
  Feature'
    { _fEtags = Nothing
    , _fKind = "admin#directory#resources#features#Feature"
    , _fName = Nothing
    }


-- | ETag of the resource.
fEtags :: Lens' Feature (Maybe Text)
fEtags = lens _fEtags (\ s a -> s{_fEtags = a})

-- | Kind of resource this is.
fKind :: Lens' Feature Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The name of the feature.
fName :: Lens' Feature (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

instance FromJSON Feature where
        parseJSON
          = withObject "Feature"
              (\ o ->
                 Feature' <$>
                   (o .:? "etags") <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#features#Feature")
                     <*> (o .:? "name"))

instance ToJSON Feature where
        toJSON Feature'{..}
          = object
              (catMaybes
                 [("etags" .=) <$> _fEtags, Just ("kind" .= _fKind),
                  ("name" .=) <$> _fName])

-- | Managing your account\'s organizational units allows you to configure
-- your users\' access to services and custom settings. For more
-- information about common organizational unit tasks, see the
-- [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-org-units.html).
--
-- /See:/ 'orgUnit' smart constructor.
data OrgUnit =
  OrgUnit'
    { _ouEtag :: !(Maybe Text)
    , _ouParentOrgUnitPath :: !(Maybe Text)
    , _ouKind :: !Text
    , _ouOrgUnitPath :: !(Maybe Text)
    , _ouName :: !(Maybe Text)
    , _ouBlockInheritance :: !(Maybe Bool)
    , _ouParentOrgUnitId :: !(Maybe Text)
    , _ouDescription :: !(Maybe Text)
    , _ouOrgUnitId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  OrgUnit'
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

-- | The organizational unit\'s parent path. For example, \/corp\/sales is
-- the parent path for \/corp\/sales\/sales_support organizational unit.
-- Required, unless \`parentOrgUnitId\` is set.
ouParentOrgUnitPath :: Lens' OrgUnit (Maybe Text)
ouParentOrgUnitPath
  = lens _ouParentOrgUnitPath
      (\ s a -> s{_ouParentOrgUnitPath = a})

-- | The type of the API resource. For Orgunits resources, the value is
-- \`admin#directory#orgUnit\`.
ouKind :: Lens' OrgUnit Text
ouKind = lens _ouKind (\ s a -> s{_ouKind = a})

-- | The full path to the organizational unit. The \`orgUnitPath\` is a
-- derived property. When listed, it is derived from \`parentOrgunitPath\`
-- and organizational unit\'s \`name\`. For example, for an organizational
-- unit named \'apps\' under parent organization \'\/engineering\', the
-- orgUnitPath is \'\/engineering\/apps\'. In order to edit an
-- \`orgUnitPath\`, either update the name of the organization or the
-- \`parentOrgunitPath\`. A user\'s organizational unit determines which
-- Google Workspace services the user has access to. If the user is moved
-- to a new organization, the user\'s access changes. For more information
-- about organization structures, see the [administration help
-- center](https:\/\/support.google.com\/a\/answer\/4352075). For more
-- information about moving a user to a different organization, see [Update
-- a
-- user](\/admin-sdk\/directory\/v1\/guides\/manage-users.html#update_user).
ouOrgUnitPath :: Lens' OrgUnit (Maybe Text)
ouOrgUnitPath
  = lens _ouOrgUnitPath
      (\ s a -> s{_ouOrgUnitPath = a})

-- | The organizational unit\'s path name. For example, an organizational
-- unit\'s name within the \/corp\/support\/sales_support parent path is
-- sales_support. Required.
ouName :: Lens' OrgUnit (Maybe Text)
ouName = lens _ouName (\ s a -> s{_ouName = a})

-- | Determines if a sub-organizational unit can inherit the settings of the
-- parent organization. The default value is \`false\`, meaning a
-- sub-organizational unit inherits the settings of the nearest parent
-- organizational unit. For more information on inheritance and users in an
-- organization structure, see the [administration help
-- center](https:\/\/support.google.com\/a\/answer\/4352075).
ouBlockInheritance :: Lens' OrgUnit (Maybe Bool)
ouBlockInheritance
  = lens _ouBlockInheritance
      (\ s a -> s{_ouBlockInheritance = a})

-- | The unique ID of the parent organizational unit. Required, unless
-- \`parentOrgUnitPath\` is set.
ouParentOrgUnitId :: Lens' OrgUnit (Maybe Text)
ouParentOrgUnitId
  = lens _ouParentOrgUnitId
      (\ s a -> s{_ouParentOrgUnitId = a})

-- | Description of the organizational unit.
ouDescription :: Lens' OrgUnit (Maybe Text)
ouDescription
  = lens _ouDescription
      (\ s a -> s{_ouDescription = a})

-- | The unique ID of the organizational unit.
ouOrgUnitId :: Lens' OrgUnit (Maybe Text)
ouOrgUnitId
  = lens _ouOrgUnitId (\ s a -> s{_ouOrgUnitId = a})

instance FromJSON OrgUnit where
        parseJSON
          = withObject "OrgUnit"
              (\ o ->
                 OrgUnit' <$>
                   (o .:? "etag") <*> (o .:? "parentOrgUnitPath") <*>
                     (o .:? "kind" .!= "admin#directory#orgUnit")
                     <*> (o .:? "orgUnitPath")
                     <*> (o .:? "name")
                     <*> (o .:? "blockInheritance")
                     <*> (o .:? "parentOrgUnitId")
                     <*> (o .:? "description")
                     <*> (o .:? "orgUnitId"))

instance ToJSON OrgUnit where
        toJSON OrgUnit'{..}
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

--
-- /See:/ 'userMakeAdmin' smart constructor.
newtype UserMakeAdmin =
  UserMakeAdmin'
    { _umaStatus :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserMakeAdmin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaStatus'
userMakeAdmin
    :: UserMakeAdmin
userMakeAdmin = UserMakeAdmin' {_umaStatus = Nothing}


-- | Indicates the administrator status of the user.
umaStatus :: Lens' UserMakeAdmin (Maybe Bool)
umaStatus
  = lens _umaStatus (\ s a -> s{_umaStatus = a})

instance FromJSON UserMakeAdmin where
        parseJSON
          = withObject "UserMakeAdmin"
              (\ o -> UserMakeAdmin' <$> (o .:? "status"))

instance ToJSON UserMakeAdmin where
        toJSON UserMakeAdmin'{..}
          = object (catMaybes [("status" .=) <$> _umaStatus])

-- | JSON template for About (notes) of a user in Directory API.
--
-- /See:/ 'userAbout' smart constructor.
data UserAbout =
  UserAbout'
    { _uaValue :: !(Maybe Text)
    , _uaContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserAbout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaValue'
--
-- * 'uaContentType'
userAbout
    :: UserAbout
userAbout = UserAbout' {_uaValue = Nothing, _uaContentType = Nothing}


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
                 UserAbout' <$>
                   (o .:? "value") <*> (o .:? "contentType"))

instance ToJSON UserAbout where
        toJSON UserAbout'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uaValue,
                  ("contentType" .=) <$> _uaContentType])

-- | Response for listing printers.
--
-- /See:/ 'listPrintersResponse' smart constructor.
data ListPrintersResponse =
  ListPrintersResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprPrinters :: !(Maybe [Printer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPrintersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextPageToken'
--
-- * 'lprPrinters'
listPrintersResponse
    :: ListPrintersResponse
listPrintersResponse =
  ListPrintersResponse' {_lprNextPageToken = Nothing, _lprPrinters = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lprNextPageToken :: Lens' ListPrintersResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

-- | List of printers. If \`org_unit_id\` was given in the request, then only
-- printers visible for this OU will be returned. If \`org_unit_id\` was
-- given in the request, then all printers will be returned.
lprPrinters :: Lens' ListPrintersResponse [Printer]
lprPrinters
  = lens _lprPrinters (\ s a -> s{_lprPrinters = a}) .
      _Default
      . _Coerce

instance FromJSON ListPrintersResponse where
        parseJSON
          = withObject "ListPrintersResponse"
              (\ o ->
                 ListPrintersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "printers" .!= mempty))

instance ToJSON ListPrintersResponse where
        toJSON ListPrintersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("printers" .=) <$> _lprPrinters])

--
-- /See:/ 'privileges' smart constructor.
data Privileges =
  Privileges'
    { _pEtag :: !(Maybe Text)
    , _pKind :: !Text
    , _pItems :: !(Maybe [Privilege])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Privileges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pKind'
--
-- * 'pItems'
privileges
    :: Privileges
privileges =
  Privileges'
    {_pEtag = Nothing, _pKind = "admin#directory#privileges", _pItems = Nothing}


-- | ETag of the resource.
pEtag :: Lens' Privileges (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The type of the API resource. This is always
-- \`admin#directory#privileges\`.
pKind :: Lens' Privileges Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | A list of Privilege resources.
pItems :: Lens' Privileges [Privilege]
pItems
  = lens _pItems (\ s a -> s{_pItems = a}) . _Default .
      _Coerce

instance FromJSON Privileges where
        parseJSON
          = withObject "Privileges"
              (\ o ->
                 Privileges' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#privileges")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Privileges where
        toJSON Privileges'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag, Just ("kind" .= _pKind),
                  ("items" .=) <$> _pItems])

--
-- /See:/ 'groups' smart constructor.
data Groups =
  Groups'
    { _gGroups :: !(Maybe [Group])
    , _gEtag :: !(Maybe Text)
    , _gNextPageToken :: !(Maybe Text)
    , _gKind :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Groups'
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
                 Groups' <$>
                   (o .:? "groups" .!= mempty) <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "admin#directory#groups"))

instance ToJSON Groups where
        toJSON Groups'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _gGroups, ("etag" .=) <$> _gEtag,
                  ("nextPageToken" .=) <$> _gNextPageToken,
                  Just ("kind" .= _gKind)])

--
-- /See:/ 'roleAssignments' smart constructor.
data RoleAssignments =
  RoleAssignments'
    { _raEtag :: !(Maybe Text)
    , _raNextPageToken :: !(Maybe Text)
    , _raKind :: !Text
    , _raItems :: !(Maybe [RoleAssignment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raEtag'
--
-- * 'raNextPageToken'
--
-- * 'raKind'
--
-- * 'raItems'
roleAssignments
    :: RoleAssignments
roleAssignments =
  RoleAssignments'
    { _raEtag = Nothing
    , _raNextPageToken = Nothing
    , _raKind = "admin#directory#roleAssignments"
    , _raItems = Nothing
    }


-- | ETag of the resource.
raEtag :: Lens' RoleAssignments (Maybe Text)
raEtag = lens _raEtag (\ s a -> s{_raEtag = a})

raNextPageToken :: Lens' RoleAssignments (Maybe Text)
raNextPageToken
  = lens _raNextPageToken
      (\ s a -> s{_raNextPageToken = a})

-- | The type of the API resource. This is always
-- \`admin#directory#roleAssignments\`.
raKind :: Lens' RoleAssignments Text
raKind = lens _raKind (\ s a -> s{_raKind = a})

-- | A list of RoleAssignment resources.
raItems :: Lens' RoleAssignments [RoleAssignment]
raItems
  = lens _raItems (\ s a -> s{_raItems = a}) . _Default
      . _Coerce

instance FromJSON RoleAssignments where
        parseJSON
          = withObject "RoleAssignments"
              (\ o ->
                 RoleAssignments' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#roleAssignments")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON RoleAssignments where
        toJSON RoleAssignments'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _raEtag,
                  ("nextPageToken" .=) <$> _raNextPageToken,
                  Just ("kind" .= _raKind), ("items" .=) <$> _raItems])

--
-- /See:/ 'privilege' smart constructor.
data Privilege =
  Privilege'
    { _priEtag :: !(Maybe Text)
    , _priIsOuScopable :: !(Maybe Bool)
    , _priKind :: !Text
    , _priServiceName :: !(Maybe Text)
    , _priServiceId :: !(Maybe Text)
    , _priPrivilegeName :: !(Maybe Text)
    , _priChildPrivileges :: !(Maybe [Privilege])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Privilege' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'priEtag'
--
-- * 'priIsOuScopable'
--
-- * 'priKind'
--
-- * 'priServiceName'
--
-- * 'priServiceId'
--
-- * 'priPrivilegeName'
--
-- * 'priChildPrivileges'
privilege
    :: Privilege
privilege =
  Privilege'
    { _priEtag = Nothing
    , _priIsOuScopable = Nothing
    , _priKind = "admin#directory#privilege"
    , _priServiceName = Nothing
    , _priServiceId = Nothing
    , _priPrivilegeName = Nothing
    , _priChildPrivileges = Nothing
    }


-- | ETag of the resource.
priEtag :: Lens' Privilege (Maybe Text)
priEtag = lens _priEtag (\ s a -> s{_priEtag = a})

-- | If the privilege can be restricted to an organization unit.
priIsOuScopable :: Lens' Privilege (Maybe Bool)
priIsOuScopable
  = lens _priIsOuScopable
      (\ s a -> s{_priIsOuScopable = a})

-- | The type of the API resource. This is always
-- \`admin#directory#privilege\`.
priKind :: Lens' Privilege Text
priKind = lens _priKind (\ s a -> s{_priKind = a})

-- | The name of the service this privilege is for.
priServiceName :: Lens' Privilege (Maybe Text)
priServiceName
  = lens _priServiceName
      (\ s a -> s{_priServiceName = a})

-- | The obfuscated ID of the service this privilege is for. This value is
-- returned with
-- [\`Privileges.list()\`](\/admin-sdk\/directory\/v1\/reference\/privileges\/list).
priServiceId :: Lens' Privilege (Maybe Text)
priServiceId
  = lens _priServiceId (\ s a -> s{_priServiceId = a})

-- | The name of the privilege.
priPrivilegeName :: Lens' Privilege (Maybe Text)
priPrivilegeName
  = lens _priPrivilegeName
      (\ s a -> s{_priPrivilegeName = a})

-- | A list of child privileges. Privileges for a service form a tree. Each
-- privilege can have a list of child privileges; this list is empty for a
-- leaf privilege.
priChildPrivileges :: Lens' Privilege [Privilege]
priChildPrivileges
  = lens _priChildPrivileges
      (\ s a -> s{_priChildPrivileges = a})
      . _Default
      . _Coerce

instance FromJSON Privilege where
        parseJSON
          = withObject "Privilege"
              (\ o ->
                 Privilege' <$>
                   (o .:? "etag") <*> (o .:? "isOuScopable") <*>
                     (o .:? "kind" .!= "admin#directory#privilege")
                     <*> (o .:? "serviceName")
                     <*> (o .:? "serviceId")
                     <*> (o .:? "privilegeName")
                     <*> (o .:? "childPrivileges" .!= mempty))

instance ToJSON Privilege where
        toJSON Privilege'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _priEtag,
                  ("isOuScopable" .=) <$> _priIsOuScopable,
                  Just ("kind" .= _priKind),
                  ("serviceName" .=) <$> _priServiceName,
                  ("serviceId" .=) <$> _priServiceId,
                  ("privilegeName" .=) <$> _priPrivilegeName,
                  ("childPrivileges" .=) <$> _priChildPrivileges])

--
-- /See:/ 'roles' smart constructor.
data Roles =
  Roles'
    { _rEtag :: !(Maybe Text)
    , _rNextPageToken :: !(Maybe Text)
    , _rKind :: !Text
    , _rItems :: !(Maybe [Role])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Roles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEtag'
--
-- * 'rNextPageToken'
--
-- * 'rKind'
--
-- * 'rItems'
roles
    :: Roles
roles =
  Roles'
    { _rEtag = Nothing
    , _rNextPageToken = Nothing
    , _rKind = "admin#directory#roles"
    , _rItems = Nothing
    }


-- | ETag of the resource.
rEtag :: Lens' Roles (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

rNextPageToken :: Lens' Roles (Maybe Text)
rNextPageToken
  = lens _rNextPageToken
      (\ s a -> s{_rNextPageToken = a})

-- | The type of the API resource. This is always \`admin#directory#roles\`.
rKind :: Lens' Roles Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | A list of Role resources.
rItems :: Lens' Roles [Role]
rItems
  = lens _rItems (\ s a -> s{_rItems = a}) . _Default .
      _Coerce

instance FromJSON Roles where
        parseJSON
          = withObject "Roles"
              (\ o ->
                 Roles' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#roles")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Roles where
        toJSON Roles'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rEtag,
                  ("nextPageToken" .=) <$> _rNextPageToken,
                  Just ("kind" .= _rKind), ("items" .=) <$> _rItems])

--
-- /See:/ 'chromeOSDeviceDiskVolumeReportsItem' smart constructor.
newtype ChromeOSDeviceDiskVolumeReportsItem =
  ChromeOSDeviceDiskVolumeReportsItem'
    { _coddvriVolumeInfo :: Maybe [ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceDiskVolumeReportsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coddvriVolumeInfo'
chromeOSDeviceDiskVolumeReportsItem
    :: ChromeOSDeviceDiskVolumeReportsItem
chromeOSDeviceDiskVolumeReportsItem =
  ChromeOSDeviceDiskVolumeReportsItem' {_coddvriVolumeInfo = Nothing}


-- | Disk volumes
coddvriVolumeInfo :: Lens' ChromeOSDeviceDiskVolumeReportsItem [ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem]
coddvriVolumeInfo
  = lens _coddvriVolumeInfo
      (\ s a -> s{_coddvriVolumeInfo = a})
      . _Default
      . _Coerce

instance FromJSON ChromeOSDeviceDiskVolumeReportsItem
         where
        parseJSON
          = withObject "ChromeOSDeviceDiskVolumeReportsItem"
              (\ o ->
                 ChromeOSDeviceDiskVolumeReportsItem' <$>
                   (o .:? "volumeInfo" .!= mempty))

instance ToJSON ChromeOSDeviceDiskVolumeReportsItem
         where
        toJSON ChromeOSDeviceDiskVolumeReportsItem'{..}
          = object
              (catMaybes
                 [("volumeInfo" .=) <$> _coddvriVolumeInfo])

-- | JSON template for address.
--
-- /See:/ 'userAddress' smart constructor.
data UserAddress =
  UserAddress'
    { _uaStreetAddress :: !(Maybe Text)
    , _uaPoBox :: !(Maybe Text)
    , _uaCountry :: !(Maybe Text)
    , _uaPostalCode :: !(Maybe Text)
    , _uaFormatted :: !(Maybe Text)
    , _uaExtendedAddress :: !(Maybe Text)
    , _uaLocality :: !(Maybe Text)
    , _uaPrimary :: !(Maybe Bool)
    , _uaCountryCode :: !(Maybe Text)
    , _uaRegion :: !(Maybe Text)
    , _uaType :: !(Maybe Text)
    , _uaCustomType :: !(Maybe Text)
    , _uaSourceIsStructured :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserAddress'
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
-- entry. For example address could be of home work etc. In addition to the
-- standard type an entry can have a custom type and can take any value.
-- Such type should have the CUSTOM value as type and also have a
-- customType value.
uaType :: Lens' UserAddress (Maybe Text)
uaType = lens _uaType (\ s a -> s{_uaType = a})

-- | Custom type.
uaCustomType :: Lens' UserAddress (Maybe Text)
uaCustomType
  = lens _uaCustomType (\ s a -> s{_uaCustomType = a})

-- | User supplied address was structured. Structured addresses are NOT
-- supported at this time. You might be able to write structured addresses
-- but any values will eventually be clobbered.
uaSourceIsStructured :: Lens' UserAddress (Maybe Bool)
uaSourceIsStructured
  = lens _uaSourceIsStructured
      (\ s a -> s{_uaSourceIsStructured = a})

instance FromJSON UserAddress where
        parseJSON
          = withObject "UserAddress"
              (\ o ->
                 UserAddress' <$>
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
        toJSON UserAddress'{..}
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

-- | A request for issuing a command.
--
-- /See:/ 'directoryChromeosDevicesIssueCommandRequest' smart constructor.
data DirectoryChromeosDevicesIssueCommandRequest =
  DirectoryChromeosDevicesIssueCommandRequest'
    { _dcdicrPayload :: !(Maybe Text)
    , _dcdicrCommandType :: !(Maybe DirectoryChromeosDevicesIssueCommandRequestCommandType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectoryChromeosDevicesIssueCommandRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcdicrPayload'
--
-- * 'dcdicrCommandType'
directoryChromeosDevicesIssueCommandRequest
    :: DirectoryChromeosDevicesIssueCommandRequest
directoryChromeosDevicesIssueCommandRequest =
  DirectoryChromeosDevicesIssueCommandRequest'
    {_dcdicrPayload = Nothing, _dcdicrCommandType = Nothing}


-- | The payload for the command, provide it only if command supports it. The
-- following commands support adding payload: - SET_VOLUME: Payload is a
-- stringified JSON object in the form: { \"volume\": 50 }. The volume has
-- to be an integer in the range [0,100].
dcdicrPayload :: Lens' DirectoryChromeosDevicesIssueCommandRequest (Maybe Text)
dcdicrPayload
  = lens _dcdicrPayload
      (\ s a -> s{_dcdicrPayload = a})

-- | The type of command.
dcdicrCommandType :: Lens' DirectoryChromeosDevicesIssueCommandRequest (Maybe DirectoryChromeosDevicesIssueCommandRequestCommandType)
dcdicrCommandType
  = lens _dcdicrCommandType
      (\ s a -> s{_dcdicrCommandType = a})

instance FromJSON
           DirectoryChromeosDevicesIssueCommandRequest
         where
        parseJSON
          = withObject
              "DirectoryChromeosDevicesIssueCommandRequest"
              (\ o ->
                 DirectoryChromeosDevicesIssueCommandRequest' <$>
                   (o .:? "payload") <*> (o .:? "commandType"))

instance ToJSON
           DirectoryChromeosDevicesIssueCommandRequest
         where
        toJSON
          DirectoryChromeosDevicesIssueCommandRequest'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _dcdicrPayload,
                  ("commandType" .=) <$> _dcdicrCommandType])

--
-- /See:/ 'customerPostalAddress' smart constructor.
data CustomerPostalAddress =
  CustomerPostalAddress'
    { _cpaOrganizationName :: !(Maybe Text)
    , _cpaPostalCode :: !(Maybe Text)
    , _cpaAddressLine1 :: !(Maybe Text)
    , _cpaLocality :: !(Maybe Text)
    , _cpaContactName :: !(Maybe Text)
    , _cpaAddressLine2 :: !(Maybe Text)
    , _cpaCountryCode :: !(Maybe Text)
    , _cpaRegion :: !(Maybe Text)
    , _cpaAddressLine3 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerPostalAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpaOrganizationName'
--
-- * 'cpaPostalCode'
--
-- * 'cpaAddressLine1'
--
-- * 'cpaLocality'
--
-- * 'cpaContactName'
--
-- * 'cpaAddressLine2'
--
-- * 'cpaCountryCode'
--
-- * 'cpaRegion'
--
-- * 'cpaAddressLine3'
customerPostalAddress
    :: CustomerPostalAddress
customerPostalAddress =
  CustomerPostalAddress'
    { _cpaOrganizationName = Nothing
    , _cpaPostalCode = Nothing
    , _cpaAddressLine1 = Nothing
    , _cpaLocality = Nothing
    , _cpaContactName = Nothing
    , _cpaAddressLine2 = Nothing
    , _cpaCountryCode = Nothing
    , _cpaRegion = Nothing
    , _cpaAddressLine3 = Nothing
    }


-- | The company or company division name.
cpaOrganizationName :: Lens' CustomerPostalAddress (Maybe Text)
cpaOrganizationName
  = lens _cpaOrganizationName
      (\ s a -> s{_cpaOrganizationName = a})

-- | The postal code. A postalCode example is a postal zip code such as
-- \`10009\`. This is in accordance with - http:
-- \/\/portablecontacts.net\/draft-spec.html#address_element.
cpaPostalCode :: Lens' CustomerPostalAddress (Maybe Text)
cpaPostalCode
  = lens _cpaPostalCode
      (\ s a -> s{_cpaPostalCode = a})

-- | A customer\'s physical address. The address can be composed of one to
-- three lines.
cpaAddressLine1 :: Lens' CustomerPostalAddress (Maybe Text)
cpaAddressLine1
  = lens _cpaAddressLine1
      (\ s a -> s{_cpaAddressLine1 = a})

-- | Name of the locality. An example of a locality value is the city of
-- \`San Francisco\`.
cpaLocality :: Lens' CustomerPostalAddress (Maybe Text)
cpaLocality
  = lens _cpaLocality (\ s a -> s{_cpaLocality = a})

-- | The customer contact\'s name.
cpaContactName :: Lens' CustomerPostalAddress (Maybe Text)
cpaContactName
  = lens _cpaContactName
      (\ s a -> s{_cpaContactName = a})

-- | Address line 2 of the address.
cpaAddressLine2 :: Lens' CustomerPostalAddress (Maybe Text)
cpaAddressLine2
  = lens _cpaAddressLine2
      (\ s a -> s{_cpaAddressLine2 = a})

-- | This is a required property. For \`countryCode\` information see the
-- [ISO 3166 country code
-- elements](https:\/\/www.iso.org\/iso\/country_codes.htm).
cpaCountryCode :: Lens' CustomerPostalAddress (Maybe Text)
cpaCountryCode
  = lens _cpaCountryCode
      (\ s a -> s{_cpaCountryCode = a})

-- | Name of the region. An example of a region value is \`NY\` for the state
-- of New York.
cpaRegion :: Lens' CustomerPostalAddress (Maybe Text)
cpaRegion
  = lens _cpaRegion (\ s a -> s{_cpaRegion = a})

-- | Address line 3 of the address.
cpaAddressLine3 :: Lens' CustomerPostalAddress (Maybe Text)
cpaAddressLine3
  = lens _cpaAddressLine3
      (\ s a -> s{_cpaAddressLine3 = a})

instance FromJSON CustomerPostalAddress where
        parseJSON
          = withObject "CustomerPostalAddress"
              (\ o ->
                 CustomerPostalAddress' <$>
                   (o .:? "organizationName") <*> (o .:? "postalCode")
                     <*> (o .:? "addressLine1")
                     <*> (o .:? "locality")
                     <*> (o .:? "contactName")
                     <*> (o .:? "addressLine2")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "region")
                     <*> (o .:? "addressLine3"))

instance ToJSON CustomerPostalAddress where
        toJSON CustomerPostalAddress'{..}
          = object
              (catMaybes
                 [("organizationName" .=) <$> _cpaOrganizationName,
                  ("postalCode" .=) <$> _cpaPostalCode,
                  ("addressLine1" .=) <$> _cpaAddressLine1,
                  ("locality" .=) <$> _cpaLocality,
                  ("contactName" .=) <$> _cpaContactName,
                  ("addressLine2" .=) <$> _cpaAddressLine2,
                  ("countryCode" .=) <$> _cpaCountryCode,
                  ("region" .=) <$> _cpaRegion,
                  ("addressLine3" .=) <$> _cpaAddressLine3])

-- | Defines an assignment of a role.
--
-- /See:/ 'roleAssignment' smart constructor.
data RoleAssignment =
  RoleAssignment'
    { _rolEtag :: !(Maybe Text)
    , _rolScopeType :: !(Maybe Text)
    , _rolKind :: !Text
    , _rolAssignedTo :: !(Maybe Text)
    , _rolRoleId :: !(Maybe (Textual Int64))
    , _rolRoleAssignmentId :: !(Maybe (Textual Int64))
    , _rolOrgUnitId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolEtag'
--
-- * 'rolScopeType'
--
-- * 'rolKind'
--
-- * 'rolAssignedTo'
--
-- * 'rolRoleId'
--
-- * 'rolRoleAssignmentId'
--
-- * 'rolOrgUnitId'
roleAssignment
    :: RoleAssignment
roleAssignment =
  RoleAssignment'
    { _rolEtag = Nothing
    , _rolScopeType = Nothing
    , _rolKind = "admin#directory#roleAssignment"
    , _rolAssignedTo = Nothing
    , _rolRoleId = Nothing
    , _rolRoleAssignmentId = Nothing
    , _rolOrgUnitId = Nothing
    }


-- | ETag of the resource.
rolEtag :: Lens' RoleAssignment (Maybe Text)
rolEtag = lens _rolEtag (\ s a -> s{_rolEtag = a})

-- | The scope in which this role is assigned.
rolScopeType :: Lens' RoleAssignment (Maybe Text)
rolScopeType
  = lens _rolScopeType (\ s a -> s{_rolScopeType = a})

-- | The type of the API resource. This is always
-- \`admin#directory#roleAssignment\`.
rolKind :: Lens' RoleAssignment Text
rolKind = lens _rolKind (\ s a -> s{_rolKind = a})

-- | The unique ID of the user this role is assigned to.
rolAssignedTo :: Lens' RoleAssignment (Maybe Text)
rolAssignedTo
  = lens _rolAssignedTo
      (\ s a -> s{_rolAssignedTo = a})

-- | The ID of the role that is assigned.
rolRoleId :: Lens' RoleAssignment (Maybe Int64)
rolRoleId
  = lens _rolRoleId (\ s a -> s{_rolRoleId = a}) .
      mapping _Coerce

-- | ID of this roleAssignment.
rolRoleAssignmentId :: Lens' RoleAssignment (Maybe Int64)
rolRoleAssignmentId
  = lens _rolRoleAssignmentId
      (\ s a -> s{_rolRoleAssignmentId = a})
      . mapping _Coerce

-- | If the role is restricted to an organization unit, this contains the ID
-- for the organization unit the exercise of this role is restricted to.
rolOrgUnitId :: Lens' RoleAssignment (Maybe Text)
rolOrgUnitId
  = lens _rolOrgUnitId (\ s a -> s{_rolOrgUnitId = a})

instance FromJSON RoleAssignment where
        parseJSON
          = withObject "RoleAssignment"
              (\ o ->
                 RoleAssignment' <$>
                   (o .:? "etag") <*> (o .:? "scopeType") <*>
                     (o .:? "kind" .!= "admin#directory#roleAssignment")
                     <*> (o .:? "assignedTo")
                     <*> (o .:? "roleId")
                     <*> (o .:? "roleAssignmentId")
                     <*> (o .:? "orgUnitId"))

instance ToJSON RoleAssignment where
        toJSON RoleAssignment'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rolEtag,
                  ("scopeType" .=) <$> _rolScopeType,
                  Just ("kind" .= _rolKind),
                  ("assignedTo" .=) <$> _rolAssignedTo,
                  ("roleId" .=) <$> _rolRoleId,
                  ("roleAssignmentId" .=) <$> _rolRoleAssignmentId,
                  ("orgUnitId" .=) <$> _rolOrgUnitId])

-- | Google Groups provide your users the ability to send messages to groups
-- of people using the group\'s email address. For more information about
-- common tasks, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-groups).
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _groEmail :: !(Maybe Text)
    , _groEtag :: !(Maybe Text)
    , _groDirectMembersCount :: !(Maybe (Textual Int64))
    , _groKind :: !Text
    , _groAliases :: !(Maybe [Text])
    , _groNonEditableAliases :: !(Maybe [Text])
    , _groName :: !(Maybe Text)
    , _groAdminCreated :: !(Maybe Bool)
    , _groId :: !(Maybe Text)
    , _groDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Group'
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


-- | The group\'s email address. If your account has multiple domains, select
-- the appropriate domain for the email address. The \`email\` must be
-- unique. This property is required when creating a group. Group email
-- addresses are subject to the same character usage rules as usernames,
-- see the [help center](https:\/\/support.google.com\/a\/answer\/9193374)
-- for details.
groEmail :: Lens' Group (Maybe Text)
groEmail = lens _groEmail (\ s a -> s{_groEmail = a})

-- | ETag of the resource.
groEtag :: Lens' Group (Maybe Text)
groEtag = lens _groEtag (\ s a -> s{_groEtag = a})

-- | The number of users that are direct members of the group. If a group is
-- a member (child) of this group (the parent), members of the child group
-- are not counted in the \`directMembersCount\` property of the parent
-- group.
groDirectMembersCount :: Lens' Group (Maybe Int64)
groDirectMembersCount
  = lens _groDirectMembersCount
      (\ s a -> s{_groDirectMembersCount = a})
      . mapping _Coerce

-- | The type of the API resource. For Groups resources, the value is
-- \`admin#directory#group\`.
groKind :: Lens' Group Text
groKind = lens _groKind (\ s a -> s{_groKind = a})

-- | List of a group\'s alias email addresses.
groAliases :: Lens' Group [Text]
groAliases
  = lens _groAliases (\ s a -> s{_groAliases = a}) .
      _Default
      . _Coerce

-- | List of the group\'s non-editable alias email addresses that are outside
-- of the account\'s primary domain or subdomains. These are functioning
-- email addresses used by the group. This is a read-only property returned
-- in the API\'s response for a group. If edited in a group\'s POST or PUT
-- request, the edit is ignored by the API service.
groNonEditableAliases :: Lens' Group [Text]
groNonEditableAliases
  = lens _groNonEditableAliases
      (\ s a -> s{_groNonEditableAliases = a})
      . _Default
      . _Coerce

-- | The group\'s display name.
groName :: Lens' Group (Maybe Text)
groName = lens _groName (\ s a -> s{_groName = a})

-- | Value is \`true\` if this group was created by an administrator rather
-- than a user.
groAdminCreated :: Lens' Group (Maybe Bool)
groAdminCreated
  = lens _groAdminCreated
      (\ s a -> s{_groAdminCreated = a})

-- | The unique ID of a group. A group \`id\` can be used as a group request
-- URI\'s \`groupKey\`.
groId :: Lens' Group (Maybe Text)
groId = lens _groId (\ s a -> s{_groId = a})

-- | An extended description to help users determine the purpose of a group.
-- For example, you can include information about who should join the
-- group, the types of messages to send to the group, links to FAQs about
-- the group, or related groups. Maximum length is \`4,096\` characters.
groDescription :: Lens' Group (Maybe Text)
groDescription
  = lens _groDescription
      (\ s a -> s{_groDescription = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
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
        toJSON Group'{..}
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

-- | Google Chrome devices run on the [Chrome
-- OS](https:\/\/support.google.com\/chromeos). For more information about
-- common API tasks, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-chrome-devices).
--
-- /See:/ 'chromeOSDevice' smart constructor.
data ChromeOSDevice =
  ChromeOSDevice'
    { _codStatus :: !(Maybe Text)
    , _codEtag :: !(Maybe Text)
    , _codCPUStatusReports :: !(Maybe [ChromeOSDeviceCPUStatusReportsItem])
    , _codAnnotatedUser :: !(Maybe Text)
    , _codSystemRamFreeReports :: !(Maybe [ChromeOSDeviceSystemRamFreeReportsItem])
    , _codDockMACAddress :: !(Maybe Text)
    , _codPlatformVersion :: !(Maybe Text)
    , _codLastSync :: !(Maybe DateTime')
    , _codActiveTimeRanges :: !(Maybe [ChromeOSDeviceActiveTimeRangesItem])
    , _codEthernetMACAddress0 :: !(Maybe Text)
    , _codKind :: !Text
    , _codEthernetMACAddress :: !(Maybe Text)
    , _codLastEnrollmentTime :: !(Maybe DateTime')
    , _codAnnotatedLocation :: !(Maybe Text)
    , _codMACAddress :: !(Maybe Text)
    , _codOrgUnitPath :: !(Maybe Text)
    , _codRecentUsers :: !(Maybe [ChromeOSDeviceRecentUsersItem])
    , _codSupportEndDate :: !(Maybe DateTime')
    , _codModel :: !(Maybe Text)
    , _codLastKnownNetwork :: !(Maybe [ChromeOSDeviceLastKnownNetworkItem])
    , _codWillAutoRenew :: !(Maybe Bool)
    , _codMeid :: !(Maybe Text)
    , _codDeviceFiles :: !(Maybe [ChromeOSDeviceDeviceFilesItem])
    , _codDeviceId :: !(Maybe Text)
    , _codBootMode :: !(Maybe Text)
    , _codTpmVersionInfo :: !(Maybe ChromeOSDeviceTpmVersionInfo)
    , _codAutoUpdateExpiration :: !(Maybe (Textual Int64))
    , _codOrderNumber :: !(Maybe Text)
    , _codDiskVolumeReports :: !(Maybe [ChromeOSDeviceDiskVolumeReportsItem])
    , _codAnnotatedAssetId :: !(Maybe Text)
    , _codNotes :: !(Maybe Text)
    , _codSerialNumber :: !(Maybe Text)
    , _codFirmwareVersion :: !(Maybe Text)
    , _codOSVersion :: !(Maybe Text)
    , _codManufactureDate :: !(Maybe Text)
    , _codScreenshotFiles :: !(Maybe [ChromeOSDeviceScreenshotFilesItem])
    , _codSystemRamTotal :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codStatus'
--
-- * 'codEtag'
--
-- * 'codCPUStatusReports'
--
-- * 'codAnnotatedUser'
--
-- * 'codSystemRamFreeReports'
--
-- * 'codDockMACAddress'
--
-- * 'codPlatformVersion'
--
-- * 'codLastSync'
--
-- * 'codActiveTimeRanges'
--
-- * 'codEthernetMACAddress0'
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
-- * 'codLastKnownNetwork'
--
-- * 'codWillAutoRenew'
--
-- * 'codMeid'
--
-- * 'codDeviceFiles'
--
-- * 'codDeviceId'
--
-- * 'codBootMode'
--
-- * 'codTpmVersionInfo'
--
-- * 'codAutoUpdateExpiration'
--
-- * 'codOrderNumber'
--
-- * 'codDiskVolumeReports'
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
--
-- * 'codManufactureDate'
--
-- * 'codScreenshotFiles'
--
-- * 'codSystemRamTotal'
chromeOSDevice
    :: ChromeOSDevice
chromeOSDevice =
  ChromeOSDevice'
    { _codStatus = Nothing
    , _codEtag = Nothing
    , _codCPUStatusReports = Nothing
    , _codAnnotatedUser = Nothing
    , _codSystemRamFreeReports = Nothing
    , _codDockMACAddress = Nothing
    , _codPlatformVersion = Nothing
    , _codLastSync = Nothing
    , _codActiveTimeRanges = Nothing
    , _codEthernetMACAddress0 = Nothing
    , _codKind = "admin#directory#chromeosdevice"
    , _codEthernetMACAddress = Nothing
    , _codLastEnrollmentTime = Nothing
    , _codAnnotatedLocation = Nothing
    , _codMACAddress = Nothing
    , _codOrgUnitPath = Nothing
    , _codRecentUsers = Nothing
    , _codSupportEndDate = Nothing
    , _codModel = Nothing
    , _codLastKnownNetwork = Nothing
    , _codWillAutoRenew = Nothing
    , _codMeid = Nothing
    , _codDeviceFiles = Nothing
    , _codDeviceId = Nothing
    , _codBootMode = Nothing
    , _codTpmVersionInfo = Nothing
    , _codAutoUpdateExpiration = Nothing
    , _codOrderNumber = Nothing
    , _codDiskVolumeReports = Nothing
    , _codAnnotatedAssetId = Nothing
    , _codNotes = Nothing
    , _codSerialNumber = Nothing
    , _codFirmwareVersion = Nothing
    , _codOSVersion = Nothing
    , _codManufactureDate = Nothing
    , _codScreenshotFiles = Nothing
    , _codSystemRamTotal = Nothing
    }


-- | The status of the device.
codStatus :: Lens' ChromeOSDevice (Maybe Text)
codStatus
  = lens _codStatus (\ s a -> s{_codStatus = a})

-- | ETag of the resource.
codEtag :: Lens' ChromeOSDevice (Maybe Text)
codEtag = lens _codEtag (\ s a -> s{_codEtag = a})

-- | Reports of CPU utilization and temperature (Read-only)
codCPUStatusReports :: Lens' ChromeOSDevice [ChromeOSDeviceCPUStatusReportsItem]
codCPUStatusReports
  = lens _codCPUStatusReports
      (\ s a -> s{_codCPUStatusReports = a})
      . _Default
      . _Coerce

-- | The user of the device as noted by the administrator. Maximum length is
-- 100 characters. Empty values are allowed.
codAnnotatedUser :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedUser
  = lens _codAnnotatedUser
      (\ s a -> s{_codAnnotatedUser = a})

-- | Reports of amounts of available RAM memory (Read-only)
codSystemRamFreeReports :: Lens' ChromeOSDevice [ChromeOSDeviceSystemRamFreeReportsItem]
codSystemRamFreeReports
  = lens _codSystemRamFreeReports
      (\ s a -> s{_codSystemRamFreeReports = a})
      . _Default
      . _Coerce

-- | (Read-only) Built-in MAC address for the docking station that the device
-- connected to. Factory sets Media access control address (MAC address)
-- assigned for use by a dock. It is reserved specifically for MAC pass
-- through device policy. The format is twelve (12) hexadecimal digits
-- without any delimiter (uppercase letters). This is only relevant for
-- some devices.
codDockMACAddress :: Lens' ChromeOSDevice (Maybe Text)
codDockMACAddress
  = lens _codDockMACAddress
      (\ s a -> s{_codDockMACAddress = a})

-- | The Chrome device\'s platform version.
codPlatformVersion :: Lens' ChromeOSDevice (Maybe Text)
codPlatformVersion
  = lens _codPlatformVersion
      (\ s a -> s{_codPlatformVersion = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the G Suite administrator control panel (Read-only)
codLastSync :: Lens' ChromeOSDevice (Maybe UTCTime)
codLastSync
  = lens _codLastSync (\ s a -> s{_codLastSync = a}) .
      mapping _DateTime

-- | List of active time ranges (Read-only).
codActiveTimeRanges :: Lens' ChromeOSDevice [ChromeOSDeviceActiveTimeRangesItem]
codActiveTimeRanges
  = lens _codActiveTimeRanges
      (\ s a -> s{_codActiveTimeRanges = a})
      . _Default
      . _Coerce

-- | (Read-only) MAC address used by the Chromebook’s internal ethernet port,
-- and for onboard network (ethernet) interface. The format is twelve (12)
-- hexadecimal digits without any delimiter (uppercase letters). This is
-- only relevant for some devices.
codEthernetMACAddress0 :: Lens' ChromeOSDevice (Maybe Text)
codEthernetMACAddress0
  = lens _codEthernetMACAddress0
      (\ s a -> s{_codEthernetMACAddress0 = a})

-- | The type of resource. For the Chromeosdevices resource, the value is
-- \`admin#directory#chromeosdevice\`.
codKind :: Lens' ChromeOSDevice Text
codKind = lens _codKind (\ s a -> s{_codKind = a})

-- | The device\'s MAC address on the ethernet network interface.
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

-- | The address or location of the device as noted by the administrator.
-- Maximum length is \`200\` characters. Empty values are allowed.
codAnnotatedLocation :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedLocation
  = lens _codAnnotatedLocation
      (\ s a -> s{_codAnnotatedLocation = a})

-- | The device\'s wireless MAC address. If the device does not have this
-- information, it is not included in the response.
codMACAddress :: Lens' ChromeOSDevice (Maybe Text)
codMACAddress
  = lens _codMACAddress
      (\ s a -> s{_codMACAddress = a})

-- | The full parent path with the organizational unit\'s name associated
-- with the device. Path names are case insensitive. If the parent
-- organizational unit is the top-level organization, it is represented as
-- a forward slash, \`\/\`. This property can be
-- [updated](\/admin-sdk\/directory\/v1\/guides\/manage-chrome-devices#update_chrome_device)
-- using the API. For more information about how to create an
-- organizational structure for your device, see the [administration help
-- center](https:\/\/support.google.com\/a\/answer\/182433).
codOrgUnitPath :: Lens' ChromeOSDevice (Maybe Text)
codOrgUnitPath
  = lens _codOrgUnitPath
      (\ s a -> s{_codOrgUnitPath = a})

-- | List of recent device users, in descending order, by last login time.
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

-- | The device\'s model information. If the device does not have this
-- information, this property is not included in the response.
codModel :: Lens' ChromeOSDevice (Maybe Text)
codModel = lens _codModel (\ s a -> s{_codModel = a})

-- | Contains last known network (Read-only)
codLastKnownNetwork :: Lens' ChromeOSDevice [ChromeOSDeviceLastKnownNetworkItem]
codLastKnownNetwork
  = lens _codLastKnownNetwork
      (\ s a -> s{_codLastKnownNetwork = a})
      . _Default
      . _Coerce

-- | Determines if the device will auto renew its support after the support
-- end date. This is a read-only property.
codWillAutoRenew :: Lens' ChromeOSDevice (Maybe Bool)
codWillAutoRenew
  = lens _codWillAutoRenew
      (\ s a -> s{_codWillAutoRenew = a})

-- | The Mobile Equipment Identifier (MEID) or the International Mobile
-- Equipment Identity (IMEI) for the 3G mobile card in a mobile device. A
-- MEID\/IMEI is typically used when adding a device to a wireless
-- carrier\'s post-pay service plan. If the device does not have this
-- information, this property is not included in the response. For more
-- information on how to export a MEID\/IMEI list, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-chrome-devices.html#export_meid).
codMeid :: Lens' ChromeOSDevice (Maybe Text)
codMeid = lens _codMeid (\ s a -> s{_codMeid = a})

-- | List of device files to download (Read-only)
codDeviceFiles :: Lens' ChromeOSDevice [ChromeOSDeviceDeviceFilesItem]
codDeviceFiles
  = lens _codDeviceFiles
      (\ s a -> s{_codDeviceFiles = a})
      . _Default
      . _Coerce

-- | The unique ID of the Chrome device.
codDeviceId :: Lens' ChromeOSDevice (Maybe Text)
codDeviceId
  = lens _codDeviceId (\ s a -> s{_codDeviceId = a})

-- | The boot mode for the device. The possible values are: * \`Verified\`:
-- The device is running a valid version of the Chrome OS. * \`Dev\`: The
-- devices\'s developer hardware switch is enabled. When booted, the device
-- has a command line shell. For an example of a developer switch, see the
-- [Chromebook developer
-- information](https:\/\/www.chromium.org\/chromium-os\/developer-information-for-chrome-os-devices\/samsung-series-5-chromebook#TOC-Developer-switch).
codBootMode :: Lens' ChromeOSDevice (Maybe Text)
codBootMode
  = lens _codBootMode (\ s a -> s{_codBootMode = a})

-- | Trusted Platform Module (TPM) (Read-only)
codTpmVersionInfo :: Lens' ChromeOSDevice (Maybe ChromeOSDeviceTpmVersionInfo)
codTpmVersionInfo
  = lens _codTpmVersionInfo
      (\ s a -> s{_codTpmVersionInfo = a})

-- | (Read-only) The timestamp after which the device will stop receiving
-- Chrome updates or support
codAutoUpdateExpiration :: Lens' ChromeOSDevice (Maybe Int64)
codAutoUpdateExpiration
  = lens _codAutoUpdateExpiration
      (\ s a -> s{_codAutoUpdateExpiration = a})
      . mapping _Coerce

-- | The device\'s order number. Only devices directly purchased from Google
-- have an order number.
codOrderNumber :: Lens' ChromeOSDevice (Maybe Text)
codOrderNumber
  = lens _codOrderNumber
      (\ s a -> s{_codOrderNumber = a})

-- | Reports of disk space and other info about mounted\/connected volumes.
codDiskVolumeReports :: Lens' ChromeOSDevice [ChromeOSDeviceDiskVolumeReportsItem]
codDiskVolumeReports
  = lens _codDiskVolumeReports
      (\ s a -> s{_codDiskVolumeReports = a})
      . _Default
      . _Coerce

-- | The asset identifier as noted by an administrator or specified during
-- enrollment.
codAnnotatedAssetId :: Lens' ChromeOSDevice (Maybe Text)
codAnnotatedAssetId
  = lens _codAnnotatedAssetId
      (\ s a -> s{_codAnnotatedAssetId = a})

-- | Notes about this device added by the administrator. This property can be
-- [searched](https:\/\/support.google.com\/chrome\/a\/answer\/1698333)
-- with the
-- [list](\/admin-sdk\/directory\/v1\/reference\/chromeosdevices\/list)
-- method\'s \`query\` parameter. Maximum length is 500 characters. Empty
-- values are allowed.
codNotes :: Lens' ChromeOSDevice (Maybe Text)
codNotes = lens _codNotes (\ s a -> s{_codNotes = a})

-- | The Chrome device serial number entered when the device was enabled.
-- This value is the same as the Admin console\'s *Serial Number* in the
-- *Chrome OS Devices* tab.
codSerialNumber :: Lens' ChromeOSDevice (Maybe Text)
codSerialNumber
  = lens _codSerialNumber
      (\ s a -> s{_codSerialNumber = a})

-- | The Chrome device\'s firmware version.
codFirmwareVersion :: Lens' ChromeOSDevice (Maybe Text)
codFirmwareVersion
  = lens _codFirmwareVersion
      (\ s a -> s{_codFirmwareVersion = a})

-- | The Chrome device\'s operating system version.
codOSVersion :: Lens' ChromeOSDevice (Maybe Text)
codOSVersion
  = lens _codOSVersion (\ s a -> s{_codOSVersion = a})

-- | (Read-only) The date the device was manufactured in yyyy-mm-dd format.
codManufactureDate :: Lens' ChromeOSDevice (Maybe Text)
codManufactureDate
  = lens _codManufactureDate
      (\ s a -> s{_codManufactureDate = a})

-- | List of screenshot files to download. Type is always
-- \"SCREENSHOT_FILE\". (Read-only)
codScreenshotFiles :: Lens' ChromeOSDevice [ChromeOSDeviceScreenshotFilesItem]
codScreenshotFiles
  = lens _codScreenshotFiles
      (\ s a -> s{_codScreenshotFiles = a})
      . _Default
      . _Coerce

-- | Total RAM on the device [in bytes] (Read-only)
codSystemRamTotal :: Lens' ChromeOSDevice (Maybe Int64)
codSystemRamTotal
  = lens _codSystemRamTotal
      (\ s a -> s{_codSystemRamTotal = a})
      . mapping _Coerce

instance FromJSON ChromeOSDevice where
        parseJSON
          = withObject "ChromeOSDevice"
              (\ o ->
                 ChromeOSDevice' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "cpuStatusReports" .!= mempty)
                     <*> (o .:? "annotatedUser")
                     <*> (o .:? "systemRamFreeReports" .!= mempty)
                     <*> (o .:? "dockMacAddress")
                     <*> (o .:? "platformVersion")
                     <*> (o .:? "lastSync")
                     <*> (o .:? "activeTimeRanges" .!= mempty)
                     <*> (o .:? "ethernetMacAddress0")
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
                     <*> (o .:? "lastKnownNetwork" .!= mempty)
                     <*> (o .:? "willAutoRenew")
                     <*> (o .:? "meid")
                     <*> (o .:? "deviceFiles" .!= mempty)
                     <*> (o .:? "deviceId")
                     <*> (o .:? "bootMode")
                     <*> (o .:? "tpmVersionInfo")
                     <*> (o .:? "autoUpdateExpiration")
                     <*> (o .:? "orderNumber")
                     <*> (o .:? "diskVolumeReports" .!= mempty)
                     <*> (o .:? "annotatedAssetId")
                     <*> (o .:? "notes")
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "firmwareVersion")
                     <*> (o .:? "osVersion")
                     <*> (o .:? "manufactureDate")
                     <*> (o .:? "screenshotFiles" .!= mempty)
                     <*> (o .:? "systemRamTotal"))

instance ToJSON ChromeOSDevice where
        toJSON ChromeOSDevice'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _codStatus,
                  ("etag" .=) <$> _codEtag,
                  ("cpuStatusReports" .=) <$> _codCPUStatusReports,
                  ("annotatedUser" .=) <$> _codAnnotatedUser,
                  ("systemRamFreeReports" .=) <$>
                    _codSystemRamFreeReports,
                  ("dockMacAddress" .=) <$> _codDockMACAddress,
                  ("platformVersion" .=) <$> _codPlatformVersion,
                  ("lastSync" .=) <$> _codLastSync,
                  ("activeTimeRanges" .=) <$> _codActiveTimeRanges,
                  ("ethernetMacAddress0" .=) <$>
                    _codEthernetMACAddress0,
                  Just ("kind" .= _codKind),
                  ("ethernetMacAddress" .=) <$> _codEthernetMACAddress,
                  ("lastEnrollmentTime" .=) <$> _codLastEnrollmentTime,
                  ("annotatedLocation" .=) <$> _codAnnotatedLocation,
                  ("macAddress" .=) <$> _codMACAddress,
                  ("orgUnitPath" .=) <$> _codOrgUnitPath,
                  ("recentUsers" .=) <$> _codRecentUsers,
                  ("supportEndDate" .=) <$> _codSupportEndDate,
                  ("model" .=) <$> _codModel,
                  ("lastKnownNetwork" .=) <$> _codLastKnownNetwork,
                  ("willAutoRenew" .=) <$> _codWillAutoRenew,
                  ("meid" .=) <$> _codMeid,
                  ("deviceFiles" .=) <$> _codDeviceFiles,
                  ("deviceId" .=) <$> _codDeviceId,
                  ("bootMode" .=) <$> _codBootMode,
                  ("tpmVersionInfo" .=) <$> _codTpmVersionInfo,
                  ("autoUpdateExpiration" .=) <$>
                    _codAutoUpdateExpiration,
                  ("orderNumber" .=) <$> _codOrderNumber,
                  ("diskVolumeReports" .=) <$> _codDiskVolumeReports,
                  ("annotatedAssetId" .=) <$> _codAnnotatedAssetId,
                  ("notes" .=) <$> _codNotes,
                  ("serialNumber" .=) <$> _codSerialNumber,
                  ("firmwareVersion" .=) <$> _codFirmwareVersion,
                  ("osVersion" .=) <$> _codOSVersion,
                  ("manufactureDate" .=) <$> _codManufactureDate,
                  ("screenshotFiles" .=) <$> _codScreenshotFiles,
                  ("systemRamTotal" .=) <$> _codSystemRamTotal])

--
-- /See:/ 'users' smart constructor.
data Users =
  Users'
    { _uEtag :: !(Maybe Text)
    , _uNextPageToken :: !(Maybe Text)
    , _uUsers :: !(Maybe [User])
    , _uKind :: !Text
    , _uTriggerEvent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Users'
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
                 Users' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "users" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#directory#users")
                     <*> (o .:? "trigger_event"))

instance ToJSON Users where
        toJSON Users'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag,
                  ("nextPageToken" .=) <$> _uNextPageToken,
                  ("users" .=) <$> _uUsers, Just ("kind" .= _uKind),
                  ("trigger_event" .=) <$> _uTriggerEvent])

-- | An application-specific password (ASP) is used with applications that do
-- not accept a verification code when logging into the application on
-- certain devices. The ASP access code is used instead of the login and
-- password you commonly use when accessing an application through a
-- browser. For more information about ASPs and how to create one, see the
-- [help center](https:\/\/support.google.com\/a\/answer\/2537800#asp).
--
-- /See:/ 'asp' smart constructor.
data Asp =
  Asp'
    { _aCreationTime :: !(Maybe (Textual Int64))
    , _aEtag :: !(Maybe Text)
    , _aCodeId :: !(Maybe (Textual Int32))
    , _aKind :: !Text
    , _aName :: !(Maybe Text)
    , _aLastTimeUsed :: !(Maybe (Textual Int64))
    , _aUserKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Asp'
    { _aCreationTime = Nothing
    , _aEtag = Nothing
    , _aCodeId = Nothing
    , _aKind = "admin#directory#asp"
    , _aName = Nothing
    , _aLastTimeUsed = Nothing
    , _aUserKey = Nothing
    }


-- | The time when the ASP was created. Expressed in [Unix
-- time](https:\/\/en.wikipedia.org\/wiki\/Epoch_time) format.
aCreationTime :: Lens' Asp (Maybe Int64)
aCreationTime
  = lens _aCreationTime
      (\ s a -> s{_aCreationTime = a})
      . mapping _Coerce

-- | ETag of the ASP.
aEtag :: Lens' Asp (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The unique ID of the ASP.
aCodeId :: Lens' Asp (Maybe Int32)
aCodeId
  = lens _aCodeId (\ s a -> s{_aCodeId = a}) .
      mapping _Coerce

-- | The type of the API resource. This is always \`admin#directory#asp\`.
aKind :: Lens' Asp Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The name of the application that the user, represented by their
-- \`userId\`, entered when the ASP was created.
aName :: Lens' Asp (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The time when the ASP was last used. Expressed in [Unix
-- time](https:\/\/en.wikipedia.org\/wiki\/Epoch_time) format.
aLastTimeUsed :: Lens' Asp (Maybe Int64)
aLastTimeUsed
  = lens _aLastTimeUsed
      (\ s a -> s{_aLastTimeUsed = a})
      . mapping _Coerce

-- | The unique ID of the user who issued the ASP.
aUserKey :: Lens' Asp (Maybe Text)
aUserKey = lens _aUserKey (\ s a -> s{_aUserKey = a})

instance FromJSON Asp where
        parseJSON
          = withObject "Asp"
              (\ o ->
                 Asp' <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "codeId")
                     <*> (o .:? "kind" .!= "admin#directory#asp")
                     <*> (o .:? "name")
                     <*> (o .:? "lastTimeUsed")
                     <*> (o .:? "userKey"))

instance ToJSON Asp where
        toJSON Asp'{..}
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
data Schemas =
  Schemas'
    { _sEtag :: !(Maybe Text)
    , _sSchemas :: !(Maybe [Schema])
    , _sKind :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Schemas'
    {_sEtag = Nothing, _sSchemas = Nothing, _sKind = "admin#directory#schemas"}


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
                 Schemas' <$>
                   (o .:? "etag") <*> (o .:? "schemas" .!= mempty) <*>
                     (o .:? "kind" .!= "admin#directory#schemas"))

instance ToJSON Schemas where
        toJSON Schemas'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("schemas" .=) <$> _sSchemas,
                  Just ("kind" .= _sKind)])

--
-- /See:/ 'chromeOSDeviceDeviceFilesItem' smart constructor.
data ChromeOSDeviceDeviceFilesItem =
  ChromeOSDeviceDeviceFilesItem'
    { _coddfiName :: !(Maybe Text)
    , _coddfiDownloadURL :: !(Maybe Text)
    , _coddfiType :: !(Maybe Text)
    , _coddfiCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceDeviceFilesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coddfiName'
--
-- * 'coddfiDownloadURL'
--
-- * 'coddfiType'
--
-- * 'coddfiCreateTime'
chromeOSDeviceDeviceFilesItem
    :: ChromeOSDeviceDeviceFilesItem
chromeOSDeviceDeviceFilesItem =
  ChromeOSDeviceDeviceFilesItem'
    { _coddfiName = Nothing
    , _coddfiDownloadURL = Nothing
    , _coddfiType = Nothing
    , _coddfiCreateTime = Nothing
    }


-- | File name
coddfiName :: Lens' ChromeOSDeviceDeviceFilesItem (Maybe Text)
coddfiName
  = lens _coddfiName (\ s a -> s{_coddfiName = a})

-- | File download URL
coddfiDownloadURL :: Lens' ChromeOSDeviceDeviceFilesItem (Maybe Text)
coddfiDownloadURL
  = lens _coddfiDownloadURL
      (\ s a -> s{_coddfiDownloadURL = a})

-- | File type
coddfiType :: Lens' ChromeOSDeviceDeviceFilesItem (Maybe Text)
coddfiType
  = lens _coddfiType (\ s a -> s{_coddfiType = a})

-- | Date and time the file was created
coddfiCreateTime :: Lens' ChromeOSDeviceDeviceFilesItem (Maybe UTCTime)
coddfiCreateTime
  = lens _coddfiCreateTime
      (\ s a -> s{_coddfiCreateTime = a})
      . mapping _DateTime

instance FromJSON ChromeOSDeviceDeviceFilesItem where
        parseJSON
          = withObject "ChromeOSDeviceDeviceFilesItem"
              (\ o ->
                 ChromeOSDeviceDeviceFilesItem' <$>
                   (o .:? "name") <*> (o .:? "downloadUrl") <*>
                     (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON ChromeOSDeviceDeviceFilesItem where
        toJSON ChromeOSDeviceDeviceFilesItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _coddfiName,
                  ("downloadUrl" .=) <$> _coddfiDownloadURL,
                  ("type" .=) <$> _coddfiType,
                  ("createTime" .=) <$> _coddfiCreateTime])

-- | Public API: Resources.buildings
--
-- /See:/ 'buildings' smart constructor.
data Buildings =
  Buildings'
    { _bEtag :: !(Maybe Text)
    , _bNextPageToken :: !(Maybe Text)
    , _bBuildings :: !(Maybe [Building])
    , _bKind :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Buildings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bEtag'
--
-- * 'bNextPageToken'
--
-- * 'bBuildings'
--
-- * 'bKind'
buildings
    :: Buildings
buildings =
  Buildings'
    { _bEtag = Nothing
    , _bNextPageToken = Nothing
    , _bBuildings = Nothing
    , _bKind = "admin#directory#resources#buildings#buildingsList"
    }


-- | ETag of the resource.
bEtag :: Lens' Buildings (Maybe Text)
bEtag = lens _bEtag (\ s a -> s{_bEtag = a})

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
bNextPageToken :: Lens' Buildings (Maybe Text)
bNextPageToken
  = lens _bNextPageToken
      (\ s a -> s{_bNextPageToken = a})

-- | The Buildings in this page of results.
bBuildings :: Lens' Buildings [Building]
bBuildings
  = lens _bBuildings (\ s a -> s{_bBuildings = a}) .
      _Default
      . _Coerce

-- | Kind of resource this is.
bKind :: Lens' Buildings Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

instance FromJSON Buildings where
        parseJSON
          = withObject "Buildings"
              (\ o ->
                 Buildings' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "buildings" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#buildings#buildingsList"))

instance ToJSON Buildings where
        toJSON Buildings'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _bEtag,
                  ("nextPageToken" .=) <$> _bNextPageToken,
                  ("buildings" .=) <$> _bBuildings,
                  Just ("kind" .= _bKind)])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | JSON template for instant messenger of an user.
--
-- /See:/ 'userIm' smart constructor.
data UserIm =
  UserIm'
    { _uiIm :: !(Maybe Text)
    , _uiProtocol :: !(Maybe Text)
    , _uiPrimary :: !(Maybe Bool)
    , _uiCustomProtocol :: !(Maybe Text)
    , _uiType :: !(Maybe Text)
    , _uiCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserIm'
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
-- from ImProtocolTypes map. Similar to type it can take a CUSTOM value and
-- specify the custom name in customProtocol field.
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
-- For example instant messengers could be of home work etc. In addition to
-- the standard type an entry can have a custom type and can take any
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
                 UserIm' <$>
                   (o .:? "im") <*> (o .:? "protocol") <*>
                     (o .:? "primary")
                     <*> (o .:? "customProtocol")
                     <*> (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserIm where
        toJSON UserIm'{..}
          = object
              (catMaybes
                 [("im" .=) <$> _uiIm,
                  ("protocol" .=) <$> _uiProtocol,
                  ("primary" .=) <$> _uiPrimary,
                  ("customProtocol" .=) <$> _uiCustomProtocol,
                  ("type" .=) <$> _uiType,
                  ("customType" .=) <$> _uiCustomType])

-- | Public API: Resources.buildings
--
-- /See:/ 'buildingAddress' smart constructor.
data BuildingAddress =
  BuildingAddress'
    { _baLanguageCode :: !(Maybe Text)
    , _baRegionCode :: !(Maybe Text)
    , _baSublocality :: !(Maybe Text)
    , _baPostalCode :: !(Maybe Text)
    , _baLocality :: !(Maybe Text)
    , _baAdministrativeArea :: !(Maybe Text)
    , _baAddressLines :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildingAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baLanguageCode'
--
-- * 'baRegionCode'
--
-- * 'baSublocality'
--
-- * 'baPostalCode'
--
-- * 'baLocality'
--
-- * 'baAdministrativeArea'
--
-- * 'baAddressLines'
buildingAddress
    :: BuildingAddress
buildingAddress =
  BuildingAddress'
    { _baLanguageCode = Nothing
    , _baRegionCode = Nothing
    , _baSublocality = Nothing
    , _baPostalCode = Nothing
    , _baLocality = Nothing
    , _baAdministrativeArea = Nothing
    , _baAddressLines = Nothing
    }


-- | Optional. BCP-47 language code of the contents of this address (if
-- known).
baLanguageCode :: Lens' BuildingAddress (Maybe Text)
baLanguageCode
  = lens _baLanguageCode
      (\ s a -> s{_baLanguageCode = a})

-- | Required. CLDR region code of the country\/region of the address.
baRegionCode :: Lens' BuildingAddress (Maybe Text)
baRegionCode
  = lens _baRegionCode (\ s a -> s{_baRegionCode = a})

-- | Optional. Sublocality of the address.
baSublocality :: Lens' BuildingAddress (Maybe Text)
baSublocality
  = lens _baSublocality
      (\ s a -> s{_baSublocality = a})

-- | Optional. Postal code of the address.
baPostalCode :: Lens' BuildingAddress (Maybe Text)
baPostalCode
  = lens _baPostalCode (\ s a -> s{_baPostalCode = a})

-- | Optional. Generally refers to the city\/town portion of the address.
-- Examples: US city, IT comune, UK post town. In regions of the world
-- where localities are not well defined or do not fit into this structure
-- well, leave locality empty and use addressLines.
baLocality :: Lens' BuildingAddress (Maybe Text)
baLocality
  = lens _baLocality (\ s a -> s{_baLocality = a})

-- | Optional. Highest administrative subdivision which is used for postal
-- addresses of a country or region.
baAdministrativeArea :: Lens' BuildingAddress (Maybe Text)
baAdministrativeArea
  = lens _baAdministrativeArea
      (\ s a -> s{_baAdministrativeArea = a})

-- | Unstructured address lines describing the lower levels of an address.
baAddressLines :: Lens' BuildingAddress [Text]
baAddressLines
  = lens _baAddressLines
      (\ s a -> s{_baAddressLines = a})
      . _Default
      . _Coerce

instance FromJSON BuildingAddress where
        parseJSON
          = withObject "BuildingAddress"
              (\ o ->
                 BuildingAddress' <$>
                   (o .:? "languageCode") <*> (o .:? "regionCode") <*>
                     (o .:? "sublocality")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "administrativeArea")
                     <*> (o .:? "addressLines" .!= mempty))

instance ToJSON BuildingAddress where
        toJSON BuildingAddress'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _baLanguageCode,
                  ("regionCode" .=) <$> _baRegionCode,
                  ("sublocality" .=) <$> _baSublocality,
                  ("postalCode" .=) <$> _baPostalCode,
                  ("locality" .=) <$> _baLocality,
                  ("administrativeArea" .=) <$> _baAdministrativeArea,
                  ("addressLines" .=) <$> _baAddressLines])

-- | JSON response template for List tokens operation in Directory API.
--
-- /See:/ 'tokens' smart constructor.
data Tokens =
  Tokens'
    { _tEtag :: !(Maybe Text)
    , _tKind :: !Text
    , _tItems :: !(Maybe [Token])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Tokens'
    {_tEtag = Nothing, _tKind = "admin#directory#tokenList", _tItems = Nothing}


-- | ETag of the resource.
tEtag :: Lens' Tokens (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | The type of the API resource. This is always
-- \`admin#directory#tokenList\`.
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
                 Tokens' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#tokenList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Tokens where
        toJSON Tokens'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tEtag, Just ("kind" .= _tKind),
                  ("items" .=) <$> _tItems])

-- | Custom fields of the user.
--
-- /See:/ 'userCustomSchemas' smart constructor.
newtype UserCustomSchemas =
  UserCustomSchemas'
    { _ucsAddtional :: HashMap Text UserCustomProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserCustomSchemas' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsAddtional'
userCustomSchemas
    :: HashMap Text UserCustomProperties -- ^ 'ucsAddtional'
    -> UserCustomSchemas
userCustomSchemas pUcsAddtional_ =
  UserCustomSchemas' {_ucsAddtional = _Coerce # pUcsAddtional_}


ucsAddtional :: Lens' UserCustomSchemas (HashMap Text UserCustomProperties)
ucsAddtional
  = lens _ucsAddtional (\ s a -> s{_ucsAddtional = a})
      . _Coerce

instance FromJSON UserCustomSchemas where
        parseJSON
          = withObject "UserCustomSchemas"
              (\ o -> UserCustomSchemas' <$> (parseJSONObject o))

instance ToJSON UserCustomSchemas where
        toJSON = toJSON . _ucsAddtional

-- | JSON template for a keyword entry.
--
-- /See:/ 'userKeyword' smart constructor.
data UserKeyword =
  UserKeyword'
    { _ukValue :: !(Maybe Text)
    , _ukType :: !(Maybe Text)
    , _ukCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserKeyword' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ukValue'
--
-- * 'ukType'
--
-- * 'ukCustomType'
userKeyword
    :: UserKeyword
userKeyword =
  UserKeyword' {_ukValue = Nothing, _ukType = Nothing, _ukCustomType = Nothing}


-- | Keyword.
ukValue :: Lens' UserKeyword (Maybe Text)
ukValue = lens _ukValue (\ s a -> s{_ukValue = a})

-- | Each entry can have a type which indicates standard type of that entry.
-- For example keyword could be of type occupation or outlook. In addition
-- to the standard type an entry can have a custom type and can give it any
-- name. Such types should have the CUSTOM value as type and also have a
-- customType value.
ukType :: Lens' UserKeyword (Maybe Text)
ukType = lens _ukType (\ s a -> s{_ukType = a})

-- | Custom Type.
ukCustomType :: Lens' UserKeyword (Maybe Text)
ukCustomType
  = lens _ukCustomType (\ s a -> s{_ukCustomType = a})

instance FromJSON UserKeyword where
        parseJSON
          = withObject "UserKeyword"
              (\ o ->
                 UserKeyword' <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "customType"))

instance ToJSON UserKeyword where
        toJSON UserKeyword'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ukValue, ("type" .=) <$> _ukType,
                  ("customType" .=) <$> _ukCustomType])

--
-- /See:/ 'domainAliases' smart constructor.
data DomainAliases =
  DomainAliases'
    { _daEtag :: !(Maybe Text)
    , _daKind :: !Text
    , _daDomainAliases :: !(Maybe [DomainAlias])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daEtag'
--
-- * 'daKind'
--
-- * 'daDomainAliases'
domainAliases
    :: DomainAliases
domainAliases =
  DomainAliases'
    { _daEtag = Nothing
    , _daKind = "admin#directory#domainAliases"
    , _daDomainAliases = Nothing
    }


-- | ETag of the resource.
daEtag :: Lens' DomainAliases (Maybe Text)
daEtag = lens _daEtag (\ s a -> s{_daEtag = a})

-- | Kind of resource this is.
daKind :: Lens' DomainAliases Text
daKind = lens _daKind (\ s a -> s{_daKind = a})

-- | List of domain alias objects.
daDomainAliases :: Lens' DomainAliases [DomainAlias]
daDomainAliases
  = lens _daDomainAliases
      (\ s a -> s{_daDomainAliases = a})
      . _Default
      . _Coerce

instance FromJSON DomainAliases where
        parseJSON
          = withObject "DomainAliases"
              (\ o ->
                 DomainAliases' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#domainAliases")
                     <*> (o .:? "domainAliases" .!= mempty))

instance ToJSON DomainAliases where
        toJSON DomainAliases'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _daEtag, Just ("kind" .= _daKind),
                  ("domainAliases" .=) <$> _daDomainAliases])

-- | Information for an ip address.
--
-- /See:/ 'chromeOSDeviceLastKnownNetworkItem' smart constructor.
data ChromeOSDeviceLastKnownNetworkItem =
  ChromeOSDeviceLastKnownNetworkItem'
    { _codlkniWanIPAddress :: !(Maybe Text)
    , _codlkniIPAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceLastKnownNetworkItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codlkniWanIPAddress'
--
-- * 'codlkniIPAddress'
chromeOSDeviceLastKnownNetworkItem
    :: ChromeOSDeviceLastKnownNetworkItem
chromeOSDeviceLastKnownNetworkItem =
  ChromeOSDeviceLastKnownNetworkItem'
    {_codlkniWanIPAddress = Nothing, _codlkniIPAddress = Nothing}


-- | The WAN IP address.
codlkniWanIPAddress :: Lens' ChromeOSDeviceLastKnownNetworkItem (Maybe Text)
codlkniWanIPAddress
  = lens _codlkniWanIPAddress
      (\ s a -> s{_codlkniWanIPAddress = a})

-- | The IP address.
codlkniIPAddress :: Lens' ChromeOSDeviceLastKnownNetworkItem (Maybe Text)
codlkniIPAddress
  = lens _codlkniIPAddress
      (\ s a -> s{_codlkniIPAddress = a})

instance FromJSON ChromeOSDeviceLastKnownNetworkItem
         where
        parseJSON
          = withObject "ChromeOSDeviceLastKnownNetworkItem"
              (\ o ->
                 ChromeOSDeviceLastKnownNetworkItem' <$>
                   (o .:? "wanIpAddress") <*> (o .:? "ipAddress"))

instance ToJSON ChromeOSDeviceLastKnownNetworkItem
         where
        toJSON ChromeOSDeviceLastKnownNetworkItem'{..}
          = object
              (catMaybes
                 [("wanIpAddress" .=) <$> _codlkniWanIPAddress,
                  ("ipAddress" .=) <$> _codlkniIPAddress])

-- | JSON response template to list aliases in Directory API.
--
-- /See:/ 'aliases' smart constructor.
data Aliases =
  Aliases'
    { _aliEtag :: !(Maybe Text)
    , _aliKind :: !Text
    , _aliAliases :: !(Maybe [JSONValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Aliases'
    { _aliEtag = Nothing
    , _aliKind = "admin#directory#aliases"
    , _aliAliases = Nothing
    }


aliEtag :: Lens' Aliases (Maybe Text)
aliEtag = lens _aliEtag (\ s a -> s{_aliEtag = a})

aliKind :: Lens' Aliases Text
aliKind = lens _aliKind (\ s a -> s{_aliKind = a})

aliAliases :: Lens' Aliases [JSONValue]
aliAliases
  = lens _aliAliases (\ s a -> s{_aliAliases = a}) .
      _Default
      . _Coerce

instance FromJSON Aliases where
        parseJSON
          = withObject "Aliases"
              (\ o ->
                 Aliases' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#aliases")
                     <*> (o .:? "aliases" .!= mempty))

instance ToJSON Aliases where
        toJSON Aliases'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aliEtag, Just ("kind" .= _aliKind),
                  ("aliases" .=) <$> _aliAliases])

-- | Public API: Resources.calendars
--
-- /See:/ 'calendarResource' smart constructor.
data CalendarResource =
  CalendarResource'
    { _crEtags :: !(Maybe Text)
    , _crResourceId :: !(Maybe Text)
    , _crResourceType :: !(Maybe Text)
    , _crResourceName :: !(Maybe Text)
    , _crKind :: !Text
    , _crBuildingId :: !(Maybe Text)
    , _crFeatureInstances :: !(Maybe JSONValue)
    , _crResourceEmail :: !(Maybe Text)
    , _crCapacity :: !(Maybe (Textual Int32))
    , _crResourceDescription :: !(Maybe Text)
    , _crFloorName :: !(Maybe Text)
    , _crGeneratedResourceName :: !(Maybe Text)
    , _crResourceCategory :: !(Maybe Text)
    , _crFloorSection :: !(Maybe Text)
    , _crUserVisibleDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crEtags'
--
-- * 'crResourceId'
--
-- * 'crResourceType'
--
-- * 'crResourceName'
--
-- * 'crKind'
--
-- * 'crBuildingId'
--
-- * 'crFeatureInstances'
--
-- * 'crResourceEmail'
--
-- * 'crCapacity'
--
-- * 'crResourceDescription'
--
-- * 'crFloorName'
--
-- * 'crGeneratedResourceName'
--
-- * 'crResourceCategory'
--
-- * 'crFloorSection'
--
-- * 'crUserVisibleDescription'
calendarResource
    :: CalendarResource
calendarResource =
  CalendarResource'
    { _crEtags = Nothing
    , _crResourceId = Nothing
    , _crResourceType = Nothing
    , _crResourceName = Nothing
    , _crKind = "admin#directory#resources#calendars#CalendarResource"
    , _crBuildingId = Nothing
    , _crFeatureInstances = Nothing
    , _crResourceEmail = Nothing
    , _crCapacity = Nothing
    , _crResourceDescription = Nothing
    , _crFloorName = Nothing
    , _crGeneratedResourceName = Nothing
    , _crResourceCategory = Nothing
    , _crFloorSection = Nothing
    , _crUserVisibleDescription = Nothing
    }


-- | ETag of the resource.
crEtags :: Lens' CalendarResource (Maybe Text)
crEtags = lens _crEtags (\ s a -> s{_crEtags = a})

-- | The unique ID for the calendar resource.
crResourceId :: Lens' CalendarResource (Maybe Text)
crResourceId
  = lens _crResourceId (\ s a -> s{_crResourceId = a})

-- | The type of the calendar resource, intended for non-room resources.
crResourceType :: Lens' CalendarResource (Maybe Text)
crResourceType
  = lens _crResourceType
      (\ s a -> s{_crResourceType = a})

-- | The name of the calendar resource. For example, \"Training Room 1A\".
crResourceName :: Lens' CalendarResource (Maybe Text)
crResourceName
  = lens _crResourceName
      (\ s a -> s{_crResourceName = a})

-- | The type of the resource. For calendar resources, the value is
-- \`admin#directory#resources#calendars#CalendarResource\`.
crKind :: Lens' CalendarResource Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | Unique ID for the building a resource is located in.
crBuildingId :: Lens' CalendarResource (Maybe Text)
crBuildingId
  = lens _crBuildingId (\ s a -> s{_crBuildingId = a})

-- | Instances of features for the calendar resource.
crFeatureInstances :: Lens' CalendarResource (Maybe JSONValue)
crFeatureInstances
  = lens _crFeatureInstances
      (\ s a -> s{_crFeatureInstances = a})

-- | The read-only email for the calendar resource. Generated as part of
-- creating a new calendar resource.
crResourceEmail :: Lens' CalendarResource (Maybe Text)
crResourceEmail
  = lens _crResourceEmail
      (\ s a -> s{_crResourceEmail = a})

-- | Capacity of a resource, number of seats in a room.
crCapacity :: Lens' CalendarResource (Maybe Int32)
crCapacity
  = lens _crCapacity (\ s a -> s{_crCapacity = a}) .
      mapping _Coerce

-- | Description of the resource, visible only to admins.
crResourceDescription :: Lens' CalendarResource (Maybe Text)
crResourceDescription
  = lens _crResourceDescription
      (\ s a -> s{_crResourceDescription = a})

-- | Name of the floor a resource is located on.
crFloorName :: Lens' CalendarResource (Maybe Text)
crFloorName
  = lens _crFloorName (\ s a -> s{_crFloorName = a})

-- | The read-only auto-generated name of the calendar resource which
-- includes metadata about the resource such as building name, floor,
-- capacity, etc. For example, \"NYC-2-Training Room 1A (16)\".
crGeneratedResourceName :: Lens' CalendarResource (Maybe Text)
crGeneratedResourceName
  = lens _crGeneratedResourceName
      (\ s a -> s{_crGeneratedResourceName = a})

-- | The category of the calendar resource. Either CONFERENCE_ROOM or OTHER.
-- Legacy data is set to CATEGORY_UNKNOWN.
crResourceCategory :: Lens' CalendarResource (Maybe Text)
crResourceCategory
  = lens _crResourceCategory
      (\ s a -> s{_crResourceCategory = a})

-- | Name of the section within a floor a resource is located in.
crFloorSection :: Lens' CalendarResource (Maybe Text)
crFloorSection
  = lens _crFloorSection
      (\ s a -> s{_crFloorSection = a})

-- | Description of the resource, visible to users and admins.
crUserVisibleDescription :: Lens' CalendarResource (Maybe Text)
crUserVisibleDescription
  = lens _crUserVisibleDescription
      (\ s a -> s{_crUserVisibleDescription = a})

instance FromJSON CalendarResource where
        parseJSON
          = withObject "CalendarResource"
              (\ o ->
                 CalendarResource' <$>
                   (o .:? "etags") <*> (o .:? "resourceId") <*>
                     (o .:? "resourceType")
                     <*> (o .:? "resourceName")
                     <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#calendars#CalendarResource")
                     <*> (o .:? "buildingId")
                     <*> (o .:? "featureInstances")
                     <*> (o .:? "resourceEmail")
                     <*> (o .:? "capacity")
                     <*> (o .:? "resourceDescription")
                     <*> (o .:? "floorName")
                     <*> (o .:? "generatedResourceName")
                     <*> (o .:? "resourceCategory")
                     <*> (o .:? "floorSection")
                     <*> (o .:? "userVisibleDescription"))

instance ToJSON CalendarResource where
        toJSON CalendarResource'{..}
          = object
              (catMaybes
                 [("etags" .=) <$> _crEtags,
                  ("resourceId" .=) <$> _crResourceId,
                  ("resourceType" .=) <$> _crResourceType,
                  ("resourceName" .=) <$> _crResourceName,
                  Just ("kind" .= _crKind),
                  ("buildingId" .=) <$> _crBuildingId,
                  ("featureInstances" .=) <$> _crFeatureInstances,
                  ("resourceEmail" .=) <$> _crResourceEmail,
                  ("capacity" .=) <$> _crCapacity,
                  ("resourceDescription" .=) <$>
                    _crResourceDescription,
                  ("floorName" .=) <$> _crFloorName,
                  ("generatedResourceName" .=) <$>
                    _crGeneratedResourceName,
                  ("resourceCategory" .=) <$> _crResourceCategory,
                  ("floorSection" .=) <$> _crFloorSection,
                  ("userVisibleDescription" .=) <$>
                    _crUserVisibleDescription])

--
-- /See:/ 'userUndelete' smart constructor.
newtype UserUndelete =
  UserUndelete'
    { _uuOrgUnitPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuOrgUnitPath'
userUndelete
    :: UserUndelete
userUndelete = UserUndelete' {_uuOrgUnitPath = Nothing}


-- | OrgUnit of User
uuOrgUnitPath :: Lens' UserUndelete (Maybe Text)
uuOrgUnitPath
  = lens _uuOrgUnitPath
      (\ s a -> s{_uuOrgUnitPath = a})

instance FromJSON UserUndelete where
        parseJSON
          = withObject "UserUndelete"
              (\ o -> UserUndelete' <$> (o .:? "orgUnitPath"))

instance ToJSON UserUndelete where
        toJSON UserUndelete'{..}
          = object
              (catMaybes [("orgUnitPath" .=) <$> _uuOrgUnitPath])

--
-- /See:/ 'members' smart constructor.
data Members =
  Members'
    { _mEtag :: !(Maybe Text)
    , _mNextPageToken :: !(Maybe Text)
    , _mKind :: !Text
    , _mMembers :: !(Maybe [Member])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Members'
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
                 Members' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#members")
                     <*> (o .:? "members" .!= mempty))

instance ToJSON Members where
        toJSON Members'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _mEtag,
                  ("nextPageToken" .=) <$> _mNextPageToken,
                  Just ("kind" .= _mKind),
                  ("members" .=) <$> _mMembers])

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel =
  Channel'
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId :: !(Maybe Text)
    , _cKind :: !Text
    , _cExpiration :: !(Maybe (Textual Int64))
    , _cToken :: !(Maybe Text)
    , _cAddress :: !(Maybe Text)
    , _cPayload :: !(Maybe Bool)
    , _cParams :: !(Maybe ChannelParams)
    , _cId :: !(Maybe Text)
    , _cType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Channel'
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
-- resource, which is \`api#channel\`.
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a}) .
      mapping _Coerce

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
                 Channel' <$>
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
        toJSON Channel'{..}
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

-- | Response for listing allowed printer models.
--
-- /See:/ 'listPrinterModelsResponse' smart constructor.
data ListPrinterModelsResponse =
  ListPrinterModelsResponse'
    { _lpmrNextPageToken :: !(Maybe Text)
    , _lpmrPrinterModels :: !(Maybe [PrinterModel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPrinterModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpmrNextPageToken'
--
-- * 'lpmrPrinterModels'
listPrinterModelsResponse
    :: ListPrinterModelsResponse
listPrinterModelsResponse =
  ListPrinterModelsResponse'
    {_lpmrNextPageToken = Nothing, _lpmrPrinterModels = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lpmrNextPageToken :: Lens' ListPrinterModelsResponse (Maybe Text)
lpmrNextPageToken
  = lens _lpmrNextPageToken
      (\ s a -> s{_lpmrNextPageToken = a})

-- | Printer models that are currently allowed to be configured for ChromeOs.
-- Some printers may be added or removed over time.
lpmrPrinterModels :: Lens' ListPrinterModelsResponse [PrinterModel]
lpmrPrinterModels
  = lens _lpmrPrinterModels
      (\ s a -> s{_lpmrPrinterModels = a})
      . _Default
      . _Coerce

instance FromJSON ListPrinterModelsResponse where
        parseJSON
          = withObject "ListPrinterModelsResponse"
              (\ o ->
                 ListPrinterModelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "printerModels" .!= mempty))

instance ToJSON ListPrinterModelsResponse where
        toJSON ListPrinterModelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lpmrNextPageToken,
                  ("printerModels" .=) <$> _lpmrPrinterModels])

--
-- /See:/ 'mobileDevices' smart constructor.
data MobileDevices =
  MobileDevices'
    { _mdEtag :: !(Maybe Text)
    , _mdNextPageToken :: !(Maybe Text)
    , _mdKind :: !Text
    , _mdMobileDevices :: !(Maybe [MobileDevice])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  MobileDevices'
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
                 MobileDevices' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#mobiledevices")
                     <*> (o .:? "mobiledevices" .!= mempty))

instance ToJSON MobileDevices where
        toJSON MobileDevices'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _mdEtag,
                  ("nextPageToken" .=) <$> _mdNextPageToken,
                  Just ("kind" .= _mdKind),
                  ("mobiledevices" .=) <$> _mdMobileDevices])

-- | JSON template for token resource in Directory API.
--
-- /See:/ 'token' smart constructor.
data Token =
  Token'
    { _tokClientId :: !(Maybe Text)
    , _tokEtag :: !(Maybe Text)
    , _tokDisplayText :: !(Maybe Text)
    , _tokKind :: !Text
    , _tokScopes :: !(Maybe [Text])
    , _tokNATiveApp :: !(Maybe Bool)
    , _tokAnonymous :: !(Maybe Bool)
    , _tokUserKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Token'
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

-- | The type of the API resource. This is always \`admin#directory#token\`.
tokKind :: Lens' Token Text
tokKind = lens _tokKind (\ s a -> s{_tokKind = a})

-- | A list of authorization scopes the application is granted.
tokScopes :: Lens' Token [Text]
tokScopes
  = lens _tokScopes (\ s a -> s{_tokScopes = a}) .
      _Default
      . _Coerce

-- | Whether the token is issued to an installed application. The value is
-- \`true\` if the application is installed to a desktop or mobile device.
tokNATiveApp :: Lens' Token (Maybe Bool)
tokNATiveApp
  = lens _tokNATiveApp (\ s a -> s{_tokNATiveApp = a})

-- | Whether the application is registered with Google. The value is \`true\`
-- if the application has an anonymous Client ID.
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
                 Token' <$>
                   (o .:? "clientId") <*> (o .:? "etag") <*>
                     (o .:? "displayText")
                     <*> (o .:? "kind" .!= "admin#directory#token")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "nativeApp")
                     <*> (o .:? "anonymous")
                     <*> (o .:? "userKey"))

instance ToJSON Token where
        toJSON Token'{..}
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

--
-- /See:/ 'userName' smart constructor.
data UserName =
  UserName'
    { _unGivenName :: !(Maybe Text)
    , _unFullName :: !(Maybe Text)
    , _unFamilyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserName'
    {_unGivenName = Nothing, _unFullName = Nothing, _unFamilyName = Nothing}


-- | The user\'s first name. Required when creating a user account.
unGivenName :: Lens' UserName (Maybe Text)
unGivenName
  = lens _unGivenName (\ s a -> s{_unGivenName = a})

-- | The user\'s full name formed by concatenating the first and last name
-- values.
unFullName :: Lens' UserName (Maybe Text)
unFullName
  = lens _unFullName (\ s a -> s{_unFullName = a})

-- | The user\'s last name. Required when creating a user account.
unFamilyName :: Lens' UserName (Maybe Text)
unFamilyName
  = lens _unFamilyName (\ s a -> s{_unFamilyName = a})

instance FromJSON UserName where
        parseJSON
          = withObject "UserName"
              (\ o ->
                 UserName' <$>
                   (o .:? "givenName") <*> (o .:? "fullName") <*>
                     (o .:? "familyName"))

instance ToJSON UserName where
        toJSON UserName'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _unGivenName,
                  ("fullName" .=) <$> _unFullName,
                  ("familyName" .=) <$> _unFamilyName])

-- | Public API: Resources.buildings
--
-- /See:/ 'building' smart constructor.
data Building =
  Building'
    { _buiEtags :: !(Maybe Text)
    , _buiKind :: !Text
    , _buiBuildingId :: !(Maybe Text)
    , _buiAddress :: !(Maybe BuildingAddress)
    , _buiCoordinates :: !(Maybe BuildingCoordinates)
    , _buiBuildingName :: !(Maybe Text)
    , _buiFloorNames :: !(Maybe [Text])
    , _buiDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Building' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buiEtags'
--
-- * 'buiKind'
--
-- * 'buiBuildingId'
--
-- * 'buiAddress'
--
-- * 'buiCoordinates'
--
-- * 'buiBuildingName'
--
-- * 'buiFloorNames'
--
-- * 'buiDescription'
building
    :: Building
building =
  Building'
    { _buiEtags = Nothing
    , _buiKind = "admin#directory#resources#buildings#Building"
    , _buiBuildingId = Nothing
    , _buiAddress = Nothing
    , _buiCoordinates = Nothing
    , _buiBuildingName = Nothing
    , _buiFloorNames = Nothing
    , _buiDescription = Nothing
    }


-- | ETag of the resource.
buiEtags :: Lens' Building (Maybe Text)
buiEtags = lens _buiEtags (\ s a -> s{_buiEtags = a})

-- | Kind of resource this is.
buiKind :: Lens' Building Text
buiKind = lens _buiKind (\ s a -> s{_buiKind = a})

-- | Unique identifier for the building. The maximum length is 100
-- characters.
buiBuildingId :: Lens' Building (Maybe Text)
buiBuildingId
  = lens _buiBuildingId
      (\ s a -> s{_buiBuildingId = a})

-- | The postal address of the building. See
-- [\`PostalAddress\`](\/my-business\/reference\/rest\/v4\/PostalAddress)
-- for details. Note that only a single address line and region code are
-- required.
buiAddress :: Lens' Building (Maybe BuildingAddress)
buiAddress
  = lens _buiAddress (\ s a -> s{_buiAddress = a})

-- | The geographic coordinates of the center of the building, expressed as
-- latitude and longitude in decimal degrees.
buiCoordinates :: Lens' Building (Maybe BuildingCoordinates)
buiCoordinates
  = lens _buiCoordinates
      (\ s a -> s{_buiCoordinates = a})

-- | The building name as seen by users in Calendar. Must be unique for the
-- customer. For example, \"NYC-CHEL\". The maximum length is 100
-- characters.
buiBuildingName :: Lens' Building (Maybe Text)
buiBuildingName
  = lens _buiBuildingName
      (\ s a -> s{_buiBuildingName = a})

-- | The display names for all floors in this building. The floors are
-- expected to be sorted in ascending order, from lowest floor to highest
-- floor. For example, [\"B2\", \"B1\", \"L\", \"1\", \"2\", \"2M\", \"3\",
-- \"PH\"] Must contain at least one entry.
buiFloorNames :: Lens' Building [Text]
buiFloorNames
  = lens _buiFloorNames
      (\ s a -> s{_buiFloorNames = a})
      . _Default
      . _Coerce

-- | A brief description of the building. For example, \"Chelsea Market\".
buiDescription :: Lens' Building (Maybe Text)
buiDescription
  = lens _buiDescription
      (\ s a -> s{_buiDescription = a})

instance FromJSON Building where
        parseJSON
          = withObject "Building"
              (\ o ->
                 Building' <$>
                   (o .:? "etags") <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#buildings#Building")
                     <*> (o .:? "buildingId")
                     <*> (o .:? "address")
                     <*> (o .:? "coordinates")
                     <*> (o .:? "buildingName")
                     <*> (o .:? "floorNames" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Building where
        toJSON Building'{..}
          = object
              (catMaybes
                 [("etags" .=) <$> _buiEtags,
                  Just ("kind" .= _buiKind),
                  ("buildingId" .=) <$> _buiBuildingId,
                  ("address" .=) <$> _buiAddress,
                  ("coordinates" .=) <$> _buiCoordinates,
                  ("buildingName" .=) <$> _buiBuildingName,
                  ("floorNames" .=) <$> _buiFloorNames,
                  ("description" .=) <$> _buiDescription])

-- | List of recent device users, in descending order, by last login time.
--
-- /See:/ 'chromeOSDeviceRecentUsersItem' smart constructor.
data ChromeOSDeviceRecentUsersItem =
  ChromeOSDeviceRecentUsersItem'
    { _codruiEmail :: !(Maybe Text)
    , _codruiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ChromeOSDeviceRecentUsersItem' {_codruiEmail = Nothing, _codruiType = Nothing}


-- | The user\'s email address. This is only present if the user type is
-- \`USER_TYPE_MANAGED\`.
codruiEmail :: Lens' ChromeOSDeviceRecentUsersItem (Maybe Text)
codruiEmail
  = lens _codruiEmail (\ s a -> s{_codruiEmail = a})

-- | The type of the user.
codruiType :: Lens' ChromeOSDeviceRecentUsersItem (Maybe Text)
codruiType
  = lens _codruiType (\ s a -> s{_codruiType = a})

instance FromJSON ChromeOSDeviceRecentUsersItem where
        parseJSON
          = withObject "ChromeOSDeviceRecentUsersItem"
              (\ o ->
                 ChromeOSDeviceRecentUsersItem' <$>
                   (o .:? "email") <*> (o .:? "type"))

instance ToJSON ChromeOSDeviceRecentUsersItem where
        toJSON ChromeOSDeviceRecentUsersItem'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _codruiEmail,
                  ("type" .=) <$> _codruiType])

-- | Info about failures
--
-- /See:/ 'failureInfo' smart constructor.
data FailureInfo =
  FailureInfo'
    { _fiPrinterId :: !(Maybe Text)
    , _fiPrinter :: !(Maybe Printer)
    , _fiErrorCode :: !(Maybe FailureInfoErrorCode)
    , _fiErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailureInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiPrinterId'
--
-- * 'fiPrinter'
--
-- * 'fiErrorCode'
--
-- * 'fiErrorMessage'
failureInfo
    :: FailureInfo
failureInfo =
  FailureInfo'
    { _fiPrinterId = Nothing
    , _fiPrinter = Nothing
    , _fiErrorCode = Nothing
    , _fiErrorMessage = Nothing
    }


-- | Id of a failed printer.
fiPrinterId :: Lens' FailureInfo (Maybe Text)
fiPrinterId
  = lens _fiPrinterId (\ s a -> s{_fiPrinterId = a})

-- | Failed printer.
fiPrinter :: Lens' FailureInfo (Maybe Printer)
fiPrinter
  = lens _fiPrinter (\ s a -> s{_fiPrinter = a})

-- | Canonical code for why the update failed to apply.
fiErrorCode :: Lens' FailureInfo (Maybe FailureInfoErrorCode)
fiErrorCode
  = lens _fiErrorCode (\ s a -> s{_fiErrorCode = a})

-- | Failure reason message.
fiErrorMessage :: Lens' FailureInfo (Maybe Text)
fiErrorMessage
  = lens _fiErrorMessage
      (\ s a -> s{_fiErrorMessage = a})

instance FromJSON FailureInfo where
        parseJSON
          = withObject "FailureInfo"
              (\ o ->
                 FailureInfo' <$>
                   (o .:? "printerId") <*> (o .:? "printer") <*>
                     (o .:? "errorCode")
                     <*> (o .:? "errorMessage"))

instance ToJSON FailureInfo where
        toJSON FailureInfo'{..}
          = object
              (catMaybes
                 [("printerId" .=) <$> _fiPrinterId,
                  ("printer" .=) <$> _fiPrinter,
                  ("errorCode" .=) <$> _fiErrorCode,
                  ("errorMessage" .=) <$> _fiErrorMessage])

--
-- /See:/ 'domainAlias' smart constructor.
data DomainAlias =
  DomainAlias'
    { _dCreationTime :: !(Maybe (Textual Int64))
    , _dEtag :: !(Maybe Text)
    , _dKind :: !Text
    , _dVerified :: !(Maybe Bool)
    , _dDomainAliasName :: !(Maybe Text)
    , _dParentDomainName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCreationTime'
--
-- * 'dEtag'
--
-- * 'dKind'
--
-- * 'dVerified'
--
-- * 'dDomainAliasName'
--
-- * 'dParentDomainName'
domainAlias
    :: DomainAlias
domainAlias =
  DomainAlias'
    { _dCreationTime = Nothing
    , _dEtag = Nothing
    , _dKind = "admin#directory#domainAlias"
    , _dVerified = Nothing
    , _dDomainAliasName = Nothing
    , _dParentDomainName = Nothing
    }


-- | The creation time of the domain alias. (Read-only).
dCreationTime :: Lens' DomainAlias (Maybe Int64)
dCreationTime
  = lens _dCreationTime
      (\ s a -> s{_dCreationTime = a})
      . mapping _Coerce

-- | ETag of the resource.
dEtag :: Lens' DomainAlias (Maybe Text)
dEtag = lens _dEtag (\ s a -> s{_dEtag = a})

-- | Kind of resource this is.
dKind :: Lens' DomainAlias Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | Indicates the verification state of a domain alias. (Read-only)
dVerified :: Lens' DomainAlias (Maybe Bool)
dVerified
  = lens _dVerified (\ s a -> s{_dVerified = a})

-- | The domain alias name.
dDomainAliasName :: Lens' DomainAlias (Maybe Text)
dDomainAliasName
  = lens _dDomainAliasName
      (\ s a -> s{_dDomainAliasName = a})

-- | The parent domain name that the domain alias is associated with. This
-- can either be a primary or secondary domain name within a customer.
dParentDomainName :: Lens' DomainAlias (Maybe Text)
dParentDomainName
  = lens _dParentDomainName
      (\ s a -> s{_dParentDomainName = a})

instance FromJSON DomainAlias where
        parseJSON
          = withObject "DomainAlias"
              (\ o ->
                 DomainAlias' <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#domainAlias")
                     <*> (o .:? "verified")
                     <*> (o .:? "domainAliasName")
                     <*> (o .:? "parentDomainName"))

instance ToJSON DomainAlias where
        toJSON DomainAlias'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _dCreationTime,
                  ("etag" .=) <$> _dEtag, Just ("kind" .= _dKind),
                  ("verified" .=) <$> _dVerified,
                  ("domainAliasName" .=) <$> _dDomainAliasName,
                  ("parentDomainName" .=) <$> _dParentDomainName])

-- | The result of executing a command.
--
-- /See:/ 'directoryChromeosDevicesCommandResult' smart constructor.
data DirectoryChromeosDevicesCommandResult =
  DirectoryChromeosDevicesCommandResult'
    { _dcdcrExecuteTime :: !(Maybe DateTime')
    , _dcdcrResult :: !(Maybe DirectoryChromeosDevicesCommandResultResult)
    , _dcdcrErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectoryChromeosDevicesCommandResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcdcrExecuteTime'
--
-- * 'dcdcrResult'
--
-- * 'dcdcrErrorMessage'
directoryChromeosDevicesCommandResult
    :: DirectoryChromeosDevicesCommandResult
directoryChromeosDevicesCommandResult =
  DirectoryChromeosDevicesCommandResult'
    { _dcdcrExecuteTime = Nothing
    , _dcdcrResult = Nothing
    , _dcdcrErrorMessage = Nothing
    }


-- | The time at which the command was executed or failed to execute.
dcdcrExecuteTime :: Lens' DirectoryChromeosDevicesCommandResult (Maybe UTCTime)
dcdcrExecuteTime
  = lens _dcdcrExecuteTime
      (\ s a -> s{_dcdcrExecuteTime = a})
      . mapping _DateTime

-- | The result of the command.
dcdcrResult :: Lens' DirectoryChromeosDevicesCommandResult (Maybe DirectoryChromeosDevicesCommandResultResult)
dcdcrResult
  = lens _dcdcrResult (\ s a -> s{_dcdcrResult = a})

-- | The error message with a short explanation as to why the command failed.
-- Only present if the command failed.
dcdcrErrorMessage :: Lens' DirectoryChromeosDevicesCommandResult (Maybe Text)
dcdcrErrorMessage
  = lens _dcdcrErrorMessage
      (\ s a -> s{_dcdcrErrorMessage = a})

instance FromJSON
           DirectoryChromeosDevicesCommandResult
         where
        parseJSON
          = withObject "DirectoryChromeosDevicesCommandResult"
              (\ o ->
                 DirectoryChromeosDevicesCommandResult' <$>
                   (o .:? "executeTime") <*> (o .:? "result") <*>
                     (o .:? "errorMessage"))

instance ToJSON DirectoryChromeosDevicesCommandResult
         where
        toJSON DirectoryChromeosDevicesCommandResult'{..}
          = object
              (catMaybes
                 [("executeTime" .=) <$> _dcdcrExecuteTime,
                  ("result" .=) <$> _dcdcrResult,
                  ("errorMessage" .=) <$> _dcdcrErrorMessage])

-- | Response for adding new printers in batch.
--
-- /See:/ 'batchCreatePrintersResponse' smart constructor.
data BatchCreatePrintersResponse =
  BatchCreatePrintersResponse'
    { _bcprPrinters :: !(Maybe [Printer])
    , _bcprFailures :: !(Maybe [FailureInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreatePrintersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcprPrinters'
--
-- * 'bcprFailures'
batchCreatePrintersResponse
    :: BatchCreatePrintersResponse
batchCreatePrintersResponse =
  BatchCreatePrintersResponse'
    {_bcprPrinters = Nothing, _bcprFailures = Nothing}


-- | A list of successfully created printers with their IDs populated.
bcprPrinters :: Lens' BatchCreatePrintersResponse [Printer]
bcprPrinters
  = lens _bcprPrinters (\ s a -> s{_bcprPrinters = a})
      . _Default
      . _Coerce

-- | A list of create failures. Printer IDs are not populated, as printer
-- were not created.
bcprFailures :: Lens' BatchCreatePrintersResponse [FailureInfo]
bcprFailures
  = lens _bcprFailures (\ s a -> s{_bcprFailures = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreatePrintersResponse where
        parseJSON
          = withObject "BatchCreatePrintersResponse"
              (\ o ->
                 BatchCreatePrintersResponse' <$>
                   (o .:? "printers" .!= mempty) <*>
                     (o .:? "failures" .!= mempty))

instance ToJSON BatchCreatePrintersResponse where
        toJSON BatchCreatePrintersResponse'{..}
          = object
              (catMaybes
                 [("printers" .=) <$> _bcprPrinters,
                  ("failures" .=) <$> _bcprFailures])

--
-- /See:/ 'userGender' smart constructor.
data UserGender =
  UserGender'
    { _ugAddressMeAs :: !(Maybe Text)
    , _ugCustomGender :: !(Maybe Text)
    , _ugType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserGender' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugAddressMeAs'
--
-- * 'ugCustomGender'
--
-- * 'ugType'
userGender
    :: UserGender
userGender =
  UserGender'
    {_ugAddressMeAs = Nothing, _ugCustomGender = Nothing, _ugType = Nothing}


-- | AddressMeAs. A human-readable string containing the proper way to refer
-- to the profile owner by humans for example he\/him\/his or
-- they\/them\/their.
ugAddressMeAs :: Lens' UserGender (Maybe Text)
ugAddressMeAs
  = lens _ugAddressMeAs
      (\ s a -> s{_ugAddressMeAs = a})

-- | Custom gender.
ugCustomGender :: Lens' UserGender (Maybe Text)
ugCustomGender
  = lens _ugCustomGender
      (\ s a -> s{_ugCustomGender = a})

-- | Gender.
ugType :: Lens' UserGender (Maybe Text)
ugType = lens _ugType (\ s a -> s{_ugType = a})

instance FromJSON UserGender where
        parseJSON
          = withObject "UserGender"
              (\ o ->
                 UserGender' <$>
                   (o .:? "addressMeAs") <*> (o .:? "customGender") <*>
                     (o .:? "type"))

instance ToJSON UserGender where
        toJSON UserGender'{..}
          = object
              (catMaybes
                 [("addressMeAs" .=) <$> _ugAddressMeAs,
                  ("customGender" .=) <$> _ugCustomGender,
                  ("type" .=) <$> _ugType])

-- | JSON template for Alias object in Directory API.
--
-- /See:/ 'alias' smart constructor.
data Alias =
  Alias'
    { _aaEtag :: !(Maybe Text)
    , _aaKind :: !Text
    , _aaAlias :: !(Maybe Text)
    , _aaId :: !(Maybe Text)
    , _aaPrimaryEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Alias'
    { _aaEtag = Nothing
    , _aaKind = "admin#directory#alias"
    , _aaAlias = Nothing
    , _aaId = Nothing
    , _aaPrimaryEmail = Nothing
    }


aaEtag :: Lens' Alias (Maybe Text)
aaEtag = lens _aaEtag (\ s a -> s{_aaEtag = a})

aaKind :: Lens' Alias Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

aaAlias :: Lens' Alias (Maybe Text)
aaAlias = lens _aaAlias (\ s a -> s{_aaAlias = a})

aaId :: Lens' Alias (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

aaPrimaryEmail :: Lens' Alias (Maybe Text)
aaPrimaryEmail
  = lens _aaPrimaryEmail
      (\ s a -> s{_aaPrimaryEmail = a})

instance FromJSON Alias where
        parseJSON
          = withObject "Alias"
              (\ o ->
                 Alias' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#alias")
                     <*> (o .:? "alias")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryEmail"))

instance ToJSON Alias where
        toJSON Alias'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aaEtag, Just ("kind" .= _aaKind),
                  ("alias" .=) <$> _aaAlias, ("id" .=) <$> _aaId,
                  ("primaryEmail" .=) <$> _aaPrimaryEmail])

-- | Printer configuration.
--
-- /See:/ 'printer' smart constructor.
data Printer =
  Printer'
    { _pAuxiliaryMessages :: !(Maybe [AuxiliaryMessage])
    , _pUseDriverlessConfig :: !(Maybe Bool)
    , _pURI :: !(Maybe Text)
    , _pMakeAndModel :: !(Maybe Text)
    , _pName :: !(Maybe Text)
    , _pDisplayName :: !(Maybe Text)
    , _pId :: !(Maybe Text)
    , _pDescription :: !(Maybe Text)
    , _pCreateTime :: !(Maybe DateTime')
    , _pOrgUnitId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Printer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuxiliaryMessages'
--
-- * 'pUseDriverlessConfig'
--
-- * 'pURI'
--
-- * 'pMakeAndModel'
--
-- * 'pName'
--
-- * 'pDisplayName'
--
-- * 'pId'
--
-- * 'pDescription'
--
-- * 'pCreateTime'
--
-- * 'pOrgUnitId'
printer
    :: Printer
printer =
  Printer'
    { _pAuxiliaryMessages = Nothing
    , _pUseDriverlessConfig = Nothing
    , _pURI = Nothing
    , _pMakeAndModel = Nothing
    , _pName = Nothing
    , _pDisplayName = Nothing
    , _pId = Nothing
    , _pDescription = Nothing
    , _pCreateTime = Nothing
    , _pOrgUnitId = Nothing
    }


-- | Output only. Auxiliary messages about issues with the printer
-- configuration if any.
pAuxiliaryMessages :: Lens' Printer [AuxiliaryMessage]
pAuxiliaryMessages
  = lens _pAuxiliaryMessages
      (\ s a -> s{_pAuxiliaryMessages = a})
      . _Default
      . _Coerce

-- | Editable. flag to use driverless configuration or not. If it\'s set to
-- be true, make_and_model can be ignored
pUseDriverlessConfig :: Lens' Printer (Maybe Bool)
pUseDriverlessConfig
  = lens _pUseDriverlessConfig
      (\ s a -> s{_pUseDriverlessConfig = a})

-- | Editable. Printer URI.
pURI :: Lens' Printer (Maybe Text)
pURI = lens _pURI (\ s a -> s{_pURI = a})

-- | Editable. Make and model of printer. e.g. Lexmark MS610de Value must be
-- in format as seen in ListPrinterModels response.
pMakeAndModel :: Lens' Printer (Maybe Text)
pMakeAndModel
  = lens _pMakeAndModel
      (\ s a -> s{_pMakeAndModel = a})

-- | The resource name of the Printer object, in the format
-- customers\/{customer-id}\/printers\/{printer-id} (During printer
-- creation leave empty)
pName :: Lens' Printer (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Editable. Name of printer.
pDisplayName :: Lens' Printer (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | Id of the printer. (During printer creation leave empty)
pId :: Lens' Printer (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | Editable. Description of printer.
pDescription :: Lens' Printer (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

-- | Output only. Time when printer was created.
pCreateTime :: Lens' Printer (Maybe UTCTime)
pCreateTime
  = lens _pCreateTime (\ s a -> s{_pCreateTime = a}) .
      mapping _DateTime

-- | Organization Unit that owns this printer (Only can be set during Printer
-- creation)
pOrgUnitId :: Lens' Printer (Maybe Text)
pOrgUnitId
  = lens _pOrgUnitId (\ s a -> s{_pOrgUnitId = a})

instance FromJSON Printer where
        parseJSON
          = withObject "Printer"
              (\ o ->
                 Printer' <$>
                   (o .:? "auxiliaryMessages" .!= mempty) <*>
                     (o .:? "useDriverlessConfig")
                     <*> (o .:? "uri")
                     <*> (o .:? "makeAndModel")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "orgUnitId"))

instance ToJSON Printer where
        toJSON Printer'{..}
          = object
              (catMaybes
                 [("auxiliaryMessages" .=) <$> _pAuxiliaryMessages,
                  ("useDriverlessConfig" .=) <$> _pUseDriverlessConfig,
                  ("uri" .=) <$> _pURI,
                  ("makeAndModel" .=) <$> _pMakeAndModel,
                  ("name" .=) <$> _pName,
                  ("displayName" .=) <$> _pDisplayName,
                  ("id" .=) <$> _pId,
                  ("description" .=) <$> _pDescription,
                  ("createTime" .=) <$> _pCreateTime,
                  ("orgUnitId" .=) <$> _pOrgUnitId])

-- | The type of API resource. For Schema resources, this is always
-- \`admin#directory#schema\`.
--
-- /See:/ 'schema' smart constructor.
data Schema =
  Schema'
    { _schEtag :: !(Maybe Text)
    , _schKind :: !Text
    , _schSchemaName :: !(Maybe Text)
    , _schSchemaId :: !(Maybe Text)
    , _schDisplayName :: !(Maybe Text)
    , _schFields :: !(Maybe [SchemaFieldSpec])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'schDisplayName'
--
-- * 'schFields'
schema
    :: Schema
schema =
  Schema'
    { _schEtag = Nothing
    , _schKind = "admin#directory#schema"
    , _schSchemaName = Nothing
    , _schSchemaId = Nothing
    , _schDisplayName = Nothing
    , _schFields = Nothing
    }


-- | The ETag of the resource.
schEtag :: Lens' Schema (Maybe Text)
schEtag = lens _schEtag (\ s a -> s{_schEtag = a})

-- | Kind of resource this is.
schKind :: Lens' Schema Text
schKind = lens _schKind (\ s a -> s{_schKind = a})

-- | The schema\'s name.
schSchemaName :: Lens' Schema (Maybe Text)
schSchemaName
  = lens _schSchemaName
      (\ s a -> s{_schSchemaName = a})

-- | The unique identifier of the schema (Read-only)
schSchemaId :: Lens' Schema (Maybe Text)
schSchemaId
  = lens _schSchemaId (\ s a -> s{_schSchemaId = a})

-- | Display name for the schema.
schDisplayName :: Lens' Schema (Maybe Text)
schDisplayName
  = lens _schDisplayName
      (\ s a -> s{_schDisplayName = a})

-- | A list of fields in the schema.
schFields :: Lens' Schema [SchemaFieldSpec]
schFields
  = lens _schFields (\ s a -> s{_schFields = a}) .
      _Default
      . _Coerce

instance FromJSON Schema where
        parseJSON
          = withObject "Schema"
              (\ o ->
                 Schema' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#schema")
                     <*> (o .:? "schemaName")
                     <*> (o .:? "schemaId")
                     <*> (o .:? "displayName")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON Schema where
        toJSON Schema'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _schEtag, Just ("kind" .= _schKind),
                  ("schemaName" .=) <$> _schSchemaName,
                  ("schemaId" .=) <$> _schSchemaId,
                  ("displayName" .=) <$> _schDisplayName,
                  ("fields" .=) <$> _schFields])

-- | Printer manufacturer and model
--
-- /See:/ 'printerModel' smart constructor.
data PrinterModel =
  PrinterModel'
    { _pmManufacturer :: !(Maybe Text)
    , _pmMakeAndModel :: !(Maybe Text)
    , _pmDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrinterModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmManufacturer'
--
-- * 'pmMakeAndModel'
--
-- * 'pmDisplayName'
printerModel
    :: PrinterModel
printerModel =
  PrinterModel'
    { _pmManufacturer = Nothing
    , _pmMakeAndModel = Nothing
    , _pmDisplayName = Nothing
    }


-- | Manufacturer. eq. \"Brother\"
pmManufacturer :: Lens' PrinterModel (Maybe Text)
pmManufacturer
  = lens _pmManufacturer
      (\ s a -> s{_pmManufacturer = a})

-- | Make and model as represented in \"make_and_model\" field in Printer
-- object. eq. \"brother mfc-8840d\"
pmMakeAndModel :: Lens' PrinterModel (Maybe Text)
pmMakeAndModel
  = lens _pmMakeAndModel
      (\ s a -> s{_pmMakeAndModel = a})

-- | Display name. eq. \"Brother MFC-8840D\"
pmDisplayName :: Lens' PrinterModel (Maybe Text)
pmDisplayName
  = lens _pmDisplayName
      (\ s a -> s{_pmDisplayName = a})

instance FromJSON PrinterModel where
        parseJSON
          = withObject "PrinterModel"
              (\ o ->
                 PrinterModel' <$>
                   (o .:? "manufacturer") <*> (o .:? "makeAndModel") <*>
                     (o .:? "displayName"))

instance ToJSON PrinterModel where
        toJSON PrinterModel'{..}
          = object
              (catMaybes
                 [("manufacturer" .=) <$> _pmManufacturer,
                  ("makeAndModel" .=) <$> _pmMakeAndModel,
                  ("displayName" .=) <$> _pmDisplayName])

-- | Request for deleting existing printers in batch.
--
-- /See:/ 'batchDeletePrintersRequest' smart constructor.
newtype BatchDeletePrintersRequest =
  BatchDeletePrintersRequest'
    { _bdprPrinterIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeletePrintersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdprPrinterIds'
batchDeletePrintersRequest
    :: BatchDeletePrintersRequest
batchDeletePrintersRequest =
  BatchDeletePrintersRequest' {_bdprPrinterIds = Nothing}


-- | A list of Printer.id that should be deleted. Max 100 at a time.
bdprPrinterIds :: Lens' BatchDeletePrintersRequest [Text]
bdprPrinterIds
  = lens _bdprPrinterIds
      (\ s a -> s{_bdprPrinterIds = a})
      . _Default
      . _Coerce

instance FromJSON BatchDeletePrintersRequest where
        parseJSON
          = withObject "BatchDeletePrintersRequest"
              (\ o ->
                 BatchDeletePrintersRequest' <$>
                   (o .:? "printerIds" .!= mempty))

instance ToJSON BatchDeletePrintersRequest where
        toJSON BatchDeletePrintersRequest'{..}
          = object
              (catMaybes [("printerIds" .=) <$> _bdprPrinterIds])

--
-- /See:/ 'chromeOSMoveDevicesToOu' smart constructor.
newtype ChromeOSMoveDevicesToOu =
  ChromeOSMoveDevicesToOu'
    { _comdtoDeviceIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSMoveDevicesToOu' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comdtoDeviceIds'
chromeOSMoveDevicesToOu
    :: ChromeOSMoveDevicesToOu
chromeOSMoveDevicesToOu = ChromeOSMoveDevicesToOu' {_comdtoDeviceIds = Nothing}


-- | Chrome OS devices to be moved to OU
comdtoDeviceIds :: Lens' ChromeOSMoveDevicesToOu [Text]
comdtoDeviceIds
  = lens _comdtoDeviceIds
      (\ s a -> s{_comdtoDeviceIds = a})
      . _Default
      . _Coerce

instance FromJSON ChromeOSMoveDevicesToOu where
        parseJSON
          = withObject "ChromeOSMoveDevicesToOu"
              (\ o ->
                 ChromeOSMoveDevicesToOu' <$>
                   (o .:? "deviceIds" .!= mempty))

instance ToJSON ChromeOSMoveDevicesToOu where
        toJSON ChromeOSMoveDevicesToOu'{..}
          = object
              (catMaybes [("deviceIds" .=) <$> _comdtoDeviceIds])

-- | Auxiliary message about issues with printers or settings. Example:
-- {message_type:AUXILIARY_MESSAGE_WARNING, field_mask:make_and_model,
-- message:\"Given printer is invalid or no longer supported.\"}
--
-- /See:/ 'auxiliaryMessage' smart constructor.
data AuxiliaryMessage =
  AuxiliaryMessage'
    { _amSeverity :: !(Maybe AuxiliaryMessageSeverity)
    , _amFieldMask :: !(Maybe GFieldMask)
    , _amAuxiliaryMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuxiliaryMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amSeverity'
--
-- * 'amFieldMask'
--
-- * 'amAuxiliaryMessage'
auxiliaryMessage
    :: AuxiliaryMessage
auxiliaryMessage =
  AuxiliaryMessage'
    { _amSeverity = Nothing
    , _amFieldMask = Nothing
    , _amAuxiliaryMessage = Nothing
    }


-- | Message severity
amSeverity :: Lens' AuxiliaryMessage (Maybe AuxiliaryMessageSeverity)
amSeverity
  = lens _amSeverity (\ s a -> s{_amSeverity = a})

-- | Field that this message concerns.
amFieldMask :: Lens' AuxiliaryMessage (Maybe GFieldMask)
amFieldMask
  = lens _amFieldMask (\ s a -> s{_amFieldMask = a})

-- | Human readable message in English. Example: \"Given printer is invalid
-- or no longer supported.\"
amAuxiliaryMessage :: Lens' AuxiliaryMessage (Maybe Text)
amAuxiliaryMessage
  = lens _amAuxiliaryMessage
      (\ s a -> s{_amAuxiliaryMessage = a})

instance FromJSON AuxiliaryMessage where
        parseJSON
          = withObject "AuxiliaryMessage"
              (\ o ->
                 AuxiliaryMessage' <$>
                   (o .:? "severity") <*> (o .:? "fieldMask") <*>
                     (o .:? "auxiliaryMessage"))

instance ToJSON AuxiliaryMessage where
        toJSON AuxiliaryMessage'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _amSeverity,
                  ("fieldMask" .=) <$> _amFieldMask,
                  ("auxiliaryMessage" .=) <$> _amAuxiliaryMessage])

-- | The Directory API allows you to create and manage your account\'s users,
-- user aliases, and user Gmail chat profile photos. For more information
-- about common tasks, see the [User Accounts Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-users.html) and the
-- [User Aliases Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-user-aliases.html).
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _useCreationTime :: !(Maybe DateTime')
    , _useLastLoginTime :: !(Maybe DateTime')
    , _useThumbnailPhotoEtag :: !(Maybe Text)
    , _useEtag :: !(Maybe Text)
    , _usePosixAccounts :: !(Maybe JSONValue)
    , _useIPWhiteListed :: !(Maybe Bool)
    , _useRelations :: !(Maybe JSONValue)
    , _useSSHPublicKeys :: !(Maybe JSONValue)
    , _useHashFunction :: !(Maybe Text)
    , _useKind :: !Text
    , _useChangePasswordAtNextLogin :: !(Maybe Bool)
    , _useWebsites :: !(Maybe JSONValue)
    , _useAddresses :: !(Maybe JSONValue)
    , _useAliases :: !(Maybe [Text])
    , _useThumbnailPhotoURL :: !(Maybe Text)
    , _useExternalIds :: !(Maybe JSONValue)
    , _useSuspended :: !(Maybe Bool)
    , _useAgreedToTerms :: !(Maybe Bool)
    , _useDeletionTime :: !(Maybe DateTime')
    , _useNonEditableAliases :: !(Maybe [Text])
    , _useOrgUnitPath :: !(Maybe Text)
    , _useCustomerId :: !(Maybe Text)
    , _useLanguages :: !(Maybe JSONValue)
    , _useIncludeInGlobalAddressList :: !(Maybe Bool)
    , _useGender :: !(Maybe JSONValue)
    , _usePhones :: !(Maybe JSONValue)
    , _useRecoveryEmail :: !(Maybe Text)
    , _useName :: !(Maybe UserName)
    , _usePassword :: !(Maybe Text)
    , _useEmails :: !(Maybe JSONValue)
    , _useRecoveryPhone :: !(Maybe Text)
    , _useIms :: !(Maybe JSONValue)
    , _useKeywords :: !(Maybe JSONValue)
    , _useIsAdmin :: !(Maybe Bool)
    , _useIsEnrolledIn2Sv :: !(Maybe Bool)
    , _useId :: !(Maybe Text)
    , _useOrganizations :: !(Maybe JSONValue)
    , _usePrimaryEmail :: !(Maybe Text)
    , _useIsEnforcedIn2Sv :: !(Maybe Bool)
    , _useNotes :: !(Maybe JSONValue)
    , _useIsDelegatedAdmin :: !(Maybe Bool)
    , _useLocations :: !(Maybe JSONValue)
    , _useArchived :: !(Maybe Bool)
    , _useIsMailboxSetup :: !(Maybe Bool)
    , _useCustomSchemas :: !(Maybe UserCustomSchemas)
    , _useSuspensionReason :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'usePosixAccounts'
--
-- * 'useIPWhiteListed'
--
-- * 'useRelations'
--
-- * 'useSSHPublicKeys'
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
-- * 'useLanguages'
--
-- * 'useIncludeInGlobalAddressList'
--
-- * 'useGender'
--
-- * 'usePhones'
--
-- * 'useRecoveryEmail'
--
-- * 'useName'
--
-- * 'usePassword'
--
-- * 'useEmails'
--
-- * 'useRecoveryPhone'
--
-- * 'useIms'
--
-- * 'useKeywords'
--
-- * 'useIsAdmin'
--
-- * 'useIsEnrolledIn2Sv'
--
-- * 'useId'
--
-- * 'useOrganizations'
--
-- * 'usePrimaryEmail'
--
-- * 'useIsEnforcedIn2Sv'
--
-- * 'useNotes'
--
-- * 'useIsDelegatedAdmin'
--
-- * 'useLocations'
--
-- * 'useArchived'
--
-- * 'useIsMailboxSetup'
--
-- * 'useCustomSchemas'
--
-- * 'useSuspensionReason'
user
    :: User
user =
  User'
    { _useCreationTime = Nothing
    , _useLastLoginTime = Nothing
    , _useThumbnailPhotoEtag = Nothing
    , _useEtag = Nothing
    , _usePosixAccounts = Nothing
    , _useIPWhiteListed = Nothing
    , _useRelations = Nothing
    , _useSSHPublicKeys = Nothing
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
    , _useLanguages = Nothing
    , _useIncludeInGlobalAddressList = Nothing
    , _useGender = Nothing
    , _usePhones = Nothing
    , _useRecoveryEmail = Nothing
    , _useName = Nothing
    , _usePassword = Nothing
    , _useEmails = Nothing
    , _useRecoveryPhone = Nothing
    , _useIms = Nothing
    , _useKeywords = Nothing
    , _useIsAdmin = Nothing
    , _useIsEnrolledIn2Sv = Nothing
    , _useId = Nothing
    , _useOrganizations = Nothing
    , _usePrimaryEmail = Nothing
    , _useIsEnforcedIn2Sv = Nothing
    , _useNotes = Nothing
    , _useIsDelegatedAdmin = Nothing
    , _useLocations = Nothing
    , _useArchived = Nothing
    , _useIsMailboxSetup = Nothing
    , _useCustomSchemas = Nothing
    , _useSuspensionReason = Nothing
    }


-- | User\'s G Suite account creation time. (Read-only)
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

-- | Output only. ETag of the user\'s photo (Read-only)
useThumbnailPhotoEtag :: Lens' User (Maybe Text)
useThumbnailPhotoEtag
  = lens _useThumbnailPhotoEtag
      (\ s a -> s{_useThumbnailPhotoEtag = a})

-- | Output only. ETag of the resource.
useEtag :: Lens' User (Maybe Text)
useEtag = lens _useEtag (\ s a -> s{_useEtag = a})

-- | A list of
-- [POSIX](https:\/\/www.opengroup.org\/austin\/papers\/posix_faq.html)
-- account information for the user.
usePosixAccounts :: Lens' User (Maybe JSONValue)
usePosixAccounts
  = lens _usePosixAccounts
      (\ s a -> s{_usePosixAccounts = a})

-- | If \`true\`, the user\'s IP address is
-- [whitelisted](https:\/\/support.google.com\/a\/answer\/60752).
useIPWhiteListed :: Lens' User (Maybe Bool)
useIPWhiteListed
  = lens _useIPWhiteListed
      (\ s a -> s{_useIPWhiteListed = a})

-- | A list of the user\'s relationships to other users. The maximum allowed
-- data size for this field is 2Kb.
useRelations :: Lens' User (Maybe JSONValue)
useRelations
  = lens _useRelations (\ s a -> s{_useRelations = a})

-- | A list of SSH public keys.
useSSHPublicKeys :: Lens' User (Maybe JSONValue)
useSSHPublicKeys
  = lens _useSSHPublicKeys
      (\ s a -> s{_useSSHPublicKeys = a})

-- | Stores the hash format of the password property. We recommend sending
-- the \`password\` property value as a base 16 bit hexadecimal-encoded
-- hash value. Set the \`hashFunction\` values as either the
-- [SHA-1](https:\/\/wikipedia.org\/wiki\/SHA-1),
-- [MD5](https:\/\/wikipedia.org\/wiki\/MD5), or
-- [crypt](https:\/\/en.wikipedia.org\/wiki\/Crypt_\\(C\\)) hash format.
useHashFunction :: Lens' User (Maybe Text)
useHashFunction
  = lens _useHashFunction
      (\ s a -> s{_useHashFunction = a})

-- | Output only. The type of the API resource. For Users resources, the
-- value is \`admin#directory#user\`.
useKind :: Lens' User Text
useKind = lens _useKind (\ s a -> s{_useKind = a})

-- | Indicates if the user is forced to change their password at next login.
-- This setting doesn\'t apply when [the user signs in via a third-party
-- identity provider](https:\/\/support.google.com\/a\/answer\/60224).
useChangePasswordAtNextLogin :: Lens' User (Maybe Bool)
useChangePasswordAtNextLogin
  = lens _useChangePasswordAtNextLogin
      (\ s a -> s{_useChangePasswordAtNextLogin = a})

-- | The user\'s websites. The maximum allowed data size for this field is
-- 2Kb.
useWebsites :: Lens' User (Maybe JSONValue)
useWebsites
  = lens _useWebsites (\ s a -> s{_useWebsites = a})

-- | A list of the user\'s addresses. The maximum allowed data size for this
-- field is 10Kb.
useAddresses :: Lens' User (Maybe JSONValue)
useAddresses
  = lens _useAddresses (\ s a -> s{_useAddresses = a})

-- | Output only. A list of the user\'s alias email addresses.
useAliases :: Lens' User [Text]
useAliases
  = lens _useAliases (\ s a -> s{_useAliases = a}) .
      _Default
      . _Coerce

-- | Output only. Photo Url of the user (Read-only)
useThumbnailPhotoURL :: Lens' User (Maybe Text)
useThumbnailPhotoURL
  = lens _useThumbnailPhotoURL
      (\ s a -> s{_useThumbnailPhotoURL = a})

-- | A list of external IDs for the user, such as an employee or network ID.
-- The maximum allowed data size for this field is 2Kb.
useExternalIds :: Lens' User (Maybe JSONValue)
useExternalIds
  = lens _useExternalIds
      (\ s a -> s{_useExternalIds = a})

-- | Indicates if user is suspended.
useSuspended :: Lens' User (Maybe Bool)
useSuspended
  = lens _useSuspended (\ s a -> s{_useSuspended = a})

-- | Output only. This property is \`true\` if the user has completed an
-- initial login and accepted the Terms of Service agreement.
useAgreedToTerms :: Lens' User (Maybe Bool)
useAgreedToTerms
  = lens _useAgreedToTerms
      (\ s a -> s{_useAgreedToTerms = a})

useDeletionTime :: Lens' User (Maybe UTCTime)
useDeletionTime
  = lens _useDeletionTime
      (\ s a -> s{_useDeletionTime = a})
      . mapping _DateTime

-- | Output only. List of the user\'s non-editable alias email addresses.
-- These are typically outside the account\'s primary domain or sub-domain.
useNonEditableAliases :: Lens' User [Text]
useNonEditableAliases
  = lens _useNonEditableAliases
      (\ s a -> s{_useNonEditableAliases = a})
      . _Default
      . _Coerce

-- | The full path of the parent organization associated with the user. If
-- the parent organization is the top-level, it is represented as a forward
-- slash (\`\/\`).
useOrgUnitPath :: Lens' User (Maybe Text)
useOrgUnitPath
  = lens _useOrgUnitPath
      (\ s a -> s{_useOrgUnitPath = a})

-- | Output only. The customer ID to [retrieve all account
-- users](\/admin-sdk\/directory\/v1\/guides\/manage-users.html#get_all_users).
-- You can use the alias \`my_customer\` to represent your account\'s
-- \`customerId\`. As a reseller administrator, you can use the resold
-- customer account\'s \`customerId\`. To get a \`customerId\`, use the
-- account\'s primary domain in the \`domain\` parameter of a
-- [users.list](\/admin-sdk\/directory\/v1\/reference\/users\/list)
-- request.
useCustomerId :: Lens' User (Maybe Text)
useCustomerId
  = lens _useCustomerId
      (\ s a -> s{_useCustomerId = a})

-- | The user\'s languages. The maximum allowed data size for this field is
-- 1Kb.
useLanguages :: Lens' User (Maybe JSONValue)
useLanguages
  = lens _useLanguages (\ s a -> s{_useLanguages = a})

-- | Indicates if the user\'s profile is visible in the Google Workspace
-- global address list when the contact sharing feature is enabled for the
-- domain. For more information about excluding user profiles, see the
-- [administration help
-- center](https:\/\/support.google.com\/a\/answer\/1285988).
useIncludeInGlobalAddressList :: Lens' User (Maybe Bool)
useIncludeInGlobalAddressList
  = lens _useIncludeInGlobalAddressList
      (\ s a -> s{_useIncludeInGlobalAddressList = a})

-- | The user\'s gender. The maximum allowed data size for this field is 1Kb.
useGender :: Lens' User (Maybe JSONValue)
useGender
  = lens _useGender (\ s a -> s{_useGender = a})

-- | A list of the user\'s phone numbers. The maximum allowed data size for
-- this field is 1Kb.
usePhones :: Lens' User (Maybe JSONValue)
usePhones
  = lens _usePhones (\ s a -> s{_usePhones = a})

-- | Recovery email of the user.
useRecoveryEmail :: Lens' User (Maybe Text)
useRecoveryEmail
  = lens _useRecoveryEmail
      (\ s a -> s{_useRecoveryEmail = a})

-- | Holds the given and family names of the user, and the read-only
-- \`fullName\` value. The maximum number of characters in the
-- \`givenName\` and in the \`familyName\` values is 60. In addition, name
-- values support unicode\/UTF-8 characters, and can contain spaces,
-- letters (a-z), numbers (0-9), dashes (-), forward slashes (\/), and
-- periods (.). For more information about character usage rules, see the
-- [administration help
-- center](https:\/\/support.google.com\/a\/answer\/9193374). Maximum
-- allowed data size for this field is 1Kb.
useName :: Lens' User (Maybe UserName)
useName = lens _useName (\ s a -> s{_useName = a})

-- | User\'s password
usePassword :: Lens' User (Maybe Text)
usePassword
  = lens _usePassword (\ s a -> s{_usePassword = a})

-- | A list of the user\'s email addresses. The maximum allowed data size for
-- this field is 10Kb.
useEmails :: Lens' User (Maybe JSONValue)
useEmails
  = lens _useEmails (\ s a -> s{_useEmails = a})

-- | Recovery phone of the user. The phone number must be in the E.164
-- format, starting with the plus sign (+). Example: *+16506661212*.
useRecoveryPhone :: Lens' User (Maybe Text)
useRecoveryPhone
  = lens _useRecoveryPhone
      (\ s a -> s{_useRecoveryPhone = a})

-- | The user\'s Instant Messenger (IM) accounts. A user account can have
-- multiple ims properties. But, only one of these ims properties can be
-- the primary IM contact. The maximum allowed data size for this field is
-- 2Kb.
useIms :: Lens' User (Maybe JSONValue)
useIms = lens _useIms (\ s a -> s{_useIms = a})

-- | The user\'s keywords. The maximum allowed data size for this field is
-- 1Kb.
useKeywords :: Lens' User (Maybe JSONValue)
useKeywords
  = lens _useKeywords (\ s a -> s{_useKeywords = a})

-- | Output only. Indicates a user with super admininistrator privileges. The
-- \`isAdmin\` property can only be edited in the [Make a user an
-- administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users.html#make_admin)
-- operation (
-- [makeAdmin](\/admin-sdk\/directory\/v1\/reference\/users\/makeAdmin.html)
-- method). If edited in the user
-- [insert](\/admin-sdk\/directory\/v1\/reference\/users\/insert.html) or
-- [update](\/admin-sdk\/directory\/v1\/reference\/users\/update.html)
-- methods, the edit is ignored by the API service.
useIsAdmin :: Lens' User (Maybe Bool)
useIsAdmin
  = lens _useIsAdmin (\ s a -> s{_useIsAdmin = a})

-- | Output only. Is enrolled in 2-step verification (Read-only)
useIsEnrolledIn2Sv :: Lens' User (Maybe Bool)
useIsEnrolledIn2Sv
  = lens _useIsEnrolledIn2Sv
      (\ s a -> s{_useIsEnrolledIn2Sv = a})

-- | The unique ID for the user. A user \`id\` can be used as a user request
-- URI\'s \`userKey\`.
useId :: Lens' User (Maybe Text)
useId = lens _useId (\ s a -> s{_useId = a})

-- | A list of organizations the user belongs to. The maximum allowed data
-- size for this field is 10Kb.
useOrganizations :: Lens' User (Maybe JSONValue)
useOrganizations
  = lens _useOrganizations
      (\ s a -> s{_useOrganizations = a})

-- | The user\'s primary email address. This property is required in a
-- request to create a user account. The \`primaryEmail\` must be unique
-- and cannot be an alias of another user.
usePrimaryEmail :: Lens' User (Maybe Text)
usePrimaryEmail
  = lens _usePrimaryEmail
      (\ s a -> s{_usePrimaryEmail = a})

-- | Output only. Is 2-step verification enforced (Read-only)
useIsEnforcedIn2Sv :: Lens' User (Maybe Bool)
useIsEnforcedIn2Sv
  = lens _useIsEnforcedIn2Sv
      (\ s a -> s{_useIsEnforcedIn2Sv = a})

-- | Notes for the user.
useNotes :: Lens' User (Maybe JSONValue)
useNotes = lens _useNotes (\ s a -> s{_useNotes = a})

-- | Output only. Indicates if the user is a delegated administrator.
-- Delegated administrators are supported by the API but cannot create or
-- undelete users, or make users administrators. These requests are ignored
-- by the API service. Roles and privileges for administrators are assigned
-- using the [Admin
-- console](https:\/\/support.google.com\/a\/answer\/33325).
useIsDelegatedAdmin :: Lens' User (Maybe Bool)
useIsDelegatedAdmin
  = lens _useIsDelegatedAdmin
      (\ s a -> s{_useIsDelegatedAdmin = a})

-- | The user\'s locations. The maximum allowed data size for this field is
-- 10Kb.
useLocations :: Lens' User (Maybe JSONValue)
useLocations
  = lens _useLocations (\ s a -> s{_useLocations = a})

-- | Indicates if user is archived.
useArchived :: Lens' User (Maybe Bool)
useArchived
  = lens _useArchived (\ s a -> s{_useArchived = a})

-- | Output only. Indicates if the user\'s Google mailbox is created. This
-- property is only applicable if the user has been assigned a Gmail
-- license.
useIsMailboxSetup :: Lens' User (Maybe Bool)
useIsMailboxSetup
  = lens _useIsMailboxSetup
      (\ s a -> s{_useIsMailboxSetup = a})

-- | Custom fields of the user.
useCustomSchemas :: Lens' User (Maybe UserCustomSchemas)
useCustomSchemas
  = lens _useCustomSchemas
      (\ s a -> s{_useCustomSchemas = a})

-- | Output only. Has the reason a user account is suspended either by the
-- administrator or by Google at the time of suspension. The property is
-- returned only if the \`suspended\` property is \`true\`.
useSuspensionReason :: Lens' User (Maybe Text)
useSuspensionReason
  = lens _useSuspensionReason
      (\ s a -> s{_useSuspensionReason = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "creationTime") <*> (o .:? "lastLoginTime")
                     <*> (o .:? "thumbnailPhotoEtag")
                     <*> (o .:? "etag")
                     <*> (o .:? "posixAccounts")
                     <*> (o .:? "ipWhitelisted")
                     <*> (o .:? "relations")
                     <*> (o .:? "sshPublicKeys")
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
                     <*> (o .:? "languages")
                     <*> (o .:? "includeInGlobalAddressList")
                     <*> (o .:? "gender")
                     <*> (o .:? "phones")
                     <*> (o .:? "recoveryEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "password")
                     <*> (o .:? "emails")
                     <*> (o .:? "recoveryPhone")
                     <*> (o .:? "ims")
                     <*> (o .:? "keywords")
                     <*> (o .:? "isAdmin")
                     <*> (o .:? "isEnrolledIn2Sv")
                     <*> (o .:? "id")
                     <*> (o .:? "organizations")
                     <*> (o .:? "primaryEmail")
                     <*> (o .:? "isEnforcedIn2Sv")
                     <*> (o .:? "notes")
                     <*> (o .:? "isDelegatedAdmin")
                     <*> (o .:? "locations")
                     <*> (o .:? "archived")
                     <*> (o .:? "isMailboxSetup")
                     <*> (o .:? "customSchemas")
                     <*> (o .:? "suspensionReason"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _useCreationTime,
                  ("lastLoginTime" .=) <$> _useLastLoginTime,
                  ("thumbnailPhotoEtag" .=) <$> _useThumbnailPhotoEtag,
                  ("etag" .=) <$> _useEtag,
                  ("posixAccounts" .=) <$> _usePosixAccounts,
                  ("ipWhitelisted" .=) <$> _useIPWhiteListed,
                  ("relations" .=) <$> _useRelations,
                  ("sshPublicKeys" .=) <$> _useSSHPublicKeys,
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
                  ("languages" .=) <$> _useLanguages,
                  ("includeInGlobalAddressList" .=) <$>
                    _useIncludeInGlobalAddressList,
                  ("gender" .=) <$> _useGender,
                  ("phones" .=) <$> _usePhones,
                  ("recoveryEmail" .=) <$> _useRecoveryEmail,
                  ("name" .=) <$> _useName,
                  ("password" .=) <$> _usePassword,
                  ("emails" .=) <$> _useEmails,
                  ("recoveryPhone" .=) <$> _useRecoveryPhone,
                  ("ims" .=) <$> _useIms,
                  ("keywords" .=) <$> _useKeywords,
                  ("isAdmin" .=) <$> _useIsAdmin,
                  ("isEnrolledIn2Sv" .=) <$> _useIsEnrolledIn2Sv,
                  ("id" .=) <$> _useId,
                  ("organizations" .=) <$> _useOrganizations,
                  ("primaryEmail" .=) <$> _usePrimaryEmail,
                  ("isEnforcedIn2Sv" .=) <$> _useIsEnforcedIn2Sv,
                  ("notes" .=) <$> _useNotes,
                  ("isDelegatedAdmin" .=) <$> _useIsDelegatedAdmin,
                  ("locations" .=) <$> _useLocations,
                  ("archived" .=) <$> _useArchived,
                  ("isMailboxSetup" .=) <$> _useIsMailboxSetup,
                  ("customSchemas" .=) <$> _useCustomSchemas,
                  ("suspensionReason" .=) <$> _useSuspensionReason])

--
-- /See:/ 'chromeOSDeviceAction' smart constructor.
data ChromeOSDeviceAction =
  ChromeOSDeviceAction'
    { _codaAction :: !(Maybe Text)
    , _codaDeprovisionReason :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codaAction'
--
-- * 'codaDeprovisionReason'
chromeOSDeviceAction
    :: ChromeOSDeviceAction
chromeOSDeviceAction =
  ChromeOSDeviceAction'
    {_codaAction = Nothing, _codaDeprovisionReason = Nothing}


-- | Action to be taken on the Chrome OS device.
codaAction :: Lens' ChromeOSDeviceAction (Maybe Text)
codaAction
  = lens _codaAction (\ s a -> s{_codaAction = a})

-- | Only used when the action is \`deprovision\`. With the \`deprovision\`
-- action, this field is required. *Note*: The deprovision reason is
-- audited because it might have implications on licenses for perpetual
-- subscription customers.
codaDeprovisionReason :: Lens' ChromeOSDeviceAction (Maybe Text)
codaDeprovisionReason
  = lens _codaDeprovisionReason
      (\ s a -> s{_codaDeprovisionReason = a})

instance FromJSON ChromeOSDeviceAction where
        parseJSON
          = withObject "ChromeOSDeviceAction"
              (\ o ->
                 ChromeOSDeviceAction' <$>
                   (o .:? "action") <*> (o .:? "deprovisionReason"))

instance ToJSON ChromeOSDeviceAction where
        toJSON ChromeOSDeviceAction'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _codaAction,
                  ("deprovisionReason" .=) <$> _codaDeprovisionReason])

--
-- /See:/ 'featureRename' smart constructor.
newtype FeatureRename =
  FeatureRename'
    { _frNewName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FeatureRename' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frNewName'
featureRename
    :: FeatureRename
featureRename = FeatureRename' {_frNewName = Nothing}


-- | New name of the feature.
frNewName :: Lens' FeatureRename (Maybe Text)
frNewName
  = lens _frNewName (\ s a -> s{_frNewName = a})

instance FromJSON FeatureRename where
        parseJSON
          = withObject "FeatureRename"
              (\ o -> FeatureRename' <$> (o .:? "newName"))

instance ToJSON FeatureRename where
        toJSON FeatureRename'{..}
          = object (catMaybes [("newName" .=) <$> _frNewName])

--
-- /See:/ 'role'' smart constructor.
data Role =
  Role'
    { _rrEtag :: !(Maybe Text)
    , _rrKind :: !Text
    , _rrRoleName :: !(Maybe Text)
    , _rrIsSystemRole :: !(Maybe Bool)
    , _rrRoleId :: !(Maybe (Textual Int64))
    , _rrRoleDescription :: !(Maybe Text)
    , _rrIsSuperAdminRole :: !(Maybe Bool)
    , _rrRolePrivileges :: !(Maybe [RoleRolePrivilegesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Role' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrEtag'
--
-- * 'rrKind'
--
-- * 'rrRoleName'
--
-- * 'rrIsSystemRole'
--
-- * 'rrRoleId'
--
-- * 'rrRoleDescription'
--
-- * 'rrIsSuperAdminRole'
--
-- * 'rrRolePrivileges'
role'
    :: Role
role' =
  Role'
    { _rrEtag = Nothing
    , _rrKind = "admin#directory#role"
    , _rrRoleName = Nothing
    , _rrIsSystemRole = Nothing
    , _rrRoleId = Nothing
    , _rrRoleDescription = Nothing
    , _rrIsSuperAdminRole = Nothing
    , _rrRolePrivileges = Nothing
    }


-- | ETag of the resource.
rrEtag :: Lens' Role (Maybe Text)
rrEtag = lens _rrEtag (\ s a -> s{_rrEtag = a})

-- | The type of the API resource. This is always \`admin#directory#role\`.
rrKind :: Lens' Role Text
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | Name of the role.
rrRoleName :: Lens' Role (Maybe Text)
rrRoleName
  = lens _rrRoleName (\ s a -> s{_rrRoleName = a})

-- | Returns \`true\` if this is a pre-defined system role.
rrIsSystemRole :: Lens' Role (Maybe Bool)
rrIsSystemRole
  = lens _rrIsSystemRole
      (\ s a -> s{_rrIsSystemRole = a})

-- | ID of the role.
rrRoleId :: Lens' Role (Maybe Int64)
rrRoleId
  = lens _rrRoleId (\ s a -> s{_rrRoleId = a}) .
      mapping _Coerce

-- | A short description of the role.
rrRoleDescription :: Lens' Role (Maybe Text)
rrRoleDescription
  = lens _rrRoleDescription
      (\ s a -> s{_rrRoleDescription = a})

-- | Returns \`true\` if the role is a super admin role.
rrIsSuperAdminRole :: Lens' Role (Maybe Bool)
rrIsSuperAdminRole
  = lens _rrIsSuperAdminRole
      (\ s a -> s{_rrIsSuperAdminRole = a})

-- | The set of privileges that are granted to this role.
rrRolePrivileges :: Lens' Role [RoleRolePrivilegesItem]
rrRolePrivileges
  = lens _rrRolePrivileges
      (\ s a -> s{_rrRolePrivileges = a})
      . _Default
      . _Coerce

instance FromJSON Role where
        parseJSON
          = withObject "Role"
              (\ o ->
                 Role' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#role")
                     <*> (o .:? "roleName")
                     <*> (o .:? "isSystemRole")
                     <*> (o .:? "roleId")
                     <*> (o .:? "roleDescription")
                     <*> (o .:? "isSuperAdminRole")
                     <*> (o .:? "rolePrivileges" .!= mempty))

instance ToJSON Role where
        toJSON Role'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rrEtag, Just ("kind" .= _rrKind),
                  ("roleName" .=) <$> _rrRoleName,
                  ("isSystemRole" .=) <$> _rrIsSystemRole,
                  ("roleId" .=) <$> _rrRoleId,
                  ("roleDescription" .=) <$> _rrRoleDescription,
                  ("isSuperAdminRole" .=) <$> _rrIsSuperAdminRole,
                  ("rolePrivileges" .=) <$> _rrRolePrivileges])

--
-- /See:/ 'customer' smart constructor.
data Customer =
  Customer'
    { _cusEtag :: !(Maybe Text)
    , _cusKind :: !Text
    , _cusAlternateEmail :: !(Maybe Text)
    , _cusCustomerDomain :: !(Maybe Text)
    , _cusPhoneNumber :: !(Maybe Text)
    , _cusLanguage :: !(Maybe Text)
    , _cusId :: !(Maybe Text)
    , _cusCustomerCreationTime :: !(Maybe DateTime')
    , _cusPostalAddress :: !(Maybe CustomerPostalAddress)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Customer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cusEtag'
--
-- * 'cusKind'
--
-- * 'cusAlternateEmail'
--
-- * 'cusCustomerDomain'
--
-- * 'cusPhoneNumber'
--
-- * 'cusLanguage'
--
-- * 'cusId'
--
-- * 'cusCustomerCreationTime'
--
-- * 'cusPostalAddress'
customer
    :: Customer
customer =
  Customer'
    { _cusEtag = Nothing
    , _cusKind = "admin#directory#customer"
    , _cusAlternateEmail = Nothing
    , _cusCustomerDomain = Nothing
    , _cusPhoneNumber = Nothing
    , _cusLanguage = Nothing
    , _cusId = Nothing
    , _cusCustomerCreationTime = Nothing
    , _cusPostalAddress = Nothing
    }


-- | ETag of the resource.
cusEtag :: Lens' Customer (Maybe Text)
cusEtag = lens _cusEtag (\ s a -> s{_cusEtag = a})

-- | Identifies the resource as a customer. Value:
-- \`admin#directory#customer\`
cusKind :: Lens' Customer Text
cusKind = lens _cusKind (\ s a -> s{_cusKind = a})

-- | The customer\'s secondary contact email address. This email address
-- cannot be on the same domain as the \`customerDomain\`
cusAlternateEmail :: Lens' Customer (Maybe Text)
cusAlternateEmail
  = lens _cusAlternateEmail
      (\ s a -> s{_cusAlternateEmail = a})

-- | The customer\'s primary domain name string. Do not include the \`www\`
-- prefix when creating a new customer.
cusCustomerDomain :: Lens' Customer (Maybe Text)
cusCustomerDomain
  = lens _cusCustomerDomain
      (\ s a -> s{_cusCustomerDomain = a})

-- | The customer\'s contact phone number in
-- [E.164](https:\/\/en.wikipedia.org\/wiki\/E.164) format.
cusPhoneNumber :: Lens' Customer (Maybe Text)
cusPhoneNumber
  = lens _cusPhoneNumber
      (\ s a -> s{_cusPhoneNumber = a})

-- | The customer\'s ISO 639-2 language code. See the [Language
-- Codes](\/admin-sdk\/directory\/v1\/languages) page for the list of
-- supported codes. Valid language codes outside the supported set will be
-- accepted by the API but may lead to unexpected behavior. The default
-- value is \`en\`.
cusLanguage :: Lens' Customer (Maybe Text)
cusLanguage
  = lens _cusLanguage (\ s a -> s{_cusLanguage = a})

-- | The unique ID for the customer\'s Google Workspace account. (Readonly)
cusId :: Lens' Customer (Maybe Text)
cusId = lens _cusId (\ s a -> s{_cusId = a})

-- | The customer\'s creation time (Readonly)
cusCustomerCreationTime :: Lens' Customer (Maybe UTCTime)
cusCustomerCreationTime
  = lens _cusCustomerCreationTime
      (\ s a -> s{_cusCustomerCreationTime = a})
      . mapping _DateTime

-- | The customer\'s postal address information.
cusPostalAddress :: Lens' Customer (Maybe CustomerPostalAddress)
cusPostalAddress
  = lens _cusPostalAddress
      (\ s a -> s{_cusPostalAddress = a})

instance FromJSON Customer where
        parseJSON
          = withObject "Customer"
              (\ o ->
                 Customer' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#customer")
                     <*> (o .:? "alternateEmail")
                     <*> (o .:? "customerDomain")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "language")
                     <*> (o .:? "id")
                     <*> (o .:? "customerCreationTime")
                     <*> (o .:? "postalAddress"))

instance ToJSON Customer where
        toJSON Customer'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cusEtag, Just ("kind" .= _cusKind),
                  ("alternateEmail" .=) <$> _cusAlternateEmail,
                  ("customerDomain" .=) <$> _cusCustomerDomain,
                  ("phoneNumber" .=) <$> _cusPhoneNumber,
                  ("language" .=) <$> _cusLanguage,
                  ("id" .=) <$> _cusId,
                  ("customerCreationTime" .=) <$>
                    _cusCustomerCreationTime,
                  ("postalAddress" .=) <$> _cusPostalAddress])

--
-- /See:/ 'mobileDeviceApplicationsItem' smart constructor.
data MobileDeviceApplicationsItem =
  MobileDeviceApplicationsItem'
    { _mdaiVersionCode :: !(Maybe (Textual Int32))
    , _mdaiVersionName :: !(Maybe Text)
    , _mdaiPackageName :: !(Maybe Text)
    , _mdaiDisplayName :: !(Maybe Text)
    , _mdaiPermission :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  MobileDeviceApplicationsItem'
    { _mdaiVersionCode = Nothing
    , _mdaiVersionName = Nothing
    , _mdaiPackageName = Nothing
    , _mdaiDisplayName = Nothing
    , _mdaiPermission = Nothing
    }


-- | The application\'s version code. An example is \`13\`.
mdaiVersionCode :: Lens' MobileDeviceApplicationsItem (Maybe Int32)
mdaiVersionCode
  = lens _mdaiVersionCode
      (\ s a -> s{_mdaiVersionCode = a})
      . mapping _Coerce

-- | The application\'s version name. An example is \`3.2-140714\`.
mdaiVersionName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiVersionName
  = lens _mdaiVersionName
      (\ s a -> s{_mdaiVersionName = a})

-- | The application\'s package name. An example is \`com.android.browser\`.
mdaiPackageName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiPackageName
  = lens _mdaiPackageName
      (\ s a -> s{_mdaiPackageName = a})

-- | The application\'s display name. An example is \`Browser\`.
mdaiDisplayName :: Lens' MobileDeviceApplicationsItem (Maybe Text)
mdaiDisplayName
  = lens _mdaiDisplayName
      (\ s a -> s{_mdaiDisplayName = a})

-- | The list of permissions of this application. These can be either a
-- standard Android permission or one defined by the application, and are
-- found in an application\'s [Android
-- manifest](https:\/\/developer.android.com\/guide\/topics\/manifest\/uses-permission-element.html).
-- Examples of a Calendar application\'s permissions are \`READ_CALENDAR\`,
-- or \`MANAGE_ACCOUNTS\`.
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
                 MobileDeviceApplicationsItem' <$>
                   (o .:? "versionCode") <*> (o .:? "versionName") <*>
                     (o .:? "packageName")
                     <*> (o .:? "displayName")
                     <*> (o .:? "permission" .!= mempty))

instance ToJSON MobileDeviceApplicationsItem where
        toJSON MobileDeviceApplicationsItem'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _mdaiVersionCode,
                  ("versionName" .=) <$> _mdaiVersionName,
                  ("packageName" .=) <$> _mdaiPackageName,
                  ("displayName" .=) <$> _mdaiDisplayName,
                  ("permission" .=) <$> _mdaiPermission])

-- | Request for adding new printers in batch.
--
-- /See:/ 'batchCreatePrintersRequest' smart constructor.
newtype BatchCreatePrintersRequest =
  BatchCreatePrintersRequest'
    { _bcprRequests :: Maybe [CreatePrinterRequest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreatePrintersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcprRequests'
batchCreatePrintersRequest
    :: BatchCreatePrintersRequest
batchCreatePrintersRequest =
  BatchCreatePrintersRequest' {_bcprRequests = Nothing}


-- | A list of Printers to be created. Max 50 at a time.
bcprRequests :: Lens' BatchCreatePrintersRequest [CreatePrinterRequest]
bcprRequests
  = lens _bcprRequests (\ s a -> s{_bcprRequests = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreatePrintersRequest where
        parseJSON
          = withObject "BatchCreatePrintersRequest"
              (\ o ->
                 BatchCreatePrintersRequest' <$>
                   (o .:? "requests" .!= mempty))

instance ToJSON BatchCreatePrintersRequest where
        toJSON BatchCreatePrintersRequest'{..}
          = object
              (catMaybes [("requests" .=) <$> _bcprRequests])

--
-- /See:/ 'chromeOSDeviceDiskVolumeReportsItemVolumeInfoItem' smart constructor.
data ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem =
  ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem'
    { _coddvriviiStorageFree :: !(Maybe (Textual Int64))
    , _coddvriviiStorageTotal :: !(Maybe (Textual Int64))
    , _coddvriviiVolumeId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coddvriviiStorageFree'
--
-- * 'coddvriviiStorageTotal'
--
-- * 'coddvriviiVolumeId'
chromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    :: ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
chromeOSDeviceDiskVolumeReportsItemVolumeInfoItem =
  ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem'
    { _coddvriviiStorageFree = Nothing
    , _coddvriviiStorageTotal = Nothing
    , _coddvriviiVolumeId = Nothing
    }


-- | Free disk space [in bytes]
coddvriviiStorageFree :: Lens' ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem (Maybe Int64)
coddvriviiStorageFree
  = lens _coddvriviiStorageFree
      (\ s a -> s{_coddvriviiStorageFree = a})
      . mapping _Coerce

-- | Total disk space [in bytes]
coddvriviiStorageTotal :: Lens' ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem (Maybe Int64)
coddvriviiStorageTotal
  = lens _coddvriviiStorageTotal
      (\ s a -> s{_coddvriviiStorageTotal = a})
      . mapping _Coerce

-- | Volume id
coddvriviiVolumeId :: Lens' ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem (Maybe Text)
coddvriviiVolumeId
  = lens _coddvriviiVolumeId
      (\ s a -> s{_coddvriviiVolumeId = a})

instance FromJSON
           ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
         where
        parseJSON
          = withObject
              "ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem"
              (\ o ->
                 ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem'
                   <$>
                   (o .:? "storageFree") <*> (o .:? "storageTotal") <*>
                     (o .:? "volumeId"))

instance ToJSON
           ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
         where
        toJSON
          ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem'{..}
          = object
              (catMaybes
                 [("storageFree" .=) <$> _coddvriviiStorageFree,
                  ("storageTotal" .=) <$> _coddvriviiStorageTotal,
                  ("volumeId" .=) <$> _coddvriviiVolumeId])

--
-- /See:/ 'orgUnits' smart constructor.
data OrgUnits =
  OrgUnits'
    { _oEtag :: !(Maybe Text)
    , _oKind :: !Text
    , _oOrganizationUnits :: !(Maybe [OrgUnit])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  OrgUnits'
    { _oEtag = Nothing
    , _oKind = "admin#directory#orgUnits"
    , _oOrganizationUnits = Nothing
    }


-- | ETag of the resource.
oEtag :: Lens' OrgUnits (Maybe Text)
oEtag = lens _oEtag (\ s a -> s{_oEtag = a})

-- | The type of the API resource. For Org Unit resources, the type is
-- \`admin#directory#orgUnits\`.
oKind :: Lens' OrgUnits Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | List of organizational unit objects.
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
                 OrgUnits' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#orgUnits")
                     <*> (o .:? "organizationUnits" .!= mempty))

instance ToJSON OrgUnits where
        toJSON OrgUnits'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _oEtag, Just ("kind" .= _oKind),
                  ("organizationUnits" .=) <$> _oOrganizationUnits])

-- | JSON template for a POSIX account entry.
--
-- /See:/ 'userSSHPublicKey' smart constructor.
data UserSSHPublicKey =
  UserSSHPublicKey'
    { _uspkFingerprint :: !(Maybe Text)
    , _uspkKey :: !(Maybe Text)
    , _uspkExpirationTimeUsec :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSSHPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspkFingerprint'
--
-- * 'uspkKey'
--
-- * 'uspkExpirationTimeUsec'
userSSHPublicKey
    :: UserSSHPublicKey
userSSHPublicKey =
  UserSSHPublicKey'
    { _uspkFingerprint = Nothing
    , _uspkKey = Nothing
    , _uspkExpirationTimeUsec = Nothing
    }


-- | A SHA-256 fingerprint of the SSH public key. (Read-only)
uspkFingerprint :: Lens' UserSSHPublicKey (Maybe Text)
uspkFingerprint
  = lens _uspkFingerprint
      (\ s a -> s{_uspkFingerprint = a})

-- | An SSH public key.
uspkKey :: Lens' UserSSHPublicKey (Maybe Text)
uspkKey = lens _uspkKey (\ s a -> s{_uspkKey = a})

-- | An expiration time in microseconds since epoch.
uspkExpirationTimeUsec :: Lens' UserSSHPublicKey (Maybe Int64)
uspkExpirationTimeUsec
  = lens _uspkExpirationTimeUsec
      (\ s a -> s{_uspkExpirationTimeUsec = a})
      . mapping _Coerce

instance FromJSON UserSSHPublicKey where
        parseJSON
          = withObject "UserSSHPublicKey"
              (\ o ->
                 UserSSHPublicKey' <$>
                   (o .:? "fingerprint") <*> (o .:? "key") <*>
                     (o .:? "expirationTimeUsec"))

instance ToJSON UserSSHPublicKey where
        toJSON UserSSHPublicKey'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _uspkFingerprint,
                  ("key" .=) <$> _uspkKey,
                  ("expirationTimeUsec" .=) <$>
                    _uspkExpirationTimeUsec])

-- | Information regarding a command that was issued to a device.
--
-- /See:/ 'directoryChromeosDevicesCommand' smart constructor.
data DirectoryChromeosDevicesCommand =
  DirectoryChromeosDevicesCommand'
    { _dcdcState :: !(Maybe DirectoryChromeosDevicesCommandState)
    , _dcdcPayload :: !(Maybe Text)
    , _dcdcCommandExpireTime :: !(Maybe DateTime')
    , _dcdcIssueTime :: !(Maybe DateTime')
    , _dcdcCommandId :: !(Maybe (Textual Int64))
    , _dcdcType :: !(Maybe DirectoryChromeosDevicesCommandType)
    , _dcdcCommandResult :: !(Maybe DirectoryChromeosDevicesCommandResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectoryChromeosDevicesCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcdcState'
--
-- * 'dcdcPayload'
--
-- * 'dcdcCommandExpireTime'
--
-- * 'dcdcIssueTime'
--
-- * 'dcdcCommandId'
--
-- * 'dcdcType'
--
-- * 'dcdcCommandResult'
directoryChromeosDevicesCommand
    :: DirectoryChromeosDevicesCommand
directoryChromeosDevicesCommand =
  DirectoryChromeosDevicesCommand'
    { _dcdcState = Nothing
    , _dcdcPayload = Nothing
    , _dcdcCommandExpireTime = Nothing
    , _dcdcIssueTime = Nothing
    , _dcdcCommandId = Nothing
    , _dcdcType = Nothing
    , _dcdcCommandResult = Nothing
    }


-- | Indicates the command state.
dcdcState :: Lens' DirectoryChromeosDevicesCommand (Maybe DirectoryChromeosDevicesCommandState)
dcdcState
  = lens _dcdcState (\ s a -> s{_dcdcState = a})

-- | The payload that the command specified, if any.
dcdcPayload :: Lens' DirectoryChromeosDevicesCommand (Maybe Text)
dcdcPayload
  = lens _dcdcPayload (\ s a -> s{_dcdcPayload = a})

-- | The time at which the command will expire. If the device doesn\'t
-- execute the command within this time the command will become expired.
dcdcCommandExpireTime :: Lens' DirectoryChromeosDevicesCommand (Maybe UTCTime)
dcdcCommandExpireTime
  = lens _dcdcCommandExpireTime
      (\ s a -> s{_dcdcCommandExpireTime = a})
      . mapping _DateTime

-- | The timestamp when the command was issued by the admin.
dcdcIssueTime :: Lens' DirectoryChromeosDevicesCommand (Maybe UTCTime)
dcdcIssueTime
  = lens _dcdcIssueTime
      (\ s a -> s{_dcdcIssueTime = a})
      . mapping _DateTime

-- | Unique ID of a device command.
dcdcCommandId :: Lens' DirectoryChromeosDevicesCommand (Maybe Int64)
dcdcCommandId
  = lens _dcdcCommandId
      (\ s a -> s{_dcdcCommandId = a})
      . mapping _Coerce

-- | The type of the command.
dcdcType :: Lens' DirectoryChromeosDevicesCommand (Maybe DirectoryChromeosDevicesCommandType)
dcdcType = lens _dcdcType (\ s a -> s{_dcdcType = a})

-- | The result of the command execution.
dcdcCommandResult :: Lens' DirectoryChromeosDevicesCommand (Maybe DirectoryChromeosDevicesCommandResult)
dcdcCommandResult
  = lens _dcdcCommandResult
      (\ s a -> s{_dcdcCommandResult = a})

instance FromJSON DirectoryChromeosDevicesCommand
         where
        parseJSON
          = withObject "DirectoryChromeosDevicesCommand"
              (\ o ->
                 DirectoryChromeosDevicesCommand' <$>
                   (o .:? "state") <*> (o .:? "payload") <*>
                     (o .:? "commandExpireTime")
                     <*> (o .:? "issueTime")
                     <*> (o .:? "commandId")
                     <*> (o .:? "type")
                     <*> (o .:? "commandResult"))

instance ToJSON DirectoryChromeosDevicesCommand where
        toJSON DirectoryChromeosDevicesCommand'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dcdcState,
                  ("payload" .=) <$> _dcdcPayload,
                  ("commandExpireTime" .=) <$> _dcdcCommandExpireTime,
                  ("issueTime" .=) <$> _dcdcIssueTime,
                  ("commandId" .=) <$> _dcdcCommandId,
                  ("type" .=) <$> _dcdcType,
                  ("commandResult" .=) <$> _dcdcCommandResult])

-- | JSON response template for List verification codes operation in
-- Directory API.
--
-- /See:/ 'verificationCodes' smart constructor.
data VerificationCodes =
  VerificationCodes'
    { _vEtag :: !(Maybe Text)
    , _vKind :: !Text
    , _vItems :: !(Maybe [VerificationCode])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VerificationCodes'
    { _vEtag = Nothing
    , _vKind = "admin#directory#verificationCodesList"
    , _vItems = Nothing
    }


-- | ETag of the resource.
vEtag :: Lens' VerificationCodes (Maybe Text)
vEtag = lens _vEtag (\ s a -> s{_vEtag = a})

-- | The type of the resource. This is always
-- \`admin#directory#verificationCodesList\`.
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
                 VerificationCodes' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "admin#directory#verificationCodesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON VerificationCodes where
        toJSON VerificationCodes'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vEtag, Just ("kind" .= _vKind),
                  ("items" .=) <$> _vItems])

-- | Public API: Resources.buildings
--
-- /See:/ 'buildingCoordinates' smart constructor.
data BuildingCoordinates =
  BuildingCoordinates'
    { _bcLatitude :: !(Maybe (Textual Double))
    , _bcLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildingCoordinates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcLatitude'
--
-- * 'bcLongitude'
buildingCoordinates
    :: BuildingCoordinates
buildingCoordinates =
  BuildingCoordinates' {_bcLatitude = Nothing, _bcLongitude = Nothing}


-- | Latitude in decimal degrees.
bcLatitude :: Lens' BuildingCoordinates (Maybe Double)
bcLatitude
  = lens _bcLatitude (\ s a -> s{_bcLatitude = a}) .
      mapping _Coerce

-- | Longitude in decimal degrees.
bcLongitude :: Lens' BuildingCoordinates (Maybe Double)
bcLongitude
  = lens _bcLongitude (\ s a -> s{_bcLongitude = a}) .
      mapping _Coerce

instance FromJSON BuildingCoordinates where
        parseJSON
          = withObject "BuildingCoordinates"
              (\ o ->
                 BuildingCoordinates' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON BuildingCoordinates where
        toJSON BuildingCoordinates'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _bcLatitude,
                  ("longitude" .=) <$> _bcLongitude])

-- | JSON template for a relation entry.
--
-- /See:/ 'userRelation' smart constructor.
data UserRelation =
  UserRelation'
    { _urValue :: !(Maybe Text)
    , _urType :: !(Maybe Text)
    , _urCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserRelation' {_urValue = Nothing, _urType = Nothing, _urCustomType = Nothing}


-- | The name of the relation.
urValue :: Lens' UserRelation (Maybe Text)
urValue = lens _urValue (\ s a -> s{_urValue = a})

-- | The relation of the user. Some of the possible values are mother father
-- sister brother manager assistant partner.
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
                 UserRelation' <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "customType"))

instance ToJSON UserRelation where
        toJSON UserRelation'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _urValue, ("type" .=) <$> _urType,
                  ("customType" .=) <$> _urCustomType])

-- | Public API: Resources.features
--
-- /See:/ 'features' smart constructor.
data Features =
  Features'
    { _feaEtag :: !(Maybe Text)
    , _feaNextPageToken :: !(Maybe Text)
    , _feaKind :: !Text
    , _feaFeatures :: !(Maybe [Feature])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Features' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feaEtag'
--
-- * 'feaNextPageToken'
--
-- * 'feaKind'
--
-- * 'feaFeatures'
features
    :: Features
features =
  Features'
    { _feaEtag = Nothing
    , _feaNextPageToken = Nothing
    , _feaKind = "admin#directory#resources#features#featuresList"
    , _feaFeatures = Nothing
    }


-- | ETag of the resource.
feaEtag :: Lens' Features (Maybe Text)
feaEtag = lens _feaEtag (\ s a -> s{_feaEtag = a})

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
feaNextPageToken :: Lens' Features (Maybe Text)
feaNextPageToken
  = lens _feaNextPageToken
      (\ s a -> s{_feaNextPageToken = a})

-- | Kind of resource this is.
feaKind :: Lens' Features Text
feaKind = lens _feaKind (\ s a -> s{_feaKind = a})

-- | The Features in this page of results.
feaFeatures :: Lens' Features [Feature]
feaFeatures
  = lens _feaFeatures (\ s a -> s{_feaFeatures = a}) .
      _Default
      . _Coerce

instance FromJSON Features where
        parseJSON
          = withObject "Features"
              (\ o ->
                 Features' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#features#featuresList")
                     <*> (o .:? "features" .!= mempty))

instance ToJSON Features where
        toJSON Features'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _feaEtag,
                  ("nextPageToken" .=) <$> _feaNextPageToken,
                  Just ("kind" .= _feaKind),
                  ("features" .=) <$> _feaFeatures])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
newtype ChannelParams =
  ChannelParams'
    { _cpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpAddtional'
channelParams
    :: HashMap Text Text -- ^ 'cpAddtional'
    -> ChannelParams
channelParams pCpAddtional_ =
  ChannelParams' {_cpAddtional = _Coerce # pCpAddtional_}


cpAddtional :: Lens' ChannelParams (HashMap Text Text)
cpAddtional
  = lens _cpAddtional (\ s a -> s{_cpAddtional = a}) .
      _Coerce

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> ChannelParams' <$> (parseJSONObject o))

instance ToJSON ChannelParams where
        toJSON = toJSON . _cpAddtional

-- | Trusted Platform Module (TPM) (Read-only)
--
-- /See:/ 'chromeOSDeviceTpmVersionInfo' smart constructor.
data ChromeOSDeviceTpmVersionInfo =
  ChromeOSDeviceTpmVersionInfo'
    { _codtviVendorSpecific :: !(Maybe Text)
    , _codtviManufacturer :: !(Maybe Text)
    , _codtviSpecLevel :: !(Maybe Text)
    , _codtviTpmModel :: !(Maybe Text)
    , _codtviFamily :: !(Maybe Text)
    , _codtviFirmwareVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceTpmVersionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codtviVendorSpecific'
--
-- * 'codtviManufacturer'
--
-- * 'codtviSpecLevel'
--
-- * 'codtviTpmModel'
--
-- * 'codtviFamily'
--
-- * 'codtviFirmwareVersion'
chromeOSDeviceTpmVersionInfo
    :: ChromeOSDeviceTpmVersionInfo
chromeOSDeviceTpmVersionInfo =
  ChromeOSDeviceTpmVersionInfo'
    { _codtviVendorSpecific = Nothing
    , _codtviManufacturer = Nothing
    , _codtviSpecLevel = Nothing
    , _codtviTpmModel = Nothing
    , _codtviFamily = Nothing
    , _codtviFirmwareVersion = Nothing
    }


-- | Vendor-specific information such as Vendor ID.
codtviVendorSpecific :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviVendorSpecific
  = lens _codtviVendorSpecific
      (\ s a -> s{_codtviVendorSpecific = a})

-- | TPM manufacturer code.
codtviManufacturer :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviManufacturer
  = lens _codtviManufacturer
      (\ s a -> s{_codtviManufacturer = a})

-- | TPM specification level. See Library Specification for TPM 2.0 and Main
-- Specification for TPM 1.2.
codtviSpecLevel :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviSpecLevel
  = lens _codtviSpecLevel
      (\ s a -> s{_codtviSpecLevel = a})

-- | TPM model number.
codtviTpmModel :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviTpmModel
  = lens _codtviTpmModel
      (\ s a -> s{_codtviTpmModel = a})

-- | TPM family. We use the TPM 2.0 style encoding, e.g.: TPM 1.2: \"1.2\" ->
-- 312e3200 TPM 2.0: \"2.0\" -> 322e3000
codtviFamily :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviFamily
  = lens _codtviFamily (\ s a -> s{_codtviFamily = a})

-- | TPM firmware version.
codtviFirmwareVersion :: Lens' ChromeOSDeviceTpmVersionInfo (Maybe Text)
codtviFirmwareVersion
  = lens _codtviFirmwareVersion
      (\ s a -> s{_codtviFirmwareVersion = a})

instance FromJSON ChromeOSDeviceTpmVersionInfo where
        parseJSON
          = withObject "ChromeOSDeviceTpmVersionInfo"
              (\ o ->
                 ChromeOSDeviceTpmVersionInfo' <$>
                   (o .:? "vendorSpecific") <*> (o .:? "manufacturer")
                     <*> (o .:? "specLevel")
                     <*> (o .:? "tpmModel")
                     <*> (o .:? "family")
                     <*> (o .:? "firmwareVersion"))

instance ToJSON ChromeOSDeviceTpmVersionInfo where
        toJSON ChromeOSDeviceTpmVersionInfo'{..}
          = object
              (catMaybes
                 [("vendorSpecific" .=) <$> _codtviVendorSpecific,
                  ("manufacturer" .=) <$> _codtviManufacturer,
                  ("specLevel" .=) <$> _codtviSpecLevel,
                  ("tpmModel" .=) <$> _codtviTpmModel,
                  ("family" .=) <$> _codtviFamily,
                  ("firmwareVersion" .=) <$> _codtviFirmwareVersion])

-- | JSON template for an organization entry.
--
-- /See:/ 'userOrganization' smart constructor.
data UserOrganization =
  UserOrganization'
    { _uoDePartment :: !(Maybe Text)
    , _uoLocation :: !(Maybe Text)
    , _uoCostCenter :: !(Maybe Text)
    , _uoDomain :: !(Maybe Text)
    , _uoSymbol :: !(Maybe Text)
    , _uoPrimary :: !(Maybe Bool)
    , _uoName :: !(Maybe Text)
    , _uoFullTimeEquivalent :: !(Maybe (Textual Int32))
    , _uoTitle :: !(Maybe Text)
    , _uoType :: !(Maybe Text)
    , _uoCustomType :: !(Maybe Text)
    , _uoDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'uoFullTimeEquivalent'
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
  UserOrganization'
    { _uoDePartment = Nothing
    , _uoLocation = Nothing
    , _uoCostCenter = Nothing
    , _uoDomain = Nothing
    , _uoSymbol = Nothing
    , _uoPrimary = Nothing
    , _uoName = Nothing
    , _uoFullTimeEquivalent = Nothing
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

-- | The full-time equivalent millipercent within the organization (100000 =
-- 100%).
uoFullTimeEquivalent :: Lens' UserOrganization (Maybe Int32)
uoFullTimeEquivalent
  = lens _uoFullTimeEquivalent
      (\ s a -> s{_uoFullTimeEquivalent = a})
      . mapping _Coerce

-- | Title (designation) of the user in the organization.
uoTitle :: Lens' UserOrganization (Maybe Text)
uoTitle = lens _uoTitle (\ s a -> s{_uoTitle = a})

-- | Each entry can have a type which indicates standard types of that entry.
-- For example organization could be of school work etc. In addition to the
-- standard type an entry can have a custom type and can give it any name.
-- Such types should have the CUSTOM value as type and also have a
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
                 UserOrganization' <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "costCenter")
                     <*> (o .:? "domain")
                     <*> (o .:? "symbol")
                     <*> (o .:? "primary")
                     <*> (o .:? "name")
                     <*> (o .:? "fullTimeEquivalent")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "customType")
                     <*> (o .:? "description"))

instance ToJSON UserOrganization where
        toJSON UserOrganization'{..}
          = object
              (catMaybes
                 [("department" .=) <$> _uoDePartment,
                  ("location" .=) <$> _uoLocation,
                  ("costCenter" .=) <$> _uoCostCenter,
                  ("domain" .=) <$> _uoDomain,
                  ("symbol" .=) <$> _uoSymbol,
                  ("primary" .=) <$> _uoPrimary,
                  ("name" .=) <$> _uoName,
                  ("fullTimeEquivalent" .=) <$> _uoFullTimeEquivalent,
                  ("title" .=) <$> _uoTitle, ("type" .=) <$> _uoType,
                  ("customType" .=) <$> _uoCustomType,
                  ("description" .=) <$> _uoDescription])

-- | JSON template for a website entry.
--
-- /See:/ 'userWebsite' smart constructor.
data UserWebsite =
  UserWebsite'
    { _uwValue :: !(Maybe Text)
    , _uwPrimary :: !(Maybe Bool)
    , _uwType :: !(Maybe Text)
    , _uwCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserWebsite'
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
-- For example website could be of home work blog etc. In addition to the
-- standard type an entry can have a custom type and can give it any name.
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
                 UserWebsite' <$>
                   (o .:? "value") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserWebsite where
        toJSON UserWebsite'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uwValue,
                  ("primary" .=) <$> _uwPrimary,
                  ("type" .=) <$> _uwType,
                  ("customType" .=) <$> _uwCustomType])

--
-- /See:/ 'chromeOSDeviceActiveTimeRangesItem' smart constructor.
data ChromeOSDeviceActiveTimeRangesItem =
  ChromeOSDeviceActiveTimeRangesItem'
    { _codatriDate :: !(Maybe Date')
    , _codatriActiveTime :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ChromeOSDeviceActiveTimeRangesItem'
    {_codatriDate = Nothing, _codatriActiveTime = Nothing}


-- | Date of usage
codatriDate :: Lens' ChromeOSDeviceActiveTimeRangesItem (Maybe Day)
codatriDate
  = lens _codatriDate (\ s a -> s{_codatriDate = a}) .
      mapping _Date

-- | Duration of usage in milliseconds.
codatriActiveTime :: Lens' ChromeOSDeviceActiveTimeRangesItem (Maybe Int32)
codatriActiveTime
  = lens _codatriActiveTime
      (\ s a -> s{_codatriActiveTime = a})
      . mapping _Coerce

instance FromJSON ChromeOSDeviceActiveTimeRangesItem
         where
        parseJSON
          = withObject "ChromeOSDeviceActiveTimeRangesItem"
              (\ o ->
                 ChromeOSDeviceActiveTimeRangesItem' <$>
                   (o .:? "date") <*> (o .:? "activeTime"))

instance ToJSON ChromeOSDeviceActiveTimeRangesItem
         where
        toJSON ChromeOSDeviceActiveTimeRangesItem'{..}
          = object
              (catMaybes
                 [("date" .=) <$> _codatriDate,
                  ("activeTime" .=) <$> _codatriActiveTime])

-- | A response for issuing a command.
--
-- /See:/ 'directoryChromeosDevicesIssueCommandResponse' smart constructor.
newtype DirectoryChromeosDevicesIssueCommandResponse =
  DirectoryChromeosDevicesIssueCommandResponse'
    { _dcdicrCommandId :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectoryChromeosDevicesIssueCommandResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcdicrCommandId'
directoryChromeosDevicesIssueCommandResponse
    :: DirectoryChromeosDevicesIssueCommandResponse
directoryChromeosDevicesIssueCommandResponse =
  DirectoryChromeosDevicesIssueCommandResponse' {_dcdicrCommandId = Nothing}


-- | The unique ID of the issued command, used to retrieve the command
-- status.
dcdicrCommandId :: Lens' DirectoryChromeosDevicesIssueCommandResponse (Maybe Int64)
dcdicrCommandId
  = lens _dcdicrCommandId
      (\ s a -> s{_dcdicrCommandId = a})
      . mapping _Coerce

instance FromJSON
           DirectoryChromeosDevicesIssueCommandResponse
         where
        parseJSON
          = withObject
              "DirectoryChromeosDevicesIssueCommandResponse"
              (\ o ->
                 DirectoryChromeosDevicesIssueCommandResponse' <$>
                   (o .:? "commandId"))

instance ToJSON
           DirectoryChromeosDevicesIssueCommandResponse
         where
        toJSON
          DirectoryChromeosDevicesIssueCommandResponse'{..}
          = object
              (catMaybes [("commandId" .=) <$> _dcdicrCommandId])

-- | JSON template for an email.
--
-- /See:/ 'userEmail' smart constructor.
data UserEmail =
  UserEmail'
    { _ueAddress :: !(Maybe Text)
    , _uePrimary :: !(Maybe Bool)
    , _ueType :: !(Maybe Text)
    , _ueCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserEmail'
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
                 UserEmail' <$>
                   (o .:? "address") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserEmail where
        toJSON UserEmail'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _ueAddress,
                  ("primary" .=) <$> _uePrimary,
                  ("type" .=) <$> _ueType,
                  ("customType" .=) <$> _ueCustomType])

-- | JSON template for a phone entry.
--
-- /See:/ 'userPhone' smart constructor.
data UserPhone =
  UserPhone'
    { _upValue :: !(Maybe Text)
    , _upPrimary :: !(Maybe Bool)
    , _upType :: !(Maybe Text)
    , _upCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserPhone'
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
-- For example phone could be of home_fax work mobile etc. In addition to
-- the standard type an entry can have a custom type and can give it any
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
                 UserPhone' <$>
                   (o .:? "value") <*> (o .:? "primary") <*>
                     (o .:? "type")
                     <*> (o .:? "customType"))

instance ToJSON UserPhone where
        toJSON UserPhone'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _upValue,
                  ("primary" .=) <$> _upPrimary,
                  ("type" .=) <$> _upType,
                  ("customType" .=) <$> _upCustomType])

--
-- /See:/ 'userPhoto' smart constructor.
data UserPhoto =
  UserPhoto'
    { _upPhotoData :: !(Maybe Bytes)
    , _upEtag :: !(Maybe Text)
    , _upHeight :: !(Maybe (Textual Int32))
    , _upKind :: !Text
    , _upWidth :: !(Maybe (Textual Int32))
    , _upMimeType :: !(Maybe Text)
    , _upId :: !(Maybe Text)
    , _upPrimaryEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserPhoto'
    { _upPhotoData = Nothing
    , _upEtag = Nothing
    , _upHeight = Nothing
    , _upKind = "admin#directory#user#photo"
    , _upWidth = Nothing
    , _upMimeType = Nothing
    , _upId = Nothing
    , _upPrimaryEmail = Nothing
    }


-- | The user photo\'s upload data in [web-safe
-- Base64](https:\/\/en.wikipedia.org\/wiki\/Base64#URL_applications)
-- format in bytes. This means: * The slash (\/) character is replaced with
-- the underscore (_) character. * The plus sign (+) character is replaced
-- with the hyphen (-) character. * The equals sign (=) character is
-- replaced with the asterisk (*). * For padding, the period (.) character
-- is used instead of the RFC-4648 baseURL definition which uses the equals
-- sign (=) for padding. This is done to simplify URL-parsing. * Whatever
-- the size of the photo being uploaded, the API downsizes it to 96x96
-- pixels.
upPhotoData :: Lens' UserPhoto (Maybe ByteString)
upPhotoData
  = lens _upPhotoData (\ s a -> s{_upPhotoData = a}) .
      mapping _Bytes

-- | ETag of the resource.
upEtag :: Lens' UserPhoto (Maybe Text)
upEtag = lens _upEtag (\ s a -> s{_upEtag = a})

-- | Height of the photo in pixels.
upHeight :: Lens' UserPhoto (Maybe Int32)
upHeight
  = lens _upHeight (\ s a -> s{_upHeight = a}) .
      mapping _Coerce

-- | The type of the API resource. For Photo resources, this is
-- \`admin#directory#user#photo\`.
upKind :: Lens' UserPhoto Text
upKind = lens _upKind (\ s a -> s{_upKind = a})

-- | Width of the photo in pixels.
upWidth :: Lens' UserPhoto (Maybe Int32)
upWidth
  = lens _upWidth (\ s a -> s{_upWidth = a}) .
      mapping _Coerce

-- | The MIME type of the photo. Allowed values are \`JPEG\`, \`PNG\`,
-- \`GIF\`, \`BMP\`, \`TIFF\`, and web-safe base64 encoding.
upMimeType :: Lens' UserPhoto (Maybe Text)
upMimeType
  = lens _upMimeType (\ s a -> s{_upMimeType = a})

-- | The ID the API uses to uniquely identify the user.
upId :: Lens' UserPhoto (Maybe Text)
upId = lens _upId (\ s a -> s{_upId = a})

-- | The user\'s primary email address.
upPrimaryEmail :: Lens' UserPhoto (Maybe Text)
upPrimaryEmail
  = lens _upPrimaryEmail
      (\ s a -> s{_upPrimaryEmail = a})

instance FromJSON UserPhoto where
        parseJSON
          = withObject "UserPhoto"
              (\ o ->
                 UserPhoto' <$>
                   (o .:? "photoData") <*> (o .:? "etag") <*>
                     (o .:? "height")
                     <*> (o .:? "kind" .!= "admin#directory#user#photo")
                     <*> (o .:? "width")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryEmail"))

instance ToJSON UserPhoto where
        toJSON UserPhoto'{..}
          = object
              (catMaybes
                 [("photoData" .=) <$> _upPhotoData,
                  ("etag" .=) <$> _upEtag, ("height" .=) <$> _upHeight,
                  Just ("kind" .= _upKind), ("width" .=) <$> _upWidth,
                  ("mimeType" .=) <$> _upMimeType, ("id" .=) <$> _upId,
                  ("primaryEmail" .=) <$> _upPrimaryEmail])

--
-- /See:/ 'chromeOSDeviceSystemRamFreeReportsItem' smart constructor.
data ChromeOSDeviceSystemRamFreeReportsItem =
  ChromeOSDeviceSystemRamFreeReportsItem'
    { _codsrfriReportTime :: !(Maybe DateTime')
    , _codsrfriSystemRamFreeInfo :: !(Maybe [Textual Int64])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceSystemRamFreeReportsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codsrfriReportTime'
--
-- * 'codsrfriSystemRamFreeInfo'
chromeOSDeviceSystemRamFreeReportsItem
    :: ChromeOSDeviceSystemRamFreeReportsItem
chromeOSDeviceSystemRamFreeReportsItem =
  ChromeOSDeviceSystemRamFreeReportsItem'
    {_codsrfriReportTime = Nothing, _codsrfriSystemRamFreeInfo = Nothing}


-- | Date and time the report was received.
codsrfriReportTime :: Lens' ChromeOSDeviceSystemRamFreeReportsItem (Maybe UTCTime)
codsrfriReportTime
  = lens _codsrfriReportTime
      (\ s a -> s{_codsrfriReportTime = a})
      . mapping _DateTime

codsrfriSystemRamFreeInfo :: Lens' ChromeOSDeviceSystemRamFreeReportsItem [Int64]
codsrfriSystemRamFreeInfo
  = lens _codsrfriSystemRamFreeInfo
      (\ s a -> s{_codsrfriSystemRamFreeInfo = a})
      . _Default
      . _Coerce

instance FromJSON
           ChromeOSDeviceSystemRamFreeReportsItem
         where
        parseJSON
          = withObject "ChromeOSDeviceSystemRamFreeReportsItem"
              (\ o ->
                 ChromeOSDeviceSystemRamFreeReportsItem' <$>
                   (o .:? "reportTime") <*>
                     (o .:? "systemRamFreeInfo" .!= mempty))

instance ToJSON
           ChromeOSDeviceSystemRamFreeReportsItem
         where
        toJSON ChromeOSDeviceSystemRamFreeReportsItem'{..}
          = object
              (catMaybes
                 [("reportTime" .=) <$> _codsrfriReportTime,
                  ("systemRamFreeInfo" .=) <$>
                    _codsrfriSystemRamFreeInfo])

-- | JSON template for a POSIX account entry.
--
-- /See:/ 'userPosixAccount' smart constructor.
data UserPosixAccount =
  UserPosixAccount'
    { _upaGecos :: !(Maybe Text)
    , _upaUid :: !(Maybe (Textual Word64))
    , _upaUsername :: !(Maybe Text)
    , _upaShell :: !(Maybe Text)
    , _upaPrimary :: !(Maybe Bool)
    , _upaAccountId :: !(Maybe Text)
    , _upaGid :: !(Maybe (Textual Word64))
    , _upaOperatingSystemType :: !(Maybe Text)
    , _upaSystemId :: !(Maybe Text)
    , _upaHomeDirectory :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserPosixAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upaGecos'
--
-- * 'upaUid'
--
-- * 'upaUsername'
--
-- * 'upaShell'
--
-- * 'upaPrimary'
--
-- * 'upaAccountId'
--
-- * 'upaGid'
--
-- * 'upaOperatingSystemType'
--
-- * 'upaSystemId'
--
-- * 'upaHomeDirectory'
userPosixAccount
    :: UserPosixAccount
userPosixAccount =
  UserPosixAccount'
    { _upaGecos = Nothing
    , _upaUid = Nothing
    , _upaUsername = Nothing
    , _upaShell = Nothing
    , _upaPrimary = Nothing
    , _upaAccountId = Nothing
    , _upaGid = Nothing
    , _upaOperatingSystemType = Nothing
    , _upaSystemId = Nothing
    , _upaHomeDirectory = Nothing
    }


-- | The GECOS (user information) for this account.
upaGecos :: Lens' UserPosixAccount (Maybe Text)
upaGecos = lens _upaGecos (\ s a -> s{_upaGecos = a})

-- | The POSIX compliant user ID.
upaUid :: Lens' UserPosixAccount (Maybe Word64)
upaUid
  = lens _upaUid (\ s a -> s{_upaUid = a}) .
      mapping _Coerce

-- | The username of the account.
upaUsername :: Lens' UserPosixAccount (Maybe Text)
upaUsername
  = lens _upaUsername (\ s a -> s{_upaUsername = a})

-- | The path to the login shell for this account.
upaShell :: Lens' UserPosixAccount (Maybe Text)
upaShell = lens _upaShell (\ s a -> s{_upaShell = a})

-- | If this is user\'s primary account within the SystemId.
upaPrimary :: Lens' UserPosixAccount (Maybe Bool)
upaPrimary
  = lens _upaPrimary (\ s a -> s{_upaPrimary = a})

-- | A POSIX account field identifier.
upaAccountId :: Lens' UserPosixAccount (Maybe Text)
upaAccountId
  = lens _upaAccountId (\ s a -> s{_upaAccountId = a})

-- | The default group ID.
upaGid :: Lens' UserPosixAccount (Maybe Word64)
upaGid
  = lens _upaGid (\ s a -> s{_upaGid = a}) .
      mapping _Coerce

-- | The operating system type for this account.
upaOperatingSystemType :: Lens' UserPosixAccount (Maybe Text)
upaOperatingSystemType
  = lens _upaOperatingSystemType
      (\ s a -> s{_upaOperatingSystemType = a})

-- | System identifier for which account Username or Uid apply to.
upaSystemId :: Lens' UserPosixAccount (Maybe Text)
upaSystemId
  = lens _upaSystemId (\ s a -> s{_upaSystemId = a})

-- | The path to the home directory for this account.
upaHomeDirectory :: Lens' UserPosixAccount (Maybe Text)
upaHomeDirectory
  = lens _upaHomeDirectory
      (\ s a -> s{_upaHomeDirectory = a})

instance FromJSON UserPosixAccount where
        parseJSON
          = withObject "UserPosixAccount"
              (\ o ->
                 UserPosixAccount' <$>
                   (o .:? "gecos") <*> (o .:? "uid") <*>
                     (o .:? "username")
                     <*> (o .:? "shell")
                     <*> (o .:? "primary")
                     <*> (o .:? "accountId")
                     <*> (o .:? "gid")
                     <*> (o .:? "operatingSystemType")
                     <*> (o .:? "systemId")
                     <*> (o .:? "homeDirectory"))

instance ToJSON UserPosixAccount where
        toJSON UserPosixAccount'{..}
          = object
              (catMaybes
                 [("gecos" .=) <$> _upaGecos, ("uid" .=) <$> _upaUid,
                  ("username" .=) <$> _upaUsername,
                  ("shell" .=) <$> _upaShell,
                  ("primary" .=) <$> _upaPrimary,
                  ("accountId" .=) <$> _upaAccountId,
                  ("gid" .=) <$> _upaGid,
                  ("operatingSystemType" .=) <$>
                    _upaOperatingSystemType,
                  ("systemId" .=) <$> _upaSystemId,
                  ("homeDirectory" .=) <$> _upaHomeDirectory])

-- | JSON template for a feature instance.
--
-- /See:/ 'featureInstance' smart constructor.
newtype FeatureInstance =
  FeatureInstance'
    { _fiFeature :: Maybe Feature
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FeatureInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiFeature'
featureInstance
    :: FeatureInstance
featureInstance = FeatureInstance' {_fiFeature = Nothing}


-- | The feature that this is an instance of. A calendar resource may have
-- multiple instances of a feature.
fiFeature :: Lens' FeatureInstance (Maybe Feature)
fiFeature
  = lens _fiFeature (\ s a -> s{_fiFeature = a})

instance FromJSON FeatureInstance where
        parseJSON
          = withObject "FeatureInstance"
              (\ o -> FeatureInstance' <$> (o .:? "feature"))

instance ToJSON FeatureInstance where
        toJSON FeatureInstance'{..}
          = object (catMaybes [("feature" .=) <$> _fiFeature])

-- | Google Workspace Mobile Management includes Android, [Google
-- Sync](https:\/\/support.google.com\/a\/answer\/135937), and iOS devices.
-- For more information about common group mobile device API tasks, see the
-- [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-mobile-devices.html).
--
-- /See:/ 'mobileDevice' smart constructor.
data MobileDevice =
  MobileDevice'
    { _mobEmail :: !(Maybe [Text])
    , _mobStatus :: !(Maybe Text)
    , _mobPrivilege :: !(Maybe Text)
    , _mobEtag :: !(Maybe Text)
    , _mobResourceId :: !(Maybe Text)
    , _mobManufacturer :: !(Maybe Text)
    , _mobBuildNumber :: !(Maybe Text)
    , _mobManagedAccountIsOnOwnerProFile :: !(Maybe Bool)
    , _mobLastSync :: !(Maybe DateTime')
    , _mobOtherAccountsInfo :: !(Maybe [Text])
    , _mobKind :: !Text
    , _mobAdbStatus :: !(Maybe Bool)
    , _mobReleaseVersion :: !(Maybe Text)
    , _mobBrand :: !(Maybe Text)
    , _mobSecurityPatchLevel :: !(Maybe (Textual Int64))
    , _mobNetworkOperator :: !(Maybe Text)
    , _mobKernelVersion :: !(Maybe Text)
    , _mobOS :: !(Maybe Text)
    , _mobName :: !(Maybe [Text])
    , _mobModel :: !(Maybe Text)
    , _mobDeveloperOptionsStatus :: !(Maybe Bool)
    , _mobUnknownSourcesStatus :: !(Maybe Bool)
    , _mobMeid :: !(Maybe Text)
    , _mobBootLoaderVersion :: !(Maybe Text)
    , _mobDeviceId :: !(Maybe Text)
    , _mobFirstSync :: !(Maybe DateTime')
    , _mobUserAgent :: !(Maybe Text)
    , _mobImei :: !(Maybe Text)
    , _mobType :: !(Maybe Text)
    , _mobWifiMACAddress :: !(Maybe Text)
    , _mobEncryptionStatus :: !(Maybe Text)
    , _mobSerialNumber :: !(Maybe Text)
    , _mobDevicePasswordStatus :: !(Maybe Text)
    , _mobHardwareId :: !(Maybe Text)
    , _mobBasebandVersion :: !(Maybe Text)
    , _mobSupportsWorkProFile :: !(Maybe Bool)
    , _mobHardware :: !(Maybe Text)
    , _mobDeviceCompromisedStatus :: !(Maybe Text)
    , _mobApplications :: !(Maybe [MobileDeviceApplicationsItem])
    , _mobDefaultLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mobEmail'
--
-- * 'mobStatus'
--
-- * 'mobPrivilege'
--
-- * 'mobEtag'
--
-- * 'mobResourceId'
--
-- * 'mobManufacturer'
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
-- * 'mobReleaseVersion'
--
-- * 'mobBrand'
--
-- * 'mobSecurityPatchLevel'
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
-- * 'mobBootLoaderVersion'
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
-- * 'mobEncryptionStatus'
--
-- * 'mobSerialNumber'
--
-- * 'mobDevicePasswordStatus'
--
-- * 'mobHardwareId'
--
-- * 'mobBasebandVersion'
--
-- * 'mobSupportsWorkProFile'
--
-- * 'mobHardware'
--
-- * 'mobDeviceCompromisedStatus'
--
-- * 'mobApplications'
--
-- * 'mobDefaultLanguage'
mobileDevice
    :: MobileDevice
mobileDevice =
  MobileDevice'
    { _mobEmail = Nothing
    , _mobStatus = Nothing
    , _mobPrivilege = Nothing
    , _mobEtag = Nothing
    , _mobResourceId = Nothing
    , _mobManufacturer = Nothing
    , _mobBuildNumber = Nothing
    , _mobManagedAccountIsOnOwnerProFile = Nothing
    , _mobLastSync = Nothing
    , _mobOtherAccountsInfo = Nothing
    , _mobKind = "admin#directory#mobiledevice"
    , _mobAdbStatus = Nothing
    , _mobReleaseVersion = Nothing
    , _mobBrand = Nothing
    , _mobSecurityPatchLevel = Nothing
    , _mobNetworkOperator = Nothing
    , _mobKernelVersion = Nothing
    , _mobOS = Nothing
    , _mobName = Nothing
    , _mobModel = Nothing
    , _mobDeveloperOptionsStatus = Nothing
    , _mobUnknownSourcesStatus = Nothing
    , _mobMeid = Nothing
    , _mobBootLoaderVersion = Nothing
    , _mobDeviceId = Nothing
    , _mobFirstSync = Nothing
    , _mobUserAgent = Nothing
    , _mobImei = Nothing
    , _mobType = Nothing
    , _mobWifiMACAddress = Nothing
    , _mobEncryptionStatus = Nothing
    , _mobSerialNumber = Nothing
    , _mobDevicePasswordStatus = Nothing
    , _mobHardwareId = Nothing
    , _mobBasebandVersion = Nothing
    , _mobSupportsWorkProFile = Nothing
    , _mobHardware = Nothing
    , _mobDeviceCompromisedStatus = Nothing
    , _mobApplications = Nothing
    , _mobDefaultLanguage = Nothing
    }


-- | List of owner\'s email addresses. If your application needs the current
-- list of user emails, use the
-- [get](\/admin-sdk\/directory\/v1\/reference\/mobiledevices\/get.html)
-- method. For additional information, see the [retrieve a
-- user](\/admin-sdk\/directory\/v1\/guides\/manage-users#get_user) method.
mobEmail :: Lens' MobileDevice [Text]
mobEmail
  = lens _mobEmail (\ s a -> s{_mobEmail = a}) .
      _Default
      . _Coerce

-- | The device\'s status.
mobStatus :: Lens' MobileDevice (Maybe Text)
mobStatus
  = lens _mobStatus (\ s a -> s{_mobStatus = a})

-- | DMAgentPermission (Read-only)
mobPrivilege :: Lens' MobileDevice (Maybe Text)
mobPrivilege
  = lens _mobPrivilege (\ s a -> s{_mobPrivilege = a})

-- | ETag of the resource.
mobEtag :: Lens' MobileDevice (Maybe Text)
mobEtag = lens _mobEtag (\ s a -> s{_mobEtag = a})

-- | The unique ID the API service uses to identify the mobile device.
mobResourceId :: Lens' MobileDevice (Maybe Text)
mobResourceId
  = lens _mobResourceId
      (\ s a -> s{_mobResourceId = a})

-- | Mobile Device manufacturer (Read-only)
mobManufacturer :: Lens' MobileDevice (Maybe Text)
mobManufacturer
  = lens _mobManufacturer
      (\ s a -> s{_mobManufacturer = a})

-- | The device\'s operating system build number.
mobBuildNumber :: Lens' MobileDevice (Maybe Text)
mobBuildNumber
  = lens _mobBuildNumber
      (\ s a -> s{_mobBuildNumber = a})

-- | Boolean indicating if this account is on owner\/primary profile or not.
mobManagedAccountIsOnOwnerProFile :: Lens' MobileDevice (Maybe Bool)
mobManagedAccountIsOnOwnerProFile
  = lens _mobManagedAccountIsOnOwnerProFile
      (\ s a -> s{_mobManagedAccountIsOnOwnerProFile = a})

-- | Date and time the device was last synchronized with the policy settings
-- in the G Suite administrator control panel (Read-only)
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

-- | The type of the API resource. For Mobiledevices resources, the value is
-- \`admin#directory#mobiledevice\`.
mobKind :: Lens' MobileDevice Text
mobKind = lens _mobKind (\ s a -> s{_mobKind = a})

-- | Adb (USB debugging) enabled or disabled on device (Read-only)
mobAdbStatus :: Lens' MobileDevice (Maybe Bool)
mobAdbStatus
  = lens _mobAdbStatus (\ s a -> s{_mobAdbStatus = a})

-- | Mobile Device release version version (Read-only)
mobReleaseVersion :: Lens' MobileDevice (Maybe Text)
mobReleaseVersion
  = lens _mobReleaseVersion
      (\ s a -> s{_mobReleaseVersion = a})

-- | Mobile Device Brand (Read-only)
mobBrand :: Lens' MobileDevice (Maybe Text)
mobBrand = lens _mobBrand (\ s a -> s{_mobBrand = a})

-- | Mobile Device Security patch level (Read-only)
mobSecurityPatchLevel :: Lens' MobileDevice (Maybe Int64)
mobSecurityPatchLevel
  = lens _mobSecurityPatchLevel
      (\ s a -> s{_mobSecurityPatchLevel = a})
      . mapping _Coerce

-- | Mobile Device mobile or network operator (if available) (Read-only)
mobNetworkOperator :: Lens' MobileDevice (Maybe Text)
mobNetworkOperator
  = lens _mobNetworkOperator
      (\ s a -> s{_mobNetworkOperator = a})

-- | The device\'s kernel version.
mobKernelVersion :: Lens' MobileDevice (Maybe Text)
mobKernelVersion
  = lens _mobKernelVersion
      (\ s a -> s{_mobKernelVersion = a})

-- | The mobile device\'s operating system, for example IOS 4.3 or Android
-- 2.3.5. This property can be
-- [updated](\/admin-sdk\/directory\/v1\/reference\/mobiledevices\/update.html).
-- For more information, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-mobile-devices#update_mobile_device).
mobOS :: Lens' MobileDevice (Maybe Text)
mobOS = lens _mobOS (\ s a -> s{_mobOS = a})

-- | List of the owner\'s user names. If your application needs the current
-- list of device owner names, use the
-- [get](\/admin-sdk\/directory\/v1\/reference\/mobiledevices\/get.html)
-- method. For more information about retrieving mobile device user
-- information, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-users#get_user).
mobName :: Lens' MobileDevice [Text]
mobName
  = lens _mobName (\ s a -> s{_mobName = a}) . _Default
      . _Coerce

-- | The mobile device\'s model name, for example Nexus S. This property can
-- be
-- [updated](\/admin-sdk\/directory\/v1\/reference\/mobiledevices\/update.html).
-- For more information, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-mobile=devices#update_mobile_device).
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

-- | The device\'s MEID number.
mobMeid :: Lens' MobileDevice (Maybe Text)
mobMeid = lens _mobMeid (\ s a -> s{_mobMeid = a})

-- | Mobile Device Bootloader version (Read-only)
mobBootLoaderVersion :: Lens' MobileDevice (Maybe Text)
mobBootLoaderVersion
  = lens _mobBootLoaderVersion
      (\ s a -> s{_mobBootLoaderVersion = a})

-- | The serial number for a Google Sync mobile device. For Android and iOS
-- devices, this is a software generated unique identifier.
mobDeviceId :: Lens' MobileDevice (Maybe Text)
mobDeviceId
  = lens _mobDeviceId (\ s a -> s{_mobDeviceId = a})

-- | Date and time the device was first synchronized with the policy settings
-- in the G Suite administrator control panel (Read-only)
mobFirstSync :: Lens' MobileDevice (Maybe UTCTime)
mobFirstSync
  = lens _mobFirstSync (\ s a -> s{_mobFirstSync = a})
      . mapping _DateTime

-- | Gives information about the device such as \`os\` version. This property
-- can be
-- [updated](\/admin-sdk\/directory\/v1\/reference\/mobiledevices\/update.html).
-- For more information, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-mobile-devices#update_mobile_device).
mobUserAgent :: Lens' MobileDevice (Maybe Text)
mobUserAgent
  = lens _mobUserAgent (\ s a -> s{_mobUserAgent = a})

-- | The device\'s IMEI number.
mobImei :: Lens' MobileDevice (Maybe Text)
mobImei = lens _mobImei (\ s a -> s{_mobImei = a})

-- | The type of mobile device.
mobType :: Lens' MobileDevice (Maybe Text)
mobType = lens _mobType (\ s a -> s{_mobType = a})

-- | The device\'s MAC address on Wi-Fi networks.
mobWifiMACAddress :: Lens' MobileDevice (Maybe Text)
mobWifiMACAddress
  = lens _mobWifiMACAddress
      (\ s a -> s{_mobWifiMACAddress = a})

-- | Mobile Device Encryption Status (Read-only)
mobEncryptionStatus :: Lens' MobileDevice (Maybe Text)
mobEncryptionStatus
  = lens _mobEncryptionStatus
      (\ s a -> s{_mobEncryptionStatus = a})

-- | The device\'s serial number.
mobSerialNumber :: Lens' MobileDevice (Maybe Text)
mobSerialNumber
  = lens _mobSerialNumber
      (\ s a -> s{_mobSerialNumber = a})

-- | DevicePasswordStatus (Read-only)
mobDevicePasswordStatus :: Lens' MobileDevice (Maybe Text)
mobDevicePasswordStatus
  = lens _mobDevicePasswordStatus
      (\ s a -> s{_mobDevicePasswordStatus = a})

-- | The IMEI\/MEID unique identifier for Android hardware. It is not
-- applicable to Google Sync devices. When adding an Android mobile device,
-- this is an optional property. When updating one of these devices, this
-- is a read-only property.
mobHardwareId :: Lens' MobileDevice (Maybe Text)
mobHardwareId
  = lens _mobHardwareId
      (\ s a -> s{_mobHardwareId = a})

-- | The device\'s baseband version.
mobBasebandVersion :: Lens' MobileDevice (Maybe Text)
mobBasebandVersion
  = lens _mobBasebandVersion
      (\ s a -> s{_mobBasebandVersion = a})

-- | Work profile supported on device (Read-only)
mobSupportsWorkProFile :: Lens' MobileDevice (Maybe Bool)
mobSupportsWorkProFile
  = lens _mobSupportsWorkProFile
      (\ s a -> s{_mobSupportsWorkProFile = a})

-- | Mobile Device Hardware (Read-only)
mobHardware :: Lens' MobileDevice (Maybe Text)
mobHardware
  = lens _mobHardware (\ s a -> s{_mobHardware = a})

-- | The compromised device status.
mobDeviceCompromisedStatus :: Lens' MobileDevice (Maybe Text)
mobDeviceCompromisedStatus
  = lens _mobDeviceCompromisedStatus
      (\ s a -> s{_mobDeviceCompromisedStatus = a})

-- | The list of applications installed on an Android mobile device. It is
-- not applicable to Google Sync and iOS devices. The list includes any
-- Android applications that access Google Workspace data. When updating an
-- applications list, it is important to note that updates replace the
-- existing list. If the Android device has two existing applications and
-- the API updates the list with five applications, the is now the updated
-- list of five applications.
mobApplications :: Lens' MobileDevice [MobileDeviceApplicationsItem]
mobApplications
  = lens _mobApplications
      (\ s a -> s{_mobApplications = a})
      . _Default
      . _Coerce

-- | The default locale used on the device.
mobDefaultLanguage :: Lens' MobileDevice (Maybe Text)
mobDefaultLanguage
  = lens _mobDefaultLanguage
      (\ s a -> s{_mobDefaultLanguage = a})

instance FromJSON MobileDevice where
        parseJSON
          = withObject "MobileDevice"
              (\ o ->
                 MobileDevice' <$>
                   (o .:? "email" .!= mempty) <*> (o .:? "status") <*>
                     (o .:? "privilege")
                     <*> (o .:? "etag")
                     <*> (o .:? "resourceId")
                     <*> (o .:? "manufacturer")
                     <*> (o .:? "buildNumber")
                     <*> (o .:? "managedAccountIsOnOwnerProfile")
                     <*> (o .:? "lastSync")
                     <*> (o .:? "otherAccountsInfo" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#directory#mobiledevice")
                     <*> (o .:? "adbStatus")
                     <*> (o .:? "releaseVersion")
                     <*> (o .:? "brand")
                     <*> (o .:? "securityPatchLevel")
                     <*> (o .:? "networkOperator")
                     <*> (o .:? "kernelVersion")
                     <*> (o .:? "os")
                     <*> (o .:? "name" .!= mempty)
                     <*> (o .:? "model")
                     <*> (o .:? "developerOptionsStatus")
                     <*> (o .:? "unknownSourcesStatus")
                     <*> (o .:? "meid")
                     <*> (o .:? "bootloaderVersion")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "firstSync")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "imei")
                     <*> (o .:? "type")
                     <*> (o .:? "wifiMacAddress")
                     <*> (o .:? "encryptionStatus")
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "devicePasswordStatus")
                     <*> (o .:? "hardwareId")
                     <*> (o .:? "basebandVersion")
                     <*> (o .:? "supportsWorkProfile")
                     <*> (o .:? "hardware")
                     <*> (o .:? "deviceCompromisedStatus")
                     <*> (o .:? "applications" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON MobileDevice where
        toJSON MobileDevice'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _mobEmail,
                  ("status" .=) <$> _mobStatus,
                  ("privilege" .=) <$> _mobPrivilege,
                  ("etag" .=) <$> _mobEtag,
                  ("resourceId" .=) <$> _mobResourceId,
                  ("manufacturer" .=) <$> _mobManufacturer,
                  ("buildNumber" .=) <$> _mobBuildNumber,
                  ("managedAccountIsOnOwnerProfile" .=) <$>
                    _mobManagedAccountIsOnOwnerProFile,
                  ("lastSync" .=) <$> _mobLastSync,
                  ("otherAccountsInfo" .=) <$> _mobOtherAccountsInfo,
                  Just ("kind" .= _mobKind),
                  ("adbStatus" .=) <$> _mobAdbStatus,
                  ("releaseVersion" .=) <$> _mobReleaseVersion,
                  ("brand" .=) <$> _mobBrand,
                  ("securityPatchLevel" .=) <$> _mobSecurityPatchLevel,
                  ("networkOperator" .=) <$> _mobNetworkOperator,
                  ("kernelVersion" .=) <$> _mobKernelVersion,
                  ("os" .=) <$> _mobOS, ("name" .=) <$> _mobName,
                  ("model" .=) <$> _mobModel,
                  ("developerOptionsStatus" .=) <$>
                    _mobDeveloperOptionsStatus,
                  ("unknownSourcesStatus" .=) <$>
                    _mobUnknownSourcesStatus,
                  ("meid" .=) <$> _mobMeid,
                  ("bootloaderVersion" .=) <$> _mobBootLoaderVersion,
                  ("deviceId" .=) <$> _mobDeviceId,
                  ("firstSync" .=) <$> _mobFirstSync,
                  ("userAgent" .=) <$> _mobUserAgent,
                  ("imei" .=) <$> _mobImei, ("type" .=) <$> _mobType,
                  ("wifiMacAddress" .=) <$> _mobWifiMACAddress,
                  ("encryptionStatus" .=) <$> _mobEncryptionStatus,
                  ("serialNumber" .=) <$> _mobSerialNumber,
                  ("devicePasswordStatus" .=) <$>
                    _mobDevicePasswordStatus,
                  ("hardwareId" .=) <$> _mobHardwareId,
                  ("basebandVersion" .=) <$> _mobBasebandVersion,
                  ("supportsWorkProfile" .=) <$>
                    _mobSupportsWorkProFile,
                  ("hardware" .=) <$> _mobHardware,
                  ("deviceCompromisedStatus" .=) <$>
                    _mobDeviceCompromisedStatus,
                  ("applications" .=) <$> _mobApplications,
                  ("defaultLanguage" .=) <$> _mobDefaultLanguage])

--
-- /See:/ 'chromeOSDeviceCPUStatusReportsItem' smart constructor.
data ChromeOSDeviceCPUStatusReportsItem =
  ChromeOSDeviceCPUStatusReportsItem'
    { _codcsriCPUUtilizationPercentageInfo :: !(Maybe [Textual Int32])
    , _codcsriCPUTemperatureInfo :: !(Maybe [ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem])
    , _codcsriReportTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceCPUStatusReportsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codcsriCPUUtilizationPercentageInfo'
--
-- * 'codcsriCPUTemperatureInfo'
--
-- * 'codcsriReportTime'
chromeOSDeviceCPUStatusReportsItem
    :: ChromeOSDeviceCPUStatusReportsItem
chromeOSDeviceCPUStatusReportsItem =
  ChromeOSDeviceCPUStatusReportsItem'
    { _codcsriCPUUtilizationPercentageInfo = Nothing
    , _codcsriCPUTemperatureInfo = Nothing
    , _codcsriReportTime = Nothing
    }


codcsriCPUUtilizationPercentageInfo :: Lens' ChromeOSDeviceCPUStatusReportsItem [Int32]
codcsriCPUUtilizationPercentageInfo
  = lens _codcsriCPUUtilizationPercentageInfo
      (\ s a ->
         s{_codcsriCPUUtilizationPercentageInfo = a})
      . _Default
      . _Coerce

-- | List of CPU temperature samples.
codcsriCPUTemperatureInfo :: Lens' ChromeOSDeviceCPUStatusReportsItem [ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem]
codcsriCPUTemperatureInfo
  = lens _codcsriCPUTemperatureInfo
      (\ s a -> s{_codcsriCPUTemperatureInfo = a})
      . _Default
      . _Coerce

-- | Date and time the report was received.
codcsriReportTime :: Lens' ChromeOSDeviceCPUStatusReportsItem (Maybe UTCTime)
codcsriReportTime
  = lens _codcsriReportTime
      (\ s a -> s{_codcsriReportTime = a})
      . mapping _DateTime

instance FromJSON ChromeOSDeviceCPUStatusReportsItem
         where
        parseJSON
          = withObject "ChromeOSDeviceCPUStatusReportsItem"
              (\ o ->
                 ChromeOSDeviceCPUStatusReportsItem' <$>
                   (o .:? "cpuUtilizationPercentageInfo" .!= mempty) <*>
                     (o .:? "cpuTemperatureInfo" .!= mempty)
                     <*> (o .:? "reportTime"))

instance ToJSON ChromeOSDeviceCPUStatusReportsItem
         where
        toJSON ChromeOSDeviceCPUStatusReportsItem'{..}
          = object
              (catMaybes
                 [("cpuUtilizationPercentageInfo" .=) <$>
                    _codcsriCPUUtilizationPercentageInfo,
                  ("cpuTemperatureInfo" .=) <$>
                    _codcsriCPUTemperatureInfo,
                  ("reportTime" .=) <$> _codcsriReportTime])

-- | A Google Groups member can be a user or another group. This member can
-- be inside or outside of your account\'s domains. For more information
-- about common group member tasks, see the [Developer\'s
-- Guide](\/admin-sdk\/directory\/v1\/guides\/manage-group-members).
--
-- /See:/ 'member' smart constructor.
data Member =
  Member'
    { _memEmail :: !(Maybe Text)
    , _memStatus :: !(Maybe Text)
    , _memEtag :: !(Maybe Text)
    , _memKind :: !Text
    , _memDeliverySettings :: !(Maybe Text)
    , _memRole :: !(Maybe Text)
    , _memId :: !(Maybe Text)
    , _memType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'memEmail'
--
-- * 'memStatus'
--
-- * 'memEtag'
--
-- * 'memKind'
--
-- * 'memDeliverySettings'
--
-- * 'memRole'
--
-- * 'memId'
--
-- * 'memType'
member
    :: Member
member =
  Member'
    { _memEmail = Nothing
    , _memStatus = Nothing
    , _memEtag = Nothing
    , _memKind = "admin#directory#member"
    , _memDeliverySettings = Nothing
    , _memRole = Nothing
    , _memId = Nothing
    , _memType = Nothing
    }


-- | The member\'s email address. A member can be a user or another group.
-- This property is required when adding a member to a group. The \`email\`
-- must be unique and cannot be an alias of another group. If the email
-- address is changed, the API automatically reflects the email address
-- changes.
memEmail :: Lens' Member (Maybe Text)
memEmail = lens _memEmail (\ s a -> s{_memEmail = a})

-- | Status of member (Immutable)
memStatus :: Lens' Member (Maybe Text)
memStatus
  = lens _memStatus (\ s a -> s{_memStatus = a})

-- | ETag of the resource.
memEtag :: Lens' Member (Maybe Text)
memEtag = lens _memEtag (\ s a -> s{_memEtag = a})

-- | The type of the API resource. For Members resources, the value is
-- \`admin#directory#member\`.
memKind :: Lens' Member Text
memKind = lens _memKind (\ s a -> s{_memKind = a})

-- | Defines mail delivery preferences of member. This is only supported by
-- create\/update\/get.
memDeliverySettings :: Lens' Member (Maybe Text)
memDeliverySettings
  = lens _memDeliverySettings
      (\ s a -> s{_memDeliverySettings = a})

-- | The member\'s role in a group. The API returns an error for cycles in
-- group memberships. For example, if \`group1\` is a member of \`group2\`,
-- \`group2\` cannot be a member of \`group1\`. For more information about
-- a member\'s role, see the [administration help
-- center](https:\/\/support.google.com\/a\/answer\/167094).
memRole :: Lens' Member (Maybe Text)
memRole = lens _memRole (\ s a -> s{_memRole = a})

-- | The unique ID of the group member. A member \`id\` can be used as a
-- member request URI\'s \`memberKey\`.
memId :: Lens' Member (Maybe Text)
memId = lens _memId (\ s a -> s{_memId = a})

-- | The type of group member.
memType :: Lens' Member (Maybe Text)
memType = lens _memType (\ s a -> s{_memType = a})

instance FromJSON Member where
        parseJSON
          = withObject "Member"
              (\ o ->
                 Member' <$>
                   (o .:? "email") <*> (o .:? "status") <*>
                     (o .:? "etag")
                     <*> (o .:? "kind" .!= "admin#directory#member")
                     <*> (o .:? "delivery_settings")
                     <*> (o .:? "role")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Member where
        toJSON Member'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _memEmail,
                  ("status" .=) <$> _memStatus,
                  ("etag" .=) <$> _memEtag, Just ("kind" .= _memKind),
                  ("delivery_settings" .=) <$> _memDeliverySettings,
                  ("role" .=) <$> _memRole, ("id" .=) <$> _memId,
                  ("type" .=) <$> _memType])

-- | JSON template for a set of custom properties (i.e. all fields in a
-- particular schema)
--
-- /See:/ 'userCustomProperties' smart constructor.
newtype UserCustomProperties =
  UserCustomProperties'
    { _ucpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserCustomProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucpAddtional'
userCustomProperties
    :: HashMap Text JSONValue -- ^ 'ucpAddtional'
    -> UserCustomProperties
userCustomProperties pUcpAddtional_ =
  UserCustomProperties' {_ucpAddtional = _Coerce # pUcpAddtional_}


ucpAddtional :: Lens' UserCustomProperties (HashMap Text JSONValue)
ucpAddtional
  = lens _ucpAddtional (\ s a -> s{_ucpAddtional = a})
      . _Coerce

instance FromJSON UserCustomProperties where
        parseJSON
          = withObject "UserCustomProperties"
              (\ o ->
                 UserCustomProperties' <$> (parseJSONObject o))

instance ToJSON UserCustomProperties where
        toJSON = toJSON . _ucpAddtional

-- | JSON template for a language entry.
--
-- /See:/ 'userLanguage' smart constructor.
data UserLanguage =
  UserLanguage'
    { _ulLanguageCode :: !(Maybe Text)
    , _ulCustomLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulLanguageCode'
--
-- * 'ulCustomLanguage'
userLanguage
    :: UserLanguage
userLanguage =
  UserLanguage' {_ulLanguageCode = Nothing, _ulCustomLanguage = Nothing}


-- | Language Code. Should be used for storing Google III LanguageCode string
-- representation for language. Illegal values cause SchemaException.
ulLanguageCode :: Lens' UserLanguage (Maybe Text)
ulLanguageCode
  = lens _ulLanguageCode
      (\ s a -> s{_ulLanguageCode = a})

-- | Other language. User can provide own language name if there is no
-- corresponding Google III language code. If this is set LanguageCode
-- can\'t be set
ulCustomLanguage :: Lens' UserLanguage (Maybe Text)
ulCustomLanguage
  = lens _ulCustomLanguage
      (\ s a -> s{_ulCustomLanguage = a})

instance FromJSON UserLanguage where
        parseJSON
          = withObject "UserLanguage"
              (\ o ->
                 UserLanguage' <$>
                   (o .:? "languageCode") <*> (o .:? "customLanguage"))

instance ToJSON UserLanguage where
        toJSON UserLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _ulLanguageCode,
                  ("customLanguage" .=) <$> _ulCustomLanguage])

--
-- /See:/ 'domains' smart constructor.
data Domains =
  Domains'
    { _domCreationTime :: !(Maybe (Textual Int64))
    , _domEtag :: !(Maybe Text)
    , _domKind :: !Text
    , _domDomainAliases :: !(Maybe [DomainAlias])
    , _domVerified :: !(Maybe Bool)
    , _domDomainName :: !(Maybe Text)
    , _domIsPrimary :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Domains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'domCreationTime'
--
-- * 'domEtag'
--
-- * 'domKind'
--
-- * 'domDomainAliases'
--
-- * 'domVerified'
--
-- * 'domDomainName'
--
-- * 'domIsPrimary'
domains
    :: Domains
domains =
  Domains'
    { _domCreationTime = Nothing
    , _domEtag = Nothing
    , _domKind = "admin#directory#domain"
    , _domDomainAliases = Nothing
    , _domVerified = Nothing
    , _domDomainName = Nothing
    , _domIsPrimary = Nothing
    }


-- | Creation time of the domain. Expressed in [Unix
-- time](https:\/\/en.wikipedia.org\/wiki\/Epoch_time) format. (Read-only).
domCreationTime :: Lens' Domains (Maybe Int64)
domCreationTime
  = lens _domCreationTime
      (\ s a -> s{_domCreationTime = a})
      . mapping _Coerce

-- | ETag of the resource.
domEtag :: Lens' Domains (Maybe Text)
domEtag = lens _domEtag (\ s a -> s{_domEtag = a})

-- | Kind of resource this is.
domKind :: Lens' Domains Text
domKind = lens _domKind (\ s a -> s{_domKind = a})

-- | List of domain alias objects. (Read-only)
domDomainAliases :: Lens' Domains [DomainAlias]
domDomainAliases
  = lens _domDomainAliases
      (\ s a -> s{_domDomainAliases = a})
      . _Default
      . _Coerce

-- | Indicates the verification state of a domain. (Read-only).
domVerified :: Lens' Domains (Maybe Bool)
domVerified
  = lens _domVerified (\ s a -> s{_domVerified = a})

-- | The domain name of the customer.
domDomainName :: Lens' Domains (Maybe Text)
domDomainName
  = lens _domDomainName
      (\ s a -> s{_domDomainName = a})

-- | Indicates if the domain is a primary domain (Read-only).
domIsPrimary :: Lens' Domains (Maybe Bool)
domIsPrimary
  = lens _domIsPrimary (\ s a -> s{_domIsPrimary = a})

instance FromJSON Domains where
        parseJSON
          = withObject "Domains"
              (\ o ->
                 Domains' <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#domain")
                     <*> (o .:? "domainAliases" .!= mempty)
                     <*> (o .:? "verified")
                     <*> (o .:? "domainName")
                     <*> (o .:? "isPrimary"))

instance ToJSON Domains where
        toJSON Domains'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _domCreationTime,
                  ("etag" .=) <$> _domEtag, Just ("kind" .= _domKind),
                  ("domainAliases" .=) <$> _domDomainAliases,
                  ("verified" .=) <$> _domVerified,
                  ("domainName" .=) <$> _domDomainName,
                  ("isPrimary" .=) <$> _domIsPrimary])

-- | Response for deleting existing printers in batch.
--
-- /See:/ 'batchDeletePrintersResponse' smart constructor.
data BatchDeletePrintersResponse =
  BatchDeletePrintersResponse'
    { _bPrinterIds :: !(Maybe [Text])
    , _bFailedPrinters :: !(Maybe [FailureInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeletePrintersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bPrinterIds'
--
-- * 'bFailedPrinters'
batchDeletePrintersResponse
    :: BatchDeletePrintersResponse
batchDeletePrintersResponse =
  BatchDeletePrintersResponse'
    {_bPrinterIds = Nothing, _bFailedPrinters = Nothing}


-- | A list of Printer.id that were successfully deleted.
bPrinterIds :: Lens' BatchDeletePrintersResponse [Text]
bPrinterIds
  = lens _bPrinterIds (\ s a -> s{_bPrinterIds = a}) .
      _Default
      . _Coerce

-- | A list of update failures.
bFailedPrinters :: Lens' BatchDeletePrintersResponse [FailureInfo]
bFailedPrinters
  = lens _bFailedPrinters
      (\ s a -> s{_bFailedPrinters = a})
      . _Default
      . _Coerce

instance FromJSON BatchDeletePrintersResponse where
        parseJSON
          = withObject "BatchDeletePrintersResponse"
              (\ o ->
                 BatchDeletePrintersResponse' <$>
                   (o .:? "printerIds" .!= mempty) <*>
                     (o .:? "failedPrinters" .!= mempty))

instance ToJSON BatchDeletePrintersResponse where
        toJSON BatchDeletePrintersResponse'{..}
          = object
              (catMaybes
                 [("printerIds" .=) <$> _bPrinterIds,
                  ("failedPrinters" .=) <$> _bFailedPrinters])

-- | Request for adding a new printer.
--
-- /See:/ 'createPrinterRequest' smart constructor.
data CreatePrinterRequest =
  CreatePrinterRequest'
    { _cprParent :: !(Maybe Text)
    , _cprPrinter :: !(Maybe Printer)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreatePrinterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprParent'
--
-- * 'cprPrinter'
createPrinterRequest
    :: CreatePrinterRequest
createPrinterRequest =
  CreatePrinterRequest' {_cprParent = Nothing, _cprPrinter = Nothing}


-- | Required. The name of the customer. Format: customers\/{customer_id}
cprParent :: Lens' CreatePrinterRequest (Maybe Text)
cprParent
  = lens _cprParent (\ s a -> s{_cprParent = a})

-- | Required. A printer to create. If you want to place the printer under
-- particular OU then populate printer.org_unit_id filed. Otherwise the
-- printer will be placed under root OU.
cprPrinter :: Lens' CreatePrinterRequest (Maybe Printer)
cprPrinter
  = lens _cprPrinter (\ s a -> s{_cprPrinter = a})

instance FromJSON CreatePrinterRequest where
        parseJSON
          = withObject "CreatePrinterRequest"
              (\ o ->
                 CreatePrinterRequest' <$>
                   (o .:? "parent") <*> (o .:? "printer"))

instance ToJSON CreatePrinterRequest where
        toJSON CreatePrinterRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _cprParent,
                  ("printer" .=) <$> _cprPrinter])

-- | Public API: Resources.calendars
--
-- /See:/ 'calendarResources' smart constructor.
data CalendarResources =
  CalendarResources'
    { _crsEtag :: !(Maybe Text)
    , _crsNextPageToken :: !(Maybe Text)
    , _crsKind :: !Text
    , _crsItems :: !(Maybe [CalendarResource])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsEtag'
--
-- * 'crsNextPageToken'
--
-- * 'crsKind'
--
-- * 'crsItems'
calendarResources
    :: CalendarResources
calendarResources =
  CalendarResources'
    { _crsEtag = Nothing
    , _crsNextPageToken = Nothing
    , _crsKind = "admin#directory#resources#calendars#calendarResourcesList"
    , _crsItems = Nothing
    }


-- | ETag of the resource.
crsEtag :: Lens' CalendarResources (Maybe Text)
crsEtag = lens _crsEtag (\ s a -> s{_crsEtag = a})

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
crsNextPageToken :: Lens' CalendarResources (Maybe Text)
crsNextPageToken
  = lens _crsNextPageToken
      (\ s a -> s{_crsNextPageToken = a})

-- | Identifies this as a collection of CalendarResources. This is always
-- \`admin#directory#resources#calendars#calendarResourcesList\`.
crsKind :: Lens' CalendarResources Text
crsKind = lens _crsKind (\ s a -> s{_crsKind = a})

-- | The CalendarResources in this page of results.
crsItems :: Lens' CalendarResources [CalendarResource]
crsItems
  = lens _crsItems (\ s a -> s{_crsItems = a}) .
      _Default
      . _Coerce

instance FromJSON CalendarResources where
        parseJSON
          = withObject "CalendarResources"
              (\ o ->
                 CalendarResources' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "admin#directory#resources#calendars#calendarResourcesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CalendarResources where
        toJSON CalendarResources'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _crsEtag,
                  ("nextPageToken" .=) <$> _crsNextPageToken,
                  Just ("kind" .= _crsKind),
                  ("items" .=) <$> _crsItems])

-- | Indexing spec for a numeric field. By default, only exact match queries
-- will be supported for numeric fields. Setting the
-- \`numericIndexingSpec\` allows range queries to be supported.
--
-- /See:/ 'schemaFieldSpecNumericIndexingSpec' smart constructor.
data SchemaFieldSpecNumericIndexingSpec =
  SchemaFieldSpecNumericIndexingSpec'
    { _sfsnisMaxValue :: !(Maybe (Textual Double))
    , _sfsnisMinValue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  SchemaFieldSpecNumericIndexingSpec'
    {_sfsnisMaxValue = Nothing, _sfsnisMinValue = Nothing}


-- | Maximum value of this field. This is meant to be indicative rather than
-- enforced. Values outside this range will still be indexed, but search
-- may not be as performant.
sfsnisMaxValue :: Lens' SchemaFieldSpecNumericIndexingSpec (Maybe Double)
sfsnisMaxValue
  = lens _sfsnisMaxValue
      (\ s a -> s{_sfsnisMaxValue = a})
      . mapping _Coerce

-- | Minimum value of this field. This is meant to be indicative rather than
-- enforced. Values outside this range will still be indexed, but search
-- may not be as performant.
sfsnisMinValue :: Lens' SchemaFieldSpecNumericIndexingSpec (Maybe Double)
sfsnisMinValue
  = lens _sfsnisMinValue
      (\ s a -> s{_sfsnisMinValue = a})
      . mapping _Coerce

instance FromJSON SchemaFieldSpecNumericIndexingSpec
         where
        parseJSON
          = withObject "SchemaFieldSpecNumericIndexingSpec"
              (\ o ->
                 SchemaFieldSpecNumericIndexingSpec' <$>
                   (o .:? "maxValue") <*> (o .:? "minValue"))

instance ToJSON SchemaFieldSpecNumericIndexingSpec
         where
        toJSON SchemaFieldSpecNumericIndexingSpec'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _sfsnisMaxValue,
                  ("minValue" .=) <$> _sfsnisMinValue])

--
-- /See:/ 'mobileDeviceAction' smart constructor.
newtype MobileDeviceAction =
  MobileDeviceAction'
    { _mdaAction :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDeviceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaAction'
mobileDeviceAction
    :: MobileDeviceAction
mobileDeviceAction = MobileDeviceAction' {_mdaAction = Nothing}


-- | The action to be performed on the device.
mdaAction :: Lens' MobileDeviceAction (Maybe Text)
mdaAction
  = lens _mdaAction (\ s a -> s{_mdaAction = a})

instance FromJSON MobileDeviceAction where
        parseJSON
          = withObject "MobileDeviceAction"
              (\ o -> MobileDeviceAction' <$> (o .:? "action"))

instance ToJSON MobileDeviceAction where
        toJSON MobileDeviceAction'{..}
          = object (catMaybes [("action" .=) <$> _mdaAction])

-- | You can use schemas to add custom fields to user profiles. You can use
-- these fields to store information such as the projects your users work
-- on, their physical locations, their hire dates, or whatever else fits
-- your business needs. For more information, see [Custom User
-- Fields](\/admin-sdk\/directory\/v1\/guides\/manage-schemas).
--
-- /See:/ 'schemaFieldSpec' smart constructor.
data SchemaFieldSpec =
  SchemaFieldSpec'
    { _sfsEtag :: !(Maybe Text)
    , _sfsKind :: !Text
    , _sfsNumericIndexingSpec :: !(Maybe SchemaFieldSpecNumericIndexingSpec)
    , _sfsReadAccessType :: !Text
    , _sfsFieldId :: !(Maybe Text)
    , _sfsIndexed :: !Bool
    , _sfsFieldType :: !(Maybe Text)
    , _sfsFieldName :: !(Maybe Text)
    , _sfsDisplayName :: !(Maybe Text)
    , _sfsMultiValued :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'sfsDisplayName'
--
-- * 'sfsMultiValued'
schemaFieldSpec
    :: SchemaFieldSpec
schemaFieldSpec =
  SchemaFieldSpec'
    { _sfsEtag = Nothing
    , _sfsKind = "admin#directory#schema#fieldspec"
    , _sfsNumericIndexingSpec = Nothing
    , _sfsReadAccessType = "ALL_DOMAIN_USERS"
    , _sfsFieldId = Nothing
    , _sfsIndexed = True
    , _sfsFieldType = Nothing
    , _sfsFieldName = Nothing
    , _sfsDisplayName = Nothing
    , _sfsMultiValued = Nothing
    }


-- | The ETag of the field.
sfsEtag :: Lens' SchemaFieldSpec (Maybe Text)
sfsEtag = lens _sfsEtag (\ s a -> s{_sfsEtag = a})

-- | The kind of resource this is. For schema fields this is always
-- \`admin#directory#schema#fieldspec\`.
sfsKind :: Lens' SchemaFieldSpec Text
sfsKind = lens _sfsKind (\ s a -> s{_sfsKind = a})

-- | Indexing spec for a numeric field. By default, only exact match queries
-- will be supported for numeric fields. Setting the
-- \`numericIndexingSpec\` allows range queries to be supported.
sfsNumericIndexingSpec :: Lens' SchemaFieldSpec (Maybe SchemaFieldSpecNumericIndexingSpec)
sfsNumericIndexingSpec
  = lens _sfsNumericIndexingSpec
      (\ s a -> s{_sfsNumericIndexingSpec = a})

-- | Specifies who can view values of this field. See [Retrieve users as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin)
-- for more information. Note: It may take up to 24 hours for changes to
-- this field to be reflected.
sfsReadAccessType :: Lens' SchemaFieldSpec Text
sfsReadAccessType
  = lens _sfsReadAccessType
      (\ s a -> s{_sfsReadAccessType = a})

-- | The unique identifier of the field (Read-only)
sfsFieldId :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldId
  = lens _sfsFieldId (\ s a -> s{_sfsFieldId = a})

-- | Boolean specifying whether the field is indexed or not. Default:
-- \`true\`.
sfsIndexed :: Lens' SchemaFieldSpec Bool
sfsIndexed
  = lens _sfsIndexed (\ s a -> s{_sfsIndexed = a})

-- | The type of the field.
sfsFieldType :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldType
  = lens _sfsFieldType (\ s a -> s{_sfsFieldType = a})

-- | The name of the field.
sfsFieldName :: Lens' SchemaFieldSpec (Maybe Text)
sfsFieldName
  = lens _sfsFieldName (\ s a -> s{_sfsFieldName = a})

-- | Display Name of the field.
sfsDisplayName :: Lens' SchemaFieldSpec (Maybe Text)
sfsDisplayName
  = lens _sfsDisplayName
      (\ s a -> s{_sfsDisplayName = a})

-- | A boolean specifying whether this is a multi-valued field or not.
-- Default: \`false\`.
sfsMultiValued :: Lens' SchemaFieldSpec (Maybe Bool)
sfsMultiValued
  = lens _sfsMultiValued
      (\ s a -> s{_sfsMultiValued = a})

instance FromJSON SchemaFieldSpec where
        parseJSON
          = withObject "SchemaFieldSpec"
              (\ o ->
                 SchemaFieldSpec' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#schema#fieldspec")
                     <*> (o .:? "numericIndexingSpec")
                     <*> (o .:? "readAccessType" .!= "ALL_DOMAIN_USERS")
                     <*> (o .:? "fieldId")
                     <*> (o .:? "indexed" .!= True)
                     <*> (o .:? "fieldType")
                     <*> (o .:? "fieldName")
                     <*> (o .:? "displayName")
                     <*> (o .:? "multiValued"))

instance ToJSON SchemaFieldSpec where
        toJSON SchemaFieldSpec'{..}
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
                  ("displayName" .=) <$> _sfsDisplayName,
                  ("multiValued" .=) <$> _sfsMultiValued])

--
-- /See:/ 'chromeOSDeviceScreenshotFilesItem' smart constructor.
data ChromeOSDeviceScreenshotFilesItem =
  ChromeOSDeviceScreenshotFilesItem'
    { _codsfiName :: !(Maybe Text)
    , _codsfiDownloadURL :: !(Maybe Text)
    , _codsfiType :: !(Maybe Text)
    , _codsfiCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceScreenshotFilesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codsfiName'
--
-- * 'codsfiDownloadURL'
--
-- * 'codsfiType'
--
-- * 'codsfiCreateTime'
chromeOSDeviceScreenshotFilesItem
    :: ChromeOSDeviceScreenshotFilesItem
chromeOSDeviceScreenshotFilesItem =
  ChromeOSDeviceScreenshotFilesItem'
    { _codsfiName = Nothing
    , _codsfiDownloadURL = Nothing
    , _codsfiType = Nothing
    , _codsfiCreateTime = Nothing
    }


-- | File name
codsfiName :: Lens' ChromeOSDeviceScreenshotFilesItem (Maybe Text)
codsfiName
  = lens _codsfiName (\ s a -> s{_codsfiName = a})

-- | File download URL
codsfiDownloadURL :: Lens' ChromeOSDeviceScreenshotFilesItem (Maybe Text)
codsfiDownloadURL
  = lens _codsfiDownloadURL
      (\ s a -> s{_codsfiDownloadURL = a})

-- | File type
codsfiType :: Lens' ChromeOSDeviceScreenshotFilesItem (Maybe Text)
codsfiType
  = lens _codsfiType (\ s a -> s{_codsfiType = a})

-- | Date and time the file was created
codsfiCreateTime :: Lens' ChromeOSDeviceScreenshotFilesItem (Maybe UTCTime)
codsfiCreateTime
  = lens _codsfiCreateTime
      (\ s a -> s{_codsfiCreateTime = a})
      . mapping _DateTime

instance FromJSON ChromeOSDeviceScreenshotFilesItem
         where
        parseJSON
          = withObject "ChromeOSDeviceScreenshotFilesItem"
              (\ o ->
                 ChromeOSDeviceScreenshotFilesItem' <$>
                   (o .:? "name") <*> (o .:? "downloadUrl") <*>
                     (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON ChromeOSDeviceScreenshotFilesItem
         where
        toJSON ChromeOSDeviceScreenshotFilesItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _codsfiName,
                  ("downloadUrl" .=) <$> _codsfiDownloadURL,
                  ("type" .=) <$> _codsfiType,
                  ("createTime" .=) <$> _codsfiCreateTime])

--
-- /See:/ 'chromeOSDevices' smart constructor.
data ChromeOSDevices =
  ChromeOSDevices'
    { _cosdEtag :: !(Maybe Text)
    , _cosdNextPageToken :: !(Maybe Text)
    , _cosdKind :: !Text
    , _cosdChromeosDevices :: !(Maybe [ChromeOSDevice])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ChromeOSDevices'
    { _cosdEtag = Nothing
    , _cosdNextPageToken = Nothing
    , _cosdKind = "admin#directory#chromeosdevices"
    , _cosdChromeosDevices = Nothing
    }


-- | ETag of the resource.
cosdEtag :: Lens' ChromeOSDevices (Maybe Text)
cosdEtag = lens _cosdEtag (\ s a -> s{_cosdEtag = a})

-- | Token used to access the next page of this result. To access the next
-- page, use this token\'s value in the \`pageToken\` query string of this
-- request.
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
                 ChromeOSDevices' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#directory#chromeosdevices")
                     <*> (o .:? "chromeosdevices" .!= mempty))

instance ToJSON ChromeOSDevices where
        toJSON ChromeOSDevices'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cosdEtag,
                  ("nextPageToken" .=) <$> _cosdNextPageToken,
                  Just ("kind" .= _cosdKind),
                  ("chromeosdevices" .=) <$> _cosdChromeosDevices])

-- | JSON template for Has Member response in Directory API.
--
-- /See:/ 'membersHasMember' smart constructor.
newtype MembersHasMember =
  MembersHasMember'
    { _mhmIsMember :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersHasMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhmIsMember'
membersHasMember
    :: MembersHasMember
membersHasMember = MembersHasMember' {_mhmIsMember = Nothing}


-- | Output only. Identifies whether the given user is a member of the group.
-- Membership can be direct or nested.
mhmIsMember :: Lens' MembersHasMember (Maybe Bool)
mhmIsMember
  = lens _mhmIsMember (\ s a -> s{_mhmIsMember = a})

instance FromJSON MembersHasMember where
        parseJSON
          = withObject "MembersHasMember"
              (\ o -> MembersHasMember' <$> (o .:? "isMember"))

instance ToJSON MembersHasMember where
        toJSON MembersHasMember'{..}
          = object
              (catMaybes [("isMember" .=) <$> _mhmIsMember])

-- | JSON template for an externalId entry.
--
-- /See:/ 'userExternalId' smart constructor.
data UserExternalId =
  UserExternalId'
    { _ueiValue :: !(Maybe Text)
    , _ueiType :: !(Maybe Text)
    , _ueiCustomType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserExternalId'
    {_ueiValue = Nothing, _ueiType = Nothing, _ueiCustomType = Nothing}


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
                 UserExternalId' <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "customType"))

instance ToJSON UserExternalId where
        toJSON UserExternalId'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ueiValue,
                  ("type" .=) <$> _ueiType,
                  ("customType" .=) <$> _ueiCustomType])

--
-- /See:/ 'asps' smart constructor.
data Asps =
  Asps'
    { _aspEtag :: !(Maybe Text)
    , _aspKind :: !Text
    , _aspItems :: !(Maybe [Asp])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Asps'
    { _aspEtag = Nothing
    , _aspKind = "admin#directory#aspList"
    , _aspItems = Nothing
    }


-- | ETag of the resource.
aspEtag :: Lens' Asps (Maybe Text)
aspEtag = lens _aspEtag (\ s a -> s{_aspEtag = a})

-- | The type of the API resource. This is always
-- \`admin#directory#aspList\`.
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
                 Asps' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#aspList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Asps where
        toJSON Asps'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aspEtag, Just ("kind" .= _aspKind),
                  ("items" .=) <$> _aspItems])

--
-- /See:/ 'chromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem' smart constructor.
data ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem =
  ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem'
    { _codcsrictiiTemperature :: !(Maybe (Textual Int32))
    , _codcsrictiiLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'codcsrictiiTemperature'
--
-- * 'codcsrictiiLabel'
chromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    :: ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
chromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem =
  ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem'
    {_codcsrictiiTemperature = Nothing, _codcsrictiiLabel = Nothing}


-- | Temperature in Celsius degrees.
codcsrictiiTemperature :: Lens' ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem (Maybe Int32)
codcsrictiiTemperature
  = lens _codcsrictiiTemperature
      (\ s a -> s{_codcsrictiiTemperature = a})
      . mapping _Coerce

-- | CPU label
codcsrictiiLabel :: Lens' ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem (Maybe Text)
codcsrictiiLabel
  = lens _codcsrictiiLabel
      (\ s a -> s{_codcsrictiiLabel = a})

instance FromJSON
           ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
         where
        parseJSON
          = withObject
              "ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem"
              (\ o ->
                 ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem'
                   <$> (o .:? "temperature") <*> (o .:? "label"))

instance ToJSON
           ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
         where
        toJSON
          ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem'{..}
          = object
              (catMaybes
                 [("temperature" .=) <$> _codcsrictiiTemperature,
                  ("label" .=) <$> _codcsrictiiLabel])

--
-- /See:/ 'roleRolePrivilegesItem' smart constructor.
data RoleRolePrivilegesItem =
  RoleRolePrivilegesItem'
    { _rrpiServiceId :: !(Maybe Text)
    , _rrpiPrivilegeName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleRolePrivilegesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrpiServiceId'
--
-- * 'rrpiPrivilegeName'
roleRolePrivilegesItem
    :: RoleRolePrivilegesItem
roleRolePrivilegesItem =
  RoleRolePrivilegesItem'
    {_rrpiServiceId = Nothing, _rrpiPrivilegeName = Nothing}


-- | The obfuscated ID of the service this privilege is for. This value is
-- returned with
-- [\`Privileges.list()\`](\/admin-sdk\/directory\/v1\/reference\/privileges\/list).
rrpiServiceId :: Lens' RoleRolePrivilegesItem (Maybe Text)
rrpiServiceId
  = lens _rrpiServiceId
      (\ s a -> s{_rrpiServiceId = a})

-- | The name of the privilege.
rrpiPrivilegeName :: Lens' RoleRolePrivilegesItem (Maybe Text)
rrpiPrivilegeName
  = lens _rrpiPrivilegeName
      (\ s a -> s{_rrpiPrivilegeName = a})

instance FromJSON RoleRolePrivilegesItem where
        parseJSON
          = withObject "RoleRolePrivilegesItem"
              (\ o ->
                 RoleRolePrivilegesItem' <$>
                   (o .:? "serviceId") <*> (o .:? "privilegeName"))

instance ToJSON RoleRolePrivilegesItem where
        toJSON RoleRolePrivilegesItem'{..}
          = object
              (catMaybes
                 [("serviceId" .=) <$> _rrpiServiceId,
                  ("privilegeName" .=) <$> _rrpiPrivilegeName])

--
-- /See:/ 'domains2' smart constructor.
data Domains2 =
  Domains2'
    { _ddEtag :: !(Maybe Text)
    , _ddKind :: !Text
    , _ddDomains :: !(Maybe [Domains])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Domains2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddEtag'
--
-- * 'ddKind'
--
-- * 'ddDomains'
domains2
    :: Domains2
domains2 =
  Domains2'
    { _ddEtag = Nothing
    , _ddKind = "admin#directory#domains"
    , _ddDomains = Nothing
    }


-- | ETag of the resource.
ddEtag :: Lens' Domains2 (Maybe Text)
ddEtag = lens _ddEtag (\ s a -> s{_ddEtag = a})

-- | Kind of resource this is.
ddKind :: Lens' Domains2 Text
ddKind = lens _ddKind (\ s a -> s{_ddKind = a})

-- | List of domain objects.
ddDomains :: Lens' Domains2 [Domains]
ddDomains
  = lens _ddDomains (\ s a -> s{_ddDomains = a}) .
      _Default
      . _Coerce

instance FromJSON Domains2 where
        parseJSON
          = withObject "Domains2"
              (\ o ->
                 Domains2' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#directory#domains")
                     <*> (o .:? "domains" .!= mempty))

instance ToJSON Domains2 where
        toJSON Domains2'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ddEtag, Just ("kind" .= _ddKind),
                  ("domains" .=) <$> _ddDomains])
