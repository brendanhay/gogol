{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsEngine.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsEngine.Types.Product where

import           Network.Google.MapsEngine.Types.Sum
import           Network.Google.Prelude

-- | Range of values used for scaling shapes. The min\/max values will be
-- drawn as shapes with the min\/max size.
--
-- /See:/ 'valueRange' smart constructor.
data ValueRange = ValueRange
    { _vrMax :: !(Maybe Double)
    , _vrMin :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ValueRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrMax'
--
-- * 'vrMin'
valueRange
    :: ValueRange
valueRange =
    ValueRange
    { _vrMax = Nothing
    , _vrMin = Nothing
    }

-- | Maximum value.
vrMax :: Lens' ValueRange (Maybe Double)
vrMax = lens _vrMax (\ s a -> s{_vrMax = a})

-- | Minimum value.
vrMin :: Lens' ValueRange (Maybe Double)
vrMin = lens _vrMin (\ s a -> s{_vrMin = a})

instance FromJSON ValueRange where
        parseJSON
          = withObject "ValueRange"
              (\ o ->
                 ValueRange <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON ValueRange where
        toJSON ValueRange{..}
          = object
              (catMaybes
                 [("max" .=) <$> _vrMax, ("min" .=) <$> _vrMin])

-- | The properties associated with a feature.
--
-- /See:/ 'geoJSONProperties' smart constructor.
data GeoJSONProperties =
    GeoJSONProperties
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONProperties' with the minimum fields required to make a request.
--
geoJSONProperties
    :: GeoJSONProperties
geoJSONProperties = GeoJSONProperties

instance FromJSON GeoJSONProperties where
        parseJSON
          = withObject "GeoJSONProperties"
              (\ o -> pure GeoJSONProperties)

instance ToJSON GeoJSONProperties where
        toJSON = const (Object mempty)

-- | A feature within a table.
--
-- /See:/ 'feature' smart constructor.
data Feature = Feature
    { _fGeometry   :: !(Maybe GeoJSONGeometry)
    , _fType       :: !Text
    , _fProperties :: !(Maybe GeoJSONProperties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Feature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fGeometry'
--
-- * 'fType'
--
-- * 'fProperties'
feature
    :: Feature
feature =
    Feature
    { _fGeometry = Nothing
    , _fType = "Feature"
    , _fProperties = Nothing
    }

-- | The geometry member of this Feature.
fGeometry :: Lens' Feature (Maybe GeoJSONGeometry)
fGeometry
  = lens _fGeometry (\ s a -> s{_fGeometry = a})

-- | Identifies this object as a feature.
fType :: Lens' Feature Text
fType = lens _fType (\ s a -> s{_fType = a})

-- | Key\/value pairs of this Feature.
fProperties :: Lens' Feature (Maybe GeoJSONProperties)
fProperties
  = lens _fProperties (\ s a -> s{_fProperties = a})

instance FromJSON Feature where
        parseJSON
          = withObject "Feature"
              (\ o ->
                 Feature <$>
                   (o .:? "geometry") <*> (o .:? "type" .!= "Feature")
                     <*> (o .:? "properties"))

instance ToJSON Feature where
        toJSON Feature{..}
          = object
              (catMaybes
                 [("geometry" .=) <$> _fGeometry,
                  Just ("type" .= _fType),
                  ("properties" .=) <$> _fProperties])

-- | A list of the parents of an asset.
--
-- /See:/ 'parent' smart constructor.
newtype Parent = Parent
    { _pId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Parent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pId'
parent
    :: Parent
parent =
    Parent
    { _pId = Nothing
    }

-- | The ID of this parent.
pId :: Lens' Parent (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

instance FromJSON Parent where
        parseJSON
          = withObject "Parent"
              (\ o -> Parent <$> (o .:? "id"))

instance ToJSON Parent where
        toJSON Parent{..}
          = object (catMaybes [("id" .=) <$> _pId])

-- | The request sent to features.BatchPatch.
--
-- /See:/ 'featuresBatchPatchRequest' smart constructor.
data FeaturesBatchPatchRequest = FeaturesBatchPatchRequest
    { _fbprFeatures            :: !(Maybe [Feature])
    , _fbprNormalizeGeometries :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesBatchPatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbprFeatures'
--
-- * 'fbprNormalizeGeometries'
featuresBatchPatchRequest
    :: FeaturesBatchPatchRequest
featuresBatchPatchRequest =
    FeaturesBatchPatchRequest
    { _fbprFeatures = Nothing
    , _fbprNormalizeGeometries = True
    }

fbprFeatures :: Lens' FeaturesBatchPatchRequest [Feature]
fbprFeatures
  = lens _fbprFeatures (\ s a -> s{_fbprFeatures = a})
      . _Default
      . _Coerce

-- | If true, the server will normalize feature geometries. It is assumed
-- that the South Pole is exterior to any polygons given. See here for a
-- list of normalizations. If false, all feature geometries must be given
-- already normalized. The points in all LinearRings must be listed in
-- counter-clockwise order, and LinearRings may not intersect.
fbprNormalizeGeometries :: Lens' FeaturesBatchPatchRequest Bool
fbprNormalizeGeometries
  = lens _fbprNormalizeGeometries
      (\ s a -> s{_fbprNormalizeGeometries = a})

instance FromJSON FeaturesBatchPatchRequest where
        parseJSON
          = withObject "FeaturesBatchPatchRequest"
              (\ o ->
                 FeaturesBatchPatchRequest <$>
                   (o .:? "features" .!= mempty) <*>
                     (o .:? "normalizeGeometries" .!= True))

instance ToJSON FeaturesBatchPatchRequest where
        toJSON FeaturesBatchPatchRequest{..}
          = object
              (catMaybes
                 [("features" .=) <$> _fbprFeatures,
                  Just
                    ("normalizeGeometries" .= _fbprNormalizeGeometries)])

-- | The request sent to mapsengine.permissions.batchUpdate.
--
-- /See:/ 'permissionsBatchUpdateRequest' smart constructor.
newtype PermissionsBatchUpdateRequest = PermissionsBatchUpdateRequest
    { _pburPermissions :: Maybe [Permission]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsBatchUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pburPermissions'
permissionsBatchUpdateRequest
    :: PermissionsBatchUpdateRequest
permissionsBatchUpdateRequest =
    PermissionsBatchUpdateRequest
    { _pburPermissions = Nothing
    }

-- | The permissions to be inserted or updated.
pburPermissions :: Lens' PermissionsBatchUpdateRequest [Permission]
pburPermissions
  = lens _pburPermissions
      (\ s a -> s{_pburPermissions = a})
      . _Default
      . _Coerce

instance FromJSON PermissionsBatchUpdateRequest where
        parseJSON
          = withObject "PermissionsBatchUpdateRequest"
              (\ o ->
                 PermissionsBatchUpdateRequest <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON PermissionsBatchUpdateRequest where
        toJSON PermissionsBatchUpdateRequest{..}
          = object
              (catMaybes [("permissions" .=) <$> _pburPermissions])

-- | The request sent to mapsengine.permissions.batchDelete.
--
-- /See:/ 'permissionsBatchDeleteRequest' smart constructor.
newtype PermissionsBatchDeleteRequest = PermissionsBatchDeleteRequest
    { _pbdrIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsBatchDeleteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbdrIds'
permissionsBatchDeleteRequest
    :: PermissionsBatchDeleteRequest
permissionsBatchDeleteRequest =
    PermissionsBatchDeleteRequest
    { _pbdrIds = Nothing
    }

-- | An array of permission ids to be removed. This could be the email
-- address of the user or group this permission refers to, or the string
-- \"anyone\" for public permissions.
pbdrIds :: Lens' PermissionsBatchDeleteRequest [Text]
pbdrIds
  = lens _pbdrIds (\ s a -> s{_pbdrIds = a}) . _Default
      . _Coerce

instance FromJSON PermissionsBatchDeleteRequest where
        parseJSON
          = withObject "PermissionsBatchDeleteRequest"
              (\ o ->
                 PermissionsBatchDeleteRequest <$>
                   (o .:? "ids" .!= mempty))

instance ToJSON PermissionsBatchDeleteRequest where
        toJSON PermissionsBatchDeleteRequest{..}
          = object (catMaybes [("ids" .=) <$> _pbdrIds])

-- | The response returned by a call to raster_collections.List. Note: The
-- list response does not include all the fields available in a raster
-- collection. Refer to the RasterCollection resource description for
-- details of the fields that are not included. You\'ll need to send a get
-- request to retrieve the additional fields for each raster collection.
--
-- /See:/ 'rasterCollectionsListResponse' smart constructor.
data RasterCollectionsListResponse = RasterCollectionsListResponse
    { _rclrNextPageToken     :: !(Maybe Word8)
    , _rclrRasterCollections :: !(Maybe [RasterCollection])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclrNextPageToken'
--
-- * 'rclrRasterCollections'
rasterCollectionsListResponse
    :: RasterCollectionsListResponse
rasterCollectionsListResponse =
    RasterCollectionsListResponse
    { _rclrNextPageToken = Nothing
    , _rclrRasterCollections = Nothing
    }

-- | Next page token.
rclrNextPageToken :: Lens' RasterCollectionsListResponse (Maybe Word8)
rclrNextPageToken
  = lens _rclrNextPageToken
      (\ s a -> s{_rclrNextPageToken = a})

-- | Resources returned.
rclrRasterCollections :: Lens' RasterCollectionsListResponse [RasterCollection]
rclrRasterCollections
  = lens _rclrRasterCollections
      (\ s a -> s{_rclrRasterCollections = a})
      . _Default
      . _Coerce

instance FromJSON RasterCollectionsListResponse where
        parseJSON
          = withObject "RasterCollectionsListResponse"
              (\ o ->
                 RasterCollectionsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "rasterCollections" .!= mempty))

instance ToJSON RasterCollectionsListResponse where
        toJSON RasterCollectionsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rclrNextPageToken,
                  ("rasterCollections" .=) <$> _rclrRasterCollections])

-- | The response returned by a call to projects.List.
--
-- /See:/ 'projectsListResponse' smart constructor.
newtype ProjectsListResponse = ProjectsListResponse
    { _plrProjects :: Maybe [Project]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrProjects'
projectsListResponse
    :: ProjectsListResponse
projectsListResponse =
    ProjectsListResponse
    { _plrProjects = Nothing
    }

-- | Projects returned.
plrProjects :: Lens' ProjectsListResponse [Project]
plrProjects
  = lens _plrProjects (\ s a -> s{_plrProjects = a}) .
      _Default
      . _Coerce

instance FromJSON ProjectsListResponse where
        parseJSON
          = withObject "ProjectsListResponse"
              (\ o ->
                 ProjectsListResponse <$>
                   (o .:? "projects" .!= mempty))

instance ToJSON ProjectsListResponse where
        toJSON ProjectsListResponse{..}
          = object
              (catMaybes [("projects" .=) <$> _plrProjects])

--
-- /See:/ 'geoJSONGeometry' smart constructor.
data GeoJSONGeometry =
    GeoJSONGeometry
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONGeometry' with the minimum fields required to make a request.
--
geoJSONGeometry
    :: GeoJSONGeometry
geoJSONGeometry = GeoJSONGeometry

instance FromJSON GeoJSONGeometry where
        parseJSON
          = withObject "GeoJSONGeometry"
              (\ o -> pure GeoJSONGeometry)

instance ToJSON GeoJSONGeometry where
        toJSON = const (Object mempty)

--
-- /See:/ 'mapLayer' smart constructor.
data MapLayer = MapLayer
    { _mlDefaultViewport :: !(Maybe [Double])
    , _mlVisibility      :: !(Maybe Text)
    , _mlKey             :: !(Maybe Text)
    , _mlName            :: !(Maybe Text)
    , _mlId              :: !(Maybe Text)
    , _mlType            :: !(Maybe MapLayerType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapLayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlDefaultViewport'
--
-- * 'mlVisibility'
--
-- * 'mlKey'
--
-- * 'mlName'
--
-- * 'mlId'
--
-- * 'mlType'
mapLayer
    :: MapLayer
mapLayer =
    MapLayer
    { _mlDefaultViewport = Nothing
    , _mlVisibility = Nothing
    , _mlKey = Nothing
    , _mlName = Nothing
    , _mlId = Nothing
    , _mlType = Nothing
    }

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
mlDefaultViewport :: Lens' MapLayer [Double]
mlDefaultViewport
  = lens _mlDefaultViewport
      (\ s a -> s{_mlDefaultViewport = a})
      . _Default
      . _Coerce

-- | The visibility setting of this MapLayer. One of \"defaultOn\" or
-- \"defaultOff\".
mlVisibility :: Lens' MapLayer (Maybe Text)
mlVisibility
  = lens _mlVisibility (\ s a -> s{_mlVisibility = a})

-- | A user defined alias for this MapLayer, specific to this Map.
mlKey :: Lens' MapLayer (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | The name of this MapLayer.
mlName :: Lens' MapLayer (Maybe Text)
mlName = lens _mlName (\ s a -> s{_mlName = a})

-- | The ID of this MapLayer. This ID can be used to request more details
-- about the layer.
mlId :: Lens' MapLayer (Maybe Text)
mlId = lens _mlId (\ s a -> s{_mlId = a})

-- | Identifies this object as a MapLayer.
mlType :: Lens' MapLayer (Maybe MapLayerType)
mlType = lens _mlType (\ s a -> s{_mlType = a})

instance FromJSON MapLayer where
        parseJSON
          = withObject "MapLayer"
              (\ o ->
                 MapLayer <$>
                   (o .:? "defaultViewport" .!= mempty) <*>
                     (o .:? "visibility")
                     <*> (o .:? "key")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON MapLayer where
        toJSON MapLayer{..}
          = object
              (catMaybes
                 [("defaultViewport" .=) <$> _mlDefaultViewport,
                  ("visibility" .=) <$> _mlVisibility,
                  ("key" .=) <$> _mlKey, ("name" .=) <$> _mlName,
                  ("id" .=) <$> _mlId, ("type" .=) <$> _mlType])

-- | Zoom level range. Zoom levels are restricted between 0 and 24,
-- inclusive.
--
-- /See:/ 'zoomLevels' smart constructor.
data ZoomLevels = ZoomLevels
    { _zlMax :: !(Maybe Int32)
    , _zlMin :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoomLevels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlMax'
--
-- * 'zlMin'
zoomLevels
    :: ZoomLevels
zoomLevels =
    ZoomLevels
    { _zlMax = Nothing
    , _zlMin = Nothing
    }

-- | Maximum zoom level.
zlMax :: Lens' ZoomLevels (Maybe Int32)
zlMax = lens _zlMax (\ s a -> s{_zlMax = a})

-- | Minimum zoom level.
zlMin :: Lens' ZoomLevels (Maybe Int32)
zlMin = lens _zlMin (\ s a -> s{_zlMin = a})

instance FromJSON ZoomLevels where
        parseJSON
          = withObject "ZoomLevels"
              (\ o ->
                 ZoomLevels <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON ZoomLevels where
        toJSON ZoomLevels{..}
          = object
              (catMaybes
                 [("max" .=) <$> _zlMax, ("min" .=) <$> _zlMin])

-- | A feature info contains information about individual feature.
--
-- /See:/ 'featureInfo' smart constructor.
newtype FeatureInfo = FeatureInfo
    { _fiContent :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeatureInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiContent'
featureInfo
    :: FeatureInfo
featureInfo =
    FeatureInfo
    { _fiContent = Nothing
    }

-- | HTML template of the info window. If not provided, a default template
-- with all attributes will be generated.
fiContent :: Lens' FeatureInfo (Maybe Text)
fiContent
  = lens _fiContent (\ s a -> s{_fiContent = a})

instance FromJSON FeatureInfo where
        parseJSON
          = withObject "FeatureInfo"
              (\ o -> FeatureInfo <$> (o .:? "content"))

instance ToJSON FeatureInfo where
        toJSON FeatureInfo{..}
          = object (catMaybes [("content" .=) <$> _fiContent])

-- | Scaled shape size range in pixels. For circles, size corresponds to
-- diameter.
--
-- /See:/ 'sizeRange' smart constructor.
data SizeRange = SizeRange
    { _srMax :: !(Maybe Double)
    , _srMin :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srMax'
--
-- * 'srMin'
sizeRange
    :: SizeRange
sizeRange =
    SizeRange
    { _srMax = Nothing
    , _srMin = Nothing
    }

-- | Maximum size, in pixels.
srMax :: Lens' SizeRange (Maybe Double)
srMax = lens _srMax (\ s a -> s{_srMax = a})

-- | Minimum size, in pixels.
srMin :: Lens' SizeRange (Maybe Double)
srMin = lens _srMin (\ s a -> s{_srMin = a})

instance FromJSON SizeRange where
        parseJSON
          = withObject "SizeRange"
              (\ o ->
                 SizeRange <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON SizeRange where
        toJSON SizeRange{..}
          = object
              (catMaybes
                 [("max" .=) <$> _srMax, ("min" .=) <$> _srMin])

--
-- /See:/ 'mapFolder' smart constructor.
data MapFolder = MapFolder
    { _mfExpandable      :: !(Maybe Bool)
    , _mfDefaultViewport :: !(Maybe [Double])
    , _mfContents        :: !(Maybe [MapItem])
    , _mfVisibility      :: !(Maybe Text)
    , _mfKey             :: !(Maybe Text)
    , _mfName            :: !(Maybe Text)
    , _mfType            :: !(Maybe MapFolderType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapFolder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfExpandable'
--
-- * 'mfDefaultViewport'
--
-- * 'mfContents'
--
-- * 'mfVisibility'
--
-- * 'mfKey'
--
-- * 'mfName'
--
-- * 'mfType'
mapFolder
    :: MapFolder
mapFolder =
    MapFolder
    { _mfExpandable = Nothing
    , _mfDefaultViewport = Nothing
    , _mfContents = Nothing
    , _mfVisibility = Nothing
    , _mfKey = Nothing
    , _mfName = Nothing
    , _mfType = Nothing
    }

-- | The expandability setting of this MapFolder. If true, the folder can be
-- expanded.
mfExpandable :: Lens' MapFolder (Maybe Bool)
mfExpandable
  = lens _mfExpandable (\ s a -> s{_mfExpandable = a})

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
mfDefaultViewport :: Lens' MapFolder [Double]
mfDefaultViewport
  = lens _mfDefaultViewport
      (\ s a -> s{_mfDefaultViewport = a})
      . _Default
      . _Coerce

mfContents :: Lens' MapFolder [MapItem]
mfContents
  = lens _mfContents (\ s a -> s{_mfContents = a}) .
      _Default
      . _Coerce

-- | The visibility setting of this MapFolder. One of \"defaultOn\" or
-- \"defaultOff\".
mfVisibility :: Lens' MapFolder (Maybe Text)
mfVisibility
  = lens _mfVisibility (\ s a -> s{_mfVisibility = a})

-- | A user defined alias for this MapFolder, specific to this Map.
mfKey :: Lens' MapFolder (Maybe Text)
mfKey = lens _mfKey (\ s a -> s{_mfKey = a})

-- | The name of this MapFolder.
mfName :: Lens' MapFolder (Maybe Text)
mfName = lens _mfName (\ s a -> s{_mfName = a})

-- | Identifies this object as a MapFolder.
mfType :: Lens' MapFolder (Maybe MapFolderType)
mfType = lens _mfType (\ s a -> s{_mfType = a})

instance FromJSON MapFolder where
        parseJSON
          = withObject "MapFolder"
              (\ o ->
                 MapFolder <$>
                   (o .:? "expandable") <*>
                     (o .:? "defaultViewport" .!= mempty)
                     <*> (o .:? "contents" .!= mempty)
                     <*> (o .:? "visibility")
                     <*> (o .:? "key")
                     <*> (o .:? "name")
                     <*> (o .:? "type"))

instance ToJSON MapFolder where
        toJSON MapFolder{..}
          = object
              (catMaybes
                 [("expandable" .=) <$> _mfExpandable,
                  ("defaultViewport" .=) <$> _mfDefaultViewport,
                  ("contents" .=) <$> _mfContents,
                  ("visibility" .=) <$> _mfVisibility,
                  ("key" .=) <$> _mfKey, ("name" .=) <$> _mfName,
                  ("type" .=) <$> _mfType])

-- | A Maps Engine project groups a collection of resources.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _proName :: !(Maybe Text)
    , _proId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proName'
--
-- * 'proId'
project
    :: Project
project =
    Project
    { _proName = Nothing
    , _proId = Nothing
    }

-- | A user provided name for this Maps Engine project.
proName :: Lens' Project (Maybe Text)
proName = lens _proName (\ s a -> s{_proName = a})

-- | An ID used to refer to this Maps Engine project.
proId :: Lens' Project (Maybe Text)
proId = lens _proId (\ s a -> s{_proId = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o -> Project <$> (o .:? "name") <*> (o .:? "id"))

instance ToJSON Project where
        toJSON Project{..}
          = object
              (catMaybes
                 [("name" .=) <$> _proName, ("id" .=) <$> _proId])

-- | Basic color used in styling.
--
-- /See:/ 'color' smart constructor.
data Color = Color
    { _cColor   :: !(Maybe Text)
    , _cOpacity :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cColor'
--
-- * 'cOpacity'
color
    :: Color
color =
    Color
    { _cColor = Nothing
    , _cOpacity = Nothing
    }

-- | The CSS style color, can be in format of \"red\" or \"#7733EE\".
cColor :: Lens' Color (Maybe Text)
cColor = lens _cColor (\ s a -> s{_cColor = a})

-- | Opacity ranges from 0 to 1, inclusive. If not provided, default to 1.
cOpacity :: Lens' Color (Maybe Double)
cOpacity = lens _cOpacity (\ s a -> s{_cOpacity = a})

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o ->
                 Color <$> (o .:? "color") <*> (o .:? "opacity"))

instance ToJSON Color where
        toJSON Color{..}
          = object
              (catMaybes
                 [("color" .=) <$> _cColor,
                  ("opacity" .=) <$> _cOpacity])

-- | A raster collection groups multiple Raster resources for inclusion in a
-- Layer.
--
-- /See:/ 'rasterCollection' smart constructor.
data RasterCollection = RasterCollection
    { _rcCreationTime              :: !(Maybe DateTime')
    , _rcWritersCanEditPermissions :: !(Maybe Bool)
    , _rcEtag                      :: !(Maybe Text)
    , _rcCreatorEmail              :: !(Maybe Text)
    , _rcRasterType                :: !(Maybe RasterCollectionRasterType)
    , _rcLastModifiedTime          :: !(Maybe DateTime')
    , _rcLastModifierEmail         :: !(Maybe Text)
    , _rcName                      :: !(Maybe Text)
    , _rcBbox                      :: !(Maybe [Double])
    , _rcProcessingStatus          :: !(Maybe RasterCollectionProcessingStatus)
    , _rcMosaic                    :: !(Maybe Bool)
    , _rcId                        :: !(Maybe Text)
    , _rcProjectId                 :: !(Maybe Text)
    , _rcDraftAccessList           :: !(Maybe Text)
    , _rcDescription               :: !(Maybe Text)
    , _rcAttribution               :: !(Maybe Text)
    , _rcTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcCreationTime'
--
-- * 'rcWritersCanEditPermissions'
--
-- * 'rcEtag'
--
-- * 'rcCreatorEmail'
--
-- * 'rcRasterType'
--
-- * 'rcLastModifiedTime'
--
-- * 'rcLastModifierEmail'
--
-- * 'rcName'
--
-- * 'rcBbox'
--
-- * 'rcProcessingStatus'
--
-- * 'rcMosaic'
--
-- * 'rcId'
--
-- * 'rcProjectId'
--
-- * 'rcDraftAccessList'
--
-- * 'rcDescription'
--
-- * 'rcAttribution'
--
-- * 'rcTags'
rasterCollection
    :: RasterCollection
rasterCollection =
    RasterCollection
    { _rcCreationTime = Nothing
    , _rcWritersCanEditPermissions = Nothing
    , _rcEtag = Nothing
    , _rcCreatorEmail = Nothing
    , _rcRasterType = Nothing
    , _rcLastModifiedTime = Nothing
    , _rcLastModifierEmail = Nothing
    , _rcName = Nothing
    , _rcBbox = Nothing
    , _rcProcessingStatus = Nothing
    , _rcMosaic = Nothing
    , _rcId = Nothing
    , _rcProjectId = Nothing
    , _rcDraftAccessList = Nothing
    , _rcDescription = Nothing
    , _rcAttribution = Nothing
    , _rcTags = Nothing
    }

-- | The creation time of this RasterCollection. The value is an RFC 3339
-- formatted date-time value (e.g. 1970-01-01T00:00:00Z).
rcCreationTime :: Lens' RasterCollection (Maybe UTCTime)
rcCreationTime
  = lens _rcCreationTime
      (\ s a -> s{_rcCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
rcWritersCanEditPermissions :: Lens' RasterCollection (Maybe Bool)
rcWritersCanEditPermissions
  = lens _rcWritersCanEditPermissions
      (\ s a -> s{_rcWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
rcEtag :: Lens' RasterCollection (Maybe Text)
rcEtag = lens _rcEtag (\ s a -> s{_rcEtag = a})

-- | The email address of the creator of this raster collection. This is only
-- returned on GET requests and not LIST requests.
rcCreatorEmail :: Lens' RasterCollection (Maybe Text)
rcCreatorEmail
  = lens _rcCreatorEmail
      (\ s a -> s{_rcCreatorEmail = a})

-- | The type of rasters contained within this RasterCollection.
rcRasterType :: Lens' RasterCollection (Maybe RasterCollectionRasterType)
rcRasterType
  = lens _rcRasterType (\ s a -> s{_rcRasterType = a})

-- | The last modified time of this RasterCollection. The value is an RFC
-- 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
rcLastModifiedTime :: Lens' RasterCollection (Maybe UTCTime)
rcLastModifiedTime
  = lens _rcLastModifiedTime
      (\ s a -> s{_rcLastModifiedTime = a})
      . mapping _DateTime

-- | The email address of the last modifier of this raster collection. This
-- is only returned on GET requests and not LIST requests.
rcLastModifierEmail :: Lens' RasterCollection (Maybe Text)
rcLastModifierEmail
  = lens _rcLastModifierEmail
      (\ s a -> s{_rcLastModifierEmail = a})

-- | The name of this RasterCollection, supplied by the author.
rcName :: Lens' RasterCollection (Maybe Text)
rcName = lens _rcName (\ s a -> s{_rcName = a})

-- | A rectangular bounding box which contains all of the data in this
-- RasterCollection. The box is expressed as \\\"west, south, east,
-- north\\\". The numbers represent latitude and longitude in decimal
-- degrees.
rcBbox :: Lens' RasterCollection [Double]
rcBbox
  = lens _rcBbox (\ s a -> s{_rcBbox = a}) . _Default .
      _Coerce

-- | The processing status of this RasterCollection.
rcProcessingStatus :: Lens' RasterCollection (Maybe RasterCollectionProcessingStatus)
rcProcessingStatus
  = lens _rcProcessingStatus
      (\ s a -> s{_rcProcessingStatus = a})

-- | True if this RasterCollection is a mosaic.
rcMosaic :: Lens' RasterCollection (Maybe Bool)
rcMosaic = lens _rcMosaic (\ s a -> s{_rcMosaic = a})

-- | A globally unique ID, used to refer to this RasterCollection.
rcId :: Lens' RasterCollection (Maybe Text)
rcId = lens _rcId (\ s a -> s{_rcId = a})

-- | The ID of the project that this RasterCollection is in.
rcProjectId :: Lens' RasterCollection (Maybe Text)
rcProjectId
  = lens _rcProjectId (\ s a -> s{_rcProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
rcDraftAccessList :: Lens' RasterCollection (Maybe Text)
rcDraftAccessList
  = lens _rcDraftAccessList
      (\ s a -> s{_rcDraftAccessList = a})

-- | The description of this RasterCollection, supplied by the author.
rcDescription :: Lens' RasterCollection (Maybe Text)
rcDescription
  = lens _rcDescription
      (\ s a -> s{_rcDescription = a})

-- | The name of the attribution to be used for this RasterCollection. Note:
-- Attribution is returned in response to a get request but not a list
-- request. After requesting a list of raster collections, you\'ll need to
-- send a get request to retrieve the attribution for each raster
-- collection.
rcAttribution :: Lens' RasterCollection (Maybe Text)
rcAttribution
  = lens _rcAttribution
      (\ s a -> s{_rcAttribution = a})

-- | Tags of this RasterCollection.
rcTags :: Lens' RasterCollection [Text]
rcTags
  = lens _rcTags (\ s a -> s{_rcTags = a}) . _Default .
      _Coerce

instance FromJSON RasterCollection where
        parseJSON
          = withObject "RasterCollection"
              (\ o ->
                 RasterCollection <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "etag")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "rasterType")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "mosaic")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "draftAccessList")
                     <*> (o .:? "description")
                     <*> (o .:? "attribution")
                     <*> (o .:? "tags"))

instance ToJSON RasterCollection where
        toJSON RasterCollection{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _rcCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _rcWritersCanEditPermissions,
                  ("etag" .=) <$> _rcEtag,
                  ("creatorEmail" .=) <$> _rcCreatorEmail,
                  ("rasterType" .=) <$> _rcRasterType,
                  ("lastModifiedTime" .=) <$> _rcLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _rcLastModifierEmail,
                  ("name" .=) <$> _rcName, ("bbox" .=) <$> _rcBbox,
                  ("processingStatus" .=) <$> _rcProcessingStatus,
                  ("mosaic" .=) <$> _rcMosaic, ("id" .=) <$> _rcId,
                  ("projectId" .=) <$> _rcProjectId,
                  ("draftAccessList" .=) <$> _rcDraftAccessList,
                  ("description" .=) <$> _rcDescription,
                  ("attribution" .=) <$> _rcAttribution,
                  ("tags" .=) <$> _rcTags])

-- | Stroke of the line.
--
-- /See:/ 'lineStyleStroke' smart constructor.
data LineStyleStroke = LineStyleStroke
    { _lssColor   :: !(Maybe Text)
    , _lssWidth   :: !(Maybe Double)
    , _lssOpacity :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineStyleStroke' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssColor'
--
-- * 'lssWidth'
--
-- * 'lssOpacity'
lineStyleStroke
    :: LineStyleStroke
lineStyleStroke =
    LineStyleStroke
    { _lssColor = Nothing
    , _lssWidth = Nothing
    , _lssOpacity = Nothing
    }

-- | Color of the line.
lssColor :: Lens' LineStyleStroke (Maybe Text)
lssColor = lens _lssColor (\ s a -> s{_lssColor = a})

-- | Width of the line, in pixels. 0 \<= width \<= 10. If width is set to 0,
-- the line will be invisible.
lssWidth :: Lens' LineStyleStroke (Maybe Double)
lssWidth = lens _lssWidth (\ s a -> s{_lssWidth = a})

-- | Opacity of the line.
lssOpacity :: Lens' LineStyleStroke (Maybe Double)
lssOpacity
  = lens _lssOpacity (\ s a -> s{_lssOpacity = a})

instance FromJSON LineStyleStroke where
        parseJSON
          = withObject "LineStyleStroke"
              (\ o ->
                 LineStyleStroke <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "opacity"))

instance ToJSON LineStyleStroke where
        toJSON LineStyleStroke{..}
          = object
              (catMaybes
                 [("color" .=) <$> _lssColor,
                  ("width" .=) <$> _lssWidth,
                  ("opacity" .=) <$> _lssOpacity])

-- | The response returned by a call to
-- rasterCollections.rasters.batchDelete.
--
-- /See:/ 'rasterCollectionsRastersBatchDeleteResponse' smart constructor.
data RasterCollectionsRastersBatchDeleteResponse =
    RasterCollectionsRastersBatchDeleteResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchDeleteResponse' with the minimum fields required to make a request.
--
rasterCollectionsRastersBatchDeleteResponse
    :: RasterCollectionsRastersBatchDeleteResponse
rasterCollectionsRastersBatchDeleteResponse =
    RasterCollectionsRastersBatchDeleteResponse

instance FromJSON
         RasterCollectionsRastersBatchDeleteResponse where
        parseJSON
          = withObject
              "RasterCollectionsRastersBatchDeleteResponse"
              (\ o ->
                 pure RasterCollectionsRastersBatchDeleteResponse)

instance ToJSON
         RasterCollectionsRastersBatchDeleteResponse where
        toJSON = const (Object mempty)

-- | The response returned by a call to any asset\'s Process method.
--
-- /See:/ 'processResponse' smart constructor.
data ProcessResponse =
    ProcessResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProcessResponse' with the minimum fields required to make a request.
--
processResponse
    :: ProcessResponse
processResponse = ProcessResponse

instance FromJSON ProcessResponse where
        parseJSON
          = withObject "ProcessResponse"
              (\ o -> pure ProcessResponse)

instance ToJSON ProcessResponse where
        toJSON = const (Object mempty)

--
-- /See:/ 'tableColumn' smart constructor.
data TableColumn = TableColumn
    { _tcName :: !(Maybe Text)
    , _tcType :: !(Maybe TableColumnType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableColumn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcName'
--
-- * 'tcType'
tableColumn
    :: TableColumn
tableColumn =
    TableColumn
    { _tcName = Nothing
    , _tcType = Nothing
    }

-- | The column name.
tcName :: Lens' TableColumn (Maybe Text)
tcName = lens _tcName (\ s a -> s{_tcName = a})

-- | The type of data stored in this column.
tcType :: Lens' TableColumn (Maybe TableColumnType)
tcType = lens _tcType (\ s a -> s{_tcType = a})

instance FromJSON TableColumn where
        parseJSON
          = withObject "TableColumn"
              (\ o ->
                 TableColumn <$> (o .:? "name") <*> (o .:? "type"))

instance ToJSON TableColumn where
        toJSON TableColumn{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tcName, ("type" .=) <$> _tcType])

-- | An asset is any Google Maps Engine resource that has a globally unique
-- ID. Assets include maps, layers, vector tables, raster collections, and
-- rasters. Projects and features are not considered assets. More detailed
-- information about an asset can be obtained by querying the asset\'s
-- particular endpoint.
--
-- /See:/ 'asset' smart constructor.
data Asset = Asset
    { _aCreationTime              :: !(Maybe DateTime')
    , _aWritersCanEditPermissions :: !(Maybe Bool)
    , _aEtag                      :: !(Maybe Text)
    , _aCreatorEmail              :: !(Maybe Text)
    , _aLastModifiedTime          :: !(Maybe DateTime')
    , _aLastModifierEmail         :: !(Maybe Text)
    , _aName                      :: !(Maybe Text)
    , _aBbox                      :: !(Maybe [Double])
    , _aResource                  :: !(Maybe Text)
    , _aId                        :: !(Maybe Text)
    , _aProjectId                 :: !(Maybe Text)
    , _aType                      :: !(Maybe AssetType)
    , _aDescription               :: !(Maybe Text)
    , _aTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCreationTime'
--
-- * 'aWritersCanEditPermissions'
--
-- * 'aEtag'
--
-- * 'aCreatorEmail'
--
-- * 'aLastModifiedTime'
--
-- * 'aLastModifierEmail'
--
-- * 'aName'
--
-- * 'aBbox'
--
-- * 'aResource'
--
-- * 'aId'
--
-- * 'aProjectId'
--
-- * 'aType'
--
-- * 'aDescription'
--
-- * 'aTags'
asset
    :: Asset
asset =
    Asset
    { _aCreationTime = Nothing
    , _aWritersCanEditPermissions = Nothing
    , _aEtag = Nothing
    , _aCreatorEmail = Nothing
    , _aLastModifiedTime = Nothing
    , _aLastModifierEmail = Nothing
    , _aName = Nothing
    , _aBbox = Nothing
    , _aResource = Nothing
    , _aId = Nothing
    , _aProjectId = Nothing
    , _aType = Nothing
    , _aDescription = Nothing
    , _aTags = Nothing
    }

-- | The creation time of this asset. The value is an RFC 3339-formatted
-- date-time value (for example, 1970-01-01T00:00:00Z).
aCreationTime :: Lens' Asset (Maybe UTCTime)
aCreationTime
  = lens _aCreationTime
      (\ s a -> s{_aCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
aWritersCanEditPermissions :: Lens' Asset (Maybe Bool)
aWritersCanEditPermissions
  = lens _aWritersCanEditPermissions
      (\ s a -> s{_aWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
aEtag :: Lens' Asset (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The email address of the creator of this asset. This is only returned on
-- GET requests and not LIST requests.
aCreatorEmail :: Lens' Asset (Maybe Text)
aCreatorEmail
  = lens _aCreatorEmail
      (\ s a -> s{_aCreatorEmail = a})

-- | The last modified time of this asset. The value is an RFC 3339-formatted
-- date-time value (for example, 1970-01-01T00:00:00Z).
aLastModifiedTime :: Lens' Asset (Maybe UTCTime)
aLastModifiedTime
  = lens _aLastModifiedTime
      (\ s a -> s{_aLastModifiedTime = a})
      . mapping _DateTime

-- | The email address of the last modifier of this asset. This is only
-- returned on GET requests and not LIST requests.
aLastModifierEmail :: Lens' Asset (Maybe Text)
aLastModifierEmail
  = lens _aLastModifierEmail
      (\ s a -> s{_aLastModifierEmail = a})

-- | The asset\'s name.
aName :: Lens' Asset (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A rectangular bounding box which contains all of the data in this asset.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
aBbox :: Lens' Asset [Double]
aBbox
  = lens _aBbox (\ s a -> s{_aBbox = a}) . _Default .
      _Coerce

-- | The URL to query to retrieve the asset\'s complete object. The assets
-- endpoint only returns high-level information about a resource.
aResource :: Lens' Asset (Maybe Text)
aResource
  = lens _aResource (\ s a -> s{_aResource = a})

-- | The asset\'s globally unique ID.
aId :: Lens' Asset (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The ID of the project to which the asset belongs.
aProjectId :: Lens' Asset (Maybe Text)
aProjectId
  = lens _aProjectId (\ s a -> s{_aProjectId = a})

-- | The type of asset. One of raster, rasterCollection, table, map, or
-- layer.
aType :: Lens' Asset (Maybe AssetType)
aType = lens _aType (\ s a -> s{_aType = a})

-- | The asset\'s description.
aDescription :: Lens' Asset (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

-- | An array of text strings, with each string representing a tag. More
-- information about tags can be found in the Tagging data article of the
-- Maps Engine help center.
aTags :: Lens' Asset [Text]
aTags
  = lens _aTags (\ s a -> s{_aTags = a}) . _Default .
      _Coerce

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "etag")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "resource")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON Asset where
        toJSON Asset{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _aCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _aWritersCanEditPermissions,
                  ("etag" .=) <$> _aEtag,
                  ("creatorEmail" .=) <$> _aCreatorEmail,
                  ("lastModifiedTime" .=) <$> _aLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _aLastModifierEmail,
                  ("name" .=) <$> _aName, ("bbox" .=) <$> _aBbox,
                  ("resource" .=) <$> _aResource, ("id" .=) <$> _aId,
                  ("projectId" .=) <$> _aProjectId,
                  ("type" .=) <$> _aType,
                  ("description" .=) <$> _aDescription,
                  ("tags" .=) <$> _aTags])

-- | Parameters for styling points as scaled shapes.
--
-- /See:/ 'scaledShape' smart constructor.
data ScaledShape = ScaledShape
    { _ssBOrder :: !(Maybe BOrder)
    , _ssFill   :: !(Maybe Color)
    , _ssShape  :: !(Maybe ScaledShapeShape)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScaledShape' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssBOrder'
--
-- * 'ssFill'
--
-- * 'ssShape'
scaledShape
    :: ScaledShape
scaledShape =
    ScaledShape
    { _ssBOrder = Nothing
    , _ssFill = Nothing
    , _ssShape = Nothing
    }

-- | Border color\/width of the shape. If not specified the shape won\'t have
-- a border.
ssBOrder :: Lens' ScaledShape (Maybe BOrder)
ssBOrder = lens _ssBOrder (\ s a -> s{_ssBOrder = a})

-- | The fill color of the shape. If not specified the shape will be
-- transparent (although the borders may not be).
ssFill :: Lens' ScaledShape (Maybe Color)
ssFill = lens _ssFill (\ s a -> s{_ssFill = a})

-- | Name of the shape.
ssShape :: Lens' ScaledShape (Maybe ScaledShapeShape)
ssShape = lens _ssShape (\ s a -> s{_ssShape = a})

instance FromJSON ScaledShape where
        parseJSON
          = withObject "ScaledShape"
              (\ o ->
                 ScaledShape <$>
                   (o .:? "border") <*> (o .:? "fill") <*>
                     (o .:? "shape"))

instance ToJSON ScaledShape where
        toJSON ScaledShape{..}
          = object
              (catMaybes
                 [("border" .=) <$> _ssBOrder,
                  ("fill" .=) <$> _ssFill, ("shape" .=) <$> _ssShape])

-- | The request sent to features.BatchDelete.
--
-- /See:/ 'featuresBatchDeleteRequest' smart constructor.
data FeaturesBatchDeleteRequest = FeaturesBatchDeleteRequest
    { _fbdrPrimaryKeys :: !(Maybe [Text])
    , _fbdrGxIds       :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesBatchDeleteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbdrPrimaryKeys'
--
-- * 'fbdrGxIds'
featuresBatchDeleteRequest
    :: FeaturesBatchDeleteRequest
featuresBatchDeleteRequest =
    FeaturesBatchDeleteRequest
    { _fbdrPrimaryKeys = Nothing
    , _fbdrGxIds = Nothing
    }

fbdrPrimaryKeys :: Lens' FeaturesBatchDeleteRequest [Text]
fbdrPrimaryKeys
  = lens _fbdrPrimaryKeys
      (\ s a -> s{_fbdrPrimaryKeys = a})
      . _Default
      . _Coerce

fbdrGxIds :: Lens' FeaturesBatchDeleteRequest [Text]
fbdrGxIds
  = lens _fbdrGxIds (\ s a -> s{_fbdrGxIds = a}) .
      _Default
      . _Coerce

instance FromJSON FeaturesBatchDeleteRequest where
        parseJSON
          = withObject "FeaturesBatchDeleteRequest"
              (\ o ->
                 FeaturesBatchDeleteRequest <$>
                   (o .:? "primaryKeys" .!= mempty) <*>
                     (o .:? "gx_ids" .!= mempty))

instance ToJSON FeaturesBatchDeleteRequest where
        toJSON FeaturesBatchDeleteRequest{..}
          = object
              (catMaybes
                 [("primaryKeys" .=) <$> _fbdrPrimaryKeys,
                  ("gx_ids" .=) <$> _fbdrGxIds])

-- | An icon is a user-uploaded image that can be used to style point
-- geometries.
--
-- /See:/ 'icon' smart constructor.
data Icon = Icon
    { _iName        :: !(Maybe Text)
    , _iId          :: !(Maybe Text)
    , _iDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Icon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iName'
--
-- * 'iId'
--
-- * 'iDescription'
icon
    :: Icon
icon =
    Icon
    { _iName = Nothing
    , _iId = Nothing
    , _iDescription = Nothing
    }

-- | The name of this Icon, supplied by the author.
iName :: Lens' Icon (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | An ID used to refer to this Icon.
iId :: Lens' Icon (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | The description of this Icon, supplied by the author.
iDescription :: Lens' Icon (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

instance FromJSON Icon where
        parseJSON
          = withObject "Icon"
              (\ o ->
                 Icon <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "description"))

instance ToJSON Icon where
        toJSON Icon{..}
          = object
              (catMaybes
                 [("name" .=) <$> _iName, ("id" .=) <$> _iId,
                  ("description" .=) <$> _iDescription])

-- | The response returned by a call to parents.List.
--
-- /See:/ 'parentsListResponse' smart constructor.
data ParentsListResponse = ParentsListResponse
    { _plrNextPageToken :: !(Maybe Text)
    , _plrParents       :: !(Maybe [Parent])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrParents'
parentsListResponse
    :: ParentsListResponse
parentsListResponse =
    ParentsListResponse
    { _plrNextPageToken = Nothing
    , _plrParents = Nothing
    }

-- | Next page token.
plrNextPageToken :: Lens' ParentsListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | The parent assets.
plrParents :: Lens' ParentsListResponse [Parent]
plrParents
  = lens _plrParents (\ s a -> s{_plrParents = a}) .
      _Default
      . _Coerce

instance FromJSON ParentsListResponse where
        parseJSON
          = withObject "ParentsListResponse"
              (\ o ->
                 ParentsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "parents" .!= mempty))

instance ToJSON ParentsListResponse where
        toJSON ParentsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  ("parents" .=) <$> _plrParents])

-- | The response returned by a call to features.List.
--
-- /See:/ 'featuresListResponse' smart constructor.
data FeaturesListResponse = FeaturesListResponse
    { _flrNextPageToken           :: !(Maybe Text)
    , _flrAllowedQueriesPerSecond :: !(Maybe Double)
    , _flrSchema                  :: !(Maybe Schema)
    , _flrFeatures                :: !(Maybe [Feature])
    , _flrType                    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flrNextPageToken'
--
-- * 'flrAllowedQueriesPerSecond'
--
-- * 'flrSchema'
--
-- * 'flrFeatures'
--
-- * 'flrType'
featuresListResponse
    :: FeaturesListResponse
featuresListResponse =
    FeaturesListResponse
    { _flrNextPageToken = Nothing
    , _flrAllowedQueriesPerSecond = Nothing
    , _flrSchema = Nothing
    , _flrFeatures = Nothing
    , _flrType = "FeatureCollection"
    }

-- | Next page token.
flrNextPageToken :: Lens' FeaturesListResponse (Maybe Text)
flrNextPageToken
  = lens _flrNextPageToken
      (\ s a -> s{_flrNextPageToken = a})

-- | An indicator of the maximum rate at which queries may be made, if all
-- queries were as expensive as this query.
flrAllowedQueriesPerSecond :: Lens' FeaturesListResponse (Maybe Double)
flrAllowedQueriesPerSecond
  = lens _flrAllowedQueriesPerSecond
      (\ s a -> s{_flrAllowedQueriesPerSecond = a})

-- | The feature schema.
flrSchema :: Lens' FeaturesListResponse (Maybe Schema)
flrSchema
  = lens _flrSchema (\ s a -> s{_flrSchema = a})

-- | Resources returned.
flrFeatures :: Lens' FeaturesListResponse [Feature]
flrFeatures
  = lens _flrFeatures (\ s a -> s{_flrFeatures = a}) .
      _Default
      . _Coerce

flrType :: Lens' FeaturesListResponse Text
flrType = lens _flrType (\ s a -> s{_flrType = a})

instance FromJSON FeaturesListResponse where
        parseJSON
          = withObject "FeaturesListResponse"
              (\ o ->
                 FeaturesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "allowedQueriesPerSecond")
                     <*> (o .:? "schema")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "type" .!= "FeatureCollection"))

instance ToJSON FeaturesListResponse where
        toJSON FeaturesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _flrNextPageToken,
                  ("allowedQueriesPerSecond" .=) <$>
                    _flrAllowedQueriesPerSecond,
                  ("schema" .=) <$> _flrSchema,
                  ("features" .=) <$> _flrFeatures,
                  Just ("type" .= _flrType)])

-- | The response returned by a call to
-- rasterCollections.rasters.batchInsert.
--
-- /See:/ 'rasterCollectionsRastersBatchInsertResponse' smart constructor.
data RasterCollectionsRastersBatchInsertResponse =
    RasterCollectionsRastersBatchInsertResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchInsertResponse' with the minimum fields required to make a request.
--
rasterCollectionsRastersBatchInsertResponse
    :: RasterCollectionsRastersBatchInsertResponse
rasterCollectionsRastersBatchInsertResponse =
    RasterCollectionsRastersBatchInsertResponse

instance FromJSON
         RasterCollectionsRastersBatchInsertResponse where
        parseJSON
          = withObject
              "RasterCollectionsRastersBatchInsertResponse"
              (\ o ->
                 pure RasterCollectionsRastersBatchInsertResponse)

instance ToJSON
         RasterCollectionsRastersBatchInsertResponse where
        toJSON = const (Object mempty)

-- | The response returned by a call to icons.List.
--
-- /See:/ 'iconsListResponse' smart constructor.
data IconsListResponse = IconsListResponse
    { _ilrNextPageToken :: !(Maybe Text)
    , _ilrIcons         :: !(Maybe [Icon])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IconsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrNextPageToken'
--
-- * 'ilrIcons'
iconsListResponse
    :: IconsListResponse
iconsListResponse =
    IconsListResponse
    { _ilrNextPageToken = Nothing
    , _ilrIcons = Nothing
    }

-- | Next page token.
ilrNextPageToken :: Lens' IconsListResponse (Maybe Text)
ilrNextPageToken
  = lens _ilrNextPageToken
      (\ s a -> s{_ilrNextPageToken = a})

-- | Resources returned.
ilrIcons :: Lens' IconsListResponse [Icon]
ilrIcons
  = lens _ilrIcons (\ s a -> s{_ilrIcons = a}) .
      _Default
      . _Coerce

instance FromJSON IconsListResponse where
        parseJSON
          = withObject "IconsListResponse"
              (\ o ->
                 IconsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "icons" .!= mempty))

instance ToJSON IconsListResponse where
        toJSON IconsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ilrNextPageToken,
                  ("icons" .=) <$> _ilrIcons])

-- | Text label style.
--
-- /See:/ 'labelStyle' smart constructor.
data LabelStyle = LabelStyle
    { _lsFontStyle  :: !(Maybe LabelStyleFontStyle)
    , _lsColor      :: !(Maybe Text)
    , _lsSize       :: !(Maybe Double)
    , _lsOpacity    :: !(Maybe Double)
    , _lsOutline    :: !(Maybe Color)
    , _lsFontWeight :: !(Maybe LabelStyleFontWeight)
    , _lsColumn     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LabelStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsFontStyle'
--
-- * 'lsColor'
--
-- * 'lsSize'
--
-- * 'lsOpacity'
--
-- * 'lsOutline'
--
-- * 'lsFontWeight'
--
-- * 'lsColumn'
labelStyle
    :: LabelStyle
labelStyle =
    LabelStyle
    { _lsFontStyle = Nothing
    , _lsColor = Nothing
    , _lsSize = Nothing
    , _lsOpacity = Nothing
    , _lsOutline = Nothing
    , _lsFontWeight = Nothing
    , _lsColumn = Nothing
    }

-- | Font style of the label, defaults to \'normal\'.
lsFontStyle :: Lens' LabelStyle (Maybe LabelStyleFontStyle)
lsFontStyle
  = lens _lsFontStyle (\ s a -> s{_lsFontStyle = a})

-- | Color of the text. If not provided, default to black.
lsColor :: Lens' LabelStyle (Maybe Text)
lsColor = lens _lsColor (\ s a -> s{_lsColor = a})

-- | Font size of the label, in pixels. 8 \<= size \<= 15. If not provided, a
-- default size will be provided.
lsSize :: Lens' LabelStyle (Maybe Double)
lsSize = lens _lsSize (\ s a -> s{_lsSize = a})

-- | Opacity of the text.
lsOpacity :: Lens' LabelStyle (Maybe Double)
lsOpacity
  = lens _lsOpacity (\ s a -> s{_lsOpacity = a})

-- | Outline color of the text.
lsOutline :: Lens' LabelStyle (Maybe Color)
lsOutline
  = lens _lsOutline (\ s a -> s{_lsOutline = a})

-- | Font weight of the label, defaults to \'normal\'.
lsFontWeight :: Lens' LabelStyle (Maybe LabelStyleFontWeight)
lsFontWeight
  = lens _lsFontWeight (\ s a -> s{_lsFontWeight = a})

-- | The column value of the feature to be displayed.
lsColumn :: Lens' LabelStyle (Maybe Text)
lsColumn = lens _lsColumn (\ s a -> s{_lsColumn = a})

instance FromJSON LabelStyle where
        parseJSON
          = withObject "LabelStyle"
              (\ o ->
                 LabelStyle <$>
                   (o .:? "fontStyle") <*> (o .:? "color") <*>
                     (o .:? "size")
                     <*> (o .:? "opacity")
                     <*> (o .:? "outline")
                     <*> (o .:? "fontWeight")
                     <*> (o .:? "column"))

instance ToJSON LabelStyle where
        toJSON LabelStyle{..}
          = object
              (catMaybes
                 [("fontStyle" .=) <$> _lsFontStyle,
                  ("color" .=) <$> _lsColor, ("size" .=) <$> _lsSize,
                  ("opacity" .=) <$> _lsOpacity,
                  ("outline" .=) <$> _lsOutline,
                  ("fontWeight" .=) <$> _lsFontWeight,
                  ("column" .=) <$> _lsColumn])

-- | The request sent to rasterCollections.Rasters.BatchDelete.
--
-- /See:/ 'rasterCollectionsRasterBatchDeleteRequest' smart constructor.
newtype RasterCollectionsRasterBatchDeleteRequest = RasterCollectionsRasterBatchDeleteRequest
    { _rcrbdrIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRasterBatchDeleteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbdrIds'
rasterCollectionsRasterBatchDeleteRequest
    :: RasterCollectionsRasterBatchDeleteRequest
rasterCollectionsRasterBatchDeleteRequest =
    RasterCollectionsRasterBatchDeleteRequest
    { _rcrbdrIds = Nothing
    }

-- | An array of Raster asset IDs to be removed from this RasterCollection.
rcrbdrIds :: Lens' RasterCollectionsRasterBatchDeleteRequest [Text]
rcrbdrIds
  = lens _rcrbdrIds (\ s a -> s{_rcrbdrIds = a}) .
      _Default
      . _Coerce

instance FromJSON
         RasterCollectionsRasterBatchDeleteRequest where
        parseJSON
          = withObject
              "RasterCollectionsRasterBatchDeleteRequest"
              (\ o ->
                 RasterCollectionsRasterBatchDeleteRequest <$>
                   (o .:? "ids" .!= mempty))

instance ToJSON
         RasterCollectionsRasterBatchDeleteRequest where
        toJSON RasterCollectionsRasterBatchDeleteRequest{..}
          = object (catMaybes [("ids" .=) <$> _rcrbdrIds])

-- | A schema indicating the properties which may be associated with features
-- within a Table, and the types of those properties.
--
-- /See:/ 'schema' smart constructor.
data Schema = Schema
    { _sPrimaryKey      :: !(Maybe Text)
    , _sColumns         :: !(Maybe [TableColumn])
    , _sPrimaryGeometry :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Schema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPrimaryKey'
--
-- * 'sColumns'
--
-- * 'sPrimaryGeometry'
schema
    :: Schema
schema =
    Schema
    { _sPrimaryKey = Nothing
    , _sColumns = Nothing
    , _sPrimaryGeometry = Nothing
    }

-- | The name of the column that contains the unique identifier of a Feature.
sPrimaryKey :: Lens' Schema (Maybe Text)
sPrimaryKey
  = lens _sPrimaryKey (\ s a -> s{_sPrimaryKey = a})

-- | An array of TableColumn objects. The first object in the array must be
-- named geometry and be of type points, lineStrings, polygons, or
-- mixedGeometry.
sColumns :: Lens' Schema [TableColumn]
sColumns
  = lens _sColumns (\ s a -> s{_sColumns = a}) .
      _Default
      . _Coerce

-- | The name of the column that contains a feature\'s geometry. This field
-- can be omitted during table create; Google Maps Engine supports only a
-- single geometry column, which must be named geometry and be the first
-- object in the columns array.
sPrimaryGeometry :: Lens' Schema (Maybe Text)
sPrimaryGeometry
  = lens _sPrimaryGeometry
      (\ s a -> s{_sPrimaryGeometry = a})

instance FromJSON Schema where
        parseJSON
          = withObject "Schema"
              (\ o ->
                 Schema <$>
                   (o .:? "primaryKey") <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "primaryGeometry"))

instance ToJSON Schema where
        toJSON Schema{..}
          = object
              (catMaybes
                 [("primaryKey" .=) <$> _sPrimaryKey,
                  ("columns" .=) <$> _sColumns,
                  ("primaryGeometry" .=) <$> _sPrimaryGeometry])

--
-- /See:/ 'mapItem' smart constructor.
data MapItem =
    MapItem
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapItem' with the minimum fields required to make a request.
--
mapItem
    :: MapItem
mapItem = MapItem

instance FromJSON MapItem where
        parseJSON
          = withObject "MapItem" (\ o -> pure MapItem)

instance ToJSON MapItem where
        toJSON = const (Object mempty)

-- | The request sent to rasterCollections.Rasters.BatchInsert.
--
-- /See:/ 'rasterCollectionsRastersBatchInsertRequest' smart constructor.
newtype RasterCollectionsRastersBatchInsertRequest = RasterCollectionsRastersBatchInsertRequest
    { _rcrbirIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbirIds'
rasterCollectionsRastersBatchInsertRequest
    :: RasterCollectionsRastersBatchInsertRequest
rasterCollectionsRastersBatchInsertRequest =
    RasterCollectionsRastersBatchInsertRequest
    { _rcrbirIds = Nothing
    }

-- | An array of Raster asset IDs to be added to this RasterCollection.
rcrbirIds :: Lens' RasterCollectionsRastersBatchInsertRequest [Text]
rcrbirIds
  = lens _rcrbirIds (\ s a -> s{_rcrbirIds = a}) .
      _Default
      . _Coerce

instance FromJSON
         RasterCollectionsRastersBatchInsertRequest where
        parseJSON
          = withObject
              "RasterCollectionsRastersBatchInsertRequest"
              (\ o ->
                 RasterCollectionsRastersBatchInsertRequest <$>
                   (o .:? "ids" .!= mempty))

instance ToJSON
         RasterCollectionsRastersBatchInsertRequest where
        toJSON RasterCollectionsRastersBatchInsertRequest{..}
          = object (catMaybes [("ids" .=) <$> _rcrbirIds])

-- | The published version of a map asset.
--
-- /See:/ 'publishedMap' smart constructor.
data PublishedMap = PublishedMap
    { _pmDefaultViewport :: !(Maybe [Double])
    , _pmContents        :: !(Maybe [MapItem])
    , _pmName            :: !(Maybe Text)
    , _pmId              :: !(Maybe Text)
    , _pmProjectId       :: !(Maybe Text)
    , _pmDescription     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishedMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmDefaultViewport'
--
-- * 'pmContents'
--
-- * 'pmName'
--
-- * 'pmId'
--
-- * 'pmProjectId'
--
-- * 'pmDescription'
publishedMap
    :: PublishedMap
publishedMap =
    PublishedMap
    { _pmDefaultViewport = Nothing
    , _pmContents = Nothing
    , _pmName = Nothing
    , _pmId = Nothing
    , _pmProjectId = Nothing
    , _pmDescription = Nothing
    }

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
pmDefaultViewport :: Lens' PublishedMap [Double]
pmDefaultViewport
  = lens _pmDefaultViewport
      (\ s a -> s{_pmDefaultViewport = a})
      . _Default
      . _Coerce

-- | The contents of this Map.
pmContents :: Lens' PublishedMap [MapItem]
pmContents
  = lens _pmContents (\ s a -> s{_pmContents = a}) .
      _Default
      . _Coerce

-- | The name of this Map, supplied by the author.
pmName :: Lens' PublishedMap (Maybe Text)
pmName = lens _pmName (\ s a -> s{_pmName = a})

-- | A globally unique ID, used to refer to this Map.
pmId :: Lens' PublishedMap (Maybe Text)
pmId = lens _pmId (\ s a -> s{_pmId = a})

-- | The ID of the project that this Map is in.
pmProjectId :: Lens' PublishedMap (Maybe Text)
pmProjectId
  = lens _pmProjectId (\ s a -> s{_pmProjectId = a})

-- | The description of this Map, supplied by the author.
pmDescription :: Lens' PublishedMap (Maybe Text)
pmDescription
  = lens _pmDescription
      (\ s a -> s{_pmDescription = a})

instance FromJSON PublishedMap where
        parseJSON
          = withObject "PublishedMap"
              (\ o ->
                 PublishedMap <$>
                   (o .:? "defaultViewport") <*> (o .:? "contents") <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "description"))

instance ToJSON PublishedMap where
        toJSON PublishedMap{..}
          = object
              (catMaybes
                 [("defaultViewport" .=) <$> _pmDefaultViewport,
                  ("contents" .=) <$> _pmContents,
                  ("name" .=) <$> _pmName, ("id" .=) <$> _pmId,
                  ("projectId" .=) <$> _pmProjectId,
                  ("description" .=) <$> _pmDescription])

-- | Acquisition time represents acquired time of a raster.
--
-- /See:/ 'acquisitionTime' smart constructor.
data AcquisitionTime = AcquisitionTime
    { _atStart     :: !(Maybe DateTime')
    , _atPrecision :: !(Maybe AcquisitionTimePrecision)
    , _atEnd       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AcquisitionTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atStart'
--
-- * 'atPrecision'
--
-- * 'atEnd'
acquisitionTime
    :: AcquisitionTime
acquisitionTime =
    AcquisitionTime
    { _atStart = Nothing
    , _atPrecision = Nothing
    , _atEnd = Nothing
    }

-- | The acquisition time, or start time if acquisition time is a range. The
-- value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
atStart :: Lens' AcquisitionTime (Maybe UTCTime)
atStart
  = lens _atStart (\ s a -> s{_atStart = a}) .
      mapping _DateTime

-- | The precision of acquisition time.
atPrecision :: Lens' AcquisitionTime (Maybe AcquisitionTimePrecision)
atPrecision
  = lens _atPrecision (\ s a -> s{_atPrecision = a})

-- | The end time if acquisition time is a range. The value is an RFC 3339
-- formatted date-time value (1970-01-01T00:00:00Z).
atEnd :: Lens' AcquisitionTime (Maybe UTCTime)
atEnd
  = lens _atEnd (\ s a -> s{_atEnd = a}) .
      mapping _DateTime

instance FromJSON AcquisitionTime where
        parseJSON
          = withObject "AcquisitionTime"
              (\ o ->
                 AcquisitionTime <$>
                   (o .:? "start") <*> (o .:? "precision") <*>
                     (o .:? "end"))

instance ToJSON AcquisitionTime where
        toJSON AcquisitionTime{..}
          = object
              (catMaybes
                 [("start" .=) <$> _atStart,
                  ("precision" .=) <$> _atPrecision,
                  ("end" .=) <$> _atEnd])

-- | The response returned by a call to tables.List. Note: The list response
-- does not include all the fields available in a table. Refer to the table
-- resource description for details of the fields that are not included.
-- You\'ll need to send a get request to retrieve the additional fields for
-- each table.
--
-- /See:/ 'tablesListResponse' smart constructor.
data TablesListResponse = TablesListResponse
    { _tlrNextPageToken :: !(Maybe Word8)
    , _tlrTables        :: !(Maybe [Table])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrNextPageToken'
--
-- * 'tlrTables'
tablesListResponse
    :: TablesListResponse
tablesListResponse =
    TablesListResponse
    { _tlrNextPageToken = Nothing
    , _tlrTables = Nothing
    }

-- | Next page token.
tlrNextPageToken :: Lens' TablesListResponse (Maybe Word8)
tlrNextPageToken
  = lens _tlrNextPageToken
      (\ s a -> s{_tlrNextPageToken = a})

-- | Resources returned.
tlrTables :: Lens' TablesListResponse [Table]
tlrTables
  = lens _tlrTables (\ s a -> s{_tlrTables = a}) .
      _Default
      . _Coerce

instance FromJSON TablesListResponse where
        parseJSON
          = withObject "TablesListResponse"
              (\ o ->
                 TablesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tables" .!= mempty))

instance ToJSON TablesListResponse where
        toJSON TablesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tlrNextPageToken,
                  ("tables" .=) <$> _tlrTables])

-- | Style for icon, this is part of point style.
--
-- /See:/ 'iconStyle' smart constructor.
data IconStyle = IconStyle
    { _isScaledShape     :: !(Maybe ScaledShape)
    , _isScalingFunction :: !(Maybe ScalingFunction)
    , _isName            :: !(Maybe Text)
    , _isId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IconStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isScaledShape'
--
-- * 'isScalingFunction'
--
-- * 'isName'
--
-- * 'isId'
iconStyle
    :: IconStyle
iconStyle =
    IconStyle
    { _isScaledShape = Nothing
    , _isScalingFunction = Nothing
    , _isName = Nothing
    , _isId = Nothing
    }

-- | A scalable shape.
isScaledShape :: Lens' IconStyle (Maybe ScaledShape)
isScaledShape
  = lens _isScaledShape
      (\ s a -> s{_isScaledShape = a})

-- | The function used to scale shapes. Required when a scaledShape is
-- specified.
isScalingFunction :: Lens' IconStyle (Maybe ScalingFunction)
isScalingFunction
  = lens _isScalingFunction
      (\ s a -> s{_isScalingFunction = a})

-- | Stock icon name. To use a stock icon, prefix it with \'gx_\'. See Stock
-- icon names for valid icon names. For example, to specify small_red, set
-- name to \'gx_small_red\'.
isName :: Lens' IconStyle (Maybe Text)
isName = lens _isName (\ s a -> s{_isName = a})

-- | Custom icon id.
isId :: Lens' IconStyle (Maybe Text)
isId = lens _isId (\ s a -> s{_isId = a})

instance FromJSON IconStyle where
        parseJSON
          = withObject "IconStyle"
              (\ o ->
                 IconStyle <$>
                   (o .:? "scaledShape") <*> (o .:? "scalingFunction")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON IconStyle where
        toJSON IconStyle{..}
          = object
              (catMaybes
                 [("scaledShape" .=) <$> _isScaledShape,
                  ("scalingFunction" .=) <$> _isScalingFunction,
                  ("name" .=) <$> _isName, ("id" .=) <$> _isId])

-- | A display rule of the vector style.
--
-- /See:/ 'displayRule' smart constructor.
data DisplayRule = DisplayRule
    { _drPointOptions   :: !(Maybe PointStyle)
    , _drPolygonOptions :: !(Maybe PolygonStyle)
    , _drZoomLevels     :: !(Maybe ZoomLevels)
    , _drFilters        :: !(Maybe [Filter])
    , _drName           :: !(Maybe Text)
    , _drLineOptions    :: !(Maybe LineStyle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisplayRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drPointOptions'
--
-- * 'drPolygonOptions'
--
-- * 'drZoomLevels'
--
-- * 'drFilters'
--
-- * 'drName'
--
-- * 'drLineOptions'
displayRule
    :: DisplayRule
displayRule =
    DisplayRule
    { _drPointOptions = Nothing
    , _drPolygonOptions = Nothing
    , _drZoomLevels = Nothing
    , _drFilters = Nothing
    , _drName = Nothing
    , _drLineOptions = Nothing
    }

-- | Style applied to points. Required for Point Geometry.
drPointOptions :: Lens' DisplayRule (Maybe PointStyle)
drPointOptions
  = lens _drPointOptions
      (\ s a -> s{_drPointOptions = a})

-- | Style applied to polygons. Required for Polygon Geometry.
drPolygonOptions :: Lens' DisplayRule (Maybe PolygonStyle)
drPolygonOptions
  = lens _drPolygonOptions
      (\ s a -> s{_drPolygonOptions = a})

-- | The zoom levels that this display rule apply.
drZoomLevels :: Lens' DisplayRule (Maybe ZoomLevels)
drZoomLevels
  = lens _drZoomLevels (\ s a -> s{_drZoomLevels = a})

-- | This display rule will only be applied to features that match all of the
-- filters here. If filters is empty, then the rule applies to all
-- features.
drFilters :: Lens' DisplayRule [Filter]
drFilters
  = lens _drFilters (\ s a -> s{_drFilters = a}) .
      _Default
      . _Coerce

-- | Display rule name. Name is not unique and cannot be used for
-- identification purpose.
drName :: Lens' DisplayRule (Maybe Text)
drName = lens _drName (\ s a -> s{_drName = a})

-- | Style applied to lines. Required for LineString Geometry.
drLineOptions :: Lens' DisplayRule (Maybe LineStyle)
drLineOptions
  = lens _drLineOptions
      (\ s a -> s{_drLineOptions = a})

instance FromJSON DisplayRule where
        parseJSON
          = withObject "DisplayRule"
              (\ o ->
                 DisplayRule <$>
                   (o .:? "pointOptions") <*> (o .:? "polygonOptions")
                     <*> (o .:? "zoomLevels")
                     <*> (o .:? "filters" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "lineOptions"))

instance ToJSON DisplayRule where
        toJSON DisplayRule{..}
          = object
              (catMaybes
                 [("pointOptions" .=) <$> _drPointOptions,
                  ("polygonOptions" .=) <$> _drPolygonOptions,
                  ("zoomLevels" .=) <$> _drZoomLevels,
                  ("filters" .=) <$> _drFilters,
                  ("name" .=) <$> _drName,
                  ("lineOptions" .=) <$> _drLineOptions])

-- | Border in line style. Both color and width are required.
--
-- /See:/ 'bOrder' smart constructor.
data BOrder = BOrder
    { _boColor   :: !(Maybe Text)
    , _boWidth   :: !(Maybe Double)
    , _boOpacity :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boColor'
--
-- * 'boWidth'
--
-- * 'boOpacity'
bOrder
    :: BOrder
bOrder =
    BOrder
    { _boColor = Nothing
    , _boWidth = Nothing
    , _boOpacity = Nothing
    }

-- | Color of the border.
boColor :: Lens' BOrder (Maybe Text)
boColor = lens _boColor (\ s a -> s{_boColor = a})

-- | Width of the border, in pixels.
boWidth :: Lens' BOrder (Maybe Double)
boWidth = lens _boWidth (\ s a -> s{_boWidth = a})

-- | Opacity of the border.
boOpacity :: Lens' BOrder (Maybe Double)
boOpacity
  = lens _boOpacity (\ s a -> s{_boOpacity = a})

instance FromJSON BOrder where
        parseJSON
          = withObject "BOrder"
              (\ o ->
                 BOrder <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "opacity"))

instance ToJSON BOrder where
        toJSON BOrder{..}
          = object
              (catMaybes
                 [("color" .=) <$> _boColor,
                  ("width" .=) <$> _boWidth,
                  ("opacity" .=) <$> _boOpacity])

-- | A Map is a collection of Layers, optionally contained within folders.
--
-- /See:/ 'map'' smart constructor.
data Map = Map
    { _mapaCreationTime              :: !(Maybe DateTime')
    , _mapaWritersCanEditPermissions :: !(Maybe Bool)
    , _mapaEtag                      :: !(Maybe Text)
    , _mapaDefaultViewport           :: !(Maybe [Double])
    , _mapaContents                  :: !(Maybe [MapItem])
    , _mapaPublishingStatus          :: !(Maybe MapPublishingStatus)
    , _mapaCreatorEmail              :: !(Maybe Text)
    , _mapaLastModifiedTime          :: !(Maybe DateTime')
    , _mapaLastModifierEmail         :: !(Maybe Text)
    , _mapaVersions                  :: !(Maybe [Text])
    , _mapaName                      :: !(Maybe Text)
    , _mapaBbox                      :: !(Maybe [Double])
    , _mapaProcessingStatus          :: !(Maybe MapProcessingStatus)
    , _mapaId                        :: !(Maybe Text)
    , _mapaProjectId                 :: !(Maybe Text)
    , _mapaDraftAccessList           :: !(Maybe Text)
    , _mapaPublishedAccessList       :: !(Maybe Text)
    , _mapaDescription               :: !(Maybe Text)
    , _mapaTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Map' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mapaCreationTime'
--
-- * 'mapaWritersCanEditPermissions'
--
-- * 'mapaEtag'
--
-- * 'mapaDefaultViewport'
--
-- * 'mapaContents'
--
-- * 'mapaPublishingStatus'
--
-- * 'mapaCreatorEmail'
--
-- * 'mapaLastModifiedTime'
--
-- * 'mapaLastModifierEmail'
--
-- * 'mapaVersions'
--
-- * 'mapaName'
--
-- * 'mapaBbox'
--
-- * 'mapaProcessingStatus'
--
-- * 'mapaId'
--
-- * 'mapaProjectId'
--
-- * 'mapaDraftAccessList'
--
-- * 'mapaPublishedAccessList'
--
-- * 'mapaDescription'
--
-- * 'mapaTags'
map'
    :: Map
map' =
    Map
    { _mapaCreationTime = Nothing
    , _mapaWritersCanEditPermissions = Nothing
    , _mapaEtag = Nothing
    , _mapaDefaultViewport = Nothing
    , _mapaContents = Nothing
    , _mapaPublishingStatus = Nothing
    , _mapaCreatorEmail = Nothing
    , _mapaLastModifiedTime = Nothing
    , _mapaLastModifierEmail = Nothing
    , _mapaVersions = Nothing
    , _mapaName = Nothing
    , _mapaBbox = Nothing
    , _mapaProcessingStatus = Nothing
    , _mapaId = Nothing
    , _mapaProjectId = Nothing
    , _mapaDraftAccessList = Nothing
    , _mapaPublishedAccessList = Nothing
    , _mapaDescription = Nothing
    , _mapaTags = Nothing
    }

-- | The creation time of this map. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
mapaCreationTime :: Lens' Map (Maybe UTCTime)
mapaCreationTime
  = lens _mapaCreationTime
      (\ s a -> s{_mapaCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
mapaWritersCanEditPermissions :: Lens' Map (Maybe Bool)
mapaWritersCanEditPermissions
  = lens _mapaWritersCanEditPermissions
      (\ s a -> s{_mapaWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
mapaEtag :: Lens' Map (Maybe Text)
mapaEtag = lens _mapaEtag (\ s a -> s{_mapaEtag = a})

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
mapaDefaultViewport :: Lens' Map [Double]
mapaDefaultViewport
  = lens _mapaDefaultViewport
      (\ s a -> s{_mapaDefaultViewport = a})
      . _Default
      . _Coerce

-- | The contents of this Map.
mapaContents :: Lens' Map [MapItem]
mapaContents
  = lens _mapaContents (\ s a -> s{_mapaContents = a})
      . _Default
      . _Coerce

-- | The publishing status of this map.
mapaPublishingStatus :: Lens' Map (Maybe MapPublishingStatus)
mapaPublishingStatus
  = lens _mapaPublishingStatus
      (\ s a -> s{_mapaPublishingStatus = a})

-- | The email address of the creator of this map. This is only returned on
-- GET requests and not LIST requests.
mapaCreatorEmail :: Lens' Map (Maybe Text)
mapaCreatorEmail
  = lens _mapaCreatorEmail
      (\ s a -> s{_mapaCreatorEmail = a})

-- | The last modified time of this map. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
mapaLastModifiedTime :: Lens' Map (Maybe UTCTime)
mapaLastModifiedTime
  = lens _mapaLastModifiedTime
      (\ s a -> s{_mapaLastModifiedTime = a})
      . mapping _DateTime

-- | The email address of the last modifier of this map. This is only
-- returned on GET requests and not LIST requests.
mapaLastModifierEmail :: Lens' Map (Maybe Text)
mapaLastModifierEmail
  = lens _mapaLastModifierEmail
      (\ s a -> s{_mapaLastModifierEmail = a})

-- | Deprecated: An array containing the available versions of this Map.
-- Currently may only contain \"published\". The publishingStatus field
-- should be used instead.
mapaVersions :: Lens' Map [Text]
mapaVersions
  = lens _mapaVersions (\ s a -> s{_mapaVersions = a})
      . _Default
      . _Coerce

-- | The name of this Map, supplied by the author.
mapaName :: Lens' Map (Maybe Text)
mapaName = lens _mapaName (\ s a -> s{_mapaName = a})

-- | A rectangular bounding box which contains all of the data in this Map.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
mapaBbox :: Lens' Map [Double]
mapaBbox
  = lens _mapaBbox (\ s a -> s{_mapaBbox = a}) .
      _Default
      . _Coerce

-- | The processing status of this map. Map processing is automatically
-- started once a map becomes ready for processing.
mapaProcessingStatus :: Lens' Map (Maybe MapProcessingStatus)
mapaProcessingStatus
  = lens _mapaProcessingStatus
      (\ s a -> s{_mapaProcessingStatus = a})

-- | A globally unique ID, used to refer to this Map.
mapaId :: Lens' Map (Maybe Text)
mapaId = lens _mapaId (\ s a -> s{_mapaId = a})

-- | The ID of the project that this Map is in.
mapaProjectId :: Lens' Map (Maybe Text)
mapaProjectId
  = lens _mapaProjectId
      (\ s a -> s{_mapaProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
mapaDraftAccessList :: Lens' Map (Maybe Text)
mapaDraftAccessList
  = lens _mapaDraftAccessList
      (\ s a -> s{_mapaDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. This is an input field only. It
-- is not returned in response to a list or get request.
mapaPublishedAccessList :: Lens' Map (Maybe Text)
mapaPublishedAccessList
  = lens _mapaPublishedAccessList
      (\ s a -> s{_mapaPublishedAccessList = a})

-- | The description of this Map, supplied by the author.
mapaDescription :: Lens' Map (Maybe Text)
mapaDescription
  = lens _mapaDescription
      (\ s a -> s{_mapaDescription = a})

-- | Tags of this Map.
mapaTags :: Lens' Map [Text]
mapaTags
  = lens _mapaTags (\ s a -> s{_mapaTags = a}) .
      _Default
      . _Coerce

instance FromJSON Map where
        parseJSON
          = withObject "Map"
              (\ o ->
                 Map <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "etag")
                     <*> (o .:? "defaultViewport")
                     <*> (o .:? "contents")
                     <*> (o .:? "publishingStatus")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "versions" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "draftAccessList")
                     <*> (o .:? "publishedAccessList")
                     <*> (o .:? "description")
                     <*> (o .:? "tags"))

instance ToJSON Map where
        toJSON Map{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mapaCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _mapaWritersCanEditPermissions,
                  ("etag" .=) <$> _mapaEtag,
                  ("defaultViewport" .=) <$> _mapaDefaultViewport,
                  ("contents" .=) <$> _mapaContents,
                  ("publishingStatus" .=) <$> _mapaPublishingStatus,
                  ("creatorEmail" .=) <$> _mapaCreatorEmail,
                  ("lastModifiedTime" .=) <$> _mapaLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _mapaLastModifierEmail,
                  ("versions" .=) <$> _mapaVersions,
                  ("name" .=) <$> _mapaName, ("bbox" .=) <$> _mapaBbox,
                  ("processingStatus" .=) <$> _mapaProcessingStatus,
                  ("id" .=) <$> _mapaId,
                  ("projectId" .=) <$> _mapaProjectId,
                  ("draftAccessList" .=) <$> _mapaDraftAccessList,
                  ("publishedAccessList" .=) <$>
                    _mapaPublishedAccessList,
                  ("description" .=) <$> _mapaDescription,
                  ("tags" .=) <$> _mapaTags])

-- | The response returned by a call to rasterCollections.rasters.List.
--
-- /See:/ 'rasterCollectionsRastersListResponse' smart constructor.
data RasterCollectionsRastersListResponse = RasterCollectionsRastersListResponse
    { _rcrlrNextPageToken :: !(Maybe Text)
    , _rcrlrRasters       :: !(Maybe [RasterCollectionsRaster])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrlrNextPageToken'
--
-- * 'rcrlrRasters'
rasterCollectionsRastersListResponse
    :: RasterCollectionsRastersListResponse
rasterCollectionsRastersListResponse =
    RasterCollectionsRastersListResponse
    { _rcrlrNextPageToken = Nothing
    , _rcrlrRasters = Nothing
    }

-- | Next page token.
rcrlrNextPageToken :: Lens' RasterCollectionsRastersListResponse (Maybe Text)
rcrlrNextPageToken
  = lens _rcrlrNextPageToken
      (\ s a -> s{_rcrlrNextPageToken = a})

-- | Resources returned.
rcrlrRasters :: Lens' RasterCollectionsRastersListResponse [RasterCollectionsRaster]
rcrlrRasters
  = lens _rcrlrRasters (\ s a -> s{_rcrlrRasters = a})
      . _Default
      . _Coerce

instance FromJSON
         RasterCollectionsRastersListResponse where
        parseJSON
          = withObject "RasterCollectionsRastersListResponse"
              (\ o ->
                 RasterCollectionsRastersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "rasters" .!= mempty))

instance ToJSON RasterCollectionsRastersListResponse
         where
        toJSON RasterCollectionsRastersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rcrlrNextPageToken,
                  ("rasters" .=) <$> _rcrlrRasters])

-- | Multi Line String
--
-- /See:/ 'geoJSONMultiLineString' smart constructor.
data GeoJSONMultiLineString = GeoJSONMultiLineString
    { _gjmlsCoordinates :: !(Maybe [[[Double]]])
    , _gjmlsType        :: !(Maybe GeoJSONMultiLineStringType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONMultiLineString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjmlsCoordinates'
--
-- * 'gjmlsType'
geoJSONMultiLineString
    :: GeoJSONMultiLineString
geoJSONMultiLineString =
    GeoJSONMultiLineString
    { _gjmlsCoordinates = Nothing
    , _gjmlsType = Nothing
    }

-- | An array of at least two GeoJsonLineString coordinate arrays.
gjmlsCoordinates :: Lens' GeoJSONMultiLineString [[[Double]]]
gjmlsCoordinates
  = lens _gjmlsCoordinates
      (\ s a -> s{_gjmlsCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiLineString.
gjmlsType :: Lens' GeoJSONMultiLineString (Maybe GeoJSONMultiLineStringType)
gjmlsType
  = lens _gjmlsType (\ s a -> s{_gjmlsType = a})

instance FromJSON GeoJSONMultiLineString where
        parseJSON
          = withObject "GeoJSONMultiLineString"
              (\ o ->
                 GeoJSONMultiLineString <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONMultiLineString where
        toJSON GeoJSONMultiLineString{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjmlsCoordinates,
                  ("type" .=) <$> _gjmlsType])

-- | Parameters for scaling scaled shapes.
--
-- /See:/ 'scalingFunction' smart constructor.
data ScalingFunction = ScalingFunction
    { _sfValueRange  :: !(Maybe ValueRange)
    , _sfSizeRange   :: !(Maybe SizeRange)
    , _sfScalingType :: !(Maybe ScalingFunctionScalingType)
    , _sfColumn      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScalingFunction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfValueRange'
--
-- * 'sfSizeRange'
--
-- * 'sfScalingType'
--
-- * 'sfColumn'
scalingFunction
    :: ScalingFunction
scalingFunction =
    ScalingFunction
    { _sfValueRange = Nothing
    , _sfSizeRange = Nothing
    , _sfScalingType = Nothing
    , _sfColumn = Nothing
    }

-- | The range of values to display across the size range.
sfValueRange :: Lens' ScalingFunction (Maybe ValueRange)
sfValueRange
  = lens _sfValueRange (\ s a -> s{_sfValueRange = a})

-- | The range of shape sizes, in pixels. For circles, the size corresponds
-- to the diameter.
sfSizeRange :: Lens' ScalingFunction (Maybe SizeRange)
sfSizeRange
  = lens _sfSizeRange (\ s a -> s{_sfSizeRange = a})

-- | The type of scaling function to use. Defaults to SQRT. Currently only
-- linear and square root scaling are supported.
sfScalingType :: Lens' ScalingFunction (Maybe ScalingFunctionScalingType)
sfScalingType
  = lens _sfScalingType
      (\ s a -> s{_sfScalingType = a})

-- | Name of the numeric column used to scale a shape.
sfColumn :: Lens' ScalingFunction (Maybe Text)
sfColumn = lens _sfColumn (\ s a -> s{_sfColumn = a})

instance FromJSON ScalingFunction where
        parseJSON
          = withObject "ScalingFunction"
              (\ o ->
                 ScalingFunction <$>
                   (o .:? "valueRange") <*> (o .:? "sizeRange") <*>
                     (o .:? "scalingType")
                     <*> (o .:? "column"))

instance ToJSON ScalingFunction where
        toJSON ScalingFunction{..}
          = object
              (catMaybes
                 [("valueRange" .=) <$> _sfValueRange,
                  ("sizeRange" .=) <$> _sfSizeRange,
                  ("scalingType" .=) <$> _sfScalingType,
                  ("column" .=) <$> _sfColumn])

-- | The response returned by a call to resources.List.
--
-- /See:/ 'assetsListResponse' smart constructor.
data AssetsListResponse = AssetsListResponse
    { _alrNextPageToken :: !(Maybe Word8)
    , _alrAssets        :: !(Maybe [Asset])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrNextPageToken'
--
-- * 'alrAssets'
assetsListResponse
    :: AssetsListResponse
assetsListResponse =
    AssetsListResponse
    { _alrNextPageToken = Nothing
    , _alrAssets = Nothing
    }

-- | Next page token.
alrNextPageToken :: Lens' AssetsListResponse (Maybe Word8)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Assets returned.
alrAssets :: Lens' AssetsListResponse [Asset]
alrAssets
  = lens _alrAssets (\ s a -> s{_alrAssets = a}) .
      _Default
      . _Coerce

instance FromJSON AssetsListResponse where
        parseJSON
          = withObject "AssetsListResponse"
              (\ o ->
                 AssetsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "assets" .!= mempty))

instance ToJSON AssetsListResponse where
        toJSON AssetsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  ("assets" .=) <$> _alrAssets])

-- | The response returned by a call to any asset\'s Publish method.
--
-- /See:/ 'publishResponse' smart constructor.
data PublishResponse =
    PublishResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishResponse' with the minimum fields required to make a request.
--
publishResponse
    :: PublishResponse
publishResponse = PublishResponse

instance FromJSON PublishResponse where
        parseJSON
          = withObject "PublishResponse"
              (\ o -> pure PublishResponse)

instance ToJSON PublishResponse where
        toJSON = const (Object mempty)

-- | The request sent to features.Insert.
--
-- /See:/ 'featuresBatchInsertRequest' smart constructor.
data FeaturesBatchInsertRequest = FeaturesBatchInsertRequest
    { _fbirFeatures            :: !(Maybe [Feature])
    , _fbirNormalizeGeometries :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesBatchInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbirFeatures'
--
-- * 'fbirNormalizeGeometries'
featuresBatchInsertRequest
    :: FeaturesBatchInsertRequest
featuresBatchInsertRequest =
    FeaturesBatchInsertRequest
    { _fbirFeatures = Nothing
    , _fbirNormalizeGeometries = True
    }

fbirFeatures :: Lens' FeaturesBatchInsertRequest [Feature]
fbirFeatures
  = lens _fbirFeatures (\ s a -> s{_fbirFeatures = a})
      . _Default
      . _Coerce

-- | If true, the server will normalize feature geometries. It is assumed
-- that the South Pole is exterior to any polygons given. See here for a
-- list of normalizations. If false, all feature geometries must be given
-- already normalized. The points in all LinearRings must be listed in
-- counter-clockwise order, and LinearRings may not intersect.
fbirNormalizeGeometries :: Lens' FeaturesBatchInsertRequest Bool
fbirNormalizeGeometries
  = lens _fbirNormalizeGeometries
      (\ s a -> s{_fbirNormalizeGeometries = a})

instance FromJSON FeaturesBatchInsertRequest where
        parseJSON
          = withObject "FeaturesBatchInsertRequest"
              (\ o ->
                 FeaturesBatchInsertRequest <$>
                   (o .:? "features" .!= mempty) <*>
                     (o .:? "normalizeGeometries" .!= True))

instance ToJSON FeaturesBatchInsertRequest where
        toJSON FeaturesBatchInsertRequest{..}
          = object
              (catMaybes
                 [("features" .=) <$> _fbirFeatures,
                  Just
                    ("normalizeGeometries" .= _fbirNormalizeGeometries)])

--
-- /See:/ 'datasource' smart constructor.
newtype Datasource = Datasource
    { _dId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Datasource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId'
datasource
    :: Datasource
datasource =
    Datasource
    { _dId = Nothing
    }

-- | The ID of a datasource.
dId :: Lens' Datasource (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

instance FromJSON Datasource where
        parseJSON
          = withObject "Datasource"
              (\ o -> Datasource <$> (o .:? "id"))

instance ToJSON Datasource where
        toJSON Datasource{..}
          = object (catMaybes [("id" .=) <$> _dId])

-- | A raster resource.
--
-- /See:/ 'rasterCollectionsRaster' smart constructor.
data RasterCollectionsRaster = RasterCollectionsRaster
    { _rcrCreationTime     :: !(Maybe DateTime')
    , _rcrRasterType       :: !Text
    , _rcrLastModifiedTime :: !(Maybe DateTime')
    , _rcrName             :: !(Maybe Text)
    , _rcrBbox             :: !(Maybe [Double])
    , _rcrId               :: !(Maybe Text)
    , _rcrProjectId        :: !(Maybe Text)
    , _rcrDescription      :: !(Maybe Text)
    , _rcrTags             :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRaster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrCreationTime'
--
-- * 'rcrRasterType'
--
-- * 'rcrLastModifiedTime'
--
-- * 'rcrName'
--
-- * 'rcrBbox'
--
-- * 'rcrId'
--
-- * 'rcrProjectId'
--
-- * 'rcrDescription'
--
-- * 'rcrTags'
rasterCollectionsRaster
    :: RasterCollectionsRaster
rasterCollectionsRaster =
    RasterCollectionsRaster
    { _rcrCreationTime = Nothing
    , _rcrRasterType = "image"
    , _rcrLastModifiedTime = Nothing
    , _rcrName = Nothing
    , _rcrBbox = Nothing
    , _rcrId = Nothing
    , _rcrProjectId = Nothing
    , _rcrDescription = Nothing
    , _rcrTags = Nothing
    }

-- | The creation time of this raster. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
rcrCreationTime :: Lens' RasterCollectionsRaster (Maybe UTCTime)
rcrCreationTime
  = lens _rcrCreationTime
      (\ s a -> s{_rcrCreationTime = a})
      . mapping _DateTime

-- | The type of this Raster. Always \"image\" today.
rcrRasterType :: Lens' RasterCollectionsRaster Text
rcrRasterType
  = lens _rcrRasterType
      (\ s a -> s{_rcrRasterType = a})

-- | The last modified time of this raster. The value is an RFC 3339
-- formatted date-time value (e.g. 1970-01-01T00:00:00Z).
rcrLastModifiedTime :: Lens' RasterCollectionsRaster (Maybe UTCTime)
rcrLastModifiedTime
  = lens _rcrLastModifiedTime
      (\ s a -> s{_rcrLastModifiedTime = a})
      . mapping _DateTime

-- | The name of this Raster, supplied by the author.
rcrName :: Lens' RasterCollectionsRaster (Maybe Text)
rcrName = lens _rcrName (\ s a -> s{_rcrName = a})

-- | A rectangular bounding box which contains all of the data in this
-- Raster. The box is expressed as \\\"west, south, east, north\\\". The
-- numbers represent latitudes and longitudes in decimal degrees.
rcrBbox :: Lens' RasterCollectionsRaster [Double]
rcrBbox
  = lens _rcrBbox (\ s a -> s{_rcrBbox = a}) . _Default
      . _Coerce

-- | A globally unique ID, used to refer to this Raster.
rcrId :: Lens' RasterCollectionsRaster (Maybe Text)
rcrId = lens _rcrId (\ s a -> s{_rcrId = a})

-- | The ID of the project that this Raster is in.
rcrProjectId :: Lens' RasterCollectionsRaster (Maybe Text)
rcrProjectId
  = lens _rcrProjectId (\ s a -> s{_rcrProjectId = a})

-- | The description of this Raster, supplied by the author.
rcrDescription :: Lens' RasterCollectionsRaster (Maybe Text)
rcrDescription
  = lens _rcrDescription
      (\ s a -> s{_rcrDescription = a})

-- | Tags of this Raster.
rcrTags :: Lens' RasterCollectionsRaster [Text]
rcrTags
  = lens _rcrTags (\ s a -> s{_rcrTags = a}) . _Default
      . _Coerce

instance FromJSON RasterCollectionsRaster where
        parseJSON
          = withObject "RasterCollectionsRaster"
              (\ o ->
                 RasterCollectionsRaster <$>
                   (o .:? "creationTime") <*>
                     (o .:? "rasterType" .!= "image")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON RasterCollectionsRaster where
        toJSON RasterCollectionsRaster{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _rcrCreationTime,
                  Just ("rasterType" .= _rcrRasterType),
                  ("lastModifiedTime" .=) <$> _rcrLastModifiedTime,
                  ("name" .=) <$> _rcrName, ("bbox" .=) <$> _rcrBbox,
                  ("id" .=) <$> _rcrId,
                  ("projectId" .=) <$> _rcrProjectId,
                  ("description" .=) <$> _rcrDescription,
                  ("tags" .=) <$> _rcrTags])

-- | Conditions for filtering features.
--
-- /See:/ 'filter'' smart constructor.
data Filter = Filter
    { _fOperator :: !(Maybe FilterOperator)
    , _fValue    :: !(Maybe JSONValue)
    , _fColumn   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fOperator'
--
-- * 'fValue'
--
-- * 'fColumn'
filter'
    :: Filter
filter' =
    Filter
    { _fOperator = Nothing
    , _fValue = Nothing
    , _fColumn = Nothing
    }

-- | Operation used to evaluate the filter.
fOperator :: Lens' Filter (Maybe FilterOperator)
fOperator
  = lens _fOperator (\ s a -> s{_fOperator = a})

-- | Value to be evaluated against attribute.
fValue :: Lens' Filter (Maybe JSONValue)
fValue = lens _fValue (\ s a -> s{_fValue = a})

-- | The column name to filter on.
fColumn :: Lens' Filter (Maybe Text)
fColumn = lens _fColumn (\ s a -> s{_fColumn = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter <$>
                   (o .:? "operator") <*> (o .:? "value") <*>
                     (o .:? "column"))

instance ToJSON Filter where
        toJSON Filter{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _fOperator,
                  ("value" .=) <$> _fValue,
                  ("column" .=) <$> _fColumn])

--
-- /See:/ 'geoJSONMultiPoint' smart constructor.
data GeoJSONMultiPoint = GeoJSONMultiPoint
    { _gjmpCoordinates :: !(Maybe [[Double]])
    , _gjmpType        :: !(Maybe GeoJSONMultiPointType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONMultiPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjmpCoordinates'
--
-- * 'gjmpType'
geoJSONMultiPoint
    :: GeoJSONMultiPoint
geoJSONMultiPoint =
    GeoJSONMultiPoint
    { _gjmpCoordinates = Nothing
    , _gjmpType = Nothing
    }

-- | An array of at least two GeoJsonPoint coordinate arrays.
gjmpCoordinates :: Lens' GeoJSONMultiPoint [[Double]]
gjmpCoordinates
  = lens _gjmpCoordinates
      (\ s a -> s{_gjmpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiPoint.
gjmpType :: Lens' GeoJSONMultiPoint (Maybe GeoJSONMultiPointType)
gjmpType = lens _gjmpType (\ s a -> s{_gjmpType = a})

instance FromJSON GeoJSONMultiPoint where
        parseJSON
          = withObject "GeoJSONMultiPoint"
              (\ o ->
                 GeoJSONMultiPoint <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONMultiPoint where
        toJSON GeoJSONMultiPoint{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjmpCoordinates,
                  ("type" .=) <$> _gjmpType])

--
-- /See:/ 'geoJSONMultiPolygon' smart constructor.
data GeoJSONMultiPolygon = GeoJSONMultiPolygon
    { _gjsonmpCoordinates :: !(Maybe [[[[Double]]]])
    , _gjsonmpType        :: !(Maybe GeoJSONMultiPolygonType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONMultiPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjsonmpCoordinates'
--
-- * 'gjsonmpType'
geoJSONMultiPolygon
    :: GeoJSONMultiPolygon
geoJSONMultiPolygon =
    GeoJSONMultiPolygon
    { _gjsonmpCoordinates = Nothing
    , _gjsonmpType = Nothing
    }

-- | An array of at least two GeoJsonPolygon coordinate arrays.
gjsonmpCoordinates :: Lens' GeoJSONMultiPolygon [[[[Double]]]]
gjsonmpCoordinates
  = lens _gjsonmpCoordinates
      (\ s a -> s{_gjsonmpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiPolygon.
gjsonmpType :: Lens' GeoJSONMultiPolygon (Maybe GeoJSONMultiPolygonType)
gjsonmpType
  = lens _gjsonmpType (\ s a -> s{_gjsonmpType = a})

instance FromJSON GeoJSONMultiPolygon where
        parseJSON
          = withObject "GeoJSONMultiPolygon"
              (\ o ->
                 GeoJSONMultiPolygon <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONMultiPolygon where
        toJSON GeoJSONMultiPolygon{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjsonmpCoordinates,
                  ("type" .=) <$> _gjsonmpType])

-- | A Layer combines multiple datasources, with styling information, for
-- presentation on a map.
--
-- /See:/ 'layer' smart constructor.
data Layer = Layer
    { _layaCreationTime              :: !(Maybe DateTime')
    , _layaWritersCanEditPermissions :: !(Maybe Bool)
    , _layaStyle                     :: !(Maybe VectorStyle)
    , _layaEtag                      :: !(Maybe Text)
    , _layaDatasourceType            :: !(Maybe LayerDatasourceType)
    , _layaPublishingStatus          :: !(Maybe LayerPublishingStatus)
    , _layaCreatorEmail              :: !(Maybe Text)
    , _layaLayerType                 :: !(Maybe LayerLayerType)
    , _layaLastModifiedTime          :: !(Maybe DateTime')
    , _layaDatasources               :: !(Maybe [Datasource])
    , _layaLastModifierEmail         :: !(Maybe Text)
    , _layaName                      :: !(Maybe Text)
    , _layaBbox                      :: !(Maybe [Double])
    , _layaProcessingStatus          :: !(Maybe LayerProcessingStatus)
    , _layaId                        :: !(Maybe Text)
    , _layaProjectId                 :: !(Maybe Text)
    , _layaDraftAccessList           :: !(Maybe Text)
    , _layaPublishedAccessList       :: !(Maybe Text)
    , _layaDescription               :: !(Maybe Text)
    , _layaTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layaCreationTime'
--
-- * 'layaWritersCanEditPermissions'
--
-- * 'layaStyle'
--
-- * 'layaEtag'
--
-- * 'layaDatasourceType'
--
-- * 'layaPublishingStatus'
--
-- * 'layaCreatorEmail'
--
-- * 'layaLayerType'
--
-- * 'layaLastModifiedTime'
--
-- * 'layaDatasources'
--
-- * 'layaLastModifierEmail'
--
-- * 'layaName'
--
-- * 'layaBbox'
--
-- * 'layaProcessingStatus'
--
-- * 'layaId'
--
-- * 'layaProjectId'
--
-- * 'layaDraftAccessList'
--
-- * 'layaPublishedAccessList'
--
-- * 'layaDescription'
--
-- * 'layaTags'
layer
    :: Layer
layer =
    Layer
    { _layaCreationTime = Nothing
    , _layaWritersCanEditPermissions = Nothing
    , _layaStyle = Nothing
    , _layaEtag = Nothing
    , _layaDatasourceType = Nothing
    , _layaPublishingStatus = Nothing
    , _layaCreatorEmail = Nothing
    , _layaLayerType = Nothing
    , _layaLastModifiedTime = Nothing
    , _layaDatasources = Nothing
    , _layaLastModifierEmail = Nothing
    , _layaName = Nothing
    , _layaBbox = Nothing
    , _layaProcessingStatus = Nothing
    , _layaId = Nothing
    , _layaProjectId = Nothing
    , _layaDraftAccessList = Nothing
    , _layaPublishedAccessList = Nothing
    , _layaDescription = Nothing
    , _layaTags = Nothing
    }

-- | The creation time of this layer. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
layaCreationTime :: Lens' Layer (Maybe UTCTime)
layaCreationTime
  = lens _layaCreationTime
      (\ s a -> s{_layaCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
layaWritersCanEditPermissions :: Lens' Layer (Maybe Bool)
layaWritersCanEditPermissions
  = lens _layaWritersCanEditPermissions
      (\ s a -> s{_layaWritersCanEditPermissions = a})

-- | The styling information for a vector layer. Note: Style information is
-- returned in response to a get request but not a list request. After
-- requesting a list of layers, you\'ll need to send a get request to
-- retrieve the VectorStyles for each layer.
layaStyle :: Lens' Layer (Maybe VectorStyle)
layaStyle
  = lens _layaStyle (\ s a -> s{_layaStyle = a})

-- | The ETag, used to refer to the current version of the asset.
layaEtag :: Lens' Layer (Maybe Text)
layaEtag = lens _layaEtag (\ s a -> s{_layaEtag = a})

-- | Deprecated: The type of the datasources used to build this Layer. Note:
-- This has been replaced by layerType, but is still available for now to
-- maintain backward compatibility.
layaDatasourceType :: Lens' Layer (Maybe LayerDatasourceType)
layaDatasourceType
  = lens _layaDatasourceType
      (\ s a -> s{_layaDatasourceType = a})

-- | The publishing status of this layer.
layaPublishingStatus :: Lens' Layer (Maybe LayerPublishingStatus)
layaPublishingStatus
  = lens _layaPublishingStatus
      (\ s a -> s{_layaPublishingStatus = a})

-- | The email address of the creator of this layer. This is only returned on
-- GET requests and not LIST requests.
layaCreatorEmail :: Lens' Layer (Maybe Text)
layaCreatorEmail
  = lens _layaCreatorEmail
      (\ s a -> s{_layaCreatorEmail = a})

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
layaLayerType :: Lens' Layer (Maybe LayerLayerType)
layaLayerType
  = lens _layaLayerType
      (\ s a -> s{_layaLayerType = a})

-- | The last modified time of this layer. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
layaLastModifiedTime :: Lens' Layer (Maybe UTCTime)
layaLastModifiedTime
  = lens _layaLastModifiedTime
      (\ s a -> s{_layaLastModifiedTime = a})
      . mapping _DateTime

-- | An array of datasources used to build this layer. If layerType is
-- \"image\", or layerType is not specified and datasourceType is
-- \"image\", then each element in this array is a reference to an Image or
-- RasterCollection. If layerType is \"vector\", or layerType is not
-- specified and datasourceType is \"table\" then each element in this
-- array is a reference to a Vector Table.
layaDatasources :: Lens' Layer [Datasource]
layaDatasources
  = lens _layaDatasources
      (\ s a -> s{_layaDatasources = a})
      . _Default
      . _Coerce

-- | The email address of the last modifier of this layer. This is only
-- returned on GET requests and not LIST requests.
layaLastModifierEmail :: Lens' Layer (Maybe Text)
layaLastModifierEmail
  = lens _layaLastModifierEmail
      (\ s a -> s{_layaLastModifierEmail = a})

-- | The name of this Layer, supplied by the author.
layaName :: Lens' Layer (Maybe Text)
layaName = lens _layaName (\ s a -> s{_layaName = a})

-- | A rectangular bounding box which contains all of the data in this Layer.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
layaBbox :: Lens' Layer [Double]
layaBbox
  = lens _layaBbox (\ s a -> s{_layaBbox = a}) .
      _Default
      . _Coerce

-- | The processing status of this layer.
layaProcessingStatus :: Lens' Layer (Maybe LayerProcessingStatus)
layaProcessingStatus
  = lens _layaProcessingStatus
      (\ s a -> s{_layaProcessingStatus = a})

-- | A globally unique ID, used to refer to this Layer.
layaId :: Lens' Layer (Maybe Text)
layaId = lens _layaId (\ s a -> s{_layaId = a})

-- | The ID of the project that this Layer is in.
layaProjectId :: Lens' Layer (Maybe Text)
layaProjectId
  = lens _layaProjectId
      (\ s a -> s{_layaProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
layaDraftAccessList :: Lens' Layer (Maybe Text)
layaDraftAccessList
  = lens _layaDraftAccessList
      (\ s a -> s{_layaDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. Note: This is an input field
-- only. It is not returned in response to a list or get request.
layaPublishedAccessList :: Lens' Layer (Maybe Text)
layaPublishedAccessList
  = lens _layaPublishedAccessList
      (\ s a -> s{_layaPublishedAccessList = a})

-- | The description of this Layer, supplied by the author.
layaDescription :: Lens' Layer (Maybe Text)
layaDescription
  = lens _layaDescription
      (\ s a -> s{_layaDescription = a})

-- | Tags of this Layer.
layaTags :: Lens' Layer [Text]
layaTags
  = lens _layaTags (\ s a -> s{_layaTags = a}) .
      _Default
      . _Coerce

instance FromJSON Layer where
        parseJSON
          = withObject "Layer"
              (\ o ->
                 Layer <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "style")
                     <*> (o .:? "etag")
                     <*> (o .:? "datasourceType")
                     <*> (o .:? "publishingStatus")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "layerType")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "datasources")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "draftAccessList")
                     <*> (o .:? "publishedAccessList")
                     <*> (o .:? "description")
                     <*> (o .:? "tags"))

instance ToJSON Layer where
        toJSON Layer{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _layaCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _layaWritersCanEditPermissions,
                  ("style" .=) <$> _layaStyle,
                  ("etag" .=) <$> _layaEtag,
                  ("datasourceType" .=) <$> _layaDatasourceType,
                  ("publishingStatus" .=) <$> _layaPublishingStatus,
                  ("creatorEmail" .=) <$> _layaCreatorEmail,
                  ("layerType" .=) <$> _layaLayerType,
                  ("lastModifiedTime" .=) <$> _layaLastModifiedTime,
                  ("datasources" .=) <$> _layaDatasources,
                  ("lastModifierEmail" .=) <$> _layaLastModifierEmail,
                  ("name" .=) <$> _layaName, ("bbox" .=) <$> _layaBbox,
                  ("processingStatus" .=) <$> _layaProcessingStatus,
                  ("id" .=) <$> _layaId,
                  ("projectId" .=) <$> _layaProjectId,
                  ("draftAccessList" .=) <$> _layaDraftAccessList,
                  ("publishedAccessList" .=) <$>
                    _layaPublishedAccessList,
                  ("description" .=) <$> _layaDescription,
                  ("tags" .=) <$> _layaTags])

-- | Style for points.
--
-- /See:/ 'pointStyle' smart constructor.
data PointStyle = PointStyle
    { _psIcon  :: !(Maybe IconStyle)
    , _psLabel :: !(Maybe LabelStyle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psIcon'
--
-- * 'psLabel'
pointStyle
    :: PointStyle
pointStyle =
    PointStyle
    { _psIcon = Nothing
    , _psLabel = Nothing
    }

-- | Icon for the point; if it isn\'t null, exactly one of \'name\', \'id\'
-- or \'scaledShape\' must be set.
psIcon :: Lens' PointStyle (Maybe IconStyle)
psIcon = lens _psIcon (\ s a -> s{_psIcon = a})

-- | Label style for the point.
psLabel :: Lens' PointStyle (Maybe LabelStyle)
psLabel = lens _psLabel (\ s a -> s{_psLabel = a})

instance FromJSON PointStyle where
        parseJSON
          = withObject "PointStyle"
              (\ o ->
                 PointStyle <$> (o .:? "icon") <*> (o .:? "label"))

instance ToJSON PointStyle where
        toJSON PointStyle{..}
          = object
              (catMaybes
                 [("icon" .=) <$> _psIcon, ("label" .=) <$> _psLabel])

-- | A geo-referenced raster.
--
-- /See:/ 'raster' smart constructor.
data Raster = Raster
    { _rrCreationTime              :: !(Maybe DateTime')
    , _rrWritersCanEditPermissions :: !(Maybe Bool)
    , _rrMaskType                  :: !Text
    , _rrEtag                      :: !(Maybe Text)
    , _rrCreatorEmail              :: !(Maybe Text)
    , _rrRasterType                :: !(Maybe RasterRasterType)
    , _rrLastModifiedTime          :: !(Maybe DateTime')
    , _rrLastModifierEmail         :: !(Maybe Text)
    , _rrAcquisitionTime           :: !(Maybe AcquisitionTime)
    , _rrName                      :: !(Maybe Text)
    , _rrBbox                      :: !(Maybe [Double])
    , _rrProcessingStatus          :: !(Maybe RasterProcessingStatus)
    , _rrFiles                     :: !(Maybe [File])
    , _rrId                        :: !(Maybe Text)
    , _rrProjectId                 :: !(Maybe Text)
    , _rrDraftAccessList           :: !(Maybe Text)
    , _rrDescription               :: !(Maybe Text)
    , _rrAttribution               :: !(Maybe Text)
    , _rrTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Raster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrCreationTime'
--
-- * 'rrWritersCanEditPermissions'
--
-- * 'rrMaskType'
--
-- * 'rrEtag'
--
-- * 'rrCreatorEmail'
--
-- * 'rrRasterType'
--
-- * 'rrLastModifiedTime'
--
-- * 'rrLastModifierEmail'
--
-- * 'rrAcquisitionTime'
--
-- * 'rrName'
--
-- * 'rrBbox'
--
-- * 'rrProcessingStatus'
--
-- * 'rrFiles'
--
-- * 'rrId'
--
-- * 'rrProjectId'
--
-- * 'rrDraftAccessList'
--
-- * 'rrDescription'
--
-- * 'rrAttribution'
--
-- * 'rrTags'
raster
    :: Raster
raster =
    Raster
    { _rrCreationTime = Nothing
    , _rrWritersCanEditPermissions = Nothing
    , _rrMaskType = "autoMask"
    , _rrEtag = Nothing
    , _rrCreatorEmail = Nothing
    , _rrRasterType = Nothing
    , _rrLastModifiedTime = Nothing
    , _rrLastModifierEmail = Nothing
    , _rrAcquisitionTime = Nothing
    , _rrName = Nothing
    , _rrBbox = Nothing
    , _rrProcessingStatus = Nothing
    , _rrFiles = Nothing
    , _rrId = Nothing
    , _rrProjectId = Nothing
    , _rrDraftAccessList = Nothing
    , _rrDescription = Nothing
    , _rrAttribution = Nothing
    , _rrTags = Nothing
    }

-- | The creation time of this raster. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
rrCreationTime :: Lens' Raster (Maybe UTCTime)
rrCreationTime
  = lens _rrCreationTime
      (\ s a -> s{_rrCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
rrWritersCanEditPermissions :: Lens' Raster (Maybe Bool)
rrWritersCanEditPermissions
  = lens _rrWritersCanEditPermissions
      (\ s a -> s{_rrWritersCanEditPermissions = a})

-- | The mask processing type of this Raster.
rrMaskType :: Lens' Raster Text
rrMaskType
  = lens _rrMaskType (\ s a -> s{_rrMaskType = a})

-- | The ETag, used to refer to the current version of the asset.
rrEtag :: Lens' Raster (Maybe Text)
rrEtag = lens _rrEtag (\ s a -> s{_rrEtag = a})

-- | The email address of the creator of this raster. This is only returned
-- on GET requests and not LIST requests.
rrCreatorEmail :: Lens' Raster (Maybe Text)
rrCreatorEmail
  = lens _rrCreatorEmail
      (\ s a -> s{_rrCreatorEmail = a})

-- | The type of this Raster. Always \"image\" today.
rrRasterType :: Lens' Raster (Maybe RasterRasterType)
rrRasterType
  = lens _rrRasterType (\ s a -> s{_rrRasterType = a})

-- | The last modified time of this raster. The value is an RFC 3339
-- formatted date-time value (e.g. 1970-01-01T00:00:00Z).
rrLastModifiedTime :: Lens' Raster (Maybe UTCTime)
rrLastModifiedTime
  = lens _rrLastModifiedTime
      (\ s a -> s{_rrLastModifiedTime = a})
      . mapping _DateTime

-- | The email address of the last modifier of this raster. This is only
-- returned on GET requests and not LIST requests.
rrLastModifierEmail :: Lens' Raster (Maybe Text)
rrLastModifierEmail
  = lens _rrLastModifierEmail
      (\ s a -> s{_rrLastModifierEmail = a})

-- | The acquisition time of this Raster.
rrAcquisitionTime :: Lens' Raster (Maybe AcquisitionTime)
rrAcquisitionTime
  = lens _rrAcquisitionTime
      (\ s a -> s{_rrAcquisitionTime = a})

-- | The name of this Raster, supplied by the author.
rrName :: Lens' Raster (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | A rectangular bounding box which contains all of the data in this
-- Raster. The box is expressed as \\\"west, south, east, north\\\". The
-- numbers represent latitudes and longitudes in decimal degrees.
rrBbox :: Lens' Raster [Double]
rrBbox
  = lens _rrBbox (\ s a -> s{_rrBbox = a}) . _Default .
      _Coerce

-- | The processing status of this Raster.
rrProcessingStatus :: Lens' Raster (Maybe RasterProcessingStatus)
rrProcessingStatus
  = lens _rrProcessingStatus
      (\ s a -> s{_rrProcessingStatus = a})

-- | The files associated with this Raster.
rrFiles :: Lens' Raster [File]
rrFiles
  = lens _rrFiles (\ s a -> s{_rrFiles = a}) . _Default
      . _Coerce

-- | A globally unique ID, used to refer to this Raster.
rrId :: Lens' Raster (Maybe Text)
rrId = lens _rrId (\ s a -> s{_rrId = a})

-- | The ID of the project that this Raster is in.
rrProjectId :: Lens' Raster (Maybe Text)
rrProjectId
  = lens _rrProjectId (\ s a -> s{_rrProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
rrDraftAccessList :: Lens' Raster (Maybe Text)
rrDraftAccessList
  = lens _rrDraftAccessList
      (\ s a -> s{_rrDraftAccessList = a})

-- | The description of this Raster, supplied by the author.
rrDescription :: Lens' Raster (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

-- | The name of the attribution to be used for this Raster.
rrAttribution :: Lens' Raster (Maybe Text)
rrAttribution
  = lens _rrAttribution
      (\ s a -> s{_rrAttribution = a})

-- | Tags of this Raster.
rrTags :: Lens' Raster [Text]
rrTags
  = lens _rrTags (\ s a -> s{_rrTags = a}) . _Default .
      _Coerce

instance FromJSON Raster where
        parseJSON
          = withObject "Raster"
              (\ o ->
                 Raster <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "maskType" .!= "autoMask")
                     <*> (o .:? "etag")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "rasterType")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "acquisitionTime")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "files" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "draftAccessList")
                     <*> (o .:? "description")
                     <*> (o .:? "attribution")
                     <*> (o .:? "tags"))

instance ToJSON Raster where
        toJSON Raster{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _rrCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _rrWritersCanEditPermissions,
                  Just ("maskType" .= _rrMaskType),
                  ("etag" .=) <$> _rrEtag,
                  ("creatorEmail" .=) <$> _rrCreatorEmail,
                  ("rasterType" .=) <$> _rrRasterType,
                  ("lastModifiedTime" .=) <$> _rrLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _rrLastModifierEmail,
                  ("acquisitionTime" .=) <$> _rrAcquisitionTime,
                  ("name" .=) <$> _rrName, ("bbox" .=) <$> _rrBbox,
                  ("processingStatus" .=) <$> _rrProcessingStatus,
                  ("files" .=) <$> _rrFiles, ("id" .=) <$> _rrId,
                  ("projectId" .=) <$> _rrProjectId,
                  ("draftAccessList" .=) <$> _rrDraftAccessList,
                  ("description" .=) <$> _rrDescription,
                  ("attribution" .=) <$> _rrAttribution,
                  ("tags" .=) <$> _rrTags])

-- | Style for polygons.
--
-- /See:/ 'polygonStyle' smart constructor.
data PolygonStyle = PolygonStyle
    { _pStroke :: !(Maybe BOrder)
    , _pFill   :: !(Maybe Color)
    , _pLabel  :: !(Maybe LabelStyle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PolygonStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStroke'
--
-- * 'pFill'
--
-- * 'pLabel'
polygonStyle
    :: PolygonStyle
polygonStyle =
    PolygonStyle
    { _pStroke = Nothing
    , _pFill = Nothing
    , _pLabel = Nothing
    }

-- | Border of the polygon. 0 \< border.width \<= 10.
pStroke :: Lens' PolygonStyle (Maybe BOrder)
pStroke = lens _pStroke (\ s a -> s{_pStroke = a})

-- | Fill color of the polygon. If not provided, the polygon will be
-- transparent and not visible if there is no border.
pFill :: Lens' PolygonStyle (Maybe Color)
pFill = lens _pFill (\ s a -> s{_pFill = a})

-- | Label style for the polygon.
pLabel :: Lens' PolygonStyle (Maybe LabelStyle)
pLabel = lens _pLabel (\ s a -> s{_pLabel = a})

instance FromJSON PolygonStyle where
        parseJSON
          = withObject "PolygonStyle"
              (\ o ->
                 PolygonStyle <$>
                   (o .:? "stroke") <*> (o .:? "fill") <*>
                     (o .:? "label"))

instance ToJSON PolygonStyle where
        toJSON PolygonStyle{..}
          = object
              (catMaybes
                 [("stroke" .=) <$> _pStroke, ("fill" .=) <$> _pFill,
                  ("label" .=) <$> _pLabel])

-- | A permission defines the user or group that has access to an asset, and
-- the type of access they have.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _perRole         :: !(Maybe PermissionRole)
    , _perId           :: !(Maybe Text)
    , _perType         :: !(Maybe PermissionType)
    , _perDiscoverable :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perRole'
--
-- * 'perId'
--
-- * 'perType'
--
-- * 'perDiscoverable'
permission
    :: Permission
permission =
    Permission
    { _perRole = Nothing
    , _perId = Nothing
    , _perType = Nothing
    , _perDiscoverable = Nothing
    }

-- | The type of access granted to this user or group.
perRole :: Lens' Permission (Maybe PermissionRole)
perRole = lens _perRole (\ s a -> s{_perRole = a})

-- | The unique identifier of the permission. This could be the email address
-- of the user or group this permission refers to, or the string \"anyone\"
-- for public permissions.
perId :: Lens' Permission (Maybe Text)
perId = lens _perId (\ s a -> s{_perId = a})

-- | The account type.
perType :: Lens' Permission (Maybe PermissionType)
perType = lens _perType (\ s a -> s{_perType = a})

-- | Indicates whether a public asset is listed and can be found via a web
-- search (value true), or is visible only to people who have a link to the
-- asset (value false).
perDiscoverable :: Lens' Permission (Maybe Bool)
perDiscoverable
  = lens _perDiscoverable
      (\ s a -> s{_perDiscoverable = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission <$>
                   (o .:? "role") <*> (o .:? "id") <*> (o .:? "type")
                     <*> (o .:? "discoverable"))

instance ToJSON Permission where
        toJSON Permission{..}
          = object
              (catMaybes
                 [("role" .=) <$> _perRole, ("id" .=) <$> _perId,
                  ("type" .=) <$> _perType,
                  ("discoverable" .=) <$> _perDiscoverable])

-- | The published version of a layer.
--
-- /See:/ 'publishedLayer' smart constructor.
data PublishedLayer = PublishedLayer
    { _plLayerType   :: !(Maybe PublishedLayerLayerType)
    , _plName        :: !(Maybe Text)
    , _plId          :: !(Maybe Text)
    , _plProjectId   :: !(Maybe Text)
    , _plDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishedLayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plLayerType'
--
-- * 'plName'
--
-- * 'plId'
--
-- * 'plProjectId'
--
-- * 'plDescription'
publishedLayer
    :: PublishedLayer
publishedLayer =
    PublishedLayer
    { _plLayerType = Nothing
    , _plName = Nothing
    , _plId = Nothing
    , _plProjectId = Nothing
    , _plDescription = Nothing
    }

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
plLayerType :: Lens' PublishedLayer (Maybe PublishedLayerLayerType)
plLayerType
  = lens _plLayerType (\ s a -> s{_plLayerType = a})

-- | The name of this Layer, supplied by the author.
plName :: Lens' PublishedLayer (Maybe Text)
plName = lens _plName (\ s a -> s{_plName = a})

-- | A globally unique ID, used to refer to this Layer.
plId :: Lens' PublishedLayer (Maybe Text)
plId = lens _plId (\ s a -> s{_plId = a})

-- | The ID of the project that this Layer is in.
plProjectId :: Lens' PublishedLayer (Maybe Text)
plProjectId
  = lens _plProjectId (\ s a -> s{_plProjectId = a})

-- | The description of this Layer, supplied by the author.
plDescription :: Lens' PublishedLayer (Maybe Text)
plDescription
  = lens _plDescription
      (\ s a -> s{_plDescription = a})

instance FromJSON PublishedLayer where
        parseJSON
          = withObject "PublishedLayer"
              (\ o ->
                 PublishedLayer <$>
                   (o .:? "layerType") <*> (o .:? "name") <*>
                     (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "description"))

instance ToJSON PublishedLayer where
        toJSON PublishedLayer{..}
          = object
              (catMaybes
                 [("layerType" .=) <$> _plLayerType,
                  ("name" .=) <$> _plName, ("id" .=) <$> _plId,
                  ("projectId" .=) <$> _plProjectId,
                  ("description" .=) <$> _plDescription])

-- | A collection of geographic features, and associated metadata.
--
-- /See:/ 'table' smart constructor.
data Table = Table
    { _ttCreationTime              :: !(Maybe DateTime')
    , _ttWritersCanEditPermissions :: !(Maybe Bool)
    , _ttEtag                      :: !(Maybe Text)
    , _ttCreatorEmail              :: !(Maybe Text)
    , _ttLastModifiedTime          :: !(Maybe DateTime')
    , _ttSchema                    :: !(Maybe Schema)
    , _ttLastModifierEmail         :: !(Maybe Text)
    , _ttName                      :: !(Maybe Text)
    , _ttBbox                      :: !(Maybe [Double])
    , _ttProcessingStatus          :: !(Maybe TableProcessingStatus)
    , _ttFiles                     :: !(Maybe [File])
    , _ttId                        :: !(Maybe Text)
    , _ttProjectId                 :: !(Maybe Text)
    , _ttDraftAccessList           :: !(Maybe Text)
    , _ttPublishedAccessList       :: !(Maybe Text)
    , _ttSourceEncoding            :: !Text
    , _ttDescription               :: !(Maybe Text)
    , _ttTags                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttCreationTime'
--
-- * 'ttWritersCanEditPermissions'
--
-- * 'ttEtag'
--
-- * 'ttCreatorEmail'
--
-- * 'ttLastModifiedTime'
--
-- * 'ttSchema'
--
-- * 'ttLastModifierEmail'
--
-- * 'ttName'
--
-- * 'ttBbox'
--
-- * 'ttProcessingStatus'
--
-- * 'ttFiles'
--
-- * 'ttId'
--
-- * 'ttProjectId'
--
-- * 'ttDraftAccessList'
--
-- * 'ttPublishedAccessList'
--
-- * 'ttSourceEncoding'
--
-- * 'ttDescription'
--
-- * 'ttTags'
table
    :: Table
table =
    Table
    { _ttCreationTime = Nothing
    , _ttWritersCanEditPermissions = Nothing
    , _ttEtag = Nothing
    , _ttCreatorEmail = Nothing
    , _ttLastModifiedTime = Nothing
    , _ttSchema = Nothing
    , _ttLastModifierEmail = Nothing
    , _ttName = Nothing
    , _ttBbox = Nothing
    , _ttProcessingStatus = Nothing
    , _ttFiles = Nothing
    , _ttId = Nothing
    , _ttProjectId = Nothing
    , _ttDraftAccessList = Nothing
    , _ttPublishedAccessList = Nothing
    , _ttSourceEncoding = "UTF-8"
    , _ttDescription = Nothing
    , _ttTags = Nothing
    }

-- | The creation time of this table. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
ttCreationTime :: Lens' Table (Maybe UTCTime)
ttCreationTime
  = lens _ttCreationTime
      (\ s a -> s{_ttCreationTime = a})
      . mapping _DateTime

-- | If true, WRITERs of the asset are able to edit the asset permissions.
ttWritersCanEditPermissions :: Lens' Table (Maybe Bool)
ttWritersCanEditPermissions
  = lens _ttWritersCanEditPermissions
      (\ s a -> s{_ttWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
ttEtag :: Lens' Table (Maybe Text)
ttEtag = lens _ttEtag (\ s a -> s{_ttEtag = a})

-- | The email address of the creator of this table. This is only returned on
-- GET requests and not LIST requests.
ttCreatorEmail :: Lens' Table (Maybe Text)
ttCreatorEmail
  = lens _ttCreatorEmail
      (\ s a -> s{_ttCreatorEmail = a})

-- | The last modified time of this table. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
ttLastModifiedTime :: Lens' Table (Maybe UTCTime)
ttLastModifiedTime
  = lens _ttLastModifiedTime
      (\ s a -> s{_ttLastModifiedTime = a})
      . mapping _DateTime

-- | The schema for this table. Note: The schema is returned in response to a
-- get request but not a list request. After requesting a list of tables,
-- you\'ll need to send a get request to retrieve the schema for each
-- table.
ttSchema :: Lens' Table (Maybe Schema)
ttSchema = lens _ttSchema (\ s a -> s{_ttSchema = a})

-- | The email address of the last modifier of this table. This is only
-- returned on GET requests and not LIST requests.
ttLastModifierEmail :: Lens' Table (Maybe Text)
ttLastModifierEmail
  = lens _ttLastModifierEmail
      (\ s a -> s{_ttLastModifierEmail = a})

-- | The name of this table, supplied by the author.
ttName :: Lens' Table (Maybe Text)
ttName = lens _ttName (\ s a -> s{_ttName = a})

-- | A rectangular bounding box which contains all of the data in this Table.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
ttBbox :: Lens' Table [Double]
ttBbox
  = lens _ttBbox (\ s a -> s{_ttBbox = a}) . _Default .
      _Coerce

-- | The processing status of this table.
ttProcessingStatus :: Lens' Table (Maybe TableProcessingStatus)
ttProcessingStatus
  = lens _ttProcessingStatus
      (\ s a -> s{_ttProcessingStatus = a})

-- | The files associated with this table.
ttFiles :: Lens' Table [File]
ttFiles
  = lens _ttFiles (\ s a -> s{_ttFiles = a}) . _Default
      . _Coerce

-- | A globally unique ID, used to refer to this table.
ttId :: Lens' Table (Maybe Text)
ttId = lens _ttId (\ s a -> s{_ttId = a})

-- | The ID of the project to which the table belongs.
ttProjectId :: Lens' Table (Maybe Text)
ttProjectId
  = lens _ttProjectId (\ s a -> s{_ttProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
ttDraftAccessList :: Lens' Table (Maybe Text)
ttDraftAccessList
  = lens _ttDraftAccessList
      (\ s a -> s{_ttDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. Note: This is an input field
-- only. It is not returned in response to a list or get request.
ttPublishedAccessList :: Lens' Table (Maybe Text)
ttPublishedAccessList
  = lens _ttPublishedAccessList
      (\ s a -> s{_ttPublishedAccessList = a})

-- | Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO
-- 8859-1, and Shift_JIS.
ttSourceEncoding :: Lens' Table Text
ttSourceEncoding
  = lens _ttSourceEncoding
      (\ s a -> s{_ttSourceEncoding = a})

-- | The description of this table, supplied by the author.
ttDescription :: Lens' Table (Maybe Text)
ttDescription
  = lens _ttDescription
      (\ s a -> s{_ttDescription = a})

-- | An array of text strings, with each string representing a tag. More
-- information about tags can be found in the Tagging data article of the
-- Maps Engine help center.
ttTags :: Lens' Table [Text]
ttTags
  = lens _ttTags (\ s a -> s{_ttTags = a}) . _Default .
      _Coerce

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table <$>
                   (o .:? "creationTime") <*>
                     (o .:? "writersCanEditPermissions")
                     <*> (o .:? "etag")
                     <*> (o .:? "creatorEmail")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "schema")
                     <*> (o .:? "lastModifierEmail")
                     <*> (o .:? "name")
                     <*> (o .:? "bbox" .!= mempty)
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "files" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "draftAccessList")
                     <*> (o .:? "publishedAccessList")
                     <*> (o .:? "sourceEncoding" .!= "UTF-8")
                     <*> (o .:? "description")
                     <*> (o .:? "tags"))

instance ToJSON Table where
        toJSON Table{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _ttCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _ttWritersCanEditPermissions,
                  ("etag" .=) <$> _ttEtag,
                  ("creatorEmail" .=) <$> _ttCreatorEmail,
                  ("lastModifiedTime" .=) <$> _ttLastModifiedTime,
                  ("schema" .=) <$> _ttSchema,
                  ("lastModifierEmail" .=) <$> _ttLastModifierEmail,
                  ("name" .=) <$> _ttName, ("bbox" .=) <$> _ttBbox,
                  ("processingStatus" .=) <$> _ttProcessingStatus,
                  ("files" .=) <$> _ttFiles, ("id" .=) <$> _ttId,
                  ("projectId" .=) <$> _ttProjectId,
                  ("draftAccessList" .=) <$> _ttDraftAccessList,
                  ("publishedAccessList" .=) <$>
                    _ttPublishedAccessList,
                  Just ("sourceEncoding" .= _ttSourceEncoding),
                  ("description" .=) <$> _ttDescription,
                  ("tags" .=) <$> _ttTags])

-- | A single File, which is a component of an Asset.
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fSize         :: !(Maybe Int64)
    , _fUploadStatus :: !(Maybe FileUploadStatus)
    , _fFilename     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fSize'
--
-- * 'fUploadStatus'
--
-- * 'fFilename'
file
    :: File
file =
    File
    { _fSize = Nothing
    , _fUploadStatus = Nothing
    , _fFilename = Nothing
    }

-- | The size of the file in bytes.
fSize :: Lens' File (Maybe Int64)
fSize = lens _fSize (\ s a -> s{_fSize = a})

-- | The upload status of the file.
fUploadStatus :: Lens' File (Maybe FileUploadStatus)
fUploadStatus
  = lens _fUploadStatus
      (\ s a -> s{_fUploadStatus = a})

-- | The name of the file.
fFilename :: Lens' File (Maybe Text)
fFilename
  = lens _fFilename (\ s a -> s{_fFilename = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File <$>
                   (o .:? "size") <*> (o .:? "uploadStatus") <*>
                     (o .:? "filename"))

instance ToJSON File where
        toJSON File{..}
          = object
              (catMaybes
                 [("size" .=) <$> _fSize,
                  ("uploadStatus" .=) <$> _fUploadStatus,
                  ("filename" .=) <$> _fFilename])

-- | A vector style contains styling information for vector layer.
--
-- /See:/ 'vectorStyle' smart constructor.
data VectorStyle = VectorStyle
    { _vsDisplayRules :: !(Maybe [DisplayRule])
    , _vsFeatureInfo  :: !(Maybe FeatureInfo)
    , _vsType         :: !(Maybe VectorStyleType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VectorStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsDisplayRules'
--
-- * 'vsFeatureInfo'
--
-- * 'vsType'
vectorStyle
    :: VectorStyle
vectorStyle =
    VectorStyle
    { _vsDisplayRules = Nothing
    , _vsFeatureInfo = Nothing
    , _vsType = Nothing
    }

vsDisplayRules :: Lens' VectorStyle [DisplayRule]
vsDisplayRules
  = lens _vsDisplayRules
      (\ s a -> s{_vsDisplayRules = a})
      . _Default
      . _Coerce

-- | Individual feature info, this is called Info Window in Maps Engine UI.
-- If not provided, a default template with all attributes will be
-- generated.
vsFeatureInfo :: Lens' VectorStyle (Maybe FeatureInfo)
vsFeatureInfo
  = lens _vsFeatureInfo
      (\ s a -> s{_vsFeatureInfo = a})

-- | The type of the vector style. Currently, only displayRule is supported.
vsType :: Lens' VectorStyle (Maybe VectorStyleType)
vsType = lens _vsType (\ s a -> s{_vsType = a})

instance FromJSON VectorStyle where
        parseJSON
          = withObject "VectorStyle"
              (\ o ->
                 VectorStyle <$>
                   (o .:? "displayRules" .!= mempty) <*>
                     (o .:? "featureInfo")
                     <*> (o .:? "type"))

instance ToJSON VectorStyle where
        toJSON VectorStyle{..}
          = object
              (catMaybes
                 [("displayRules" .=) <$> _vsDisplayRules,
                  ("featureInfo" .=) <$> _vsFeatureInfo,
                  ("type" .=) <$> _vsType])

-- | The response returned by a call to mapsengine.permissions.batchDelete.
--
-- /See:/ 'permissionsBatchDeleteResponse' smart constructor.
data PermissionsBatchDeleteResponse =
    PermissionsBatchDeleteResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsBatchDeleteResponse' with the minimum fields required to make a request.
--
permissionsBatchDeleteResponse
    :: PermissionsBatchDeleteResponse
permissionsBatchDeleteResponse = PermissionsBatchDeleteResponse

instance FromJSON PermissionsBatchDeleteResponse
         where
        parseJSON
          = withObject "PermissionsBatchDeleteResponse"
              (\ o -> pure PermissionsBatchDeleteResponse)

instance ToJSON PermissionsBatchDeleteResponse where
        toJSON = const (Object mempty)

--
-- /See:/ 'mapKmlLink' smart constructor.
data MapKmlLink = MapKmlLink
    { _mklDefaultViewport :: !(Maybe [Double])
    , _mklVisibility      :: !(Maybe Text)
    , _mklName            :: !(Maybe Text)
    , _mklType            :: !(Maybe MapKmlLinkType)
    , _mklKmlURL          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapKmlLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mklDefaultViewport'
--
-- * 'mklVisibility'
--
-- * 'mklName'
--
-- * 'mklType'
--
-- * 'mklKmlURL'
mapKmlLink
    :: MapKmlLink
mapKmlLink =
    MapKmlLink
    { _mklDefaultViewport = Nothing
    , _mklVisibility = Nothing
    , _mklName = Nothing
    , _mklType = Nothing
    , _mklKmlURL = Nothing
    }

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
mklDefaultViewport :: Lens' MapKmlLink [Double]
mklDefaultViewport
  = lens _mklDefaultViewport
      (\ s a -> s{_mklDefaultViewport = a})
      . _Default
      . _Coerce

-- | The visibility setting of this MapKmlLink. One of \"defaultOn\" or
-- \"defaultOff\".
mklVisibility :: Lens' MapKmlLink (Maybe Text)
mklVisibility
  = lens _mklVisibility
      (\ s a -> s{_mklVisibility = a})

-- | The name of this MapKmlLink.
mklName :: Lens' MapKmlLink (Maybe Text)
mklName = lens _mklName (\ s a -> s{_mklName = a})

-- | Identifies this object as a MapKmlLink.
mklType :: Lens' MapKmlLink (Maybe MapKmlLinkType)
mklType = lens _mklType (\ s a -> s{_mklType = a})

-- | The URL to the KML file represented by this MapKmlLink.
mklKmlURL :: Lens' MapKmlLink (Maybe Text)
mklKmlURL
  = lens _mklKmlURL (\ s a -> s{_mklKmlURL = a})

instance FromJSON MapKmlLink where
        parseJSON
          = withObject "MapKmlLink"
              (\ o ->
                 MapKmlLink <$>
                   (o .:? "defaultViewport" .!= mempty) <*>
                     (o .:? "visibility")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "kmlUrl"))

instance ToJSON MapKmlLink where
        toJSON MapKmlLink{..}
          = object
              (catMaybes
                 [("defaultViewport" .=) <$> _mklDefaultViewport,
                  ("visibility" .=) <$> _mklVisibility,
                  ("name" .=) <$> _mklName, ("type" .=) <$> _mklType,
                  ("kmlUrl" .=) <$> _mklKmlURL])

-- | The response returned by a call to mapsengine.permissions.batchUpdate.
--
-- /See:/ 'permissionsBatchUpdateResponse' smart constructor.
data PermissionsBatchUpdateResponse =
    PermissionsBatchUpdateResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsBatchUpdateResponse' with the minimum fields required to make a request.
--
permissionsBatchUpdateResponse
    :: PermissionsBatchUpdateResponse
permissionsBatchUpdateResponse = PermissionsBatchUpdateResponse

instance FromJSON PermissionsBatchUpdateResponse
         where
        parseJSON
          = withObject "PermissionsBatchUpdateResponse"
              (\ o -> pure PermissionsBatchUpdateResponse)

instance ToJSON PermissionsBatchUpdateResponse where
        toJSON = const (Object mempty)

--
-- /See:/ 'geoJSONLineString' smart constructor.
data GeoJSONLineString = GeoJSONLineString
    { _gjlsCoordinates :: !(Maybe [[Double]])
    , _gjlsType        :: !(Maybe GeoJSONLineStringType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONLineString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjlsCoordinates'
--
-- * 'gjlsType'
geoJSONLineString
    :: GeoJSONLineString
geoJSONLineString =
    GeoJSONLineString
    { _gjlsCoordinates = Nothing
    , _gjlsType = Nothing
    }

-- | An array of two or more positions, representing a line.
gjlsCoordinates :: Lens' GeoJSONLineString [[Double]]
gjlsCoordinates
  = lens _gjlsCoordinates
      (\ s a -> s{_gjlsCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonLineString.
gjlsType :: Lens' GeoJSONLineString (Maybe GeoJSONLineStringType)
gjlsType = lens _gjlsType (\ s a -> s{_gjlsType = a})

instance FromJSON GeoJSONLineString where
        parseJSON
          = withObject "GeoJSONLineString"
              (\ o ->
                 GeoJSONLineString <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONLineString where
        toJSON GeoJSONLineString{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjlsCoordinates,
                  ("type" .=) <$> _gjlsType])

-- | The response returned by a call to maps.List.published.
--
-- /See:/ 'publishedMapsListResponse' smart constructor.
data PublishedMapsListResponse = PublishedMapsListResponse
    { _pmlrMaps          :: !(Maybe [PublishedMap])
    , _pmlrNextPageToken :: !(Maybe Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishedMapsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmlrMaps'
--
-- * 'pmlrNextPageToken'
publishedMapsListResponse
    :: PublishedMapsListResponse
publishedMapsListResponse =
    PublishedMapsListResponse
    { _pmlrMaps = Nothing
    , _pmlrNextPageToken = Nothing
    }

-- | Resources returned.
pmlrMaps :: Lens' PublishedMapsListResponse [PublishedMap]
pmlrMaps
  = lens _pmlrMaps (\ s a -> s{_pmlrMaps = a}) .
      _Default
      . _Coerce

-- | Next page token.
pmlrNextPageToken :: Lens' PublishedMapsListResponse (Maybe Word8)
pmlrNextPageToken
  = lens _pmlrNextPageToken
      (\ s a -> s{_pmlrNextPageToken = a})

instance FromJSON PublishedMapsListResponse where
        parseJSON
          = withObject "PublishedMapsListResponse"
              (\ o ->
                 PublishedMapsListResponse <$>
                   (o .:? "maps" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON PublishedMapsListResponse where
        toJSON PublishedMapsListResponse{..}
          = object
              (catMaybes
                 [("maps" .=) <$> _pmlrMaps,
                  ("nextPageToken" .=) <$> _pmlrNextPageToken])

-- | The response returned by a call to maps.List.
--
-- /See:/ 'mapsListResponse' smart constructor.
data MapsListResponse = MapsListResponse
    { _mlrMaps          :: !(Maybe [Map])
    , _mlrNextPageToken :: !(Maybe Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrMaps'
--
-- * 'mlrNextPageToken'
mapsListResponse
    :: MapsListResponse
mapsListResponse =
    MapsListResponse
    { _mlrMaps = Nothing
    , _mlrNextPageToken = Nothing
    }

-- | Resources returned.
mlrMaps :: Lens' MapsListResponse [Map]
mlrMaps
  = lens _mlrMaps (\ s a -> s{_mlrMaps = a}) . _Default
      . _Coerce

-- | Next page token.
mlrNextPageToken :: Lens' MapsListResponse (Maybe Word8)
mlrNextPageToken
  = lens _mlrNextPageToken
      (\ s a -> s{_mlrNextPageToken = a})

instance FromJSON MapsListResponse where
        parseJSON
          = withObject "MapsListResponse"
              (\ o ->
                 MapsListResponse <$>
                   (o .:? "maps" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON MapsListResponse where
        toJSON MapsListResponse{..}
          = object
              (catMaybes
                 [("maps" .=) <$> _mlrMaps,
                  ("nextPageToken" .=) <$> _mlrNextPageToken])

-- | A heterogenous collection of GeoJsonGeometry objects.
--
-- /See:/ 'geoJSONGeometryCollection' smart constructor.
data GeoJSONGeometryCollection = GeoJSONGeometryCollection
    { _gjgcGeometries :: !(Maybe [GeoJSONGeometry])
    , _gjgcType       :: !(Maybe GeoJSONGeometryCollectionType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONGeometryCollection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjgcGeometries'
--
-- * 'gjgcType'
geoJSONGeometryCollection
    :: GeoJSONGeometryCollection
geoJSONGeometryCollection =
    GeoJSONGeometryCollection
    { _gjgcGeometries = Nothing
    , _gjgcType = Nothing
    }

-- | An array of geometry objects. There must be at least 2 different types
-- of geometries in the array.
gjgcGeometries :: Lens' GeoJSONGeometryCollection [GeoJSONGeometry]
gjgcGeometries
  = lens _gjgcGeometries
      (\ s a -> s{_gjgcGeometries = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonGeometryCollection.
gjgcType :: Lens' GeoJSONGeometryCollection (Maybe GeoJSONGeometryCollectionType)
gjgcType = lens _gjgcType (\ s a -> s{_gjgcType = a})

instance FromJSON GeoJSONGeometryCollection where
        parseJSON
          = withObject "GeoJSONGeometryCollection"
              (\ o ->
                 GeoJSONGeometryCollection <$>
                   (o .:? "geometries" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONGeometryCollection where
        toJSON GeoJSONGeometryCollection{..}
          = object
              (catMaybes
                 [("geometries" .=) <$> _gjgcGeometries,
                  ("type" .=) <$> _gjgcType])

--
-- /See:/ 'geoJSONPolygon' smart constructor.
data GeoJSONPolygon = GeoJSONPolygon
    { _gjpCoordinates :: !(Maybe [[[Double]]])
    , _gjpType        :: !(Maybe GeoJSONPolygonType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjpCoordinates'
--
-- * 'gjpType'
geoJSONPolygon
    :: GeoJSONPolygon
geoJSONPolygon =
    GeoJSONPolygon
    { _gjpCoordinates = Nothing
    , _gjpType = Nothing
    }

-- | An array of LinearRings. A LinearRing is a GeoJsonLineString which is
-- closed (that is, the first and last GeoJsonPositions are equal), and
-- which contains at least four GeoJsonPositions. For polygons with
-- multiple rings, the first LinearRing is the exterior ring, and any
-- subsequent rings are interior rings (that is, holes).
gjpCoordinates :: Lens' GeoJSONPolygon [[[Double]]]
gjpCoordinates
  = lens _gjpCoordinates
      (\ s a -> s{_gjpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonPolygon.
gjpType :: Lens' GeoJSONPolygon (Maybe GeoJSONPolygonType)
gjpType = lens _gjpType (\ s a -> s{_gjpType = a})

instance FromJSON GeoJSONPolygon where
        parseJSON
          = withObject "GeoJSONPolygon"
              (\ o ->
                 GeoJSONPolygon <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJSONPolygon where
        toJSON GeoJSONPolygon{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjpCoordinates,
                  ("type" .=) <$> _gjpType])

--
-- /See:/ 'geoJSONPoint' smart constructor.
data GeoJSONPoint = GeoJSONPoint
    { _gjsonpCoordinates :: !(Maybe [Double])
    , _gjsonpType        :: !(Maybe GeoJSONPointType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJSONPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjsonpCoordinates'
--
-- * 'gjsonpType'
geoJSONPoint
    :: GeoJSONPoint
geoJSONPoint =
    GeoJSONPoint
    { _gjsonpCoordinates = Nothing
    , _gjsonpType = Nothing
    }

-- | A single GeoJsonPosition, specifying the location of the point.
gjsonpCoordinates :: Lens' GeoJSONPoint [Double]
gjsonpCoordinates
  = lens _gjsonpCoordinates
      (\ s a -> s{_gjsonpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonPoint.
gjsonpType :: Lens' GeoJSONPoint (Maybe GeoJSONPointType)
gjsonpType
  = lens _gjsonpType (\ s a -> s{_gjsonpType = a})

instance FromJSON GeoJSONPoint where
        parseJSON
          = withObject "GeoJSONPoint"
              (\ o ->
                 GeoJSONPoint <$>
                   (o .:? "coordinates") <*> (o .:? "type"))

instance ToJSON GeoJSONPoint where
        toJSON GeoJSONPoint{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjsonpCoordinates,
                  ("type" .=) <$> _gjsonpType])

-- | The response returned by a call to layers.List. Note: The list response
-- does not include all the fields available in a layer. Refer to the layer
-- resource description for details of the fields that are not included.
-- You\'ll need to send a get request to retrieve the additional fields for
-- each layer.
--
-- /See:/ 'layersListResponse' smart constructor.
data LayersListResponse = LayersListResponse
    { _llrNextPageToken :: !(Maybe Word8)
    , _llrLayers        :: !(Maybe [Layer])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLayers'
layersListResponse
    :: LayersListResponse
layersListResponse =
    LayersListResponse
    { _llrNextPageToken = Nothing
    , _llrLayers = Nothing
    }

-- | Next page token.
llrNextPageToken :: Lens' LayersListResponse (Maybe Word8)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | Resources returned.
llrLayers :: Lens' LayersListResponse [Layer]
llrLayers
  = lens _llrLayers (\ s a -> s{_llrLayers = a}) .
      _Default
      . _Coerce

instance FromJSON LayersListResponse where
        parseJSON
          = withObject "LayersListResponse"
              (\ o ->
                 LayersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "layers" .!= mempty))

instance ToJSON LayersListResponse where
        toJSON LayersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("layers" .=) <$> _llrLayers])

-- | The response returned by a call to rasters.List.
--
-- /See:/ 'rastersListResponse' smart constructor.
data RastersListResponse = RastersListResponse
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrRasters       :: !(Maybe [Raster])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrNextPageToken'
--
-- * 'rlrRasters'
rastersListResponse
    :: RastersListResponse
rastersListResponse =
    RastersListResponse
    { _rlrNextPageToken = Nothing
    , _rlrRasters = Nothing
    }

-- | Next page token.
rlrNextPageToken :: Lens' RastersListResponse (Maybe Text)
rlrNextPageToken
  = lens _rlrNextPageToken
      (\ s a -> s{_rlrNextPageToken = a})

-- | Resources returned.
rlrRasters :: Lens' RastersListResponse [Raster]
rlrRasters
  = lens _rlrRasters (\ s a -> s{_rlrRasters = a}) .
      _Default
      . _Coerce

instance FromJSON RastersListResponse where
        parseJSON
          = withObject "RastersListResponse"
              (\ o ->
                 RastersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "rasters" .!= mempty))

instance ToJSON RastersListResponse where
        toJSON RastersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlrNextPageToken,
                  ("rasters" .=) <$> _rlrRasters])

--
-- /See:/ 'permissionsListResponse' smart constructor.
newtype PermissionsListResponse = PermissionsListResponse
    { _plrPermissions :: Maybe [Permission]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrPermissions'
permissionsListResponse
    :: PermissionsListResponse
permissionsListResponse =
    PermissionsListResponse
    { _plrPermissions = Nothing
    }

-- | The set of permissions associated with this asset.
plrPermissions :: Lens' PermissionsListResponse [Permission]
plrPermissions
  = lens _plrPermissions
      (\ s a -> s{_plrPermissions = a})
      . _Default
      . _Coerce

instance FromJSON PermissionsListResponse where
        parseJSON
          = withObject "PermissionsListResponse"
              (\ o ->
                 PermissionsListResponse <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON PermissionsListResponse where
        toJSON PermissionsListResponse{..}
          = object
              (catMaybes [("permissions" .=) <$> _plrPermissions])

-- | Style for lines.
--
-- /See:/ 'lineStyle' smart constructor.
data LineStyle = LineStyle
    { _lsStroke :: !(Maybe LineStyleStroke)
    , _lsBOrder :: !(Maybe BOrder)
    , _lsDash   :: !(Maybe [Double])
    , _lsLabel  :: !(Maybe LabelStyle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStroke'
--
-- * 'lsBOrder'
--
-- * 'lsDash'
--
-- * 'lsLabel'
lineStyle
    :: LineStyle
lineStyle =
    LineStyle
    { _lsStroke = Nothing
    , _lsBOrder = Nothing
    , _lsDash = Nothing
    , _lsLabel = Nothing
    }

-- | Stroke of the line.
lsStroke :: Lens' LineStyle (Maybe LineStyleStroke)
lsStroke = lens _lsStroke (\ s a -> s{_lsStroke = a})

-- | Border of the line. 0 \< border.width \<= 5.
lsBOrder :: Lens' LineStyle (Maybe BOrder)
lsBOrder = lens _lsBOrder (\ s a -> s{_lsBOrder = a})

-- | Dash defines the pattern of the line, the values are pixel lengths of
-- alternating dash and gap. If dash is not provided, then it means a solid
-- line. Dash can contain up to 10 values and must contain even number of
-- values.
lsDash :: Lens' LineStyle [Double]
lsDash
  = lens _lsDash (\ s a -> s{_lsDash = a}) . _Default .
      _Coerce

-- | Label style for the line.
lsLabel :: Lens' LineStyle (Maybe LabelStyle)
lsLabel = lens _lsLabel (\ s a -> s{_lsLabel = a})

instance FromJSON LineStyle where
        parseJSON
          = withObject "LineStyle"
              (\ o ->
                 LineStyle <$>
                   (o .:? "stroke") <*> (o .:? "border") <*>
                     (o .:? "dash" .!= mempty)
                     <*> (o .:? "label"))

instance ToJSON LineStyle where
        toJSON LineStyle{..}
          = object
              (catMaybes
                 [("stroke" .=) <$> _lsStroke,
                  ("border" .=) <$> _lsBOrder, ("dash" .=) <$> _lsDash,
                  ("label" .=) <$> _lsLabel])

-- | The response returned by a call to layers.List.published.
--
-- /See:/ 'publishedLayersListResponse' smart constructor.
data PublishedLayersListResponse = PublishedLayersListResponse
    { _pllrNextPageToken :: !(Maybe Word8)
    , _pllrLayers        :: !(Maybe [PublishedLayer])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishedLayersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllrNextPageToken'
--
-- * 'pllrLayers'
publishedLayersListResponse
    :: PublishedLayersListResponse
publishedLayersListResponse =
    PublishedLayersListResponse
    { _pllrNextPageToken = Nothing
    , _pllrLayers = Nothing
    }

-- | Next page token.
pllrNextPageToken :: Lens' PublishedLayersListResponse (Maybe Word8)
pllrNextPageToken
  = lens _pllrNextPageToken
      (\ s a -> s{_pllrNextPageToken = a})

-- | Resources returned.
pllrLayers :: Lens' PublishedLayersListResponse [PublishedLayer]
pllrLayers
  = lens _pllrLayers (\ s a -> s{_pllrLayers = a}) .
      _Default
      . _Coerce

instance FromJSON PublishedLayersListResponse where
        parseJSON
          = withObject "PublishedLayersListResponse"
              (\ o ->
                 PublishedLayersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "layers" .!= mempty))

instance ToJSON PublishedLayersListResponse where
        toJSON PublishedLayersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _pllrNextPageToken,
                  ("layers" .=) <$> _pllrLayers])
