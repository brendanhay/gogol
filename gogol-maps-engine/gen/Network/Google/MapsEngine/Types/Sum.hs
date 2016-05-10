{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsEngine.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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

instance FromHttpApiData RasterProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right Complete
        "failed" -> Right Failed
        "notReady" -> Right NotReady
        "processing" -> Right Processing
        "ready" -> Right Ready
        x -> Left ("Unable to parse RasterProcessingStatus from: " <> x)

instance ToHttpApiData RasterProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData LayerProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right LPSComplete
        "failed" -> Right LPSFailed
        "notReady" -> Right LPSNotReady
        "processing" -> Right LPSProcessing
        "ready" -> Right LPSReady
        x -> Left ("Unable to parse LayerProcessingStatus from: " <> x)

instance ToHttpApiData LayerProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData ScaledShapeShape where
    parseQueryParam = \case
        "circle" -> Right Circle
        x -> Left ("Unable to parse ScaledShapeShape from: " <> x)

instance ToHttpApiData ScaledShapeShape where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONMultiLineStringType where
    parseQueryParam = \case
        "MultiLineString" -> Right MultiLineString
        x -> Left ("Unable to parse GeoJSONMultiLineStringType from: " <> x)

instance ToHttpApiData GeoJSONMultiLineStringType where
    toQueryParam = \case
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

instance FromHttpApiData PermissionRole where
    parseQueryParam = \case
        "owner" -> Right Owner
        "reader" -> Right Reader
        "viewer" -> Right Viewer
        "writer" -> Right Writer
        x -> Left ("Unable to parse PermissionRole from: " <> x)

instance ToHttpApiData PermissionRole where
    toQueryParam = \case
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

instance FromHttpApiData AcquisitionTimePrecision where
    parseQueryParam = \case
        "day" -> Right Day
        "hour" -> Right Hour
        "minute" -> Right Minute
        "month" -> Right Month
        "second" -> Right Second
        "year" -> Right Year
        x -> Left ("Unable to parse AcquisitionTimePrecision from: " <> x)

instance ToHttpApiData AcquisitionTimePrecision where
    toQueryParam = \case
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

instance FromHttpApiData ScalingFunctionScalingType where
    parseQueryParam = \case
        "linear" -> Right Linear
        "sqrt" -> Right Sqrt
        x -> Left ("Unable to parse ScalingFunctionScalingType from: " <> x)

instance ToHttpApiData ScalingFunctionScalingType where
    toQueryParam = \case
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

instance FromHttpApiData AssetsListRole where
    parseQueryParam = \case
        "owner" -> Right ALROwner
        "reader" -> Right ALRReader
        "writer" -> Right ALRWriter
        x -> Left ("Unable to parse AssetsListRole from: " <> x)

instance ToHttpApiData AssetsListRole where
    toQueryParam = \case
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

instance FromHttpApiData RastersListProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right RLPSComplete
        "failed" -> Right RLPSFailed
        "notReady" -> Right RLPSNotReady
        "processing" -> Right RLPSProcessing
        "ready" -> Right RLPSReady
        x -> Left ("Unable to parse RastersListProcessingStatus from: " <> x)

instance ToHttpApiData RastersListProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData LayersListProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right LLPSComplete
        "failed" -> Right LLPSFailed
        "notReady" -> Right LLPSNotReady
        "processing" -> Right LLPSProcessing
        "ready" -> Right LLPSReady
        x -> Left ("Unable to parse LayersListProcessingStatus from: " <> x)

instance ToHttpApiData LayersListProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData RasterCollectionsRastersListRole where
    parseQueryParam = \case
        "owner" -> Right RCRLROwner
        "reader" -> Right RCRLRReader
        "writer" -> Right RCRLRWriter
        x -> Left ("Unable to parse RasterCollectionsRastersListRole from: " <> x)

instance ToHttpApiData RasterCollectionsRastersListRole where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONMultiPolygonType where
    parseQueryParam = \case
        "MultiPolygon" -> Right MultiPolygon
        x -> Left ("Unable to parse GeoJSONMultiPolygonType from: " <> x)

instance ToHttpApiData GeoJSONMultiPolygonType where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONMultiPointType where
    parseQueryParam = \case
        "MultiPoint" -> Right MultiPoint
        x -> Left ("Unable to parse GeoJSONMultiPointType from: " <> x)

instance ToHttpApiData GeoJSONMultiPointType where
    toQueryParam = \case
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

instance FromHttpApiData PublishedLayerLayerType where
    parseQueryParam = \case
        "image" -> Right Image
        "vector" -> Right Vector
        x -> Left ("Unable to parse PublishedLayerLayerType from: " <> x)

instance ToHttpApiData PublishedLayerLayerType where
    toQueryParam = \case
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

instance FromHttpApiData TablesListProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right TLPSComplete
        "failed" -> Right TLPSFailed
        "notReady" -> Right TLPSNotReady
        "processing" -> Right TLPSProcessing
        "ready" -> Right TLPSReady
        x -> Left ("Unable to parse TablesListProcessingStatus from: " <> x)

instance ToHttpApiData TablesListProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData LayerLayerType where
    parseQueryParam = \case
        "image" -> Right LLTImage
        "vector" -> Right LLTVector
        x -> Left ("Unable to parse LayerLayerType from: " <> x)

instance ToHttpApiData LayerLayerType where
    toQueryParam = \case
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

instance FromHttpApiData PermissionType where
    parseQueryParam = \case
        "anyone" -> Right Anyone
        "group" -> Right Group
        "user" -> Right User
        x -> Left ("Unable to parse PermissionType from: " <> x)

instance ToHttpApiData PermissionType where
    toQueryParam = \case
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

instance FromHttpApiData MapProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right MPSComplete
        "failed" -> Right MPSFailed
        "notReady" -> Right MPSNotReady
        "processing" -> Right MPSProcessing
        "ready" -> Right MPSReady
        x -> Left ("Unable to parse MapProcessingStatus from: " <> x)

instance ToHttpApiData MapProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData MapsGetVersion where
    parseQueryParam = \case
        "draft" -> Right Draft
        "published" -> Right Published
        x -> Left ("Unable to parse MapsGetVersion from: " <> x)

instance ToHttpApiData MapsGetVersion where
    toQueryParam = \case
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

instance FromHttpApiData TablesListRole where
    parseQueryParam = \case
        "owner" -> Right TLROwner
        "reader" -> Right TLRReader
        "writer" -> Right TLRWriter
        x -> Left ("Unable to parse TablesListRole from: " <> x)

instance ToHttpApiData TablesListRole where
    toQueryParam = \case
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

instance FromHttpApiData VectorStyleType where
    parseQueryParam = \case
        "displayRule" -> Right VSTDisplayRule
        x -> Left ("Unable to parse VectorStyleType from: " <> x)

instance ToHttpApiData VectorStyleType where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONLineStringType where
    parseQueryParam = \case
        "LineString" -> Right LineString
        x -> Left ("Unable to parse GeoJSONLineStringType from: " <> x)

instance ToHttpApiData GeoJSONLineStringType where
    toQueryParam = \case
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

instance FromHttpApiData LayerPublishingStatus where
    parseQueryParam = \case
        "notPublished" -> Right LPSNotPublished
        "published" -> Right LPSPublished
        x -> Left ("Unable to parse LayerPublishingStatus from: " <> x)

instance ToHttpApiData LayerPublishingStatus where
    toQueryParam = \case
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

instance FromHttpApiData MapKmlLinkType where
    parseQueryParam = \case
        "kmlLink" -> Right KmlLink
        x -> Left ("Unable to parse MapKmlLinkType from: " <> x)

instance ToHttpApiData MapKmlLinkType where
    toQueryParam = \case
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

instance FromHttpApiData LayerDatasourceType where
    parseQueryParam = \case
        "image" -> Right LDTImage
        "table" -> Right LDTTable
        x -> Left ("Unable to parse LayerDatasourceType from: " <> x)

instance ToHttpApiData LayerDatasourceType where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONGeometryCollectionType where
    parseQueryParam = \case
        "GeometryCollection" -> Right GeometryCollection
        x -> Left ("Unable to parse GeoJSONGeometryCollectionType from: " <> x)

instance ToHttpApiData GeoJSONGeometryCollectionType where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONPointType where
    parseQueryParam = \case
        "Point" -> Right Point
        x -> Left ("Unable to parse GeoJSONPointType from: " <> x)

instance ToHttpApiData GeoJSONPointType where
    toQueryParam = \case
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

instance FromHttpApiData GeoJSONPolygonType where
    parseQueryParam = \case
        "Polygon" -> Right Polygon
        x -> Left ("Unable to parse GeoJSONPolygonType from: " <> x)

instance ToHttpApiData GeoJSONPolygonType where
    toQueryParam = \case
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

instance FromHttpApiData LayersGetVersion where
    parseQueryParam = \case
        "draft" -> Right LGVDraft
        "published" -> Right LGVPublished
        x -> Left ("Unable to parse LayersGetVersion from: " <> x)

instance ToHttpApiData LayersGetVersion where
    toQueryParam = \case
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

instance FromHttpApiData MapLayerType where
    parseQueryParam = \case
        "layer" -> Right MLTLayer
        x -> Left ("Unable to parse MapLayerType from: " <> x)

instance ToHttpApiData MapLayerType where
    toQueryParam = \case
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

instance FromHttpApiData LabelStyleFontWeight where
    parseQueryParam = \case
        "bold" -> Right Bold
        "normal" -> Right Normal
        x -> Left ("Unable to parse LabelStyleFontWeight from: " <> x)

instance ToHttpApiData LabelStyleFontWeight where
    toQueryParam = \case
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

instance FromHttpApiData MapFolderType where
    parseQueryParam = \case
        "folder" -> Right Folder
        x -> Left ("Unable to parse MapFolderType from: " <> x)

instance ToHttpApiData MapFolderType where
    toQueryParam = \case
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

instance FromHttpApiData RasterCollectionProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right RCPSComplete
        "failed" -> Right RCPSFailed
        "notReady" -> Right RCPSNotReady
        "processing" -> Right RCPSProcessing
        "ready" -> Right RCPSReady
        x -> Left ("Unable to parse RasterCollectionProcessingStatus from: " <> x)

instance ToHttpApiData RasterCollectionProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData TablesFeaturesListVersion where
    parseQueryParam = \case
        "draft" -> Right TFLVDraft
        "published" -> Right TFLVPublished
        x -> Left ("Unable to parse TablesFeaturesListVersion from: " <> x)

instance ToHttpApiData TablesFeaturesListVersion where
    toQueryParam = \case
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

instance FromHttpApiData MapsListProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right MLPSComplete
        "failed" -> Right MLPSFailed
        "notReady" -> Right MLPSNotReady
        "processing" -> Right MLPSProcessing
        x -> Left ("Unable to parse MapsListProcessingStatus from: " <> x)

instance ToHttpApiData MapsListProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData LabelStyleFontStyle where
    parseQueryParam = \case
        "italic" -> Right LSFSItalic
        "normal" -> Right LSFSNormal
        x -> Left ("Unable to parse LabelStyleFontStyle from: " <> x)

instance ToHttpApiData LabelStyleFontStyle where
    toQueryParam = \case
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

instance FromHttpApiData AssetType where
    parseQueryParam = \case
        "layer" -> Right ATLayer
        "map" -> Right ATMap
        "raster" -> Right ATRaster
        "rasterCollection" -> Right ATRasterCollection
        "table" -> Right ATTable
        x -> Left ("Unable to parse AssetType from: " <> x)

instance ToHttpApiData AssetType where
    toQueryParam = \case
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

instance FromHttpApiData RasterRasterType where
    parseQueryParam = \case
        "image" -> Right RRTImage
        x -> Left ("Unable to parse RasterRasterType from: " <> x)

instance ToHttpApiData RasterRasterType where
    toQueryParam = \case
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

instance FromHttpApiData RasterCollectionsListRole where
    parseQueryParam = \case
        "owner" -> Right RCLROwner
        "reader" -> Right RCLRReader
        "writer" -> Right RCLRWriter
        x -> Left ("Unable to parse RasterCollectionsListRole from: " <> x)

instance ToHttpApiData RasterCollectionsListRole where
    toQueryParam = \case
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

instance FromHttpApiData FilterOperator where
    parseQueryParam = \case
        "!=" -> Right NotEqual
        "<" -> Right Less
        "<=" -> Right LessOrEqual
        "==" -> Right Equal
        ">" -> Right Greater
        ">=" -> Right GreaterEqual
        "contains" -> Right Contains
        "endsWith" -> Right EndsWith
        "startsWith" -> Right StartsWith
        x -> Left ("Unable to parse FilterOperator from: " <> x)

instance ToHttpApiData FilterOperator where
    toQueryParam = \case
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

instance FromHttpApiData TableColumnType where
    parseQueryParam = \case
        "datetime" -> Right Datetime
        "double" -> Right Double
        "integer" -> Right Integer
        "lineStrings" -> Right LineStrings
        "mixedGeometry" -> Right MixedGeometry
        "points" -> Right Points
        "polygons" -> Right Polygons
        "string" -> Right String
        x -> Left ("Unable to parse TableColumnType from: " <> x)

instance ToHttpApiData TableColumnType where
    toQueryParam = \case
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

instance FromHttpApiData RasterCollectionsListProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right RCLPSComplete
        "failed" -> Right RCLPSFailed
        "notReady" -> Right RCLPSNotReady
        "processing" -> Right RCLPSProcessing
        "ready" -> Right RCLPSReady
        x -> Left ("Unable to parse RasterCollectionsListProcessingStatus from: " <> x)

instance ToHttpApiData RasterCollectionsListProcessingStatus where
    toQueryParam = \case
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

instance FromHttpApiData LayersListRole where
    parseQueryParam = \case
        "owner" -> Right LLROwner
        "reader" -> Right LLRReader
        "writer" -> Right LLRWriter
        x -> Left ("Unable to parse LayersListRole from: " <> x)

instance ToHttpApiData LayersListRole where
    toQueryParam = \case
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

instance FromHttpApiData TablesFeaturesGetVersion where
    parseQueryParam = \case
        "draft" -> Right TFGVDraft
        "published" -> Right TFGVPublished
        x -> Left ("Unable to parse TablesFeaturesGetVersion from: " <> x)

instance ToHttpApiData TablesFeaturesGetVersion where
    toQueryParam = \case
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

instance FromHttpApiData RasterCollectionRasterType where
    parseQueryParam = \case
        "image" -> Right RCRTImage
        x -> Left ("Unable to parse RasterCollectionRasterType from: " <> x)

instance ToHttpApiData RasterCollectionRasterType where
    toQueryParam = \case
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

instance FromHttpApiData RastersListRole where
    parseQueryParam = \case
        "owner" -> Right RLROwner
        "reader" -> Right RLRReader
        "writer" -> Right RLRWriter
        x -> Left ("Unable to parse RastersListRole from: " <> x)

instance ToHttpApiData RastersListRole where
    toQueryParam = \case
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

instance FromHttpApiData MapPublishingStatus where
    parseQueryParam = \case
        "notPublished" -> Right MPSNotPublished
        "published" -> Right MPSPublished
        x -> Left ("Unable to parse MapPublishingStatus from: " <> x)

instance ToHttpApiData MapPublishingStatus where
    toQueryParam = \case
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

instance FromHttpApiData FileUploadStatus where
    parseQueryParam = \case
        "canceled" -> Right FUSCanceled
        "complete" -> Right FUSComplete
        "failed" -> Right FUSFailed
        "inProgress" -> Right FUSInProgress
        x -> Left ("Unable to parse FileUploadStatus from: " <> x)

instance ToHttpApiData FileUploadStatus where
    toQueryParam = \case
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

instance FromHttpApiData MapsListRole where
    parseQueryParam = \case
        "owner" -> Right MLROwner
        "reader" -> Right MLRReader
        "writer" -> Right MLRWriter
        x -> Left ("Unable to parse MapsListRole from: " <> x)

instance ToHttpApiData MapsListRole where
    toQueryParam = \case
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

instance FromHttpApiData TablesGetVersion where
    parseQueryParam = \case
        "draft" -> Right TGVDraft
        "published" -> Right TGVPublished
        x -> Left ("Unable to parse TablesGetVersion from: " <> x)

instance ToHttpApiData TablesGetVersion where
    toQueryParam = \case
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

instance FromHttpApiData TableProcessingStatus where
    parseQueryParam = \case
        "complete" -> Right TPSComplete
        "failed" -> Right TPSFailed
        "notReady" -> Right TPSNotReady
        "processing" -> Right TPSProcessing
        "ready" -> Right TPSReady
        x -> Left ("Unable to parse TableProcessingStatus from: " <> x)

instance ToHttpApiData TableProcessingStatus where
    toQueryParam = \case
        TPSComplete -> "complete"
        TPSFailed -> "failed"
        TPSNotReady -> "notReady"
        TPSProcessing -> "processing"
        TPSReady -> "ready"

instance FromJSON TableProcessingStatus where
    parseJSON = parseJSONText "TableProcessingStatus"

instance ToJSON TableProcessingStatus where
    toJSON = toJSONText
