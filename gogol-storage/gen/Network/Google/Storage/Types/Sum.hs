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

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data ObjectsInsert'Projection
    = Full
      -- ^ @full@
      -- Include all properties.
    | NoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsInsert'Projection

instance FromText ObjectsInsert'Projection where
    fromText = \case
        "full" -> Just Full
        "noAcl" -> Just NoACL
        _ -> Nothing

instance ToText ObjectsInsert'Projection where
    toText = \case
        Full -> "full"
        NoACL -> "noAcl"

instance FromJSON ObjectsInsert'Projection where
    parseJSON = parseJSONText "ObjectsInsert'Projection"

instance ToJSON ObjectsInsert'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
data BucketsInsert'Projection
    = BIPFull
      -- ^ @full@
      -- Include all properties.
    | BIPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsInsert'Projection

instance FromText BucketsInsert'Projection where
    fromText = \case
        "full" -> Just BIPFull
        "noAcl" -> Just BIPNoACL
        _ -> Nothing

instance ToText BucketsInsert'Projection where
    toText = \case
        BIPFull -> "full"
        BIPNoACL -> "noAcl"

instance FromJSON BucketsInsert'Projection where
    parseJSON = parseJSONText "BucketsInsert'Projection"

instance ToJSON BucketsInsert'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsWatchAll'Projection
    = OWAPFull
      -- ^ @full@
      -- Include all properties.
    | OWAPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsWatchAll'Projection

instance FromText ObjectsWatchAll'Projection where
    fromText = \case
        "full" -> Just OWAPFull
        "noAcl" -> Just OWAPNoACL
        _ -> Nothing

instance ToText ObjectsWatchAll'Projection where
    toText = \case
        OWAPFull -> "full"
        OWAPNoACL -> "noAcl"

instance FromJSON ObjectsWatchAll'Projection where
    parseJSON = parseJSONText "ObjectsWatchAll'Projection"

instance ToJSON ObjectsWatchAll'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data BucketsGet'Projection
    = BGPFull
      -- ^ @full@
      -- Include all properties.
    | BGPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsGet'Projection

instance FromText BucketsGet'Projection where
    fromText = \case
        "full" -> Just BGPFull
        "noAcl" -> Just BGPNoACL
        _ -> Nothing

instance ToText BucketsGet'Projection where
    toText = \case
        BGPFull -> "full"
        BGPNoACL -> "noAcl"

instance FromJSON BucketsGet'Projection where
    parseJSON = parseJSONText "BucketsGet'Projection"

instance ToJSON BucketsGet'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data ObjectsCopy'Projection
    = OCPFull
      -- ^ @full@
      -- Include all properties.
    | OCPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsCopy'Projection

instance FromText ObjectsCopy'Projection where
    fromText = \case
        "full" -> Just OCPFull
        "noAcl" -> Just OCPNoACL
        _ -> Nothing

instance ToText ObjectsCopy'Projection where
    toText = \case
        OCPFull -> "full"
        OCPNoACL -> "noAcl"

instance FromJSON ObjectsCopy'Projection where
    parseJSON = parseJSONText "ObjectsCopy'Projection"

instance ToJSON ObjectsCopy'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data BucketsPatch'Projection
    = BPPFull
      -- ^ @full@
      -- Include all properties.
    | BPPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsPatch'Projection

instance FromText BucketsPatch'Projection where
    fromText = \case
        "full" -> Just BPPFull
        "noAcl" -> Just BPPNoACL
        _ -> Nothing

instance ToText BucketsPatch'Projection where
    toText = \case
        BPPFull -> "full"
        BPPNoACL -> "noAcl"

instance FromJSON BucketsPatch'Projection where
    parseJSON = parseJSONText "BucketsPatch'Projection"

instance ToJSON BucketsPatch'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsList'Projection
    = OLPFull
      -- ^ @full@
      -- Include all properties.
    | OLPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsList'Projection

instance FromText ObjectsList'Projection where
    fromText = \case
        "full" -> Just OLPFull
        "noAcl" -> Just OLPNoACL
        _ -> Nothing

instance ToText ObjectsList'Projection where
    toText = \case
        OLPFull -> "full"
        OLPNoACL -> "noAcl"

instance FromJSON ObjectsList'Projection where
    parseJSON = parseJSONText "ObjectsList'Projection"

instance ToJSON ObjectsList'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data BucketsUpdate'Projection
    = BUPFull
      -- ^ @full@
      -- Include all properties.
    | BUPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsUpdate'Projection

instance FromText BucketsUpdate'Projection where
    fromText = \case
        "full" -> Just BUPFull
        "noAcl" -> Just BUPNoACL
        _ -> Nothing

instance ToText BucketsUpdate'Projection where
    toText = \case
        BUPFull -> "full"
        BUPNoACL -> "noAcl"

instance FromJSON BucketsUpdate'Projection where
    parseJSON = parseJSONText "BucketsUpdate'Projection"

instance ToJSON BucketsUpdate'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data ObjectsUpdate'Projection
    = OUPFull
      -- ^ @full@
      -- Include all properties.
    | OUPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsUpdate'Projection

instance FromText ObjectsUpdate'Projection where
    fromText = \case
        "full" -> Just OUPFull
        "noAcl" -> Just OUPNoACL
        _ -> Nothing

instance ToText ObjectsUpdate'Projection where
    toText = \case
        OUPFull -> "full"
        OUPNoACL -> "noAcl"

instance FromJSON ObjectsUpdate'Projection where
    parseJSON = parseJSONText "ObjectsUpdate'Projection"

instance ToJSON ObjectsUpdate'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data BucketsList'Projection
    = BLPFull
      -- ^ @full@
      -- Include all properties.
    | BLPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsList'Projection

instance FromText BucketsList'Projection where
    fromText = \case
        "full" -> Just BLPFull
        "noAcl" -> Just BLPNoACL
        _ -> Nothing

instance ToText BucketsList'Projection where
    toText = \case
        BLPFull -> "full"
        BLPNoACL -> "noAcl"

instance FromJSON BucketsList'Projection where
    parseJSON = parseJSONText "BucketsList'Projection"

instance ToJSON BucketsList'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsGet'Projection
    = OGPFull
      -- ^ @full@
      -- Include all properties.
    | OGPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsGet'Projection

instance FromText ObjectsGet'Projection where
    fromText = \case
        "full" -> Just OGPFull
        "noAcl" -> Just OGPNoACL
        _ -> Nothing

instance ToText ObjectsGet'Projection where
    toText = \case
        OGPFull -> "full"
        OGPNoACL -> "noAcl"

instance FromJSON ObjectsGet'Projection where
    parseJSON = parseJSONText "ObjectsGet'Projection"

instance ToJSON ObjectsGet'Projection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data ObjectsPatch'Projection
    = OPPFull
      -- ^ @full@
      -- Include all properties.
    | OPPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsPatch'Projection

instance FromText ObjectsPatch'Projection where
    fromText = \case
        "full" -> Just OPPFull
        "noAcl" -> Just OPPNoACL
        _ -> Nothing

instance ToText ObjectsPatch'Projection where
    toText = \case
        OPPFull -> "full"
        OPPNoACL -> "noAcl"

instance FromJSON ObjectsPatch'Projection where
    parseJSON = parseJSONText "ObjectsPatch'Projection"

instance ToJSON ObjectsPatch'Projection where
    toJSON = toJSONText
