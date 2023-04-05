{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.People.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.People.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AgeRangeType_AgeRange
    AgeRangeType_AgeRange
      ( AgeRangeType_AgeRange_AGERANGEUNSPECIFIED,
        AgeRangeType_AgeRange_LESSTHANEIGHTEEN,
        AgeRangeType_AgeRange_EIGHTEENTOTWENTY,
        AgeRangeType_AgeRange_TWENTYONEOROLDER,
        ..
      ),

    -- * BatchCreateContactsRequest_SourcesItem
    BatchCreateContactsRequest_SourcesItem
      ( BatchCreateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
        BatchCreateContactsRequest_SourcesItem_READSOURCETYPEPROFILE,
        BatchCreateContactsRequest_SourcesItem_READSOURCETYPECONTACT,
        BatchCreateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * BatchUpdateContactsRequest_SourcesItem
    BatchUpdateContactsRequest_SourcesItem
      ( BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
        BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEPROFILE,
        BatchUpdateContactsRequest_SourcesItem_READSOURCETYPECONTACT,
        BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * Biography_ContentType
    Biography_ContentType
      ( Biography_ContentType_CONTENTTYPEUNSPECIFIED,
        Biography_ContentType_TEXTPLAIN,
        Biography_ContentType_TEXTHTML,
        ..
      ),

    -- * ContactGroup_GroupType
    ContactGroup_GroupType
      ( ContactGroup_GroupType_GROUPTYPEUNSPECIFIED,
        ContactGroup_GroupType_USERCONTACTGROUP,
        ContactGroup_GroupType_SYSTEMCONTACTGROUP,
        ..
      ),

    -- * CopyOtherContactToMyContactsGroupRequest_SourcesItem
    CopyOtherContactToMyContactsGroupRequest_SourcesItem
      ( CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
        CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEPROFILE,
        CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPECONTACT,
        CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * MiscKeyword_Type
    MiscKeyword_Type
      ( MiscKeyword_Type_TYPEUNSPECIFIED,
        MiscKeyword_Type_OUTLOOKBILLINGINFORMATION,
        MiscKeyword_Type_OUTLOOKDIRECTORYSERVER,
        MiscKeyword_Type_OUTLOOKKEYWORD,
        MiscKeyword_Type_OUTLOOKMILEAGE,
        MiscKeyword_Type_OUTLOOKPRIORITY,
        MiscKeyword_Type_OUTLOOKSENSITIVITY,
        MiscKeyword_Type_OUTLOOKSUBJECT,
        MiscKeyword_Type_OUTLOOKUSER,
        MiscKeyword_Type_Home,
        MiscKeyword_Type_Work,
        MiscKeyword_Type_Other,
        ..
      ),

    -- * Nickname_Type
    Nickname_Type
      ( Nickname_Type_Default,
        Nickname_Type_MAIDENNAME,
        Nickname_Type_Initials,
        Nickname_Type_Gplus,
        Nickname_Type_OTHERNAME,
        Nickname_Type_ALTERNATENAME,
        Nickname_Type_SHORTNAME,
        ..
      ),

    -- * Person_AgeRange
    Person_AgeRange
      ( Person_AgeRange_AGERANGEUNSPECIFIED,
        Person_AgeRange_LESSTHANEIGHTEEN,
        Person_AgeRange_EIGHTEENTOTWENTY,
        Person_AgeRange_TWENTYONEOROLDER,
        ..
      ),

    -- * PersonMetadata_ObjectType
    PersonMetadata_ObjectType
      ( PersonMetadata_ObjectType_OBJECTTYPEUNSPECIFIED,
        PersonMetadata_ObjectType_Person,
        PersonMetadata_ObjectType_Page,
        ..
      ),

    -- * ProfileMetadata_ObjectType
    ProfileMetadata_ObjectType
      ( ProfileMetadata_ObjectType_OBJECTTYPEUNSPECIFIED,
        ProfileMetadata_ObjectType_Person,
        ProfileMetadata_ObjectType_Page,
        ..
      ),

    -- * ProfileMetadata_UserTypesItem
    ProfileMetadata_UserTypesItem
      ( ProfileMetadata_UserTypesItem_USERTYPEUNKNOWN,
        ProfileMetadata_UserTypesItem_GOOGLEUSER,
        ProfileMetadata_UserTypesItem_GPLUSUSER,
        ProfileMetadata_UserTypesItem_GOOGLEAPPSUSER,
        ..
      ),

    -- * Source_Type
    Source_Type
      ( Source_Type_SOURCETYPEUNSPECIFIED,
        Source_Type_Account,
        Source_Type_Profile,
        Source_Type_DOMAINPROFILE,
        Source_Type_Contact,
        Source_Type_OTHERCONTACT,
        Source_Type_DOMAINCONTACT,
        ..
      ),

    -- * UpdateContactPhotoRequest_SourcesItem
    UpdateContactPhotoRequest_SourcesItem
      ( UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
        UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEPROFILE,
        UpdateContactPhotoRequest_SourcesItem_READSOURCETYPECONTACT,
        UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * OtherContactsListSources
    OtherContactsListSources
      ( OtherContactsListSources_READSOURCETYPEUNSPECIFIED,
        OtherContactsListSources_READSOURCETYPEPROFILE,
        OtherContactsListSources_READSOURCETYPECONTACT,
        OtherContactsListSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleConnectionsListSortOrder
    PeopleConnectionsListSortOrder
      ( PeopleConnectionsListSortOrder_LASTMODIFIEDASCENDING,
        PeopleConnectionsListSortOrder_LASTMODIFIEDDESCENDING,
        PeopleConnectionsListSortOrder_FIRSTNAMEASCENDING,
        PeopleConnectionsListSortOrder_LASTNAMEASCENDING,
        ..
      ),

    -- * PeopleConnectionsListSources
    PeopleConnectionsListSources
      ( PeopleConnectionsListSources_READSOURCETYPEUNSPECIFIED,
        PeopleConnectionsListSources_READSOURCETYPEPROFILE,
        PeopleConnectionsListSources_READSOURCETYPECONTACT,
        PeopleConnectionsListSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleCreateContactSources
    PeopleCreateContactSources
      ( PeopleCreateContactSources_READSOURCETYPEUNSPECIFIED,
        PeopleCreateContactSources_READSOURCETYPEPROFILE,
        PeopleCreateContactSources_READSOURCETYPECONTACT,
        PeopleCreateContactSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleDeleteContactPhotoSources
    PeopleDeleteContactPhotoSources
      ( PeopleDeleteContactPhotoSources_READSOURCETYPEUNSPECIFIED,
        PeopleDeleteContactPhotoSources_READSOURCETYPEPROFILE,
        PeopleDeleteContactPhotoSources_READSOURCETYPECONTACT,
        PeopleDeleteContactPhotoSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleGetSources
    PeopleGetSources
      ( PeopleGetSources_READSOURCETYPEUNSPECIFIED,
        PeopleGetSources_READSOURCETYPEPROFILE,
        PeopleGetSources_READSOURCETYPECONTACT,
        PeopleGetSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleGetBatchGetSources
    PeopleGetBatchGetSources
      ( PeopleGetBatchGetSources_READSOURCETYPEUNSPECIFIED,
        PeopleGetBatchGetSources_READSOURCETYPEPROFILE,
        PeopleGetBatchGetSources_READSOURCETYPECONTACT,
        PeopleGetBatchGetSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleListDirectoryPeopleMergeSources
    PeopleListDirectoryPeopleMergeSources
      ( PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED,
        PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT,
        ..
      ),

    -- * PeopleListDirectoryPeopleSources
    PeopleListDirectoryPeopleSources
      ( PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED,
        PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT,
        PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE,
        ..
      ),

    -- * PeopleSearchContactsSources
    PeopleSearchContactsSources
      ( PeopleSearchContactsSources_READSOURCETYPEUNSPECIFIED,
        PeopleSearchContactsSources_READSOURCETYPEPROFILE,
        PeopleSearchContactsSources_READSOURCETYPECONTACT,
        PeopleSearchContactsSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),

    -- * PeopleSearchDirectoryPeopleMergeSources
    PeopleSearchDirectoryPeopleMergeSources
      ( PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED,
        PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT,
        ..
      ),

    -- * PeopleSearchDirectoryPeopleSources
    PeopleSearchDirectoryPeopleSources
      ( PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED,
        PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT,
        PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE,
        ..
      ),

    -- * PeopleUpdateContactSources
    PeopleUpdateContactSources
      ( PeopleUpdateContactSources_READSOURCETYPEUNSPECIFIED,
        PeopleUpdateContactSources_READSOURCETYPEPROFILE,
        PeopleUpdateContactSources_READSOURCETYPECONTACT,
        PeopleUpdateContactSources_READSOURCETYPEDOMAINCONTACT,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The age range.
newtype AgeRangeType_AgeRange = AgeRangeType_AgeRange {fromAgeRangeType_AgeRange :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern AgeRangeType_AgeRange_AGERANGEUNSPECIFIED :: AgeRangeType_AgeRange
pattern AgeRangeType_AgeRange_AGERANGEUNSPECIFIED = AgeRangeType_AgeRange "AGE_RANGE_UNSPECIFIED"

-- | Younger than eighteen.
pattern AgeRangeType_AgeRange_LESSTHANEIGHTEEN :: AgeRangeType_AgeRange
pattern AgeRangeType_AgeRange_LESSTHANEIGHTEEN = AgeRangeType_AgeRange "LESS_THAN_EIGHTEEN"

-- | Between eighteen and twenty.
pattern AgeRangeType_AgeRange_EIGHTEENTOTWENTY :: AgeRangeType_AgeRange
pattern AgeRangeType_AgeRange_EIGHTEENTOTWENTY = AgeRangeType_AgeRange "EIGHTEEN_TO_TWENTY"

-- | Twenty-one and older.
pattern AgeRangeType_AgeRange_TWENTYONEOROLDER :: AgeRangeType_AgeRange
pattern AgeRangeType_AgeRange_TWENTYONEOROLDER = AgeRangeType_AgeRange "TWENTY_ONE_OR_OLDER"

{-# COMPLETE
  AgeRangeType_AgeRange_AGERANGEUNSPECIFIED,
  AgeRangeType_AgeRange_LESSTHANEIGHTEEN,
  AgeRangeType_AgeRange_EIGHTEENTOTWENTY,
  AgeRangeType_AgeRange_TWENTYONEOROLDER,
  AgeRangeType_AgeRange
  #-}

newtype BatchCreateContactsRequest_SourcesItem = BatchCreateContactsRequest_SourcesItem {fromBatchCreateContactsRequest_SourcesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED :: BatchCreateContactsRequest_SourcesItem
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED = BatchCreateContactsRequest_SourcesItem "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEPROFILE :: BatchCreateContactsRequest_SourcesItem
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEPROFILE = BatchCreateContactsRequest_SourcesItem "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPECONTACT :: BatchCreateContactsRequest_SourcesItem
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPECONTACT = BatchCreateContactsRequest_SourcesItem "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT :: BatchCreateContactsRequest_SourcesItem
pattern BatchCreateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT = BatchCreateContactsRequest_SourcesItem "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  BatchCreateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
  BatchCreateContactsRequest_SourcesItem_READSOURCETYPEPROFILE,
  BatchCreateContactsRequest_SourcesItem_READSOURCETYPECONTACT,
  BatchCreateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
  BatchCreateContactsRequest_SourcesItem
  #-}

newtype BatchUpdateContactsRequest_SourcesItem = BatchUpdateContactsRequest_SourcesItem {fromBatchUpdateContactsRequest_SourcesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED :: BatchUpdateContactsRequest_SourcesItem
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED = BatchUpdateContactsRequest_SourcesItem "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEPROFILE :: BatchUpdateContactsRequest_SourcesItem
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEPROFILE = BatchUpdateContactsRequest_SourcesItem "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPECONTACT :: BatchUpdateContactsRequest_SourcesItem
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPECONTACT = BatchUpdateContactsRequest_SourcesItem "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT :: BatchUpdateContactsRequest_SourcesItem
pattern BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT = BatchUpdateContactsRequest_SourcesItem "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
  BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEPROFILE,
  BatchUpdateContactsRequest_SourcesItem_READSOURCETYPECONTACT,
  BatchUpdateContactsRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
  BatchUpdateContactsRequest_SourcesItem
  #-}

-- | The content type of the biography.
newtype Biography_ContentType = Biography_ContentType {fromBiography_ContentType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern Biography_ContentType_CONTENTTYPEUNSPECIFIED :: Biography_ContentType
pattern Biography_ContentType_CONTENTTYPEUNSPECIFIED = Biography_ContentType "CONTENT_TYPE_UNSPECIFIED"

-- | Plain text.
pattern Biography_ContentType_TEXTPLAIN :: Biography_ContentType
pattern Biography_ContentType_TEXTPLAIN = Biography_ContentType "TEXT_PLAIN"

-- | HTML text.
pattern Biography_ContentType_TEXTHTML :: Biography_ContentType
pattern Biography_ContentType_TEXTHTML = Biography_ContentType "TEXT_HTML"

{-# COMPLETE
  Biography_ContentType_CONTENTTYPEUNSPECIFIED,
  Biography_ContentType_TEXTPLAIN,
  Biography_ContentType_TEXTHTML,
  Biography_ContentType
  #-}

-- | Output only. The contact group type.
newtype ContactGroup_GroupType = ContactGroup_GroupType {fromContactGroup_GroupType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern ContactGroup_GroupType_GROUPTYPEUNSPECIFIED :: ContactGroup_GroupType
pattern ContactGroup_GroupType_GROUPTYPEUNSPECIFIED = ContactGroup_GroupType "GROUP_TYPE_UNSPECIFIED"

-- | User defined contact group.
pattern ContactGroup_GroupType_USERCONTACTGROUP :: ContactGroup_GroupType
pattern ContactGroup_GroupType_USERCONTACTGROUP = ContactGroup_GroupType "USER_CONTACT_GROUP"

-- | System defined contact group.
pattern ContactGroup_GroupType_SYSTEMCONTACTGROUP :: ContactGroup_GroupType
pattern ContactGroup_GroupType_SYSTEMCONTACTGROUP = ContactGroup_GroupType "SYSTEM_CONTACT_GROUP"

{-# COMPLETE
  ContactGroup_GroupType_GROUPTYPEUNSPECIFIED,
  ContactGroup_GroupType_USERCONTACTGROUP,
  ContactGroup_GroupType_SYSTEMCONTACTGROUP,
  ContactGroup_GroupType
  #-}

newtype CopyOtherContactToMyContactsGroupRequest_SourcesItem = CopyOtherContactToMyContactsGroupRequest_SourcesItem {fromCopyOtherContactToMyContactsGroupRequest_SourcesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEUNSPECIFIED :: CopyOtherContactToMyContactsGroupRequest_SourcesItem
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEUNSPECIFIED = CopyOtherContactToMyContactsGroupRequest_SourcesItem "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEPROFILE :: CopyOtherContactToMyContactsGroupRequest_SourcesItem
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEPROFILE = CopyOtherContactToMyContactsGroupRequest_SourcesItem "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPECONTACT :: CopyOtherContactToMyContactsGroupRequest_SourcesItem
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPECONTACT = CopyOtherContactToMyContactsGroupRequest_SourcesItem "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT :: CopyOtherContactToMyContactsGroupRequest_SourcesItem
pattern CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT = CopyOtherContactToMyContactsGroupRequest_SourcesItem "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
  CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEPROFILE,
  CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPECONTACT,
  CopyOtherContactToMyContactsGroupRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
  CopyOtherContactToMyContactsGroupRequest_SourcesItem
  #-}

-- | The miscellaneous keyword type.
newtype MiscKeyword_Type = MiscKeyword_Type {fromMiscKeyword_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern MiscKeyword_Type_TYPEUNSPECIFIED :: MiscKeyword_Type
pattern MiscKeyword_Type_TYPEUNSPECIFIED = MiscKeyword_Type "TYPE_UNSPECIFIED"

-- | Outlook field for billing information.
pattern MiscKeyword_Type_OUTLOOKBILLINGINFORMATION :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKBILLINGINFORMATION = MiscKeyword_Type "OUTLOOK_BILLING_INFORMATION"

-- | Outlook field for directory server.
pattern MiscKeyword_Type_OUTLOOKDIRECTORYSERVER :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKDIRECTORYSERVER = MiscKeyword_Type "OUTLOOK_DIRECTORY_SERVER"

-- | Outlook field for keyword.
pattern MiscKeyword_Type_OUTLOOKKEYWORD :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKKEYWORD = MiscKeyword_Type "OUTLOOK_KEYWORD"

-- | Outlook field for mileage.
pattern MiscKeyword_Type_OUTLOOKMILEAGE :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKMILEAGE = MiscKeyword_Type "OUTLOOK_MILEAGE"

-- | Outlook field for priority.
pattern MiscKeyword_Type_OUTLOOKPRIORITY :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKPRIORITY = MiscKeyword_Type "OUTLOOK_PRIORITY"

-- | Outlook field for sensitivity.
pattern MiscKeyword_Type_OUTLOOKSENSITIVITY :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKSENSITIVITY = MiscKeyword_Type "OUTLOOK_SENSITIVITY"

-- | Outlook field for subject.
pattern MiscKeyword_Type_OUTLOOKSUBJECT :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKSUBJECT = MiscKeyword_Type "OUTLOOK_SUBJECT"

-- | Outlook field for user.
pattern MiscKeyword_Type_OUTLOOKUSER :: MiscKeyword_Type
pattern MiscKeyword_Type_OUTLOOKUSER = MiscKeyword_Type "OUTLOOK_USER"

-- | Home.
pattern MiscKeyword_Type_Home :: MiscKeyword_Type
pattern MiscKeyword_Type_Home = MiscKeyword_Type "HOME"

-- | Work.
pattern MiscKeyword_Type_Work :: MiscKeyword_Type
pattern MiscKeyword_Type_Work = MiscKeyword_Type "WORK"

-- | Other.
pattern MiscKeyword_Type_Other :: MiscKeyword_Type
pattern MiscKeyword_Type_Other = MiscKeyword_Type "OTHER"

{-# COMPLETE
  MiscKeyword_Type_TYPEUNSPECIFIED,
  MiscKeyword_Type_OUTLOOKBILLINGINFORMATION,
  MiscKeyword_Type_OUTLOOKDIRECTORYSERVER,
  MiscKeyword_Type_OUTLOOKKEYWORD,
  MiscKeyword_Type_OUTLOOKMILEAGE,
  MiscKeyword_Type_OUTLOOKPRIORITY,
  MiscKeyword_Type_OUTLOOKSENSITIVITY,
  MiscKeyword_Type_OUTLOOKSUBJECT,
  MiscKeyword_Type_OUTLOOKUSER,
  MiscKeyword_Type_Home,
  MiscKeyword_Type_Work,
  MiscKeyword_Type_Other,
  MiscKeyword_Type
  #-}

-- | The type of the nickname.
newtype Nickname_Type = Nickname_Type {fromNickname_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Generic nickname.
pattern Nickname_Type_Default :: Nickname_Type
pattern Nickname_Type_Default = Nickname_Type "DEFAULT"

-- | Maiden name or birth family name. Used when the person\'s family name has changed as a result of marriage.
pattern Nickname_Type_MAIDENNAME :: Nickname_Type
pattern Nickname_Type_MAIDENNAME = Nickname_Type "MAIDEN_NAME"

-- | Initials.
pattern Nickname_Type_Initials :: Nickname_Type
pattern Nickname_Type_Initials = Nickname_Type "INITIALS"

-- | Google+ profile nickname.
pattern Nickname_Type_Gplus :: Nickname_Type
pattern Nickname_Type_Gplus = Nickname_Type "GPLUS"

-- | A professional affiliation or other name; for example, @Dr. Smith.@
pattern Nickname_Type_OTHERNAME :: Nickname_Type
pattern Nickname_Type_OTHERNAME = Nickname_Type "OTHER_NAME"

-- | Alternate name person is known by.
pattern Nickname_Type_ALTERNATENAME :: Nickname_Type
pattern Nickname_Type_ALTERNATENAME = Nickname_Type "ALTERNATE_NAME"

-- | A shorter version of the person\'s name.
pattern Nickname_Type_SHORTNAME :: Nickname_Type
pattern Nickname_Type_SHORTNAME = Nickname_Type "SHORT_NAME"

{-# COMPLETE
  Nickname_Type_Default,
  Nickname_Type_MAIDENNAME,
  Nickname_Type_Initials,
  Nickname_Type_Gplus,
  Nickname_Type_OTHERNAME,
  Nickname_Type_ALTERNATENAME,
  Nickname_Type_SHORTNAME,
  Nickname_Type
  #-}

-- | Output only. __DEPRECATED__ (Please use @person.ageRanges@ instead) The person\'s age range.
newtype Person_AgeRange = Person_AgeRange {fromPerson_AgeRange :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern Person_AgeRange_AGERANGEUNSPECIFIED :: Person_AgeRange
pattern Person_AgeRange_AGERANGEUNSPECIFIED = Person_AgeRange "AGE_RANGE_UNSPECIFIED"

-- | Younger than eighteen.
pattern Person_AgeRange_LESSTHANEIGHTEEN :: Person_AgeRange
pattern Person_AgeRange_LESSTHANEIGHTEEN = Person_AgeRange "LESS_THAN_EIGHTEEN"

-- | Between eighteen and twenty.
pattern Person_AgeRange_EIGHTEENTOTWENTY :: Person_AgeRange
pattern Person_AgeRange_EIGHTEENTOTWENTY = Person_AgeRange "EIGHTEEN_TO_TWENTY"

-- | Twenty-one and older.
pattern Person_AgeRange_TWENTYONEOROLDER :: Person_AgeRange
pattern Person_AgeRange_TWENTYONEOROLDER = Person_AgeRange "TWENTY_ONE_OR_OLDER"

{-# COMPLETE
  Person_AgeRange_AGERANGEUNSPECIFIED,
  Person_AgeRange_LESSTHANEIGHTEEN,
  Person_AgeRange_EIGHTEENTOTWENTY,
  Person_AgeRange_TWENTYONEOROLDER,
  Person_AgeRange
  #-}

-- | Output only. __DEPRECATED__ (Please use @person.metadata.sources.profileMetadata.objectType@ instead) The type of the person object.
newtype PersonMetadata_ObjectType = PersonMetadata_ObjectType {fromPersonMetadata_ObjectType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PersonMetadata_ObjectType_OBJECTTYPEUNSPECIFIED :: PersonMetadata_ObjectType
pattern PersonMetadata_ObjectType_OBJECTTYPEUNSPECIFIED = PersonMetadata_ObjectType "OBJECT_TYPE_UNSPECIFIED"

-- | Person.
pattern PersonMetadata_ObjectType_Person :: PersonMetadata_ObjectType
pattern PersonMetadata_ObjectType_Person = PersonMetadata_ObjectType "PERSON"

-- | <https://workspace.google.com/products/currents/ Currents Page.>
pattern PersonMetadata_ObjectType_Page :: PersonMetadata_ObjectType
pattern PersonMetadata_ObjectType_Page = PersonMetadata_ObjectType "PAGE"

{-# COMPLETE
  PersonMetadata_ObjectType_OBJECTTYPEUNSPECIFIED,
  PersonMetadata_ObjectType_Person,
  PersonMetadata_ObjectType_Page,
  PersonMetadata_ObjectType
  #-}

-- | Output only. The profile object type.
newtype ProfileMetadata_ObjectType = ProfileMetadata_ObjectType {fromProfileMetadata_ObjectType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern ProfileMetadata_ObjectType_OBJECTTYPEUNSPECIFIED :: ProfileMetadata_ObjectType
pattern ProfileMetadata_ObjectType_OBJECTTYPEUNSPECIFIED = ProfileMetadata_ObjectType "OBJECT_TYPE_UNSPECIFIED"

-- | Person.
pattern ProfileMetadata_ObjectType_Person :: ProfileMetadata_ObjectType
pattern ProfileMetadata_ObjectType_Person = ProfileMetadata_ObjectType "PERSON"

-- | <https://workspace.google.com/products/currents/ Currents Page.>
pattern ProfileMetadata_ObjectType_Page :: ProfileMetadata_ObjectType
pattern ProfileMetadata_ObjectType_Page = ProfileMetadata_ObjectType "PAGE"

{-# COMPLETE
  ProfileMetadata_ObjectType_OBJECTTYPEUNSPECIFIED,
  ProfileMetadata_ObjectType_Person,
  ProfileMetadata_ObjectType_Page,
  ProfileMetadata_ObjectType
  #-}

newtype ProfileMetadata_UserTypesItem = ProfileMetadata_UserTypesItem {fromProfileMetadata_UserTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The user type is not known.
pattern ProfileMetadata_UserTypesItem_USERTYPEUNKNOWN :: ProfileMetadata_UserTypesItem
pattern ProfileMetadata_UserTypesItem_USERTYPEUNKNOWN = ProfileMetadata_UserTypesItem "USER_TYPE_UNKNOWN"

-- | The user is a Google user.
pattern ProfileMetadata_UserTypesItem_GOOGLEUSER :: ProfileMetadata_UserTypesItem
pattern ProfileMetadata_UserTypesItem_GOOGLEUSER = ProfileMetadata_UserTypesItem "GOOGLE_USER"

-- | The user is a Currents user.
pattern ProfileMetadata_UserTypesItem_GPLUSUSER :: ProfileMetadata_UserTypesItem
pattern ProfileMetadata_UserTypesItem_GPLUSUSER = ProfileMetadata_UserTypesItem "GPLUS_USER"

-- | The user is a Google Workspace user.
pattern ProfileMetadata_UserTypesItem_GOOGLEAPPSUSER :: ProfileMetadata_UserTypesItem
pattern ProfileMetadata_UserTypesItem_GOOGLEAPPSUSER = ProfileMetadata_UserTypesItem "GOOGLE_APPS_USER"

{-# COMPLETE
  ProfileMetadata_UserTypesItem_USERTYPEUNKNOWN,
  ProfileMetadata_UserTypesItem_GOOGLEUSER,
  ProfileMetadata_UserTypesItem_GPLUSUSER,
  ProfileMetadata_UserTypesItem_GOOGLEAPPSUSER,
  ProfileMetadata_UserTypesItem
  #-}

-- | The source type.
newtype Source_Type = Source_Type {fromSource_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern Source_Type_SOURCETYPEUNSPECIFIED :: Source_Type
pattern Source_Type_SOURCETYPEUNSPECIFIED = Source_Type "SOURCE_TYPE_UNSPECIFIED"

-- | <https://accounts.google.com Google Account>.
pattern Source_Type_Account :: Source_Type
pattern Source_Type_Account = Source_Type "ACCOUNT"

-- | <https://profiles.google.com Google profile>. You can view the profile at <https://profiles.google.com/>{id}, where {id} is the source id.
pattern Source_Type_Profile :: Source_Type
pattern Source_Type_Profile = Source_Type "PROFILE"

-- | <https://support.google.com/a/answer/1628008 Google Workspace domain profile>.
pattern Source_Type_DOMAINPROFILE :: Source_Type
pattern Source_Type_DOMAINPROFILE = Source_Type "DOMAIN_PROFILE"

-- | <https://contacts.google.com Google contact>. You can view the contact at <https://contact.google.com/>{id}, where {id} is the source id.
pattern Source_Type_Contact :: Source_Type
pattern Source_Type_Contact = Source_Type "CONTACT"

-- | <https://contacts.google.com/other Google \"Other contact\">.
pattern Source_Type_OTHERCONTACT :: Source_Type
pattern Source_Type_OTHERCONTACT = Source_Type "OTHER_CONTACT"

-- | <https://support.google.com/a/answer/9281635 Google Workspace domain shared contact>.
pattern Source_Type_DOMAINCONTACT :: Source_Type
pattern Source_Type_DOMAINCONTACT = Source_Type "DOMAIN_CONTACT"

{-# COMPLETE
  Source_Type_SOURCETYPEUNSPECIFIED,
  Source_Type_Account,
  Source_Type_Profile,
  Source_Type_DOMAINPROFILE,
  Source_Type_Contact,
  Source_Type_OTHERCONTACT,
  Source_Type_DOMAINCONTACT,
  Source_Type
  #-}

newtype UpdateContactPhotoRequest_SourcesItem = UpdateContactPhotoRequest_SourcesItem {fromUpdateContactPhotoRequest_SourcesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEUNSPECIFIED :: UpdateContactPhotoRequest_SourcesItem
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEUNSPECIFIED = UpdateContactPhotoRequest_SourcesItem "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEPROFILE :: UpdateContactPhotoRequest_SourcesItem
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEPROFILE = UpdateContactPhotoRequest_SourcesItem "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPECONTACT :: UpdateContactPhotoRequest_SourcesItem
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPECONTACT = UpdateContactPhotoRequest_SourcesItem "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT :: UpdateContactPhotoRequest_SourcesItem
pattern UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT = UpdateContactPhotoRequest_SourcesItem "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEUNSPECIFIED,
  UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEPROFILE,
  UpdateContactPhotoRequest_SourcesItem_READSOURCETYPECONTACT,
  UpdateContactPhotoRequest_SourcesItem_READSOURCETYPEDOMAINCONTACT,
  UpdateContactPhotoRequest_SourcesItem
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT if not set. Possible values for this field are: * READ/SOURCE/TYPE/CONTACT * READ/SOURCE/TYPE/CONTACT,READ/SOURCE/TYPE/PROFILE Specifying READ/SOURCE/TYPE/PROFILE without specifying READ/SOURCE/TYPE/CONTACT is not permitted.
newtype OtherContactsListSources = OtherContactsListSources {fromOtherContactsListSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern OtherContactsListSources_READSOURCETYPEUNSPECIFIED :: OtherContactsListSources
pattern OtherContactsListSources_READSOURCETYPEUNSPECIFIED = OtherContactsListSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern OtherContactsListSources_READSOURCETYPEPROFILE :: OtherContactsListSources
pattern OtherContactsListSources_READSOURCETYPEPROFILE = OtherContactsListSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern OtherContactsListSources_READSOURCETYPECONTACT :: OtherContactsListSources
pattern OtherContactsListSources_READSOURCETYPECONTACT = OtherContactsListSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern OtherContactsListSources_READSOURCETYPEDOMAINCONTACT :: OtherContactsListSources
pattern OtherContactsListSources_READSOURCETYPEDOMAINCONTACT = OtherContactsListSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  OtherContactsListSources_READSOURCETYPEUNSPECIFIED,
  OtherContactsListSources_READSOURCETYPEPROFILE,
  OtherContactsListSources_READSOURCETYPECONTACT,
  OtherContactsListSources_READSOURCETYPEDOMAINCONTACT,
  OtherContactsListSources
  #-}

-- | Optional. The order in which the connections should be sorted. Defaults to @LAST_MODIFIED_ASCENDING@.
newtype PeopleConnectionsListSortOrder = PeopleConnectionsListSortOrder {fromPeopleConnectionsListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Sort people by when they were changed; older entries first.
pattern PeopleConnectionsListSortOrder_LASTMODIFIEDASCENDING :: PeopleConnectionsListSortOrder
pattern PeopleConnectionsListSortOrder_LASTMODIFIEDASCENDING = PeopleConnectionsListSortOrder "LAST_MODIFIED_ASCENDING"

-- | Sort people by when they were changed; newer entries first.
pattern PeopleConnectionsListSortOrder_LASTMODIFIEDDESCENDING :: PeopleConnectionsListSortOrder
pattern PeopleConnectionsListSortOrder_LASTMODIFIEDDESCENDING = PeopleConnectionsListSortOrder "LAST_MODIFIED_DESCENDING"

-- | Sort people by first name.
pattern PeopleConnectionsListSortOrder_FIRSTNAMEASCENDING :: PeopleConnectionsListSortOrder
pattern PeopleConnectionsListSortOrder_FIRSTNAMEASCENDING = PeopleConnectionsListSortOrder "FIRST_NAME_ASCENDING"

-- | Sort people by last name.
pattern PeopleConnectionsListSortOrder_LASTNAMEASCENDING :: PeopleConnectionsListSortOrder
pattern PeopleConnectionsListSortOrder_LASTNAMEASCENDING = PeopleConnectionsListSortOrder "LAST_NAME_ASCENDING"

{-# COMPLETE
  PeopleConnectionsListSortOrder_LASTMODIFIEDASCENDING,
  PeopleConnectionsListSortOrder_LASTMODIFIEDDESCENDING,
  PeopleConnectionsListSortOrder_FIRSTNAMEASCENDING,
  PeopleConnectionsListSortOrder_LASTNAMEASCENDING,
  PeopleConnectionsListSortOrder
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
newtype PeopleConnectionsListSources = PeopleConnectionsListSources {fromPeopleConnectionsListSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleConnectionsListSources_READSOURCETYPEUNSPECIFIED :: PeopleConnectionsListSources
pattern PeopleConnectionsListSources_READSOURCETYPEUNSPECIFIED = PeopleConnectionsListSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleConnectionsListSources_READSOURCETYPEPROFILE :: PeopleConnectionsListSources
pattern PeopleConnectionsListSources_READSOURCETYPEPROFILE = PeopleConnectionsListSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleConnectionsListSources_READSOURCETYPECONTACT :: PeopleConnectionsListSources
pattern PeopleConnectionsListSources_READSOURCETYPECONTACT = PeopleConnectionsListSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleConnectionsListSources_READSOURCETYPEDOMAINCONTACT :: PeopleConnectionsListSources
pattern PeopleConnectionsListSources_READSOURCETYPEDOMAINCONTACT = PeopleConnectionsListSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleConnectionsListSources_READSOURCETYPEUNSPECIFIED,
  PeopleConnectionsListSources_READSOURCETYPEPROFILE,
  PeopleConnectionsListSources_READSOURCETYPECONTACT,
  PeopleConnectionsListSources_READSOURCETYPEDOMAINCONTACT,
  PeopleConnectionsListSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
newtype PeopleCreateContactSources = PeopleCreateContactSources {fromPeopleCreateContactSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleCreateContactSources_READSOURCETYPEUNSPECIFIED :: PeopleCreateContactSources
pattern PeopleCreateContactSources_READSOURCETYPEUNSPECIFIED = PeopleCreateContactSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleCreateContactSources_READSOURCETYPEPROFILE :: PeopleCreateContactSources
pattern PeopleCreateContactSources_READSOURCETYPEPROFILE = PeopleCreateContactSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleCreateContactSources_READSOURCETYPECONTACT :: PeopleCreateContactSources
pattern PeopleCreateContactSources_READSOURCETYPECONTACT = PeopleCreateContactSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleCreateContactSources_READSOURCETYPEDOMAINCONTACT :: PeopleCreateContactSources
pattern PeopleCreateContactSources_READSOURCETYPEDOMAINCONTACT = PeopleCreateContactSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleCreateContactSources_READSOURCETYPEUNSPECIFIED,
  PeopleCreateContactSources_READSOURCETYPEPROFILE,
  PeopleCreateContactSources_READSOURCETYPECONTACT,
  PeopleCreateContactSources_READSOURCETYPEDOMAINCONTACT,
  PeopleCreateContactSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
newtype PeopleDeleteContactPhotoSources = PeopleDeleteContactPhotoSources {fromPeopleDeleteContactPhotoSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEUNSPECIFIED :: PeopleDeleteContactPhotoSources
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEUNSPECIFIED = PeopleDeleteContactPhotoSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEPROFILE :: PeopleDeleteContactPhotoSources
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEPROFILE = PeopleDeleteContactPhotoSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleDeleteContactPhotoSources_READSOURCETYPECONTACT :: PeopleDeleteContactPhotoSources
pattern PeopleDeleteContactPhotoSources_READSOURCETYPECONTACT = PeopleDeleteContactPhotoSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEDOMAINCONTACT :: PeopleDeleteContactPhotoSources
pattern PeopleDeleteContactPhotoSources_READSOURCETYPEDOMAINCONTACT = PeopleDeleteContactPhotoSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleDeleteContactPhotoSources_READSOURCETYPEUNSPECIFIED,
  PeopleDeleteContactPhotoSources_READSOURCETYPEPROFILE,
  PeopleDeleteContactPhotoSources_READSOURCETYPECONTACT,
  PeopleDeleteContactPhotoSources_READSOURCETYPEDOMAINCONTACT,
  PeopleDeleteContactPhotoSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/PROFILE and READ/SOURCE/TYPE/CONTACT if not set.
newtype PeopleGetSources = PeopleGetSources {fromPeopleGetSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleGetSources_READSOURCETYPEUNSPECIFIED :: PeopleGetSources
pattern PeopleGetSources_READSOURCETYPEUNSPECIFIED = PeopleGetSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleGetSources_READSOURCETYPEPROFILE :: PeopleGetSources
pattern PeopleGetSources_READSOURCETYPEPROFILE = PeopleGetSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleGetSources_READSOURCETYPECONTACT :: PeopleGetSources
pattern PeopleGetSources_READSOURCETYPECONTACT = PeopleGetSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleGetSources_READSOURCETYPEDOMAINCONTACT :: PeopleGetSources
pattern PeopleGetSources_READSOURCETYPEDOMAINCONTACT = PeopleGetSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleGetSources_READSOURCETYPEUNSPECIFIED,
  PeopleGetSources_READSOURCETYPEPROFILE,
  PeopleGetSources_READSOURCETYPECONTACT,
  PeopleGetSources_READSOURCETYPEDOMAINCONTACT,
  PeopleGetSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
newtype PeopleGetBatchGetSources = PeopleGetBatchGetSources {fromPeopleGetBatchGetSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleGetBatchGetSources_READSOURCETYPEUNSPECIFIED :: PeopleGetBatchGetSources
pattern PeopleGetBatchGetSources_READSOURCETYPEUNSPECIFIED = PeopleGetBatchGetSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleGetBatchGetSources_READSOURCETYPEPROFILE :: PeopleGetBatchGetSources
pattern PeopleGetBatchGetSources_READSOURCETYPEPROFILE = PeopleGetBatchGetSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleGetBatchGetSources_READSOURCETYPECONTACT :: PeopleGetBatchGetSources
pattern PeopleGetBatchGetSources_READSOURCETYPECONTACT = PeopleGetBatchGetSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleGetBatchGetSources_READSOURCETYPEDOMAINCONTACT :: PeopleGetBatchGetSources
pattern PeopleGetBatchGetSources_READSOURCETYPEDOMAINCONTACT = PeopleGetBatchGetSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleGetBatchGetSources_READSOURCETYPEUNSPECIFIED,
  PeopleGetBatchGetSources_READSOURCETYPEPROFILE,
  PeopleGetBatchGetSources_READSOURCETYPECONTACT,
  PeopleGetBatchGetSources_READSOURCETYPEDOMAINCONTACT,
  PeopleGetBatchGetSources
  #-}

-- | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.
newtype PeopleListDirectoryPeopleMergeSources = PeopleListDirectoryPeopleMergeSources {fromPeopleListDirectoryPeopleMergeSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED :: PeopleListDirectoryPeopleMergeSources
pattern PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED = PeopleListDirectoryPeopleMergeSources "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED"

-- | User owned contact.
pattern PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT :: PeopleListDirectoryPeopleMergeSources
pattern PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT = PeopleListDirectoryPeopleMergeSources "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT"

{-# COMPLETE
  PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED,
  PeopleListDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT,
  PeopleListDirectoryPeopleMergeSources
  #-}

-- | Required. Directory sources to return.
newtype PeopleListDirectoryPeopleSources = PeopleListDirectoryPeopleSources {fromPeopleListDirectoryPeopleSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED :: PeopleListDirectoryPeopleSources
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED = PeopleListDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_UNSPECIFIED"

-- | Google Workspace domain shared contact.
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT :: PeopleListDirectoryPeopleSources
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT = PeopleListDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT"

-- | Google Workspace domain profile.
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE :: PeopleListDirectoryPeopleSources
pattern PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE = PeopleListDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE"

{-# COMPLETE
  PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED,
  PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT,
  PeopleListDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE,
  PeopleListDirectoryPeopleSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE_CONTACT if not set.
newtype PeopleSearchContactsSources = PeopleSearchContactsSources {fromPeopleSearchContactsSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleSearchContactsSources_READSOURCETYPEUNSPECIFIED :: PeopleSearchContactsSources
pattern PeopleSearchContactsSources_READSOURCETYPEUNSPECIFIED = PeopleSearchContactsSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleSearchContactsSources_READSOURCETYPEPROFILE :: PeopleSearchContactsSources
pattern PeopleSearchContactsSources_READSOURCETYPEPROFILE = PeopleSearchContactsSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleSearchContactsSources_READSOURCETYPECONTACT :: PeopleSearchContactsSources
pattern PeopleSearchContactsSources_READSOURCETYPECONTACT = PeopleSearchContactsSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleSearchContactsSources_READSOURCETYPEDOMAINCONTACT :: PeopleSearchContactsSources
pattern PeopleSearchContactsSources_READSOURCETYPEDOMAINCONTACT = PeopleSearchContactsSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleSearchContactsSources_READSOURCETYPEUNSPECIFIED,
  PeopleSearchContactsSources_READSOURCETYPEPROFILE,
  PeopleSearchContactsSources_READSOURCETYPECONTACT,
  PeopleSearchContactsSources_READSOURCETYPEDOMAINCONTACT,
  PeopleSearchContactsSources
  #-}

-- | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.
newtype PeopleSearchDirectoryPeopleMergeSources = PeopleSearchDirectoryPeopleMergeSources {fromPeopleSearchDirectoryPeopleMergeSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED :: PeopleSearchDirectoryPeopleMergeSources
pattern PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED = PeopleSearchDirectoryPeopleMergeSources "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED"

-- | User owned contact.
pattern PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT :: PeopleSearchDirectoryPeopleMergeSources
pattern PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT = PeopleSearchDirectoryPeopleMergeSources "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT"

{-# COMPLETE
  PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPEUNSPECIFIED,
  PeopleSearchDirectoryPeopleMergeSources_DIRECTORYMERGESOURCETYPECONTACT,
  PeopleSearchDirectoryPeopleMergeSources
  #-}

-- | Required. Directory sources to return.
newtype PeopleSearchDirectoryPeopleSources = PeopleSearchDirectoryPeopleSources {fromPeopleSearchDirectoryPeopleSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED :: PeopleSearchDirectoryPeopleSources
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED = PeopleSearchDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_UNSPECIFIED"

-- | Google Workspace domain shared contact.
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT :: PeopleSearchDirectoryPeopleSources
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT = PeopleSearchDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT"

-- | Google Workspace domain profile.
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE :: PeopleSearchDirectoryPeopleSources
pattern PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE = PeopleSearchDirectoryPeopleSources "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE"

{-# COMPLETE
  PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEUNSPECIFIED,
  PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINCONTACT,
  PeopleSearchDirectoryPeopleSources_DIRECTORYSOURCETYPEDOMAINPROFILE,
  PeopleSearchDirectoryPeopleSources
  #-}

-- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
newtype PeopleUpdateContactSources = PeopleUpdateContactSources {fromPeopleUpdateContactSources :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern PeopleUpdateContactSources_READSOURCETYPEUNSPECIFIED :: PeopleUpdateContactSources
pattern PeopleUpdateContactSources_READSOURCETYPEUNSPECIFIED = PeopleUpdateContactSources "READ_SOURCE_TYPE_UNSPECIFIED"

-- | Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.
pattern PeopleUpdateContactSources_READSOURCETYPEPROFILE :: PeopleUpdateContactSources
pattern PeopleUpdateContactSources_READSOURCETYPEPROFILE = PeopleUpdateContactSources "READ_SOURCE_TYPE_PROFILE"

-- | Returns SourceType.CONTACT.
pattern PeopleUpdateContactSources_READSOURCETYPECONTACT :: PeopleUpdateContactSources
pattern PeopleUpdateContactSources_READSOURCETYPECONTACT = PeopleUpdateContactSources "READ_SOURCE_TYPE_CONTACT"

-- | Returns SourceType.DOMAIN_CONTACT.
pattern PeopleUpdateContactSources_READSOURCETYPEDOMAINCONTACT :: PeopleUpdateContactSources
pattern PeopleUpdateContactSources_READSOURCETYPEDOMAINCONTACT = PeopleUpdateContactSources "READ_SOURCE_TYPE_DOMAIN_CONTACT"

{-# COMPLETE
  PeopleUpdateContactSources_READSOURCETYPEUNSPECIFIED,
  PeopleUpdateContactSources_READSOURCETYPEPROFILE,
  PeopleUpdateContactSources_READSOURCETYPECONTACT,
  PeopleUpdateContactSources_READSOURCETYPEDOMAINCONTACT,
  PeopleUpdateContactSources
  #-}
