{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data ObjectsInsertProjection
    = Full
      -- ^ @full@
      -- Include all properties.
    | NoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsInsertProjection

instance FromText ObjectsInsertProjection where
    fromText = \case
        "full" -> Just Full
        "noAcl" -> Just NoACL
        _ -> Nothing

instance ToText ObjectsInsertProjection where
    toText = \case
        Full -> "full"
        NoACL -> "noAcl"

instance FromJSON ObjectsInsertProjection where
    parseJSON = parseJSONText "ObjectsInsertProjection"

instance ToJSON ObjectsInsertProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsWatchAllProjection
    = OWAPFull
      -- ^ @full@
      -- Include all properties.
    | OWAPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsWatchAllProjection

instance FromText ObjectsWatchAllProjection where
    fromText = \case
        "full" -> Just OWAPFull
        "noAcl" -> Just OWAPNoACL
        _ -> Nothing

instance ToText ObjectsWatchAllProjection where
    toText = \case
        OWAPFull -> "full"
        OWAPNoACL -> "noAcl"

instance FromJSON ObjectsWatchAllProjection where
    parseJSON = parseJSONText "ObjectsWatchAllProjection"

instance ToJSON ObjectsWatchAllProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data BucketsGetProjection
    = BGPFull
      -- ^ @full@
      -- Include all properties.
    | BGPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsGetProjection

instance FromText BucketsGetProjection where
    fromText = \case
        "full" -> Just BGPFull
        "noAcl" -> Just BGPNoACL
        _ -> Nothing

instance ToText BucketsGetProjection where
    toText = \case
        BGPFull -> "full"
        BGPNoACL -> "noAcl"

instance FromJSON BucketsGetProjection where
    parseJSON = parseJSONText "BucketsGetProjection"

instance ToJSON BucketsGetProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data BucketsPatchProjection
    = BPPFull
      -- ^ @full@
      -- Include all properties.
    | BPPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsPatchProjection

instance FromText BucketsPatchProjection where
    fromText = \case
        "full" -> Just BPPFull
        "noAcl" -> Just BPPNoACL
        _ -> Nothing

instance ToText BucketsPatchProjection where
    toText = \case
        BPPFull -> "full"
        BPPNoACL -> "noAcl"

instance FromJSON BucketsPatchProjection where
    parseJSON = parseJSONText "BucketsPatchProjection"

instance ToJSON BucketsPatchProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data BucketsUpdateProjection
    = BUPFull
      -- ^ @full@
      -- Include all properties.
    | BUPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsUpdateProjection

instance FromText BucketsUpdateProjection where
    fromText = \case
        "full" -> Just BUPFull
        "noAcl" -> Just BUPNoACL
        _ -> Nothing

instance ToText BucketsUpdateProjection where
    toText = \case
        BUPFull -> "full"
        BUPNoACL -> "noAcl"

instance FromJSON BucketsUpdateProjection where
    parseJSON = parseJSONText "BucketsUpdateProjection"

instance ToJSON BucketsUpdateProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsListProjection
    = OLPFull
      -- ^ @full@
      -- Include all properties.
    | OLPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsListProjection

instance FromText ObjectsListProjection where
    fromText = \case
        "full" -> Just OLPFull
        "noAcl" -> Just OLPNoACL
        _ -> Nothing

instance ToText ObjectsListProjection where
    toText = \case
        OLPFull -> "full"
        OLPNoACL -> "noAcl"

instance FromJSON ObjectsListProjection where
    parseJSON = parseJSONText "ObjectsListProjection"

instance ToJSON ObjectsListProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the bucket
-- resource specifies acl or defaultObjectAcl properties, when it defaults
-- to full.
data BucketsInsertProjection
    = BIPFull
      -- ^ @full@
      -- Include all properties.
    | BIPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsInsertProjection

instance FromText BucketsInsertProjection where
    fromText = \case
        "full" -> Just BIPFull
        "noAcl" -> Just BIPNoACL
        _ -> Nothing

instance ToText BucketsInsertProjection where
    toText = \case
        BIPFull -> "full"
        BIPNoACL -> "noAcl"

instance FromJSON BucketsInsertProjection where
    parseJSON = parseJSONText "BucketsInsertProjection"

instance ToJSON BucketsInsertProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data BucketsListProjection
    = BLPFull
      -- ^ @full@
      -- Include all properties.
    | BLPNoACL
      -- ^ @noAcl@
      -- Omit acl and defaultObjectAcl properties.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsListProjection

instance FromText BucketsListProjection where
    fromText = \case
        "full" -> Just BLPFull
        "noAcl" -> Just BLPNoACL
        _ -> Nothing

instance ToText BucketsListProjection where
    toText = \case
        BLPFull -> "full"
        BLPNoACL -> "noAcl"

instance FromJSON BucketsListProjection where
    parseJSON = parseJSONText "BucketsListProjection"

instance ToJSON BucketsListProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data ObjectsUpdateProjection
    = OUPFull
      -- ^ @full@
      -- Include all properties.
    | OUPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsUpdateProjection

instance FromText ObjectsUpdateProjection where
    fromText = \case
        "full" -> Just OUPFull
        "noAcl" -> Just OUPNoACL
        _ -> Nothing

instance ToText ObjectsUpdateProjection where
    toText = \case
        OUPFull -> "full"
        OUPNoACL -> "noAcl"

instance FromJSON ObjectsUpdateProjection where
    parseJSON = parseJSONText "ObjectsUpdateProjection"

instance ToJSON ObjectsUpdateProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to full.
data ObjectsPatchProjection
    = OPPFull
      -- ^ @full@
      -- Include all properties.
    | OPPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsPatchProjection

instance FromText ObjectsPatchProjection where
    fromText = \case
        "full" -> Just OPPFull
        "noAcl" -> Just OPPNoACL
        _ -> Nothing

instance ToText ObjectsPatchProjection where
    toText = \case
        OPPFull -> "full"
        OPPNoACL -> "noAcl"

instance FromJSON ObjectsPatchProjection where
    parseJSON = parseJSONText "ObjectsPatchProjection"

instance ToJSON ObjectsPatchProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl.
data ObjectsGetProjection
    = OGPFull
      -- ^ @full@
      -- Include all properties.
    | OGPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsGetProjection

instance FromText ObjectsGetProjection where
    fromText = \case
        "full" -> Just OGPFull
        "noAcl" -> Just OGPNoACL
        _ -> Nothing

instance ToText ObjectsGetProjection where
    toText = \case
        OGPFull -> "full"
        OGPNoACL -> "noAcl"

instance FromJSON ObjectsGetProjection where
    parseJSON = parseJSONText "ObjectsGetProjection"

instance ToJSON ObjectsGetProjection where
    toJSON = toJSONText

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data ObjectsCopyProjection
    = OCPFull
      -- ^ @full@
      -- Include all properties.
    | OCPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsCopyProjection

instance FromText ObjectsCopyProjection where
    fromText = \case
        "full" -> Just OCPFull
        "noAcl" -> Just OCPNoACL
        _ -> Nothing

instance ToText ObjectsCopyProjection where
    toText = \case
        OCPFull -> "full"
        OCPNoACL -> "noAcl"

instance FromJSON ObjectsCopyProjection where
    parseJSON = parseJSONText "ObjectsCopyProjection"

instance ToJSON ObjectsCopyProjection where
    toJSON = toJSONText
