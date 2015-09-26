{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | Identifies this object as a GeoJsonGeometryCollection.
data GeoJsonGeometryCollectionType
    = GJGCTGeometryCollection
      -- ^ @GeometryCollection@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonGeometryCollectionType

-- | Identifies this object as a GeoJsonLineString.
data GeoJsonLineStringType
    = GJLSTLineString
      -- ^ @LineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonLineStringType

-- | Identifies this object as a GeoJsonMultiLineString.
data GeoJsonMultiLineStringType
    = GJMLSTMultiLineString
      -- ^ @MultiLineString@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiLineStringType

-- | Identifies this object as a GeoJsonMultiPoint.
data GeoJsonMultiPointType
    = GJMPTMultiPoint
      -- ^ @MultiPoint@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiPointType

-- | Identifies this object as a GeoJsonMultiPolygon.
data GeoJsonMultiPolygonType
    = GJMPTMultiPolygon
      -- ^ @MultiPolygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonMultiPolygonType

-- | Identifies this object as a GeoJsonPoint.
data GeoJsonPointType
    = GJPTPoint
      -- ^ @Point@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonPointType

-- | Identifies this object as a GeoJsonPolygon.
data GeoJsonPolygonType
    = GJPTPolygon
      -- ^ @Polygon@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GeoJsonPolygonType

-- | Font style of the label, defaults to \'normal\'.
data LabelStyleFontStyle
    = LSFSItalic
      -- ^ @italic@
    | LSFSNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelStyleFontStyle

-- | Font weight of the label, defaults to \'normal\'.
data LabelStyleFontWeight
    = LSFWBold
      -- ^ @bold@
    | LSFWNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelStyleFontWeight

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

-- | The publishing status of this layer.
data LayerPublishingStatus
    = LPSNotPublished
      -- ^ @notPublished@
    | LPSPublished
      -- ^ @published@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LayerPublishingStatus

-- | Identifies this object as a MapFolder.
data MapFolderType
    = MFTFolder
      -- ^ @folder@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapFolderType

-- | Identifies this object as a MapKmlLink.
data MapKmlLinkType
    = MKLTKmlLink
      -- ^ @kmlLink@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapKmlLinkType

-- | Identifies this object as a MapLayer.
data MapLayerType
    = MLTLayer
      -- ^ @layer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapLayerType

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

-- | The publishing status of this map.
data MapPublishingStatus
    = MPSNotPublished
      -- ^ @notPublished@
    | MPSPublished
      -- ^ @published@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MapPublishingStatus

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

-- | The type of rasters contained within this RasterCollection.
data RasterCollectionRasterType
    = RCRTImage
      -- ^ @image@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterCollectionRasterType

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

-- | The type of this Raster. Always \"image\" today.
data RasterRasterType
    = RRTImage
      -- ^ @image@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RasterRasterType

-- | Name of the shape.
data ScaledShapeShape
    = SSSCircle
      -- ^ @circle@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScaledShapeShape

-- | The type of scaling function to use. Defaults to SQRT. Currently only
-- linear and square root scaling are supported.
data ScalingFunctionScalingType
    = SFSTLinear
      -- ^ @linear@
    | SFSTSqrt
      -- ^ @sqrt@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScalingFunctionScalingType

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

-- | The type of the vector style. Currently, only displayRule is supported.
data VectorStyleType
    = VSTDisplayRule
      -- ^ @displayRule@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VectorStyleType
