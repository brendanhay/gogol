{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.People.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.People.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

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
      -- profile at https:\/\/profiles.google.com\/id where id is the source id.
    | DomainProFile
      -- ^ @DOMAIN_PROFILE@
      -- [Google Apps domain profile](https:\/\/admin.google.com).
    | Contact
      -- ^ @CONTACT@
      -- [Google contact](https:\/\/contacts.google.com). You can view the
      -- contact at https:\/\/contact.google.com\/id where id is the source id.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceType

instance FromHttpApiData SourceType where
    parseQueryParam = \case
        "SOURCE_TYPE_UNSPECIFIED" -> Right SourceTypeUnspecified
        "ACCOUNT" -> Right Account
        "PROFILE" -> Right ProFile
        "DOMAIN_PROFILE" -> Right DomainProFile
        "CONTACT" -> Right Contact
        x -> Left ("Unable to parse SourceType from: " <> x)

instance ToHttpApiData SourceType where
    toQueryParam = \case
        SourceTypeUnspecified -> "SOURCE_TYPE_UNSPECIFIED"
        Account -> "ACCOUNT"
        ProFile -> "PROFILE"
        DomainProFile -> "DOMAIN_PROFILE"
        Contact -> "CONTACT"

instance FromJSON SourceType where
    parseJSON = parseJSONText "SourceType"

instance ToJSON SourceType where
    toJSON = toJSONText

-- | The read-only contact group type.
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NicknameType

instance FromHttpApiData NicknameType where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "MAIDEN_NAME" -> Right MaidenName
        "INITIALS" -> Right Initials
        "GPLUS" -> Right Gplus
        "OTHER_NAME" -> Right OtherName
        x -> Left ("Unable to parse NicknameType from: " <> x)

instance ToHttpApiData NicknameType where
    toQueryParam = \case
        Default -> "DEFAULT"
        MaidenName -> "MAIDEN_NAME"
        Initials -> "INITIALS"
        Gplus -> "GPLUS"
        OtherName -> "OTHER_NAME"

instance FromJSON NicknameType where
    parseJSON = parseJSONText "NicknameType"

instance ToJSON NicknameType where
    toJSON = toJSONText

-- | **DEPRECATED** (Please use \`person.ageRanges\` instead)** The person\'s
-- read-only age range.
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

-- | **DEPRECATED** (Please use
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
      -- [Google+ Page.](http:\/\/www.google.com\/+\/brands\/)
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

-- | The profile object type.
data ProFileMetadataObjectType
    = PFMOTObjectTypeUnspecified
      -- ^ @OBJECT_TYPE_UNSPECIFIED@
      -- Unspecified.
    | PFMOTPerson
      -- ^ @PERSON@
      -- Person.
    | PFMOTPage
      -- ^ @PAGE@
      -- [Google+ Page.](http:\/\/www.google.com\/+\/brands\/)
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
