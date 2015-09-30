{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapEngine.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapEngine.Types.Sum where

import           Network.Google.Prelude

-- | The processing status of this layer.
data LayerProcessingStatus
    = Complete
      -- ^ @complete@
    | Failed
      -- ^ @failed@
    | NotReady
      -- ^ @notReady@
    | Processing
      -- ^ @processing@
    | Ready
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerProcessingStatus

instance FromText LayerProcessingStatus where
    fromText = \case
        "complete" -> Just Complete
        "failed" -> Just Failed
        "notReady" -> Just NotReady
        "processing" -> Just Processing
        "ready" -> Just Ready
        _ -> Nothing

instance ToText LayerProcessingStatus where
    toText = \case
        Complete -> "complete"
        Failed -> "failed"
        NotReady -> "notReady"
        Processing -> "processing"
        Ready -> "ready"

instance FromJSON LayerProcessingStatus where
    parseJSON = parseJSONText "LayerProcessingStatus"

instance ToJSON LayerProcessingStatus where
    toJSON = toJSONText

-- | Name of the shape.
data ScaledShapeShape
    = Circle
      -- ^ @circle@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScaledShapeShape

instance FromText ScaledShapeShape where
    fromText = \case
        "circle" -> Just Circle
        _ -> Nothing

instance ToText ScaledShapeShape where
    toText = \case
        Circle -> "circle"

instance FromJSON ScaledShapeShape where
    parseJSON = parseJSONText "ScaledShapeShape"

instance ToJSON ScaledShapeShape where
    toJSON = toJSONText

data MapsengineRastersListProcessingStatus
    = MRLPSComplete
      -- ^ @complete@
      -- The raster has completed processing.
    | MRLPSFailed
      -- ^ @failed@
      -- The raster has failed processing.
    | MRLPSNotReady
      -- ^ @notReady@
      -- The raster is not ready for processing.
    | MRLPSProcessing
      -- ^ @processing@
      -- The raster is processing.
    | MRLPSReady
      -- ^ @ready@
      -- The raster is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineRastersListProcessingStatus

instance FromText MapsengineRastersListProcessingStatus where
    fromText = \case
        "complete" -> Just MRLPSComplete
        "failed" -> Just MRLPSFailed
        "notReady" -> Just MRLPSNotReady
        "processing" -> Just MRLPSProcessing
        "ready" -> Just MRLPSReady
        _ -> Nothing

instance ToText MapsengineRastersListProcessingStatus where
    toText = \case
        MRLPSComplete -> "complete"
        MRLPSFailed -> "failed"
        MRLPSNotReady -> "notReady"
        MRLPSProcessing -> "processing"
        MRLPSReady -> "ready"

instance FromJSON MapsengineRastersListProcessingStatus where
    parseJSON = parseJSONText "MapsengineRastersListProcessingStatus"

instance ToJSON MapsengineRastersListProcessingStatus where
    toJSON = toJSONText

-- | The processing status of this Raster.
data RasterProcessingStatus
    = RPSComplete
      -- ^ @complete@
    | RPSFailed
      -- ^ @failed@
    | RPSNotReady
      -- ^ @notReady@
    | RPSProcessing
      -- ^ @processing@
    | RPSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterProcessingStatus

instance FromText RasterProcessingStatus where
    fromText = \case
        "complete" -> Just RPSComplete
        "failed" -> Just RPSFailed
        "notReady" -> Just RPSNotReady
        "processing" -> Just RPSProcessing
        "ready" -> Just RPSReady
        _ -> Nothing

instance ToText RasterProcessingStatus where
    toText = \case
        RPSComplete -> "complete"
        RPSFailed -> "failed"
        RPSNotReady -> "notReady"
        RPSProcessing -> "processing"
        RPSReady -> "ready"

instance FromJSON RasterProcessingStatus where
    parseJSON = parseJSONText "RasterProcessingStatus"

instance ToJSON RasterProcessingStatus where
    toJSON = toJSONText

-- | The type of access granted to this user or group.
data PermissionRole
    = Owner
      -- ^ @owner@
    | Reader
      -- ^ @reader@
    | Viewer
      -- ^ @viewer@
    | Writer
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionRole

instance FromText PermissionRole where
    fromText = \case
        "owner" -> Just Owner
        "reader" -> Just Reader
        "viewer" -> Just Viewer
        "writer" -> Just Writer
        _ -> Nothing

instance ToText PermissionRole where
    toText = \case
        Owner -> "owner"
        Reader -> "reader"
        Viewer -> "viewer"
        Writer -> "writer"

instance FromJSON PermissionRole where
    parseJSON = parseJSONText "PermissionRole"

instance ToJSON PermissionRole where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiLineString.
data GeoJSONMultiLineStringType
    = MultiLineString
      -- ^ @MultiLineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONMultiLineStringType

instance FromText GeoJSONMultiLineStringType where
    fromText = \case
        "MultiLineString" -> Just MultiLineString
        _ -> Nothing

instance ToText GeoJSONMultiLineStringType where
    toText = \case
        MultiLineString -> "MultiLineString"

instance FromJSON GeoJSONMultiLineStringType where
    parseJSON = parseJSONText "GeoJSONMultiLineStringType"

instance ToJSON GeoJSONMultiLineStringType where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineRastersListRole
    = MRLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MRLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MRLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineRastersListRole

instance FromText MapsengineRastersListRole where
    fromText = \case
        "owner" -> Just MRLROwner
        "reader" -> Just MRLRReader
        "writer" -> Just MRLRWriter
        _ -> Nothing

instance ToText MapsengineRastersListRole where
    toText = \case
        MRLROwner -> "owner"
        MRLRReader -> "reader"
        MRLRWriter -> "writer"

instance FromJSON MapsengineRastersListRole where
    parseJSON = parseJSONText "MapsengineRastersListRole"

instance ToJSON MapsengineRastersListRole where
    toJSON = toJSONText

-- | The type of scaling function to use. Defaults to SQRT. Currently only
-- linear and square root scaling are supported.
data ScalingFunctionScalingType
    = Linear
      -- ^ @linear@
    | Sqrt
      -- ^ @sqrt@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScalingFunctionScalingType

instance FromText ScalingFunctionScalingType where
    fromText = \case
        "linear" -> Just Linear
        "sqrt" -> Just Sqrt
        _ -> Nothing

instance ToText ScalingFunctionScalingType where
    toText = \case
        Linear -> "linear"
        Sqrt -> "sqrt"

instance FromJSON ScalingFunctionScalingType where
    parseJSON = parseJSONText "ScalingFunctionScalingType"

instance ToJSON ScalingFunctionScalingType where
    toJSON = toJSONText

-- | The precision of acquisition time.
data AcquisitionTimePrecision
    = Day
      -- ^ @day@
    | Hour
      -- ^ @hour@
    | Minute
      -- ^ @minute@
    | Month
      -- ^ @month@
    | Second
      -- ^ @second@
    | Year
      -- ^ @year@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AcquisitionTimePrecision

instance FromText AcquisitionTimePrecision where
    fromText = \case
        "day" -> Just Day
        "hour" -> Just Hour
        "minute" -> Just Minute
        "month" -> Just Month
        "second" -> Just Second
        "year" -> Just Year
        _ -> Nothing

instance ToText AcquisitionTimePrecision where
    toText = \case
        Day -> "day"
        Hour -> "hour"
        Minute -> "minute"
        Month -> "month"
        Second -> "second"
        Year -> "year"

instance FromJSON AcquisitionTimePrecision where
    parseJSON = parseJSONText "AcquisitionTimePrecision"

instance ToJSON AcquisitionTimePrecision where
    toJSON = toJSONText

-- | Deprecated: The version parameter indicates which version of the layer
-- should be returned. When version is set to published, the published
-- version of the layer will be returned. Please use the
-- layers.getPublished endpoint instead.
data MapsengineLayersGetVersion
    = Draft
      -- ^ @draft@
      -- The draft version.
    | Published
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineLayersGetVersion

instance FromText MapsengineLayersGetVersion where
    fromText = \case
        "draft" -> Just Draft
        "published" -> Just Published
        _ -> Nothing

instance ToText MapsengineLayersGetVersion where
    toText = \case
        Draft -> "draft"
        Published -> "published"

instance FromJSON MapsengineLayersGetVersion where
    parseJSON = parseJSONText "MapsengineLayersGetVersion"

instance ToJSON MapsengineLayersGetVersion where
    toJSON = toJSONText

data MapsengineTablesGetVersion
    = MTGVDraft
      -- ^ @draft@
      -- The draft version.
    | MTGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineTablesGetVersion

instance FromText MapsengineTablesGetVersion where
    fromText = \case
        "draft" -> Just MTGVDraft
        "published" -> Just MTGVPublished
        _ -> Nothing

instance ToText MapsengineTablesGetVersion where
    toText = \case
        MTGVDraft -> "draft"
        MTGVPublished -> "published"

instance FromJSON MapsengineTablesGetVersion where
    parseJSON = parseJSONText "MapsengineTablesGetVersion"

instance ToJSON MapsengineTablesGetVersion where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineMapsListRole
    = MMLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MMLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MMLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineMapsListRole

instance FromText MapsengineMapsListRole where
    fromText = \case
        "owner" -> Just MMLROwner
        "reader" -> Just MMLRReader
        "writer" -> Just MMLRWriter
        _ -> Nothing

instance ToText MapsengineMapsListRole where
    toText = \case
        MMLROwner -> "owner"
        MMLRReader -> "reader"
        MMLRWriter -> "writer"

instance FromJSON MapsengineMapsListRole where
    parseJSON = parseJSONText "MapsengineMapsListRole"

instance ToJSON MapsengineMapsListRole where
    toJSON = toJSONText

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
data LayerLayerType
    = Image
      -- ^ @image@
    | Vector
      -- ^ @vector@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerLayerType

instance FromText LayerLayerType where
    fromText = \case
        "image" -> Just Image
        "vector" -> Just Vector
        _ -> Nothing

instance ToText LayerLayerType where
    toText = \case
        Image -> "image"
        Vector -> "vector"

instance FromJSON LayerLayerType where
    parseJSON = parseJSONText "LayerLayerType"

instance ToJSON LayerLayerType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiPolygon.
data GeoJSONMultiPolygonType
    = MultiPolygon
      -- ^ @MultiPolygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONMultiPolygonType

instance FromText GeoJSONMultiPolygonType where
    fromText = \case
        "MultiPolygon" -> Just MultiPolygon
        _ -> Nothing

instance ToText GeoJSONMultiPolygonType where
    toText = \case
        MultiPolygon -> "MultiPolygon"

instance FromJSON GeoJSONMultiPolygonType where
    parseJSON = parseJSONText "GeoJSONMultiPolygonType"

instance ToJSON GeoJSONMultiPolygonType where
    toJSON = toJSONText

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
data PublishedLayerLayerType
    = PLLTImage
      -- ^ @image@
    | PLLTVector
      -- ^ @vector@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishedLayerLayerType

instance FromText PublishedLayerLayerType where
    fromText = \case
        "image" -> Just PLLTImage
        "vector" -> Just PLLTVector
        _ -> Nothing

instance ToText PublishedLayerLayerType where
    toText = \case
        PLLTImage -> "image"
        PLLTVector -> "vector"

instance FromJSON PublishedLayerLayerType where
    parseJSON = parseJSONText "PublishedLayerLayerType"

instance ToJSON PublishedLayerLayerType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiPoint.
data GeoJSONMultiPointType
    = MultiPoint
      -- ^ @MultiPoint@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONMultiPointType

instance FromText GeoJSONMultiPointType where
    fromText = \case
        "MultiPoint" -> Just MultiPoint
        _ -> Nothing

instance ToText GeoJSONMultiPointType where
    toText = \case
        MultiPoint -> "MultiPoint"

instance FromJSON GeoJSONMultiPointType where
    parseJSON = parseJSONText "GeoJSONMultiPointType"

instance ToJSON GeoJSONMultiPointType where
    toJSON = toJSONText

-- | The processing status of this map. Map processing is automatically
-- started once a map becomes ready for processing.
data MapProcessingStatus
    = MPSComplete
      -- ^ @complete@
    | MPSFailed
      -- ^ @failed@
    | MPSNotReady
      -- ^ @notReady@
    | MPSProcessing
      -- ^ @processing@
    | MPSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapProcessingStatus

instance FromText MapProcessingStatus where
    fromText = \case
        "complete" -> Just MPSComplete
        "failed" -> Just MPSFailed
        "notReady" -> Just MPSNotReady
        "processing" -> Just MPSProcessing
        "ready" -> Just MPSReady
        _ -> Nothing

instance ToText MapProcessingStatus where
    toText = \case
        MPSComplete -> "complete"
        MPSFailed -> "failed"
        MPSNotReady -> "notReady"
        MPSProcessing -> "processing"
        MPSReady -> "ready"

instance FromJSON MapProcessingStatus where
    parseJSON = parseJSONText "MapProcessingStatus"

instance ToJSON MapProcessingStatus where
    toJSON = toJSONText

data MapsengineMapsListProcessingStatus
    = MMLPSComplete
      -- ^ @complete@
      -- The map has completed processing.
    | MMLPSFailed
      -- ^ @failed@
      -- The map has failed processing.
    | MMLPSNotReady
      -- ^ @notReady@
      -- The map is not ready for processing.
    | MMLPSProcessing
      -- ^ @processing@
      -- The map is processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineMapsListProcessingStatus

instance FromText MapsengineMapsListProcessingStatus where
    fromText = \case
        "complete" -> Just MMLPSComplete
        "failed" -> Just MMLPSFailed
        "notReady" -> Just MMLPSNotReady
        "processing" -> Just MMLPSProcessing
        _ -> Nothing

instance ToText MapsengineMapsListProcessingStatus where
    toText = \case
        MMLPSComplete -> "complete"
        MMLPSFailed -> "failed"
        MMLPSNotReady -> "notReady"
        MMLPSProcessing -> "processing"

instance FromJSON MapsengineMapsListProcessingStatus where
    parseJSON = parseJSONText "MapsengineMapsListProcessingStatus"

instance ToJSON MapsengineMapsListProcessingStatus where
    toJSON = toJSONText

-- | The account type.
data PermissionType
    = Anyone
      -- ^ @anyone@
    | Group
      -- ^ @group@
    | User
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionType

instance FromText PermissionType where
    fromText = \case
        "anyone" -> Just Anyone
        "group" -> Just Group
        "user" -> Just User
        _ -> Nothing

instance ToText PermissionType where
    toText = \case
        Anyone -> "anyone"
        Group -> "group"
        User -> "user"

instance FromJSON PermissionType where
    parseJSON = parseJSONText "PermissionType"

instance ToJSON PermissionType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonLineString.
data GeoJSONLineStringType
    = LineString
      -- ^ @LineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONLineStringType

instance FromText GeoJSONLineStringType where
    fromText = \case
        "LineString" -> Just LineString
        _ -> Nothing

instance ToText GeoJSONLineStringType where
    toText = \case
        LineString -> "LineString"

instance FromJSON GeoJSONLineStringType where
    parseJSON = parseJSONText "GeoJSONLineStringType"

instance ToJSON GeoJSONLineStringType where
    toJSON = toJSONText

-- | The type of the vector style. Currently, only displayRule is supported.
data VectorStyleType
    = DisplayRule
      -- ^ @displayRule@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VectorStyleType

instance FromText VectorStyleType where
    fromText = \case
        "displayRule" -> Just DisplayRule
        _ -> Nothing

instance ToText VectorStyleType where
    toText = \case
        DisplayRule -> "displayRule"

instance FromJSON VectorStyleType where
    parseJSON = parseJSONText "VectorStyleType"

instance ToJSON VectorStyleType where
    toJSON = toJSONText

-- | Identifies this object as a MapKmlLink.
data MapKmlLinkType
    = KmlLink
      -- ^ @kmlLink@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapKmlLinkType

instance FromText MapKmlLinkType where
    fromText = \case
        "kmlLink" -> Just KmlLink
        _ -> Nothing

instance ToText MapKmlLinkType where
    toText = \case
        KmlLink -> "kmlLink"

instance FromJSON MapKmlLinkType where
    parseJSON = parseJSONText "MapKmlLinkType"

instance ToJSON MapKmlLinkType where
    toJSON = toJSONText

-- | The publishing status of this layer.
data LayerPublishingStatus
    = LPSNotPublished
      -- ^ @notPublished@
    | LPSPublished
      -- ^ @published@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerPublishingStatus

instance FromText LayerPublishingStatus where
    fromText = \case
        "notPublished" -> Just LPSNotPublished
        "published" -> Just LPSPublished
        _ -> Nothing

instance ToText LayerPublishingStatus where
    toText = \case
        LPSNotPublished -> "notPublished"
        LPSPublished -> "published"

instance FromJSON LayerPublishingStatus where
    parseJSON = parseJSONText "LayerPublishingStatus"

instance ToJSON LayerPublishingStatus where
    toJSON = toJSONText

-- | Deprecated: The type of the datasources used to build this Layer. Note:
-- This has been replaced by layerType, but is still available for now to
-- maintain backward compatibility.
data LayerDatasourceType
    = LDTImage
      -- ^ @image@
    | LDTTable
      -- ^ @table@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerDatasourceType

instance FromText LayerDatasourceType where
    fromText = \case
        "image" -> Just LDTImage
        "table" -> Just LDTTable
        _ -> Nothing

instance ToText LayerDatasourceType where
    toText = \case
        LDTImage -> "image"
        LDTTable -> "table"

instance FromJSON LayerDatasourceType where
    parseJSON = parseJSONText "LayerDatasourceType"

instance ToJSON LayerDatasourceType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonGeometryCollection.
data GeoJSONGeometryCollectionType
    = GeometryCollection
      -- ^ @GeometryCollection@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONGeometryCollectionType

instance FromText GeoJSONGeometryCollectionType where
    fromText = \case
        "GeometryCollection" -> Just GeometryCollection
        _ -> Nothing

instance ToText GeoJSONGeometryCollectionType where
    toText = \case
        GeometryCollection -> "GeometryCollection"

instance FromJSON GeoJSONGeometryCollectionType where
    parseJSON = parseJSONText "GeoJSONGeometryCollectionType"

instance ToJSON GeoJSONGeometryCollectionType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonPoint.
data GeoJSONPointType
    = Point
      -- ^ @Point@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONPointType

instance FromText GeoJSONPointType where
    fromText = \case
        "Point" -> Just Point
        _ -> Nothing

instance ToText GeoJSONPointType where
    toText = \case
        Point -> "Point"

instance FromJSON GeoJSONPointType where
    parseJSON = parseJSONText "GeoJSONPointType"

instance ToJSON GeoJSONPointType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonPolygon.
data GeoJSONPolygonType
    = Polygon
      -- ^ @Polygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJSONPolygonType

instance FromText GeoJSONPolygonType where
    fromText = \case
        "Polygon" -> Just Polygon
        _ -> Nothing

instance ToText GeoJSONPolygonType where
    toText = \case
        Polygon -> "Polygon"

instance FromJSON GeoJSONPolygonType where
    parseJSON = parseJSONText "GeoJSONPolygonType"

instance ToJSON GeoJSONPolygonType where
    toJSON = toJSONText

data MapsengineLayersListProcessingStatus
    = MLLPSComplete
      -- ^ @complete@
      -- The layer has completed processing.
    | MLLPSFailed
      -- ^ @failed@
      -- The layer has failed processing.
    | MLLPSNotReady
      -- ^ @notReady@
      -- The layer is not ready for processing.
    | MLLPSProcessing
      -- ^ @processing@
      -- The layer is processing.
    | MLLPSReady
      -- ^ @ready@
      -- The layer is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineLayersListProcessingStatus

instance FromText MapsengineLayersListProcessingStatus where
    fromText = \case
        "complete" -> Just MLLPSComplete
        "failed" -> Just MLLPSFailed
        "notReady" -> Just MLLPSNotReady
        "processing" -> Just MLLPSProcessing
        "ready" -> Just MLLPSReady
        _ -> Nothing

instance ToText MapsengineLayersListProcessingStatus where
    toText = \case
        MLLPSComplete -> "complete"
        MLLPSFailed -> "failed"
        MLLPSNotReady -> "notReady"
        MLLPSProcessing -> "processing"
        MLLPSReady -> "ready"

instance FromJSON MapsengineLayersListProcessingStatus where
    parseJSON = parseJSONText "MapsengineLayersListProcessingStatus"

instance ToJSON MapsengineLayersListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineAssetsListRole
    = MALROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MALRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MALRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineAssetsListRole

instance FromText MapsengineAssetsListRole where
    fromText = \case
        "owner" -> Just MALROwner
        "reader" -> Just MALRReader
        "writer" -> Just MALRWriter
        _ -> Nothing

instance ToText MapsengineAssetsListRole where
    toText = \case
        MALROwner -> "owner"
        MALRReader -> "reader"
        MALRWriter -> "writer"

instance FromJSON MapsengineAssetsListRole where
    parseJSON = parseJSONText "MapsengineAssetsListRole"

instance ToJSON MapsengineAssetsListRole where
    toJSON = toJSONText

-- | Identifies this object as a MapLayer.
data MapLayerType
    = Layer
      -- ^ @layer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapLayerType

instance FromText MapLayerType where
    fromText = \case
        "layer" -> Just Layer
        _ -> Nothing

instance ToText MapLayerType where
    toText = \case
        Layer -> "layer"

instance FromJSON MapLayerType where
    parseJSON = parseJSONText "MapLayerType"

instance ToJSON MapLayerType where
    toJSON = toJSONText

-- | The table version to access. See Accessing Public Data for information.
data MapsengineTablesFeaturesGetVersion
    = MTFGVDraft
      -- ^ @draft@
      -- The draft version.
    | MTFGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineTablesFeaturesGetVersion

instance FromText MapsengineTablesFeaturesGetVersion where
    fromText = \case
        "draft" -> Just MTFGVDraft
        "published" -> Just MTFGVPublished
        _ -> Nothing

instance ToText MapsengineTablesFeaturesGetVersion where
    toText = \case
        MTFGVDraft -> "draft"
        MTFGVPublished -> "published"

instance FromJSON MapsengineTablesFeaturesGetVersion where
    parseJSON = parseJSONText "MapsengineTablesFeaturesGetVersion"

instance ToJSON MapsengineTablesFeaturesGetVersion where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineLayersListRole
    = MLLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MLLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MLLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineLayersListRole

instance FromText MapsengineLayersListRole where
    fromText = \case
        "owner" -> Just MLLROwner
        "reader" -> Just MLLRReader
        "writer" -> Just MLLRWriter
        _ -> Nothing

instance ToText MapsengineLayersListRole where
    toText = \case
        MLLROwner -> "owner"
        MLLRReader -> "reader"
        MLLRWriter -> "writer"

instance FromJSON MapsengineLayersListRole where
    parseJSON = parseJSONText "MapsengineLayersListRole"

instance ToJSON MapsengineLayersListRole where
    toJSON = toJSONText

-- | Identifies this object as a MapFolder.
data MapFolderType
    = Folder
      -- ^ @folder@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapFolderType

instance FromText MapFolderType where
    fromText = \case
        "folder" -> Just Folder
        _ -> Nothing

instance ToText MapFolderType where
    toText = \case
        Folder -> "folder"

instance FromJSON MapFolderType where
    parseJSON = parseJSONText "MapFolderType"

instance ToJSON MapFolderType where
    toJSON = toJSONText

-- | Font weight of the label, defaults to \'normal\'.
data LabelStyleFontWeight
    = Bold
      -- ^ @bold@
    | Normal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelStyleFontWeight

instance FromText LabelStyleFontWeight where
    fromText = \case
        "bold" -> Just Bold
        "normal" -> Just Normal
        _ -> Nothing

instance ToText LabelStyleFontWeight where
    toText = \case
        Bold -> "bold"
        Normal -> "normal"

instance FromJSON LabelStyleFontWeight where
    parseJSON = parseJSONText "LabelStyleFontWeight"

instance ToJSON LabelStyleFontWeight where
    toJSON = toJSONText

-- | The processing status of this RasterCollection.
data RasterCollectionProcessingStatus
    = RCPSComplete
      -- ^ @complete@
    | RCPSFailed
      -- ^ @failed@
    | RCPSNotReady
      -- ^ @notReady@
    | RCPSProcessing
      -- ^ @processing@
    | RCPSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionProcessingStatus

instance FromText RasterCollectionProcessingStatus where
    fromText = \case
        "complete" -> Just RCPSComplete
        "failed" -> Just RCPSFailed
        "notReady" -> Just RCPSNotReady
        "processing" -> Just RCPSProcessing
        "ready" -> Just RCPSReady
        _ -> Nothing

instance ToText RasterCollectionProcessingStatus where
    toText = \case
        RCPSComplete -> "complete"
        RCPSFailed -> "failed"
        RCPSNotReady -> "notReady"
        RCPSProcessing -> "processing"
        RCPSReady -> "ready"

instance FromJSON RasterCollectionProcessingStatus where
    parseJSON = parseJSONText "RasterCollectionProcessingStatus"

instance ToJSON RasterCollectionProcessingStatus where
    toJSON = toJSONText

-- | Deprecated: The version parameter indicates which version of the map
-- should be returned. When version is set to published, the published
-- version of the map will be returned. Please use the maps.getPublished
-- endpoint instead.
data MapsengineMapsGetVersion
    = MMGVDraft
      -- ^ @draft@
      -- The draft version.
    | MMGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineMapsGetVersion

instance FromText MapsengineMapsGetVersion where
    fromText = \case
        "draft" -> Just MMGVDraft
        "published" -> Just MMGVPublished
        _ -> Nothing

instance ToText MapsengineMapsGetVersion where
    toText = \case
        MMGVDraft -> "draft"
        MMGVPublished -> "published"

instance FromJSON MapsengineMapsGetVersion where
    parseJSON = parseJSONText "MapsengineMapsGetVersion"

instance ToJSON MapsengineMapsGetVersion where
    toJSON = toJSONText

data MapsengineRasterCollectionsListProcessingStatus
    = MRCLPSComplete
      -- ^ @complete@
      -- The raster collection has completed processing.
    | MRCLPSFailed
      -- ^ @failed@
      -- The raster collection has failed processing.
    | MRCLPSNotReady
      -- ^ @notReady@
      -- The raster collection is not ready for processing.
    | MRCLPSProcessing
      -- ^ @processing@
      -- The raster collection is processing.
    | MRCLPSReady
      -- ^ @ready@
      -- The raster collection is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineRasterCollectionsListProcessingStatus

instance FromText MapsengineRasterCollectionsListProcessingStatus where
    fromText = \case
        "complete" -> Just MRCLPSComplete
        "failed" -> Just MRCLPSFailed
        "notReady" -> Just MRCLPSNotReady
        "processing" -> Just MRCLPSProcessing
        "ready" -> Just MRCLPSReady
        _ -> Nothing

instance ToText MapsengineRasterCollectionsListProcessingStatus where
    toText = \case
        MRCLPSComplete -> "complete"
        MRCLPSFailed -> "failed"
        MRCLPSNotReady -> "notReady"
        MRCLPSProcessing -> "processing"
        MRCLPSReady -> "ready"

instance FromJSON MapsengineRasterCollectionsListProcessingStatus where
    parseJSON = parseJSONText "MapsengineRasterCollectionsListProcessingStatus"

instance ToJSON MapsengineRasterCollectionsListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineTablesListRole
    = MTLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MTLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MTLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineTablesListRole

instance FromText MapsengineTablesListRole where
    fromText = \case
        "owner" -> Just MTLROwner
        "reader" -> Just MTLRReader
        "writer" -> Just MTLRWriter
        _ -> Nothing

instance ToText MapsengineTablesListRole where
    toText = \case
        MTLROwner -> "owner"
        MTLRReader -> "reader"
        MTLRWriter -> "writer"

instance FromJSON MapsengineTablesListRole where
    parseJSON = parseJSONText "MapsengineTablesListRole"

instance ToJSON MapsengineTablesListRole where
    toJSON = toJSONText

-- | Font style of the label, defaults to \'normal\'.
data LabelStyleFontStyle
    = LSFSItalic
      -- ^ @italic@
    | LSFSNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelStyleFontStyle

instance FromText LabelStyleFontStyle where
    fromText = \case
        "italic" -> Just LSFSItalic
        "normal" -> Just LSFSNormal
        _ -> Nothing

instance ToText LabelStyleFontStyle where
    toText = \case
        LSFSItalic -> "italic"
        LSFSNormal -> "normal"

instance FromJSON LabelStyleFontStyle where
    parseJSON = parseJSONText "LabelStyleFontStyle"

instance ToJSON LabelStyleFontStyle where
    toJSON = toJSONText

-- | Operation used to evaluate the filter.
data FilterOperator
    = NotEqual
      -- ^ @!=@
    | Less
      -- ^ @<@
    | LessOrEqual
      -- ^ @<=@
    | Equal
      -- ^ @==@
    | Greater
      -- ^ @>@
    | GreaterEqual
      -- ^ @>=@
    | Contains
      -- ^ @contains@
    | EndsWith
      -- ^ @endsWith@
    | StartsWith
      -- ^ @startsWith@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilterOperator

instance FromText FilterOperator where
    fromText = \case
        "!=" -> Just NotEqual
        "<" -> Just Less
        "<=" -> Just LessOrEqual
        "==" -> Just Equal
        ">" -> Just Greater
        ">=" -> Just GreaterEqual
        "contains" -> Just Contains
        "endsWith" -> Just EndsWith
        "startsWith" -> Just StartsWith
        _ -> Nothing

instance ToText FilterOperator where
    toText = \case
        NotEqual -> "!="
        Less -> "<"
        LessOrEqual -> "<="
        Equal -> "=="
        Greater -> ">"
        GreaterEqual -> ">="
        Contains -> "contains"
        EndsWith -> "endsWith"
        StartsWith -> "startsWith"

instance FromJSON FilterOperator where
    parseJSON = parseJSONText "FilterOperator"

instance ToJSON FilterOperator where
    toJSON = toJSONText

-- | The type of asset. One of raster, rasterCollection, table, map, or
-- layer.
data AssetType
    = ATLayer
      -- ^ @layer@
    | ATMap
      -- ^ @map@
    | ATRaster
      -- ^ @raster@
    | ATRasterCollection
      -- ^ @rasterCollection@
    | ATTable
      -- ^ @table@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AssetType

instance FromText AssetType where
    fromText = \case
        "layer" -> Just ATLayer
        "map" -> Just ATMap
        "raster" -> Just ATRaster
        "rasterCollection" -> Just ATRasterCollection
        "table" -> Just ATTable
        _ -> Nothing

instance ToText AssetType where
    toText = \case
        ATLayer -> "layer"
        ATMap -> "map"
        ATRaster -> "raster"
        ATRasterCollection -> "rasterCollection"
        ATTable -> "table"

instance FromJSON AssetType where
    parseJSON = parseJSONText "AssetType"

instance ToJSON AssetType where
    toJSON = toJSONText

-- | The type of this Raster. Always \"image\" today.
data RasterRasterType
    = RRTImage
      -- ^ @image@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterRasterType

instance FromText RasterRasterType where
    fromText = \case
        "image" -> Just RRTImage
        _ -> Nothing

instance ToText RasterRasterType where
    toText = \case
        RRTImage -> "image"

instance FromJSON RasterRasterType where
    parseJSON = parseJSONText "RasterRasterType"

instance ToJSON RasterRasterType where
    toJSON = toJSONText

-- | The type of data stored in this column.
data TableColumnType
    = Datetime
      -- ^ @datetime@
    | Double
      -- ^ @double@
    | Integer
      -- ^ @integer@
    | LineStrings
      -- ^ @lineStrings@
    | MixedGeometry
      -- ^ @mixedGeometry@
    | Points
      -- ^ @points@
    | Polygons
      -- ^ @polygons@
    | String
      -- ^ @string@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TableColumnType

instance FromText TableColumnType where
    fromText = \case
        "datetime" -> Just Datetime
        "double" -> Just Double
        "integer" -> Just Integer
        "lineStrings" -> Just LineStrings
        "mixedGeometry" -> Just MixedGeometry
        "points" -> Just Points
        "polygons" -> Just Polygons
        "string" -> Just String
        _ -> Nothing

instance ToText TableColumnType where
    toText = \case
        Datetime -> "datetime"
        Double -> "double"
        Integer -> "integer"
        LineStrings -> "lineStrings"
        MixedGeometry -> "mixedGeometry"
        Points -> "points"
        Polygons -> "polygons"
        String -> "string"

instance FromJSON TableColumnType where
    parseJSON = parseJSONText "TableColumnType"

instance ToJSON TableColumnType where
    toJSON = toJSONText

-- | The table version to access. See Accessing Public Data for information.
data MapsengineTablesFeaturesListVersion
    = MTFLVDraft
      -- ^ @draft@
      -- The draft version.
    | MTFLVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineTablesFeaturesListVersion

instance FromText MapsengineTablesFeaturesListVersion where
    fromText = \case
        "draft" -> Just MTFLVDraft
        "published" -> Just MTFLVPublished
        _ -> Nothing

instance ToText MapsengineTablesFeaturesListVersion where
    toText = \case
        MTFLVDraft -> "draft"
        MTFLVPublished -> "published"

instance FromJSON MapsengineTablesFeaturesListVersion where
    parseJSON = parseJSONText "MapsengineTablesFeaturesListVersion"

instance ToJSON MapsengineTablesFeaturesListVersion where
    toJSON = toJSONText

-- | The type of rasters contained within this RasterCollection.
data RasterCollectionRasterType
    = RCRTImage
      -- ^ @image@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionRasterType

instance FromText RasterCollectionRasterType where
    fromText = \case
        "image" -> Just RCRTImage
        _ -> Nothing

instance ToText RasterCollectionRasterType where
    toText = \case
        RCRTImage -> "image"

instance FromJSON RasterCollectionRasterType where
    parseJSON = parseJSONText "RasterCollectionRasterType"

instance ToJSON RasterCollectionRasterType where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineRasterCollectionsListRole
    = MRCLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MRCLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MRCLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineRasterCollectionsListRole

instance FromText MapsengineRasterCollectionsListRole where
    fromText = \case
        "owner" -> Just MRCLROwner
        "reader" -> Just MRCLRReader
        "writer" -> Just MRCLRWriter
        _ -> Nothing

instance ToText MapsengineRasterCollectionsListRole where
    toText = \case
        MRCLROwner -> "owner"
        MRCLRReader -> "reader"
        MRCLRWriter -> "writer"

instance FromJSON MapsengineRasterCollectionsListRole where
    parseJSON = parseJSONText "MapsengineRasterCollectionsListRole"

instance ToJSON MapsengineRasterCollectionsListRole where
    toJSON = toJSONText

data MapsengineTablesListProcessingStatus
    = MTLPSComplete
      -- ^ @complete@
      -- The table has completed processing.
    | MTLPSFailed
      -- ^ @failed@
      -- The table has failed processing.
    | MTLPSNotReady
      -- ^ @notReady@
      -- The table is not ready for processing.
    | MTLPSProcessing
      -- ^ @processing@
      -- The table is processing.
    | MTLPSReady
      -- ^ @ready@
      -- The table is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineTablesListProcessingStatus

instance FromText MapsengineTablesListProcessingStatus where
    fromText = \case
        "complete" -> Just MTLPSComplete
        "failed" -> Just MTLPSFailed
        "notReady" -> Just MTLPSNotReady
        "processing" -> Just MTLPSProcessing
        "ready" -> Just MTLPSReady
        _ -> Nothing

instance ToText MapsengineTablesListProcessingStatus where
    toText = \case
        MTLPSComplete -> "complete"
        MTLPSFailed -> "failed"
        MTLPSNotReady -> "notReady"
        MTLPSProcessing -> "processing"
        MTLPSReady -> "ready"

instance FromJSON MapsengineTablesListProcessingStatus where
    parseJSON = parseJSONText "MapsengineTablesListProcessingStatus"

instance ToJSON MapsengineTablesListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsengineRasterCollectionsRastersListRole
    = MRCRLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MRCRLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MRCRLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsengineRasterCollectionsRastersListRole

instance FromText MapsengineRasterCollectionsRastersListRole where
    fromText = \case
        "owner" -> Just MRCRLROwner
        "reader" -> Just MRCRLRReader
        "writer" -> Just MRCRLRWriter
        _ -> Nothing

instance ToText MapsengineRasterCollectionsRastersListRole where
    toText = \case
        MRCRLROwner -> "owner"
        MRCRLRReader -> "reader"
        MRCRLRWriter -> "writer"

instance FromJSON MapsengineRasterCollectionsRastersListRole where
    parseJSON = parseJSONText "MapsengineRasterCollectionsRastersListRole"

instance ToJSON MapsengineRasterCollectionsRastersListRole where
    toJSON = toJSONText

-- | The upload status of the file.
data FileUploadStatus
    = FUSCanceled
      -- ^ @canceled@
    | FUSComplete
      -- ^ @complete@
    | FUSFailed
      -- ^ @failed@
    | FUSInProgress
      -- ^ @inProgress@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileUploadStatus

instance FromText FileUploadStatus where
    fromText = \case
        "canceled" -> Just FUSCanceled
        "complete" -> Just FUSComplete
        "failed" -> Just FUSFailed
        "inProgress" -> Just FUSInProgress
        _ -> Nothing

instance ToText FileUploadStatus where
    toText = \case
        FUSCanceled -> "canceled"
        FUSComplete -> "complete"
        FUSFailed -> "failed"
        FUSInProgress -> "inProgress"

instance FromJSON FileUploadStatus where
    parseJSON = parseJSONText "FileUploadStatus"

instance ToJSON FileUploadStatus where
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

-- | The publishing status of this map.
data MapPublishingStatus
    = MPSNotPublished
      -- ^ @notPublished@
    | MPSPublished
      -- ^ @published@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapPublishingStatus

instance FromText MapPublishingStatus where
    fromText = \case
        "notPublished" -> Just MPSNotPublished
        "published" -> Just MPSPublished
        _ -> Nothing

instance ToText MapPublishingStatus where
    toText = \case
        MPSNotPublished -> "notPublished"
        MPSPublished -> "published"

instance FromJSON MapPublishingStatus where
    parseJSON = parseJSONText "MapPublishingStatus"

instance ToJSON MapPublishingStatus where
    toJSON = toJSONText

-- | The processing status of this table.
data TableProcessingStatus
    = TPSComplete
      -- ^ @complete@
    | TPSFailed
      -- ^ @failed@
    | TPSNotReady
      -- ^ @notReady@
    | TPSProcessing
      -- ^ @processing@
    | TPSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TableProcessingStatus

instance FromText TableProcessingStatus where
    fromText = \case
        "complete" -> Just TPSComplete
        "failed" -> Just TPSFailed
        "notReady" -> Just TPSNotReady
        "processing" -> Just TPSProcessing
        "ready" -> Just TPSReady
        _ -> Nothing

instance ToText TableProcessingStatus where
    toText = \case
        TPSComplete -> "complete"
        TPSFailed -> "failed"
        TPSNotReady -> "notReady"
        TPSProcessing -> "processing"
        TPSReady -> "ready"

instance FromJSON TableProcessingStatus where
    parseJSON = parseJSONText "TableProcessingStatus"

instance ToJSON TableProcessingStatus where
    toJSON = toJSONText
