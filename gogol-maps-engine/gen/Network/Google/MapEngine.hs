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
    , module Network.Google.Resource.Mapsengine.Assets.Get

    -- ** MapsengineAssetsList
    , module Network.Google.Resource.Mapsengine.Assets.List

    -- ** MapsengineAssetsParentsList
    , module Network.Google.Resource.Mapsengine.Assets.Parents.List

    -- ** MapsengineAssetsPermissionsList
    , module Network.Google.Resource.Mapsengine.Assets.Permissions.List

    -- ** MapsengineLayersCancelProcessing
    , module Network.Google.Resource.Mapsengine.Layers.CancelProcessing

    -- ** MapsengineLayersCreate
    , module Network.Google.Resource.Mapsengine.Layers.Create

    -- ** MapsengineLayersDelete
    , module Network.Google.Resource.Mapsengine.Layers.Delete

    -- ** MapsengineLayersGet
    , module Network.Google.Resource.Mapsengine.Layers.Get

    -- ** MapsengineLayersGetPublished
    , module Network.Google.Resource.Mapsengine.Layers.GetPublished

    -- ** MapsengineLayersList
    , module Network.Google.Resource.Mapsengine.Layers.List

    -- ** MapsengineLayersListPublished
    , module Network.Google.Resource.Mapsengine.Layers.ListPublished

    -- ** MapsengineLayersParentsList
    , module Network.Google.Resource.Mapsengine.Layers.Parents.List

    -- ** MapsengineLayersPatch
    , module Network.Google.Resource.Mapsengine.Layers.Patch

    -- ** MapsengineLayersPermissionsBatchDelete
    , module Network.Google.Resource.Mapsengine.Layers.Permissions.BatchDelete

    -- ** MapsengineLayersPermissionsBatchUpdate
    , module Network.Google.Resource.Mapsengine.Layers.Permissions.BatchUpdate

    -- ** MapsengineLayersPermissionsList
    , module Network.Google.Resource.Mapsengine.Layers.Permissions.List

    -- ** MapsengineLayersProcess
    , module Network.Google.Resource.Mapsengine.Layers.Process

    -- ** MapsengineLayersPublish
    , module Network.Google.Resource.Mapsengine.Layers.Publish

    -- ** MapsengineLayersUnpublish
    , module Network.Google.Resource.Mapsengine.Layers.Unpublish

    -- ** MapsengineMapsCreate
    , module Network.Google.Resource.Mapsengine.Maps.Create

    -- ** MapsengineMapsDelete
    , module Network.Google.Resource.Mapsengine.Maps.Delete

    -- ** MapsengineMapsGet
    , module Network.Google.Resource.Mapsengine.Maps.Get

    -- ** MapsengineMapsGetPublished
    , module Network.Google.Resource.Mapsengine.Maps.GetPublished

    -- ** MapsengineMapsList
    , module Network.Google.Resource.Mapsengine.Maps.List

    -- ** MapsengineMapsListPublished
    , module Network.Google.Resource.Mapsengine.Maps.ListPublished

    -- ** MapsengineMapsPatch
    , module Network.Google.Resource.Mapsengine.Maps.Patch

    -- ** MapsengineMapsPermissionsBatchDelete
    , module Network.Google.Resource.Mapsengine.Maps.Permissions.BatchDelete

    -- ** MapsengineMapsPermissionsBatchUpdate
    , module Network.Google.Resource.Mapsengine.Maps.Permissions.BatchUpdate

    -- ** MapsengineMapsPermissionsList
    , module Network.Google.Resource.Mapsengine.Maps.Permissions.List

    -- ** MapsengineMapsPublish
    , module Network.Google.Resource.Mapsengine.Maps.Publish

    -- ** MapsengineMapsUnpublish
    , module Network.Google.Resource.Mapsengine.Maps.Unpublish

    -- ** MapsengineProjectsIconsCreate
    , module Network.Google.Resource.Mapsengine.Projects.Icons.Create

    -- ** MapsengineProjectsIconsGet
    , module Network.Google.Resource.Mapsengine.Projects.Icons.Get

    -- ** MapsengineProjectsIconsList
    , module Network.Google.Resource.Mapsengine.Projects.Icons.List

    -- ** MapsengineProjectsList
    , module Network.Google.Resource.Mapsengine.Projects.List

    -- ** MapsengineRasterCollectionsCancelProcessing
    , module Network.Google.Resource.Mapsengine.RasterCollections.CancelProcessing

    -- ** MapsengineRasterCollectionsCreate
    , module Network.Google.Resource.Mapsengine.RasterCollections.Create

    -- ** MapsengineRasterCollectionsDelete
    , module Network.Google.Resource.Mapsengine.RasterCollections.Delete

    -- ** MapsengineRasterCollectionsGet
    , module Network.Google.Resource.Mapsengine.RasterCollections.Get

    -- ** MapsengineRasterCollectionsList
    , module Network.Google.Resource.Mapsengine.RasterCollections.List

    -- ** MapsengineRasterCollectionsParentsList
    , module Network.Google.Resource.Mapsengine.RasterCollections.Parents.List

    -- ** MapsengineRasterCollectionsPatch
    , module Network.Google.Resource.Mapsengine.RasterCollections.Patch

    -- ** MapsengineRasterCollectionsPermissionsBatchDelete
    , module Network.Google.Resource.Mapsengine.RasterCollections.Permissions.BatchDelete

    -- ** MapsengineRasterCollectionsPermissionsBatchUpdate
    , module Network.Google.Resource.Mapsengine.RasterCollections.Permissions.BatchUpdate

    -- ** MapsengineRasterCollectionsPermissionsList
    , module Network.Google.Resource.Mapsengine.RasterCollections.Permissions.List

    -- ** MapsengineRasterCollectionsProcess
    , module Network.Google.Resource.Mapsengine.RasterCollections.Process

    -- ** MapsengineRasterCollectionsRastersBatchDelete
    , module Network.Google.Resource.Mapsengine.RasterCollections.Rasters.BatchDelete

    -- ** MapsengineRasterCollectionsRastersBatchInsert
    , module Network.Google.Resource.Mapsengine.RasterCollections.Rasters.BatchInsert

    -- ** MapsengineRasterCollectionsRastersList
    , module Network.Google.Resource.Mapsengine.RasterCollections.Rasters.List

    -- ** MapsengineRastersDelete
    , module Network.Google.Resource.Mapsengine.Rasters.Delete

    -- ** MapsengineRastersFilesInsert
    , module Network.Google.Resource.Mapsengine.Rasters.Files.Insert

    -- ** MapsengineRastersGet
    , module Network.Google.Resource.Mapsengine.Rasters.Get

    -- ** MapsengineRastersList
    , module Network.Google.Resource.Mapsengine.Rasters.List

    -- ** MapsengineRastersParentsList
    , module Network.Google.Resource.Mapsengine.Rasters.Parents.List

    -- ** MapsengineRastersPatch
    , module Network.Google.Resource.Mapsengine.Rasters.Patch

    -- ** MapsengineRastersPermissionsBatchDelete
    , module Network.Google.Resource.Mapsengine.Rasters.Permissions.BatchDelete

    -- ** MapsengineRastersPermissionsBatchUpdate
    , module Network.Google.Resource.Mapsengine.Rasters.Permissions.BatchUpdate

    -- ** MapsengineRastersPermissionsList
    , module Network.Google.Resource.Mapsengine.Rasters.Permissions.List

    -- ** MapsengineRastersProcess
    , module Network.Google.Resource.Mapsengine.Rasters.Process

    -- ** MapsengineRastersUpload
    , module Network.Google.Resource.Mapsengine.Rasters.Upload

    -- ** MapsengineTablesCreate
    , module Network.Google.Resource.Mapsengine.Tables.Create

    -- ** MapsengineTablesDelete
    , module Network.Google.Resource.Mapsengine.Tables.Delete

    -- ** MapsengineTablesFeaturesBatchDelete
    , module Network.Google.Resource.Mapsengine.Tables.Features.BatchDelete

    -- ** MapsengineTablesFeaturesBatchInsert
    , module Network.Google.Resource.Mapsengine.Tables.Features.BatchInsert

    -- ** MapsengineTablesFeaturesBatchPatch
    , module Network.Google.Resource.Mapsengine.Tables.Features.BatchPatch

    -- ** MapsengineTablesFeaturesGet
    , module Network.Google.Resource.Mapsengine.Tables.Features.Get

    -- ** MapsengineTablesFeaturesList
    , module Network.Google.Resource.Mapsengine.Tables.Features.List

    -- ** MapsengineTablesFilesInsert
    , module Network.Google.Resource.Mapsengine.Tables.Files.Insert

    -- ** MapsengineTablesGet
    , module Network.Google.Resource.Mapsengine.Tables.Get

    -- ** MapsengineTablesList
    , module Network.Google.Resource.Mapsengine.Tables.List

    -- ** MapsengineTablesParentsList
    , module Network.Google.Resource.Mapsengine.Tables.Parents.List

    -- ** MapsengineTablesPatch
    , module Network.Google.Resource.Mapsengine.Tables.Patch

    -- ** MapsengineTablesPermissionsBatchDelete
    , module Network.Google.Resource.Mapsengine.Tables.Permissions.BatchDelete

    -- ** MapsengineTablesPermissionsBatchUpdate
    , module Network.Google.Resource.Mapsengine.Tables.Permissions.BatchUpdate

    -- ** MapsengineTablesPermissionsList
    , module Network.Google.Resource.Mapsengine.Tables.Permissions.List

    -- ** MapsengineTablesProcess
    , module Network.Google.Resource.Mapsengine.Tables.Process

    -- ** MapsengineTablesUpload
    , module Network.Google.Resource.Mapsengine.Tables.Upload

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

    -- ** MapsengineRastersListProcessingStatus
    , MapsengineRastersListProcessingStatus (..)

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

    -- ** MapsengineRastersListRole
    , MapsengineRastersListRole (..)

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

    -- ** MapsengineLayersGetVersion
    , MapsengineLayersGetVersion (..)

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

    -- ** MapsengineTablesGetVersion
    , MapsengineTablesGetVersion (..)

    -- ** MapsengineMapsListRole
    , MapsengineMapsListRole (..)

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
    , ssBorder
    , ssFill
    , ssShape

    -- ** MapProcessingStatus
    , MapProcessingStatus (..)

    -- ** MapsengineMapsListProcessingStatus
    , MapsengineMapsListProcessingStatus (..)

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

    -- ** MapsengineLayersListProcessingStatus
    , MapsengineLayersListProcessingStatus (..)

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

    -- ** MapsengineAssetsListRole
    , MapsengineAssetsListRole (..)

    -- ** MapLayerType
    , MapLayerType (..)

    -- ** MapsengineTablesFeaturesGetVersion
    , MapsengineTablesFeaturesGetVersion (..)

    -- ** RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- ** MapsengineLayersListRole
    , MapsengineLayersListRole (..)

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

    -- ** MapsengineMapsGetVersion
    , MapsengineMapsGetVersion (..)

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- ** MapsengineRasterCollectionsListProcessingStatus
    , MapsengineRasterCollectionsListProcessingStatus (..)

    -- ** MapsengineTablesListRole
    , MapsengineTablesListRole (..)

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

    -- ** MapsengineTablesFeaturesListVersion
    , MapsengineTablesFeaturesListVersion (..)

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

    -- ** MapsengineRasterCollectionsListRole
    , MapsengineRasterCollectionsListRole (..)

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

    -- ** MapsengineTablesListProcessingStatus
    , MapsengineTablesListProcessingStatus (..)

    -- ** MapsengineRasterCollectionsRastersListRole
    , MapsengineRasterCollectionsRastersListRole (..)

    -- ** FileUploadStatus
    , FileUploadStatus (..)

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

    -- ** Alt
    , Alt (..)

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
     MapsPermissionsListResource :<|>
       MapsPermissionsBatchUpdateResource
       :<|> MapsPermissionsBatchDeleteResource
       :<|> MapsListResource
       :<|> MapsListPublishedResource
       :<|> MapsPatchResource
       :<|> MapsGetResource
       :<|> MapsGetPublishedResource
       :<|> MapsCreateResource
       :<|> MapsUnpublishResource
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
       :<|> LayersUnpublishResource
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

mapEngineAPI :: Proxy MapEngineAPI
mapEngineAPI = Proxy
