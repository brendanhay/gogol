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

instance FromHttpApiData ObjectsInsertProjection where
    parseQueryParam = \case
        "full" -> Right Full
        "noAcl" -> Right NoACL
        x -> Left ("Unable to parse ObjectsInsertProjection from: " <> x)

instance ToHttpApiData ObjectsInsertProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsUpdatePredefinedDefaultObjectACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right AuthenticatedRead
        "bucketOwnerFullControl" -> Right BucketOwnerFullControl
        "bucketOwnerRead" -> Right BucketOwnerRead
        "private" -> Right Private
        "projectPrivate" -> Right ProjectPrivate
        "publicRead" -> Right PublicRead
        x -> Left ("Unable to parse BucketsUpdatePredefinedDefaultObjectACL from: " <> x)

instance ToHttpApiData BucketsUpdatePredefinedDefaultObjectACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsComposeDestinationPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right OCDPAAuthenticatedRead
        "bucketOwnerFullControl" -> Right OCDPABucketOwnerFullControl
        "bucketOwnerRead" -> Right OCDPABucketOwnerRead
        "private" -> Right OCDPAPrivate
        "projectPrivate" -> Right OCDPAProjectPrivate
        "publicRead" -> Right OCDPAPublicRead
        x -> Left ("Unable to parse ObjectsComposeDestinationPredefinedACL from: " <> x)

instance ToHttpApiData ObjectsComposeDestinationPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData BucketsInsertPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right BIPAAuthenticatedRead
        "private" -> Right BIPAPrivate
        "projectPrivate" -> Right BIPAProjectPrivate
        "publicRead" -> Right BIPAPublicRead
        "publicReadWrite" -> Right BIPAPublicReadWrite
        x -> Left ("Unable to parse BucketsInsertPredefinedACL from: " <> x)

instance ToHttpApiData BucketsInsertPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsPatchPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right OPPAAuthenticatedRead
        "bucketOwnerFullControl" -> Right OPPABucketOwnerFullControl
        "bucketOwnerRead" -> Right OPPABucketOwnerRead
        "private" -> Right OPPAPrivate
        "projectPrivate" -> Right OPPAProjectPrivate
        "publicRead" -> Right OPPAPublicRead
        x -> Left ("Unable to parse ObjectsPatchPredefinedACL from: " <> x)

instance ToHttpApiData ObjectsPatchPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsRewriteDestinationPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right ORDPAAuthenticatedRead
        "bucketOwnerFullControl" -> Right ORDPABucketOwnerFullControl
        "bucketOwnerRead" -> Right ORDPABucketOwnerRead
        "private" -> Right ORDPAPrivate
        "projectPrivate" -> Right ORDPAProjectPrivate
        "publicRead" -> Right ORDPAPublicRead
        x -> Left ("Unable to parse ObjectsRewriteDestinationPredefinedACL from: " <> x)

instance ToHttpApiData ObjectsRewriteDestinationPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsWatchAllProjection where
    parseQueryParam = \case
        "full" -> Right OWAPFull
        "noAcl" -> Right OWAPNoACL
        x -> Left ("Unable to parse ObjectsWatchAllProjection from: " <> x)

instance ToHttpApiData ObjectsWatchAllProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsGetProjection where
    parseQueryParam = \case
        "full" -> Right BGPFull
        "noAcl" -> Right BGPNoACL
        x -> Left ("Unable to parse BucketsGetProjection from: " <> x)

instance ToHttpApiData BucketsGetProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsPatchProjection where
    parseQueryParam = \case
        "full" -> Right BPPFull
        "noAcl" -> Right BPPNoACL
        x -> Left ("Unable to parse BucketsPatchProjection from: " <> x)

instance ToHttpApiData BucketsPatchProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsUpdateProjection where
    parseQueryParam = \case
        "full" -> Right BUPFull
        "noAcl" -> Right BUPNoACL
        x -> Left ("Unable to parse BucketsUpdateProjection from: " <> x)

instance ToHttpApiData BucketsUpdateProjection where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsInsertPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right OIPAAuthenticatedRead
        "bucketOwnerFullControl" -> Right OIPABucketOwnerFullControl
        "bucketOwnerRead" -> Right OIPABucketOwnerRead
        "private" -> Right OIPAPrivate
        "projectPrivate" -> Right OIPAProjectPrivate
        "publicRead" -> Right OIPAPublicRead
        x -> Left ("Unable to parse ObjectsInsertPredefinedACL from: " <> x)

instance ToHttpApiData ObjectsInsertPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsListProjection where
    parseQueryParam = \case
        "full" -> Right OLPFull
        "noAcl" -> Right OLPNoACL
        x -> Left ("Unable to parse ObjectsListProjection from: " <> x)

instance ToHttpApiData ObjectsListProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsInsertPredefinedDefaultObjectACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right BIPDOAAuthenticatedRead
        "bucketOwnerFullControl" -> Right BIPDOABucketOwnerFullControl
        "bucketOwnerRead" -> Right BIPDOABucketOwnerRead
        "private" -> Right BIPDOAPrivate
        "projectPrivate" -> Right BIPDOAProjectPrivate
        "publicRead" -> Right BIPDOAPublicRead
        x -> Left ("Unable to parse BucketsInsertPredefinedDefaultObjectACL from: " <> x)

instance ToHttpApiData BucketsInsertPredefinedDefaultObjectACL where
    toQueryParam = \case
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

instance FromHttpApiData BucketsUpdatePredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right BUPAAuthenticatedRead
        "private" -> Right BUPAPrivate
        "projectPrivate" -> Right BUPAProjectPrivate
        "publicRead" -> Right BUPAPublicRead
        "publicReadWrite" -> Right BUPAPublicReadWrite
        x -> Left ("Unable to parse BucketsUpdatePredefinedACL from: " <> x)

instance ToHttpApiData BucketsUpdatePredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsCopyDestinationPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right OCDPACLAuthenticatedRead
        "bucketOwnerFullControl" -> Right OCDPACLBucketOwnerFullControl
        "bucketOwnerRead" -> Right OCDPACLBucketOwnerRead
        "private" -> Right OCDPACLPrivate
        "projectPrivate" -> Right OCDPACLProjectPrivate
        "publicRead" -> Right OCDPACLPublicRead
        x -> Left ("Unable to parse ObjectsCopyDestinationPredefinedACL from: " <> x)

instance ToHttpApiData ObjectsCopyDestinationPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsUpdatePredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right OUPAAuthenticatedRead
        "bucketOwnerFullControl" -> Right OUPABucketOwnerFullControl
        "bucketOwnerRead" -> Right OUPABucketOwnerRead
        "private" -> Right OUPAPrivate
        "projectPrivate" -> Right OUPAProjectPrivate
        "publicRead" -> Right OUPAPublicRead
        x -> Left ("Unable to parse ObjectsUpdatePredefinedACL from: " <> x)

instance ToHttpApiData ObjectsUpdatePredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData BucketsInsertProjection where
    parseQueryParam = \case
        "full" -> Right BIPFull
        "noAcl" -> Right BIPNoACL
        x -> Left ("Unable to parse BucketsInsertProjection from: " <> x)

instance ToHttpApiData BucketsInsertProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsListProjection where
    parseQueryParam = \case
        "full" -> Right BLPFull
        "noAcl" -> Right BLPNoACL
        x -> Left ("Unable to parse BucketsListProjection from: " <> x)

instance ToHttpApiData BucketsListProjection where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsUpdateProjection where
    parseQueryParam = \case
        "full" -> Right OUPFull
        "noAcl" -> Right OUPNoACL
        x -> Left ("Unable to parse ObjectsUpdateProjection from: " <> x)

instance ToHttpApiData ObjectsUpdateProjection where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsPatchProjection where
    parseQueryParam = \case
        "full" -> Right OPPFull
        "noAcl" -> Right OPPNoACL
        x -> Left ("Unable to parse ObjectsPatchProjection from: " <> x)

instance ToHttpApiData ObjectsPatchProjection where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsGetProjection where
    parseQueryParam = \case
        "full" -> Right OGPFull
        "noAcl" -> Right OGPNoACL
        x -> Left ("Unable to parse ObjectsGetProjection from: " <> x)

instance ToHttpApiData ObjectsGetProjection where
    toQueryParam = \case
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

instance FromHttpApiData BucketsPatchPredefinedDefaultObjectACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right BPPDOAAuthenticatedRead
        "bucketOwnerFullControl" -> Right BPPDOABucketOwnerFullControl
        "bucketOwnerRead" -> Right BPPDOABucketOwnerRead
        "private" -> Right BPPDOAPrivate
        "projectPrivate" -> Right BPPDOAProjectPrivate
        "publicRead" -> Right BPPDOAPublicRead
        x -> Left ("Unable to parse BucketsPatchPredefinedDefaultObjectACL from: " <> x)

instance ToHttpApiData BucketsPatchPredefinedDefaultObjectACL where
    toQueryParam = \case
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

instance FromHttpApiData BucketsPatchPredefinedACL where
    parseQueryParam = \case
        "authenticatedRead" -> Right BPPAAuthenticatedRead
        "private" -> Right BPPAPrivate
        "projectPrivate" -> Right BPPAProjectPrivate
        "publicRead" -> Right BPPAPublicRead
        "publicReadWrite" -> Right BPPAPublicReadWrite
        x -> Left ("Unable to parse BucketsPatchPredefinedACL from: " <> x)

instance ToHttpApiData BucketsPatchPredefinedACL where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsCopyProjection where
    parseQueryParam = \case
        "full" -> Right OCPFull
        "noAcl" -> Right OCPNoACL
        x -> Left ("Unable to parse ObjectsCopyProjection from: " <> x)

instance ToHttpApiData ObjectsCopyProjection where
    toQueryParam = \case
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

instance FromHttpApiData ObjectsRewriteProjection where
    parseQueryParam = \case
        "full" -> Right ORPFull
        "noAcl" -> Right ORPNoACL
        x -> Left ("Unable to parse ObjectsRewriteProjection from: " <> x)

instance ToHttpApiData ObjectsRewriteProjection where
    toQueryParam = \case
        ORPFull -> "full"
        ORPNoACL -> "noAcl"

instance FromJSON ObjectsRewriteProjection where
    parseJSON = parseJSONText "ObjectsRewriteProjection"

instance ToJSON ObjectsRewriteProjection where
    toJSON = toJSONText
