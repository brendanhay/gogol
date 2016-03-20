{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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

-- | Apply a predefined set of default object access controls to this bucket.
data BucketsUpdatePredefinedDefaultObjectACL
    = AuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | BucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | BucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | Private
      -- ^ @private@
      -- Object owner gets OWNER access.
    | ProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | PublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsUpdatePredefinedDefaultObjectACL

instance FromText BucketsUpdatePredefinedDefaultObjectACL where
    fromText = \case
        "authenticatedRead" -> Just AuthenticatedRead
        "bucketOwnerFullControl" -> Just BucketOwnerFullControl
        "bucketOwnerRead" -> Just BucketOwnerRead
        "private" -> Just Private
        "projectPrivate" -> Just ProjectPrivate
        "publicRead" -> Just PublicRead
        _ -> Nothing

instance ToText BucketsUpdatePredefinedDefaultObjectACL where
    toText = \case
        AuthenticatedRead -> "authenticatedRead"
        BucketOwnerFullControl -> "bucketOwnerFullControl"
        BucketOwnerRead -> "bucketOwnerRead"
        Private -> "private"
        ProjectPrivate -> "projectPrivate"
        PublicRead -> "publicRead"

instance FromJSON BucketsUpdatePredefinedDefaultObjectACL where
    parseJSON = parseJSONText "BucketsUpdatePredefinedDefaultObjectACL"

instance ToJSON BucketsUpdatePredefinedDefaultObjectACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to the destination object.
data ObjectsComposeDestinationPredefinedACL
    = OCDPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | OCDPABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | OCDPABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | OCDPAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | OCDPAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | OCDPAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsComposeDestinationPredefinedACL

instance FromText ObjectsComposeDestinationPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just OCDPAAuthenticatedRead
        "bucketOwnerFullControl" -> Just OCDPABucketOwnerFullControl
        "bucketOwnerRead" -> Just OCDPABucketOwnerRead
        "private" -> Just OCDPAPrivate
        "projectPrivate" -> Just OCDPAProjectPrivate
        "publicRead" -> Just OCDPAPublicRead
        _ -> Nothing

instance ToText ObjectsComposeDestinationPredefinedACL where
    toText = \case
        OCDPAAuthenticatedRead -> "authenticatedRead"
        OCDPABucketOwnerFullControl -> "bucketOwnerFullControl"
        OCDPABucketOwnerRead -> "bucketOwnerRead"
        OCDPAPrivate -> "private"
        OCDPAProjectPrivate -> "projectPrivate"
        OCDPAPublicRead -> "publicRead"

instance FromJSON ObjectsComposeDestinationPredefinedACL where
    parseJSON = parseJSONText "ObjectsComposeDestinationPredefinedACL"

instance ToJSON ObjectsComposeDestinationPredefinedACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to this bucket.
data BucketsInsertPredefinedACL
    = BIPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Project team owners get OWNER access, and allAuthenticatedUsers get
      -- READER access.
    | BIPAPrivate
      -- ^ @private@
      -- Project team owners get OWNER access.
    | BIPAProjectPrivate
      -- ^ @projectPrivate@
      -- Project team members get access according to their roles.
    | BIPAPublicRead
      -- ^ @publicRead@
      -- Project team owners get OWNER access, and allUsers get READER access.
    | BIPAPublicReadWrite
      -- ^ @publicReadWrite@
      -- Project team owners get OWNER access, and allUsers get WRITER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsInsertPredefinedACL

instance FromText BucketsInsertPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just BIPAAuthenticatedRead
        "private" -> Just BIPAPrivate
        "projectPrivate" -> Just BIPAProjectPrivate
        "publicRead" -> Just BIPAPublicRead
        "publicReadWrite" -> Just BIPAPublicReadWrite
        _ -> Nothing

instance ToText BucketsInsertPredefinedACL where
    toText = \case
        BIPAAuthenticatedRead -> "authenticatedRead"
        BIPAPrivate -> "private"
        BIPAProjectPrivate -> "projectPrivate"
        BIPAPublicRead -> "publicRead"
        BIPAPublicReadWrite -> "publicReadWrite"

instance FromJSON BucketsInsertPredefinedACL where
    parseJSON = parseJSONText "BucketsInsertPredefinedACL"

instance ToJSON BucketsInsertPredefinedACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to this object.
data ObjectsPatchPredefinedACL
    = OPPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | OPPABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | OPPABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | OPPAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | OPPAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | OPPAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsPatchPredefinedACL

instance FromText ObjectsPatchPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just OPPAAuthenticatedRead
        "bucketOwnerFullControl" -> Just OPPABucketOwnerFullControl
        "bucketOwnerRead" -> Just OPPABucketOwnerRead
        "private" -> Just OPPAPrivate
        "projectPrivate" -> Just OPPAProjectPrivate
        "publicRead" -> Just OPPAPublicRead
        _ -> Nothing

instance ToText ObjectsPatchPredefinedACL where
    toText = \case
        OPPAAuthenticatedRead -> "authenticatedRead"
        OPPABucketOwnerFullControl -> "bucketOwnerFullControl"
        OPPABucketOwnerRead -> "bucketOwnerRead"
        OPPAPrivate -> "private"
        OPPAProjectPrivate -> "projectPrivate"
        OPPAPublicRead -> "publicRead"

instance FromJSON ObjectsPatchPredefinedACL where
    parseJSON = parseJSONText "ObjectsPatchPredefinedACL"

instance ToJSON ObjectsPatchPredefinedACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to the destination object.
data ObjectsRewriteDestinationPredefinedACL
    = ORDPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | ORDPABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | ORDPABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | ORDPAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | ORDPAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | ORDPAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsRewriteDestinationPredefinedACL

instance FromText ObjectsRewriteDestinationPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just ORDPAAuthenticatedRead
        "bucketOwnerFullControl" -> Just ORDPABucketOwnerFullControl
        "bucketOwnerRead" -> Just ORDPABucketOwnerRead
        "private" -> Just ORDPAPrivate
        "projectPrivate" -> Just ORDPAProjectPrivate
        "publicRead" -> Just ORDPAPublicRead
        _ -> Nothing

instance ToText ObjectsRewriteDestinationPredefinedACL where
    toText = \case
        ORDPAAuthenticatedRead -> "authenticatedRead"
        ORDPABucketOwnerFullControl -> "bucketOwnerFullControl"
        ORDPABucketOwnerRead -> "bucketOwnerRead"
        ORDPAPrivate -> "private"
        ORDPAProjectPrivate -> "projectPrivate"
        ORDPAPublicRead -> "publicRead"

instance FromJSON ObjectsRewriteDestinationPredefinedACL where
    parseJSON = parseJSONText "ObjectsRewriteDestinationPredefinedACL"

instance ToJSON ObjectsRewriteDestinationPredefinedACL where
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

-- | Apply a predefined set of access controls to this object.
data ObjectsInsertPredefinedACL
    = OIPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | OIPABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | OIPABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | OIPAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | OIPAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | OIPAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsInsertPredefinedACL

instance FromText ObjectsInsertPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just OIPAAuthenticatedRead
        "bucketOwnerFullControl" -> Just OIPABucketOwnerFullControl
        "bucketOwnerRead" -> Just OIPABucketOwnerRead
        "private" -> Just OIPAPrivate
        "projectPrivate" -> Just OIPAProjectPrivate
        "publicRead" -> Just OIPAPublicRead
        _ -> Nothing

instance ToText ObjectsInsertPredefinedACL where
    toText = \case
        OIPAAuthenticatedRead -> "authenticatedRead"
        OIPABucketOwnerFullControl -> "bucketOwnerFullControl"
        OIPABucketOwnerRead -> "bucketOwnerRead"
        OIPAPrivate -> "private"
        OIPAProjectPrivate -> "projectPrivate"
        OIPAPublicRead -> "publicRead"

instance FromJSON ObjectsInsertPredefinedACL where
    parseJSON = parseJSONText "ObjectsInsertPredefinedACL"

instance ToJSON ObjectsInsertPredefinedACL where
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

-- | Apply a predefined set of default object access controls to this bucket.
data BucketsInsertPredefinedDefaultObjectACL
    = BIPDOAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | BIPDOABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | BIPDOABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | BIPDOAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | BIPDOAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | BIPDOAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsInsertPredefinedDefaultObjectACL

instance FromText BucketsInsertPredefinedDefaultObjectACL where
    fromText = \case
        "authenticatedRead" -> Just BIPDOAAuthenticatedRead
        "bucketOwnerFullControl" -> Just BIPDOABucketOwnerFullControl
        "bucketOwnerRead" -> Just BIPDOABucketOwnerRead
        "private" -> Just BIPDOAPrivate
        "projectPrivate" -> Just BIPDOAProjectPrivate
        "publicRead" -> Just BIPDOAPublicRead
        _ -> Nothing

instance ToText BucketsInsertPredefinedDefaultObjectACL where
    toText = \case
        BIPDOAAuthenticatedRead -> "authenticatedRead"
        BIPDOABucketOwnerFullControl -> "bucketOwnerFullControl"
        BIPDOABucketOwnerRead -> "bucketOwnerRead"
        BIPDOAPrivate -> "private"
        BIPDOAProjectPrivate -> "projectPrivate"
        BIPDOAPublicRead -> "publicRead"

instance FromJSON BucketsInsertPredefinedDefaultObjectACL where
    parseJSON = parseJSONText "BucketsInsertPredefinedDefaultObjectACL"

instance ToJSON BucketsInsertPredefinedDefaultObjectACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to this bucket.
data BucketsUpdatePredefinedACL
    = BUPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Project team owners get OWNER access, and allAuthenticatedUsers get
      -- READER access.
    | BUPAPrivate
      -- ^ @private@
      -- Project team owners get OWNER access.
    | BUPAProjectPrivate
      -- ^ @projectPrivate@
      -- Project team members get access according to their roles.
    | BUPAPublicRead
      -- ^ @publicRead@
      -- Project team owners get OWNER access, and allUsers get READER access.
    | BUPAPublicReadWrite
      -- ^ @publicReadWrite@
      -- Project team owners get OWNER access, and allUsers get WRITER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsUpdatePredefinedACL

instance FromText BucketsUpdatePredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just BUPAAuthenticatedRead
        "private" -> Just BUPAPrivate
        "projectPrivate" -> Just BUPAProjectPrivate
        "publicRead" -> Just BUPAPublicRead
        "publicReadWrite" -> Just BUPAPublicReadWrite
        _ -> Nothing

instance ToText BucketsUpdatePredefinedACL where
    toText = \case
        BUPAAuthenticatedRead -> "authenticatedRead"
        BUPAPrivate -> "private"
        BUPAProjectPrivate -> "projectPrivate"
        BUPAPublicRead -> "publicRead"
        BUPAPublicReadWrite -> "publicReadWrite"

instance FromJSON BucketsUpdatePredefinedACL where
    parseJSON = parseJSONText "BucketsUpdatePredefinedACL"

instance ToJSON BucketsUpdatePredefinedACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to the destination object.
data ObjectsCopyDestinationPredefinedACL
    = OCDPACLAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | OCDPACLBucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | OCDPACLBucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | OCDPACLPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | OCDPACLProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | OCDPACLPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsCopyDestinationPredefinedACL

instance FromText ObjectsCopyDestinationPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just OCDPACLAuthenticatedRead
        "bucketOwnerFullControl" -> Just OCDPACLBucketOwnerFullControl
        "bucketOwnerRead" -> Just OCDPACLBucketOwnerRead
        "private" -> Just OCDPACLPrivate
        "projectPrivate" -> Just OCDPACLProjectPrivate
        "publicRead" -> Just OCDPACLPublicRead
        _ -> Nothing

instance ToText ObjectsCopyDestinationPredefinedACL where
    toText = \case
        OCDPACLAuthenticatedRead -> "authenticatedRead"
        OCDPACLBucketOwnerFullControl -> "bucketOwnerFullControl"
        OCDPACLBucketOwnerRead -> "bucketOwnerRead"
        OCDPACLPrivate -> "private"
        OCDPACLProjectPrivate -> "projectPrivate"
        OCDPACLPublicRead -> "publicRead"

instance FromJSON ObjectsCopyDestinationPredefinedACL where
    parseJSON = parseJSONText "ObjectsCopyDestinationPredefinedACL"

instance ToJSON ObjectsCopyDestinationPredefinedACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to this object.
data ObjectsUpdatePredefinedACL
    = OUPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | OUPABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | OUPABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | OUPAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | OUPAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | OUPAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsUpdatePredefinedACL

instance FromText ObjectsUpdatePredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just OUPAAuthenticatedRead
        "bucketOwnerFullControl" -> Just OUPABucketOwnerFullControl
        "bucketOwnerRead" -> Just OUPABucketOwnerRead
        "private" -> Just OUPAPrivate
        "projectPrivate" -> Just OUPAProjectPrivate
        "publicRead" -> Just OUPAPublicRead
        _ -> Nothing

instance ToText ObjectsUpdatePredefinedACL where
    toText = \case
        OUPAAuthenticatedRead -> "authenticatedRead"
        OUPABucketOwnerFullControl -> "bucketOwnerFullControl"
        OUPABucketOwnerRead -> "bucketOwnerRead"
        OUPAPrivate -> "private"
        OUPAProjectPrivate -> "projectPrivate"
        OUPAPublicRead -> "publicRead"

instance FromJSON ObjectsUpdatePredefinedACL where
    parseJSON = parseJSONText "ObjectsUpdatePredefinedACL"

instance ToJSON ObjectsUpdatePredefinedACL where
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

-- | Apply a predefined set of default object access controls to this bucket.
data BucketsPatchPredefinedDefaultObjectACL
    = BPPDOAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Object owner gets OWNER access, and allAuthenticatedUsers get READER
      -- access.
    | BPPDOABucketOwnerFullControl
      -- ^ @bucketOwnerFullControl@
      -- Object owner gets OWNER access, and project team owners get OWNER
      -- access.
    | BPPDOABucketOwnerRead
      -- ^ @bucketOwnerRead@
      -- Object owner gets OWNER access, and project team owners get READER
      -- access.
    | BPPDOAPrivate
      -- ^ @private@
      -- Object owner gets OWNER access.
    | BPPDOAProjectPrivate
      -- ^ @projectPrivate@
      -- Object owner gets OWNER access, and project team members get access
      -- according to their roles.
    | BPPDOAPublicRead
      -- ^ @publicRead@
      -- Object owner gets OWNER access, and allUsers get READER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsPatchPredefinedDefaultObjectACL

instance FromText BucketsPatchPredefinedDefaultObjectACL where
    fromText = \case
        "authenticatedRead" -> Just BPPDOAAuthenticatedRead
        "bucketOwnerFullControl" -> Just BPPDOABucketOwnerFullControl
        "bucketOwnerRead" -> Just BPPDOABucketOwnerRead
        "private" -> Just BPPDOAPrivate
        "projectPrivate" -> Just BPPDOAProjectPrivate
        "publicRead" -> Just BPPDOAPublicRead
        _ -> Nothing

instance ToText BucketsPatchPredefinedDefaultObjectACL where
    toText = \case
        BPPDOAAuthenticatedRead -> "authenticatedRead"
        BPPDOABucketOwnerFullControl -> "bucketOwnerFullControl"
        BPPDOABucketOwnerRead -> "bucketOwnerRead"
        BPPDOAPrivate -> "private"
        BPPDOAProjectPrivate -> "projectPrivate"
        BPPDOAPublicRead -> "publicRead"

instance FromJSON BucketsPatchPredefinedDefaultObjectACL where
    parseJSON = parseJSONText "BucketsPatchPredefinedDefaultObjectACL"

instance ToJSON BucketsPatchPredefinedDefaultObjectACL where
    toJSON = toJSONText

-- | Apply a predefined set of access controls to this bucket.
data BucketsPatchPredefinedACL
    = BPPAAuthenticatedRead
      -- ^ @authenticatedRead@
      -- Project team owners get OWNER access, and allAuthenticatedUsers get
      -- READER access.
    | BPPAPrivate
      -- ^ @private@
      -- Project team owners get OWNER access.
    | BPPAProjectPrivate
      -- ^ @projectPrivate@
      -- Project team members get access according to their roles.
    | BPPAPublicRead
      -- ^ @publicRead@
      -- Project team owners get OWNER access, and allUsers get READER access.
    | BPPAPublicReadWrite
      -- ^ @publicReadWrite@
      -- Project team owners get OWNER access, and allUsers get WRITER access.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BucketsPatchPredefinedACL

instance FromText BucketsPatchPredefinedACL where
    fromText = \case
        "authenticatedRead" -> Just BPPAAuthenticatedRead
        "private" -> Just BPPAPrivate
        "projectPrivate" -> Just BPPAProjectPrivate
        "publicRead" -> Just BPPAPublicRead
        "publicReadWrite" -> Just BPPAPublicReadWrite
        _ -> Nothing

instance ToText BucketsPatchPredefinedACL where
    toText = \case
        BPPAAuthenticatedRead -> "authenticatedRead"
        BPPAPrivate -> "private"
        BPPAProjectPrivate -> "projectPrivate"
        BPPAPublicRead -> "publicRead"
        BPPAPublicReadWrite -> "publicReadWrite"

instance FromJSON BucketsPatchPredefinedACL where
    parseJSON = parseJSONText "BucketsPatchPredefinedACL"

instance ToJSON BucketsPatchPredefinedACL where
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

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
data ObjectsRewriteProjection
    = ORPFull
      -- ^ @full@
      -- Include all properties.
    | ORPNoACL
      -- ^ @noAcl@
      -- Omit the acl property.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectsRewriteProjection

instance FromText ObjectsRewriteProjection where
    fromText = \case
        "full" -> Just ORPFull
        "noAcl" -> Just ORPNoACL
        _ -> Nothing

instance ToText ObjectsRewriteProjection where
    toText = \case
        ORPFull -> "full"
        ORPNoACL -> "noAcl"

instance FromJSON ObjectsRewriteProjection where
    parseJSON = parseJSONText "ObjectsRewriteProjection"

instance ToJSON ObjectsRewriteProjection where
    toJSON = toJSONText
