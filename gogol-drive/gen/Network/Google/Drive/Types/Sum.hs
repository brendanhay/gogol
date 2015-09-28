{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Drive.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Drive.Types.Sum where

import           Network.Google.Prelude

-- | This parameter is deprecated and has no function.
data FilesGet'Projection
    = Basic
      -- ^ @BASIC@
      -- Deprecated
    | Full
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesGet'Projection

instance FromText FilesGet'Projection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText FilesGet'Projection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON FilesGet'Projection where
    parseJSON = parseJSONText "FilesGet'Projection"

instance ToJSON FilesGet'Projection where
    toJSON = toJSONText

-- | The visibility of the new file. This parameter is only relevant when the
-- source is not a native Google Doc and convert=false.
data FilesCopy'Visibility
    = Default
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | Private
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesCopy'Visibility

instance FromText FilesCopy'Visibility where
    fromText = \case
        "DEFAULT" -> Just Default
        "PRIVATE" -> Just Private
        _ -> Nothing

instance ToText FilesCopy'Visibility where
    toText = \case
        Default -> "DEFAULT"
        Private -> "PRIVATE"

instance FromJSON FilesCopy'Visibility where
    parseJSON = parseJSONText "FilesCopy'Visibility"

instance ToJSON FilesCopy'Visibility where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data FilesWatch'Projection
    = FWPBasic
      -- ^ @BASIC@
      -- Deprecated
    | FWPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesWatch'Projection

instance FromText FilesWatch'Projection where
    fromText = \case
        "BASIC" -> Just FWPBasic
        "FULL" -> Just FWPFull
        _ -> Nothing

instance ToText FilesWatch'Projection where
    toText = \case
        FWPBasic -> "BASIC"
        FWPFull -> "FULL"

instance FromJSON FilesWatch'Projection where
    parseJSON = parseJSONText "FilesWatch'Projection"

instance ToJSON FilesWatch'Projection where
    toJSON = toJSONText

-- | The body of items (files\/documents) to which the query applies.
data FilesList'Corpus
    = FLCDefault
      -- ^ @DEFAULT@
      -- The items that the user has accessed.
    | FLCDomain
      -- ^ @DOMAIN@
      -- Items shared to the user\'s domain.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesList'Corpus

instance FromText FilesList'Corpus where
    fromText = \case
        "DEFAULT" -> Just FLCDefault
        "DOMAIN" -> Just FLCDomain
        _ -> Nothing

instance ToText FilesList'Corpus where
    toText = \case
        FLCDefault -> "DEFAULT"
        FLCDomain -> "DOMAIN"

instance FromJSON FilesList'Corpus where
    parseJSON = parseJSONText "FilesList'Corpus"

instance ToJSON FilesList'Corpus where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data FilesList'Projection
    = FLPBasic
      -- ^ @BASIC@
      -- Deprecated
    | FLPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesList'Projection

instance FromText FilesList'Projection where
    fromText = \case
        "BASIC" -> Just FLPBasic
        "FULL" -> Just FLPFull
        _ -> Nothing

instance ToText FilesList'Projection where
    toText = \case
        FLPBasic -> "BASIC"
        FLPFull -> "FULL"

instance FromJSON FilesList'Projection where
    parseJSON = parseJSONText "FilesList'Projection"

instance ToJSON FilesList'Projection where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data FilesPatch'ModifiedDateBehavior
    = FromBody
      -- ^ @fromBody@
      -- Set modifiedDate to the value provided in the body of the request. No
      -- change if no value was provided.
    | FromBodyIfNeeded
      -- ^ @fromBodyIfNeeded@
      -- Set modifiedDate to the value provided in the body of the request
      -- depending on other contents of the update.
    | FromBodyOrNow
      -- ^ @fromBodyOrNow@
      -- Set modifiedDate to the value provided in the body of the request, or to
      -- the current time if no value was provided.
    | NoChange
      -- ^ @noChange@
      -- Maintain the previous value of modifiedDate.
    | Now
      -- ^ @now@
      -- Set modifiedDate to the current time.
    | NowIfNeeded
      -- ^ @nowIfNeeded@
      -- Set modifiedDate to the current time depending on contents of the
      -- update.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesPatch'ModifiedDateBehavior

instance FromText FilesPatch'ModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FromBody
        "fromBodyIfNeeded" -> Just FromBodyIfNeeded
        "fromBodyOrNow" -> Just FromBodyOrNow
        "noChange" -> Just NoChange
        "now" -> Just Now
        "nowIfNeeded" -> Just NowIfNeeded
        _ -> Nothing

instance ToText FilesPatch'ModifiedDateBehavior where
    toText = \case
        FromBody -> "fromBody"
        FromBodyIfNeeded -> "fromBodyIfNeeded"
        FromBodyOrNow -> "fromBodyOrNow"
        NoChange -> "noChange"
        Now -> "now"
        NowIfNeeded -> "nowIfNeeded"

instance FromJSON FilesPatch'ModifiedDateBehavior where
    parseJSON = parseJSONText "FilesPatch'ModifiedDateBehavior"

instance ToJSON FilesPatch'ModifiedDateBehavior where
    toJSON = toJSONText

-- | The visibility of the new file. This parameter is only relevant when
-- convert=false.
data FilesInsert'Visibility
    = FIVDefault
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | FIVPrivate
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesInsert'Visibility

instance FromText FilesInsert'Visibility where
    fromText = \case
        "DEFAULT" -> Just FIVDefault
        "PRIVATE" -> Just FIVPrivate
        _ -> Nothing

instance ToText FilesInsert'Visibility where
    toText = \case
        FIVDefault -> "DEFAULT"
        FIVPrivate -> "PRIVATE"

instance FromJSON FilesInsert'Visibility where
    parseJSON = parseJSONText "FilesInsert'Visibility"

instance ToJSON FilesInsert'Visibility where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data FilesUpdate'ModifiedDateBehavior
    = FUMDBFromBody
      -- ^ @fromBody@
      -- Set modifiedDate to the value provided in the body of the request. No
      -- change if no value was provided.
    | FUMDBFromBodyIfNeeded
      -- ^ @fromBodyIfNeeded@
      -- Set modifiedDate to the value provided in the body of the request
      -- depending on other contents of the update.
    | FUMDBFromBodyOrNow
      -- ^ @fromBodyOrNow@
      -- Set modifiedDate to the value provided in the body of the request, or to
      -- the current time if no value was provided.
    | FUMDBNoChange
      -- ^ @noChange@
      -- Maintain the previous value of modifiedDate.
    | FUMDBNow
      -- ^ @now@
      -- Set modifiedDate to the current time.
    | FUMDBNowIfNeeded
      -- ^ @nowIfNeeded@
      -- Set modifiedDate to the current time depending on contents of the
      -- update.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesUpdate'ModifiedDateBehavior

instance FromText FilesUpdate'ModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FUMDBFromBody
        "fromBodyIfNeeded" -> Just FUMDBFromBodyIfNeeded
        "fromBodyOrNow" -> Just FUMDBFromBodyOrNow
        "noChange" -> Just FUMDBNoChange
        "now" -> Just FUMDBNow
        "nowIfNeeded" -> Just FUMDBNowIfNeeded
        _ -> Nothing

instance ToText FilesUpdate'ModifiedDateBehavior where
    toText = \case
        FUMDBFromBody -> "fromBody"
        FUMDBFromBodyIfNeeded -> "fromBodyIfNeeded"
        FUMDBFromBodyOrNow -> "fromBodyOrNow"
        FUMDBNoChange -> "noChange"
        FUMDBNow -> "now"
        FUMDBNowIfNeeded -> "nowIfNeeded"

instance FromJSON FilesUpdate'ModifiedDateBehavior where
    parseJSON = parseJSONText "FilesUpdate'ModifiedDateBehavior"

instance ToJSON FilesUpdate'ModifiedDateBehavior where
    toJSON = toJSONText
