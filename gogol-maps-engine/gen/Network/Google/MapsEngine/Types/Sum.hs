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

-- | The processing status of this Raster.
data RasterProcessingStatus
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

instance Hashable RasterProcessingStatus

instance FromText RasterProcessingStatus where
    fromText = \case
        "complete" -> Just Complete
        "failed" -> Just Failed
        "notReady" -> Just NotReady
        "processing" -> Just Processing
        "ready" -> Just Ready
        _ -> Nothing

instance ToText RasterProcessingStatus where
    toText = \case
        Complete -> "complete"
        Failed -> "failed"
        NotReady -> "notReady"
        Processing -> "processing"
        Ready -> "ready"

instance FromJSON RasterProcessingStatus where
    parseJSON = parseJSONText "RasterProcessingStatus"

instance ToJSON RasterProcessingStatus where
    toJSON = toJSONText

-- | The processing status of this layer.
data LayerProcessingStatus
    = LPSComplete
      -- ^ @complete@
    | LPSFailed
      -- ^ @failed@
    | LPSNotReady
      -- ^ @notReady@
    | LPSProcessing
      -- ^ @processing@
    | LPSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerProcessingStatus

instance FromText LayerProcessingStatus where
    fromText = \case
        "complete" -> Just LPSComplete
        "failed" -> Just LPSFailed
        "notReady" -> Just LPSNotReady
        "processing" -> Just LPSProcessing
        "ready" -> Just LPSReady
        _ -> Nothing

instance ToText LayerProcessingStatus where
    toText = \case
        LPSComplete -> "complete"
        LPSFailed -> "failed"
        LPSNotReady -> "notReady"
        LPSProcessing -> "processing"
        LPSReady -> "ready"

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

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data AssetsListRole
    = ALROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | ALRReader
      -- ^ @reader@
      -- The user can read the asset.
    | ALRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AssetsListRole

instance FromText AssetsListRole where
    fromText = \case
        "owner" -> Just ALROwner
        "reader" -> Just ALRReader
        "writer" -> Just ALRWriter
        _ -> Nothing

instance ToText AssetsListRole where
    toText = \case
        ALROwner -> "owner"
        ALRReader -> "reader"
        ALRWriter -> "writer"

instance FromJSON AssetsListRole where
    parseJSON = parseJSONText "AssetsListRole"

instance ToJSON AssetsListRole where
    toJSON = toJSONText

data RastersListProcessingStatus
    = RLPSComplete
      -- ^ @complete@
      -- The raster has completed processing.
    | RLPSFailed
      -- ^ @failed@
      -- The raster has failed processing.
    | RLPSNotReady
      -- ^ @notReady@
      -- The raster is not ready for processing.
    | RLPSProcessing
      -- ^ @processing@
      -- The raster is processing.
    | RLPSReady
      -- ^ @ready@
      -- The raster is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RastersListProcessingStatus

instance FromText RastersListProcessingStatus where
    fromText = \case
        "complete" -> Just RLPSComplete
        "failed" -> Just RLPSFailed
        "notReady" -> Just RLPSNotReady
        "processing" -> Just RLPSProcessing
        "ready" -> Just RLPSReady
        _ -> Nothing

instance ToText RastersListProcessingStatus where
    toText = \case
        RLPSComplete -> "complete"
        RLPSFailed -> "failed"
        RLPSNotReady -> "notReady"
        RLPSProcessing -> "processing"
        RLPSReady -> "ready"

instance FromJSON RastersListProcessingStatus where
    parseJSON = parseJSONText "RastersListProcessingStatus"

instance ToJSON RastersListProcessingStatus where
    toJSON = toJSONText

data LayersListProcessingStatus
    = LLPSComplete
      -- ^ @complete@
      -- The layer has completed processing.
    | LLPSFailed
      -- ^ @failed@
      -- The layer has failed processing.
    | LLPSNotReady
      -- ^ @notReady@
      -- The layer is not ready for processing.
    | LLPSProcessing
      -- ^ @processing@
      -- The layer is processing.
    | LLPSReady
      -- ^ @ready@
      -- The layer is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayersListProcessingStatus

instance FromText LayersListProcessingStatus where
    fromText = \case
        "complete" -> Just LLPSComplete
        "failed" -> Just LLPSFailed
        "notReady" -> Just LLPSNotReady
        "processing" -> Just LLPSProcessing
        "ready" -> Just LLPSReady
        _ -> Nothing

instance ToText LayersListProcessingStatus where
    toText = \case
        LLPSComplete -> "complete"
        LLPSFailed -> "failed"
        LLPSNotReady -> "notReady"
        LLPSProcessing -> "processing"
        LLPSReady -> "ready"

instance FromJSON LayersListProcessingStatus where
    parseJSON = parseJSONText "LayersListProcessingStatus"

instance ToJSON LayersListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data RasterCollectionsRastersListRole
    = RCRLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | RCRLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | RCRLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionsRastersListRole

instance FromText RasterCollectionsRastersListRole where
    fromText = \case
        "owner" -> Just RCRLROwner
        "reader" -> Just RCRLRReader
        "writer" -> Just RCRLRWriter
        _ -> Nothing

instance ToText RasterCollectionsRastersListRole where
    toText = \case
        RCRLROwner -> "owner"
        RCRLRReader -> "reader"
        RCRLRWriter -> "writer"

instance FromJSON RasterCollectionsRastersListRole where
    parseJSON = parseJSONText "RasterCollectionsRastersListRole"

instance ToJSON RasterCollectionsRastersListRole where
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

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
data PublishedLayerLayerType
    = Image
      -- ^ @image@
    | Vector
      -- ^ @vector@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PublishedLayerLayerType

instance FromText PublishedLayerLayerType where
    fromText = \case
        "image" -> Just Image
        "vector" -> Just Vector
        _ -> Nothing

instance ToText PublishedLayerLayerType where
    toText = \case
        Image -> "image"
        Vector -> "vector"

instance FromJSON PublishedLayerLayerType where
    parseJSON = parseJSONText "PublishedLayerLayerType"

instance ToJSON PublishedLayerLayerType where
    toJSON = toJSONText

data TablesListProcessingStatus
    = TLPSComplete
      -- ^ @complete@
      -- The table has completed processing.
    | TLPSFailed
      -- ^ @failed@
      -- The table has failed processing.
    | TLPSNotReady
      -- ^ @notReady@
      -- The table is not ready for processing.
    | TLPSProcessing
      -- ^ @processing@
      -- The table is processing.
    | TLPSReady
      -- ^ @ready@
      -- The table is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TablesListProcessingStatus

instance FromText TablesListProcessingStatus where
    fromText = \case
        "complete" -> Just TLPSComplete
        "failed" -> Just TLPSFailed
        "notReady" -> Just TLPSNotReady
        "processing" -> Just TLPSProcessing
        "ready" -> Just TLPSReady
        _ -> Nothing

instance ToText TablesListProcessingStatus where
    toText = \case
        TLPSComplete -> "complete"
        TLPSFailed -> "failed"
        TLPSNotReady -> "notReady"
        TLPSProcessing -> "processing"
        TLPSReady -> "ready"

instance FromJSON TablesListProcessingStatus where
    parseJSON = parseJSONText "TablesListProcessingStatus"

instance ToJSON TablesListProcessingStatus where
    toJSON = toJSONText

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
data LayerLayerType
    = LLTImage
      -- ^ @image@
    | LLTVector
      -- ^ @vector@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerLayerType

instance FromText LayerLayerType where
    fromText = \case
        "image" -> Just LLTImage
        "vector" -> Just LLTVector
        _ -> Nothing

instance ToText LayerLayerType where
    toText = \case
        LLTImage -> "image"
        LLTVector -> "vector"

instance FromJSON LayerLayerType where
    parseJSON = parseJSONText "LayerLayerType"

instance ToJSON LayerLayerType where
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

-- | Deprecated: The version parameter indicates which version of the map
-- should be returned. When version is set to published, the published
-- version of the map will be returned. Please use the maps.getPublished
-- endpoint instead.
data MapsGetVersion
    = Draft
      -- ^ @draft@
      -- The draft version.
    | Published
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsGetVersion

instance FromText MapsGetVersion where
    fromText = \case
        "draft" -> Just Draft
        "published" -> Just Published
        _ -> Nothing

instance ToText MapsGetVersion where
    toText = \case
        Draft -> "draft"
        Published -> "published"

instance FromJSON MapsGetVersion where
    parseJSON = parseJSONText "MapsGetVersion"

instance ToJSON MapsGetVersion where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data TablesListRole
    = TLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | TLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | TLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TablesListRole

instance FromText TablesListRole where
    fromText = \case
        "owner" -> Just TLROwner
        "reader" -> Just TLRReader
        "writer" -> Just TLRWriter
        _ -> Nothing

instance ToText TablesListRole where
    toText = \case
        TLROwner -> "owner"
        TLRReader -> "reader"
        TLRWriter -> "writer"

instance FromJSON TablesListRole where
    parseJSON = parseJSONText "TablesListRole"

instance ToJSON TablesListRole where
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

-- | Deprecated: The version parameter indicates which version of the layer
-- should be returned. When version is set to published, the published
-- version of the layer will be returned. Please use the
-- layers.getPublished endpoint instead.
data LayersGetVersion
    = LGVDraft
      -- ^ @draft@
      -- The draft version.
    | LGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayersGetVersion

instance FromText LayersGetVersion where
    fromText = \case
        "draft" -> Just LGVDraft
        "published" -> Just LGVPublished
        _ -> Nothing

instance ToText LayersGetVersion where
    toText = \case
        LGVDraft -> "draft"
        LGVPublished -> "published"

instance FromJSON LayersGetVersion where
    parseJSON = parseJSONText "LayersGetVersion"

instance ToJSON LayersGetVersion where
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

-- | The table version to access. See Accessing Public Data for information.
data TablesFeaturesListVersion
    = TFLVDraft
      -- ^ @draft@
      -- The draft version.
    | TFLVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TablesFeaturesListVersion

instance FromText TablesFeaturesListVersion where
    fromText = \case
        "draft" -> Just TFLVDraft
        "published" -> Just TFLVPublished
        _ -> Nothing

instance ToText TablesFeaturesListVersion where
    toText = \case
        TFLVDraft -> "draft"
        TFLVPublished -> "published"

instance FromJSON TablesFeaturesListVersion where
    parseJSON = parseJSONText "TablesFeaturesListVersion"

instance ToJSON TablesFeaturesListVersion where
    toJSON = toJSONText

data MapsListProcessingStatus
    = MLPSComplete
      -- ^ @complete@
      -- The map has completed processing.
    | MLPSFailed
      -- ^ @failed@
      -- The map has failed processing.
    | MLPSNotReady
      -- ^ @notReady@
      -- The map is not ready for processing.
    | MLPSProcessing
      -- ^ @processing@
      -- The map is processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsListProcessingStatus

instance FromText MapsListProcessingStatus where
    fromText = \case
        "complete" -> Just MLPSComplete
        "failed" -> Just MLPSFailed
        "notReady" -> Just MLPSNotReady
        "processing" -> Just MLPSProcessing
        _ -> Nothing

instance ToText MapsListProcessingStatus where
    toText = \case
        MLPSComplete -> "complete"
        MLPSFailed -> "failed"
        MLPSNotReady -> "notReady"
        MLPSProcessing -> "processing"

instance FromJSON MapsListProcessingStatus where
    parseJSON = parseJSONText "MapsListProcessingStatus"

instance ToJSON MapsListProcessingStatus where
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

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data RasterCollectionsListRole
    = RCLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | RCLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | RCLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionsListRole

instance FromText RasterCollectionsListRole where
    fromText = \case
        "owner" -> Just RCLROwner
        "reader" -> Just RCLRReader
        "writer" -> Just RCLRWriter
        _ -> Nothing

instance ToText RasterCollectionsListRole where
    toText = \case
        RCLROwner -> "owner"
        RCLRReader -> "reader"
        RCLRWriter -> "writer"

instance FromJSON RasterCollectionsListRole where
    parseJSON = parseJSONText "RasterCollectionsListRole"

instance ToJSON RasterCollectionsListRole where
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

data RasterCollectionsListProcessingStatus
    = RCLPSComplete
      -- ^ @complete@
      -- The raster collection has completed processing.
    | RCLPSFailed
      -- ^ @failed@
      -- The raster collection has failed processing.
    | RCLPSNotReady
      -- ^ @notReady@
      -- The raster collection is not ready for processing.
    | RCLPSProcessing
      -- ^ @processing@
      -- The raster collection is processing.
    | RCLPSReady
      -- ^ @ready@
      -- The raster collection is ready for processing.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionsListProcessingStatus

instance FromText RasterCollectionsListProcessingStatus where
    fromText = \case
        "complete" -> Just RCLPSComplete
        "failed" -> Just RCLPSFailed
        "notReady" -> Just RCLPSNotReady
        "processing" -> Just RCLPSProcessing
        "ready" -> Just RCLPSReady
        _ -> Nothing

instance ToText RasterCollectionsListProcessingStatus where
    toText = \case
        RCLPSComplete -> "complete"
        RCLPSFailed -> "failed"
        RCLPSNotReady -> "notReady"
        RCLPSProcessing -> "processing"
        RCLPSReady -> "ready"

instance FromJSON RasterCollectionsListProcessingStatus where
    parseJSON = parseJSONText "RasterCollectionsListProcessingStatus"

instance ToJSON RasterCollectionsListProcessingStatus where
    toJSON = toJSONText

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data LayersListRole
    = LLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | LLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | LLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayersListRole

instance FromText LayersListRole where
    fromText = \case
        "owner" -> Just LLROwner
        "reader" -> Just LLRReader
        "writer" -> Just LLRWriter
        _ -> Nothing

instance ToText LayersListRole where
    toText = \case
        LLROwner -> "owner"
        LLRReader -> "reader"
        LLRWriter -> "writer"

instance FromJSON LayersListRole where
    parseJSON = parseJSONText "LayersListRole"

instance ToJSON LayersListRole where
    toJSON = toJSONText

-- | The table version to access. See Accessing Public Data for information.
data TablesFeaturesGetVersion
    = TFGVDraft
      -- ^ @draft@
      -- The draft version.
    | TFGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TablesFeaturesGetVersion

instance FromText TablesFeaturesGetVersion where
    fromText = \case
        "draft" -> Just TFGVDraft
        "published" -> Just TFGVPublished
        _ -> Nothing

instance ToText TablesFeaturesGetVersion where
    toText = \case
        TFGVDraft -> "draft"
        TFGVPublished -> "published"

instance FromJSON TablesFeaturesGetVersion where
    parseJSON = parseJSONText "TablesFeaturesGetVersion"

instance ToJSON TablesFeaturesGetVersion where
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
data RastersListRole
    = RLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | RLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | RLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RastersListRole

instance FromText RastersListRole where
    fromText = \case
        "owner" -> Just RLROwner
        "reader" -> Just RLRReader
        "writer" -> Just RLRWriter
        _ -> Nothing

instance ToText RastersListRole where
    toText = \case
        RLROwner -> "owner"
        RLRReader -> "reader"
        RLRWriter -> "writer"

instance FromJSON RastersListRole where
    parseJSON = parseJSONText "RastersListRole"

instance ToJSON RastersListRole where
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

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
data MapsListRole
    = MLROwner
      -- ^ @owner@
      -- The user can read, write and administer the asset.
    | MLRReader
      -- ^ @reader@
      -- The user can read the asset.
    | MLRWriter
      -- ^ @writer@
      -- The user can read and write the asset.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapsListRole

instance FromText MapsListRole where
    fromText = \case
        "owner" -> Just MLROwner
        "reader" -> Just MLRReader
        "writer" -> Just MLRWriter
        _ -> Nothing

instance ToText MapsListRole where
    toText = \case
        MLROwner -> "owner"
        MLRReader -> "reader"
        MLRWriter -> "writer"

instance FromJSON MapsListRole where
    parseJSON = parseJSONText "MapsListRole"

instance ToJSON MapsListRole where
    toJSON = toJSONText

data TablesGetVersion
    = TGVDraft
      -- ^ @draft@
      -- The draft version.
    | TGVPublished
      -- ^ @published@
      -- The published version.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TablesGetVersion

instance FromText TablesGetVersion where
    fromText = \case
        "draft" -> Just TGVDraft
        "published" -> Just TGVPublished
        _ -> Nothing

instance ToText TablesGetVersion where
    toText = \case
        TGVDraft -> "draft"
        TGVPublished -> "published"

instance FromJSON TablesGetVersion where
    parseJSON = parseJSONText "TablesGetVersion"

instance ToJSON TablesGetVersion where
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
