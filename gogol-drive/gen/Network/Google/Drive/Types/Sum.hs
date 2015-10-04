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
data Visibility
    = VDefault
      -- ^ @DEFAULT@
      -- The visibility of the new file is determined by the user\'s default
      -- visibility\/sharing policies.
    | VPrivate
      -- ^ @PRIVATE@
      -- The new file will be visible to only the owner.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Visibility

instance FromText Visibility where
    fromText = \case
        "DEFAULT" -> Just VDefault
        "PRIVATE" -> Just VPrivate
        _ -> Nothing

instance ToText Visibility where
    toText = \case
        VDefault -> "DEFAULT"
        VPrivate -> "PRIVATE"

instance FromJSON Visibility where
    parseJSON = parseJSONText "Visibility"

instance ToJSON Visibility where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data DriveFilesUpdateModifiedDateBehavior
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

instance Hashable DriveFilesUpdateModifiedDateBehavior

instance FromText DriveFilesUpdateModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just FromBody
        "fromBodyIfNeeded" -> Just FromBodyIfNeeded
        "fromBodyOrNow" -> Just FromBodyOrNow
        "noChange" -> Just NoChange
        "now" -> Just Now
        "nowIfNeeded" -> Just NowIfNeeded
        _ -> Nothing

instance ToText DriveFilesUpdateModifiedDateBehavior where
    toText = \case
        FromBody -> "fromBody"
        FromBodyIfNeeded -> "fromBodyIfNeeded"
        FromBodyOrNow -> "fromBodyOrNow"
        NoChange -> "noChange"
        Now -> "now"
        NowIfNeeded -> "nowIfNeeded"

instance FromJSON DriveFilesUpdateModifiedDateBehavior where
    parseJSON = parseJSONText "DriveFilesUpdateModifiedDateBehavior"

instance ToJSON DriveFilesUpdateModifiedDateBehavior where
    toJSON = toJSONText

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
data ModifiedDateBehavior
    = MDBFromBody
      -- ^ @fromBody@
      -- Set modifiedDate to the value provided in the body of the request. No
      -- change if no value was provided.
    | MDBFromBodyIfNeeded
      -- ^ @fromBodyIfNeeded@
      -- Set modifiedDate to the value provided in the body of the request
      -- depending on other contents of the update.
    | MDBFromBodyOrNow
      -- ^ @fromBodyOrNow@
      -- Set modifiedDate to the value provided in the body of the request, or to
      -- the current time if no value was provided.
    | MDBNoChange
      -- ^ @noChange@
      -- Maintain the previous value of modifiedDate.
    | MDBNow
      -- ^ @now@
      -- Set modifiedDate to the current time.
    | MDBNowIfNeeded
      -- ^ @nowIfNeeded@
      -- Set modifiedDate to the current time depending on contents of the
      -- update.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ModifiedDateBehavior

instance FromText ModifiedDateBehavior where
    fromText = \case
        "fromBody" -> Just MDBFromBody
        "fromBodyIfNeeded" -> Just MDBFromBodyIfNeeded
        "fromBodyOrNow" -> Just MDBFromBodyOrNow
        "noChange" -> Just MDBNoChange
        "now" -> Just MDBNow
        "nowIfNeeded" -> Just MDBNowIfNeeded
        _ -> Nothing

instance ToText ModifiedDateBehavior where
    toText = \case
        MDBFromBody -> "fromBody"
        MDBFromBodyIfNeeded -> "fromBodyIfNeeded"
        MDBFromBodyOrNow -> "fromBodyOrNow"
        MDBNoChange -> "noChange"
        MDBNow -> "now"
        MDBNowIfNeeded -> "nowIfNeeded"

instance FromJSON ModifiedDateBehavior where
    parseJSON = parseJSONText "ModifiedDateBehavior"

instance ToJSON ModifiedDateBehavior where
    toJSON = toJSONText

-- | This parameter is deprecated and has no function.
data Projection
    = PBasic
      -- ^ @BASIC@
      -- Deprecated
    | PFull
      -- ^ @FULL@
      -- Deprecated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "BASIC" -> Just PBasic
        "FULL" -> Just PFull
        _ -> Nothing

instance ToText Projection where
    toText = \case
        PBasic -> "BASIC"
        PFull -> "FULL"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText

-- | The body of items (files\/documents) to which the query applies.
data Corpus
    = CDefault
      -- ^ @DEFAULT@
      -- The items that the user has accessed.
    | CDomain
      -- ^ @DOMAIN@
      -- Items shared to the user\'s domain.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Corpus

instance FromText Corpus where
    fromText = \case
        "DEFAULT" -> Just CDefault
        "DOMAIN" -> Just CDomain
        _ -> Nothing

instance ToText Corpus where
    toText = \case
        CDefault -> "DEFAULT"
        CDomain -> "DOMAIN"

instance FromJSON Corpus where
    parseJSON = parseJSONText "Corpus"

instance ToJSON Corpus where
    toJSON = toJSONText
