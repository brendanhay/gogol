{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Poly.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Poly.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The type of image error encountered. Optional for older image errors.
data ImageErrorCode
    = CodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Unknown error code.
    | InvalidImage
      -- ^ @INVALID_IMAGE@
      -- We were unable to read the image file.
    | ImageTooBig
      -- ^ @IMAGE_TOO_BIG@
      -- The image size is too large.
    | WrongImageType
      -- ^ @WRONG_IMAGE_TYPE@
      -- The image data does not match the expected MIME type of the image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageErrorCode

instance FromHttpApiData ImageErrorCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right CodeUnspecified
        "INVALID_IMAGE" -> Right InvalidImage
        "IMAGE_TOO_BIG" -> Right ImageTooBig
        "WRONG_IMAGE_TYPE" -> Right WrongImageType
        x -> Left ("Unable to parse ImageErrorCode from: " <> x)

instance ToHttpApiData ImageErrorCode where
    toQueryParam = \case
        CodeUnspecified -> "CODE_UNSPECIFIED"
        InvalidImage -> "INVALID_IMAGE"
        ImageTooBig -> "IMAGE_TOO_BIG"
        WrongImageType -> "WRONG_IMAGE_TYPE"

instance FromJSON ImageErrorCode where
    parseJSON = parseJSONText "ImageErrorCode"

instance ToJSON ImageErrorCode where
    toJSON = toJSONText

-- | The visibility of the assets to be returned. Defaults to
-- VISIBILITY_UNSPECIFIED which returns all assets.
data UsersAssetsListVisibility
    = VisibilityUnspecified
      -- ^ @VISIBILITY_UNSPECIFIED@
      -- No visibility specified. Returns all assets.
    | Published
      -- ^ @PUBLISHED@
      -- Returns only published assets.
    | Private
      -- ^ @PRIVATE@
      -- Returns only private assets.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersAssetsListVisibility

instance FromHttpApiData UsersAssetsListVisibility where
    parseQueryParam = \case
        "VISIBILITY_UNSPECIFIED" -> Right VisibilityUnspecified
        "PUBLISHED" -> Right Published
        "PRIVATE" -> Right Private
        x -> Left ("Unable to parse UsersAssetsListVisibility from: " <> x)

instance ToHttpApiData UsersAssetsListVisibility where
    toQueryParam = \case
        VisibilityUnspecified -> "VISIBILITY_UNSPECIFIED"
        Published -> "PUBLISHED"
        Private -> "PRIVATE"

instance FromJSON UsersAssetsListVisibility where
    parseJSON = parseJSONText "UsersAssetsListVisibility"

instance ToJSON UsersAssetsListVisibility where
    toJSON = toJSONText

-- | The code associated with this message.
data AssetImportMessageCode
    = AIMCCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Unknown error code.
    | AIMCNoImportableFile
      -- ^ @NO_IMPORTABLE_FILE@
      -- The asset import did not include any file that we can import (i.e. an
      -- OBJ file).
    | AIMCEmptyModel
      -- ^ @EMPTY_MODEL@
      -- When generating the preview for the import, no geometry was found.
    | AIMCObjParseError
      -- ^ @OBJ_PARSE_ERROR@
      -- A problem was encountered while parsing the OBJ file. The converter
      -- makes a \'best effort\' attempt to continue when encountering such
      -- issues. In some cases the resulting preview model may still be
      -- acceptable. The details can be found in the parse error message.
    | AIMCExpired
      -- ^ @EXPIRED@
      -- The importer was not able to import the model before the expiration
      -- time.
    | AIMCImageError
      -- ^ @IMAGE_ERROR@
      -- The importer encountered a problem reading an image file.
    | AIMCExtraFilesWithArchive
      -- ^ @EXTRA_FILES_WITH_ARCHIVE@
      -- Multiple files were encountered in addition to a ZIP archive. When
      -- uploading an archive only one file is permitted.
    | AIMCDefaultMaterials
      -- ^ @DEFAULT_MATERIALS@
      -- Default materials are used in the model. This means that one or more
      -- faces is using default materials either because no usemtl statement was
      -- specified or because the requested material was not found due to a
      -- missing material file or bad material name. This does not cover the case
      -- of missing textures.
    | AIMCFatalError
      -- ^ @FATAL_ERROR@
      -- The importer encountered a fatal error and was unable to import the
      -- model.
    | AIMCInvalidElementType
      -- ^ @INVALID_ELEMENT_TYPE@
      -- The import includes a file of an unsupported element type. The file path
      -- is specified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetImportMessageCode

instance FromHttpApiData AssetImportMessageCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right AIMCCodeUnspecified
        "NO_IMPORTABLE_FILE" -> Right AIMCNoImportableFile
        "EMPTY_MODEL" -> Right AIMCEmptyModel
        "OBJ_PARSE_ERROR" -> Right AIMCObjParseError
        "EXPIRED" -> Right AIMCExpired
        "IMAGE_ERROR" -> Right AIMCImageError
        "EXTRA_FILES_WITH_ARCHIVE" -> Right AIMCExtraFilesWithArchive
        "DEFAULT_MATERIALS" -> Right AIMCDefaultMaterials
        "FATAL_ERROR" -> Right AIMCFatalError
        "INVALID_ELEMENT_TYPE" -> Right AIMCInvalidElementType
        x -> Left ("Unable to parse AssetImportMessageCode from: " <> x)

instance ToHttpApiData AssetImportMessageCode where
    toQueryParam = \case
        AIMCCodeUnspecified -> "CODE_UNSPECIFIED"
        AIMCNoImportableFile -> "NO_IMPORTABLE_FILE"
        AIMCEmptyModel -> "EMPTY_MODEL"
        AIMCObjParseError -> "OBJ_PARSE_ERROR"
        AIMCExpired -> "EXPIRED"
        AIMCImageError -> "IMAGE_ERROR"
        AIMCExtraFilesWithArchive -> "EXTRA_FILES_WITH_ARCHIVE"
        AIMCDefaultMaterials -> "DEFAULT_MATERIALS"
        AIMCFatalError -> "FATAL_ERROR"
        AIMCInvalidElementType -> "INVALID_ELEMENT_TYPE"

instance FromJSON AssetImportMessageCode where
    parseJSON = parseJSONText "AssetImportMessageCode"

instance ToJSON AssetImportMessageCode where
    toJSON = toJSONText

-- | The visibility of the asset and who can access it.
data AssetVisibility
    = AVVisibilityUnspecified
      -- ^ @VISIBILITY_UNSPECIFIED@
      -- Unknown (and invalid) visibility.
    | AVPrivate
      -- ^ @PRIVATE@
      -- Access to the asset and its underlying files and resources is restricted
      -- to the author. **Authentication:** You must supply an OAuth token that
      -- corresponds to the author\'s account.
    | AVUnListed
      -- ^ @UNLISTED@
      -- Access to the asset and its underlying files and resources is available
      -- to anyone with the asset\'s name. Unlisted assets are **not** returned
      -- by List Assets.
    | AVPublic
      -- ^ @PUBLIC@
      -- Access to the asset and its underlying files and resources is available
      -- to anyone.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetVisibility

instance FromHttpApiData AssetVisibility where
    parseQueryParam = \case
        "VISIBILITY_UNSPECIFIED" -> Right AVVisibilityUnspecified
        "PRIVATE" -> Right AVPrivate
        "UNLISTED" -> Right AVUnListed
        "PUBLIC" -> Right AVPublic
        x -> Left ("Unable to parse AssetVisibility from: " <> x)

instance ToHttpApiData AssetVisibility where
    toQueryParam = \case
        AVVisibilityUnspecified -> "VISIBILITY_UNSPECIFIED"
        AVPrivate -> "PRIVATE"
        AVUnListed -> "UNLISTED"
        AVPublic -> "PUBLIC"

instance FromJSON AssetVisibility where
    parseJSON = parseJSONText "AssetVisibility"

instance ToJSON AssetVisibility where
    toJSON = toJSONText

-- | The type of problem found (required).
data ObjParseErrorCode
    = OPECCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Unknown error code.
    | OPECInconsistentVertexRefs
      -- ^ @INCONSISTENT_VERTEX_REFS@
      -- Vertex references are specified in an inconsistent style for a face
      -- (e.g. some vertices specify texture vertices but some don\'t).
    | OPECInvalidCommand
      -- ^ @INVALID_COMMAND@
      -- The command is invalid.
    | OPECInvalidNumber
      -- ^ @INVALID_NUMBER@
      -- A invalid number was specified.
    | OPECInvalidVertexRef
      -- ^ @INVALID_VERTEX_REF@
      -- An invalid vertex reference was specified.
    | OPECMissingGeometricVertex
      -- ^ @MISSING_GEOMETRIC_VERTEX@
      -- A vertex reference does not specify a geometric vertex.
    | OPECMissingToken
      -- ^ @MISSING_TOKEN@
      -- An expected token was not found.
    | OPECTooFewDimensions
      -- ^ @TOO_FEW_DIMENSIONS@
      -- The vertex specified too few dimensions for its usage.
    | OPECTooFewVertices
      -- ^ @TOO_FEW_VERTICES@
      -- The face specified too few vertices.
    | OPECTooManyDimensions
      -- ^ @TOO_MANY_DIMENSIONS@
      -- The vertex specified too many dimensions for its usage.
    | OPECUnsupportedCommand
      -- ^ @UNSUPPORTED_COMMAND@
      -- This command is a valid OBJ command but is not supported. This error is
      -- only generated for the first instance of such a command.
    | OPECUnusedTokens
      -- ^ @UNUSED_TOKENS@
      -- This line ended with unparsed token characters.
    | OPECVertexNotFound
      -- ^ @VERTEX_NOT_FOUND@
      -- The specified vertex was not found.
    | OPECNumberOutOfRange
      -- ^ @NUMBER_OUT_OF_RANGE@
      -- The specified number was too large or small for its usage.
    | OPECInvalidValue
      -- ^ @INVALID_VALUE@
      -- The specified parameter value was not recognized.
    | OPECInvalidTextureOption
      -- ^ @INVALID_TEXTURE_OPTION@
      -- The specified texture option is not valid.
    | OPECTooManyProblems
      -- ^ @TOO_MANY_PROBLEMS@
      -- The maximum number of problems to report was reached. Parsing continues,
      -- but further problems will be ignored.
    | OPECMissingFileName
      -- ^ @MISSING_FILE_NAME@
      -- An expected file name was not specified.
    | OPECFileNotFound
      -- ^ @FILE_NOT_FOUND@
      -- The specified file was not found in the import.
    | OPECUnknownMaterial
      -- ^ @UNKNOWN_MATERIAL@
      -- The specified material was not found in any material definition in the
      -- import.
    | OPECNoMaterialDefined
      -- ^ @NO_MATERIAL_DEFINED@
      -- Material parameters were specified before the first material definition.
    | OPECInvalidSmoothingGroup
      -- ^ @INVALID_SMOOTHING_GROUP@
      -- The smoothing group is not valid.
    | OPECMissingVertexColors
      -- ^ @MISSING_VERTEX_COLORS@
      -- Vertex colors were specified for only some vertices of a face.
    | OPECFileSubstitution
      -- ^ @FILE_SUBSTITUTION@
      -- A missing file was found at a different file path.
    | OPECLineTooLong
      -- ^ @LINE_TOO_LONG@
      -- A line in an OBJ or MTL file exceeded the maximum line length.
    | OPECInvalidFilePath
      -- ^ @INVALID_FILE_PATH@
      -- The file path was invalid. Only relative paths are supported.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ObjParseErrorCode

instance FromHttpApiData ObjParseErrorCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right OPECCodeUnspecified
        "INCONSISTENT_VERTEX_REFS" -> Right OPECInconsistentVertexRefs
        "INVALID_COMMAND" -> Right OPECInvalidCommand
        "INVALID_NUMBER" -> Right OPECInvalidNumber
        "INVALID_VERTEX_REF" -> Right OPECInvalidVertexRef
        "MISSING_GEOMETRIC_VERTEX" -> Right OPECMissingGeometricVertex
        "MISSING_TOKEN" -> Right OPECMissingToken
        "TOO_FEW_DIMENSIONS" -> Right OPECTooFewDimensions
        "TOO_FEW_VERTICES" -> Right OPECTooFewVertices
        "TOO_MANY_DIMENSIONS" -> Right OPECTooManyDimensions
        "UNSUPPORTED_COMMAND" -> Right OPECUnsupportedCommand
        "UNUSED_TOKENS" -> Right OPECUnusedTokens
        "VERTEX_NOT_FOUND" -> Right OPECVertexNotFound
        "NUMBER_OUT_OF_RANGE" -> Right OPECNumberOutOfRange
        "INVALID_VALUE" -> Right OPECInvalidValue
        "INVALID_TEXTURE_OPTION" -> Right OPECInvalidTextureOption
        "TOO_MANY_PROBLEMS" -> Right OPECTooManyProblems
        "MISSING_FILE_NAME" -> Right OPECMissingFileName
        "FILE_NOT_FOUND" -> Right OPECFileNotFound
        "UNKNOWN_MATERIAL" -> Right OPECUnknownMaterial
        "NO_MATERIAL_DEFINED" -> Right OPECNoMaterialDefined
        "INVALID_SMOOTHING_GROUP" -> Right OPECInvalidSmoothingGroup
        "MISSING_VERTEX_COLORS" -> Right OPECMissingVertexColors
        "FILE_SUBSTITUTION" -> Right OPECFileSubstitution
        "LINE_TOO_LONG" -> Right OPECLineTooLong
        "INVALID_FILE_PATH" -> Right OPECInvalidFilePath
        x -> Left ("Unable to parse ObjParseErrorCode from: " <> x)

instance ToHttpApiData ObjParseErrorCode where
    toQueryParam = \case
        OPECCodeUnspecified -> "CODE_UNSPECIFIED"
        OPECInconsistentVertexRefs -> "INCONSISTENT_VERTEX_REFS"
        OPECInvalidCommand -> "INVALID_COMMAND"
        OPECInvalidNumber -> "INVALID_NUMBER"
        OPECInvalidVertexRef -> "INVALID_VERTEX_REF"
        OPECMissingGeometricVertex -> "MISSING_GEOMETRIC_VERTEX"
        OPECMissingToken -> "MISSING_TOKEN"
        OPECTooFewDimensions -> "TOO_FEW_DIMENSIONS"
        OPECTooFewVertices -> "TOO_FEW_VERTICES"
        OPECTooManyDimensions -> "TOO_MANY_DIMENSIONS"
        OPECUnsupportedCommand -> "UNSUPPORTED_COMMAND"
        OPECUnusedTokens -> "UNUSED_TOKENS"
        OPECVertexNotFound -> "VERTEX_NOT_FOUND"
        OPECNumberOutOfRange -> "NUMBER_OUT_OF_RANGE"
        OPECInvalidValue -> "INVALID_VALUE"
        OPECInvalidTextureOption -> "INVALID_TEXTURE_OPTION"
        OPECTooManyProblems -> "TOO_MANY_PROBLEMS"
        OPECMissingFileName -> "MISSING_FILE_NAME"
        OPECFileNotFound -> "FILE_NOT_FOUND"
        OPECUnknownMaterial -> "UNKNOWN_MATERIAL"
        OPECNoMaterialDefined -> "NO_MATERIAL_DEFINED"
        OPECInvalidSmoothingGroup -> "INVALID_SMOOTHING_GROUP"
        OPECMissingVertexColors -> "MISSING_VERTEX_COLORS"
        OPECFileSubstitution -> "FILE_SUBSTITUTION"
        OPECLineTooLong -> "LINE_TOO_LONG"
        OPECInvalidFilePath -> "INVALID_FILE_PATH"

instance FromJSON ObjParseErrorCode where
    parseJSON = parseJSONText "ObjParseErrorCode"

instance ToJSON ObjParseErrorCode where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The license under which the author has made the asset available for use,
-- if any.
data AssetLicense
    = Unknown
      -- ^ @UNKNOWN@
      -- Unknown license value.
    | CreativeCommonsBy
      -- ^ @CREATIVE_COMMONS_BY@
      -- Creative Commons CC-BY 3.0.
      -- https:\/\/creativecommons.org\/licenses\/by\/3.0\/
    | AllRightsReserved
      -- ^ @ALL_RIGHTS_RESERVED@
      -- Unlicensed: All Rights Reserved by the author. Unlicensed assets are
      -- **not** returned by List Assets.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetLicense

instance FromHttpApiData AssetLicense where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "CREATIVE_COMMONS_BY" -> Right CreativeCommonsBy
        "ALL_RIGHTS_RESERVED" -> Right AllRightsReserved
        x -> Left ("Unable to parse AssetLicense from: " <> x)

instance ToHttpApiData AssetLicense where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        CreativeCommonsBy -> "CREATIVE_COMMONS_BY"
        AllRightsReserved -> "ALL_RIGHTS_RESERVED"

instance FromJSON AssetLicense where
    parseJSON = parseJSONText "AssetLicense"

instance ToJSON AssetLicense where
    toJSON = toJSONText

-- | The materials\' diffuse\/albedo color. This does not apply to vertex
-- colors or texture maps.
data PresentationParamsColorSpace
    = PPCSUnknown
      -- ^ @UNKNOWN@
      -- Invalid color value.
    | PPCSLinear
      -- ^ @LINEAR@
      -- Linear color values. Default.
    | PPCSGamma
      -- ^ @GAMMA@
      -- Colors should be converted to linear by assuming gamma = 2.0.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PresentationParamsColorSpace

instance FromHttpApiData PresentationParamsColorSpace where
    parseQueryParam = \case
        "UNKNOWN" -> Right PPCSUnknown
        "LINEAR" -> Right PPCSLinear
        "GAMMA" -> Right PPCSGamma
        x -> Left ("Unable to parse PresentationParamsColorSpace from: " <> x)

instance ToHttpApiData PresentationParamsColorSpace where
    toQueryParam = \case
        PPCSUnknown -> "UNKNOWN"
        PPCSLinear -> "LINEAR"
        PPCSGamma -> "GAMMA"

instance FromJSON PresentationParamsColorSpace where
    parseJSON = parseJSONText "PresentationParamsColorSpace"

instance ToJSON PresentationParamsColorSpace where
    toJSON = toJSONText

-- | Returns assets that are of the specified complexity or less. Defaults to
-- COMPLEX. For example, a request for MEDIUM assets also includes SIMPLE
-- assets.
data AssetsListMaxComplexity
    = ComplexityUnspecified
      -- ^ @COMPLEXITY_UNSPECIFIED@
      -- No complexity specified. This is equivalent to omitting the filter.
    | Complex
      -- ^ @COMPLEX@
      -- Highly-complex.
    | Medium
      -- ^ @MEDIUM@
      -- Averagely-complex.
    | Simple
      -- ^ @SIMPLE@
      -- Simple.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetsListMaxComplexity

instance FromHttpApiData AssetsListMaxComplexity where
    parseQueryParam = \case
        "COMPLEXITY_UNSPECIFIED" -> Right ComplexityUnspecified
        "COMPLEX" -> Right Complex
        "MEDIUM" -> Right Medium
        "SIMPLE" -> Right Simple
        x -> Left ("Unable to parse AssetsListMaxComplexity from: " <> x)

instance ToHttpApiData AssetsListMaxComplexity where
    toQueryParam = \case
        ComplexityUnspecified -> "COMPLEXITY_UNSPECIFIED"
        Complex -> "COMPLEX"
        Medium -> "MEDIUM"
        Simple -> "SIMPLE"

instance FromJSON AssetsListMaxComplexity where
    parseJSON = parseJSONText "AssetsListMaxComplexity"

instance ToJSON AssetsListMaxComplexity where
    toJSON = toJSONText
