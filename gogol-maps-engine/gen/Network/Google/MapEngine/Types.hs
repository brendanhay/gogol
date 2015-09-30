{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapEngine.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapEngine.Types
    (
    -- * Service URL
      mapEngineURL

    -- * Parent
    , Parent
    , parent
    , pId

    -- * PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- * GeoJSONProperties
    , GeoJSONProperties
    , geoJSONProperties

    -- * FeaturesBatchPatchRequest
    , FeaturesBatchPatchRequest
    , featuresBatchPatchRequest
    , fbprFeatures
    , fbprNormalizeGeometries

    -- * ValueRange
    , ValueRange
    , valueRange
    , vrMax
    , vrMin

    -- * LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- * Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- * ScaledShapeShape
    , ScaledShapeShape (..)

    -- * MapsengineRastersListProcessingStatus
    , MapsengineRastersListProcessingStatus (..)

    -- * PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- * RasterProcessingStatus
    , RasterProcessingStatus (..)

    -- * GeoJSONGeometry
    , GeoJSONGeometry
    , geoJSONGeometry

    -- * MapLayer
    , MapLayer
    , mapLayer
    , mlDefaultViewport
    , mlVisibility
    , mlKey
    , mlName
    , mlId
    , mlType

    -- * RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

    -- * PermissionRole
    , PermissionRole (..)

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- * GeoJSONMultiLineStringType
    , GeoJSONMultiLineStringType (..)

    -- * MapsengineRastersListRole
    , MapsengineRastersListRole (..)

    -- * ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- * FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- * ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

    -- * SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

    -- * MapFolder
    , MapFolder
    , mapFolder
    , mfExpandable
    , mfDefaultViewport
    , mfContents
    , mfVisibility
    , mfKey
    , mfName
    , mfType

    -- * AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

    -- * RasterCollection
    , RasterCollection
    , rasterCollection
    , rcCreationTime
    , rcWritersCanEditPermissions
    , rcEtag
    , rcCreatorEmail
    , rcRasterType
    , rcLastModifiedTime
    , rcLastModifierEmail
    , rcName
    , rcBbox
    , rcProcessingStatus
    , rcMosaic
    , rcId
    , rcProjectId
    , rcDraftAccessList
    , rcDescription
    , rcAttribution
    , rcTags

    -- * LineStyleStroke
    , LineStyleStroke
    , lineStyleStroke
    , lssColor
    , lssWidth
    , lssOpacity

    -- * Project
    , Project
    , project
    , proName
    , proId

    -- * Color
    , Color
    , color
    , cColor
    , cOpacity

    -- * MapsengineLayersGetVersion
    , MapsengineLayersGetVersion (..)

    -- * Asset
    , Asset
    , asset
    , aCreationTime
    , aWritersCanEditPermissions
    , aEtag
    , aCreatorEmail
    , aLastModifiedTime
    , aLastModifierEmail
    , aName
    , aBbox
    , aResource
    , aId
    , aProjectId
    , aType
    , aDescription
    , aTags

    -- * ProcessResponse
    , ProcessResponse
    , processResponse

    -- * TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- * MapsengineTablesGetVersion
    , MapsengineTablesGetVersion (..)

    -- * MapsengineMapsListRole
    , MapsengineMapsListRole (..)

    -- * RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- * LayerLayerType
    , LayerLayerType (..)

    -- * GeoJSONMultiPolygonType
    , GeoJSONMultiPolygonType (..)

    -- * PublishedLayerLayerType
    , PublishedLayerLayerType (..)

    -- * GeoJSONMultiPointType
    , GeoJSONMultiPointType (..)

    -- * ScaledShape
    , ScaledShape
    , scaledShape
    , ssBorder
    , ssFill
    , ssShape

    -- * MapProcessingStatus
    , MapProcessingStatus (..)

    -- * MapsengineMapsListProcessingStatus
    , MapsengineMapsListProcessingStatus (..)

    -- * Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- * FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- * PermissionType
    , PermissionType (..)

    -- * RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- * GeoJSONLineStringType
    , GeoJSONLineStringType (..)

    -- * VectorStyleType
    , VectorStyleType (..)

    -- * MapKmlLinkType
    , MapKmlLinkType (..)

    -- * LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- * LayerDatasourceType
    , LayerDatasourceType (..)

    -- * FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- * ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- * RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

    -- * LabelStyle
    , LabelStyle
    , labelStyle
    , lsFontStyle
    , lsColor
    , lsSize
    , lsOpacity
    , lsOutline
    , lsFontWeight
    , lsColumn

    -- * MapItem
    , MapItem
    , mapItem

    -- * GeoJSONGeometryCollectionType
    , GeoJSONGeometryCollectionType (..)

    -- * GeoJSONPointType
    , GeoJSONPointType (..)

    -- * GeoJSONPolygonType
    , GeoJSONPolygonType (..)

    -- * IconsListResponse
    , IconsListResponse
    , iconsListResponse
    , ilrNextPageToken
    , ilrIcons

    -- * Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- * AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- * MapsengineLayersListProcessingStatus
    , MapsengineLayersListProcessingStatus (..)

    -- * TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

    -- * Map
    , Map
    , map'
    , mapCreationTime
    , mapWritersCanEditPermissions
    , mapEtag
    , mapDefaultViewport
    , mapContents
    , mapPublishingStatus
    , mapCreatorEmail
    , mapLastModifiedTime
    , mapLastModifierEmail
    , mapVersions
    , mapName
    , mapBbox
    , mapProcessingStatus
    , mapId
    , mapProjectId
    , mapDraftAccessList
    , mapPublishedAccessList
    , mapDescription
    , mapTags

    -- * IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- * Border
    , Border
    , border
    , bColor
    , bWidth
    , bOpacity

    -- * DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- * PublishedMap
    , PublishedMap
    , publishedMap
    , pmDefaultViewport
    , pmContents
    , pmName
    , pmId
    , pmProjectId
    , pmDescription

    -- * RasterCollectionsRastersBatchInsertRequest
    , RasterCollectionsRastersBatchInsertRequest
    , rasterCollectionsRastersBatchInsertRequest
    , rcrbirIds

    -- * MapsengineAssetsListRole
    , MapsengineAssetsListRole (..)

    -- * MapLayerType
    , MapLayerType (..)

    -- * MapsengineTablesFeaturesGetVersion
    , MapsengineTablesFeaturesGetVersion (..)

    -- * RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- * MapsengineLayersListRole
    , MapsengineLayersListRole (..)

    -- * GeoJSONMultiLineString
    , GeoJSONMultiLineString
    , geoJSONMultiLineString
    , gjmlsCoordinates
    , gjmlsType

    -- * ScalingFunction
    , ScalingFunction
    , scalingFunction
    , sfValueRange
    , sfSizeRange
    , sfScalingType
    , sfColumn

    -- * MapFolderType
    , MapFolderType (..)

    -- * LabelStyleFontWeight
    , LabelStyleFontWeight (..)

    -- * RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- * MapsengineMapsGetVersion
    , MapsengineMapsGetVersion (..)

    -- * AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- * MapsengineRasterCollectionsListProcessingStatus
    , MapsengineRasterCollectionsListProcessingStatus (..)

    -- * MapsengineTablesListRole
    , MapsengineTablesListRole (..)

    -- * PublishResponse
    , PublishResponse
    , publishResponse

    -- * RasterCollectionsRaster
    , RasterCollectionsRaster
    , rasterCollectionsRaster
    , rcrCreationTime
    , rcrRasterType
    , rcrLastModifiedTime
    , rcrName
    , rcrBbox
    , rcrId
    , rcrProjectId
    , rcrDescription
    , rcrTags

    -- * LabelStyleFontStyle
    , LabelStyleFontStyle (..)

    -- * Datasource
    , Datasource
    , datasource
    , dId

    -- * FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- * FilterOperator
    , FilterOperator (..)

    -- * AssetType
    , AssetType (..)

    -- * Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- * RasterRasterType
    , RasterRasterType (..)

    -- * GeoJSONMultiPolygon
    , GeoJSONMultiPolygon
    , geoJSONMultiPolygon
    , gjmpCoordinates
    , gjmpType

    -- * GeoJSONMultiPoint
    , GeoJSONMultiPoint
    , geoJSONMultiPoint
    , gjsonmpCoordinates
    , gjsonmpType

    -- * TableColumnType
    , TableColumnType (..)

    -- * Raster
    , Raster
    , raster
    , rrCreationTime
    , rrWritersCanEditPermissions
    , rrMaskType
    , rrEtag
    , rrCreatorEmail
    , rrRasterType
    , rrLastModifiedTime
    , rrLastModifierEmail
    , rrAcquisitionTime
    , rrName
    , rrBbox
    , rrProcessingStatus
    , rrFiles
    , rrId
    , rrProjectId
    , rrDraftAccessList
    , rrDescription
    , rrAttribution
    , rrTags

    -- * PublishedLayer
    , PublishedLayer
    , publishedLayer
    , plLayerType
    , plName
    , plId
    , plProjectId
    , plDescription

    -- * PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- * Permission
    , Permission
    , permission
    , perRole
    , perId
    , perType
    , perDiscoverable

    -- * Layer
    , Layer
    , layer
    , layaCreationTime
    , layaWritersCanEditPermissions
    , layaStyle
    , layaEtag
    , layaDatasourceType
    , layaPublishingStatus
    , layaCreatorEmail
    , layaLayerType
    , layaLastModifiedTime
    , layaDatasources
    , layaLastModifierEmail
    , layaName
    , layaBbox
    , layaProcessingStatus
    , layaId
    , layaProjectId
    , layaDraftAccessList
    , layaPublishedAccessList
    , layaDescription
    , layaTags

    -- * PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- * MapsengineTablesFeaturesListVersion
    , MapsengineTablesFeaturesListVersion (..)

    -- * PermissionsBatchUpdateResponse
    , PermissionsBatchUpdateResponse
    , permissionsBatchUpdateResponse

    -- * MapKmlLink
    , MapKmlLink
    , mapKmlLink
    , mklDefaultViewport
    , mklVisibility
    , mklName
    , mklType
    , mklKmlUrl

    -- * RasterCollectionRasterType
    , RasterCollectionRasterType (..)

    -- * VectorStyle
    , VectorStyle
    , vectorStyle
    , vsDisplayRules
    , vsFeatureInfo
    , vsType

    -- * PublishedMapsListResponse
    , PublishedMapsListResponse
    , publishedMapsListResponse
    , pmlrMaps
    , pmlrNextPageToken

    -- * PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

    -- * Table
    , Table
    , table
    , ttCreationTime
    , ttWritersCanEditPermissions
    , ttEtag
    , ttCreatorEmail
    , ttLastModifiedTime
    , ttSchema
    , ttLastModifierEmail
    , ttName
    , ttBbox
    , ttProcessingStatus
    , ttFiles
    , ttId
    , ttProjectId
    , ttDraftAccessList
    , ttPublishedAccessList
    , ttSourceEncoding
    , ttDescription
    , ttTags

    -- * GeoJSONLineString
    , GeoJSONLineString
    , geoJSONLineString
    , gjlsCoordinates
    , gjlsType

    -- * MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- * File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- * MapsengineRasterCollectionsListRole
    , MapsengineRasterCollectionsListRole (..)

    -- * LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

    -- * GeoJSONPolygon
    , GeoJSONPolygon
    , geoJSONPolygon
    , gjpCoordinates
    , gjpType

    -- * GeoJSONPoint
    , GeoJSONPoint
    , geoJSONPoint
    , gjsonpCoordinates
    , gjsonpType

    -- * PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- * MapsengineTablesListProcessingStatus
    , MapsengineTablesListProcessingStatus (..)

    -- * MapsengineRasterCollectionsRastersListRole
    , MapsengineRasterCollectionsRastersListRole (..)

    -- * FileUploadStatus
    , FileUploadStatus (..)

    -- * LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBorder
    , lsDash
    , lsLabel

    -- * PublishedLayersListResponse
    , PublishedLayersListResponse
    , publishedLayersListResponse
    , pllrNextPageToken
    , pllrLayers

    -- * GeoJSONGeometryCollection
    , GeoJSONGeometryCollection
    , geoJSONGeometryCollection
    , gjgcGeometries
    , gjgcType

    -- * Alt
    , Alt (..)

    -- * MapPublishingStatus
    , MapPublishingStatus (..)

    -- * RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- * TableProcessingStatus
    , TableProcessingStatus (..)
    ) where

import           Network.Google.MapEngine.Types.Product
import           Network.Google.MapEngine.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Maps Engine API.
mapEngineURL :: BaseUrl
mapEngineURL
  = BaseUrl Https
      "https://www.googleapis.com/mapsengine/v1/"
      443
