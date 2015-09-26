-- |
-- Module      : Network.Google.MapsEngine
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Maps Engine API allows developers to store and query geospatial vector and raster data.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference>
module Network.Google.MapsEngine
    (
    -- * API Definition
      MapsEngine



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

{- $resources
TODO
-}

type MapsEngine = ()

mapsEngine :: Proxy MapsEngine
mapsEngine = Proxy




