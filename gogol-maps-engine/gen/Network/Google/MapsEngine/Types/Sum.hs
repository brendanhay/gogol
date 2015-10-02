{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsEngine.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsEngine.Types.Sum where

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

data MapsEngineRastersListProcessingStatus
    = MERLPSComplete
      -- ^ @complete@
      -- The raster has completed processing.
    | MERLPSFailed
      -- ^ @failed@
      -- The raster has failed processing.
    | MERLPSNotReady
      -- ^ @notReady@
      -- The raster is not ready for processing.
    | MERLPSProcessing
      -- ^ @processing@
      -- The raster is processing.
    | MERLPSReady
      -- ^ @ready@
      -- The raster is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineRastersListProcessingStatus

instance FromText MapsEngineRastersListProcessingStatus where
    fromText = \case
        "complete" -> Just MERLPSComplete
        "failed" -> Just MERLPSFailed
        "notReady" -> Just MERLPSNotReady
        "processing" -> Just MERLPSProcessing
        "ready" -> Just MERLPSReady
        _ -> Nothing

instance ToText MapsEngineRastersListProcessingStatus where
    toText = \case
        MERLPSComplete -> "complete"
        MERLPSFailed -> "failed"
        MERLPSNotReady -> "notReady"
        MERLPSProcessing -> "processing"
        MERLPSReady -> "ready"

instance FromJSON MapsEngineRastersListProcessingStatus where
    parseJSON = parseJSONText "MapsEngineRastersListProcessingStatus"

instance ToJSON MapsEngineRastersListProcessingStatus where
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
data MapsEngineRastersListRole
    = MERLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MERLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MERLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineRastersListRole

instance FromText MapsEngineRastersListRole where
    fromText = \case
        "owner" -> Just MERLROwner
        "reader" -> Just MERLRReader
        "writer" -> Just MERLRWriter
        _ -> Nothing

instance ToText MapsEngineRastersListRole where
    toText = \case
        MERLROwner -> "owner"
        MERLRReader -> "reader"
        MERLRWriter -> "writer"

instance FromJSON MapsEngineRastersListRole where
    parseJSON = parseJSONText "MapsEngineRastersListRole"

instance ToJSON MapsEngineRastersListRole where
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
data MapsEngineLayersGetVersion
    = Draft
      -- ^ @draft@
      -- The draft version.
    | Published
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineLayersGetVersion

instance FromText MapsEngineLayersGetVersion where
    fromText = \case
        "draft" -> Just Draft
        "published" -> Just Published
        _ -> Nothing

instance ToText MapsEngineLayersGetVersion where
    toText = \case
        Draft -> "draft"
        Published -> "published"

instance FromJSON MapsEngineLayersGetVersion where
    parseJSON = parseJSONText "MapsEngineLayersGetVersion"

instance ToJSON MapsEngineLayersGetVersion where
    toJSON = toJSONText

data MapsEngineTablesGetVersion
    = METGVDraft
      -- ^ @draft@
      -- The draft version.
    | METGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineTablesGetVersion

instance FromText MapsEngineTablesGetVersion where
    fromText = \case
        "draft" -> Just METGVDraft
        "published" -> Just METGVPublished
        _ -> Nothing

instance ToText MapsEngineTablesGetVersion where
    toText = \case
        METGVDraft -> "draft"
        METGVPublished -> "published"

instance FromJSON MapsEngineTablesGetVersion where
    parseJSON = parseJSONText "MapsEngineTablesGetVersion"

instance ToJSON MapsEngineTablesGetVersion where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsEngineMapsListRole
    = MEMLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MEMLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MEMLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineMapsListRole

instance FromText MapsEngineMapsListRole where
    fromText = \case
        "owner" -> Just MEMLROwner
        "reader" -> Just MEMLRReader
        "writer" -> Just MEMLRWriter
        _ -> Nothing

instance ToText MapsEngineMapsListRole where
    toText = \case
        MEMLROwner -> "owner"
        MEMLRReader -> "reader"
        MEMLRWriter -> "writer"

instance FromJSON MapsEngineMapsListRole where
    parseJSON = parseJSONText "MapsEngineMapsListRole"

instance ToJSON MapsEngineMapsListRole where
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

data MapsEngineMapsListProcessingStatus
    = MEMLPSComplete
      -- ^ @complete@
      -- The map has completed processing.
    | MEMLPSFailed
      -- ^ @failed@
      -- The map has failed processing.
    | MEMLPSNotReady
      -- ^ @notReady@
      -- The map is not ready for processing.
    | MEMLPSProcessing
      -- ^ @processing@
      -- The map is processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineMapsListProcessingStatus

instance FromText MapsEngineMapsListProcessingStatus where
    fromText = \case
        "complete" -> Just MEMLPSComplete
        "failed" -> Just MEMLPSFailed
        "notReady" -> Just MEMLPSNotReady
        "processing" -> Just MEMLPSProcessing
        _ -> Nothing

instance ToText MapsEngineMapsListProcessingStatus where
    toText = \case
        MEMLPSComplete -> "complete"
        MEMLPSFailed -> "failed"
        MEMLPSNotReady -> "notReady"
        MEMLPSProcessing -> "processing"

instance FromJSON MapsEngineMapsListProcessingStatus where
    parseJSON = parseJSONText "MapsEngineMapsListProcessingStatus"

instance ToJSON MapsEngineMapsListProcessingStatus where
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
    = VSTDisplayRule
      -- ^ @displayRule@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VectorStyleType

instance FromText VectorStyleType where
    fromText = \case
        "displayRule" -> Just VSTDisplayRule
        _ -> Nothing

instance ToText VectorStyleType where
    toText = \case
        VSTDisplayRule -> "displayRule"

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

data MapsEngineLayersListProcessingStatus
    = MELLPSComplete
      -- ^ @complete@
      -- The layer has completed processing.
    | MELLPSFailed
      -- ^ @failed@
      -- The layer has failed processing.
    | MELLPSNotReady
      -- ^ @notReady@
      -- The layer is not ready for processing.
    | MELLPSProcessing
      -- ^ @processing@
      -- The layer is processing.
    | MELLPSReady
      -- ^ @ready@
      -- The layer is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineLayersListProcessingStatus

instance FromText MapsEngineLayersListProcessingStatus where
    fromText = \case
        "complete" -> Just MELLPSComplete
        "failed" -> Just MELLPSFailed
        "notReady" -> Just MELLPSNotReady
        "processing" -> Just MELLPSProcessing
        "ready" -> Just MELLPSReady
        _ -> Nothing

instance ToText MapsEngineLayersListProcessingStatus where
    toText = \case
        MELLPSComplete -> "complete"
        MELLPSFailed -> "failed"
        MELLPSNotReady -> "notReady"
        MELLPSProcessing -> "processing"
        MELLPSReady -> "ready"

instance FromJSON MapsEngineLayersListProcessingStatus where
    parseJSON = parseJSONText "MapsEngineLayersListProcessingStatus"

instance ToJSON MapsEngineLayersListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsEngineAssetsListRole
    = MEALROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MEALRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MEALRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineAssetsListRole

instance FromText MapsEngineAssetsListRole where
    fromText = \case
        "owner" -> Just MEALROwner
        "reader" -> Just MEALRReader
        "writer" -> Just MEALRWriter
        _ -> Nothing

instance ToText MapsEngineAssetsListRole where
    toText = \case
        MEALROwner -> "owner"
        MEALRReader -> "reader"
        MEALRWriter -> "writer"

instance FromJSON MapsEngineAssetsListRole where
    parseJSON = parseJSONText "MapsEngineAssetsListRole"

instance ToJSON MapsEngineAssetsListRole where
    toJSON = toJSONText

-- | Identifies this object as a MapLayer.
data MapLayerType
    = MLTLayer
      -- ^ @layer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapLayerType

instance FromText MapLayerType where
    fromText = \case
        "layer" -> Just MLTLayer
        _ -> Nothing

instance ToText MapLayerType where
    toText = \case
        MLTLayer -> "layer"

instance FromJSON MapLayerType where
    parseJSON = parseJSONText "MapLayerType"

instance ToJSON MapLayerType where
    toJSON = toJSONText

-- | The table version to access. See Accessing Public Data for information.
data MapsEngineTablesFeaturesGetVersion
    = METFGVDraft
      -- ^ @draft@
      -- The draft version.
    | METFGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineTablesFeaturesGetVersion

instance FromText MapsEngineTablesFeaturesGetVersion where
    fromText = \case
        "draft" -> Just METFGVDraft
        "published" -> Just METFGVPublished
        _ -> Nothing

instance ToText MapsEngineTablesFeaturesGetVersion where
    toText = \case
        METFGVDraft -> "draft"
        METFGVPublished -> "published"

instance FromJSON MapsEngineTablesFeaturesGetVersion where
    parseJSON = parseJSONText "MapsEngineTablesFeaturesGetVersion"

instance ToJSON MapsEngineTablesFeaturesGetVersion where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsEngineLayersListRole
    = MELLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MELLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MELLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineLayersListRole

instance FromText MapsEngineLayersListRole where
    fromText = \case
        "owner" -> Just MELLROwner
        "reader" -> Just MELLRReader
        "writer" -> Just MELLRWriter
        _ -> Nothing

instance ToText MapsEngineLayersListRole where
    toText = \case
        MELLROwner -> "owner"
        MELLRReader -> "reader"
        MELLRWriter -> "writer"

instance FromJSON MapsEngineLayersListRole where
    parseJSON = parseJSONText "MapsEngineLayersListRole"

instance ToJSON MapsEngineLayersListRole where
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
data MapsEngineMapsGetVersion
    = MEMGVDraft
      -- ^ @draft@
      -- The draft version.
    | MEMGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineMapsGetVersion

instance FromText MapsEngineMapsGetVersion where
    fromText = \case
        "draft" -> Just MEMGVDraft
        "published" -> Just MEMGVPublished
        _ -> Nothing

instance ToText MapsEngineMapsGetVersion where
    toText = \case
        MEMGVDraft -> "draft"
        MEMGVPublished -> "published"

instance FromJSON MapsEngineMapsGetVersion where
    parseJSON = parseJSONText "MapsEngineMapsGetVersion"

instance ToJSON MapsEngineMapsGetVersion where
    toJSON = toJSONText

data MapsEngineRasterCollectionsListProcessingStatus
    = MERCLPSComplete
      -- ^ @complete@
      -- The raster collection has completed processing.
    | MERCLPSFailed
      -- ^ @failed@
      -- The raster collection has failed processing.
    | MERCLPSNotReady
      -- ^ @notReady@
      -- The raster collection is not ready for processing.
    | MERCLPSProcessing
      -- ^ @processing@
      -- The raster collection is processing.
    | MERCLPSReady
      -- ^ @ready@
      -- The raster collection is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineRasterCollectionsListProcessingStatus

instance FromText MapsEngineRasterCollectionsListProcessingStatus where
    fromText = \case
        "complete" -> Just MERCLPSComplete
        "failed" -> Just MERCLPSFailed
        "notReady" -> Just MERCLPSNotReady
        "processing" -> Just MERCLPSProcessing
        "ready" -> Just MERCLPSReady
        _ -> Nothing

instance ToText MapsEngineRasterCollectionsListProcessingStatus where
    toText = \case
        MERCLPSComplete -> "complete"
        MERCLPSFailed -> "failed"
        MERCLPSNotReady -> "notReady"
        MERCLPSProcessing -> "processing"
        MERCLPSReady -> "ready"

instance FromJSON MapsEngineRasterCollectionsListProcessingStatus where
    parseJSON = parseJSONText "MapsEngineRasterCollectionsListProcessingStatus"

instance ToJSON MapsEngineRasterCollectionsListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsEngineTablesListRole
    = METLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | METLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | METLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineTablesListRole

instance FromText MapsEngineTablesListRole where
    fromText = \case
        "owner" -> Just METLROwner
        "reader" -> Just METLRReader
        "writer" -> Just METLRWriter
        _ -> Nothing

instance ToText MapsEngineTablesListRole where
    toText = \case
        METLROwner -> "owner"
        METLRReader -> "reader"
        METLRWriter -> "writer"

instance FromJSON MapsEngineTablesListRole where
    parseJSON = parseJSONText "MapsEngineTablesListRole"

instance ToJSON MapsEngineTablesListRole where
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
data MapsEngineTablesFeaturesListVersion
    = METFLVDraft
      -- ^ @draft@
      -- The draft version.
    | METFLVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineTablesFeaturesListVersion

instance FromText MapsEngineTablesFeaturesListVersion where
    fromText = \case
        "draft" -> Just METFLVDraft
        "published" -> Just METFLVPublished
        _ -> Nothing

instance ToText MapsEngineTablesFeaturesListVersion where
    toText = \case
        METFLVDraft -> "draft"
        METFLVPublished -> "published"

instance FromJSON MapsEngineTablesFeaturesListVersion where
    parseJSON = parseJSONText "MapsEngineTablesFeaturesListVersion"

instance ToJSON MapsEngineTablesFeaturesListVersion where
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
data MapsEngineRasterCollectionsListRole
    = MERCLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MERCLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MERCLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineRasterCollectionsListRole

instance FromText MapsEngineRasterCollectionsListRole where
    fromText = \case
        "owner" -> Just MERCLROwner
        "reader" -> Just MERCLRReader
        "writer" -> Just MERCLRWriter
        _ -> Nothing

instance ToText MapsEngineRasterCollectionsListRole where
    toText = \case
        MERCLROwner -> "owner"
        MERCLRReader -> "reader"
        MERCLRWriter -> "writer"

instance FromJSON MapsEngineRasterCollectionsListRole where
    parseJSON = parseJSONText "MapsEngineRasterCollectionsListRole"

instance ToJSON MapsEngineRasterCollectionsListRole where
    toJSON = toJSONText

data MapsEngineTablesListProcessingStatus
    = METLPSComplete
      -- ^ @complete@
      -- The table has completed processing.
    | METLPSFailed
      -- ^ @failed@
      -- The table has failed processing.
    | METLPSNotReady
      -- ^ @notReady@
      -- The table is not ready for processing.
    | METLPSProcessing
      -- ^ @processing@
      -- The table is processing.
    | METLPSReady
      -- ^ @ready@
      -- The table is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineTablesListProcessingStatus

instance FromText MapsEngineTablesListProcessingStatus where
    fromText = \case
        "complete" -> Just METLPSComplete
        "failed" -> Just METLPSFailed
        "notReady" -> Just METLPSNotReady
        "processing" -> Just METLPSProcessing
        "ready" -> Just METLPSReady
        _ -> Nothing

instance ToText MapsEngineTablesListProcessingStatus where
    toText = \case
        METLPSComplete -> "complete"
        METLPSFailed -> "failed"
        METLPSNotReady -> "notReady"
        METLPSProcessing -> "processing"
        METLPSReady -> "ready"

instance FromJSON MapsEngineTablesListProcessingStatus where
    parseJSON = parseJSONText "MapsEngineTablesListProcessingStatus"

instance ToJSON MapsEngineTablesListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsEngineRasterCollectionsRastersListRole
    = MERCRLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MERCRLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MERCRLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsEngineRasterCollectionsRastersListRole

instance FromText MapsEngineRasterCollectionsRastersListRole where
    fromText = \case
        "owner" -> Just MERCRLROwner
        "reader" -> Just MERCRLRReader
        "writer" -> Just MERCRLRWriter
        _ -> Nothing

instance ToText MapsEngineRasterCollectionsRastersListRole where
    toText = \case
        MERCRLROwner -> "owner"
        MERCRLRReader -> "reader"
        MERCRLRWriter -> "writer"

instance FromJSON MapsEngineRasterCollectionsRastersListRole where
    parseJSON = parseJSONText "MapsEngineRasterCollectionsRastersListRole"

instance ToJSON MapsEngineRasterCollectionsRastersListRole where
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
