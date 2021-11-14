{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.People.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.People.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

data BatchUpdateContactsRequestSourcesItem
    = ReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | ReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | ReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | ReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateContactsRequestSourcesItem

instance FromHttpApiData BatchUpdateContactsRequestSourcesItem where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right ReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right ReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right ReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right ReadSourceTypeDomainContact
        x -> Left ("Unable to parse BatchUpdateContactsRequestSourcesItem from: " <> x)

instance ToHttpApiData BatchUpdateContactsRequestSourcesItem where
    toQueryParam = \case
        ReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        ReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        ReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        ReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON BatchUpdateContactsRequestSourcesItem where
    parseJSON = parseJSONText "BatchUpdateContactsRequestSourcesItem"

instance ToJSON BatchUpdateContactsRequestSourcesItem where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
data PeopleUpdateContactSources
    = PUCSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PUCSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PUCSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PUCSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleUpdateContactSources

instance FromHttpApiData PeopleUpdateContactSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PUCSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PUCSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PUCSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PUCSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleUpdateContactSources from: " <> x)

instance ToHttpApiData PeopleUpdateContactSources where
    toQueryParam = \case
        PUCSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PUCSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PUCSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PUCSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleUpdateContactSources where
    parseJSON = parseJSONText "PeopleUpdateContactSources"

instance ToJSON PeopleUpdateContactSources where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
data PeopleConnectionsListSources
    = PCLSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PCLSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PCLSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PCLSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleConnectionsListSources

instance FromHttpApiData PeopleConnectionsListSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PCLSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PCLSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PCLSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PCLSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleConnectionsListSources from: " <> x)

instance ToHttpApiData PeopleConnectionsListSources where
    toQueryParam = \case
        PCLSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PCLSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PCLSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PCLSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleConnectionsListSources where
    parseJSON = parseJSONText "PeopleConnectionsListSources"

instance ToJSON PeopleConnectionsListSources where
    toJSON = toJSONText

-- | Optional. Additional data to merge into the directory sources if they
-- are connected through verified join keys such as email addresses or
-- phone numbers.
data PeopleListDirectoryPeopleMergeSources
    = DirectoryMergeSourceTypeUnspecified
      -- ^ @DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | DirectoryMergeSourceTypeContact
      -- ^ @DIRECTORY_MERGE_SOURCE_TYPE_CONTACT@
      -- User owned contact.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListDirectoryPeopleMergeSources

instance FromHttpApiData PeopleListDirectoryPeopleMergeSources where
    parseQueryParam = \case
        "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED" -> Right DirectoryMergeSourceTypeUnspecified
        "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT" -> Right DirectoryMergeSourceTypeContact
        x -> Left ("Unable to parse PeopleListDirectoryPeopleMergeSources from: " <> x)

instance ToHttpApiData PeopleListDirectoryPeopleMergeSources where
    toQueryParam = \case
        DirectoryMergeSourceTypeUnspecified -> "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED"
        DirectoryMergeSourceTypeContact -> "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT"

instance FromJSON PeopleListDirectoryPeopleMergeSources where
    parseJSON = parseJSONText "PeopleListDirectoryPeopleMergeSources"

instance ToJSON PeopleListDirectoryPeopleMergeSources where
    toJSON = toJSONText

-- | Required. Directory sources to return.
data PeopleListDirectoryPeopleSources
    = DirectorySourceTypeUnspecified
      -- ^ @DIRECTORY_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | DirectorySourceTypeDomainContact
      -- ^ @DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Google Workspace domain shared contact.
    | DirectorySourceTypeDomainProFile
      -- ^ @DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE@
      -- Google Workspace domain profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListDirectoryPeopleSources

instance FromHttpApiData PeopleListDirectoryPeopleSources where
    parseQueryParam = \case
        "DIRECTORY_SOURCE_TYPE_UNSPECIFIED" -> Right DirectorySourceTypeUnspecified
        "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT" -> Right DirectorySourceTypeDomainContact
        "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE" -> Right DirectorySourceTypeDomainProFile
        x -> Left ("Unable to parse PeopleListDirectoryPeopleSources from: " <> x)

instance ToHttpApiData PeopleListDirectoryPeopleSources where
    toQueryParam = \case
        DirectorySourceTypeUnspecified -> "DIRECTORY_SOURCE_TYPE_UNSPECIFIED"
        DirectorySourceTypeDomainContact -> "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT"
        DirectorySourceTypeDomainProFile -> "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE"

instance FromJSON PeopleListDirectoryPeopleSources where
    parseJSON = parseJSONText "PeopleListDirectoryPeopleSources"

instance ToJSON PeopleListDirectoryPeopleSources where
    toJSON = toJSONText

-- | The source type.
data SourceType
    = SourceTypeUnspecified
      -- ^ @SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | Account
      -- ^ @ACCOUNT@
      -- [Google Account](https:\/\/accounts.google.com).
    | ProFile
      -- ^ @PROFILE@
      -- [Google profile](https:\/\/profiles.google.com). You can view the
      -- profile at
      -- [https:\/\/profiles.google.com\/](https:\/\/profiles.google.com\/){id},
      -- where {id} is the source id.
    | DomainProFile
      -- ^ @DOMAIN_PROFILE@
      -- [Google Workspace domain
      -- profile](https:\/\/support.google.com\/a\/answer\/1628008).
    | Contact
      -- ^ @CONTACT@
      -- [Google contact](https:\/\/contacts.google.com). You can view the
      -- contact at
      -- [https:\/\/contact.google.com\/](https:\/\/contact.google.com\/){id},
      -- where {id} is the source id.
    | OtherContact
      -- ^ @OTHER_CONTACT@
      -- [Google \"Other contact\"](https:\/\/contacts.google.com\/other).
    | DomainContact
      -- ^ @DOMAIN_CONTACT@
      -- [Google Workspace domain shared
      -- contact](https:\/\/support.google.com\/a\/answer\/9281635).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceType

instance FromHttpApiData SourceType where
    parseQueryParam = \case
        "SOURCE_TYPE_UNSPECIFIED" -> Right SourceTypeUnspecified
        "ACCOUNT" -> Right Account
        "PROFILE" -> Right ProFile
        "DOMAIN_PROFILE" -> Right DomainProFile
        "CONTACT" -> Right Contact
        "OTHER_CONTACT" -> Right OtherContact
        "DOMAIN_CONTACT" -> Right DomainContact
        x -> Left ("Unable to parse SourceType from: " <> x)

instance ToHttpApiData SourceType where
    toQueryParam = \case
        SourceTypeUnspecified -> "SOURCE_TYPE_UNSPECIFIED"
        Account -> "ACCOUNT"
        ProFile -> "PROFILE"
        DomainProFile -> "DOMAIN_PROFILE"
        Contact -> "CONTACT"
        OtherContact -> "OTHER_CONTACT"
        DomainContact -> "DOMAIN_CONTACT"

instance FromJSON SourceType where
    parseJSON = parseJSONText "SourceType"

instance ToJSON SourceType where
    toJSON = toJSONText

-- | Output only. The contact group type.
data ContactGroupGroupType
    = GroupTypeUnspecified
      -- ^ @GROUP_TYPE_UNSPECIFIED@
      -- Unspecified.
    | UserContactGroup
      -- ^ @USER_CONTACT_GROUP@
      -- User defined contact group.
    | SystemContactGroup
      -- ^ @SYSTEM_CONTACT_GROUP@
      -- System defined contact group.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContactGroupGroupType

instance FromHttpApiData ContactGroupGroupType where
    parseQueryParam = \case
        "GROUP_TYPE_UNSPECIFIED" -> Right GroupTypeUnspecified
        "USER_CONTACT_GROUP" -> Right UserContactGroup
        "SYSTEM_CONTACT_GROUP" -> Right SystemContactGroup
        x -> Left ("Unable to parse ContactGroupGroupType from: " <> x)

instance ToHttpApiData ContactGroupGroupType where
    toQueryParam = \case
        GroupTypeUnspecified -> "GROUP_TYPE_UNSPECIFIED"
        UserContactGroup -> "USER_CONTACT_GROUP"
        SystemContactGroup -> "SYSTEM_CONTACT_GROUP"

instance FromJSON ContactGroupGroupType where
    parseJSON = parseJSONText "ContactGroupGroupType"

instance ToJSON ContactGroupGroupType where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT if not set.
data PeopleSearchContactsSources
    = PSCSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PSCSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PSCSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PSCSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleSearchContactsSources

instance FromHttpApiData PeopleSearchContactsSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PSCSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PSCSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PSCSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PSCSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleSearchContactsSources from: " <> x)

instance ToHttpApiData PeopleSearchContactsSources where
    toQueryParam = \case
        PSCSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PSCSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PSCSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PSCSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleSearchContactsSources where
    parseJSON = parseJSONText "PeopleSearchContactsSources"

instance ToJSON PeopleSearchContactsSources where
    toJSON = toJSONText

data CopyOtherContactToMyContactsGroupRequestSourcesItem
    = COCTMCGRSIReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | COCTMCGRSIReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | COCTMCGRSIReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | COCTMCGRSIReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CopyOtherContactToMyContactsGroupRequestSourcesItem

instance FromHttpApiData CopyOtherContactToMyContactsGroupRequestSourcesItem where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right COCTMCGRSIReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right COCTMCGRSIReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right COCTMCGRSIReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right COCTMCGRSIReadSourceTypeDomainContact
        x -> Left ("Unable to parse CopyOtherContactToMyContactsGroupRequestSourcesItem from: " <> x)

instance ToHttpApiData CopyOtherContactToMyContactsGroupRequestSourcesItem where
    toQueryParam = \case
        COCTMCGRSIReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        COCTMCGRSIReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        COCTMCGRSIReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        COCTMCGRSIReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON CopyOtherContactToMyContactsGroupRequestSourcesItem where
    parseJSON = parseJSONText "CopyOtherContactToMyContactsGroupRequestSourcesItem"

instance ToJSON CopyOtherContactToMyContactsGroupRequestSourcesItem where
    toJSON = toJSONText

-- | The type of the nickname.
data NicknameType
    = Default
      -- ^ @DEFAULT@
      -- Generic nickname.
    | MaidenName
      -- ^ @MAIDEN_NAME@
      -- Maiden name or birth family name. Used when the person\'s family name
      -- has changed as a result of marriage.
    | Initials
      -- ^ @INITIALS@
      -- Initials.
    | Gplus
      -- ^ @GPLUS@
      -- Google+ profile nickname.
    | OtherName
      -- ^ @OTHER_NAME@
      -- A professional affiliation or other name; for example, \`Dr. Smith.\`
    | AlternateName
      -- ^ @ALTERNATE_NAME@
      -- Alternate name person is known by.
    | ShortName
      -- ^ @SHORT_NAME@
      -- A shorter version of the person\'s name.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NicknameType

instance FromHttpApiData NicknameType where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "MAIDEN_NAME" -> Right MaidenName
        "INITIALS" -> Right Initials
        "GPLUS" -> Right Gplus
        "OTHER_NAME" -> Right OtherName
        "ALTERNATE_NAME" -> Right AlternateName
        "SHORT_NAME" -> Right ShortName
        x -> Left ("Unable to parse NicknameType from: " <> x)

instance ToHttpApiData NicknameType where
    toQueryParam = \case
        Default -> "DEFAULT"
        MaidenName -> "MAIDEN_NAME"
        Initials -> "INITIALS"
        Gplus -> "GPLUS"
        OtherName -> "OTHER_NAME"
        AlternateName -> "ALTERNATE_NAME"
        ShortName -> "SHORT_NAME"

instance FromJSON NicknameType where
    parseJSON = parseJSONText "NicknameType"

instance ToJSON NicknameType where
    toJSON = toJSONText

-- | Optional. The order in which the connections should be sorted. Defaults
-- to \`LAST_MODIFIED_ASCENDING\`.
data PeopleConnectionsListSortOrder
    = LastModifiedAscending
      -- ^ @LAST_MODIFIED_ASCENDING@
      -- Sort people by when they were changed; older entries first.
    | LastModifiedDescending
      -- ^ @LAST_MODIFIED_DESCENDING@
      -- Sort people by when they were changed; newer entries first.
    | FirstNameAscending
      -- ^ @FIRST_NAME_ASCENDING@
      -- Sort people by first name.
    | LastNameAscending
      -- ^ @LAST_NAME_ASCENDING@
      -- Sort people by last name.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleConnectionsListSortOrder

instance FromHttpApiData PeopleConnectionsListSortOrder where
    parseQueryParam = \case
        "LAST_MODIFIED_ASCENDING" -> Right LastModifiedAscending
        "LAST_MODIFIED_DESCENDING" -> Right LastModifiedDescending
        "FIRST_NAME_ASCENDING" -> Right FirstNameAscending
        "LAST_NAME_ASCENDING" -> Right LastNameAscending
        x -> Left ("Unable to parse PeopleConnectionsListSortOrder from: " <> x)

instance ToHttpApiData PeopleConnectionsListSortOrder where
    toQueryParam = \case
        LastModifiedAscending -> "LAST_MODIFIED_ASCENDING"
        LastModifiedDescending -> "LAST_MODIFIED_DESCENDING"
        FirstNameAscending -> "FIRST_NAME_ASCENDING"
        LastNameAscending -> "LAST_NAME_ASCENDING"

instance FromJSON PeopleConnectionsListSortOrder where
    parseJSON = parseJSONText "PeopleConnectionsListSortOrder"

instance ToJSON PeopleConnectionsListSortOrder where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
data PeopleDeleteContactPhotoSources
    = PDCPSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PDCPSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PDCPSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PDCPSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleDeleteContactPhotoSources

instance FromHttpApiData PeopleDeleteContactPhotoSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PDCPSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PDCPSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PDCPSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PDCPSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleDeleteContactPhotoSources from: " <> x)

instance ToHttpApiData PeopleDeleteContactPhotoSources where
    toQueryParam = \case
        PDCPSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PDCPSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PDCPSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PDCPSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleDeleteContactPhotoSources where
    parseJSON = parseJSONText "PeopleDeleteContactPhotoSources"

instance ToJSON PeopleDeleteContactPhotoSources where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if not set.
data PeopleGetSources
    = PGSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PGSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PGSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PGSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleGetSources

instance FromHttpApiData PeopleGetSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PGSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PGSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PGSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PGSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleGetSources from: " <> x)

instance ToHttpApiData PeopleGetSources where
    toQueryParam = \case
        PGSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PGSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PGSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PGSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleGetSources where
    parseJSON = parseJSONText "PeopleGetSources"

instance ToJSON PeopleGetSources where
    toJSON = toJSONText

-- | Required. Directory sources to return.
data PeopleSearchDirectoryPeopleSources
    = PSDPSDirectorySourceTypeUnspecified
      -- ^ @DIRECTORY_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PSDPSDirectorySourceTypeDomainContact
      -- ^ @DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Google Workspace domain shared contact.
    | PSDPSDirectorySourceTypeDomainProFile
      -- ^ @DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE@
      -- Google Workspace domain profile.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleSearchDirectoryPeopleSources

instance FromHttpApiData PeopleSearchDirectoryPeopleSources where
    parseQueryParam = \case
        "DIRECTORY_SOURCE_TYPE_UNSPECIFIED" -> Right PSDPSDirectorySourceTypeUnspecified
        "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PSDPSDirectorySourceTypeDomainContact
        "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE" -> Right PSDPSDirectorySourceTypeDomainProFile
        x -> Left ("Unable to parse PeopleSearchDirectoryPeopleSources from: " <> x)

instance ToHttpApiData PeopleSearchDirectoryPeopleSources where
    toQueryParam = \case
        PSDPSDirectorySourceTypeUnspecified -> "DIRECTORY_SOURCE_TYPE_UNSPECIFIED"
        PSDPSDirectorySourceTypeDomainContact -> "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT"
        PSDPSDirectorySourceTypeDomainProFile -> "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE"

instance FromJSON PeopleSearchDirectoryPeopleSources where
    parseJSON = parseJSONText "PeopleSearchDirectoryPeopleSources"

instance ToJSON PeopleSearchDirectoryPeopleSources where
    toJSON = toJSONText

data BatchCreateContactsRequestSourcesItem
    = BCCRSIReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | BCCRSIReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | BCCRSIReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | BCCRSIReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchCreateContactsRequestSourcesItem

instance FromHttpApiData BatchCreateContactsRequestSourcesItem where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right BCCRSIReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right BCCRSIReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right BCCRSIReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right BCCRSIReadSourceTypeDomainContact
        x -> Left ("Unable to parse BatchCreateContactsRequestSourcesItem from: " <> x)

instance ToHttpApiData BatchCreateContactsRequestSourcesItem where
    toQueryParam = \case
        BCCRSIReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        BCCRSIReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        BCCRSIReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        BCCRSIReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON BatchCreateContactsRequestSourcesItem where
    parseJSON = parseJSONText "BatchCreateContactsRequestSourcesItem"

instance ToJSON BatchCreateContactsRequestSourcesItem where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
data PeopleCreateContactSources
    = PCCSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PCCSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PCCSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PCCSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleCreateContactSources

instance FromHttpApiData PeopleCreateContactSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PCCSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PCCSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PCCSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PCCSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleCreateContactSources from: " <> x)

instance ToHttpApiData PeopleCreateContactSources where
    toQueryParam = \case
        PCCSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PCCSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PCCSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PCCSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleCreateContactSources where
    parseJSON = parseJSONText "PeopleCreateContactSources"

instance ToJSON PeopleCreateContactSources where
    toJSON = toJSONText

-- | Output only. **DEPRECATED** (Please use \`person.ageRanges\` instead)
-- The person\'s age range.
data PersonAgeRange
    = AgeRangeUnspecified
      -- ^ @AGE_RANGE_UNSPECIFIED@
      -- Unspecified.
    | LessThanEighteen
      -- ^ @LESS_THAN_EIGHTEEN@
      -- Younger than eighteen.
    | EighteenToTwenty
      -- ^ @EIGHTEEN_TO_TWENTY@
      -- Between eighteen and twenty.
    | TwentyOneOrOlder
      -- ^ @TWENTY_ONE_OR_OLDER@
      -- Twenty-one and older.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PersonAgeRange

instance FromHttpApiData PersonAgeRange where
    parseQueryParam = \case
        "AGE_RANGE_UNSPECIFIED" -> Right AgeRangeUnspecified
        "LESS_THAN_EIGHTEEN" -> Right LessThanEighteen
        "EIGHTEEN_TO_TWENTY" -> Right EighteenToTwenty
        "TWENTY_ONE_OR_OLDER" -> Right TwentyOneOrOlder
        x -> Left ("Unable to parse PersonAgeRange from: " <> x)

instance ToHttpApiData PersonAgeRange where
    toQueryParam = \case
        AgeRangeUnspecified -> "AGE_RANGE_UNSPECIFIED"
        LessThanEighteen -> "LESS_THAN_EIGHTEEN"
        EighteenToTwenty -> "EIGHTEEN_TO_TWENTY"
        TwentyOneOrOlder -> "TWENTY_ONE_OR_OLDER"

instance FromJSON PersonAgeRange where
    parseJSON = parseJSONText "PersonAgeRange"

instance ToJSON PersonAgeRange where
    toJSON = toJSONText

-- | Optional. Additional data to merge into the directory sources if they
-- are connected through verified join keys such as email addresses or
-- phone numbers.
data PeopleSearchDirectoryPeopleMergeSources
    = PSDPMSDirectoryMergeSourceTypeUnspecified
      -- ^ @DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PSDPMSDirectoryMergeSourceTypeContact
      -- ^ @DIRECTORY_MERGE_SOURCE_TYPE_CONTACT@
      -- User owned contact.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleSearchDirectoryPeopleMergeSources

instance FromHttpApiData PeopleSearchDirectoryPeopleMergeSources where
    parseQueryParam = \case
        "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED" -> Right PSDPMSDirectoryMergeSourceTypeUnspecified
        "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT" -> Right PSDPMSDirectoryMergeSourceTypeContact
        x -> Left ("Unable to parse PeopleSearchDirectoryPeopleMergeSources from: " <> x)

instance ToHttpApiData PeopleSearchDirectoryPeopleMergeSources where
    toQueryParam = \case
        PSDPMSDirectoryMergeSourceTypeUnspecified -> "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED"
        PSDPMSDirectoryMergeSourceTypeContact -> "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT"

instance FromJSON PeopleSearchDirectoryPeopleMergeSources where
    parseJSON = parseJSONText "PeopleSearchDirectoryPeopleMergeSources"

instance ToJSON PeopleSearchDirectoryPeopleMergeSources where
    toJSON = toJSONText

data UpdateContactPhotoRequestSourcesItem
    = UCPRSIReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | UCPRSIReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | UCPRSIReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | UCPRSIReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdateContactPhotoRequestSourcesItem

instance FromHttpApiData UpdateContactPhotoRequestSourcesItem where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right UCPRSIReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right UCPRSIReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right UCPRSIReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right UCPRSIReadSourceTypeDomainContact
        x -> Left ("Unable to parse UpdateContactPhotoRequestSourcesItem from: " <> x)

instance ToHttpApiData UpdateContactPhotoRequestSourcesItem where
    toQueryParam = \case
        UCPRSIReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        UCPRSIReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        UCPRSIReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        UCPRSIReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON UpdateContactPhotoRequestSourcesItem where
    parseJSON = parseJSONText "UpdateContactPhotoRequestSourcesItem"

instance ToJSON UpdateContactPhotoRequestSourcesItem where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Output only. **DEPRECATED** (Please use
-- \`person.metadata.sources.profileMetadata.objectType\` instead) The type
-- of the person object.
data PersonMetadataObjectType
    = PMOTObjectTypeUnspecified
      -- ^ @OBJECT_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PMOTPerson
      -- ^ @PERSON@
      -- Person.
    | PMOTPage
      -- ^ @PAGE@
      -- [Currents Page.](https:\/\/workspace.google.com\/products\/currents\/)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PersonMetadataObjectType

instance FromHttpApiData PersonMetadataObjectType where
    parseQueryParam = \case
        "OBJECT_TYPE_UNSPECIFIED" -> Right PMOTObjectTypeUnspecified
        "PERSON" -> Right PMOTPerson
        "PAGE" -> Right PMOTPage
        x -> Left ("Unable to parse PersonMetadataObjectType from: " <> x)

instance ToHttpApiData PersonMetadataObjectType where
    toQueryParam = \case
        PMOTObjectTypeUnspecified -> "OBJECT_TYPE_UNSPECIFIED"
        PMOTPerson -> "PERSON"
        PMOTPage -> "PAGE"

instance FromJSON PersonMetadataObjectType where
    parseJSON = parseJSONText "PersonMetadataObjectType"

instance ToJSON PersonMetadataObjectType where
    toJSON = toJSONText

-- | The miscellaneous keyword type.
data MiscKeywordType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unspecified.
    | OutlookBillingInformation
      -- ^ @OUTLOOK_BILLING_INFORMATION@
      -- Outlook field for billing information.
    | OutlookDirectoryServer
      -- ^ @OUTLOOK_DIRECTORY_SERVER@
      -- Outlook field for directory server.
    | OutlookKeyword
      -- ^ @OUTLOOK_KEYWORD@
      -- Outlook field for keyword.
    | OutlookMileage
      -- ^ @OUTLOOK_MILEAGE@
      -- Outlook field for mileage.
    | OutlookPriority
      -- ^ @OUTLOOK_PRIORITY@
      -- Outlook field for priority.
    | OutlookSensitivity
      -- ^ @OUTLOOK_SENSITIVITY@
      -- Outlook field for sensitivity.
    | OutlookSubject
      -- ^ @OUTLOOK_SUBJECT@
      -- Outlook field for subject.
    | OutlookUser
      -- ^ @OUTLOOK_USER@
      -- Outlook field for user.
    | Home
      -- ^ @HOME@
      -- Home.
    | Work
      -- ^ @WORK@
      -- Work.
    | Other
      -- ^ @OTHER@
      -- Other.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MiscKeywordType

instance FromHttpApiData MiscKeywordType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "OUTLOOK_BILLING_INFORMATION" -> Right OutlookBillingInformation
        "OUTLOOK_DIRECTORY_SERVER" -> Right OutlookDirectoryServer
        "OUTLOOK_KEYWORD" -> Right OutlookKeyword
        "OUTLOOK_MILEAGE" -> Right OutlookMileage
        "OUTLOOK_PRIORITY" -> Right OutlookPriority
        "OUTLOOK_SENSITIVITY" -> Right OutlookSensitivity
        "OUTLOOK_SUBJECT" -> Right OutlookSubject
        "OUTLOOK_USER" -> Right OutlookUser
        "HOME" -> Right Home
        "WORK" -> Right Work
        "OTHER" -> Right Other
        x -> Left ("Unable to parse MiscKeywordType from: " <> x)

instance ToHttpApiData MiscKeywordType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        OutlookBillingInformation -> "OUTLOOK_BILLING_INFORMATION"
        OutlookDirectoryServer -> "OUTLOOK_DIRECTORY_SERVER"
        OutlookKeyword -> "OUTLOOK_KEYWORD"
        OutlookMileage -> "OUTLOOK_MILEAGE"
        OutlookPriority -> "OUTLOOK_PRIORITY"
        OutlookSensitivity -> "OUTLOOK_SENSITIVITY"
        OutlookSubject -> "OUTLOOK_SUBJECT"
        OutlookUser -> "OUTLOOK_USER"
        Home -> "HOME"
        Work -> "WORK"
        Other -> "OTHER"

instance FromJSON MiscKeywordType where
    parseJSON = parseJSONText "MiscKeywordType"

instance ToJSON MiscKeywordType where
    toJSON = toJSONText

-- | The content type of the biography.
data BiographyContentType
    = ContentTypeUnspecified
      -- ^ @CONTENT_TYPE_UNSPECIFIED@
      -- Unspecified.
    | TextPlain
      -- ^ @TEXT_PLAIN@
      -- Plain text.
    | TextHTML
      -- ^ @TEXT_HTML@
      -- HTML text.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BiographyContentType

instance FromHttpApiData BiographyContentType where
    parseQueryParam = \case
        "CONTENT_TYPE_UNSPECIFIED" -> Right ContentTypeUnspecified
        "TEXT_PLAIN" -> Right TextPlain
        "TEXT_HTML" -> Right TextHTML
        x -> Left ("Unable to parse BiographyContentType from: " <> x)

instance ToHttpApiData BiographyContentType where
    toQueryParam = \case
        ContentTypeUnspecified -> "CONTENT_TYPE_UNSPECIFIED"
        TextPlain -> "TEXT_PLAIN"
        TextHTML -> "TEXT_HTML"

instance FromJSON BiographyContentType where
    parseJSON = parseJSONText "BiographyContentType"

instance ToJSON BiographyContentType where
    toJSON = toJSONText

-- | The age range.
data AgeRangeTypeAgeRange
    = ARTARAgeRangeUnspecified
      -- ^ @AGE_RANGE_UNSPECIFIED@
      -- Unspecified.
    | ARTARLessThanEighteen
      -- ^ @LESS_THAN_EIGHTEEN@
      -- Younger than eighteen.
    | ARTAREighteenToTwenty
      -- ^ @EIGHTEEN_TO_TWENTY@
      -- Between eighteen and twenty.
    | ARTARTwentyOneOrOlder
      -- ^ @TWENTY_ONE_OR_OLDER@
      -- Twenty-one and older.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AgeRangeTypeAgeRange

instance FromHttpApiData AgeRangeTypeAgeRange where
    parseQueryParam = \case
        "AGE_RANGE_UNSPECIFIED" -> Right ARTARAgeRangeUnspecified
        "LESS_THAN_EIGHTEEN" -> Right ARTARLessThanEighteen
        "EIGHTEEN_TO_TWENTY" -> Right ARTAREighteenToTwenty
        "TWENTY_ONE_OR_OLDER" -> Right ARTARTwentyOneOrOlder
        x -> Left ("Unable to parse AgeRangeTypeAgeRange from: " <> x)

instance ToHttpApiData AgeRangeTypeAgeRange where
    toQueryParam = \case
        ARTARAgeRangeUnspecified -> "AGE_RANGE_UNSPECIFIED"
        ARTARLessThanEighteen -> "LESS_THAN_EIGHTEEN"
        ARTAREighteenToTwenty -> "EIGHTEEN_TO_TWENTY"
        ARTARTwentyOneOrOlder -> "TWENTY_ONE_OR_OLDER"

instance FromJSON AgeRangeTypeAgeRange where
    parseJSON = parseJSONText "AgeRangeTypeAgeRange"

instance ToJSON AgeRangeTypeAgeRange where
    toJSON = toJSONText

-- | Output only. The profile object type.
data ProFileMetadataObjectType
    = PFMOTObjectTypeUnspecified
      -- ^ @OBJECT_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PFMOTPerson
      -- ^ @PERSON@
      -- Person.
    | PFMOTPage
      -- ^ @PAGE@
      -- [Currents Page.](https:\/\/workspace.google.com\/products\/currents\/)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProFileMetadataObjectType

instance FromHttpApiData ProFileMetadataObjectType where
    parseQueryParam = \case
        "OBJECT_TYPE_UNSPECIFIED" -> Right PFMOTObjectTypeUnspecified
        "PERSON" -> Right PFMOTPerson
        "PAGE" -> Right PFMOTPage
        x -> Left ("Unable to parse ProFileMetadataObjectType from: " <> x)

instance ToHttpApiData ProFileMetadataObjectType where
    toQueryParam = \case
        PFMOTObjectTypeUnspecified -> "OBJECT_TYPE_UNSPECIFIED"
        PFMOTPerson -> "PERSON"
        PFMOTPage -> "PAGE"

instance FromJSON ProFileMetadataObjectType where
    parseJSON = parseJSONText "ProFileMetadataObjectType"

instance ToJSON ProFileMetadataObjectType where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT if not set.
data OtherContactsListSources
    = OCLSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | OCLSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | OCLSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | OCLSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OtherContactsListSources

instance FromHttpApiData OtherContactsListSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right OCLSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right OCLSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right OCLSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right OCLSReadSourceTypeDomainContact
        x -> Left ("Unable to parse OtherContactsListSources from: " <> x)

instance ToHttpApiData OtherContactsListSources where
    toQueryParam = \case
        OCLSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        OCLSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        OCLSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        OCLSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON OtherContactsListSources where
    parseJSON = parseJSONText "OtherContactsListSources"

instance ToJSON OtherContactsListSources where
    toJSON = toJSONText

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
data PeopleGetBatchGetSources
    = PGBGSReadSourceTypeUnspecified
      -- ^ @READ_SOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PGBGSReadSourceTypeProFile
      -- ^ @READ_SOURCE_TYPE_PROFILE@
      -- Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and
      -- SourceType.PROFILE.
    | PGBGSReadSourceTypeContact
      -- ^ @READ_SOURCE_TYPE_CONTACT@
      -- Returns SourceType.CONTACT.
    | PGBGSReadSourceTypeDomainContact
      -- ^ @READ_SOURCE_TYPE_DOMAIN_CONTACT@
      -- Returns SourceType.DOMAIN_CONTACT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleGetBatchGetSources

instance FromHttpApiData PeopleGetBatchGetSources where
    parseQueryParam = \case
        "READ_SOURCE_TYPE_UNSPECIFIED" -> Right PGBGSReadSourceTypeUnspecified
        "READ_SOURCE_TYPE_PROFILE" -> Right PGBGSReadSourceTypeProFile
        "READ_SOURCE_TYPE_CONTACT" -> Right PGBGSReadSourceTypeContact
        "READ_SOURCE_TYPE_DOMAIN_CONTACT" -> Right PGBGSReadSourceTypeDomainContact
        x -> Left ("Unable to parse PeopleGetBatchGetSources from: " <> x)

instance ToHttpApiData PeopleGetBatchGetSources where
    toQueryParam = \case
        PGBGSReadSourceTypeUnspecified -> "READ_SOURCE_TYPE_UNSPECIFIED"
        PGBGSReadSourceTypeProFile -> "READ_SOURCE_TYPE_PROFILE"
        PGBGSReadSourceTypeContact -> "READ_SOURCE_TYPE_CONTACT"
        PGBGSReadSourceTypeDomainContact -> "READ_SOURCE_TYPE_DOMAIN_CONTACT"

instance FromJSON PeopleGetBatchGetSources where
    parseJSON = parseJSONText "PeopleGetBatchGetSources"

instance ToJSON PeopleGetBatchGetSources where
    toJSON = toJSONText

data ProFileMetadataUserTypesItem
    = UserTypeUnknown
      -- ^ @USER_TYPE_UNKNOWN@
      -- The user type is not known.
    | GoogleUser
      -- ^ @GOOGLE_USER@
      -- The user is a Google user.
    | GplusUser
      -- ^ @GPLUS_USER@
      -- The user is a Currents user.
    | GoogleAppsUser
      -- ^ @GOOGLE_APPS_USER@
      -- The user is a Google Workspace user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProFileMetadataUserTypesItem

instance FromHttpApiData ProFileMetadataUserTypesItem where
    parseQueryParam = \case
        "USER_TYPE_UNKNOWN" -> Right UserTypeUnknown
        "GOOGLE_USER" -> Right GoogleUser
        "GPLUS_USER" -> Right GplusUser
        "GOOGLE_APPS_USER" -> Right GoogleAppsUser
        x -> Left ("Unable to parse ProFileMetadataUserTypesItem from: " <> x)

instance ToHttpApiData ProFileMetadataUserTypesItem where
    toQueryParam = \case
        UserTypeUnknown -> "USER_TYPE_UNKNOWN"
        GoogleUser -> "GOOGLE_USER"
        GplusUser -> "GPLUS_USER"
        GoogleAppsUser -> "GOOGLE_APPS_USER"

instance FromJSON ProFileMetadataUserTypesItem where
    parseJSON = parseJSONText "ProFileMetadataUserTypesItem"

instance ToJSON ProFileMetadataUserTypesItem where
    toJSON = toJSONText
