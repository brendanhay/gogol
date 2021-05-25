{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Poly.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Poly.Types.Product where

import Network.Google.Poly.Types.Sum
import Network.Google.Prelude

-- | Details of an error resulting from parsing an OBJ file
--
-- /See:/ 'objParseError' smart constructor.
data ObjParseError =
  ObjParseError'
    { _opeLineNumber :: !(Maybe (Textual Int32))
    , _opeFilePath :: !(Maybe Text)
    , _opeLine :: !(Maybe Text)
    , _opeEndIndex :: !(Maybe (Textual Int32))
    , _opeCode :: !(Maybe ObjParseErrorCode)
    , _opeStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjParseError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opeLineNumber'
--
-- * 'opeFilePath'
--
-- * 'opeLine'
--
-- * 'opeEndIndex'
--
-- * 'opeCode'
--
-- * 'opeStartIndex'
objParseError
    :: ObjParseError
objParseError =
  ObjParseError'
    { _opeLineNumber = Nothing
    , _opeFilePath = Nothing
    , _opeLine = Nothing
    , _opeEndIndex = Nothing
    , _opeCode = Nothing
    , _opeStartIndex = Nothing
    }


-- | Line number at which the problem was found.
opeLineNumber :: Lens' ObjParseError (Maybe Int32)
opeLineNumber
  = lens _opeLineNumber
      (\ s a -> s{_opeLineNumber = a})
      . mapping _Coerce

-- | The file path in which the problem was found.
opeFilePath :: Lens' ObjParseError (Maybe Text)
opeFilePath
  = lens _opeFilePath (\ s a -> s{_opeFilePath = a})

-- | The text of the line. Note that this may be truncated if the line was
-- very long. This may not include the error if it occurs after line
-- truncation.
opeLine :: Lens' ObjParseError (Maybe Text)
opeLine = lens _opeLine (\ s a -> s{_opeLine = a})

-- | The ending character index at which the problem was found.
opeEndIndex :: Lens' ObjParseError (Maybe Int32)
opeEndIndex
  = lens _opeEndIndex (\ s a -> s{_opeEndIndex = a}) .
      mapping _Coerce

-- | The type of problem found (required).
opeCode :: Lens' ObjParseError (Maybe ObjParseErrorCode)
opeCode = lens _opeCode (\ s a -> s{_opeCode = a})

-- | The starting character index at which the problem was found.
opeStartIndex :: Lens' ObjParseError (Maybe Int32)
opeStartIndex
  = lens _opeStartIndex
      (\ s a -> s{_opeStartIndex = a})
      . mapping _Coerce

instance FromJSON ObjParseError where
        parseJSON
          = withObject "ObjParseError"
              (\ o ->
                 ObjParseError' <$>
                   (o .:? "lineNumber") <*> (o .:? "filePath") <*>
                     (o .:? "line")
                     <*> (o .:? "endIndex")
                     <*> (o .:? "code")
                     <*> (o .:? "startIndex"))

instance ToJSON ObjParseError where
        toJSON ObjParseError'{..}
          = object
              (catMaybes
                 [("lineNumber" .=) <$> _opeLineNumber,
                  ("filePath" .=) <$> _opeFilePath,
                  ("line" .=) <$> _opeLine,
                  ("endIndex" .=) <$> _opeEndIndex,
                  ("code" .=) <$> _opeCode,
                  ("startIndex" .=) <$> _opeStartIndex])

-- | Hints for displaying the asset, based on information available when the
-- asset was uploaded.
--
-- /See:/ 'presentationParams' smart constructor.
data PresentationParams =
  PresentationParams'
    { _ppBackgRoundColor :: !(Maybe Text)
    , _ppOrientingRotation :: !(Maybe Quaternion)
    , _ppColorSpace :: !(Maybe PresentationParamsColorSpace)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PresentationParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppBackgRoundColor'
--
-- * 'ppOrientingRotation'
--
-- * 'ppColorSpace'
presentationParams
    :: PresentationParams
presentationParams =
  PresentationParams'
    { _ppBackgRoundColor = Nothing
    , _ppOrientingRotation = Nothing
    , _ppColorSpace = Nothing
    }


-- | A background color which could be used for displaying the 3D asset in a
-- \'thumbnail\' or \'palette\' style view. Authors have the option to set
-- this background color when publishing or editing their asset. This is
-- represented as a six-digit hexademical triplet specifying the RGB
-- components of the background color, e.g. #FF0000 for Red.
ppBackgRoundColor :: Lens' PresentationParams (Maybe Text)
ppBackgRoundColor
  = lens _ppBackgRoundColor
      (\ s a -> s{_ppBackgRoundColor = a})

-- | A rotation that should be applied to the object root to make it upright.
-- More precisely, this quaternion transforms from \"object space\" (the
-- space in which the object is defined) to \"presentation space\", a
-- coordinate system where +Y is up, +X is right, -Z is forward. For
-- example, if the object is the Eiffel Tower, in its local coordinate
-- system the object might be laid out such that the base of the tower is
-- on the YZ plane and the tip of the tower is towards positive X. In this
-- case this quaternion would specify a rotation (of 90 degrees about the Z
-- axis) such that in the presentation space the base of the tower is
-- aligned with the XZ plane, and the tip of the tower lies towards +Y.
-- This rotation is unrelated to the object\'s pose in the web preview,
-- which is just a camera position setting and is *not* reflected in this
-- rotation. Please note: this is applicable only to the gLTF.
ppOrientingRotation :: Lens' PresentationParams (Maybe Quaternion)
ppOrientingRotation
  = lens _ppOrientingRotation
      (\ s a -> s{_ppOrientingRotation = a})

-- | The materials\' diffuse\/albedo color. This does not apply to vertex
-- colors or texture maps.
ppColorSpace :: Lens' PresentationParams (Maybe PresentationParamsColorSpace)
ppColorSpace
  = lens _ppColorSpace (\ s a -> s{_ppColorSpace = a})

instance FromJSON PresentationParams where
        parseJSON
          = withObject "PresentationParams"
              (\ o ->
                 PresentationParams' <$>
                   (o .:? "backgroundColor") <*>
                     (o .:? "orientingRotation")
                     <*> (o .:? "colorSpace"))

instance ToJSON PresentationParams where
        toJSON PresentationParams'{..}
          = object
              (catMaybes
                 [("backgroundColor" .=) <$> _ppBackgRoundColor,
                  ("orientingRotation" .=) <$> _ppOrientingRotation,
                  ("colorSpace" .=) <$> _ppColorSpace])

-- | A response message from a request to list.
--
-- /See:/ 'listLikedAssetsResponse' smart constructor.
data ListLikedAssetsResponse =
  ListLikedAssetsResponse'
    { _llarNextPageToken :: !(Maybe Text)
    , _llarTotalSize :: !(Maybe (Textual Int32))
    , _llarAssets :: !(Maybe [Asset])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLikedAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llarNextPageToken'
--
-- * 'llarTotalSize'
--
-- * 'llarAssets'
listLikedAssetsResponse
    :: ListLikedAssetsResponse
listLikedAssetsResponse =
  ListLikedAssetsResponse'
    { _llarNextPageToken = Nothing
    , _llarTotalSize = Nothing
    , _llarAssets = Nothing
    }


-- | The continuation token for retrieving the next page. If empty, indicates
-- that there are no more pages. To get the next page, submit the same
-- request specifying this value as the page_token.
llarNextPageToken :: Lens' ListLikedAssetsResponse (Maybe Text)
llarNextPageToken
  = lens _llarNextPageToken
      (\ s a -> s{_llarNextPageToken = a})

-- | The total number of assets in the list, without pagination.
llarTotalSize :: Lens' ListLikedAssetsResponse (Maybe Int32)
llarTotalSize
  = lens _llarTotalSize
      (\ s a -> s{_llarTotalSize = a})
      . mapping _Coerce

-- | A list of assets that match the criteria specified in the request.
llarAssets :: Lens' ListLikedAssetsResponse [Asset]
llarAssets
  = lens _llarAssets (\ s a -> s{_llarAssets = a}) .
      _Default
      . _Coerce

instance FromJSON ListLikedAssetsResponse where
        parseJSON
          = withObject "ListLikedAssetsResponse"
              (\ o ->
                 ListLikedAssetsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "assets" .!= mempty))

instance ToJSON ListLikedAssetsResponse where
        toJSON ListLikedAssetsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llarNextPageToken,
                  ("totalSize" .=) <$> _llarTotalSize,
                  ("assets" .=) <$> _llarAssets])

-- | Info about the sources of this asset (i.e. assets that were remixed to
-- create this asset).
--
-- /See:/ 'remixInfo' smart constructor.
newtype RemixInfo =
  RemixInfo'
    { _riSourceAsset :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemixInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riSourceAsset'
remixInfo
    :: RemixInfo
remixInfo = RemixInfo' {_riSourceAsset = Nothing}


-- | Resource ids for the sources of this remix, of the form:
-- \`assets\/{ASSET_ID}\`
riSourceAsset :: Lens' RemixInfo [Text]
riSourceAsset
  = lens _riSourceAsset
      (\ s a -> s{_riSourceAsset = a})
      . _Default
      . _Coerce

instance FromJSON RemixInfo where
        parseJSON
          = withObject "RemixInfo"
              (\ o ->
                 RemixInfo' <$> (o .:? "sourceAsset" .!= mempty))

instance ToJSON RemixInfo where
        toJSON RemixInfo'{..}
          = object
              (catMaybes [("sourceAsset" .=) <$> _riSourceAsset])

-- | A [Quaternion](\/\/en.wikipedia.org\/wiki\/Quaternion). Please note: if
-- in the response you see \"w: 1\" and nothing else this is the default
-- value of [0, 0, 0, 1] where x,y, and z are 0.
--
-- /See:/ 'quaternion' smart constructor.
data Quaternion =
  Quaternion'
    { _qW :: !(Maybe (Textual Double))
    , _qZ :: !(Maybe (Textual Double))
    , _qX :: !(Maybe (Textual Double))
    , _qY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Quaternion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qW'
--
-- * 'qZ'
--
-- * 'qX'
--
-- * 'qY'
quaternion
    :: Quaternion
quaternion =
  Quaternion' {_qW = Nothing, _qZ = Nothing, _qX = Nothing, _qY = Nothing}


-- | The scalar component.
qW :: Lens' Quaternion (Maybe Double)
qW = lens _qW (\ s a -> s{_qW = a}) . mapping _Coerce

-- | The z component.
qZ :: Lens' Quaternion (Maybe Double)
qZ = lens _qZ (\ s a -> s{_qZ = a}) . mapping _Coerce

-- | The x component.
qX :: Lens' Quaternion (Maybe Double)
qX = lens _qX (\ s a -> s{_qX = a}) . mapping _Coerce

-- | The y component.
qY :: Lens' Quaternion (Maybe Double)
qY = lens _qY (\ s a -> s{_qY = a}) . mapping _Coerce

instance FromJSON Quaternion where
        parseJSON
          = withObject "Quaternion"
              (\ o ->
                 Quaternion' <$>
                   (o .:? "w") <*> (o .:? "z") <*> (o .:? "x") <*>
                     (o .:? "y"))

instance ToJSON Quaternion where
        toJSON Quaternion'{..}
          = object
              (catMaybes
                 [("w" .=) <$> _qW, ("z" .=) <$> _qZ,
                  ("x" .=) <$> _qX, ("y" .=) <$> _qY])

-- | Represents and describes an asset in the Poly library. An asset is a 3D
-- model or scene created using [Tilt Brush](\/\/www.tiltbrush.com),
-- [Blocks](\/\/vr.google.com\/blocks\/), or any 3D program that produces a
-- file that can be upload to Poly.
--
-- /See:/ 'asset' smart constructor.
data Asset =
  Asset'
    { _aThumbnail :: !(Maybe File)
    , _aPresentationParams :: !(Maybe PresentationParams)
    , _aIsCurated :: !(Maybe Bool)
    , _aAuthorName :: !(Maybe Text)
    , _aRemixInfo :: !(Maybe RemixInfo)
    , _aFormats :: !(Maybe [Format])
    , _aVisibility :: !(Maybe AssetVisibility)
    , _aUpdateTime :: !(Maybe DateTime')
    , _aName :: !(Maybe Text)
    , _aMetadata :: !(Maybe Text)
    , _aDisplayName :: !(Maybe Text)
    , _aLicense :: !(Maybe AssetLicense)
    , _aDescription :: !(Maybe Text)
    , _aCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aThumbnail'
--
-- * 'aPresentationParams'
--
-- * 'aIsCurated'
--
-- * 'aAuthorName'
--
-- * 'aRemixInfo'
--
-- * 'aFormats'
--
-- * 'aVisibility'
--
-- * 'aUpdateTime'
--
-- * 'aName'
--
-- * 'aMetadata'
--
-- * 'aDisplayName'
--
-- * 'aLicense'
--
-- * 'aDescription'
--
-- * 'aCreateTime'
asset
    :: Asset
asset =
  Asset'
    { _aThumbnail = Nothing
    , _aPresentationParams = Nothing
    , _aIsCurated = Nothing
    , _aAuthorName = Nothing
    , _aRemixInfo = Nothing
    , _aFormats = Nothing
    , _aVisibility = Nothing
    , _aUpdateTime = Nothing
    , _aName = Nothing
    , _aMetadata = Nothing
    , _aDisplayName = Nothing
    , _aLicense = Nothing
    , _aDescription = Nothing
    , _aCreateTime = Nothing
    }


-- | The thumbnail image for the asset.
aThumbnail :: Lens' Asset (Maybe File)
aThumbnail
  = lens _aThumbnail (\ s a -> s{_aThumbnail = a})

-- | Hints for displaying the asset. Note that these parameters are not
-- immutable; the author of an asset may change them post-publication.
aPresentationParams :: Lens' Asset (Maybe PresentationParams)
aPresentationParams
  = lens _aPresentationParams
      (\ s a -> s{_aPresentationParams = a})

-- | Whether this asset has been curated by the Poly team.
aIsCurated :: Lens' Asset (Maybe Bool)
aIsCurated
  = lens _aIsCurated (\ s a -> s{_aIsCurated = a})

-- | The author\'s publicly visible name. Use this name when giving credit to
-- the author. For more information, see
-- [Licensing](\/poly\/discover\/licensing).
aAuthorName :: Lens' Asset (Maybe Text)
aAuthorName
  = lens _aAuthorName (\ s a -> s{_aAuthorName = a})

-- | The remix info for the asset.
aRemixInfo :: Lens' Asset (Maybe RemixInfo)
aRemixInfo
  = lens _aRemixInfo (\ s a -> s{_aRemixInfo = a})

-- | A list of Formats where each format describes one representation of the
-- asset.
aFormats :: Lens' Asset [Format]
aFormats
  = lens _aFormats (\ s a -> s{_aFormats = a}) .
      _Default
      . _Coerce

-- | The visibility of the asset and who can access it.
aVisibility :: Lens' Asset (Maybe AssetVisibility)
aVisibility
  = lens _aVisibility (\ s a -> s{_aVisibility = a})

-- | The time when the asset was last modified. For published assets, whose
-- contents are immutable, the update time changes only when metadata
-- properties, such as visibility, are updated.
aUpdateTime :: Lens' Asset (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | The unique identifier for the asset in the form: \`assets\/{ASSET_ID}\`.
aName :: Lens' Asset (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Application-defined opaque metadata for this asset. This field is only
-- returned when querying for the signed-in user\'s own assets, not for
-- public assets. This string is limited to 1K chars. It is up to the
-- creator of the asset to define the format for this string (for example,
-- JSON).
aMetadata :: Lens' Asset (Maybe Text)
aMetadata
  = lens _aMetadata (\ s a -> s{_aMetadata = a})

-- | The human-readable name, set by the asset\'s author.
aDisplayName :: Lens' Asset (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | The license under which the author has made the asset available for use,
-- if any.
aLicense :: Lens' Asset (Maybe AssetLicense)
aLicense = lens _aLicense (\ s a -> s{_aLicense = a})

-- | The human-readable description, set by the asset\'s author.
aDescription :: Lens' Asset (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

-- | For published assets, the time when the asset was published. For
-- unpublished assets, the time when the asset was created.
aCreateTime :: Lens' Asset (Maybe UTCTime)
aCreateTime
  = lens _aCreateTime (\ s a -> s{_aCreateTime = a}) .
      mapping _DateTime

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset' <$>
                   (o .:? "thumbnail") <*> (o .:? "presentationParams")
                     <*> (o .:? "isCurated")
                     <*> (o .:? "authorName")
                     <*> (o .:? "remixInfo")
                     <*> (o .:? "formats" .!= mempty)
                     <*> (o .:? "visibility")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "license")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Asset where
        toJSON Asset'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _aThumbnail,
                  ("presentationParams" .=) <$> _aPresentationParams,
                  ("isCurated" .=) <$> _aIsCurated,
                  ("authorName" .=) <$> _aAuthorName,
                  ("remixInfo" .=) <$> _aRemixInfo,
                  ("formats" .=) <$> _aFormats,
                  ("visibility" .=) <$> _aVisibility,
                  ("updateTime" .=) <$> _aUpdateTime,
                  ("name" .=) <$> _aName,
                  ("metadata" .=) <$> _aMetadata,
                  ("displayName" .=) <$> _aDisplayName,
                  ("license" .=) <$> _aLicense,
                  ("description" .=) <$> _aDescription,
                  ("createTime" .=) <$> _aCreateTime])

-- | The same asset can be represented in different formats, for example, a
-- [WaveFront .obj](\/\/en.wikipedia.org\/wiki\/Wavefront_.obj_file) file
-- with its corresponding .mtl file or a [Khronos
-- glTF](\/\/www.khronos.org\/gltf) file with its corresponding .glb binary
-- data. A format refers to a specific representation of an asset and
-- contains all information needed to retrieve and describe this
-- representation.
--
-- /See:/ 'format' smart constructor.
data Format =
  Format'
    { _fRoot :: !(Maybe File)
    , _fResources :: !(Maybe [File])
    , _fFormatComplexity :: !(Maybe FormatComplexity)
    , _fFormatType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Format' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fRoot'
--
-- * 'fResources'
--
-- * 'fFormatComplexity'
--
-- * 'fFormatType'
format
    :: Format
format =
  Format'
    { _fRoot = Nothing
    , _fResources = Nothing
    , _fFormatComplexity = Nothing
    , _fFormatType = Nothing
    }


-- | The root of the file hierarchy. This will always be populated. For some
-- format_types - such as \`TILT\`, which are self-contained - this is all
-- of the data. Other types - such as \`OBJ\` - often reference other data
-- elements. These are contained in the resources field.
fRoot :: Lens' Format (Maybe File)
fRoot = lens _fRoot (\ s a -> s{_fRoot = a})

-- | A list of dependencies of the root element. May include, but is not
-- limited to, materials, textures, and shader programs.
fResources :: Lens' Format [File]
fResources
  = lens _fResources (\ s a -> s{_fResources = a}) .
      _Default
      . _Coerce

-- | Complexity stats about this representation of the asset.
fFormatComplexity :: Lens' Format (Maybe FormatComplexity)
fFormatComplexity
  = lens _fFormatComplexity
      (\ s a -> s{_fFormatComplexity = a})

-- | A short string that identifies the format type of this representation.
-- Possible values are: \`FBX\`, \`GLTF\`, \`GLTF2\`, \`OBJ\`, and
-- \`TILT\`.
fFormatType :: Lens' Format (Maybe Text)
fFormatType
  = lens _fFormatType (\ s a -> s{_fFormatType = a})

instance FromJSON Format where
        parseJSON
          = withObject "Format"
              (\ o ->
                 Format' <$>
                   (o .:? "root") <*> (o .:? "resources" .!= mempty) <*>
                     (o .:? "formatComplexity")
                     <*> (o .:? "formatType"))

instance ToJSON Format where
        toJSON Format'{..}
          = object
              (catMaybes
                 [("root" .=) <$> _fRoot,
                  ("resources" .=) <$> _fResources,
                  ("formatComplexity" .=) <$> _fFormatComplexity,
                  ("formatType" .=) <$> _fFormatType])

-- | A message generated by the asset import process.
--
-- /See:/ 'assetImportMessage' smart constructor.
data AssetImportMessage =
  AssetImportMessage'
    { _aimObjParseError :: !(Maybe ObjParseError)
    , _aimFilePath :: !(Maybe Text)
    , _aimImageError :: !(Maybe ImageError)
    , _aimCode :: !(Maybe AssetImportMessageCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssetImportMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aimObjParseError'
--
-- * 'aimFilePath'
--
-- * 'aimImageError'
--
-- * 'aimCode'
assetImportMessage
    :: AssetImportMessage
assetImportMessage =
  AssetImportMessage'
    { _aimObjParseError = Nothing
    , _aimFilePath = Nothing
    , _aimImageError = Nothing
    , _aimCode = Nothing
    }


-- | An optional OBJ parse error. Only present for OBJ_PARSE_ERROR.
aimObjParseError :: Lens' AssetImportMessage (Maybe ObjParseError)
aimObjParseError
  = lens _aimObjParseError
      (\ s a -> s{_aimObjParseError = a})

-- | An optional file path. Only present for those error codes that specify
-- it.
aimFilePath :: Lens' AssetImportMessage (Maybe Text)
aimFilePath
  = lens _aimFilePath (\ s a -> s{_aimFilePath = a})

-- | An optional image error. Only present for INVALID_IMAGE_FILE.
aimImageError :: Lens' AssetImportMessage (Maybe ImageError)
aimImageError
  = lens _aimImageError
      (\ s a -> s{_aimImageError = a})

-- | The code associated with this message.
aimCode :: Lens' AssetImportMessage (Maybe AssetImportMessageCode)
aimCode = lens _aimCode (\ s a -> s{_aimCode = a})

instance FromJSON AssetImportMessage where
        parseJSON
          = withObject "AssetImportMessage"
              (\ o ->
                 AssetImportMessage' <$>
                   (o .:? "objParseError") <*> (o .:? "filePath") <*>
                     (o .:? "imageError")
                     <*> (o .:? "code"))

instance ToJSON AssetImportMessage where
        toJSON AssetImportMessage'{..}
          = object
              (catMaybes
                 [("objParseError" .=) <$> _aimObjParseError,
                  ("filePath" .=) <$> _aimFilePath,
                  ("imageError" .=) <$> _aimImageError,
                  ("code" .=) <$> _aimCode])

-- | A response message from a request to startImport. This is returned in
-- the response field of the Operation.
--
-- /See:/ 'startAssetImportResponse' smart constructor.
data StartAssetImportResponse =
  StartAssetImportResponse'
    { _sairPublishURL :: !(Maybe Text)
    , _sairAssetImportMessages :: !(Maybe [AssetImportMessage])
    , _sairAssetImportId :: !(Maybe Text)
    , _sairAssetId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartAssetImportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sairPublishURL'
--
-- * 'sairAssetImportMessages'
--
-- * 'sairAssetImportId'
--
-- * 'sairAssetId'
startAssetImportResponse
    :: StartAssetImportResponse
startAssetImportResponse =
  StartAssetImportResponse'
    { _sairPublishURL = Nothing
    , _sairAssetImportMessages = Nothing
    , _sairAssetImportId = Nothing
    , _sairAssetId = Nothing
    }


-- | The publish URL for the asset.
sairPublishURL :: Lens' StartAssetImportResponse (Maybe Text)
sairPublishURL
  = lens _sairPublishURL
      (\ s a -> s{_sairPublishURL = a})

-- | The message from the asset import. This will contain any warnings (or -
-- in the case of failure - errors) that occurred during import.
sairAssetImportMessages :: Lens' StartAssetImportResponse [AssetImportMessage]
sairAssetImportMessages
  = lens _sairAssetImportMessages
      (\ s a -> s{_sairAssetImportMessages = a})
      . _Default
      . _Coerce

-- | The id of the asset import.
sairAssetImportId :: Lens' StartAssetImportResponse (Maybe Text)
sairAssetImportId
  = lens _sairAssetImportId
      (\ s a -> s{_sairAssetImportId = a})

-- | The id of newly created asset. If this is empty when the operation is
-- complete it means the import failed. Please refer to the
-- assetImportMessages field to understand what went wrong.
sairAssetId :: Lens' StartAssetImportResponse (Maybe Text)
sairAssetId
  = lens _sairAssetId (\ s a -> s{_sairAssetId = a})

instance FromJSON StartAssetImportResponse where
        parseJSON
          = withObject "StartAssetImportResponse"
              (\ o ->
                 StartAssetImportResponse' <$>
                   (o .:? "publishUrl") <*>
                     (o .:? "assetImportMessages" .!= mempty)
                     <*> (o .:? "assetImportId")
                     <*> (o .:? "assetId"))

instance ToJSON StartAssetImportResponse where
        toJSON StartAssetImportResponse'{..}
          = object
              (catMaybes
                 [("publishUrl" .=) <$> _sairPublishURL,
                  ("assetImportMessages" .=) <$>
                    _sairAssetImportMessages,
                  ("assetImportId" .=) <$> _sairAssetImportId,
                  ("assetId" .=) <$> _sairAssetId])

-- | A message resulting from reading an image file.
--
-- /See:/ 'imageError' smart constructor.
data ImageError =
  ImageError'
    { _ieFilePath :: !(Maybe Text)
    , _ieCode :: !(Maybe ImageErrorCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieFilePath'
--
-- * 'ieCode'
imageError
    :: ImageError
imageError = ImageError' {_ieFilePath = Nothing, _ieCode = Nothing}


-- | The file path in the import of the image that was rejected.
ieFilePath :: Lens' ImageError (Maybe Text)
ieFilePath
  = lens _ieFilePath (\ s a -> s{_ieFilePath = a})

-- | The type of image error encountered. Optional for older image errors.
ieCode :: Lens' ImageError (Maybe ImageErrorCode)
ieCode = lens _ieCode (\ s a -> s{_ieCode = a})

instance FromJSON ImageError where
        parseJSON
          = withObject "ImageError"
              (\ o ->
                 ImageError' <$>
                   (o .:? "filePath") <*> (o .:? "code"))

instance ToJSON ImageError where
        toJSON ImageError'{..}
          = object
              (catMaybes
                 [("filePath" .=) <$> _ieFilePath,
                  ("code" .=) <$> _ieCode])

-- | Information on the complexity of this Format.
--
-- /See:/ 'formatComplexity' smart constructor.
data FormatComplexity =
  FormatComplexity'
    { _fcTriangleCount :: !(Maybe (Textual Int64))
    , _fcLodHint :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FormatComplexity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcTriangleCount'
--
-- * 'fcLodHint'
formatComplexity
    :: FormatComplexity
formatComplexity =
  FormatComplexity' {_fcTriangleCount = Nothing, _fcLodHint = Nothing}


-- | The estimated number of triangles.
fcTriangleCount :: Lens' FormatComplexity (Maybe Int64)
fcTriangleCount
  = lens _fcTriangleCount
      (\ s a -> s{_fcTriangleCount = a})
      . mapping _Coerce

-- | A non-negative integer that represents the level of detail (LOD) of this
-- format relative to other formats of the same asset with the same
-- format_type. This hint allows you to sort formats from the most-detailed
-- (0) to least-detailed (integers greater than 0).
fcLodHint :: Lens' FormatComplexity (Maybe Int32)
fcLodHint
  = lens _fcLodHint (\ s a -> s{_fcLodHint = a}) .
      mapping _Coerce

instance FromJSON FormatComplexity where
        parseJSON
          = withObject "FormatComplexity"
              (\ o ->
                 FormatComplexity' <$>
                   (o .:? "triangleCount") <*> (o .:? "lodHint"))

instance ToJSON FormatComplexity where
        toJSON FormatComplexity'{..}
          = object
              (catMaybes
                 [("triangleCount" .=) <$> _fcTriangleCount,
                  ("lodHint" .=) <$> _fcLodHint])

-- | A response message from a request to list.
--
-- /See:/ 'listAssetsResponse' smart constructor.
data ListAssetsResponse =
  ListAssetsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larTotalSize :: !(Maybe (Textual Int32))
    , _larAssets :: !(Maybe [Asset])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larTotalSize'
--
-- * 'larAssets'
listAssetsResponse
    :: ListAssetsResponse
listAssetsResponse =
  ListAssetsResponse'
    {_larNextPageToken = Nothing, _larTotalSize = Nothing, _larAssets = Nothing}


-- | The continuation token for retrieving the next page. If empty, indicates
-- that there are no more pages. To get the next page, submit the same
-- request specifying this value as the page_token.
larNextPageToken :: Lens' ListAssetsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The total number of assets in the list, without pagination.
larTotalSize :: Lens' ListAssetsResponse (Maybe Int32)
larTotalSize
  = lens _larTotalSize (\ s a -> s{_larTotalSize = a})
      . mapping _Coerce

-- | A list of assets that match the criteria specified in the request.
larAssets :: Lens' ListAssetsResponse [Asset]
larAssets
  = lens _larAssets (\ s a -> s{_larAssets = a}) .
      _Default
      . _Coerce

instance FromJSON ListAssetsResponse where
        parseJSON
          = withObject "ListAssetsResponse"
              (\ o ->
                 ListAssetsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "assets" .!= mempty))

instance ToJSON ListAssetsResponse where
        toJSON ListAssetsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("totalSize" .=) <$> _larTotalSize,
                  ("assets" .=) <$> _larAssets])

-- | A response message from a request to list.
--
-- /See:/ 'listUserAssetsResponse' smart constructor.
data ListUserAssetsResponse =
  ListUserAssetsResponse'
    { _luarNextPageToken :: !(Maybe Text)
    , _luarTotalSize :: !(Maybe (Textual Int32))
    , _luarUserAssets :: !(Maybe [UserAsset])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUserAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luarNextPageToken'
--
-- * 'luarTotalSize'
--
-- * 'luarUserAssets'
listUserAssetsResponse
    :: ListUserAssetsResponse
listUserAssetsResponse =
  ListUserAssetsResponse'
    { _luarNextPageToken = Nothing
    , _luarTotalSize = Nothing
    , _luarUserAssets = Nothing
    }


-- | The continuation token for retrieving the next page. If empty, indicates
-- that there are no more pages. To get the next page, submit the same
-- request specifying this value as the page_token.
luarNextPageToken :: Lens' ListUserAssetsResponse (Maybe Text)
luarNextPageToken
  = lens _luarNextPageToken
      (\ s a -> s{_luarNextPageToken = a})

-- | The total number of assets in the list, without pagination.
luarTotalSize :: Lens' ListUserAssetsResponse (Maybe Int32)
luarTotalSize
  = lens _luarTotalSize
      (\ s a -> s{_luarTotalSize = a})
      . mapping _Coerce

-- | A list of UserAssets matching the request.
luarUserAssets :: Lens' ListUserAssetsResponse [UserAsset]
luarUserAssets
  = lens _luarUserAssets
      (\ s a -> s{_luarUserAssets = a})
      . _Default
      . _Coerce

instance FromJSON ListUserAssetsResponse where
        parseJSON
          = withObject "ListUserAssetsResponse"
              (\ o ->
                 ListUserAssetsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "userAssets" .!= mempty))

instance ToJSON ListUserAssetsResponse where
        toJSON ListUserAssetsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _luarNextPageToken,
                  ("totalSize" .=) <$> _luarTotalSize,
                  ("userAssets" .=) <$> _luarUserAssets])

-- | Represents a file in Poly, which can be a root, resource, or thumbnail
-- file.
--
-- /See:/ 'file' smart constructor.
data File =
  File'
    { _fURL :: !(Maybe Text)
    , _fRelativePath :: !(Maybe Text)
    , _fContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fURL'
--
-- * 'fRelativePath'
--
-- * 'fContentType'
file
    :: File
file =
  File' {_fURL = Nothing, _fRelativePath = Nothing, _fContentType = Nothing}


-- | The URL where the file data can be retrieved.
fURL :: Lens' File (Maybe Text)
fURL = lens _fURL (\ s a -> s{_fURL = a})

-- | The path of the resource file relative to the root file. For root or
-- thumbnail files, this is just the filename.
fRelativePath :: Lens' File (Maybe Text)
fRelativePath
  = lens _fRelativePath
      (\ s a -> s{_fRelativePath = a})

-- | The MIME content-type, such as \`image\/png\`. For more information, see
-- [MIME
-- types](\/\/developer.mozilla.org\/en-US\/docs\/Web\/HTTP\/Basics_of_HTTP\/MIME_types).
fContentType :: Lens' File (Maybe Text)
fContentType
  = lens _fContentType (\ s a -> s{_fContentType = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File' <$>
                   (o .:? "url") <*> (o .:? "relativePath") <*>
                     (o .:? "contentType"))

instance ToJSON File where
        toJSON File'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _fURL,
                  ("relativePath" .=) <$> _fRelativePath,
                  ("contentType" .=) <$> _fContentType])

-- | Data about the user\'s asset.
--
-- /See:/ 'userAsset' smart constructor.
newtype UserAsset =
  UserAsset'
    { _uaAsset :: Maybe Asset
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaAsset'
userAsset
    :: UserAsset
userAsset = UserAsset' {_uaAsset = Nothing}


-- | An Asset.
uaAsset :: Lens' UserAsset (Maybe Asset)
uaAsset = lens _uaAsset (\ s a -> s{_uaAsset = a})

instance FromJSON UserAsset where
        parseJSON
          = withObject "UserAsset"
              (\ o -> UserAsset' <$> (o .:? "asset"))

instance ToJSON UserAsset where
        toJSON UserAsset'{..}
          = object (catMaybes [("asset" .=) <$> _uaAsset])
