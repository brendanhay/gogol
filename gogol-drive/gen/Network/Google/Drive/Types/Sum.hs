{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | The visibility of the new file. This parameter is only relevant when
-- convert=false.
data FilesInsertVisibility
    = Default
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | Private
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesInsertVisibility

instance FromText FilesInsertVisibility where
    fromText = \case
        "DEFAULT" -> Just Default
        "PRIVATE" -> Just Private
        _ -> Nothing

instance ToText FilesInsertVisibility where
    toText = \case
        Default -> "DEFAULT"
        Private -> "PRIVATE"

instance FromJSON FilesInsertVisibility where
    parseJSON = parseJSONText "FilesInsertVisibility"

instance ToJSON FilesInsertVisibility where
    toJSON = toJSONText

-- | The body of items (files\/documents) to which the query applies.
data FilesListCorpus
    = FLCDefault
      -- ^ @DEFAULT@
      -- The items that the user has accessed.
    | FLCDomain
      -- ^ @DOMAIN@
      -- Items shared to the user\'s domain.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesListCorpus

instance FromText FilesListCorpus where
    fromText = \case
        "DEFAULT" -> Just FLCDefault
        "DOMAIN" -> Just FLCDomain
        _ -> Nothing

instance ToText FilesListCorpus where
    toText = \case
        FLCDefault -> "DEFAULT"
        FLCDomain -> "DOMAIN"

instance FromJSON FilesListCorpus where
    parseJSON = parseJSONText "FilesListCorpus"

instance ToJSON FilesListCorpus where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data FilesListProjection
    = Basic
      -- ^ @BASIC@
      -- Deprecated
    | Full
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesListProjection

instance FromText FilesListProjection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText FilesListProjection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON FilesListProjection where
    parseJSON = parseJSONText "FilesListProjection"

instance ToJSON FilesListProjection where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data FilesUpdateModifiedDateBehavior
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

instance Hashable FilesUpdateModifiedDateBehavior

instance FromText FilesUpdateModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FromBody
        "fromBodyIfNeeded" -> Just FromBodyIfNeeded
        "fromBodyOrNow" -> Just FromBodyOrNow
        "noChange" -> Just NoChange
        "now" -> Just Now
        "nowIfNeeded" -> Just NowIfNeeded
        _ -> Nothing

instance ToText FilesUpdateModifiedDateBehavior where
    toText = \case
        FromBody -> "fromBody"
        FromBodyIfNeeded -> "fromBodyIfNeeded"
        FromBodyOrNow -> "fromBodyOrNow"
        NoChange -> "noChange"
        Now -> "now"
        NowIfNeeded -> "nowIfNeeded"

instance FromJSON FilesUpdateModifiedDateBehavior where
    parseJSON = parseJSONText "FilesUpdateModifiedDateBehavior"

instance ToJSON FilesUpdateModifiedDateBehavior where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data FilesWatchProjection
    = FWPBasic
      -- ^ @BASIC@
      -- Deprecated
    | FWPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesWatchProjection

instance FromText FilesWatchProjection where
    fromText = \case
        "BASIC" -> Just FWPBasic
        "FULL" -> Just FWPFull
        _ -> Nothing

instance ToText FilesWatchProjection where
    toText = \case
        FWPBasic -> "BASIC"
        FWPFull -> "FULL"

instance FromJSON FilesWatchProjection where
    parseJSON = parseJSONText "FilesWatchProjection"

instance ToJSON FilesWatchProjection where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data FilesPatchModifiedDateBehavior
    = FPMDBFromBody
      -- ^ @fromBody@
      -- Set modifiedDate to the value provided in the body of the request. No
      -- change if no value was provided.
    | FPMDBFromBodyIfNeeded
      -- ^ @fromBodyIfNeeded@
      -- Set modifiedDate to the value provided in the body of the request
      -- depending on other contents of the update.
    | FPMDBFromBodyOrNow
      -- ^ @fromBodyOrNow@
      -- Set modifiedDate to the value provided in the body of the request, or to
      -- the current time if no value was provided.
    | FPMDBNoChange
      -- ^ @noChange@
      -- Maintain the previous value of modifiedDate.
    | FPMDBNow
      -- ^ @now@
      -- Set modifiedDate to the current time.
    | FPMDBNowIfNeeded
      -- ^ @nowIfNeeded@
      -- Set modifiedDate to the current time depending on contents of the
      -- update.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesPatchModifiedDateBehavior

instance FromText FilesPatchModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FPMDBFromBody
        "fromBodyIfNeeded" -> Just FPMDBFromBodyIfNeeded
        "fromBodyOrNow" -> Just FPMDBFromBodyOrNow
        "noChange" -> Just FPMDBNoChange
        "now" -> Just FPMDBNow
        "nowIfNeeded" -> Just FPMDBNowIfNeeded
        _ -> Nothing

instance ToText FilesPatchModifiedDateBehavior where
    toText = \case
        FPMDBFromBody -> "fromBody"
        FPMDBFromBodyIfNeeded -> "fromBodyIfNeeded"
        FPMDBFromBodyOrNow -> "fromBodyOrNow"
        FPMDBNoChange -> "noChange"
        FPMDBNow -> "now"
        FPMDBNowIfNeeded -> "nowIfNeeded"

instance FromJSON FilesPatchModifiedDateBehavior where
    parseJSON = parseJSONText "FilesPatchModifiedDateBehavior"

instance ToJSON FilesPatchModifiedDateBehavior where
    toJSON = toJSONText

-- | The visibility of the new file. This parameter is only relevant when the
-- source is not a native Google Doc and convert=false.
data FilesCopyVisibility
    = FCVDefault
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | FCVPrivate
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesCopyVisibility

instance FromText FilesCopyVisibility where
    fromText = \case
        "DEFAULT" -> Just FCVDefault
        "PRIVATE" -> Just FCVPrivate
        _ -> Nothing

instance ToText FilesCopyVisibility where
    toText = \case
        FCVDefault -> "DEFAULT"
        FCVPrivate -> "PRIVATE"

instance FromJSON FilesCopyVisibility where
    parseJSON = parseJSONText "FilesCopyVisibility"

instance ToJSON FilesCopyVisibility where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data FilesGetProjection
    = FGPBasic
      -- ^ @BASIC@
      -- Deprecated
    | FGPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesGetProjection

instance FromText FilesGetProjection where
    fromText = \case
        "BASIC" -> Just FGPBasic
        "FULL" -> Just FGPFull
        _ -> Nothing

instance ToText FilesGetProjection where
    toText = \case
        FGPBasic -> "BASIC"
        FGPFull -> "FULL"

instance FromJSON FilesGetProjection where
    parseJSON = parseJSONText "FilesGetProjection"

instance ToJSON FilesGetProjection where
    toJSON = toJSONText
