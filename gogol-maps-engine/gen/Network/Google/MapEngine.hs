{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.MapEngine
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
module Network.Google.MapEngine
    (
    -- * API
      MapEngineAPI
    , mapEngineAPI
    , mapEngineURL

    -- * Service Methods

    -- * REST Resources

    -- ** MapsengineAssetsGet
    , module Mapsengine.Assets.Get

    -- ** MapsengineAssetsList
    , module Mapsengine.Assets.List

    -- ** MapsengineAssetsParentsList
    , module Mapsengine.Assets.Parents.List

    -- ** MapsengineAssetsPermissionsList
    , module Mapsengine.Assets.Permissions.List

    -- ** MapsengineLayersCancelProcessing
    , module Mapsengine.Layers.CancelProcessing

    -- ** MapsengineLayersCreate
    , module Mapsengine.Layers.Create

    -- ** MapsengineLayersDelete
    , module Mapsengine.Layers.Delete

    -- ** MapsengineLayersGet
    , module Mapsengine.Layers.Get

    -- ** MapsengineLayersGetPublished
    , module Mapsengine.Layers.GetPublished

    -- ** MapsengineLayersList
    , module Mapsengine.Layers.List

    -- ** MapsengineLayersListPublished
    , module Mapsengine.Layers.ListPublished

    -- ** MapsengineLayersParentsList
    , module Mapsengine.Layers.Parents.List

    -- ** MapsengineLayersPatch
    , module Mapsengine.Layers.Patch

    -- ** MapsengineLayersPermissionsBatchDelete
    , module Mapsengine.Layers.Permissions.BatchDelete

    -- ** MapsengineLayersPermissionsBatchUpdate
    , module Mapsengine.Layers.Permissions.BatchUpdate

    -- ** MapsengineLayersPermissionsList
    , module Mapsengine.Layers.Permissions.List

    -- ** MapsengineLayersProcess
    , module Mapsengine.Layers.Process

    -- ** MapsengineLayersPublish
    , module Mapsengine.Layers.Publish

    -- ** MapsengineLayersUnpublish
    , module Mapsengine.Layers.Unpublish

    -- ** MapsengineMapsCreate
    , module Mapsengine.Maps.Create

    -- ** MapsengineMapsDelete
    , module Mapsengine.Maps.Delete

    -- ** MapsengineMapsGet
    , module Mapsengine.Maps.Get

    -- ** MapsengineMapsGetPublished
    , module Mapsengine.Maps.GetPublished

    -- ** MapsengineMapsList
    , module Mapsengine.Maps.List

    -- ** MapsengineMapsListPublished
    , module Mapsengine.Maps.ListPublished

    -- ** MapsengineMapsPatch
    , module Mapsengine.Maps.Patch

    -- ** MapsengineMapsPermissionsBatchDelete
    , module Mapsengine.Maps.Permissions.BatchDelete

    -- ** MapsengineMapsPermissionsBatchUpdate
    , module Mapsengine.Maps.Permissions.BatchUpdate

    -- ** MapsengineMapsPermissionsList
    , module Mapsengine.Maps.Permissions.List

    -- ** MapsengineMapsPublish
    , module Mapsengine.Maps.Publish

    -- ** MapsengineMapsUnpublish
    , module Mapsengine.Maps.Unpublish

    -- ** MapsengineProjectsIconsCreate
    , module Mapsengine.Projects.Icons.Create

    -- ** MapsengineProjectsIconsGet
    , module Mapsengine.Projects.Icons.Get

    -- ** MapsengineProjectsIconsList
    , module Mapsengine.Projects.Icons.List

    -- ** MapsengineProjectsList
    , module Mapsengine.Projects.List

    -- ** MapsengineRasterCollectionsCancelProcessing
    , module Mapsengine.RasterCollections.CancelProcessing

    -- ** MapsengineRasterCollectionsCreate
    , module Mapsengine.RasterCollections.Create

    -- ** MapsengineRasterCollectionsDelete
    , module Mapsengine.RasterCollections.Delete

    -- ** MapsengineRasterCollectionsGet
    , module Mapsengine.RasterCollections.Get

    -- ** MapsengineRasterCollectionsList
    , module Mapsengine.RasterCollections.List

    -- ** MapsengineRasterCollectionsParentsList
    , module Mapsengine.RasterCollections.Parents.List

    -- ** MapsengineRasterCollectionsPatch
    , module Mapsengine.RasterCollections.Patch

    -- ** MapsengineRasterCollectionsPermissionsBatchDelete
    , module Mapsengine.RasterCollections.Permissions.BatchDelete

    -- ** MapsengineRasterCollectionsPermissionsBatchUpdate
    , module Mapsengine.RasterCollections.Permissions.BatchUpdate

    -- ** MapsengineRasterCollectionsPermissionsList
    , module Mapsengine.RasterCollections.Permissions.List

    -- ** MapsengineRasterCollectionsProcess
    , module Mapsengine.RasterCollections.Process

    -- ** MapsengineRasterCollectionsRastersBatchDelete
    , module Mapsengine.RasterCollections.Rasters.BatchDelete

    -- ** MapsengineRasterCollectionsRastersBatchInsert
    , module Mapsengine.RasterCollections.Rasters.BatchInsert

    -- ** MapsengineRasterCollectionsRastersList
    , module Mapsengine.RasterCollections.Rasters.List

    -- ** MapsengineRastersDelete
    , module Mapsengine.Rasters.Delete

    -- ** MapsengineRastersFilesInsert
    , module Mapsengine.Rasters.Files.Insert

    -- ** MapsengineRastersGet
    , module Mapsengine.Rasters.Get

    -- ** MapsengineRastersList
    , module Mapsengine.Rasters.List

    -- ** MapsengineRastersParentsList
    , module Mapsengine.Rasters.Parents.List

    -- ** MapsengineRastersPatch
    , module Mapsengine.Rasters.Patch

    -- ** MapsengineRastersPermissionsBatchDelete
    , module Mapsengine.Rasters.Permissions.BatchDelete

    -- ** MapsengineRastersPermissionsBatchUpdate
    , module Mapsengine.Rasters.Permissions.BatchUpdate

    -- ** MapsengineRastersPermissionsList
    , module Mapsengine.Rasters.Permissions.List

    -- ** MapsengineRastersProcess
    , module Mapsengine.Rasters.Process

    -- ** MapsengineRastersUpload
    , module Mapsengine.Rasters.Upload

    -- ** MapsengineTablesCreate
    , module Mapsengine.Tables.Create

    -- ** MapsengineTablesDelete
    , module Mapsengine.Tables.Delete

    -- ** MapsengineTablesFeaturesBatchDelete
    , module Mapsengine.Tables.Features.BatchDelete

    -- ** MapsengineTablesFeaturesBatchInsert
    , module Mapsengine.Tables.Features.BatchInsert

    -- ** MapsengineTablesFeaturesBatchPatch
    , module Mapsengine.Tables.Features.BatchPatch

    -- ** MapsengineTablesFeaturesGet
    , module Mapsengine.Tables.Features.Get

    -- ** MapsengineTablesFeaturesList
    , module Mapsengine.Tables.Features.List

    -- ** MapsengineTablesFilesInsert
    , module Mapsengine.Tables.Files.Insert

    -- ** MapsengineTablesGet
    , module Mapsengine.Tables.Get

    -- ** MapsengineTablesList
    , module Mapsengine.Tables.List

    -- ** MapsengineTablesParentsList
    , module Mapsengine.Tables.Parents.List

    -- ** MapsengineTablesPatch
    , module Mapsengine.Tables.Patch

    -- ** MapsengineTablesPermissionsBatchDelete
    , module Mapsengine.Tables.Permissions.BatchDelete

    -- ** MapsengineTablesPermissionsBatchUpdate
    , module Mapsengine.Tables.Permissions.BatchUpdate

    -- ** MapsengineTablesPermissionsList
    , module Mapsengine.Tables.Permissions.List

    -- ** MapsengineTablesProcess
    , module Mapsengine.Tables.Process

    -- ** MapsengineTablesUpload
    , module Mapsengine.Tables.Upload

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

    -- ** Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- ** PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

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

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- ** ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin

    -- ** FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

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

    -- ** RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- ** ScaledShape
    , ScaledShape
    , scaledShape
    , ssBorder
    , ssFill
    , ssShape

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

    -- ** Border
    , Border
    , border
    , bColor
    , bWidth
    , bOpacity

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

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

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

    -- ** Datasource
    , Datasource
    , datasource
    , dId

    -- ** FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- ** Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

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

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

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
    , tCreationTime
    , tWritersCanEditPermissions
    , tEtag
    , tCreatorEmail
    , tLastModifiedTime
    , tSchema
    , tLastModifierEmail
    , tName
    , tBbox
    , tProcessingStatus
    , tFiles
    , tId
    , tProjectId
    , tDraftAccessList
    , tPublishedAccessList
    , tSourceEncoding
    , tDescription
    , tTags

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

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBorder
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

    -- ** RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Mapsengine.Assets.Get
import           Network.Google.Resource.Mapsengine.Assets.List
import           Network.Google.Resource.Mapsengine.Assets.Parents.List
import           Network.Google.Resource.Mapsengine.Assets.Permissions.List
import           Network.Google.Resource.Mapsengine.Layers.CancelProcessing
import           Network.Google.Resource.Mapsengine.Layers.Create
import           Network.Google.Resource.Mapsengine.Layers.Delete
import           Network.Google.Resource.Mapsengine.Layers.Get
import           Network.Google.Resource.Mapsengine.Layers.GetPublished
import           Network.Google.Resource.Mapsengine.Layers.List
import           Network.Google.Resource.Mapsengine.Layers.ListPublished
import           Network.Google.Resource.Mapsengine.Layers.Parents.List
import           Network.Google.Resource.Mapsengine.Layers.Patch
import           Network.Google.Resource.Mapsengine.Layers.Permissions.BatchDelete
import           Network.Google.Resource.Mapsengine.Layers.Permissions.BatchUpdate
import           Network.Google.Resource.Mapsengine.Layers.Permissions.List
import           Network.Google.Resource.Mapsengine.Layers.Process
import           Network.Google.Resource.Mapsengine.Layers.Publish
import           Network.Google.Resource.Mapsengine.Layers.Unpublish
import           Network.Google.Resource.Mapsengine.Maps.Create
import           Network.Google.Resource.Mapsengine.Maps.Delete
import           Network.Google.Resource.Mapsengine.Maps.Get
import           Network.Google.Resource.Mapsengine.Maps.GetPublished
import           Network.Google.Resource.Mapsengine.Maps.List
import           Network.Google.Resource.Mapsengine.Maps.ListPublished
import           Network.Google.Resource.Mapsengine.Maps.Patch
import           Network.Google.Resource.Mapsengine.Maps.Permissions.BatchDelete
import           Network.Google.Resource.Mapsengine.Maps.Permissions.BatchUpdate
import           Network.Google.Resource.Mapsengine.Maps.Permissions.List
import           Network.Google.Resource.Mapsengine.Maps.Publish
import           Network.Google.Resource.Mapsengine.Maps.Unpublish
import           Network.Google.Resource.Mapsengine.Projects.Icons.Create
import           Network.Google.Resource.Mapsengine.Projects.Icons.Get
import           Network.Google.Resource.Mapsengine.Projects.Icons.List
import           Network.Google.Resource.Mapsengine.Projects.List
import           Network.Google.Resource.Mapsengine.RasterCollections.CancelProcessing
import           Network.Google.Resource.Mapsengine.RasterCollections.Create
import           Network.Google.Resource.Mapsengine.RasterCollections.Delete
import           Network.Google.Resource.Mapsengine.RasterCollections.Get
import           Network.Google.Resource.Mapsengine.RasterCollections.List
import           Network.Google.Resource.Mapsengine.RasterCollections.Parents.List
import           Network.Google.Resource.Mapsengine.RasterCollections.Patch
import           Network.Google.Resource.Mapsengine.RasterCollections.Permissions.BatchDelete
import           Network.Google.Resource.Mapsengine.RasterCollections.Permissions.BatchUpdate
import           Network.Google.Resource.Mapsengine.RasterCollections.Permissions.List
import           Network.Google.Resource.Mapsengine.RasterCollections.Process
import           Network.Google.Resource.Mapsengine.RasterCollections.Rasters.BatchDelete
import           Network.Google.Resource.Mapsengine.RasterCollections.Rasters.BatchInsert
import           Network.Google.Resource.Mapsengine.RasterCollections.Rasters.List
import           Network.Google.Resource.Mapsengine.Rasters.Delete
import           Network.Google.Resource.Mapsengine.Rasters.Files.Insert
import           Network.Google.Resource.Mapsengine.Rasters.Get
import           Network.Google.Resource.Mapsengine.Rasters.List
import           Network.Google.Resource.Mapsengine.Rasters.Parents.List
import           Network.Google.Resource.Mapsengine.Rasters.Patch
import           Network.Google.Resource.Mapsengine.Rasters.Permissions.BatchDelete
import           Network.Google.Resource.Mapsengine.Rasters.Permissions.BatchUpdate
import           Network.Google.Resource.Mapsengine.Rasters.Permissions.List
import           Network.Google.Resource.Mapsengine.Rasters.Process
import           Network.Google.Resource.Mapsengine.Rasters.Upload
import           Network.Google.Resource.Mapsengine.Tables.Create
import           Network.Google.Resource.Mapsengine.Tables.Delete
import           Network.Google.Resource.Mapsengine.Tables.Features.BatchDelete
import           Network.Google.Resource.Mapsengine.Tables.Features.BatchInsert
import           Network.Google.Resource.Mapsengine.Tables.Features.BatchPatch
import           Network.Google.Resource.Mapsengine.Tables.Features.Get
import           Network.Google.Resource.Mapsengine.Tables.Features.List
import           Network.Google.Resource.Mapsengine.Tables.Files.Insert
import           Network.Google.Resource.Mapsengine.Tables.Get
import           Network.Google.Resource.Mapsengine.Tables.List
import           Network.Google.Resource.Mapsengine.Tables.Parents.List
import           Network.Google.Resource.Mapsengine.Tables.Patch
import           Network.Google.Resource.Mapsengine.Tables.Permissions.BatchDelete
import           Network.Google.Resource.Mapsengine.Tables.Permissions.BatchUpdate
import           Network.Google.Resource.Mapsengine.Tables.Permissions.List
import           Network.Google.Resource.Mapsengine.Tables.Process
import           Network.Google.Resource.Mapsengine.Tables.Upload

{- $resources
TODO
-}

type MapEngineAPI =
     Maps :<|> Tables :<|> Layers :<|> Rasters :<|> Assets
       :<|> Projects
       :<|> RasterCollections

mapEngineAPI :: Proxy MapEngineAPI
mapEngineAPI = Proxy
