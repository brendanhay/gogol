{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsEngine.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsEngine.Types
    (
    -- * Service Request
      mapsEngineRequest

    -- * ValueRange
    , ValueRange
    , valueRange
    , vrMax
    , vrMin

    -- * GeoJSONProperties
    , GeoJSONProperties
    , geoJSONProperties
    , gjpAddtional

    -- * Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- * Parent
    , Parent
    , parent
    , pId

    -- * FeaturesBatchPatchRequest
    , FeaturesBatchPatchRequest
    , featuresBatchPatchRequest
    , fbprFeatures
    , fbprNormalizeGeometries

    -- * PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- * RasterProcessingStatus
    , RasterProcessingStatus (..)

    -- * LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- * ScaledShapeShape
    , ScaledShapeShape (..)

    -- * PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- * RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

    -- * GeoJSONMultiLineStringType
    , GeoJSONMultiLineStringType (..)

    -- * PermissionRole
    , PermissionRole (..)

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

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

    -- * ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- * FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- * AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

    -- * SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

    -- * ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

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

    -- * AssetsListRole
    , AssetsListRole (..)

    -- * RastersListProcessingStatus
    , RastersListProcessingStatus (..)

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

    -- * LayersListProcessingStatus
    , LayersListProcessingStatus (..)

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

    -- * RasterCollectionsRastersListRole
    , RasterCollectionsRastersListRole (..)

    -- * GeoJSONMultiPolygonType
    , GeoJSONMultiPolygonType (..)

    -- * GeoJSONMultiPointType
    , GeoJSONMultiPointType (..)

    -- * RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- * ProcessResponse
    , ProcessResponse
    , processResponse

    -- * TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- * PublishedLayerLayerType
    , PublishedLayerLayerType (..)

    -- * TablesListProcessingStatus
    , TablesListProcessingStatus (..)

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

    -- * LayerLayerType
    , LayerLayerType (..)

    -- * ScaledShape
    , ScaledShape
    , scaledShape
    , ssBOrder
    , ssFill
    , ssShape

    -- * PermissionType
    , PermissionType (..)

    -- * MapProcessingStatus
    , MapProcessingStatus (..)

    -- * FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- * MapsGetVersion
    , MapsGetVersion (..)

    -- * TablesListRole
    , TablesListRole (..)

    -- * Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- * VectorStyleType
    , VectorStyleType (..)

    -- * GeoJSONLineStringType
    , GeoJSONLineStringType (..)

    -- * ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- * FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- * RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- * LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- * MapKmlLinkType
    , MapKmlLinkType (..)

    -- * LayerDatasourceType
    , LayerDatasourceType (..)

    -- * GeoJSONGeometryCollectionType
    , GeoJSONGeometryCollectionType (..)

    -- * IconsListResponse
    , IconsListResponse
    , iconsListResponse
    , ilrNextPageToken
    , ilrIcons

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

    -- * RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

    -- * Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- * MapItem
    , MapItem
    , mapItem

    -- * GeoJSONPointType
    , GeoJSONPointType (..)

    -- * GeoJSONPolygonType
    , GeoJSONPolygonType (..)

    -- * RasterCollectionsRastersBatchInsertRequest
    , RasterCollectionsRastersBatchInsertRequest
    , rasterCollectionsRastersBatchInsertRequest
    , rcrbirIds

    -- * PublishedMap
    , PublishedMap
    , publishedMap
    , pmDefaultViewport
    , pmContents
    , pmName
    , pmId
    , pmProjectId
    , pmDescription

    -- * AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- * LayersGetVersion
    , LayersGetVersion (..)

    -- * TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

    -- * IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- * DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- * BOrder
    , BOrder
    , bOrder
    , boColor
    , boWidth
    , boOpacity

    -- * Map
    , Map
    , map'
    , mapaCreationTime
    , mapaWritersCanEditPermissions
    , mapaEtag
    , mapaDefaultViewport
    , mapaContents
    , mapaPublishingStatus
    , mapaCreatorEmail
    , mapaLastModifiedTime
    , mapaLastModifierEmail
    , mapaVersions
    , mapaName
    , mapaBbox
    , mapaProcessingStatus
    , mapaId
    , mapaProjectId
    , mapaDraftAccessList
    , mapaPublishedAccessList
    , mapaDescription
    , mapaTags

    -- * MapLayerType
    , MapLayerType (..)

    -- * RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

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

    -- * LabelStyleFontWeight
    , LabelStyleFontWeight (..)

    -- * MapFolderType
    , MapFolderType (..)

    -- * RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- * TablesFeaturesListVersion
    , TablesFeaturesListVersion (..)

    -- * MapsListProcessingStatus
    , MapsListProcessingStatus (..)

    -- * AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- * PublishResponse
    , PublishResponse
    , publishResponse

    -- * FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- * Datasource
    , Datasource
    , datasource
    , dId

    -- * LabelStyleFontStyle
    , LabelStyleFontStyle (..)

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

    -- * Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- * GeoJSONMultiPoint
    , GeoJSONMultiPoint
    , geoJSONMultiPoint
    , gjmpCoordinates
    , gjmpType

    -- * AssetType
    , AssetType (..)

    -- * RasterRasterType
    , RasterRasterType (..)

    -- * RasterCollectionsListRole
    , RasterCollectionsListRole (..)

    -- * FilterOperator
    , FilterOperator (..)

    -- * TableColumnType
    , TableColumnType (..)

    -- * GeoJSONMultiPolygon
    , GeoJSONMultiPolygon
    , geoJSONMultiPolygon
    , gjsonmpCoordinates
    , gjsonmpType

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

    -- * PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- * RasterCollectionsListProcessingStatus
    , RasterCollectionsListProcessingStatus (..)

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

    -- * PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- * Permission
    , Permission
    , permission
    , perRole
    , perId
    , perType
    , perDiscoverable

    -- * PublishedLayer
    , PublishedLayer
    , publishedLayer
    , plLayerType
    , plName
    , plId
    , plProjectId
    , plDescription

    -- * LayersListRole
    , LayersListRole (..)

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

    -- * File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- * VectorStyle
    , VectorStyle
    , vectorStyle
    , vsDisplayRules
    , vsFeatureInfo
    , vsType

    -- * PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

    -- * TablesFeaturesGetVersion
    , TablesFeaturesGetVersion (..)

    -- * MapKmlLink
    , MapKmlLink
    , mapKmlLink
    , mklDefaultViewport
    , mklVisibility
    , mklName
    , mklType
    , mklKmlURL

    -- * RasterCollectionRasterType
    , RasterCollectionRasterType (..)

    -- * RastersListRole
    , RastersListRole (..)

    -- * PermissionsBatchUpdateResponse
    , PermissionsBatchUpdateResponse
    , permissionsBatchUpdateResponse

    -- * GeoJSONLineString
    , GeoJSONLineString
    , geoJSONLineString
    , gjlsCoordinates
    , gjlsType

    -- * PublishedMapsListResponse
    , PublishedMapsListResponse
    , publishedMapsListResponse
    , pmlrMaps
    , pmlrNextPageToken

    -- * MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- * MapPublishingStatus
    , MapPublishingStatus (..)

    -- * GeoJSONGeometryCollection
    , GeoJSONGeometryCollection
    , geoJSONGeometryCollection
    , gjgcGeometries
    , gjgcType

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

    -- * LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

    -- * RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- * FileUploadStatus
    , FileUploadStatus (..)

    -- * MapsListRole
    , MapsListRole (..)

    -- * TablesGetVersion
    , TablesGetVersion (..)

    -- * PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- * TableProcessingStatus
    , TableProcessingStatus (..)

    -- * LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBOrder
    , lsDash
    , lsLabel

    -- * PublishedLayersListResponse
    , PublishedLayersListResponse
    , publishedLayersListResponse
    , pllrNextPageToken
    , pllrLayers
    ) where

import           Network.Google.MapsEngine.Types.Product
import           Network.Google.MapsEngine.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Maps Engine API. This contains the host and root path used as a starting point for constructing service requests.
mapsEngineRequest :: RequestBuilder
mapsEngineRequest
  = defaultRequest "https://www.googleapis.com/"
      "mapsengine/v1/"
