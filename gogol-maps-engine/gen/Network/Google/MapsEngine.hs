{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Google Maps Engine API allows developers to store and query
-- geospatial vector and raster data.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference>
module Network.Google.MapsEngine
    (
    -- * API
      MapsEngineAPI
    , mapsEngineAPI
    , mapsEngineURL

    -- * Service Methods

    -- * REST Resources

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

    -- ** Parent
    , Parent
    , parent
    , pId

    -- ** PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- ** GeoJSONProperties
    , GeoJSONProperties
    , geoJSONProperties

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

    -- ** LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- ** Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- ** ScaledShapeShape
    , ScaledShapeShape (..)

    -- ** MapsEngineRastersListProcessingStatus
    , MapsEngineRastersListProcessingStatus (..)

    -- ** PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- ** RasterProcessingStatus
    , RasterProcessingStatus (..)

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

    -- ** RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- ** GeoJSONMultiLineStringType
    , GeoJSONMultiLineStringType (..)

    -- ** MapsEngineRastersListRole
    , MapsEngineRastersListRole (..)

    -- ** ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- ** FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- ** ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

    -- ** SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

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

    -- ** AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

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

    -- ** MapsEngineLayersGetVersion
    , MapsEngineLayersGetVersion (..)

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

    -- ** ProcessResponse
    , ProcessResponse
    , processResponse

    -- ** TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- ** MapsEngineTablesGetVersion
    , MapsEngineTablesGetVersion (..)

    -- ** MapsEngineMapsListRole
    , MapsEngineMapsListRole (..)

    -- ** RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- ** LayerLayerType
    , LayerLayerType (..)

    -- ** GeoJSONMultiPolygonType
    , GeoJSONMultiPolygonType (..)

    -- ** PublishedLayerLayerType
    , PublishedLayerLayerType (..)

    -- ** GeoJSONMultiPointType
    , GeoJSONMultiPointType (..)

    -- ** ScaledShape
    , ScaledShape
    , scaledShape
    , ssBOrder
    , ssFill
    , ssShape

    -- ** MapProcessingStatus
    , MapProcessingStatus (..)

    -- ** MapsEngineMapsListProcessingStatus
    , MapsEngineMapsListProcessingStatus (..)

    -- ** Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- ** FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- ** PermissionType
    , PermissionType (..)

    -- ** RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- ** GeoJSONLineStringType
    , GeoJSONLineStringType (..)

    -- ** VectorStyleType
    , VectorStyleType (..)

    -- ** MapKmlLinkType
    , MapKmlLinkType (..)

    -- ** LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- ** LayerDatasourceType
    , LayerDatasourceType (..)

    -- ** FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- ** ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- ** RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

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

    -- ** MapItem
    , MapItem
    , mapItem

    -- ** GeoJSONGeometryCollectionType
    , GeoJSONGeometryCollectionType (..)

    -- ** GeoJSONPointType
    , GeoJSONPointType (..)

    -- ** GeoJSONPolygonType
    , GeoJSONPolygonType (..)

    -- ** IconsListResponse
    , IconsListResponse
    , iconsListResponse
    , ilrNextPageToken
    , ilrIcons

    -- ** Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- ** AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- ** MapsEngineLayersListProcessingStatus
    , MapsEngineLayersListProcessingStatus (..)

    -- ** TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

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

    -- ** IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

    -- ** BOrder
    , BOrder
    , bOrder
    , boColor
    , boWidth
    , boOpacity

    -- ** DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- ** PublishedMap
    , PublishedMap
    , publishedMap
    , pmDefaultViewport
    , pmContents
    , pmName
    , pmId
    , pmProjectId
    , pmDescription

    -- ** RasterCollectionsRastersBatchInsertRequest
    , RasterCollectionsRastersBatchInsertRequest
    , rasterCollectionsRastersBatchInsertRequest
    , rcrbirIds

    -- ** MapsEngineAssetsListRole
    , MapsEngineAssetsListRole (..)

    -- ** MapLayerType
    , MapLayerType (..)

    -- ** MapsEngineTablesFeaturesGetVersion
    , MapsEngineTablesFeaturesGetVersion (..)

    -- ** RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- ** MapsEngineLayersListRole
    , MapsEngineLayersListRole (..)

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

    -- ** MapFolderType
    , MapFolderType (..)

    -- ** LabelStyleFontWeight
    , LabelStyleFontWeight (..)

    -- ** RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- ** MapsEngineMapsGetVersion
    , MapsEngineMapsGetVersion (..)

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- ** MapsEngineRasterCollectionsListProcessingStatus
    , MapsEngineRasterCollectionsListProcessingStatus (..)

    -- ** MapsEngineTablesListRole
    , MapsEngineTablesListRole (..)

    -- ** PublishResponse
    , PublishResponse
    , publishResponse

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

    -- ** LabelStyleFontStyle
    , LabelStyleFontStyle (..)

    -- ** Datasource
    , Datasource
    , datasource
    , dId

    -- ** FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- ** FilterOperator
    , FilterOperator (..)

    -- ** AssetType
    , AssetType (..)

    -- ** Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- ** RasterRasterType
    , RasterRasterType (..)

    -- ** GeoJSONMultiPolygon
    , GeoJSONMultiPolygon
    , geoJSONMultiPolygon
    , gjmpCoordinates
    , gjmpType

    -- ** GeoJSONMultiPoint
    , GeoJSONMultiPoint
    , geoJSONMultiPoint
    , gjsonmpCoordinates
    , gjsonmpType

    -- ** TableColumnType
    , TableColumnType (..)

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

    -- ** PublishedLayer
    , PublishedLayer
    , publishedLayer
    , plLayerType
    , plName
    , plId
    , plProjectId
    , plDescription

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- ** Permission
    , Permission
    , permission
    , perRole
    , perId
    , perType
    , perDiscoverable

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

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- ** MapsEngineTablesFeaturesListVersion
    , MapsEngineTablesFeaturesListVersion (..)

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
    , mklKmlURL

    -- ** RasterCollectionRasterType
    , RasterCollectionRasterType (..)

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

    -- ** PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

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

    -- ** GeoJSONLineString
    , GeoJSONLineString
    , geoJSONLineString
    , gjlsCoordinates
    , gjlsType

    -- ** MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- ** File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- ** MapsEngineRasterCollectionsListRole
    , MapsEngineRasterCollectionsListRole (..)

    -- ** LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

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

    -- ** PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- ** MapsEngineTablesListProcessingStatus
    , MapsEngineTablesListProcessingStatus (..)

    -- ** MapsEngineRasterCollectionsRastersListRole
    , MapsEngineRasterCollectionsRastersListRole (..)

    -- ** FileUploadStatus
    , FileUploadStatus (..)

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

    -- ** GeoJSONGeometryCollection
    , GeoJSONGeometryCollection
    , geoJSONGeometryCollection
    , gjgcGeometries
    , gjgcType

    -- ** MapPublishingStatus
    , MapPublishingStatus (..)

    -- ** RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- ** TableProcessingStatus
    , TableProcessingStatus (..)
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
       :<|> ProjectsIconsListResource
       :<|> ProjectsIconsGetResource
       :<|> ProjectsIconsCreateResource
       :<|> ProjectsListResource
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

mapsEngineAPI :: Proxy MapsEngineAPI
mapsEngineAPI = Proxy
