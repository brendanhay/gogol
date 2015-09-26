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
    -- * Resources
      MapsEngine
    , MapsAPI
    , PermissionsAPI
    , PermissionsList
    , PermissionsBatchUpdate
    , PermissionsBatchDelete
    , TablesAPI
    , ParentsAPI
    , ParentsList
    , FeaturesAPI
    , FeaturesList
    , FeaturesBatchInsert
    , FeaturesGet
    , FeaturesBatchPatch
    , FeaturesBatchDelete
    , FilesAPI
    , FilesInsert
    , PermissionsAPI
    , PermissionsList
    , PermissionsBatchUpdate
    , PermissionsBatchDelete
    , LayersAPI
    , ParentsAPI
    , ParentsList
    , PermissionsAPI
    , PermissionsList
    , PermissionsBatchUpdate
    , PermissionsBatchDelete
    , RastersAPI
    , ParentsAPI
    , ParentsList
    , FilesAPI
    , FilesInsert
    , PermissionsAPI
    , PermissionsList
    , PermissionsBatchUpdate
    , PermissionsBatchDelete
    , AssetsAPI
    , ParentsAPI
    , ParentsList
    , PermissionsAPI
    , PermissionsList
    , ProjectsAPI
    , IconsAPI
    , IconsList
    , IconsGet
    , IconsCreate
    , RasterCollectionsAPI
    , ParentsAPI
    , ParentsList
    , PermissionsAPI
    , PermissionsList
    , PermissionsBatchUpdate
    , PermissionsBatchDelete
    , RastersAPI
    , RastersList
    , RastersBatchInsert
    , RastersBatchDelete

    -- * Types

    -- ** AcquisitionTime
    , AcquisitionTime
    , acquisitionTime
    , atStart
    , atPrecision
    , atEnd

    -- ** AcquisitionTimePrecision
    , AcquisitionTimePrecision (..)

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

    -- ** AssetType
    , AssetType (..)

    -- ** AssetsListResponse
    , AssetsListResponse
    , assetsListResponse
    , alrNextPageToken
    , alrAssets

    -- ** Border
    , Border
    , border
    , bColor
    , bWidth
    , bOpacity

    -- ** Color
    , Color
    , color
    , cColor
    , cOpacity

    -- ** Datasource
    , Datasource
    , datasource
    , dId

    -- ** DisplayRule
    , DisplayRule
    , displayRule
    , drPointOptions
    , drPolygonOptions
    , drZoomLevels
    , drFilters
    , drName
    , drLineOptions

    -- ** Feature
    , Feature
    , feature
    , fGeometry
    , fType
    , fProperties

    -- ** FeatureInfo
    , FeatureInfo
    , featureInfo
    , fiContent

    -- ** FeaturesBatchDeleteRequest
    , FeaturesBatchDeleteRequest
    , featuresBatchDeleteRequest
    , fbdrPrimaryKeys
    , fbdrGxIds

    -- ** FeaturesBatchInsertRequest
    , FeaturesBatchInsertRequest
    , featuresBatchInsertRequest
    , fbirFeatures
    , fbirNormalizeGeometries

    -- ** FeaturesBatchPatchRequest
    , FeaturesBatchPatchRequest
    , featuresBatchPatchRequest
    , fbprFeatures
    , fbprNormalizeGeometries

    -- ** FeaturesListResponse
    , FeaturesListResponse
    , featuresListResponse
    , flrNextPageToken
    , flrAllowedQueriesPerSecond
    , flrSchema
    , flrFeatures
    , flrType

    -- ** File
    , File
    , file
    , fSize
    , fUploadStatus
    , fFilename

    -- ** FileUploadStatus
    , FileUploadStatus (..)

    -- ** Filter
    , Filter
    , filter'
    , fOperator
    , fValue
    , fColumn

    -- ** FilterOperator
    , FilterOperator (..)

    -- ** GeoJsonGeometry
    , GeoJsonGeometry
    , geoJsonGeometry

    -- ** GeoJsonGeometryCollection
    , GeoJsonGeometryCollection
    , geoJsonGeometryCollection
    , gjgcGeometries
    , gjgcType

    -- ** GeoJsonGeometryCollectionType
    , GeoJsonGeometryCollectionType (..)

    -- ** GeoJsonLineString
    , GeoJsonLineString
    , geoJsonLineString
    , gjlsCoordinates
    , gjlsType

    -- ** GeoJsonLineStringType
    , GeoJsonLineStringType (..)

    -- ** GeoJsonMultiLineString
    , GeoJsonMultiLineString
    , geoJsonMultiLineString
    , gjmlsCoordinates
    , gjmlsType

    -- ** GeoJsonMultiLineStringType
    , GeoJsonMultiLineStringType (..)

    -- ** GeoJsonMultiPoint
    , GeoJsonMultiPoint
    , geoJsonMultiPoint
    , gjsonmpCoordinates
    , gjsonmpType

    -- ** GeoJsonMultiPointType
    , GeoJsonMultiPointType (..)

    -- ** GeoJsonMultiPolygon
    , GeoJsonMultiPolygon
    , geoJsonMultiPolygon
    , gjmpCoordinates
    , gjmpType

    -- ** GeoJsonMultiPolygonType
    , GeoJsonMultiPolygonType (..)

    -- ** GeoJsonPoint
    , GeoJsonPoint
    , geoJsonPoint
    , gjpCoordinates
    , gjpType

    -- ** GeoJsonPointType
    , GeoJsonPointType (..)

    -- ** GeoJsonPolygon
    , GeoJsonPolygon
    , geoJsonPolygon
    , gjsonpCoordinates
    , gjsonpType

    -- ** GeoJsonPolygonType
    , GeoJsonPolygonType (..)

    -- ** GeoJsonProperties
    , GeoJsonProperties
    , geoJsonProperties

    -- ** Icon
    , Icon
    , icon
    , iName
    , iId
    , iDescription

    -- ** IconStyle
    , IconStyle
    , iconStyle
    , isScaledShape
    , isScalingFunction
    , isName
    , isId

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

    -- ** LabelStyleFontStyle
    , LabelStyleFontStyle (..)

    -- ** LabelStyleFontWeight
    , LabelStyleFontWeight (..)

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

    -- ** LayerDatasourceType
    , LayerDatasourceType (..)

    -- ** LayerLayerType
    , LayerLayerType (..)

    -- ** LayerProcessingStatus
    , LayerProcessingStatus (..)

    -- ** LayerPublishingStatus
    , LayerPublishingStatus (..)

    -- ** LayersListResponse
    , LayersListResponse
    , layersListResponse
    , llrNextPageToken
    , llrLayers

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStroke
    , lsBorder
    , lsDash
    , lsLabel

    -- ** LineStyleStroke
    , LineStyleStroke
    , lineStyleStroke
    , lssColor
    , lssWidth
    , lssOpacity

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

    -- ** MapFolderType
    , MapFolderType (..)

    -- ** MapItem
    , MapItem
    , mapItem

    -- ** MapKmlLink
    , MapKmlLink
    , mapKmlLink
    , mklDefaultViewport
    , mklVisibility
    , mklName
    , mklType
    , mklKmlUrl

    -- ** MapKmlLinkType
    , MapKmlLinkType (..)

    -- ** MapLayer
    , MapLayer
    , mapLayer
    , mlDefaultViewport
    , mlVisibility
    , mlKey
    , mlName
    , mlId
    , mlType

    -- ** MapLayerType
    , MapLayerType (..)

    -- ** MapProcessingStatus
    , MapProcessingStatus (..)

    -- ** MapPublishingStatus
    , MapPublishingStatus (..)

    -- ** MapsListResponse
    , MapsListResponse
    , mapsListResponse
    , mlrMaps
    , mlrNextPageToken

    -- ** Parent
    , Parent
    , parent
    , parId

    -- ** ParentsListResponse
    , ParentsListResponse
    , parentsListResponse
    , plrNextPageToken
    , plrParents

    -- ** Permission
    , Permission
    , permission
    , pRole
    , pId
    , pType
    , pDiscoverable

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** PermissionType
    , PermissionType (..)

    -- ** PermissionsBatchDeleteRequest
    , PermissionsBatchDeleteRequest
    , permissionsBatchDeleteRequest
    , pbdrIds

    -- ** PermissionsBatchDeleteResponse
    , PermissionsBatchDeleteResponse
    , permissionsBatchDeleteResponse

    -- ** PermissionsBatchUpdateRequest
    , PermissionsBatchUpdateRequest
    , permissionsBatchUpdateRequest
    , pburPermissions

    -- ** PermissionsBatchUpdateResponse
    , PermissionsBatchUpdateResponse
    , permissionsBatchUpdateResponse

    -- ** PermissionsListResponse
    , PermissionsListResponse
    , permissionsListResponse
    , plrPermissions

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIcon
    , psLabel

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , pStroke
    , pFill
    , pLabel

    -- ** ProcessResponse
    , ProcessResponse
    , processResponse

    -- ** Project
    , Project
    , project
    , proName
    , proId

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrProjects

    -- ** PublishResponse
    , PublishResponse
    , publishResponse

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

    -- ** PublishedLayersListResponse
    , PublishedLayersListResponse
    , publishedLayersListResponse
    , pllrNextPageToken
    , pllrLayers

    -- ** PublishedMap
    , PublishedMap
    , publishedMap
    , pmDefaultViewport
    , pmContents
    , pmName
    , pmId
    , pmProjectId
    , pmDescription

    -- ** PublishedMapsListResponse
    , PublishedMapsListResponse
    , publishedMapsListResponse
    , pmlrMaps
    , pmlrNextPageToken

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

    -- ** RasterCollectionProcessingStatus
    , RasterCollectionProcessingStatus (..)

    -- ** RasterCollectionRasterType
    , RasterCollectionRasterType (..)

    -- ** RasterCollectionsListResponse
    , RasterCollectionsListResponse
    , rasterCollectionsListResponse
    , rclrNextPageToken
    , rclrRasterCollections

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

    -- ** RasterCollectionsRasterBatchDeleteRequest
    , RasterCollectionsRasterBatchDeleteRequest
    , rasterCollectionsRasterBatchDeleteRequest
    , rcrbdrIds

    -- ** RasterCollectionsRastersBatchDeleteResponse
    , RasterCollectionsRastersBatchDeleteResponse
    , rasterCollectionsRastersBatchDeleteResponse

    -- ** RasterCollectionsRastersBatchInsertRequest
    , RasterCollectionsRastersBatchInsertRequest
    , rasterCollectionsRastersBatchInsertRequest
    , rcrbirIds

    -- ** RasterCollectionsRastersBatchInsertResponse
    , RasterCollectionsRastersBatchInsertResponse
    , rasterCollectionsRastersBatchInsertResponse

    -- ** RasterCollectionsRastersListResponse
    , RasterCollectionsRastersListResponse
    , rasterCollectionsRastersListResponse
    , rcrlrNextPageToken
    , rcrlrRasters

    -- ** RasterProcessingStatus
    , RasterProcessingStatus (..)

    -- ** RasterRasterType
    , RasterRasterType (..)

    -- ** RastersListResponse
    , RastersListResponse
    , rastersListResponse
    , rlrNextPageToken
    , rlrRasters

    -- ** ScaledShape
    , ScaledShape
    , scaledShape
    , ssBorder
    , ssFill
    , ssShape

    -- ** ScaledShapeShape
    , ScaledShapeShape (..)

    -- ** ScalingFunction
    , ScalingFunction
    , scalingFunction
    , sfValueRange
    , sfSizeRange
    , sfScalingType
    , sfColumn

    -- ** ScalingFunctionScalingType
    , ScalingFunctionScalingType (..)

    -- ** Schema
    , Schema
    , schema
    , sPrimaryKey
    , sColumns
    , sPrimaryGeometry

    -- ** SizeRange
    , SizeRange
    , sizeRange
    , srMax
    , srMin

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

    -- ** TableColumn
    , TableColumn
    , tableColumn
    , tcName
    , tcType

    -- ** TableColumnType
    , TableColumnType (..)

    -- ** TableProcessingStatus
    , TableProcessingStatus (..)

    -- ** TablesListResponse
    , TablesListResponse
    , tablesListResponse
    , tlrNextPageToken
    , tlrTables

    -- ** ValueRange
    , ValueRange
    , valueRange
    , vrMax
    , vrMin

    -- ** VectorStyle
    , VectorStyle
    , vectorStyle
    , vsDisplayRules
    , vsFeatureInfo
    , vsType

    -- ** VectorStyleType
    , VectorStyleType (..)

    -- ** ZoomLevels
    , ZoomLevels
    , zoomLevels
    , zlMax
    , zlMin
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type MapsEngine =
     TablesAPI :<|>
       LayersAPI :<|>
         RastersAPI :<|>
           AssetsAPI :<|>
             ProjectsAPI :<|> RasterCollectionsAPI :<|> MapsAPI

type MapsAPI = PermissionsAPI

type PermissionsAPI =
     PermissionsBatchUpdate :<|>
       PermissionsBatchDelete :<|> PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "maps" :> Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
type PermissionsBatchUpdate =
     "mapsengine" :> "v1" :> "maps" :> Capture "id" Text
       :> "permissions"
       :> "batchUpdate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove permission entries from an already existing asset.
type PermissionsBatchDelete =
     "mapsengine" :> "v1" :> "maps" :> Capture "id" Text
       :> "permissions"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TablesAPI =
     FeaturesAPI :<|>
       FilesAPI :<|> PermissionsAPI :<|> ParentsAPI

type ParentsAPI = ParentsList

-- | Return all parent ids of the specified table.
type ParentsList =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FeaturesAPI =
     FeaturesBatchInsert :<|>
       FeaturesGet :<|>
         FeaturesBatchPatch :<|>
           FeaturesBatchDelete :<|> FeaturesList

-- | Return all features readable by the current user.
type FeaturesList =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "features"
       :> QueryParam "include" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "where" Text
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "version" Text
       :> QueryParam "limit" Word32
       :> QueryParam "pageToken" Text
       :> QueryParam "select" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "intersects" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Append features to an existing table. A single batchInsert request can
-- create: - Up to 50 features. - A combined total of 10 000 vertices.
-- Feature limits are documented in the Supported data formats and limits
-- article of the Google Maps Engine help center. Note that free and paid
-- accounts have different limits. For more information about inserting
-- features, read Creating features in the Google Maps Engine developer\'s
-- guide.
type FeaturesBatchInsert =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "features"
       :> "batchInsert"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Return a single feature, given its ID.
type FeaturesGet =
     "mapsengine" :> "v1" :> "tables" :>
       Capture "tableId" Text
       :> "features"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "version" Text
       :> QueryParam "select" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the supplied features. A single batchPatch request can update: -
-- Up to 50 features. - A combined total of 10 000 vertices. Feature limits
-- are documented in the Supported data formats and limits article of the
-- Google Maps Engine help center. Note that free and paid accounts have
-- different limits. Feature updates use HTTP PATCH semantics: - A supplied
-- value replaces an existing value (if any) in that field. - Omitted
-- fields remain unchanged. - Complex values in geometries and properties
-- must be replaced as atomic units. For example, providing just the
-- coordinates of a geometry is not allowed; the complete geometry,
-- including type, must be supplied. - Setting a property\'s value to null
-- deletes that property. For more information about updating features,
-- read Updating features in the Google Maps Engine developer\'s guide.
type FeaturesBatchPatch =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "features"
       :> "batchPatch"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete all features matching the given IDs.
type FeaturesBatchDelete =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "features"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FilesAPI = FilesInsert

-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
type FilesInsert =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "files"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "filename" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI =
     PermissionsBatchUpdate :<|>
       PermissionsBatchDelete :<|> PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
type PermissionsBatchUpdate =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "permissions"
       :> "batchUpdate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove permission entries from an already existing asset.
type PermissionsBatchDelete =
     "mapsengine" :> "v1" :> "tables" :> Capture "id" Text
       :> "permissions"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LayersAPI = PermissionsAPI :<|> ParentsAPI

type ParentsAPI = ParentsList

-- | Return all parent ids of the specified layer.
type ParentsList =
     "mapsengine" :> "v1" :> "layers" :> Capture "id" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI =
     PermissionsBatchUpdate :<|>
       PermissionsBatchDelete :<|> PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "layers" :> Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
type PermissionsBatchUpdate =
     "mapsengine" :> "v1" :> "layers" :> Capture "id" Text
       :> "permissions"
       :> "batchUpdate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove permission entries from an already existing asset.
type PermissionsBatchDelete =
     "mapsengine" :> "v1" :> "layers" :> Capture "id" Text
       :> "permissions"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RastersAPI =
     FilesAPI :<|> PermissionsAPI :<|> ParentsAPI

type ParentsAPI = ParentsList

-- | Return all parent ids of the specified rasters.
type ParentsList =
     "mapsengine" :> "v1" :> "rasters" :>
       Capture "id" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FilesAPI = FilesInsert

-- | Upload a file to a raster asset.
type FilesInsert =
     "mapsengine" :> "v1" :> "rasters" :>
       Capture "id" Text
       :> "files"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "filename" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI =
     PermissionsBatchUpdate :<|>
       PermissionsBatchDelete :<|> PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "rasters" :>
       Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
type PermissionsBatchUpdate =
     "mapsengine" :> "v1" :> "rasters" :>
       Capture "id" Text
       :> "permissions"
       :> "batchUpdate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove permission entries from an already existing asset.
type PermissionsBatchDelete =
     "mapsengine" :> "v1" :> "rasters" :>
       Capture "id" Text
       :> "permissions"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AssetsAPI = PermissionsAPI :<|> ParentsAPI

type ParentsAPI = ParentsList

-- | Return all parent ids of the specified asset.
type ParentsList =
     "mapsengine" :> "v1" :> "assets" :> Capture "id" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI = PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "assets" :> Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProjectsAPI = IconsAPI

type IconsAPI =
     IconsGet :<|> IconsCreate :<|> IconsList

-- | Return all icons in the current project
type IconsList =
     "mapsengine" :> "v1" :> "projects" :>
       Capture "projectId" Text
       :> "icons"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Return an icon or its associated metadata
type IconsGet =
     "mapsengine" :> "v1" :> "projects" :>
       Capture "projectId" Text
       :> "icons"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create an icon.
type IconsCreate =
     "mapsengine" :> "v1" :> "projects" :>
       Capture "projectId" Text
       :> "icons"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RasterCollectionsAPI =
     PermissionsAPI :<|> RastersAPI :<|> ParentsAPI

type ParentsAPI = ParentsList

-- | Return all parent ids of the specified raster collection.
type ParentsList =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI =
     PermissionsBatchUpdate :<|>
       PermissionsBatchDelete :<|> PermissionsList

-- | Return all of the permissions for the specified asset.
type PermissionsList =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
type PermissionsBatchUpdate =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "permissions"
       :> "batchUpdate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove permission entries from an already existing asset.
type PermissionsBatchDelete =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "permissions"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RastersAPI =
     RastersBatchInsert :<|>
       RastersBatchDelete :<|> RastersList

-- | Return all rasters within a raster collection.
type RastersList =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "rasters"
       :> QueryParam "createdAfter" UTCTime
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "creatorEmail" Text
       :> QueryParam "role" Text
       :> QueryParam "key" Text
       :> QueryParam "bbox" Text
       :> QueryParam "modifiedAfter" UTCTime
       :> QueryParam "modifiedBefore" UTCTime
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "search" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "tags" Text
       :> QueryParam "fields" Text
       :> QueryParam "createdBefore" UTCTime
       :> QueryParam "alt" Text

-- | Add rasters to an existing raster collection. Rasters must be
-- successfully processed in order to be added to a raster collection. Up
-- to 50 rasters can be included in a single batchInsert request. Each
-- batchInsert request is atomic.
type RastersBatchInsert =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "rasters"
       :> "batchInsert"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove rasters from an existing raster collection. Up to 50 rasters can
-- be included in a single batchDelete request. Each batchDelete request is
-- atomic.
type RastersBatchDelete =
     "mapsengine" :> "v1" :> "rasterCollections" :>
       Capture "id" Text
       :> "rasters"
       :> "batchDelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
