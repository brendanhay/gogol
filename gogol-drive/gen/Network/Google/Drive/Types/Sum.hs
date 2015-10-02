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

-- | The visibility of the new file. This parameter is only relevant when the
-- source is not a native Google Doc and convert=false.
data DriveFilesCopyVisibility
    = Default
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | Private
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesCopyVisibility

instance FromText DriveFilesCopyVisibility where
    fromText = \case
        "DEFAULT" -> Just Default
        "PRIVATE" -> Just Private
        _ -> Nothing

instance ToText DriveFilesCopyVisibility where
    toText = \case
        Default -> "DEFAULT"
        Private -> "PRIVATE"

instance FromJSON DriveFilesCopyVisibility where
    parseJSON = parseJSONText "DriveFilesCopyVisibility"

instance ToJSON DriveFilesCopyVisibility where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data DriveFilesGetProjection
    = Basic
      -- ^ @BASIC@
      -- Deprecated
    | Full
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesGetProjection

instance FromText DriveFilesGetProjection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText DriveFilesGetProjection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON DriveFilesGetProjection where
    parseJSON = parseJSONText "DriveFilesGetProjection"

instance ToJSON DriveFilesGetProjection where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data DriveFilesWatchProjection
    = DFWPBasic
      -- ^ @BASIC@
      -- Deprecated
    | DFWPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesWatchProjection

instance FromText DriveFilesWatchProjection where
    fromText = \case
        "BASIC" -> Just DFWPBasic
        "FULL" -> Just DFWPFull
        _ -> Nothing

instance ToText DriveFilesWatchProjection where
    toText = \case
        DFWPBasic -> "BASIC"
        DFWPFull -> "FULL"

instance FromJSON DriveFilesWatchProjection where
    parseJSON = parseJSONText "DriveFilesWatchProjection"

instance ToJSON DriveFilesWatchProjection where
    toJSON = toJSONText

-- | The visibility of the new file. This parameter is only relevant when
-- convert=false.
data DriveFilesInsertVisibility
    = DFIVDefault
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | DFIVPrivate
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesInsertVisibility

instance FromText DriveFilesInsertVisibility where
    fromText = \case
        "DEFAULT" -> Just DFIVDefault
        "PRIVATE" -> Just DFIVPrivate
        _ -> Nothing

instance ToText DriveFilesInsertVisibility where
    toText = \case
        DFIVDefault -> "DEFAULT"
        DFIVPrivate -> "PRIVATE"

instance FromJSON DriveFilesInsertVisibility where
    parseJSON = parseJSONText "DriveFilesInsertVisibility"

instance ToJSON DriveFilesInsertVisibility where
    toJSON = toJSONText

-- | The body of items (files\/documents) to which the query applies.
data DriveFilesListCorpus
    = DFLCDefault
      -- ^ @DEFAULT@
      -- The items that the user has accessed.
    | DFLCDomain
      -- ^ @DOMAIN@
      -- Items shared to the user\'s domain.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesListCorpus

instance FromText DriveFilesListCorpus where
    fromText = \case
        "DEFAULT" -> Just DFLCDefault
        "DOMAIN" -> Just DFLCDomain
        _ -> Nothing

instance ToText DriveFilesListCorpus where
    toText = \case
        DFLCDefault -> "DEFAULT"
        DFLCDomain -> "DOMAIN"

instance FromJSON DriveFilesListCorpus where
    parseJSON = parseJSONText "DriveFilesListCorpus"

instance ToJSON DriveFilesListCorpus where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data DriveFilesPatchModifiedDateBehavior
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

instance Hashable DriveFilesPatchModifiedDateBehavior

instance FromText DriveFilesPatchModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FromBody
        "fromBodyIfNeeded" -> Just FromBodyIfNeeded
        "fromBodyOrNow" -> Just FromBodyOrNow
        "noChange" -> Just NoChange
        "now" -> Just Now
        "nowIfNeeded" -> Just NowIfNeeded
        _ -> Nothing

instance ToText DriveFilesPatchModifiedDateBehavior where
    toText = \case
        FromBody -> "fromBody"
        FromBodyIfNeeded -> "fromBodyIfNeeded"
        FromBodyOrNow -> "fromBodyOrNow"
        NoChange -> "noChange"
        Now -> "now"
        NowIfNeeded -> "nowIfNeeded"

instance FromJSON DriveFilesPatchModifiedDateBehavior where
    parseJSON = parseJSONText "DriveFilesPatchModifiedDateBehavior"

instance ToJSON DriveFilesPatchModifiedDateBehavior where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data DriveFilesUpdateModifiedDateBehavior
    = DFUMDBFromBody
      -- ^ @fromBody@
      -- Set modifiedDate to the value provided in the body of the request. No
      -- change if no value was provided.
    | DFUMDBFromBodyIfNeeded
      -- ^ @fromBodyIfNeeded@
      -- Set modifiedDate to the value provided in the body of the request
      -- depending on other contents of the update.
    | DFUMDBFromBodyOrNow
      -- ^ @fromBodyOrNow@
      -- Set modifiedDate to the value provided in the body of the request, or to
      -- the current time if no value was provided.
    | DFUMDBNoChange
      -- ^ @noChange@
      -- Maintain the previous value of modifiedDate.
    | DFUMDBNow
      -- ^ @now@
      -- Set modifiedDate to the current time.
    | DFUMDBNowIfNeeded
      -- ^ @nowIfNeeded@
      -- Set modifiedDate to the current time depending on contents of the
      -- update.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesUpdateModifiedDateBehavior

instance FromText DriveFilesUpdateModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just DFUMDBFromBody
        "fromBodyIfNeeded" -> Just DFUMDBFromBodyIfNeeded
        "fromBodyOrNow" -> Just DFUMDBFromBodyOrNow
        "noChange" -> Just DFUMDBNoChange
        "now" -> Just DFUMDBNow
        "nowIfNeeded" -> Just DFUMDBNowIfNeeded
        _ -> Nothing

instance ToText DriveFilesUpdateModifiedDateBehavior where
    toText = \case
        DFUMDBFromBody -> "fromBody"
        DFUMDBFromBodyIfNeeded -> "fromBodyIfNeeded"
        DFUMDBFromBodyOrNow -> "fromBodyOrNow"
        DFUMDBNoChange -> "noChange"
        DFUMDBNow -> "now"
        DFUMDBNowIfNeeded -> "nowIfNeeded"

instance FromJSON DriveFilesUpdateModifiedDateBehavior where
    parseJSON = parseJSONText "DriveFilesUpdateModifiedDateBehavior"

instance ToJSON DriveFilesUpdateModifiedDateBehavior where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data DriveFilesListProjection
    = DFLPBasic
      -- ^ @BASIC@
      -- Deprecated
    | DFLPFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DriveFilesListProjection

instance FromText DriveFilesListProjection where
    fromText = \case
        "BASIC" -> Just DFLPBasic
        "FULL" -> Just DFLPFull
        _ -> Nothing

instance ToText DriveFilesListProjection where
    toText = \case
        DFLPBasic -> "BASIC"
        DFLPFull -> "FULL"

instance FromJSON DriveFilesListProjection where
    parseJSON = parseJSONText "DriveFilesListProjection"

instance ToJSON DriveFilesListProjection where
    toJSON = toJSONText
