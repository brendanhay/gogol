{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Map.Engine.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Map.Engine.Types.Sum where

import           Network.Google.Prelude

-- | The precision of acquisition time.
data AcquisitionTimePrecision
    = ATPDay
      -- ^ @day@
    | ATPHour
      -- ^ @hour@
    | ATPMinute
      -- ^ @minute@
    | ATPMonth
      -- ^ @month@
    | ATPSecond
      -- ^ @second@
    | ATPYear
      -- ^ @year@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AcquisitionTimePrecision

instance FromText AcquisitionTimePrecision where
    fromText = \case
        "day" -> Just ATPDay
        "hour" -> Just ATPHour
        "minute" -> Just ATPMinute
        "month" -> Just ATPMonth
        "second" -> Just ATPSecond
        "year" -> Just ATPYear
        _ -> Nothing

instance ToText AcquisitionTimePrecision where
    toText = \case
        ATPDay -> "day"
        ATPHour -> "hour"
        ATPMinute -> "minute"
        ATPMonth -> "month"
        ATPSecond -> "second"
        ATPYear -> "year"

instance FromJSON AcquisitionTimePrecision where
    parseJSON = parseJSONText "AcquisitionTimePrecision"

instance ToJSON AcquisitionTimePrecision where
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

-- | Operation used to evaluate the filter.
data FilterOperator
    = FONotEqual
      -- ^ @!=@
    | FOLess
      -- ^ @<@
    | FOLessOrEqual
      -- ^ @<=@
    | FOEqual
      -- ^ @==@
    | FOGreater
      -- ^ @>@
    | FOGreaterEqual
      -- ^ @>=@
    | FOContains
      -- ^ @contains@
    | FOEndsWith
      -- ^ @endsWith@
    | FOStartsWith
      -- ^ @startsWith@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilterOperator

instance FromText FilterOperator where
    fromText = \case
        "!=" -> Just FONotEqual
        "<" -> Just FOLess
        "<=" -> Just FOLessOrEqual
        "==" -> Just FOEqual
        ">" -> Just FOGreater
        ">=" -> Just FOGreaterEqual
        "contains" -> Just FOContains
        "endsWith" -> Just FOEndsWith
        "startsWith" -> Just FOStartsWith
        _ -> Nothing

instance ToText FilterOperator where
    toText = \case
        FONotEqual -> "!="
        FOLess -> "<"
        FOLessOrEqual -> "<="
        FOEqual -> "=="
        FOGreater -> ">"
        FOGreaterEqual -> ">="
        FOContains -> "contains"
        FOEndsWith -> "endsWith"
        FOStartsWith -> "startsWith"

instance FromJSON FilterOperator where
    parseJSON = parseJSONText "FilterOperator"

instance ToJSON FilterOperator where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonGeometryCollection.
data GeoJsonGeometryCollectionType
    = GJGCTGeometryCollection
      -- ^ @GeometryCollection@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonGeometryCollectionType

instance FromText GeoJsonGeometryCollectionType where
    fromText = \case
        "GeometryCollection" -> Just GJGCTGeometryCollection
        _ -> Nothing

instance ToText GeoJsonGeometryCollectionType where
    toText = \case
        GJGCTGeometryCollection -> "GeometryCollection"

instance FromJSON GeoJsonGeometryCollectionType where
    parseJSON = parseJSONText "GeoJsonGeometryCollectionType"

instance ToJSON GeoJsonGeometryCollectionType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonLineString.
data GeoJsonLineStringType
    = GJLSTLineString
      -- ^ @LineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonLineStringType

instance FromText GeoJsonLineStringType where
    fromText = \case
        "LineString" -> Just GJLSTLineString
        _ -> Nothing

instance ToText GeoJsonLineStringType where
    toText = \case
        GJLSTLineString -> "LineString"

instance FromJSON GeoJsonLineStringType where
    parseJSON = parseJSONText "GeoJsonLineStringType"

instance ToJSON GeoJsonLineStringType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiLineString.
data GeoJsonMultiLineStringType
    = GJMLSTMultiLineString
      -- ^ @MultiLineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiLineStringType

instance FromText GeoJsonMultiLineStringType where
    fromText = \case
        "MultiLineString" -> Just GJMLSTMultiLineString
        _ -> Nothing

instance ToText GeoJsonMultiLineStringType where
    toText = \case
        GJMLSTMultiLineString -> "MultiLineString"

instance FromJSON GeoJsonMultiLineStringType where
    parseJSON = parseJSONText "GeoJsonMultiLineStringType"

instance ToJSON GeoJsonMultiLineStringType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiPoint.
data GeoJsonMultiPointType
    = GJMPTMultiPoint
      -- ^ @MultiPoint@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiPointType

instance FromText GeoJsonMultiPointType where
    fromText = \case
        "MultiPoint" -> Just GJMPTMultiPoint
        _ -> Nothing

instance ToText GeoJsonMultiPointType where
    toText = \case
        GJMPTMultiPoint -> "MultiPoint"

instance FromJSON GeoJsonMultiPointType where
    parseJSON = parseJSONText "GeoJsonMultiPointType"

instance ToJSON GeoJsonMultiPointType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonMultiPolygon.
data GeoJsonMultiPolygonType
    = GJMPTMultiPolygon
      -- ^ @MultiPolygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiPolygonType

instance FromText GeoJsonMultiPolygonType where
    fromText = \case
        "MultiPolygon" -> Just GJMPTMultiPolygon
        _ -> Nothing

instance ToText GeoJsonMultiPolygonType where
    toText = \case
        GJMPTMultiPolygon -> "MultiPolygon"

instance FromJSON GeoJsonMultiPolygonType where
    parseJSON = parseJSONText "GeoJsonMultiPolygonType"

instance ToJSON GeoJsonMultiPolygonType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonPoint.
data GeoJsonPointType
    = GJPTPoint
      -- ^ @Point@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonPointType

instance FromText GeoJsonPointType where
    fromText = \case
        "Point" -> Just GJPTPoint
        _ -> Nothing

instance ToText GeoJsonPointType where
    toText = \case
        GJPTPoint -> "Point"

instance FromJSON GeoJsonPointType where
    parseJSON = parseJSONText "GeoJsonPointType"

instance ToJSON GeoJsonPointType where
    toJSON = toJSONText

-- | Identifies this object as a GeoJsonPolygon.
data GeoJsonPolygonType
    = GJPTPolygon
      -- ^ @Polygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonPolygonType

instance FromText GeoJsonPolygonType where
    fromText = \case
        "Polygon" -> Just GJPTPolygon
        _ -> Nothing

instance ToText GeoJsonPolygonType where
    toText = \case
        GJPTPolygon -> "Polygon"

instance FromJSON GeoJsonPolygonType where
    parseJSON = parseJSONText "GeoJsonPolygonType"

instance ToJSON GeoJsonPolygonType where
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

-- | Font weight of the label, defaults to \'normal\'.
data LabelStyleFontWeight
    = LSFWBold
      -- ^ @bold@
    | LSFWNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelStyleFontWeight

instance FromText LabelStyleFontWeight where
    fromText = \case
        "bold" -> Just LSFWBold
        "normal" -> Just LSFWNormal
        _ -> Nothing

instance ToText LabelStyleFontWeight where
    toText = \case
        LSFWBold -> "bold"
        LSFWNormal -> "normal"

instance FromJSON LabelStyleFontWeight where
    parseJSON = parseJSONText "LabelStyleFontWeight"

instance ToJSON LabelStyleFontWeight where
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

-- | Identifies this object as a MapFolder.
data MapFolderType
    = MFTFolder
      -- ^ @folder@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapFolderType

instance FromText MapFolderType where
    fromText = \case
        "folder" -> Just MFTFolder
        _ -> Nothing

instance ToText MapFolderType where
    toText = \case
        MFTFolder -> "folder"

instance FromJSON MapFolderType where
    parseJSON = parseJSONText "MapFolderType"

instance ToJSON MapFolderType where
    toJSON = toJSONText

-- | Identifies this object as a MapKmlLink.
data MapKmlLinkType
    = MKLTKmlLink
      -- ^ @kmlLink@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapKmlLinkType

instance FromText MapKmlLinkType where
    fromText = \case
        "kmlLink" -> Just MKLTKmlLink
        _ -> Nothing

instance ToText MapKmlLinkType where
    toText = \case
        MKLTKmlLink -> "kmlLink"

instance FromJSON MapKmlLinkType where
    parseJSON = parseJSONText "MapKmlLinkType"

instance ToJSON MapKmlLinkType where
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

-- | The type of access granted to this user or group.
data PermissionRole
    = PROwner
      -- ^ @owner@
    | PRReader
      -- ^ @reader@
    | PRViewer
      -- ^ @viewer@
    | PRWriter
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionRole

instance FromText PermissionRole where
    fromText = \case
        "owner" -> Just PROwner
        "reader" -> Just PRReader
        "viewer" -> Just PRViewer
        "writer" -> Just PRWriter
        _ -> Nothing

instance ToText PermissionRole where
    toText = \case
        PROwner -> "owner"
        PRReader -> "reader"
        PRViewer -> "viewer"
        PRWriter -> "writer"

instance FromJSON PermissionRole where
    parseJSON = parseJSONText "PermissionRole"

instance ToJSON PermissionRole where
    toJSON = toJSONText

-- | The account type.
data PermissionType
    = PTAnyone
      -- ^ @anyone@
    | PTGroup
      -- ^ @group@
    | PTUser
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionType

instance FromText PermissionType where
    fromText = \case
        "anyone" -> Just PTAnyone
        "group" -> Just PTGroup
        "user" -> Just PTUser
        _ -> Nothing

instance ToText PermissionType where
    toText = \case
        PTAnyone -> "anyone"
        PTGroup -> "group"
        PTUser -> "user"

instance FromJSON PermissionType where
    parseJSON = parseJSONText "PermissionType"

instance ToJSON PermissionType where
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

-- | Name of the shape.
data ScaledShapeShape
    = SSSCircle
      -- ^ @circle@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScaledShapeShape

instance FromText ScaledShapeShape where
    fromText = \case
        "circle" -> Just SSSCircle
        _ -> Nothing

instance ToText ScaledShapeShape where
    toText = \case
        SSSCircle -> "circle"

instance FromJSON ScaledShapeShape where
    parseJSON = parseJSONText "ScaledShapeShape"

instance ToJSON ScaledShapeShape where
    toJSON = toJSONText

-- | The type of scaling function to use. Defaults to SQRT. Currently only
-- linear and square root scaling are supported.
data ScalingFunctionScalingType
    = SFSTLinear
      -- ^ @linear@
    | SFSTSqrt
      -- ^ @sqrt@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScalingFunctionScalingType

instance FromText ScalingFunctionScalingType where
    fromText = \case
        "linear" -> Just SFSTLinear
        "sqrt" -> Just SFSTSqrt
        _ -> Nothing

instance ToText ScalingFunctionScalingType where
    toText = \case
        SFSTLinear -> "linear"
        SFSTSqrt -> "sqrt"

instance FromJSON ScalingFunctionScalingType where
    parseJSON = parseJSONText "ScalingFunctionScalingType"

instance ToJSON ScalingFunctionScalingType where
    toJSON = toJSONText

-- | The type of data stored in this column.
data TableColumnType
    = TCTDatetime
      -- ^ @datetime@
    | TCTDouble
      -- ^ @double@
    | TCTInteger
      -- ^ @integer@
    | TCTLineStrings
      -- ^ @lineStrings@
    | TCTMixedGeometry
      -- ^ @mixedGeometry@
    | TCTPoints
      -- ^ @points@
    | TCTPolygons
      -- ^ @polygons@
    | TCTString
      -- ^ @string@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TableColumnType

instance FromText TableColumnType where
    fromText = \case
        "datetime" -> Just TCTDatetime
        "double" -> Just TCTDouble
        "integer" -> Just TCTInteger
        "lineStrings" -> Just TCTLineStrings
        "mixedGeometry" -> Just TCTMixedGeometry
        "points" -> Just TCTPoints
        "polygons" -> Just TCTPolygons
        "string" -> Just TCTString
        _ -> Nothing

instance ToText TableColumnType where
    toText = \case
        TCTDatetime -> "datetime"
        TCTDouble -> "double"
        TCTInteger -> "integer"
        TCTLineStrings -> "lineStrings"
        TCTMixedGeometry -> "mixedGeometry"
        TCTPoints -> "points"
        TCTPolygons -> "polygons"
        TCTString -> "string"

instance FromJSON TableColumnType where
    parseJSON = parseJSONText "TableColumnType"

instance ToJSON TableColumnType where
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
