{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.MapsEngine
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Maps Engine API allows developers to store and query
-- geospatial vector and raster data.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference>
module Network.Google.MapsEngine
    (
    -- * API Declaration
      MapsEngineAPI

    -- * Resources

    -- ** MapsEngineAssetsGet
    , module Network.Google.Resource.MapsEngine.Assets.Get

    -- ** MapsEngineAssetsList
    , module Network.Google.Resource.MapsEngine.Assets.List

    -- ** MapsEngineAssetsParentsList
    , module Network.Google.Resource.MapsEngine.Assets.Parents.List

    -- ** MapsEngineAssetsPermissionsList
    , module Network.Google.Resource.MapsEngine.Assets.Permissions.List

    -- ** MapsEngineLayersCancelProcessing
    , module Network.Google.Resource.MapsEngine.Layers.CancelProcessing

    -- ** MapsEngineLayersCreate
    , module Network.Google.Resource.MapsEngine.Layers.Create

    -- ** MapsEngineLayersDelete
    , module Network.Google.Resource.MapsEngine.Layers.Delete

    -- ** MapsEngineLayersGet
    , module Network.Google.Resource.MapsEngine.Layers.Get

    -- ** MapsEngineLayersGetPublished
    , module Network.Google.Resource.MapsEngine.Layers.GetPublished

    -- ** MapsEngineLayersList
    , module Network.Google.Resource.MapsEngine.Layers.List

    -- ** MapsEngineLayersListPublished
    , module Network.Google.Resource.MapsEngine.Layers.ListPublished

    -- ** MapsEngineLayersParentsList
    , module Network.Google.Resource.MapsEngine.Layers.Parents.List

    -- ** MapsEngineLayersPatch
    , module Network.Google.Resource.MapsEngine.Layers.Patch

    -- ** MapsEngineLayersPermissionsBatchDelete
    , module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete

    -- ** MapsEngineLayersPermissionsBatchUpdate
    , module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate

    -- ** MapsEngineLayersPermissionsList
    , module Network.Google.Resource.MapsEngine.Layers.Permissions.List

    -- ** MapsEngineLayersProcess
    , module Network.Google.Resource.MapsEngine.Layers.Process

    -- ** MapsEngineLayersPublish
    , module Network.Google.Resource.MapsEngine.Layers.Publish

    -- ** MapsEngineLayersUnPublish
    , module Network.Google.Resource.MapsEngine.Layers.UnPublish

    -- ** MapsEngineMapsCreate
    , module Network.Google.Resource.MapsEngine.Maps.Create

    -- ** MapsEngineMapsDelete
    , module Network.Google.Resource.MapsEngine.Maps.Delete

    -- ** MapsEngineMapsGet
    , module Network.Google.Resource.MapsEngine.Maps.Get

    -- ** MapsEngineMapsGetPublished
    , module Network.Google.Resource.MapsEngine.Maps.GetPublished

    -- ** MapsEngineMapsList
    , module Network.Google.Resource.MapsEngine.Maps.List

    -- ** MapsEngineMapsListPublished
    , module Network.Google.Resource.MapsEngine.Maps.ListPublished

    -- ** MapsEngineMapsPatch
    , module Network.Google.Resource.MapsEngine.Maps.Patch

    -- ** MapsEngineMapsPermissionsBatchDelete
    , module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete

    -- ** MapsEngineMapsPermissionsBatchUpdate
    , module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate

    -- ** MapsEngineMapsPermissionsList
    , module Network.Google.Resource.MapsEngine.Maps.Permissions.List

    -- ** MapsEngineMapsPublish
    , module Network.Google.Resource.MapsEngine.Maps.Publish

    -- ** MapsEngineMapsUnPublish
    , module Network.Google.Resource.MapsEngine.Maps.UnPublish

    -- ** MapsEngineProjectsIconsCreate
    , module Network.Google.Resource.MapsEngine.Projects.Icons.Create

    -- ** MapsEngineProjectsIconsGet
    , module Network.Google.Resource.MapsEngine.Projects.Icons.Get

    -- ** MapsEngineProjectsIconsList
    , module Network.Google.Resource.MapsEngine.Projects.Icons.List

    -- ** MapsEngineProjectsList
    , module Network.Google.Resource.MapsEngine.Projects.List

    -- ** MapsEngineRasterCollectionsCancelProcessing
    , module Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing

    -- ** MapsEngineRasterCollectionsCreate
    , module Network.Google.Resource.MapsEngine.RasterCollections.Create

    -- ** MapsEngineRasterCollectionsDelete
    , module Network.Google.Resource.MapsEngine.RasterCollections.Delete

    -- ** MapsEngineRasterCollectionsGet
    , module Network.Google.Resource.MapsEngine.RasterCollections.Get

    -- ** MapsEngineRasterCollectionsList
    , module Network.Google.Resource.MapsEngine.RasterCollections.List

    -- ** MapsEngineRasterCollectionsParentsList
    , module Network.Google.Resource.MapsEngine.RasterCollections.Parents.List

    -- ** MapsEngineRasterCollectionsPatch
    , module Network.Google.Resource.MapsEngine.RasterCollections.Patch

    -- ** MapsEngineRasterCollectionsPermissionsBatchDelete
    , module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete

    -- ** MapsEngineRasterCollectionsPermissionsBatchUpdate
    , module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate

    -- ** MapsEngineRasterCollectionsPermissionsList
    , module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List

    -- ** MapsEngineRasterCollectionsProcess
    , module Network.Google.Resource.MapsEngine.RasterCollections.Process

    -- ** MapsEngineRasterCollectionsRastersBatchDelete
    , module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete

    -- ** MapsEngineRasterCollectionsRastersBatchInsert
    , module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert

    -- ** MapsEngineRasterCollectionsRastersList
    , module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.List

    -- ** MapsEngineRastersDelete
    , module Network.Google.Resource.MapsEngine.Rasters.Delete

    -- ** MapsEngineRastersFilesInsert
    , module Network.Google.Resource.MapsEngine.Rasters.Files.Insert

    -- ** MapsEngineRastersGet
    , module Network.Google.Resource.MapsEngine.Rasters.Get

    -- ** MapsEngineRastersList
    , module Network.Google.Resource.MapsEngine.Rasters.List

    -- ** MapsEngineRastersParentsList
    , module Network.Google.Resource.MapsEngine.Rasters.Parents.List

    -- ** MapsEngineRastersPatch
    , module Network.Google.Resource.MapsEngine.Rasters.Patch

    -- ** MapsEngineRastersPermissionsBatchDelete
    , module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete

    -- ** MapsEngineRastersPermissionsBatchUpdate
    , module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate

    -- ** MapsEngineRastersPermissionsList
    , module Network.Google.Resource.MapsEngine.Rasters.Permissions.List

    -- ** MapsEngineRastersProcess
    , module Network.Google.Resource.MapsEngine.Rasters.Process

    -- ** MapsEngineRastersUpload
    , module Network.Google.Resource.MapsEngine.Rasters.Upload

    -- ** MapsEngineTablesCreate
    , module Network.Google.Resource.MapsEngine.Tables.Create

    -- ** MapsEngineTablesDelete
    , module Network.Google.Resource.MapsEngine.Tables.Delete

    -- ** MapsEngineTablesFeaturesBatchDelete
    , module Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete

    -- ** MapsEngineTablesFeaturesBatchInsert
    , module Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert

    -- ** MapsEngineTablesFeaturesBatchPatch
    , module Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch

    -- ** MapsEngineTablesFeaturesGet
    , module Network.Google.Resource.MapsEngine.Tables.Features.Get

    -- ** MapsEngineTablesFeaturesList
    , module Network.Google.Resource.MapsEngine.Tables.Features.List

    -- ** MapsEngineTablesFilesInsert
    , module Network.Google.Resource.MapsEngine.Tables.Files.Insert

    -- ** MapsEngineTablesGet
    , module Network.Google.Resource.MapsEngine.Tables.Get

    -- ** MapsEngineTablesList
    , module Network.Google.Resource.MapsEngine.Tables.List

    -- ** MapsEngineTablesParentsList
    , module Network.Google.Resource.MapsEngine.Tables.Parents.List

    -- ** MapsEngineTablesPatch
    , module Network.Google.Resource.MapsEngine.Tables.Patch

    -- ** MapsEngineTablesPermissionsBatchDelete
    , module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete

    -- ** MapsEngineTablesPermissionsBatchUpdate
    , module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate

    -- ** MapsEngineTablesPermissionsList
    , module Network.Google.Resource.MapsEngine.Tables.Permissions.List

    -- ** MapsEngineTablesProcess
    , module Network.Google.Resource.MapsEngine.Tables.Process

    -- ** MapsEngineTablesUpload
    , module Network.Google.Resource.MapsEngine.Tables.Upload

    -- * Types

    -- ** ValueRange
    , ValueRange
    , valueRange
    , vrMax
    , vrMin

    -- ** GeoJSONProperties
    , GeoJSONProperties
    , geoJSONProperties

    -- ** Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- ** Parent
    , Parent
    , parent
    , pId

    -- ** FeaturesBatchPatchRequest
    , FeaturesBatchPatchRequest
    , featuresBatchPatchRequest
    , fbprFeatures
    , fbprNormalizeGeometries

    -- ** PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- ** RasterProcessingStatus
    , RasterProcessingStatus (..)

    -- ** LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- ** ScaledShapeShape
    , ScaledShapeShape (..)

    -- ** PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- ** RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

    -- ** GeoJSONMultiLineStringType
    , GeoJSONMultiLineStringType (..)

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- ** GeoJSONGeometry
    , GeoJSONGeometry
    , geoJSONGeometry

    -- ** MapLayer
    , MapLayer
    , mapLayer
    , mlDefaultViewport
    , mlVisibility
    , mlKey
    , mlName
    , mlId
    , mlType

    -- ** ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- ** FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- ** AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

    -- ** SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

    -- ** ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

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

    -- ** AssetsListRole
    , AssetsListRole (..)

    -- ** RastersListProcessingStatus
    , RastersListProcessingStatus (..)

    -- ** Project
    , Project
    , project
    , proName
    , proId

    -- ** Color
    , Color
    , color
    , cColor
    , cOpacity

    -- ** LayersListProcessingStatus
    , LayersListProcessingStatus (..)

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

    -- ** LineStyleStroke
    , LineStyleStroke
    , lineStyleStroke
    , lssColor
    , lssWidth
    , lssOpacity

    -- ** RasterCollectionsRastersListRole
    , RasterCollectionsRastersListRole (..)

    -- ** GeoJSONMultiPolygonType
    , GeoJSONMultiPolygonType (..)

    -- ** GeoJSONMultiPointType
    , GeoJSONMultiPointType (..)

    -- ** RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- ** ProcessResponse
    , ProcessResponse
    , processResponse

    -- ** TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- ** PublishedLayerLayerType
    , PublishedLayerLayerType (..)

    -- ** TablesListProcessingStatus
    , TablesListProcessingStatus (..)

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

    -- ** LayerLayerType
    , LayerLayerType (..)

    -- ** ScaledShape
    , ScaledShape
    , scaledShape
    , ssBOrder
    , ssFill
    , ssShape

    -- ** PermissionType
    , PermissionType (..)

    -- ** MapProcessingStatus
    , MapProcessingStatus (..)

    -- ** FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- ** MapsGetVersion
    , MapsGetVersion (..)

    -- ** TablesListRole
    , TablesListRole (..)

    -- ** Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- ** VectorStyleType
    , VectorStyleType (..)

    -- ** GeoJSONLineStringType
    , GeoJSONLineStringType (..)

    -- ** ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- ** FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- ** RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- ** LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- ** MapKmlLinkType
    , MapKmlLinkType (..)

    -- ** LayerDatasourceType
    , LayerDatasourceType (..)

    -- ** GeoJSONGeometryCollectionType
    , GeoJSONGeometryCollectionType (..)

    -- ** IconsListResponse
    , IconsListResponse
    , iconsListResponse
    , ilrNextPageToken
    , ilrIcons

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

    -- ** RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

    -- ** Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- ** MapItem
    , MapItem
    , mapItem

    -- ** GeoJSONPointType
    , GeoJSONPointType (..)

    -- ** GeoJSONPolygonType
    , GeoJSONPolygonType (..)

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

    -- ** AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- ** LayersGetVersion
    , LayersGetVersion (..)

    -- ** TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

    -- ** IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- ** DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- ** BOrder
    , BOrder
    , bOrder
    , boColor
    , boWidth
    , boOpacity

    -- ** Map
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

    -- ** MapLayerType
    , MapLayerType (..)

    -- ** RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- ** GeoJSONMultiLineString
    , GeoJSONMultiLineString
    , geoJSONMultiLineString
    , gjmlsCoordinates
    , gjmlsType

    -- ** ScalingFunction
    , ScalingFunction
    , scalingFunction
    , sfValueRange
    , sfSizeRange
    , sfScalingType
    , sfColumn

    -- ** LabelStyleFontWeight
    , LabelStyleFontWeight (..)

    -- ** MapFolderType
    , MapFolderType (..)

    -- ** RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- ** TablesFeaturesListVersion
    , TablesFeaturesListVersion (..)

    -- ** MapsListProcessingStatus
    , MapsListProcessingStatus (..)

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- ** PublishResponse
    , PublishResponse
    , publishResponse

    -- ** FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- ** Datasource
    , Datasource
    , datasource
    , dId

    -- ** LabelStyleFontStyle
    , LabelStyleFontStyle (..)

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

    -- ** Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- ** GeoJSONMultiPoint
    , GeoJSONMultiPoint
    , geoJSONMultiPoint
    , gjmpCoordinates
    , gjmpType

    -- ** AssetType
    , AssetType (..)

    -- ** RasterRasterType
    , RasterRasterType (..)

    -- ** RasterCollectionsListRole
    , RasterCollectionsListRole (..)

    -- ** FilterOperator
    , FilterOperator (..)

    -- ** TableColumnType
    , TableColumnType (..)

    -- ** GeoJSONMultiPolygon
    , GeoJSONMultiPolygon
    , geoJSONMultiPolygon
    , gjsonmpCoordinates
    , gjsonmpType

    -- ** Layer
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

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- ** RasterCollectionsListProcessingStatus
    , RasterCollectionsListProcessingStatus (..)

    -- ** Raster
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

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- ** Permission
    , Permission
    , permission
    , perRole
    , perId
    , perType
    , perDiscoverable

    -- ** PublishedLayer
    , PublishedLayer
    , publishedLayer
    , plLayerType
    , plName
    , plId
    , plProjectId
    , plDescription

    -- ** LayersListRole
    , LayersListRole (..)

    -- ** Table
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

    -- ** File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- ** VectorStyle
    , VectorStyle
    , vectorStyle
    , vsDisplayRules
    , vsFeatureInfo
    , vsType

    -- ** PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

    -- ** TablesFeaturesGetVersion
    , TablesFeaturesGetVersion (..)

    -- ** MapKmlLink
    , MapKmlLink
    , mapKmlLink
    , mklDefaultViewport
    , mklVisibility
    , mklName
    , mklType
    , mklKmlURL

    -- ** RasterCollectionRasterType
    , RasterCollectionRasterType (..)

    -- ** RastersListRole
    , RastersListRole (..)

    -- ** PermissionsBatchUpdateResponse
    , PermissionsBatchUpdateResponse
    , permissionsBatchUpdateResponse

    -- ** GeoJSONLineString
    , GeoJSONLineString
    , geoJSONLineString
    , gjlsCoordinates
    , gjlsType

    -- ** PublishedMapsListResponse
    , PublishedMapsListResponse
    , publishedMapsListResponse
    , pmlrMaps
    , pmlrNextPageToken

    -- ** MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- ** MapPublishingStatus
    , MapPublishingStatus (..)

    -- ** GeoJSONGeometryCollection
    , GeoJSONGeometryCollection
    , geoJSONGeometryCollection
    , gjgcGeometries
    , gjgcType

    -- ** GeoJSONPolygon
    , GeoJSONPolygon
    , geoJSONPolygon
    , gjpCoordinates
    , gjpType

    -- ** GeoJSONPoint
    , GeoJSONPoint
    , geoJSONPoint
    , gjsonpCoordinates
    , gjsonpType

    -- ** LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

    -- ** RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- ** FileUploadStatus
    , FileUploadStatus (..)

    -- ** MapsListRole
    , MapsListRole (..)

    -- ** TablesGetVersion
    , TablesGetVersion (..)

    -- ** PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- ** TableProcessingStatus
    , TableProcessingStatus (..)

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBOrder
    , lsDash
    , lsLabel

    -- ** PublishedLayersListResponse
    , PublishedLayersListResponse
    , publishedLayersListResponse
    , pllrNextPageToken
    , pllrLayers
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.MapsEngine.Assets.Get
import           Network.Google.Resource.MapsEngine.Assets.List
import           Network.Google.Resource.MapsEngine.Assets.Parents.List
import           Network.Google.Resource.MapsEngine.Assets.Permissions.List
import           Network.Google.Resource.MapsEngine.Layers.CancelProcessing
import           Network.Google.Resource.MapsEngine.Layers.Create
import           Network.Google.Resource.MapsEngine.Layers.Delete
import           Network.Google.Resource.MapsEngine.Layers.Get
import           Network.Google.Resource.MapsEngine.Layers.GetPublished
import           Network.Google.Resource.MapsEngine.Layers.List
import           Network.Google.Resource.MapsEngine.Layers.ListPublished
import           Network.Google.Resource.MapsEngine.Layers.Parents.List
import           Network.Google.Resource.MapsEngine.Layers.Patch
import           Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete
import           Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate
import           Network.Google.Resource.MapsEngine.Layers.Permissions.List
import           Network.Google.Resource.MapsEngine.Layers.Process
import           Network.Google.Resource.MapsEngine.Layers.Publish
import           Network.Google.Resource.MapsEngine.Layers.UnPublish
import           Network.Google.Resource.MapsEngine.Maps.Create
import           Network.Google.Resource.MapsEngine.Maps.Delete
import           Network.Google.Resource.MapsEngine.Maps.Get
import           Network.Google.Resource.MapsEngine.Maps.GetPublished
import           Network.Google.Resource.MapsEngine.Maps.List
import           Network.Google.Resource.MapsEngine.Maps.ListPublished
import           Network.Google.Resource.MapsEngine.Maps.Patch
import           Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete
import           Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate
import           Network.Google.Resource.MapsEngine.Maps.Permissions.List
import           Network.Google.Resource.MapsEngine.Maps.Publish
import           Network.Google.Resource.MapsEngine.Maps.UnPublish
import           Network.Google.Resource.MapsEngine.Projects.Icons.Create
import           Network.Google.Resource.MapsEngine.Projects.Icons.Get
import           Network.Google.Resource.MapsEngine.Projects.Icons.List
import           Network.Google.Resource.MapsEngine.Projects.List
import           Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing
import           Network.Google.Resource.MapsEngine.RasterCollections.Create
import           Network.Google.Resource.MapsEngine.RasterCollections.Delete
import           Network.Google.Resource.MapsEngine.RasterCollections.Get
import           Network.Google.Resource.MapsEngine.RasterCollections.List
import           Network.Google.Resource.MapsEngine.RasterCollections.Parents.List
import           Network.Google.Resource.MapsEngine.RasterCollections.Patch
import           Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete
import           Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate
import           Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List
import           Network.Google.Resource.MapsEngine.RasterCollections.Process
import           Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete
import           Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert
import           Network.Google.Resource.MapsEngine.RasterCollections.Rasters.List
import           Network.Google.Resource.MapsEngine.Rasters.Delete
import           Network.Google.Resource.MapsEngine.Rasters.Files.Insert
import           Network.Google.Resource.MapsEngine.Rasters.Get
import           Network.Google.Resource.MapsEngine.Rasters.List
import           Network.Google.Resource.MapsEngine.Rasters.Parents.List
import           Network.Google.Resource.MapsEngine.Rasters.Patch
import           Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete
import           Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate
import           Network.Google.Resource.MapsEngine.Rasters.Permissions.List
import           Network.Google.Resource.MapsEngine.Rasters.Process
import           Network.Google.Resource.MapsEngine.Rasters.Upload
import           Network.Google.Resource.MapsEngine.Tables.Create
import           Network.Google.Resource.MapsEngine.Tables.Delete
import           Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete
import           Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert
import           Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch
import           Network.Google.Resource.MapsEngine.Tables.Features.Get
import           Network.Google.Resource.MapsEngine.Tables.Features.List
import           Network.Google.Resource.MapsEngine.Tables.Files.Insert
import           Network.Google.Resource.MapsEngine.Tables.Get
import           Network.Google.Resource.MapsEngine.Tables.List
import           Network.Google.Resource.MapsEngine.Tables.Parents.List
import           Network.Google.Resource.MapsEngine.Tables.Patch
import           Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete
import           Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate
import           Network.Google.Resource.MapsEngine.Tables.Permissions.List
import           Network.Google.Resource.MapsEngine.Tables.Process
import           Network.Google.Resource.MapsEngine.Tables.Upload

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Maps Engine API service.
type MapsEngineAPI =
     MapsPermissionsListResource :<|>
       MapsPermissionsBatchUpdateResource
       :<|> MapsPermissionsBatchDeleteResource
       :<|> MapsListResource
       :<|> MapsListPublishedResource
       :<|> MapsPatchResource
       :<|> MapsGetResource
       :<|> MapsGetPublishedResource
       :<|> MapsCreateResource
       :<|> MapsUnPublishResource
       :<|> MapsDeleteResource
       :<|> MapsPublishResource
       :<|> TablesParentsListResource
       :<|> TablesFeaturesListResource
       :<|> TablesFeaturesBatchInsertResource
       :<|> TablesFeaturesGetResource
       :<|> TablesFeaturesBatchPatchResource
       :<|> TablesFeaturesBatchDeleteResource
       :<|> TablesFilesInsertResource
       :<|> TablesPermissionsListResource
       :<|> TablesPermissionsBatchUpdateResource
       :<|> TablesPermissionsBatchDeleteResource
       :<|> TablesListResource
       :<|> TablesProcessResource
       :<|> TablesPatchResource
       :<|> TablesGetResource
       :<|> TablesCreateResource
       :<|> TablesUploadResource
       :<|> TablesDeleteResource
       :<|> LayersParentsListResource
       :<|> LayersPermissionsListResource
       :<|> LayersPermissionsBatchUpdateResource
       :<|> LayersPermissionsBatchDeleteResource
       :<|> LayersListResource
       :<|> LayersListPublishedResource
       :<|> LayersProcessResource
       :<|> LayersPatchResource
       :<|> LayersGetResource
       :<|> LayersGetPublishedResource
       :<|> LayersCreateResource
       :<|> LayersUnPublishResource
       :<|> LayersCancelProcessingResource
       :<|> LayersDeleteResource
       :<|> LayersPublishResource
       :<|> RastersParentsListResource
       :<|> RastersFilesInsertResource
       :<|> RastersPermissionsListResource
       :<|> RastersPermissionsBatchUpdateResource
       :<|> RastersPermissionsBatchDeleteResource
       :<|> RastersListResource
       :<|> RastersProcessResource
       :<|> RastersPatchResource
       :<|> RastersGetResource
       :<|> RastersUploadResource
       :<|> RastersDeleteResource
       :<|> AssetsParentsListResource
       :<|> AssetsPermissionsListResource
       :<|> AssetsListResource
       :<|> AssetsGetResource
       :<|> RasterCollectionsParentsListResource
       :<|> RasterCollectionsPermissionsListResource
       :<|> RasterCollectionsPermissionsBatchUpdateResource
       :<|> RasterCollectionsPermissionsBatchDeleteResource
       :<|> RasterCollectionsRastersListResource
       :<|> RasterCollectionsRastersBatchInsertResource
       :<|> RasterCollectionsRastersBatchDeleteResource
       :<|> RasterCollectionsListResource
       :<|> RasterCollectionsProcessResource
       :<|> RasterCollectionsPatchResource
       :<|> RasterCollectionsGetResource
       :<|> RasterCollectionsCreateResource
       :<|> RasterCollectionsCancelProcessingResource
       :<|> RasterCollectionsDeleteResource
       :<|> ProjectsIconsListResource
       :<|> ProjectsIconsGetResource
       :<|> ProjectsIconsCreateResource
       :<|> ProjectsListResource
