{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Map.Engine
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Maps Engine API allows developers to store and query
-- geospatial vector and raster data.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference>
module Network.Google.Map.Engine
    (
    -- * REST Resources

    -- ** Google Maps Engine API
      MapEngine
    , mapEngine
    , mapEngineURL

    -- ** mapsengine.assets.parents.list
    , module Network.Google.API.Mapsengine.Assets.Parents.List

    -- ** mapsengine.assets.permissions.list
    , module Network.Google.API.Mapsengine.Assets.Permissions.List

    -- ** mapsengine.layers.parents.list
    , module Network.Google.API.Mapsengine.Layers.Parents.List

    -- ** mapsengine.layers.permissions.batchDelete
    , module Network.Google.API.Mapsengine.Layers.Permissions.BatchDelete

    -- ** mapsengine.layers.permissions.batchUpdate
    , module Network.Google.API.Mapsengine.Layers.Permissions.BatchUpdate

    -- ** mapsengine.layers.permissions.list
    , module Network.Google.API.Mapsengine.Layers.Permissions.List

    -- ** mapsengine.maps.permissions.batchDelete
    , module Network.Google.API.Mapsengine.Maps.Permissions.BatchDelete

    -- ** mapsengine.maps.permissions.batchUpdate
    , module Network.Google.API.Mapsengine.Maps.Permissions.BatchUpdate

    -- ** mapsengine.maps.permissions.list
    , module Network.Google.API.Mapsengine.Maps.Permissions.List

    -- ** mapsengine.projects.icons.create
    , module Network.Google.API.Mapsengine.Projects.Icons.Create

    -- ** mapsengine.projects.icons.get
    , module Network.Google.API.Mapsengine.Projects.Icons.Get

    -- ** mapsengine.projects.icons.list
    , module Network.Google.API.Mapsengine.Projects.Icons.List

    -- ** mapsengine.rasterCollections.parents.list
    , module Network.Google.API.Mapsengine.RasterCollections.Parents.List

    -- ** mapsengine.rasterCollections.permissions.batchDelete
    , module Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchDelete

    -- ** mapsengine.rasterCollections.permissions.batchUpdate
    , module Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchUpdate

    -- ** mapsengine.rasterCollections.permissions.list
    , module Network.Google.API.Mapsengine.RasterCollections.Permissions.List

    -- ** mapsengine.rasterCollections.rasters.batchDelete
    , module Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchDelete

    -- ** mapsengine.rasterCollections.rasters.batchInsert
    , module Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchInsert

    -- ** mapsengine.rasterCollections.rasters.list
    , module Network.Google.API.Mapsengine.RasterCollections.Rasters.List

    -- ** mapsengine.rasters.files.insert
    , module Network.Google.API.Mapsengine.Rasters.Files.Insert

    -- ** mapsengine.rasters.parents.list
    , module Network.Google.API.Mapsengine.Rasters.Parents.List

    -- ** mapsengine.rasters.permissions.batchDelete
    , module Network.Google.API.Mapsengine.Rasters.Permissions.BatchDelete

    -- ** mapsengine.rasters.permissions.batchUpdate
    , module Network.Google.API.Mapsengine.Rasters.Permissions.BatchUpdate

    -- ** mapsengine.rasters.permissions.list
    , module Network.Google.API.Mapsengine.Rasters.Permissions.List

    -- ** mapsengine.tables.features.batchDelete
    , module Network.Google.API.Mapsengine.Tables.Features.BatchDelete

    -- ** mapsengine.tables.features.batchInsert
    , module Network.Google.API.Mapsengine.Tables.Features.BatchInsert

    -- ** mapsengine.tables.features.batchPatch
    , module Network.Google.API.Mapsengine.Tables.Features.BatchPatch

    -- ** mapsengine.tables.features.get
    , module Network.Google.API.Mapsengine.Tables.Features.Get

    -- ** mapsengine.tables.features.list
    , module Network.Google.API.Mapsengine.Tables.Features.List

    -- ** mapsengine.tables.files.insert
    , module Network.Google.API.Mapsengine.Tables.Files.Insert

    -- ** mapsengine.tables.parents.list
    , module Network.Google.API.Mapsengine.Tables.Parents.List

    -- ** mapsengine.tables.permissions.batchDelete
    , module Network.Google.API.Mapsengine.Tables.Permissions.BatchDelete

    -- ** mapsengine.tables.permissions.batchUpdate
    , module Network.Google.API.Mapsengine.Tables.Permissions.BatchUpdate

    -- ** mapsengine.tables.permissions.list
    , module Network.Google.API.Mapsengine.Tables.Permissions.List

    -- * Types

    -- ** RasterCollectionsRastersBatchInsertRequest
    , RasterCollectionsRastersBatchInsertRequest
    , rasterCollectionsRastersBatchInsertRequest
    , rcrbirIds

    -- ** PublishedMap
    , PublishedMap
    , publishedMap
    , pmDefaultViewport
    , pmContents
    , pmName
    , pmId
    , pmProjectId
    , pmDescription

    -- ** RasterCollectionsRastersList'Role
    , RasterCollectionsRastersList'Role (..)

    -- ** Map
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

    -- ** TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

    -- ** Border
    , Border
    , border
    , bColor
    , bWidth
    , bOpacity

    -- ** AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- ** IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- ** MapLayerType
    , MapLayerType (..)

    -- ** DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- ** GeoJsonMultiLineString
    , GeoJsonMultiLineString
    , geoJsonMultiLineString
    , gjmlsCoordinates
    , gjmlsType

    -- ** LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- ** ScalingFunction
    , ScalingFunction
    , scalingFunction
    , sfValueRange
    , sfSizeRange
    , sfScalingType
    , sfColumn

    -- ** RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- ** GeoJsonPointType
    , GeoJsonPointType (..)

    -- ** FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- ** TableProcessingStatus
    , TableProcessingStatus (..)

    -- ** MapPublishingStatus
    , MapPublishingStatus (..)

    -- ** GeoJsonPolygonType
    , GeoJsonPolygonType (..)

    -- ** SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

    -- ** TablesFeaturesGet'Version
    , TablesFeaturesGet'Version (..)

    -- ** Alt
    , Alt (..)

    -- ** MapFolder
    , MapFolder
    , mapFolder
    , mfExpandable
    , mfDefaultViewport
    , mfContents
    , mfVisibility
    , mfKey
    , mfName
    , mfType

    -- ** ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- ** RasterCollectionsRaster
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

    -- ** Datasource
    , Datasource
    , datasource
    , dId

    -- ** FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- ** MapKmlLinkType
    , MapKmlLinkType (..)

    -- ** MapProcessingStatus
    , MapProcessingStatus (..)

    -- ** Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- ** GeoJsonMultiPolygon
    , GeoJsonMultiPolygon
    , geoJsonMultiPolygon
    , gjmpCoordinates
    , gjmpType

    -- ** GeoJsonMultiPoint
    , GeoJsonMultiPoint
    , geoJsonMultiPoint
    , gjsonmpCoordinates
    , gjsonmpType

    -- ** Raster
    , Raster
    , raster
    , rCreationTime
    , rWritersCanEditPermissions
    , rMaskType
    , rEtag
    , rCreatorEmail
    , rRasterType
    , rLastModifiedTime
    , rLastModifierEmail
    , rAcquisitionTime
    , rName
    , rBbox
    , rProcessingStatus
    , rFiles
    , rId
    , rProjectId
    , rDraftAccessList
    , rDescription
    , rAttribution
    , rTags

    -- ** Layer
    , Layer
    , layer
    , lCreationTime
    , lWritersCanEditPermissions
    , lStyle
    , lEtag
    , lDatasourceType
    , lPublishingStatus
    , lCreatorEmail
    , lLayerType
    , lLastModifiedTime
    , lDatasources
    , lLastModifierEmail
    , lName
    , lBbox
    , lProcessingStatus
    , lId
    , lProjectId
    , lDraftAccessList
    , lPublishedAccessList
    , lDescription
    , lTags

    -- ** GeoJsonMultiPointType
    , GeoJsonMultiPointType (..)

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- ** PublishedLayer
    , PublishedLayer
    , publishedLayer
    , plLayerType
    , plName
    , plId
    , plProjectId
    , plDescription

    -- ** PublishedLayerLayerType
    , PublishedLayerLayerType (..)

    -- ** FilterOperator
    , FilterOperator (..)

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- ** RasterRasterType
    , RasterRasterType (..)

    -- ** GeoJsonMultiPolygonType
    , GeoJsonMultiPolygonType (..)

    -- ** Permission
    , Permission
    , permission
    , pRole
    , pId
    , pType
    , pDiscoverable

    -- ** RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- ** FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- ** LineStyleStroke
    , LineStyleStroke
    , lineStyleStroke
    , lssColor
    , lssWidth
    , lssOpacity

    -- ** ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- ** PublishedLayersListResponse
    , PublishedLayersListResponse
    , publishedLayersListResponse
    , pllrNextPageToken
    , pllrLayers

    -- ** RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- ** GeoJsonPoint
    , GeoJsonPoint
    , geoJsonPoint
    , gjpCoordinates
    , gjpType

    -- ** PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- ** RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBorder
    , lsDash
    , lsLabel

    -- ** GeoJsonPolygon
    , GeoJsonPolygon
    , geoJsonPolygon
    , gjsonpCoordinates
    , gjsonpType

    -- ** LabelStyleFontWeight
    , LabelStyleFontWeight (..)

    -- ** GeoJsonGeometryCollection
    , GeoJsonGeometryCollection
    , geoJsonGeometryCollection
    , gjgcGeometries
    , gjgcType

    -- ** LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

    -- ** PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- ** GeoJsonMultiLineStringType
    , GeoJsonMultiLineStringType (..)

    -- ** PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** FeaturesBatchPatchRequest
    , FeaturesBatchPatchRequest
    , featuresBatchPatchRequest
    , fbprFeatures
    , fbprNormalizeGeometries

    -- ** ValueRange
    , ValueRange
    , valueRange
    , vrMax
    , vrMin

    -- ** Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- ** GeoJsonProperties
    , GeoJsonProperties
    , geoJsonProperties

    -- ** Parent
    , Parent
    , parent
    , parId

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- ** RasterProcessingStatus
    , RasterProcessingStatus (..)

    -- ** MapLayer
    , MapLayer
    , mapLayer
    , mlDefaultViewport
    , mlVisibility
    , mlKey
    , mlName
    , mlId
    , mlType

    -- ** GeoJsonGeometry
    , GeoJsonGeometry
    , geoJsonGeometry

    -- ** RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

    -- ** ScaledShapeShape
    , ScaledShapeShape (..)

    -- ** FileUploadStatus
    , FileUploadStatus (..)

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- ** GeoJsonGeometryCollectionType
    , GeoJsonGeometryCollectionType (..)

    -- ** PublishResponse
    , PublishResponse
    , publishResponse

    -- ** RasterCollection
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

    -- ** GeoJsonLineStringType
    , GeoJsonLineStringType (..)

    -- ** Project
    , Project
    , project
    , proName
    , proId

    -- ** LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- ** LayerDatasourceType
    , LayerDatasourceType (..)

    -- ** RasterCollectionRasterType
    , RasterCollectionRasterType (..)

    -- ** Color
    , Color
    , color
    , cColor
    , cOpacity

    -- ** VectorStyleType
    , VectorStyleType (..)

    -- ** Asset
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

    -- ** RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- ** PermissionType
    , PermissionType (..)

    -- ** TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- ** ProcessResponse
    , ProcessResponse
    , processResponse

    -- ** LayerLayerType
    , LayerLayerType (..)

    -- ** AssetType
    , AssetType (..)

    -- ** Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- ** ScaledShape
    , ScaledShape
    , scaledShape
    , ssBorder
    , ssFill
    , ssShape

    -- ** TableColumnType
    , TableColumnType (..)

    -- ** FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- ** GeoJsonLineString
    , GeoJsonLineString
    , geoJsonLineString
    , gjlsCoordinates
    , gjlsType

    -- ** Table
    , Table
    , table
    , tabCreationTime
    , tabWritersCanEditPermissions
    , tabEtag
    , tabCreatorEmail
    , tabLastModifiedTime
    , tabSchema
    , tabLastModifierEmail
    , tabName
    , tabBbox
    , tabProcessingStatus
    , tabFiles
    , tabId
    , tabProjectId
    , tabDraftAccessList
    , tabPublishedAccessList
    , tabSourceEncoding
    , tabDescription
    , tabTags

    -- ** PermissionsBatchUpdateResponse
    , PermissionsBatchUpdateResponse
    , permissionsBatchUpdateResponse

    -- ** MapKmlLink
    , MapKmlLink
    , mapKmlLink
    , mklDefaultViewport
    , mklVisibility
    , mklName
    , mklType
    , mklKmlUrl

    -- ** PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

    -- ** VectorStyle
    , VectorStyle
    , vectorStyle
    , vsDisplayRules
    , vsFeatureInfo
    , vsType

    -- ** PublishedMapsListResponse
    , PublishedMapsListResponse
    , publishedMapsListResponse
    , pmlrMaps
    , pmlrNextPageToken

    -- ** LabelStyleFontStyle
    , LabelStyleFontStyle (..)

    -- ** TablesFeaturesList'Version
    , TablesFeaturesList'Version (..)

    -- ** File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- ** MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- ** LabelStyle
    , LabelStyle
    , labelStyle
    , lsFontStyle
    , lsColor
    , lsSize
    , lsOpacity
    , lsOutline
    , lsFontWeight
    , lsColumn

    -- ** ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

    -- ** Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- ** MapFolderType
    , MapFolderType (..)

    -- ** MapItem
    , MapItem
    , mapItem

    -- ** RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

    -- ** AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

    -- ** IconsListResponse
    , IconsListResponse
    , iconsListResponse
    , ilrNextPageToken
    , ilrIcons
    ) where

import           Network.Google.API.Mapsengine.Assets.Parents.List
import           Network.Google.API.Mapsengine.Assets.Permissions.List
import           Network.Google.API.Mapsengine.Layers.Parents.List
import           Network.Google.API.Mapsengine.Layers.Permissions.BatchDelete
import           Network.Google.API.Mapsengine.Layers.Permissions.BatchUpdate
import           Network.Google.API.Mapsengine.Layers.Permissions.List
import           Network.Google.API.Mapsengine.Maps.Permissions.BatchDelete
import           Network.Google.API.Mapsengine.Maps.Permissions.BatchUpdate
import           Network.Google.API.Mapsengine.Maps.Permissions.List
import           Network.Google.API.Mapsengine.Projects.Icons.Create
import           Network.Google.API.Mapsengine.Projects.Icons.Get
import           Network.Google.API.Mapsengine.Projects.Icons.List
import           Network.Google.API.Mapsengine.RasterCollections.Parents.List
import           Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchDelete
import           Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchUpdate
import           Network.Google.API.Mapsengine.RasterCollections.Permissions.List
import           Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchDelete
import           Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchInsert
import           Network.Google.API.Mapsengine.RasterCollections.Rasters.List
import           Network.Google.API.Mapsengine.Rasters.Files.Insert
import           Network.Google.API.Mapsengine.Rasters.Parents.List
import           Network.Google.API.Mapsengine.Rasters.Permissions.BatchDelete
import           Network.Google.API.Mapsengine.Rasters.Permissions.BatchUpdate
import           Network.Google.API.Mapsengine.Rasters.Permissions.List
import           Network.Google.API.Mapsengine.Tables.Features.BatchDelete
import           Network.Google.API.Mapsengine.Tables.Features.BatchInsert
import           Network.Google.API.Mapsengine.Tables.Features.BatchPatch
import           Network.Google.API.Mapsengine.Tables.Features.Get
import           Network.Google.API.Mapsengine.Tables.Features.List
import           Network.Google.API.Mapsengine.Tables.Files.Insert
import           Network.Google.API.Mapsengine.Tables.Parents.List
import           Network.Google.API.Mapsengine.Tables.Permissions.BatchDelete
import           Network.Google.API.Mapsengine.Tables.Permissions.BatchUpdate
import           Network.Google.API.Mapsengine.Tables.Permissions.List
import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type MapEngine =
     RasterCollectionsRastersListAPI :<|>
       MapsPermissionsBatchDeleteAPI
       :<|> ProjectsIconsListAPI
       :<|> TablesFeaturesBatchPatchAPI
       :<|> RasterCollectionsPermissionsBatchDeleteAPI
       :<|> MapsPermissionsListAPI
       :<|> TablesFilesInsertAPI
       :<|> LayersPermissionsListAPI
       :<|> RastersPermissionsListAPI
       :<|> MapsPermissionsBatchUpdateAPI
       :<|> RasterCollectionsParentsListAPI
       :<|> LayersPermissionsBatchUpdateAPI
       :<|> AssetsPermissionsListAPI
       :<|> RastersPermissionsBatchUpdateAPI
       :<|> RasterCollectionsRastersBatchDeleteAPI
       :<|> TablesFeaturesBatchInsertAPI
       :<|> RastersFilesInsertAPI
       :<|> TablesFeaturesBatchDeleteAPI
       :<|> TablesPermissionsBatchDeleteAPI
       :<|> RasterCollectionsPermissionsListAPI
       :<|> AssetsParentsListAPI
       :<|> LayersParentsListAPI
       :<|> RastersParentsListAPI
       :<|> RasterCollectionsPermissionsBatchUpdateAPI
       :<|> TablesPermissionsBatchUpdateAPI
       :<|> TablesFeaturesListAPI
       :<|> TablesParentsListAPI
       :<|> TablesFeaturesGetAPI
       :<|> ProjectsIconsCreateAPI
       :<|> ProjectsIconsGetAPI
       :<|> RastersPermissionsBatchDeleteAPI
       :<|> RasterCollectionsRastersBatchInsertAPI
       :<|> LayersPermissionsBatchDeleteAPI
       :<|> TablesPermissionsListAPI

mapEngine :: Proxy MapEngine
mapEngine = Proxy
