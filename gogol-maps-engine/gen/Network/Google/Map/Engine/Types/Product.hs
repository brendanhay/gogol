{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Map.Engine.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Map.Engine.Types.Product where

import           Network.Google.Map.Engine.Types.Sum
import           Network.Google.Prelude

-- | Acquisition time represents acquired time of a raster.
--
-- /See:/ 'acquisitionTime' smart constructor.
data AcquisitionTime = AcquisitionTime
    { _atStart     :: !(Maybe UTCTime)
    , _atPrecision :: !(Maybe AcquisitionTimePrecision)
    , _atEnd       :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
atStart = lens _atStart (\ s a -> s{_atStart = a})

-- | The precision of acquisition time.
atPrecision :: Lens' AcquisitionTime (Maybe AcquisitionTimePrecision)
atPrecision
  = lens _atPrecision (\ s a -> s{_atPrecision = a})

-- | The end time if acquisition time is a range. The value is an RFC 3339
-- formatted date-time value (1970-01-01T00:00:00Z).
atEnd :: Lens' AcquisitionTime (Maybe UTCTime)
atEnd = lens _atEnd (\ s a -> s{_atEnd = a})

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

-- | An asset is any Google Maps Engine resource that has a globally unique
-- ID. Assets include maps, layers, vector tables, raster collections, and
-- rasters. Projects and features are not considered assets. More detailed
-- information about an asset can be obtained by querying the asset\'s
-- particular endpoint.
--
-- /See:/ 'asset' smart constructor.
data Asset = Asset
    { _aCreationTime              :: !(Maybe UTCTime)
    , _aWritersCanEditPermissions :: !(Maybe Bool)
    , _aEtag                      :: !(Maybe Text)
    , _aCreatorEmail              :: !(Maybe Text)
    , _aLastModifiedTime          :: !(Maybe UTCTime)
    , _aLastModifierEmail         :: !(Maybe Text)
    , _aName                      :: !(Maybe Text)
    , _aBbox                      :: !(Maybe [Double])
    , _aResource                  :: !(Maybe Text)
    , _aId                        :: !(Maybe Text)
    , _aProjectId                 :: !(Maybe Text)
    , _aType                      :: !(Maybe AssetType)
    , _aDescription               :: !(Maybe Text)
    , _aTags                      :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to resources.List.
--
-- /See:/ 'assetsListResponse' smart constructor.
data AssetsListResponse = AssetsListResponse
    { _alrNextPageToken :: !(Maybe Word8)
    , _alrAssets        :: !(Maybe [Maybe Asset])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
alrAssets :: Lens' AssetsListResponse [Maybe Asset]
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

-- | Border in line style. Both color and width are required.
--
-- /See:/ 'border' smart constructor.
data Border = Border
    { _bColor   :: !(Maybe Text)
    , _bWidth   :: !(Maybe Double)
    , _bOpacity :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Border' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bColor'
--
-- * 'bWidth'
--
-- * 'bOpacity'
border
    :: Border
border =
    Border
    { _bColor = Nothing
    , _bWidth = Nothing
    , _bOpacity = Nothing
    }

-- | Color of the border.
bColor :: Lens' Border (Maybe Text)
bColor = lens _bColor (\ s a -> s{_bColor = a})

-- | Width of the border, in pixels.
bWidth :: Lens' Border (Maybe Double)
bWidth = lens _bWidth (\ s a -> s{_bWidth = a})

-- | Opacity of the border.
bOpacity :: Lens' Border (Maybe Double)
bOpacity = lens _bOpacity (\ s a -> s{_bOpacity = a})

instance FromJSON Border where
        parseJSON
          = withObject "Border"
              (\ o ->
                 Border <$>
                   (o .:? "color") <*> (o .:? "width") <*>
                     (o .:? "opacity"))

instance ToJSON Border where
        toJSON Border{..}
          = object
              (catMaybes
                 [("color" .=) <$> _bColor, ("width" .=) <$> _bWidth,
                  ("opacity" .=) <$> _bOpacity])

-- | Basic color used in styling.
--
-- /See:/ 'color' smart constructor.
data Color = Color
    { _cColor   :: !(Maybe Text)
    , _cOpacity :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'datasource' smart constructor.
newtype Datasource = Datasource
    { _dId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A display rule of the vector style.
--
-- /See:/ 'displayRule' smart constructor.
data DisplayRule = DisplayRule
    { _drPointOptions   :: !(Maybe (Maybe PointStyle))
    , _drPolygonOptions :: !(Maybe (Maybe PolygonStyle))
    , _drZoomLevels     :: !(Maybe (Maybe ZoomLevels))
    , _drFilters        :: !(Maybe [Maybe Filter])
    , _drName           :: !(Maybe Text)
    , _drLineOptions    :: !(Maybe (Maybe LineStyle))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
drPointOptions :: Lens' DisplayRule (Maybe (Maybe PointStyle))
drPointOptions
  = lens _drPointOptions
      (\ s a -> s{_drPointOptions = a})

-- | Style applied to polygons. Required for Polygon Geometry.
drPolygonOptions :: Lens' DisplayRule (Maybe (Maybe PolygonStyle))
drPolygonOptions
  = lens _drPolygonOptions
      (\ s a -> s{_drPolygonOptions = a})

-- | The zoom levels that this display rule apply.
drZoomLevels :: Lens' DisplayRule (Maybe (Maybe ZoomLevels))
drZoomLevels
  = lens _drZoomLevels (\ s a -> s{_drZoomLevels = a})

-- | This display rule will only be applied to features that match all of the
-- filters here. If filters is empty, then the rule applies to all
-- features.
drFilters :: Lens' DisplayRule [Maybe Filter]
drFilters
  = lens _drFilters (\ s a -> s{_drFilters = a}) .
      _Default
      . _Coerce

-- | Display rule name. Name is not unique and cannot be used for
-- identification purpose.
drName :: Lens' DisplayRule (Maybe Text)
drName = lens _drName (\ s a -> s{_drName = a})

-- | Style applied to lines. Required for LineString Geometry.
drLineOptions :: Lens' DisplayRule (Maybe (Maybe LineStyle))
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

-- | A feature within a table.
--
-- /See:/ 'feature' smart constructor.
data Feature = Feature
    { _fGeometry   :: !(Maybe (Maybe GeoJsonGeometry))
    , _fType       :: !Text
    , _fProperties :: !(Maybe (Maybe GeoJsonProperties))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
fGeometry :: Lens' Feature (Maybe (Maybe GeoJsonGeometry))
fGeometry
  = lens _fGeometry (\ s a -> s{_fGeometry = a})

-- | Identifies this object as a feature.
fType :: Lens' Feature Text
fType = lens _fType (\ s a -> s{_fType = a})

-- | Key\/value pairs of this Feature.
fProperties :: Lens' Feature (Maybe (Maybe GeoJsonProperties))
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

-- | A feature info contains information about individual feature.
--
-- /See:/ 'featureInfo' smart constructor.
newtype FeatureInfo = FeatureInfo
    { _fiContent :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The request sent to features.BatchDelete.
--
-- /See:/ 'featuresBatchDeleteRequest' smart constructor.
data FeaturesBatchDeleteRequest = FeaturesBatchDeleteRequest
    { _fbdrPrimaryKeys :: !(Maybe [Text])
    , _fbdrGxIds       :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The request sent to features.Insert.
--
-- /See:/ 'featuresBatchInsertRequest' smart constructor.
data FeaturesBatchInsertRequest = FeaturesBatchInsertRequest
    { _fbirFeatures            :: !(Maybe [Maybe Feature])
    , _fbirNormalizeGeometries :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

fbirFeatures :: Lens' FeaturesBatchInsertRequest [Maybe Feature]
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

-- | The request sent to features.BatchPatch.
--
-- /See:/ 'featuresBatchPatchRequest' smart constructor.
data FeaturesBatchPatchRequest = FeaturesBatchPatchRequest
    { _fbprFeatures            :: !(Maybe [Maybe Feature])
    , _fbprNormalizeGeometries :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

fbprFeatures :: Lens' FeaturesBatchPatchRequest [Maybe Feature]
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

-- | The response returned by a call to features.List.
--
-- /See:/ 'featuresListResponse' smart constructor.
data FeaturesListResponse = FeaturesListResponse
    { _flrNextPageToken           :: !(Maybe Text)
    , _flrAllowedQueriesPerSecond :: !(Maybe Double)
    , _flrSchema                  :: !(Maybe (Maybe Schema))
    , _flrFeatures                :: !(Maybe [Maybe Feature])
    , _flrType                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
flrSchema :: Lens' FeaturesListResponse (Maybe (Maybe Schema))
flrSchema
  = lens _flrSchema (\ s a -> s{_flrSchema = a})

-- | Resources returned.
flrFeatures :: Lens' FeaturesListResponse [Maybe Feature]
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

-- | A single File, which is a component of an Asset.
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fSize         :: !(Maybe Int64)
    , _fUploadStatus :: !(Maybe FileUploadStatus)
    , _fFilename     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Conditions for filtering features.
--
-- /See:/ 'filter'' smart constructor.
data Filter = Filter
    { _fOperator :: !(Maybe FilterOperator)
    , _fValue    :: !(Maybe (Either Text Int64))
    , _fColumn   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
fValue :: Lens' Filter (Maybe (Either Text Int64))
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
-- /See:/ 'geoJsonGeometry' smart constructor.
data GeoJsonGeometry =
    GeoJsonGeometry
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonGeometry' with the minimum fields required to make a request.
--
geoJsonGeometry
    :: GeoJsonGeometry
geoJsonGeometry = GeoJsonGeometry

instance FromJSON GeoJsonGeometry where
        parseJSON
          = withObject "GeoJsonGeometry"
              (\ o -> pure GeoJsonGeometry)

instance ToJSON GeoJsonGeometry where
        toJSON = const (Object mempty)

-- | A heterogenous collection of GeoJsonGeometry objects.
--
-- /See:/ 'geoJsonGeometryCollection' smart constructor.
data GeoJsonGeometryCollection = GeoJsonGeometryCollection
    { _gjgcGeometries :: !(Maybe [Maybe GeoJsonGeometry])
    , _gjgcType       :: !(Maybe GeoJsonGeometryCollectionType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonGeometryCollection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjgcGeometries'
--
-- * 'gjgcType'
geoJsonGeometryCollection
    :: GeoJsonGeometryCollection
geoJsonGeometryCollection =
    GeoJsonGeometryCollection
    { _gjgcGeometries = Nothing
    , _gjgcType = Nothing
    }

-- | An array of geometry objects. There must be at least 2 different types
-- of geometries in the array.
gjgcGeometries :: Lens' GeoJsonGeometryCollection [Maybe GeoJsonGeometry]
gjgcGeometries
  = lens _gjgcGeometries
      (\ s a -> s{_gjgcGeometries = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonGeometryCollection.
gjgcType :: Lens' GeoJsonGeometryCollection (Maybe GeoJsonGeometryCollectionType)
gjgcType = lens _gjgcType (\ s a -> s{_gjgcType = a})

instance FromJSON GeoJsonGeometryCollection where
        parseJSON
          = withObject "GeoJsonGeometryCollection"
              (\ o ->
                 GeoJsonGeometryCollection <$>
                   (o .:? "geometries" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonGeometryCollection where
        toJSON GeoJsonGeometryCollection{..}
          = object
              (catMaybes
                 [("geometries" .=) <$> _gjgcGeometries,
                  ("type" .=) <$> _gjgcType])

--
-- /See:/ 'geoJsonLineString' smart constructor.
data GeoJsonLineString = GeoJsonLineString
    { _gjlsCoordinates :: !(Maybe [Maybe [Double]])
    , _gjlsType        :: !(Maybe GeoJsonLineStringType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonLineString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjlsCoordinates'
--
-- * 'gjlsType'
geoJsonLineString
    :: GeoJsonLineString
geoJsonLineString =
    GeoJsonLineString
    { _gjlsCoordinates = Nothing
    , _gjlsType = Nothing
    }

-- | An array of two or more positions, representing a line.
gjlsCoordinates :: Lens' GeoJsonLineString [Maybe [Double]]
gjlsCoordinates
  = lens _gjlsCoordinates
      (\ s a -> s{_gjlsCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonLineString.
gjlsType :: Lens' GeoJsonLineString (Maybe GeoJsonLineStringType)
gjlsType = lens _gjlsType (\ s a -> s{_gjlsType = a})

instance FromJSON GeoJsonLineString where
        parseJSON
          = withObject "GeoJsonLineString"
              (\ o ->
                 GeoJsonLineString <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonLineString where
        toJSON GeoJsonLineString{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjlsCoordinates,
                  ("type" .=) <$> _gjlsType])

-- | Multi Line String
--
-- /See:/ 'geoJsonMultiLineString' smart constructor.
data GeoJsonMultiLineString = GeoJsonMultiLineString
    { _gjmlsCoordinates :: !(Maybe [[Maybe [Double]]])
    , _gjmlsType        :: !(Maybe GeoJsonMultiLineStringType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonMultiLineString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjmlsCoordinates'
--
-- * 'gjmlsType'
geoJsonMultiLineString
    :: GeoJsonMultiLineString
geoJsonMultiLineString =
    GeoJsonMultiLineString
    { _gjmlsCoordinates = Nothing
    , _gjmlsType = Nothing
    }

-- | An array of at least two GeoJsonLineString coordinate arrays.
gjmlsCoordinates :: Lens' GeoJsonMultiLineString [[Maybe [Double]]]
gjmlsCoordinates
  = lens _gjmlsCoordinates
      (\ s a -> s{_gjmlsCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiLineString.
gjmlsType :: Lens' GeoJsonMultiLineString (Maybe GeoJsonMultiLineStringType)
gjmlsType
  = lens _gjmlsType (\ s a -> s{_gjmlsType = a})

instance FromJSON GeoJsonMultiLineString where
        parseJSON
          = withObject "GeoJsonMultiLineString"
              (\ o ->
                 GeoJsonMultiLineString <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonMultiLineString where
        toJSON GeoJsonMultiLineString{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjmlsCoordinates,
                  ("type" .=) <$> _gjmlsType])

--
-- /See:/ 'geoJsonMultiPoint' smart constructor.
data GeoJsonMultiPoint = GeoJsonMultiPoint
    { _gjsonmpCoordinates :: !(Maybe [Maybe [Double]])
    , _gjsonmpType        :: !(Maybe GeoJsonMultiPointType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonMultiPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjsonmpCoordinates'
--
-- * 'gjsonmpType'
geoJsonMultiPoint
    :: GeoJsonMultiPoint
geoJsonMultiPoint =
    GeoJsonMultiPoint
    { _gjsonmpCoordinates = Nothing
    , _gjsonmpType = Nothing
    }

-- | An array of at least two GeoJsonPoint coordinate arrays.
gjsonmpCoordinates :: Lens' GeoJsonMultiPoint [Maybe [Double]]
gjsonmpCoordinates
  = lens _gjsonmpCoordinates
      (\ s a -> s{_gjsonmpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiPoint.
gjsonmpType :: Lens' GeoJsonMultiPoint (Maybe GeoJsonMultiPointType)
gjsonmpType
  = lens _gjsonmpType (\ s a -> s{_gjsonmpType = a})

instance FromJSON GeoJsonMultiPoint where
        parseJSON
          = withObject "GeoJsonMultiPoint"
              (\ o ->
                 GeoJsonMultiPoint <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonMultiPoint where
        toJSON GeoJsonMultiPoint{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjsonmpCoordinates,
                  ("type" .=) <$> _gjsonmpType])

--
-- /See:/ 'geoJsonMultiPolygon' smart constructor.
data GeoJsonMultiPolygon = GeoJsonMultiPolygon
    { _gjmpCoordinates :: !(Maybe [[[Maybe [Double]]]])
    , _gjmpType        :: !(Maybe GeoJsonMultiPolygonType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonMultiPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjmpCoordinates'
--
-- * 'gjmpType'
geoJsonMultiPolygon
    :: GeoJsonMultiPolygon
geoJsonMultiPolygon =
    GeoJsonMultiPolygon
    { _gjmpCoordinates = Nothing
    , _gjmpType = Nothing
    }

-- | An array of at least two GeoJsonPolygon coordinate arrays.
gjmpCoordinates :: Lens' GeoJsonMultiPolygon [[[Maybe [Double]]]]
gjmpCoordinates
  = lens _gjmpCoordinates
      (\ s a -> s{_gjmpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonMultiPolygon.
gjmpType :: Lens' GeoJsonMultiPolygon (Maybe GeoJsonMultiPolygonType)
gjmpType = lens _gjmpType (\ s a -> s{_gjmpType = a})

instance FromJSON GeoJsonMultiPolygon where
        parseJSON
          = withObject "GeoJsonMultiPolygon"
              (\ o ->
                 GeoJsonMultiPolygon <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonMultiPolygon where
        toJSON GeoJsonMultiPolygon{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjmpCoordinates,
                  ("type" .=) <$> _gjmpType])

--
-- /See:/ 'geoJsonPoint' smart constructor.
data GeoJsonPoint = GeoJsonPoint
    { _gjpCoordinates :: !(Maybe (Maybe [Double]))
    , _gjpType        :: !(Maybe GeoJsonPointType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjpCoordinates'
--
-- * 'gjpType'
geoJsonPoint
    :: GeoJsonPoint
geoJsonPoint =
    GeoJsonPoint
    { _gjpCoordinates = Nothing
    , _gjpType = Nothing
    }

-- | A single GeoJsonPosition, specifying the location of the point.
gjpCoordinates :: Lens' GeoJsonPoint (Maybe (Maybe [Double]))
gjpCoordinates
  = lens _gjpCoordinates
      (\ s a -> s{_gjpCoordinates = a})
      . mapping (_Default . _Coerce)

-- | Identifies this object as a GeoJsonPoint.
gjpType :: Lens' GeoJsonPoint (Maybe GeoJsonPointType)
gjpType = lens _gjpType (\ s a -> s{_gjpType = a})

instance FromJSON GeoJsonPoint where
        parseJSON
          = withObject "GeoJsonPoint"
              (\ o ->
                 GeoJsonPoint <$>
                   (o .:? "coordinates") <*> (o .:? "type"))

instance ToJSON GeoJsonPoint where
        toJSON GeoJsonPoint{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjpCoordinates,
                  ("type" .=) <$> _gjpType])

--
-- /See:/ 'geoJsonPolygon' smart constructor.
data GeoJsonPolygon = GeoJsonPolygon
    { _gjsonpCoordinates :: !(Maybe [[Maybe [Double]]])
    , _gjsonpType        :: !(Maybe GeoJsonPolygonType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonPolygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjsonpCoordinates'
--
-- * 'gjsonpType'
geoJsonPolygon
    :: GeoJsonPolygon
geoJsonPolygon =
    GeoJsonPolygon
    { _gjsonpCoordinates = Nothing
    , _gjsonpType = Nothing
    }

-- | An array of LinearRings. A LinearRing is a GeoJsonLineString which is
-- closed (that is, the first and last GeoJsonPositions are equal), and
-- which contains at least four GeoJsonPositions. For polygons with
-- multiple rings, the first LinearRing is the exterior ring, and any
-- subsequent rings are interior rings (that is, holes).
gjsonpCoordinates :: Lens' GeoJsonPolygon [[Maybe [Double]]]
gjsonpCoordinates
  = lens _gjsonpCoordinates
      (\ s a -> s{_gjsonpCoordinates = a})
      . _Default
      . _Coerce

-- | Identifies this object as a GeoJsonPolygon.
gjsonpType :: Lens' GeoJsonPolygon (Maybe GeoJsonPolygonType)
gjsonpType
  = lens _gjsonpType (\ s a -> s{_gjsonpType = a})

instance FromJSON GeoJsonPolygon where
        parseJSON
          = withObject "GeoJsonPolygon"
              (\ o ->
                 GeoJsonPolygon <$>
                   (o .:? "coordinates" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoJsonPolygon where
        toJSON GeoJsonPolygon{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _gjsonpCoordinates,
                  ("type" .=) <$> _gjsonpType])

-- | The properties associated with a feature.
--
-- /See:/ 'geoJsonProperties' smart constructor.
data GeoJsonProperties =
    GeoJsonProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoJsonProperties' with the minimum fields required to make a request.
--
geoJsonProperties
    :: GeoJsonProperties
geoJsonProperties = GeoJsonProperties

instance FromJSON GeoJsonProperties where
        parseJSON
          = withObject "GeoJsonProperties"
              (\ o -> pure GeoJsonProperties)

instance ToJSON GeoJsonProperties where
        toJSON = const (Object mempty)

-- | An icon is a user-uploaded image that can be used to style point
-- geometries.
--
-- /See:/ 'icon' smart constructor.
data Icon = Icon
    { _iName        :: !(Maybe Text)
    , _iId          :: !(Maybe Text)
    , _iDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Style for icon, this is part of point style.
--
-- /See:/ 'iconStyle' smart constructor.
data IconStyle = IconStyle
    { _isScaledShape     :: !(Maybe (Maybe ScaledShape))
    , _isScalingFunction :: !(Maybe (Maybe ScalingFunction))
    , _isName            :: !(Maybe Text)
    , _isId              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
isScaledShape :: Lens' IconStyle (Maybe (Maybe ScaledShape))
isScaledShape
  = lens _isScaledShape
      (\ s a -> s{_isScaledShape = a})

-- | The function used to scale shapes. Required when a scaledShape is
-- specified.
isScalingFunction :: Lens' IconStyle (Maybe (Maybe ScalingFunction))
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

-- | The response returned by a call to icons.List.
--
-- /See:/ 'iconsListResponse' smart constructor.
data IconsListResponse = IconsListResponse
    { _ilrNextPageToken :: !(Maybe Text)
    , _ilrIcons         :: !(Maybe [Maybe Icon])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ilrIcons :: Lens' IconsListResponse [Maybe Icon]
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
    , _lsOutline    :: !(Maybe (Maybe Color))
    , _lsFontWeight :: !(Maybe LabelStyleFontWeight)
    , _lsColumn     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lsOutline :: Lens' LabelStyle (Maybe (Maybe Color))
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

-- | A Layer combines multiple datasources, with styling information, for
-- presentation on a map.
--
-- /See:/ 'layer' smart constructor.
data Layer = Layer
    { _lCreationTime              :: !(Maybe UTCTime)
    , _lWritersCanEditPermissions :: !(Maybe Bool)
    , _lStyle                     :: !(Maybe (Maybe VectorStyle))
    , _lEtag                      :: !(Maybe Text)
    , _lDatasourceType            :: !(Maybe LayerDatasourceType)
    , _lPublishingStatus          :: !(Maybe LayerPublishingStatus)
    , _lCreatorEmail              :: !(Maybe Text)
    , _lLayerType                 :: !(Maybe LayerLayerType)
    , _lLastModifiedTime          :: !(Maybe UTCTime)
    , _lDatasources               :: !(Maybe (Maybe [Maybe Datasource]))
    , _lLastModifierEmail         :: !(Maybe Text)
    , _lName                      :: !(Maybe Text)
    , _lBbox                      :: !(Maybe [Double])
    , _lProcessingStatus          :: !(Maybe LayerProcessingStatus)
    , _lId                        :: !(Maybe Text)
    , _lProjectId                 :: !(Maybe Text)
    , _lDraftAccessList           :: !(Maybe Text)
    , _lPublishedAccessList       :: !(Maybe Text)
    , _lDescription               :: !(Maybe Text)
    , _lTags                      :: !(Maybe (Maybe [Text]))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lCreationTime'
--
-- * 'lWritersCanEditPermissions'
--
-- * 'lStyle'
--
-- * 'lEtag'
--
-- * 'lDatasourceType'
--
-- * 'lPublishingStatus'
--
-- * 'lCreatorEmail'
--
-- * 'lLayerType'
--
-- * 'lLastModifiedTime'
--
-- * 'lDatasources'
--
-- * 'lLastModifierEmail'
--
-- * 'lName'
--
-- * 'lBbox'
--
-- * 'lProcessingStatus'
--
-- * 'lId'
--
-- * 'lProjectId'
--
-- * 'lDraftAccessList'
--
-- * 'lPublishedAccessList'
--
-- * 'lDescription'
--
-- * 'lTags'
layer
    :: Layer
layer =
    Layer
    { _lCreationTime = Nothing
    , _lWritersCanEditPermissions = Nothing
    , _lStyle = Nothing
    , _lEtag = Nothing
    , _lDatasourceType = Nothing
    , _lPublishingStatus = Nothing
    , _lCreatorEmail = Nothing
    , _lLayerType = Nothing
    , _lLastModifiedTime = Nothing
    , _lDatasources = Nothing
    , _lLastModifierEmail = Nothing
    , _lName = Nothing
    , _lBbox = Nothing
    , _lProcessingStatus = Nothing
    , _lId = Nothing
    , _lProjectId = Nothing
    , _lDraftAccessList = Nothing
    , _lPublishedAccessList = Nothing
    , _lDescription = Nothing
    , _lTags = Nothing
    }

-- | The creation time of this layer. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
lCreationTime :: Lens' Layer (Maybe UTCTime)
lCreationTime
  = lens _lCreationTime
      (\ s a -> s{_lCreationTime = a})

-- | If true, WRITERs of the asset are able to edit the asset permissions.
lWritersCanEditPermissions :: Lens' Layer (Maybe Bool)
lWritersCanEditPermissions
  = lens _lWritersCanEditPermissions
      (\ s a -> s{_lWritersCanEditPermissions = a})

-- | The styling information for a vector layer. Note: Style information is
-- returned in response to a get request but not a list request. After
-- requesting a list of layers, you\'ll need to send a get request to
-- retrieve the VectorStyles for each layer.
lStyle :: Lens' Layer (Maybe (Maybe VectorStyle))
lStyle = lens _lStyle (\ s a -> s{_lStyle = a})

-- | The ETag, used to refer to the current version of the asset.
lEtag :: Lens' Layer (Maybe Text)
lEtag = lens _lEtag (\ s a -> s{_lEtag = a})

-- | Deprecated: The type of the datasources used to build this Layer. Note:
-- This has been replaced by layerType, but is still available for now to
-- maintain backward compatibility.
lDatasourceType :: Lens' Layer (Maybe LayerDatasourceType)
lDatasourceType
  = lens _lDatasourceType
      (\ s a -> s{_lDatasourceType = a})

-- | The publishing status of this layer.
lPublishingStatus :: Lens' Layer (Maybe LayerPublishingStatus)
lPublishingStatus
  = lens _lPublishingStatus
      (\ s a -> s{_lPublishingStatus = a})

-- | The email address of the creator of this layer. This is only returned on
-- GET requests and not LIST requests.
lCreatorEmail :: Lens' Layer (Maybe Text)
lCreatorEmail
  = lens _lCreatorEmail
      (\ s a -> s{_lCreatorEmail = a})

-- | The type of the datasources used to build this Layer. This should be
-- used instead of datasourceType. At least one of layerType and
-- datasourceType and must be specified, but layerType takes precedence.
lLayerType :: Lens' Layer (Maybe LayerLayerType)
lLayerType
  = lens _lLayerType (\ s a -> s{_lLayerType = a})

-- | The last modified time of this layer. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
lLastModifiedTime :: Lens' Layer (Maybe UTCTime)
lLastModifiedTime
  = lens _lLastModifiedTime
      (\ s a -> s{_lLastModifiedTime = a})

-- | An array of datasources used to build this layer. If layerType is
-- \"image\", or layerType is not specified and datasourceType is
-- \"image\", then each element in this array is a reference to an Image or
-- RasterCollection. If layerType is \"vector\", or layerType is not
-- specified and datasourceType is \"table\" then each element in this
-- array is a reference to a Vector Table.
lDatasources :: Lens' Layer (Maybe (Maybe [Maybe Datasource]))
lDatasources
  = lens _lDatasources (\ s a -> s{_lDatasources = a})
      . mapping (_Default . _Coerce)

-- | The email address of the last modifier of this layer. This is only
-- returned on GET requests and not LIST requests.
lLastModifierEmail :: Lens' Layer (Maybe Text)
lLastModifierEmail
  = lens _lLastModifierEmail
      (\ s a -> s{_lLastModifierEmail = a})

-- | The name of this Layer, supplied by the author.
lName :: Lens' Layer (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | A rectangular bounding box which contains all of the data in this Layer.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
lBbox :: Lens' Layer [Double]
lBbox
  = lens _lBbox (\ s a -> s{_lBbox = a}) . _Default .
      _Coerce

-- | The processing status of this layer.
lProcessingStatus :: Lens' Layer (Maybe LayerProcessingStatus)
lProcessingStatus
  = lens _lProcessingStatus
      (\ s a -> s{_lProcessingStatus = a})

-- | A globally unique ID, used to refer to this Layer.
lId :: Lens' Layer (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | The ID of the project that this Layer is in.
lProjectId :: Lens' Layer (Maybe Text)
lProjectId
  = lens _lProjectId (\ s a -> s{_lProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
lDraftAccessList :: Lens' Layer (Maybe Text)
lDraftAccessList
  = lens _lDraftAccessList
      (\ s a -> s{_lDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. Note: This is an input field
-- only. It is not returned in response to a list or get request.
lPublishedAccessList :: Lens' Layer (Maybe Text)
lPublishedAccessList
  = lens _lPublishedAccessList
      (\ s a -> s{_lPublishedAccessList = a})

-- | The description of this Layer, supplied by the author.
lDescription :: Lens' Layer (Maybe Text)
lDescription
  = lens _lDescription (\ s a -> s{_lDescription = a})

-- | Tags of this Layer.
lTags :: Lens' Layer (Maybe (Maybe [Text]))
lTags
  = lens _lTags (\ s a -> s{_lTags = a}) .
      mapping (_Default . _Coerce)

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
                 [("creationTime" .=) <$> _lCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _lWritersCanEditPermissions,
                  ("style" .=) <$> _lStyle, ("etag" .=) <$> _lEtag,
                  ("datasourceType" .=) <$> _lDatasourceType,
                  ("publishingStatus" .=) <$> _lPublishingStatus,
                  ("creatorEmail" .=) <$> _lCreatorEmail,
                  ("layerType" .=) <$> _lLayerType,
                  ("lastModifiedTime" .=) <$> _lLastModifiedTime,
                  ("datasources" .=) <$> _lDatasources,
                  ("lastModifierEmail" .=) <$> _lLastModifierEmail,
                  ("name" .=) <$> _lName, ("bbox" .=) <$> _lBbox,
                  ("processingStatus" .=) <$> _lProcessingStatus,
                  ("id" .=) <$> _lId, ("projectId" .=) <$> _lProjectId,
                  ("draftAccessList" .=) <$> _lDraftAccessList,
                  ("publishedAccessList" .=) <$> _lPublishedAccessList,
                  ("description" .=) <$> _lDescription,
                  ("tags" .=) <$> _lTags])

-- | The response returned by a call to layers.List. Note: The list response
-- does not include all the fields available in a layer. Refer to the layer
-- resource description for details of the fields that are not included.
-- You\'ll need to send a get request to retrieve the additional fields for
-- each layer.
--
-- /See:/ 'layersListResponse' smart constructor.
data LayersListResponse = LayersListResponse
    { _llrNextPageToken :: !(Maybe Word8)
    , _llrLayers        :: !(Maybe [Maybe Layer])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
llrLayers :: Lens' LayersListResponse [Maybe Layer]
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

-- | Style for lines.
--
-- /See:/ 'lineStyle' smart constructor.
data LineStyle = LineStyle
    { _lsStroke :: !(Maybe LineStyleStroke)
    , _lsBorder :: !(Maybe (Maybe Border))
    , _lsDash   :: !(Maybe [Double])
    , _lsLabel  :: !(Maybe (Maybe LabelStyle))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStroke'
--
-- * 'lsBorder'
--
-- * 'lsDash'
--
-- * 'lsLabel'
lineStyle
    :: LineStyle
lineStyle =
    LineStyle
    { _lsStroke = Nothing
    , _lsBorder = Nothing
    , _lsDash = Nothing
    , _lsLabel = Nothing
    }

-- | Stroke of the line.
lsStroke :: Lens' LineStyle (Maybe LineStyleStroke)
lsStroke = lens _lsStroke (\ s a -> s{_lsStroke = a})

-- | Border of the line. 0 \< border.width \<= 5.
lsBorder :: Lens' LineStyle (Maybe (Maybe Border))
lsBorder = lens _lsBorder (\ s a -> s{_lsBorder = a})

-- | Dash defines the pattern of the line, the values are pixel lengths of
-- alternating dash and gap. If dash is not provided, then it means a solid
-- line. Dash can contain up to 10 values and must contain even number of
-- values.
lsDash :: Lens' LineStyle [Double]
lsDash
  = lens _lsDash (\ s a -> s{_lsDash = a}) . _Default .
      _Coerce

-- | Label style for the line.
lsLabel :: Lens' LineStyle (Maybe (Maybe LabelStyle))
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
                  ("border" .=) <$> _lsBorder, ("dash" .=) <$> _lsDash,
                  ("label" .=) <$> _lsLabel])

-- | Stroke of the line.
--
-- /See:/ 'lineStyleStroke' smart constructor.
data LineStyleStroke = LineStyleStroke
    { _lssColor   :: !(Maybe Text)
    , _lssWidth   :: !(Maybe Double)
    , _lssOpacity :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A Map is a collection of Layers, optionally contained within folders.
--
-- /See:/ 'map'' smart constructor.
data Map = Map
    { _mapCreationTime              :: !(Maybe UTCTime)
    , _mapWritersCanEditPermissions :: !(Maybe Bool)
    , _mapEtag                      :: !(Maybe Text)
    , _mapDefaultViewport           :: !(Maybe (Maybe [Double]))
    , _mapContents                  :: !(Maybe (Maybe [Maybe MapItem]))
    , _mapPublishingStatus          :: !(Maybe MapPublishingStatus)
    , _mapCreatorEmail              :: !(Maybe Text)
    , _mapLastModifiedTime          :: !(Maybe UTCTime)
    , _mapLastModifierEmail         :: !(Maybe Text)
    , _mapVersions                  :: !(Maybe [Text])
    , _mapName                      :: !(Maybe Text)
    , _mapBbox                      :: !(Maybe [Double])
    , _mapProcessingStatus          :: !(Maybe MapProcessingStatus)
    , _mapId                        :: !(Maybe Text)
    , _mapProjectId                 :: !(Maybe Text)
    , _mapDraftAccessList           :: !(Maybe Text)
    , _mapPublishedAccessList       :: !(Maybe Text)
    , _mapDescription               :: !(Maybe Text)
    , _mapTags                      :: !(Maybe (Maybe [Text]))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Map' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mapCreationTime'
--
-- * 'mapWritersCanEditPermissions'
--
-- * 'mapEtag'
--
-- * 'mapDefaultViewport'
--
-- * 'mapContents'
--
-- * 'mapPublishingStatus'
--
-- * 'mapCreatorEmail'
--
-- * 'mapLastModifiedTime'
--
-- * 'mapLastModifierEmail'
--
-- * 'mapVersions'
--
-- * 'mapName'
--
-- * 'mapBbox'
--
-- * 'mapProcessingStatus'
--
-- * 'mapId'
--
-- * 'mapProjectId'
--
-- * 'mapDraftAccessList'
--
-- * 'mapPublishedAccessList'
--
-- * 'mapDescription'
--
-- * 'mapTags'
map'
    :: Map
map' =
    Map
    { _mapCreationTime = Nothing
    , _mapWritersCanEditPermissions = Nothing
    , _mapEtag = Nothing
    , _mapDefaultViewport = Nothing
    , _mapContents = Nothing
    , _mapPublishingStatus = Nothing
    , _mapCreatorEmail = Nothing
    , _mapLastModifiedTime = Nothing
    , _mapLastModifierEmail = Nothing
    , _mapVersions = Nothing
    , _mapName = Nothing
    , _mapBbox = Nothing
    , _mapProcessingStatus = Nothing
    , _mapId = Nothing
    , _mapProjectId = Nothing
    , _mapDraftAccessList = Nothing
    , _mapPublishedAccessList = Nothing
    , _mapDescription = Nothing
    , _mapTags = Nothing
    }

-- | The creation time of this map. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
mapCreationTime :: Lens' Map (Maybe UTCTime)
mapCreationTime
  = lens _mapCreationTime
      (\ s a -> s{_mapCreationTime = a})

-- | If true, WRITERs of the asset are able to edit the asset permissions.
mapWritersCanEditPermissions :: Lens' Map (Maybe Bool)
mapWritersCanEditPermissions
  = lens _mapWritersCanEditPermissions
      (\ s a -> s{_mapWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
mapEtag :: Lens' Map (Maybe Text)
mapEtag = lens _mapEtag (\ s a -> s{_mapEtag = a})

-- | An array of four numbers (west, south, east, north) which defines the
-- rectangular bounding box of the default viewport. The numbers represent
-- latitude and longitude in decimal degrees.
mapDefaultViewport :: Lens' Map (Maybe (Maybe [Double]))
mapDefaultViewport
  = lens _mapDefaultViewport
      (\ s a -> s{_mapDefaultViewport = a})
      . mapping (_Default . _Coerce)

-- | The contents of this Map.
mapContents :: Lens' Map (Maybe (Maybe [Maybe MapItem]))
mapContents
  = lens _mapContents (\ s a -> s{_mapContents = a}) .
      mapping (_Default . _Coerce)

-- | The publishing status of this map.
mapPublishingStatus :: Lens' Map (Maybe MapPublishingStatus)
mapPublishingStatus
  = lens _mapPublishingStatus
      (\ s a -> s{_mapPublishingStatus = a})

-- | The email address of the creator of this map. This is only returned on
-- GET requests and not LIST requests.
mapCreatorEmail :: Lens' Map (Maybe Text)
mapCreatorEmail
  = lens _mapCreatorEmail
      (\ s a -> s{_mapCreatorEmail = a})

-- | The last modified time of this map. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
mapLastModifiedTime :: Lens' Map (Maybe UTCTime)
mapLastModifiedTime
  = lens _mapLastModifiedTime
      (\ s a -> s{_mapLastModifiedTime = a})

-- | The email address of the last modifier of this map. This is only
-- returned on GET requests and not LIST requests.
mapLastModifierEmail :: Lens' Map (Maybe Text)
mapLastModifierEmail
  = lens _mapLastModifierEmail
      (\ s a -> s{_mapLastModifierEmail = a})

-- | Deprecated: An array containing the available versions of this Map.
-- Currently may only contain \"published\". The publishingStatus field
-- should be used instead.
mapVersions :: Lens' Map [Text]
mapVersions
  = lens _mapVersions (\ s a -> s{_mapVersions = a}) .
      _Default
      . _Coerce

-- | The name of this Map, supplied by the author.
mapName :: Lens' Map (Maybe Text)
mapName = lens _mapName (\ s a -> s{_mapName = a})

-- | A rectangular bounding box which contains all of the data in this Map.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
mapBbox :: Lens' Map [Double]
mapBbox
  = lens _mapBbox (\ s a -> s{_mapBbox = a}) . _Default
      . _Coerce

-- | The processing status of this map. Map processing is automatically
-- started once a map becomes ready for processing.
mapProcessingStatus :: Lens' Map (Maybe MapProcessingStatus)
mapProcessingStatus
  = lens _mapProcessingStatus
      (\ s a -> s{_mapProcessingStatus = a})

-- | A globally unique ID, used to refer to this Map.
mapId :: Lens' Map (Maybe Text)
mapId = lens _mapId (\ s a -> s{_mapId = a})

-- | The ID of the project that this Map is in.
mapProjectId :: Lens' Map (Maybe Text)
mapProjectId
  = lens _mapProjectId (\ s a -> s{_mapProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
mapDraftAccessList :: Lens' Map (Maybe Text)
mapDraftAccessList
  = lens _mapDraftAccessList
      (\ s a -> s{_mapDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. This is an input field only. It
-- is not returned in response to a list or get request.
mapPublishedAccessList :: Lens' Map (Maybe Text)
mapPublishedAccessList
  = lens _mapPublishedAccessList
      (\ s a -> s{_mapPublishedAccessList = a})

-- | The description of this Map, supplied by the author.
mapDescription :: Lens' Map (Maybe Text)
mapDescription
  = lens _mapDescription
      (\ s a -> s{_mapDescription = a})

-- | Tags of this Map.
mapTags :: Lens' Map (Maybe (Maybe [Text]))
mapTags
  = lens _mapTags (\ s a -> s{_mapTags = a}) .
      mapping (_Default . _Coerce)

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
                 [("creationTime" .=) <$> _mapCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _mapWritersCanEditPermissions,
                  ("etag" .=) <$> _mapEtag,
                  ("defaultViewport" .=) <$> _mapDefaultViewport,
                  ("contents" .=) <$> _mapContents,
                  ("publishingStatus" .=) <$> _mapPublishingStatus,
                  ("creatorEmail" .=) <$> _mapCreatorEmail,
                  ("lastModifiedTime" .=) <$> _mapLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _mapLastModifierEmail,
                  ("versions" .=) <$> _mapVersions,
                  ("name" .=) <$> _mapName, ("bbox" .=) <$> _mapBbox,
                  ("processingStatus" .=) <$> _mapProcessingStatus,
                  ("id" .=) <$> _mapId,
                  ("projectId" .=) <$> _mapProjectId,
                  ("draftAccessList" .=) <$> _mapDraftAccessList,
                  ("publishedAccessList" .=) <$>
                    _mapPublishedAccessList,
                  ("description" .=) <$> _mapDescription,
                  ("tags" .=) <$> _mapTags])

--
-- /See:/ 'mapFolder' smart constructor.
data MapFolder = MapFolder
    { _mfExpandable      :: !(Maybe Bool)
    , _mfDefaultViewport :: !(Maybe [Double])
    , _mfContents        :: !(Maybe [Maybe MapItem])
    , _mfVisibility      :: !(Maybe Text)
    , _mfKey             :: !(Maybe Text)
    , _mfName            :: !(Maybe Text)
    , _mfType            :: !(Maybe MapFolderType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

mfContents :: Lens' MapFolder [Maybe MapItem]
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

--
-- /See:/ 'mapItem' smart constructor.
data MapItem =
    MapItem
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'mapKmlLink' smart constructor.
data MapKmlLink = MapKmlLink
    { _mklDefaultViewport :: !(Maybe [Double])
    , _mklVisibility      :: !(Maybe Text)
    , _mklName            :: !(Maybe Text)
    , _mklType            :: !(Maybe MapKmlLinkType)
    , _mklKmlUrl          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mklKmlUrl'
mapKmlLink
    :: MapKmlLink
mapKmlLink =
    MapKmlLink
    { _mklDefaultViewport = Nothing
    , _mklVisibility = Nothing
    , _mklName = Nothing
    , _mklType = Nothing
    , _mklKmlUrl = Nothing
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
mklKmlUrl :: Lens' MapKmlLink (Maybe Text)
mklKmlUrl
  = lens _mklKmlUrl (\ s a -> s{_mklKmlUrl = a})

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
                  ("kmlUrl" .=) <$> _mklKmlUrl])

--
-- /See:/ 'mapLayer' smart constructor.
data MapLayer = MapLayer
    { _mlDefaultViewport :: !(Maybe [Double])
    , _mlVisibility      :: !(Maybe Text)
    , _mlKey             :: !(Maybe Text)
    , _mlName            :: !(Maybe Text)
    , _mlId              :: !(Maybe Text)
    , _mlType            :: !(Maybe MapLayerType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to maps.List.
--
-- /See:/ 'mapsListResponse' smart constructor.
data MapsListResponse = MapsListResponse
    { _mlrMaps          :: !(Maybe [Maybe Map])
    , _mlrNextPageToken :: !(Maybe Word8)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
mlrMaps :: Lens' MapsListResponse [Maybe Map]
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

-- | A list of the parents of an asset.
--
-- /See:/ 'parent' smart constructor.
newtype Parent = Parent
    { _parId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Parent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parId'
parent
    :: Parent
parent =
    Parent
    { _parId = Nothing
    }

-- | The ID of this parent.
parId :: Lens' Parent (Maybe Text)
parId = lens _parId (\ s a -> s{_parId = a})

instance FromJSON Parent where
        parseJSON
          = withObject "Parent"
              (\ o -> Parent <$> (o .:? "id"))

instance ToJSON Parent where
        toJSON Parent{..}
          = object (catMaybes [("id" .=) <$> _parId])

-- | The response returned by a call to parents.List.
--
-- /See:/ 'parentsListResponse' smart constructor.
data ParentsListResponse = ParentsListResponse
    { _plrNextPageToken :: !(Maybe Text)
    , _plrParents       :: !(Maybe [Maybe Parent])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
plrParents :: Lens' ParentsListResponse [Maybe Parent]
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

-- | A permission defines the user or group that has access to an asset, and
-- the type of access they have.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _pRole         :: !(Maybe PermissionRole)
    , _pId           :: !(Maybe Text)
    , _pType         :: !(Maybe PermissionType)
    , _pDiscoverable :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pRole'
--
-- * 'pId'
--
-- * 'pType'
--
-- * 'pDiscoverable'
permission
    :: Permission
permission =
    Permission
    { _pRole = Nothing
    , _pId = Nothing
    , _pType = Nothing
    , _pDiscoverable = Nothing
    }

-- | The type of access granted to this user or group.
pRole :: Lens' Permission (Maybe PermissionRole)
pRole = lens _pRole (\ s a -> s{_pRole = a})

-- | The unique identifier of the permission. This could be the email address
-- of the user or group this permission refers to, or the string \"anyone\"
-- for public permissions.
pId :: Lens' Permission (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The account type.
pType :: Lens' Permission (Maybe PermissionType)
pType = lens _pType (\ s a -> s{_pType = a})

-- | Indicates whether a public asset is listed and can be found via a web
-- search (value true), or is visible only to people who have a link to the
-- asset (value false).
pDiscoverable :: Lens' Permission (Maybe Bool)
pDiscoverable
  = lens _pDiscoverable
      (\ s a -> s{_pDiscoverable = a})

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
                 [("role" .=) <$> _pRole, ("id" .=) <$> _pId,
                  ("type" .=) <$> _pType,
                  ("discoverable" .=) <$> _pDiscoverable])

-- | The request sent to mapsengine.permissions.batchDelete.
--
-- /See:/ 'permissionsBatchDeleteRequest' smart constructor.
newtype PermissionsBatchDeleteRequest = PermissionsBatchDeleteRequest
    { _pbdrIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to mapsengine.permissions.batchDelete.
--
-- /See:/ 'permissionsBatchDeleteResponse' smart constructor.
data PermissionsBatchDeleteResponse =
    PermissionsBatchDeleteResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The request sent to mapsengine.permissions.batchUpdate.
--
-- /See:/ 'permissionsBatchUpdateRequest' smart constructor.
newtype PermissionsBatchUpdateRequest = PermissionsBatchUpdateRequest
    { _pburPermissions :: Maybe [Maybe Permission]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pburPermissions :: Lens' PermissionsBatchUpdateRequest [Maybe Permission]
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

-- | The response returned by a call to mapsengine.permissions.batchUpdate.
--
-- /See:/ 'permissionsBatchUpdateResponse' smart constructor.
data PermissionsBatchUpdateResponse =
    PermissionsBatchUpdateResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'permissionsListResponse' smart constructor.
newtype PermissionsListResponse = PermissionsListResponse
    { _plrPermissions :: Maybe [Maybe Permission]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
plrPermissions :: Lens' PermissionsListResponse [Maybe Permission]
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

-- | Style for points.
--
-- /See:/ 'pointStyle' smart constructor.
data PointStyle = PointStyle
    { _psIcon  :: !(Maybe (Maybe IconStyle))
    , _psLabel :: !(Maybe (Maybe LabelStyle))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
psIcon :: Lens' PointStyle (Maybe (Maybe IconStyle))
psIcon = lens _psIcon (\ s a -> s{_psIcon = a})

-- | Label style for the point.
psLabel :: Lens' PointStyle (Maybe (Maybe LabelStyle))
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

-- | Style for polygons.
--
-- /See:/ 'polygonStyle' smart constructor.
data PolygonStyle = PolygonStyle
    { _pStroke :: !(Maybe (Maybe Border))
    , _pFill   :: !(Maybe (Maybe Color))
    , _pLabel  :: !(Maybe (Maybe LabelStyle))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pStroke :: Lens' PolygonStyle (Maybe (Maybe Border))
pStroke = lens _pStroke (\ s a -> s{_pStroke = a})

-- | Fill color of the polygon. If not provided, the polygon will be
-- transparent and not visible if there is no border.
pFill :: Lens' PolygonStyle (Maybe (Maybe Color))
pFill = lens _pFill (\ s a -> s{_pFill = a})

-- | Label style for the polygon.
pLabel :: Lens' PolygonStyle (Maybe (Maybe LabelStyle))
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

-- | The response returned by a call to any asset\'s Process method.
--
-- /See:/ 'processResponse' smart constructor.
data ProcessResponse =
    ProcessResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A Maps Engine project groups a collection of resources.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _proName :: !(Maybe Text)
    , _proId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to projects.List.
--
-- /See:/ 'projectsListResponse' smart constructor.
newtype ProjectsListResponse = ProjectsListResponse
    { _plrProjects :: Maybe [Maybe Project]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
plrProjects :: Lens' ProjectsListResponse [Maybe Project]
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

-- | The response returned by a call to any asset\'s Publish method.
--
-- /See:/ 'publishResponse' smart constructor.
data PublishResponse =
    PublishResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The published version of a layer.
--
-- /See:/ 'publishedLayer' smart constructor.
data PublishedLayer = PublishedLayer
    { _plLayerType   :: !(Maybe PublishedLayerLayerType)
    , _plName        :: !(Maybe Text)
    , _plId          :: !(Maybe Text)
    , _plProjectId   :: !(Maybe Text)
    , _plDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to layers.List.published.
--
-- /See:/ 'publishedLayersListResponse' smart constructor.
data PublishedLayersListResponse = PublishedLayersListResponse
    { _pllrNextPageToken :: !(Maybe Word8)
    , _pllrLayers        :: !(Maybe [Maybe PublishedLayer])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pllrLayers :: Lens' PublishedLayersListResponse [Maybe PublishedLayer]
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

-- | The published version of a map asset.
--
-- /See:/ 'publishedMap' smart constructor.
data PublishedMap = PublishedMap
    { _pmDefaultViewport :: !(Maybe (Maybe [Double]))
    , _pmContents        :: !(Maybe (Maybe [Maybe MapItem]))
    , _pmName            :: !(Maybe Text)
    , _pmId              :: !(Maybe Text)
    , _pmProjectId       :: !(Maybe Text)
    , _pmDescription     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pmDefaultViewport :: Lens' PublishedMap (Maybe (Maybe [Double]))
pmDefaultViewport
  = lens _pmDefaultViewport
      (\ s a -> s{_pmDefaultViewport = a})
      . mapping (_Default . _Coerce)

-- | The contents of this Map.
pmContents :: Lens' PublishedMap (Maybe (Maybe [Maybe MapItem]))
pmContents
  = lens _pmContents (\ s a -> s{_pmContents = a}) .
      mapping (_Default . _Coerce)

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

-- | The response returned by a call to maps.List.published.
--
-- /See:/ 'publishedMapsListResponse' smart constructor.
data PublishedMapsListResponse = PublishedMapsListResponse
    { _pmlrMaps          :: !(Maybe [Maybe PublishedMap])
    , _pmlrNextPageToken :: !(Maybe Word8)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pmlrMaps :: Lens' PublishedMapsListResponse [Maybe PublishedMap]
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

-- | A geo-referenced raster.
--
-- /See:/ 'raster' smart constructor.
data Raster = Raster
    { _rCreationTime              :: !(Maybe UTCTime)
    , _rWritersCanEditPermissions :: !(Maybe Bool)
    , _rMaskType                  :: !Text
    , _rEtag                      :: !(Maybe Text)
    , _rCreatorEmail              :: !(Maybe Text)
    , _rRasterType                :: !(Maybe RasterRasterType)
    , _rLastModifiedTime          :: !(Maybe UTCTime)
    , _rLastModifierEmail         :: !(Maybe Text)
    , _rAcquisitionTime           :: !(Maybe (Maybe AcquisitionTime))
    , _rName                      :: !(Maybe Text)
    , _rBbox                      :: !(Maybe [Double])
    , _rProcessingStatus          :: !(Maybe RasterProcessingStatus)
    , _rFiles                     :: !(Maybe [Maybe File])
    , _rId                        :: !(Maybe Text)
    , _rProjectId                 :: !(Maybe Text)
    , _rDraftAccessList           :: !(Maybe Text)
    , _rDescription               :: !(Maybe Text)
    , _rAttribution               :: !(Maybe Text)
    , _rTags                      :: !(Maybe (Maybe [Text]))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Raster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCreationTime'
--
-- * 'rWritersCanEditPermissions'
--
-- * 'rMaskType'
--
-- * 'rEtag'
--
-- * 'rCreatorEmail'
--
-- * 'rRasterType'
--
-- * 'rLastModifiedTime'
--
-- * 'rLastModifierEmail'
--
-- * 'rAcquisitionTime'
--
-- * 'rName'
--
-- * 'rBbox'
--
-- * 'rProcessingStatus'
--
-- * 'rFiles'
--
-- * 'rId'
--
-- * 'rProjectId'
--
-- * 'rDraftAccessList'
--
-- * 'rDescription'
--
-- * 'rAttribution'
--
-- * 'rTags'
raster
    :: Raster
raster =
    Raster
    { _rCreationTime = Nothing
    , _rWritersCanEditPermissions = Nothing
    , _rMaskType = "autoMask"
    , _rEtag = Nothing
    , _rCreatorEmail = Nothing
    , _rRasterType = Nothing
    , _rLastModifiedTime = Nothing
    , _rLastModifierEmail = Nothing
    , _rAcquisitionTime = Nothing
    , _rName = Nothing
    , _rBbox = Nothing
    , _rProcessingStatus = Nothing
    , _rFiles = Nothing
    , _rId = Nothing
    , _rProjectId = Nothing
    , _rDraftAccessList = Nothing
    , _rDescription = Nothing
    , _rAttribution = Nothing
    , _rTags = Nothing
    }

-- | The creation time of this raster. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
rCreationTime :: Lens' Raster (Maybe UTCTime)
rCreationTime
  = lens _rCreationTime
      (\ s a -> s{_rCreationTime = a})

-- | If true, WRITERs of the asset are able to edit the asset permissions.
rWritersCanEditPermissions :: Lens' Raster (Maybe Bool)
rWritersCanEditPermissions
  = lens _rWritersCanEditPermissions
      (\ s a -> s{_rWritersCanEditPermissions = a})

-- | The mask processing type of this Raster.
rMaskType :: Lens' Raster Text
rMaskType
  = lens _rMaskType (\ s a -> s{_rMaskType = a})

-- | The ETag, used to refer to the current version of the asset.
rEtag :: Lens' Raster (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | The email address of the creator of this raster. This is only returned
-- on GET requests and not LIST requests.
rCreatorEmail :: Lens' Raster (Maybe Text)
rCreatorEmail
  = lens _rCreatorEmail
      (\ s a -> s{_rCreatorEmail = a})

-- | The type of this Raster. Always \"image\" today.
rRasterType :: Lens' Raster (Maybe RasterRasterType)
rRasterType
  = lens _rRasterType (\ s a -> s{_rRasterType = a})

-- | The last modified time of this raster. The value is an RFC 3339
-- formatted date-time value (e.g. 1970-01-01T00:00:00Z).
rLastModifiedTime :: Lens' Raster (Maybe UTCTime)
rLastModifiedTime
  = lens _rLastModifiedTime
      (\ s a -> s{_rLastModifiedTime = a})

-- | The email address of the last modifier of this raster. This is only
-- returned on GET requests and not LIST requests.
rLastModifierEmail :: Lens' Raster (Maybe Text)
rLastModifierEmail
  = lens _rLastModifierEmail
      (\ s a -> s{_rLastModifierEmail = a})

-- | The acquisition time of this Raster.
rAcquisitionTime :: Lens' Raster (Maybe (Maybe AcquisitionTime))
rAcquisitionTime
  = lens _rAcquisitionTime
      (\ s a -> s{_rAcquisitionTime = a})

-- | The name of this Raster, supplied by the author.
rName :: Lens' Raster (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | A rectangular bounding box which contains all of the data in this
-- Raster. The box is expressed as \\\"west, south, east, north\\\". The
-- numbers represent latitudes and longitudes in decimal degrees.
rBbox :: Lens' Raster [Double]
rBbox
  = lens _rBbox (\ s a -> s{_rBbox = a}) . _Default .
      _Coerce

-- | The processing status of this Raster.
rProcessingStatus :: Lens' Raster (Maybe RasterProcessingStatus)
rProcessingStatus
  = lens _rProcessingStatus
      (\ s a -> s{_rProcessingStatus = a})

-- | The files associated with this Raster.
rFiles :: Lens' Raster [Maybe File]
rFiles
  = lens _rFiles (\ s a -> s{_rFiles = a}) . _Default .
      _Coerce

-- | A globally unique ID, used to refer to this Raster.
rId :: Lens' Raster (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | The ID of the project that this Raster is in.
rProjectId :: Lens' Raster (Maybe Text)
rProjectId
  = lens _rProjectId (\ s a -> s{_rProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
rDraftAccessList :: Lens' Raster (Maybe Text)
rDraftAccessList
  = lens _rDraftAccessList
      (\ s a -> s{_rDraftAccessList = a})

-- | The description of this Raster, supplied by the author.
rDescription :: Lens' Raster (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

-- | The name of the attribution to be used for this Raster.
rAttribution :: Lens' Raster (Maybe Text)
rAttribution
  = lens _rAttribution (\ s a -> s{_rAttribution = a})

-- | Tags of this Raster.
rTags :: Lens' Raster (Maybe (Maybe [Text]))
rTags
  = lens _rTags (\ s a -> s{_rTags = a}) .
      mapping (_Default . _Coerce)

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
                 [("creationTime" .=) <$> _rCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _rWritersCanEditPermissions,
                  Just ("maskType" .= _rMaskType),
                  ("etag" .=) <$> _rEtag,
                  ("creatorEmail" .=) <$> _rCreatorEmail,
                  ("rasterType" .=) <$> _rRasterType,
                  ("lastModifiedTime" .=) <$> _rLastModifiedTime,
                  ("lastModifierEmail" .=) <$> _rLastModifierEmail,
                  ("acquisitionTime" .=) <$> _rAcquisitionTime,
                  ("name" .=) <$> _rName, ("bbox" .=) <$> _rBbox,
                  ("processingStatus" .=) <$> _rProcessingStatus,
                  ("files" .=) <$> _rFiles, ("id" .=) <$> _rId,
                  ("projectId" .=) <$> _rProjectId,
                  ("draftAccessList" .=) <$> _rDraftAccessList,
                  ("description" .=) <$> _rDescription,
                  ("attribution" .=) <$> _rAttribution,
                  ("tags" .=) <$> _rTags])

-- | A raster collection groups multiple Raster resources for inclusion in a
-- Layer.
--
-- /See:/ 'rasterCollection' smart constructor.
data RasterCollection = RasterCollection
    { _rcCreationTime              :: !(Maybe UTCTime)
    , _rcWritersCanEditPermissions :: !(Maybe Bool)
    , _rcEtag                      :: !(Maybe Text)
    , _rcCreatorEmail              :: !(Maybe Text)
    , _rcRasterType                :: !(Maybe RasterCollectionRasterType)
    , _rcLastModifiedTime          :: !(Maybe UTCTime)
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
    , _rcTags                      :: !(Maybe (Maybe [Text]))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rcTags :: Lens' RasterCollection (Maybe (Maybe [Text]))
rcTags
  = lens _rcTags (\ s a -> s{_rcTags = a}) .
      mapping (_Default . _Coerce)

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

-- | The response returned by a call to raster_collections.List. Note: The
-- list response does not include all the fields available in a raster
-- collection. Refer to the RasterCollection resource description for
-- details of the fields that are not included. You\'ll need to send a get
-- request to retrieve the additional fields for each raster collection.
--
-- /See:/ 'rasterCollectionsListResponse' smart constructor.
data RasterCollectionsListResponse = RasterCollectionsListResponse
    { _rclrNextPageToken     :: !(Maybe Word8)
    , _rclrRasterCollections :: !(Maybe [Maybe RasterCollection])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rclrRasterCollections :: Lens' RasterCollectionsListResponse [Maybe RasterCollection]
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

-- | A raster resource.
--
-- /See:/ 'rasterCollectionsRaster' smart constructor.
data RasterCollectionsRaster = RasterCollectionsRaster
    { _rcrCreationTime     :: !(Maybe UTCTime)
    , _rcrRasterType       :: !Text
    , _rcrLastModifiedTime :: !(Maybe UTCTime)
    , _rcrName             :: !(Maybe Text)
    , _rcrBbox             :: !(Maybe [Double])
    , _rcrId               :: !(Maybe Text)
    , _rcrProjectId        :: !(Maybe Text)
    , _rcrDescription      :: !(Maybe Text)
    , _rcrTags             :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The request sent to rasterCollections.Rasters.BatchDelete.
--
-- /See:/ 'rasterCollectionsRasterBatchDeleteRequest' smart constructor.
newtype RasterCollectionsRasterBatchDeleteRequest = RasterCollectionsRasterBatchDeleteRequest
    { _rcrbdrIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to
-- rasterCollections.rasters.batchDelete.
--
-- /See:/ 'rasterCollectionsRastersBatchDeleteResponse' smart constructor.
data RasterCollectionsRastersBatchDeleteResponse =
    RasterCollectionsRastersBatchDeleteResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The request sent to rasterCollections.Rasters.BatchInsert.
--
-- /See:/ 'rasterCollectionsRastersBatchInsertRequest' smart constructor.
newtype RasterCollectionsRastersBatchInsertRequest = RasterCollectionsRastersBatchInsertRequest
    { _rcrbirIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to
-- rasterCollections.rasters.batchInsert.
--
-- /See:/ 'rasterCollectionsRastersBatchInsertResponse' smart constructor.
data RasterCollectionsRastersBatchInsertResponse =
    RasterCollectionsRastersBatchInsertResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to rasterCollections.rasters.List.
--
-- /See:/ 'rasterCollectionsRastersListResponse' smart constructor.
data RasterCollectionsRastersListResponse = RasterCollectionsRastersListResponse
    { _rcrlrNextPageToken :: !(Maybe Text)
    , _rcrlrRasters       :: !(Maybe [Maybe RasterCollectionsRaster])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rcrlrRasters :: Lens' RasterCollectionsRastersListResponse [Maybe RasterCollectionsRaster]
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

-- | The response returned by a call to rasters.List.
--
-- /See:/ 'rastersListResponse' smart constructor.
data RastersListResponse = RastersListResponse
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrRasters       :: !(Maybe [Maybe Raster])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rlrRasters :: Lens' RastersListResponse [Maybe Raster]
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

-- | Parameters for styling points as scaled shapes.
--
-- /See:/ 'scaledShape' smart constructor.
data ScaledShape = ScaledShape
    { _ssBorder :: !(Maybe (Maybe Border))
    , _ssFill   :: !(Maybe (Maybe Color))
    , _ssShape  :: !(Maybe ScaledShapeShape)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScaledShape' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssBorder'
--
-- * 'ssFill'
--
-- * 'ssShape'
scaledShape
    :: ScaledShape
scaledShape =
    ScaledShape
    { _ssBorder = Nothing
    , _ssFill = Nothing
    , _ssShape = Nothing
    }

-- | Border color\/width of the shape. If not specified the shape won\'t have
-- a border.
ssBorder :: Lens' ScaledShape (Maybe (Maybe Border))
ssBorder = lens _ssBorder (\ s a -> s{_ssBorder = a})

-- | The fill color of the shape. If not specified the shape will be
-- transparent (although the borders may not be).
ssFill :: Lens' ScaledShape (Maybe (Maybe Color))
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
                 [("border" .=) <$> _ssBorder,
                  ("fill" .=) <$> _ssFill, ("shape" .=) <$> _ssShape])

-- | Parameters for scaling scaled shapes.
--
-- /See:/ 'scalingFunction' smart constructor.
data ScalingFunction = ScalingFunction
    { _sfValueRange  :: !(Maybe (Maybe ValueRange))
    , _sfSizeRange   :: !(Maybe (Maybe SizeRange))
    , _sfScalingType :: !(Maybe ScalingFunctionScalingType)
    , _sfColumn      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
sfValueRange :: Lens' ScalingFunction (Maybe (Maybe ValueRange))
sfValueRange
  = lens _sfValueRange (\ s a -> s{_sfValueRange = a})

-- | The range of shape sizes, in pixels. For circles, the size corresponds
-- to the diameter.
sfSizeRange :: Lens' ScalingFunction (Maybe (Maybe SizeRange))
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

-- | A schema indicating the properties which may be associated with features
-- within a Table, and the types of those properties.
--
-- /See:/ 'schema' smart constructor.
data Schema = Schema
    { _sPrimaryKey      :: !(Maybe Text)
    , _sColumns         :: !(Maybe [Maybe TableColumn])
    , _sPrimaryGeometry :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
sColumns :: Lens' Schema [Maybe TableColumn]
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

-- | Scaled shape size range in pixels. For circles, size corresponds to
-- diameter.
--
-- /See:/ 'sizeRange' smart constructor.
data SizeRange = SizeRange
    { _srMax :: !(Maybe Double)
    , _srMin :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A collection of geographic features, and associated metadata.
--
-- /See:/ 'table' smart constructor.
data Table = Table
    { _tCreationTime              :: !(Maybe UTCTime)
    , _tWritersCanEditPermissions :: !(Maybe Bool)
    , _tEtag                      :: !(Maybe Text)
    , _tCreatorEmail              :: !(Maybe Text)
    , _tLastModifiedTime          :: !(Maybe UTCTime)
    , _tSchema                    :: !(Maybe (Maybe Schema))
    , _tLastModifierEmail         :: !(Maybe Text)
    , _tName                      :: !(Maybe Text)
    , _tBbox                      :: !(Maybe [Double])
    , _tProcessingStatus          :: !(Maybe TableProcessingStatus)
    , _tFiles                     :: !(Maybe [Maybe File])
    , _tId                        :: !(Maybe Text)
    , _tProjectId                 :: !(Maybe Text)
    , _tDraftAccessList           :: !(Maybe Text)
    , _tPublishedAccessList       :: !(Maybe Text)
    , _tSourceEncoding            :: !Text
    , _tDescription               :: !(Maybe Text)
    , _tTags                      :: !(Maybe (Maybe [Text]))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCreationTime'
--
-- * 'tWritersCanEditPermissions'
--
-- * 'tEtag'
--
-- * 'tCreatorEmail'
--
-- * 'tLastModifiedTime'
--
-- * 'tSchema'
--
-- * 'tLastModifierEmail'
--
-- * 'tName'
--
-- * 'tBbox'
--
-- * 'tProcessingStatus'
--
-- * 'tFiles'
--
-- * 'tId'
--
-- * 'tProjectId'
--
-- * 'tDraftAccessList'
--
-- * 'tPublishedAccessList'
--
-- * 'tSourceEncoding'
--
-- * 'tDescription'
--
-- * 'tTags'
table
    :: Table
table =
    Table
    { _tCreationTime = Nothing
    , _tWritersCanEditPermissions = Nothing
    , _tEtag = Nothing
    , _tCreatorEmail = Nothing
    , _tLastModifiedTime = Nothing
    , _tSchema = Nothing
    , _tLastModifierEmail = Nothing
    , _tName = Nothing
    , _tBbox = Nothing
    , _tProcessingStatus = Nothing
    , _tFiles = Nothing
    , _tId = Nothing
    , _tProjectId = Nothing
    , _tDraftAccessList = Nothing
    , _tPublishedAccessList = Nothing
    , _tSourceEncoding = "UTF-8"
    , _tDescription = Nothing
    , _tTags = Nothing
    }

-- | The creation time of this table. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
tCreationTime :: Lens' Table (Maybe UTCTime)
tCreationTime
  = lens _tCreationTime
      (\ s a -> s{_tCreationTime = a})

-- | If true, WRITERs of the asset are able to edit the asset permissions.
tWritersCanEditPermissions :: Lens' Table (Maybe Bool)
tWritersCanEditPermissions
  = lens _tWritersCanEditPermissions
      (\ s a -> s{_tWritersCanEditPermissions = a})

-- | The ETag, used to refer to the current version of the asset.
tEtag :: Lens' Table (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | The email address of the creator of this table. This is only returned on
-- GET requests and not LIST requests.
tCreatorEmail :: Lens' Table (Maybe Text)
tCreatorEmail
  = lens _tCreatorEmail
      (\ s a -> s{_tCreatorEmail = a})

-- | The last modified time of this table. The value is an RFC 3339 formatted
-- date-time value (e.g. 1970-01-01T00:00:00Z).
tLastModifiedTime :: Lens' Table (Maybe UTCTime)
tLastModifiedTime
  = lens _tLastModifiedTime
      (\ s a -> s{_tLastModifiedTime = a})

-- | The schema for this table. Note: The schema is returned in response to a
-- get request but not a list request. After requesting a list of tables,
-- you\'ll need to send a get request to retrieve the schema for each
-- table.
tSchema :: Lens' Table (Maybe (Maybe Schema))
tSchema = lens _tSchema (\ s a -> s{_tSchema = a})

-- | The email address of the last modifier of this table. This is only
-- returned on GET requests and not LIST requests.
tLastModifierEmail :: Lens' Table (Maybe Text)
tLastModifierEmail
  = lens _tLastModifierEmail
      (\ s a -> s{_tLastModifierEmail = a})

-- | The name of this table, supplied by the author.
tName :: Lens' Table (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | A rectangular bounding box which contains all of the data in this Table.
-- The box is expressed as \\\"west, south, east, north\\\". The numbers
-- represent latitude and longitude in decimal degrees.
tBbox :: Lens' Table [Double]
tBbox
  = lens _tBbox (\ s a -> s{_tBbox = a}) . _Default .
      _Coerce

-- | The processing status of this table.
tProcessingStatus :: Lens' Table (Maybe TableProcessingStatus)
tProcessingStatus
  = lens _tProcessingStatus
      (\ s a -> s{_tProcessingStatus = a})

-- | The files associated with this table.
tFiles :: Lens' Table [Maybe File]
tFiles
  = lens _tFiles (\ s a -> s{_tFiles = a}) . _Default .
      _Coerce

-- | A globally unique ID, used to refer to this table.
tId :: Lens' Table (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

-- | The ID of the project to which the table belongs.
tProjectId :: Lens' Table (Maybe Text)
tProjectId
  = lens _tProjectId (\ s a -> s{_tProjectId = a})

-- | Deprecated: The name of an access list of the Map Editor type. The user
-- on whose behalf the request is being sent must be an editor on that
-- access list. Note: Google Maps Engine no longer uses access lists.
-- Instead, each asset has its own list of permissions. For backward
-- compatibility, the API still accepts access lists for projects that are
-- already using access lists. If you created a GME account\/project after
-- July 14th, 2014, you will not be able to send API requests that include
-- access lists. Note: This is an input field only. It is not returned in
-- response to a list or get request.
tDraftAccessList :: Lens' Table (Maybe Text)
tDraftAccessList
  = lens _tDraftAccessList
      (\ s a -> s{_tDraftAccessList = a})

-- | Deprecated: The access list to whom view permissions are granted. The
-- value must be the name of a Maps Engine access list of the Map Viewer
-- type, and the user must be a viewer on that list. Note: Google Maps
-- Engine no longer uses access lists. Instead, each asset has its own list
-- of permissions. For backward compatibility, the API still accepts access
-- lists for projects that are already using access lists. If you created a
-- GME account\/project after July 14th, 2014, you will not be able to send
-- API requests that include access lists. Note: This is an input field
-- only. It is not returned in response to a list or get request.
tPublishedAccessList :: Lens' Table (Maybe Text)
tPublishedAccessList
  = lens _tPublishedAccessList
      (\ s a -> s{_tPublishedAccessList = a})

-- | Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO
-- 8859-1, and Shift_JIS.
tSourceEncoding :: Lens' Table Text
tSourceEncoding
  = lens _tSourceEncoding
      (\ s a -> s{_tSourceEncoding = a})

-- | The description of this table, supplied by the author.
tDescription :: Lens' Table (Maybe Text)
tDescription
  = lens _tDescription (\ s a -> s{_tDescription = a})

-- | An array of text strings, with each string representing a tag. More
-- information about tags can be found in the Tagging data article of the
-- Maps Engine help center.
tTags :: Lens' Table (Maybe (Maybe [Text]))
tTags
  = lens _tTags (\ s a -> s{_tTags = a}) .
      mapping (_Default . _Coerce)

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
                 [("creationTime" .=) <$> _tCreationTime,
                  ("writersCanEditPermissions" .=) <$>
                    _tWritersCanEditPermissions,
                  ("etag" .=) <$> _tEtag,
                  ("creatorEmail" .=) <$> _tCreatorEmail,
                  ("lastModifiedTime" .=) <$> _tLastModifiedTime,
                  ("schema" .=) <$> _tSchema,
                  ("lastModifierEmail" .=) <$> _tLastModifierEmail,
                  ("name" .=) <$> _tName, ("bbox" .=) <$> _tBbox,
                  ("processingStatus" .=) <$> _tProcessingStatus,
                  ("files" .=) <$> _tFiles, ("id" .=) <$> _tId,
                  ("projectId" .=) <$> _tProjectId,
                  ("draftAccessList" .=) <$> _tDraftAccessList,
                  ("publishedAccessList" .=) <$> _tPublishedAccessList,
                  Just ("sourceEncoding" .= _tSourceEncoding),
                  ("description" .=) <$> _tDescription,
                  ("tags" .=) <$> _tTags])

--
-- /See:/ 'tableColumn' smart constructor.
data TableColumn = TableColumn
    { _tcName :: !(Maybe Text)
    , _tcType :: !(Maybe TableColumnType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The response returned by a call to tables.List. Note: The list response
-- does not include all the fields available in a table. Refer to the table
-- resource description for details of the fields that are not included.
-- You\'ll need to send a get request to retrieve the additional fields for
-- each table.
--
-- /See:/ 'tablesListResponse' smart constructor.
data TablesListResponse = TablesListResponse
    { _tlrNextPageToken :: !(Maybe Word8)
    , _tlrTables        :: !(Maybe [Maybe Table])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
tlrTables :: Lens' TablesListResponse [Maybe Table]
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

-- | Range of values used for scaling shapes. The min\/max values will be
-- drawn as shapes with the min\/max size.
--
-- /See:/ 'valueRange' smart constructor.
data ValueRange = ValueRange
    { _vrMax :: !(Maybe Double)
    , _vrMin :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A vector style contains styling information for vector layer.
--
-- /See:/ 'vectorStyle' smart constructor.
data VectorStyle = VectorStyle
    { _vsDisplayRules :: !(Maybe [Maybe DisplayRule])
    , _vsFeatureInfo  :: !(Maybe (Maybe FeatureInfo))
    , _vsType         :: !(Maybe VectorStyleType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

vsDisplayRules :: Lens' VectorStyle [Maybe DisplayRule]
vsDisplayRules
  = lens _vsDisplayRules
      (\ s a -> s{_vsDisplayRules = a})
      . _Default
      . _Coerce

-- | Individual feature info, this is called Info Window in Maps Engine UI.
-- If not provided, a default template with all attributes will be
-- generated.
vsFeatureInfo :: Lens' VectorStyle (Maybe (Maybe FeatureInfo))
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

-- | Zoom level range. Zoom levels are restricted between 0 and 24,
-- inclusive.
--
-- /See:/ 'zoomLevels' smart constructor.
data ZoomLevels = ZoomLevels
    { _zlMax :: !(Maybe Int32)
    , _zlMin :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
