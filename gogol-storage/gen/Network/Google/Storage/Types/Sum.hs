{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Types.Sum where

import           Network.Google.Prelude

-- | Set of properties to return. Defaults to noAcl.
data StorageBucketsListProjection
    = Full
      -- ^ @full@
      -- Include all properties.
    | NoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBucketsListProjection

instance FromText StorageBucketsListProjection where
    fromText = \case
        "full" -> Just Full
        "noAcl" -> Just NoACL
        _ -> Nothing

instance ToText StorageBucketsListProjection where
    toText = \case
        Full -> "full"
        NoACL -> "noAcl"

instance FromJSON StorageBucketsListProjection where
    parseJSON = parseJSONText "StorageBucketsListProjection"

instance ToJSON StorageBucketsListProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data StorageObjectsUpdateProjection
    = SOUPFull
      -- ^ @full@
      -- Include all properties.
    | SOUPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsUpdateProjection

instance FromText StorageObjectsUpdateProjection where
    fromText = \case
        "full" -> Just SOUPFull
        "noAcl" -> Just SOUPNoACL
        _ -> Nothing

instance ToText StorageObjectsUpdateProjection where
    toText = \case
        SOUPFull -> "full"
        SOUPNoACL -> "noAcl"

instance FromJSON StorageObjectsUpdateProjection where
    parseJSON = parseJSONText "StorageObjectsUpdateProjection"

instance ToJSON StorageObjectsUpdateProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data StorageObjectsPatchProjection
    = SOPPFull
      -- ^ @full@
      -- Include all properties.
    | SOPPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsPatchProjection

instance FromText StorageObjectsPatchProjection where
    fromText = \case
        "full" -> Just SOPPFull
        "noAcl" -> Just SOPPNoACL
        _ -> Nothing

instance ToText StorageObjectsPatchProjection where
    toText = \case
        SOPPFull -> "full"
        SOPPNoACL -> "noAcl"

instance FromJSON StorageObjectsPatchProjection where
    parseJSON = parseJSONText "StorageObjectsPatchProjection"

instance ToJSON StorageObjectsPatchProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data StorageObjectsGetProjection
    = SOGPFull
      -- ^ @full@
      -- Include all properties.
    | SOGPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsGetProjection

instance FromText StorageObjectsGetProjection where
    fromText = \case
        "full" -> Just SOGPFull
        "noAcl" -> Just SOGPNoACL
        _ -> Nothing

instance ToText StorageObjectsGetProjection where
    toText = \case
        SOGPFull -> "full"
        SOGPNoACL -> "noAcl"

instance FromJSON StorageObjectsGetProjection where
    parseJSON = parseJSONText "StorageObjectsGetProjection"

instance ToJSON StorageObjectsGetProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data StorageBucketsGetProjection
    = SBGPFull
      -- ^ @full@
      -- Include all properties.
    | SBGPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBucketsGetProjection

instance FromText StorageBucketsGetProjection where
    fromText = \case
        "full" -> Just SBGPFull
        "noAcl" -> Just SBGPNoACL
        _ -> Nothing

instance ToText StorageBucketsGetProjection where
    toText = \case
        SBGPFull -> "full"
        SBGPNoACL -> "noAcl"

instance FromJSON StorageBucketsGetProjection where
    parseJSON = parseJSONText "StorageBucketsGetProjection"

instance ToJSON StorageBucketsGetProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data StorageObjectsCopyProjection
    = SOCPFull
      -- ^ @full@
      -- Include all properties.
    | SOCPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsCopyProjection

instance FromText StorageObjectsCopyProjection where
    fromText = \case
        "full" -> Just SOCPFull
        "noAcl" -> Just SOCPNoACL
        _ -> Nothing

instance ToText StorageObjectsCopyProjection where
    toText = \case
        SOCPFull -> "full"
        SOCPNoACL -> "noAcl"

instance FromJSON StorageObjectsCopyProjection where
    parseJSON = parseJSONText "StorageObjectsCopyProjection"

instance ToJSON StorageObjectsCopyProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data StorageBucketsPatchProjection
    = SBPPFull
      -- ^ @full@
      -- Include all properties.
    | SBPPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBucketsPatchProjection

instance FromText StorageBucketsPatchProjection where
    fromText = \case
        "full" -> Just SBPPFull
        "noAcl" -> Just SBPPNoACL
        _ -> Nothing

instance ToText StorageBucketsPatchProjection where
    toText = \case
        SBPPFull -> "full"
        SBPPNoACL -> "noAcl"

instance FromJSON StorageBucketsPatchProjection where
    parseJSON = parseJSONText "StorageBucketsPatchProjection"

instance ToJSON StorageBucketsPatchProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data StorageObjectsWatchAllProjection
    = SOWAPFull
      -- ^ @full@
      -- Include all properties.
    | SOWAPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsWatchAllProjection

instance FromText StorageObjectsWatchAllProjection where
    fromText = \case
        "full" -> Just SOWAPFull
        "noAcl" -> Just SOWAPNoACL
        _ -> Nothing

instance ToText StorageObjectsWatchAllProjection where
    toText = \case
        SOWAPFull -> "full"
        SOWAPNoACL -> "noAcl"

instance FromJSON StorageObjectsWatchAllProjection where
    parseJSON = parseJSONText "StorageObjectsWatchAllProjection"

instance ToJSON StorageObjectsWatchAllProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data StorageObjectsInsertProjection
    = SOIPFull
      -- ^ @full@
      -- Include all properties.
    | SOIPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsInsertProjection

instance FromText StorageObjectsInsertProjection where
    fromText = \case
        "full" -> Just SOIPFull
        "noAcl" -> Just SOIPNoACL
        _ -> Nothing

instance ToText StorageObjectsInsertProjection where
    toText = \case
        SOIPFull -> "full"
        SOIPNoACL -> "noAcl"

instance FromJSON StorageObjectsInsertProjection where
    parseJSON = parseJSONText "StorageObjectsInsertProjection"

instance ToJSON StorageObjectsInsertProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data StorageBucketsUpdateProjection
    = SBUPFull
      -- ^ @full@
      -- Include all properties.
    | SBUPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBucketsUpdateProjection

instance FromText StorageBucketsUpdateProjection where
    fromText = \case
        "full" -> Just SBUPFull
        "noAcl" -> Just SBUPNoACL
        _ -> Nothing

instance ToText StorageBucketsUpdateProjection where
    toText = \case
        SBUPFull -> "full"
        SBUPNoACL -> "noAcl"

instance FromJSON StorageBucketsUpdateProjection where
    parseJSON = parseJSONText "StorageBucketsUpdateProjection"

instance ToJSON StorageBucketsUpdateProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data StorageObjectsListProjection
    = SOLPFull
      -- ^ @full@
      -- Include all properties.
    | SOLPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageObjectsListProjection

instance FromText StorageObjectsListProjection where
    fromText = \case
        "full" -> Just SOLPFull
        "noAcl" -> Just SOLPNoACL
        _ -> Nothing

instance ToText StorageObjectsListProjection where
    toText = \case
        SOLPFull -> "full"
        SOLPNoACL -> "noAcl"

instance FromJSON StorageObjectsListProjection where
    parseJSON = parseJSONText "StorageObjectsListProjection"

instance ToJSON StorageObjectsListProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
data StorageBucketsInsertProjection
    = SBIPFull
      -- ^ @full@
      -- Include all properties.
    | SBIPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBucketsInsertProjection

instance FromText StorageBucketsInsertProjection where
    fromText = \case
        "full" -> Just SBIPFull
        "noAcl" -> Just SBIPNoACL
        _ -> Nothing

instance ToText StorageBucketsInsertProjection where
    toText = \case
        SBIPFull -> "full"
        SBIPNoACL -> "noAcl"

instance FromJSON StorageBucketsInsertProjection where
    parseJSON = parseJSONText "StorageBucketsInsertProjection"

instance ToJSON StorageBucketsInsertProjection where
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
