{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      mapsEngineURL

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

    -- * MapsEngineRastersListProcessingStatus
    , MapsEngineRastersListProcessingStatus (..)

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

    -- * MapsEngineRastersListRole
    , MapsEngineRastersListRole (..)

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

    -- * MapsEngineLayersGetVersion
    , MapsEngineLayersGetVersion (..)

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

    -- * MapsEngineTablesGetVersion
    , MapsEngineTablesGetVersion (..)

    -- * MapsEngineMapsListRole
    , MapsEngineMapsListRole (..)

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
    , ssBOrder
    , ssFill
    , ssShape

    -- * MapProcessingStatus
    , MapProcessingStatus (..)

    -- * MapsEngineMapsListProcessingStatus
    , MapsEngineMapsListProcessingStatus (..)

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

    -- * MapsEngineLayersListProcessingStatus
    , MapsEngineLayersListProcessingStatus (..)

    -- * TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

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

    -- * IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- * BOrder
    , BOrder
    , bOrder
    , boColor
    , boWidth
    , boOpacity

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

    -- * MapsEngineAssetsListRole
    , MapsEngineAssetsListRole (..)

    -- * MapLayerType
    , MapLayerType (..)

    -- * MapsEngineTablesFeaturesGetVersion
    , MapsEngineTablesFeaturesGetVersion (..)

    -- * RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- * MapsEngineLayersListRole
    , MapsEngineLayersListRole (..)

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

    -- * MapsEngineMapsGetVersion
    , MapsEngineMapsGetVersion (..)

    -- * AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- * MapsEngineRasterCollectionsListProcessingStatus
    , MapsEngineRasterCollectionsListProcessingStatus (..)

    -- * MapsEngineTablesListRole
    , MapsEngineTablesListRole (..)

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

    -- * MapsEngineTablesFeaturesListVersion
    , MapsEngineTablesFeaturesListVersion (..)

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
    , mklKmlURL

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

    -- * MapsEngineRasterCollectionsListRole
    , MapsEngineRasterCollectionsListRole (..)

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

    -- * MapsEngineTablesListProcessingStatus
    , MapsEngineTablesListProcessingStatus (..)

    -- * MapsEngineRasterCollectionsRastersListRole
    , MapsEngineRasterCollectionsRastersListRole (..)

    -- * FileUploadStatus
    , FileUploadStatus (..)

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

    -- * GeoJSONGeometryCollection
    , GeoJSONGeometryCollection
    , geoJSONGeometryCollection
    , gjgcGeometries
    , gjgcType

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

import           Network.Google.MapsEngine.Types.Product
import           Network.Google.MapsEngine.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Maps Engine API.
mapsEngineURL :: BaseUrl
mapsEngineURL
  = BaseUrl Https
      "https://www.googleapis.com/mapsengine/v1/"
      443
