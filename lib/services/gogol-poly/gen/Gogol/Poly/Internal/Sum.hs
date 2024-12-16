{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Poly.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Poly.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Asset_License
    Asset_License
      (
        Asset_License_Unknown,
        Asset_License_CREATIVECOMMONSBY,
        Asset_License_ALLRIGHTSRESERVED,
        ..
      ),

    -- * Asset_Visibility
    Asset_Visibility
      (
        Asset_Visibility_VISIBILITYUNSPECIFIED,
        Asset_Visibility_Private,
        Asset_Visibility_Unlisted,
        Asset_Visibility_Public,
        ..
      ),

    -- * AssetImportMessage_Code
    AssetImportMessage_Code
      (
        AssetImportMessage_Code_CODEUNSPECIFIED,
        AssetImportMessage_Code_NOIMPORTABLEFILE,
        AssetImportMessage_Code_EMPTYMODEL,
        AssetImportMessage_Code_OBJPARSEERROR,
        AssetImportMessage_Code_Expired,
        AssetImportMessage_Code_IMAGEERROR,
        AssetImportMessage_Code_EXTRAFILESWITHARCHIVE,
        AssetImportMessage_Code_DEFAULTMATERIALS,
        AssetImportMessage_Code_FATALERROR,
        AssetImportMessage_Code_INVALIDELEMENTTYPE,
        ..
      ),

    -- * ImageError_Code
    ImageError_Code
      (
        ImageError_Code_CODEUNSPECIFIED,
        ImageError_Code_INVALIDIMAGE,
        ImageError_Code_IMAGETOOBIG,
        ImageError_Code_WRONGIMAGETYPE,
        ..
      ),

    -- * ObjParseError_Code
    ObjParseError_Code
      (
        ObjParseError_Code_CODEUNSPECIFIED,
        ObjParseError_Code_INCONSISTENTVERTEXREFS,
        ObjParseError_Code_INVALIDCOMMAND,
        ObjParseError_Code_INVALIDNUMBER,
        ObjParseError_Code_INVALIDVERTEXREF,
        ObjParseError_Code_MISSINGGEOMETRICVERTEX,
        ObjParseError_Code_MISSINGTOKEN,
        ObjParseError_Code_TOOFEWDIMENSIONS,
        ObjParseError_Code_TOOFEWVERTICES,
        ObjParseError_Code_TOOMANYDIMENSIONS,
        ObjParseError_Code_UNSUPPORTEDCOMMAND,
        ObjParseError_Code_UNUSEDTOKENS,
        ObjParseError_Code_VERTEXNOTFOUND,
        ObjParseError_Code_NUMBEROUTOFRANGE,
        ObjParseError_Code_INVALIDVALUE,
        ObjParseError_Code_INVALIDTEXTUREOPTION,
        ObjParseError_Code_TOOMANYPROBLEMS,
        ObjParseError_Code_MISSINGFILENAME,
        ObjParseError_Code_FILENOTFOUND,
        ObjParseError_Code_UNKNOWNMATERIAL,
        ObjParseError_Code_NOMATERIALDEFINED,
        ObjParseError_Code_INVALIDSMOOTHINGGROUP,
        ObjParseError_Code_MISSINGVERTEXCOLORS,
        ObjParseError_Code_FILESUBSTITUTION,
        ObjParseError_Code_LINETOOLONG,
        ObjParseError_Code_INVALIDFILEPATH,
        ..
      ),

    -- * PresentationParams_ColorSpace
    PresentationParams_ColorSpace
      (
        PresentationParams_ColorSpace_Unknown,
        PresentationParams_ColorSpace_Linear,
        PresentationParams_ColorSpace_Gamma,
        ..
      ),

    -- * AssetsListMaxComplexity
    AssetsListMaxComplexity
      (
        AssetsListMaxComplexity_COMPLEXITYUNSPECIFIED,
        AssetsListMaxComplexity_Complex,
        AssetsListMaxComplexity_Medium,
        AssetsListMaxComplexity_Simple,
        ..
      ),

    -- * UsersAssetsListVisibility
    UsersAssetsListVisibility
      (
        UsersAssetsListVisibility_VISIBILITYUNSPECIFIED,
        UsersAssetsListVisibility_Published,
        UsersAssetsListVisibility_Private,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The license under which the author has made the asset available for use, if any.
newtype Asset_License = Asset_License { fromAsset_License :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown license value.
pattern Asset_License_Unknown :: Asset_License
pattern Asset_License_Unknown = Asset_License "UNKNOWN"

-- | Creative Commons CC-BY 3.0. https:\/\/creativecommons.org\/licenses\/by\/3.0\/
pattern Asset_License_CREATIVECOMMONSBY :: Asset_License
pattern Asset_License_CREATIVECOMMONSBY = Asset_License "CREATIVE_COMMONS_BY"

-- | Unlicensed: All Rights Reserved by the author. Unlicensed assets are __not__ returned by List Assets.
pattern Asset_License_ALLRIGHTSRESERVED :: Asset_License
pattern Asset_License_ALLRIGHTSRESERVED = Asset_License "ALL_RIGHTS_RESERVED"

{-# COMPLETE
  Asset_License_Unknown,
  Asset_License_CREATIVECOMMONSBY,
  Asset_License_ALLRIGHTSRESERVED,
  Asset_License #-}

-- | The visibility of the asset and who can access it.
newtype Asset_Visibility = Asset_Visibility { fromAsset_Visibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown (and invalid) visibility.
pattern Asset_Visibility_VISIBILITYUNSPECIFIED :: Asset_Visibility
pattern Asset_Visibility_VISIBILITYUNSPECIFIED = Asset_Visibility "VISIBILITY_UNSPECIFIED"

-- | Access to the asset and its underlying files and resources is restricted to the author. __Authentication:__ You must supply an OAuth token that corresponds to the author\'s account.
pattern Asset_Visibility_Private :: Asset_Visibility
pattern Asset_Visibility_Private = Asset_Visibility "PRIVATE"

-- | Access to the asset and its underlying files and resources is available to anyone with the asset\'s name. Unlisted assets are __not__ returned by List Assets.
pattern Asset_Visibility_Unlisted :: Asset_Visibility
pattern Asset_Visibility_Unlisted = Asset_Visibility "UNLISTED"

-- | Access to the asset and its underlying files and resources is available to anyone.
pattern Asset_Visibility_Public :: Asset_Visibility
pattern Asset_Visibility_Public = Asset_Visibility "PUBLIC"

{-# COMPLETE
  Asset_Visibility_VISIBILITYUNSPECIFIED,
  Asset_Visibility_Private,
  Asset_Visibility_Unlisted,
  Asset_Visibility_Public,
  Asset_Visibility #-}

-- | The code associated with this message.
newtype AssetImportMessage_Code = AssetImportMessage_Code { fromAssetImportMessage_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown error code.
pattern AssetImportMessage_Code_CODEUNSPECIFIED :: AssetImportMessage_Code
pattern AssetImportMessage_Code_CODEUNSPECIFIED = AssetImportMessage_Code "CODE_UNSPECIFIED"

-- | The asset import did not include any file that we can import (i.e. an OBJ file).
pattern AssetImportMessage_Code_NOIMPORTABLEFILE :: AssetImportMessage_Code
pattern AssetImportMessage_Code_NOIMPORTABLEFILE = AssetImportMessage_Code "NO_IMPORTABLE_FILE"

-- | When generating the preview for the import, no geometry was found.
pattern AssetImportMessage_Code_EMPTYMODEL :: AssetImportMessage_Code
pattern AssetImportMessage_Code_EMPTYMODEL = AssetImportMessage_Code "EMPTY_MODEL"

-- | A problem was encountered while parsing the OBJ file. The converter makes a \'best effort\' attempt to continue when encountering such issues. In some cases the resulting preview model may still be acceptable. The details can be found in the parse error message.
pattern AssetImportMessage_Code_OBJPARSEERROR :: AssetImportMessage_Code
pattern AssetImportMessage_Code_OBJPARSEERROR = AssetImportMessage_Code "OBJ_PARSE_ERROR"

-- | The importer was not able to import the model before the expiration time.
pattern AssetImportMessage_Code_Expired :: AssetImportMessage_Code
pattern AssetImportMessage_Code_Expired = AssetImportMessage_Code "EXPIRED"

-- | The importer encountered a problem reading an image file.
pattern AssetImportMessage_Code_IMAGEERROR :: AssetImportMessage_Code
pattern AssetImportMessage_Code_IMAGEERROR = AssetImportMessage_Code "IMAGE_ERROR"

-- | Multiple files were encountered in addition to a ZIP archive. When uploading an archive only one file is permitted.
pattern AssetImportMessage_Code_EXTRAFILESWITHARCHIVE :: AssetImportMessage_Code
pattern AssetImportMessage_Code_EXTRAFILESWITHARCHIVE = AssetImportMessage_Code "EXTRA_FILES_WITH_ARCHIVE"

-- | Default materials are used in the model. This means that one or more faces is using default materials either because no usemtl statement was specified or because the requested material was not found due to a missing material file or bad material name. This does not cover the case of missing textures.
pattern AssetImportMessage_Code_DEFAULTMATERIALS :: AssetImportMessage_Code
pattern AssetImportMessage_Code_DEFAULTMATERIALS = AssetImportMessage_Code "DEFAULT_MATERIALS"

-- | The importer encountered a fatal error and was unable to import the model.
pattern AssetImportMessage_Code_FATALERROR :: AssetImportMessage_Code
pattern AssetImportMessage_Code_FATALERROR = AssetImportMessage_Code "FATAL_ERROR"

-- | The import includes a file of an unsupported element type. The file path is specified.
pattern AssetImportMessage_Code_INVALIDELEMENTTYPE :: AssetImportMessage_Code
pattern AssetImportMessage_Code_INVALIDELEMENTTYPE = AssetImportMessage_Code "INVALID_ELEMENT_TYPE"

{-# COMPLETE
  AssetImportMessage_Code_CODEUNSPECIFIED,
  AssetImportMessage_Code_NOIMPORTABLEFILE,
  AssetImportMessage_Code_EMPTYMODEL,
  AssetImportMessage_Code_OBJPARSEERROR,
  AssetImportMessage_Code_Expired,
  AssetImportMessage_Code_IMAGEERROR,
  AssetImportMessage_Code_EXTRAFILESWITHARCHIVE,
  AssetImportMessage_Code_DEFAULTMATERIALS,
  AssetImportMessage_Code_FATALERROR,
  AssetImportMessage_Code_INVALIDELEMENTTYPE,
  AssetImportMessage_Code #-}

-- | The type of image error encountered. Optional for older image errors.
newtype ImageError_Code = ImageError_Code { fromImageError_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown error code.
pattern ImageError_Code_CODEUNSPECIFIED :: ImageError_Code
pattern ImageError_Code_CODEUNSPECIFIED = ImageError_Code "CODE_UNSPECIFIED"

-- | We were unable to read the image file.
pattern ImageError_Code_INVALIDIMAGE :: ImageError_Code
pattern ImageError_Code_INVALIDIMAGE = ImageError_Code "INVALID_IMAGE"

-- | The image size is too large.
pattern ImageError_Code_IMAGETOOBIG :: ImageError_Code
pattern ImageError_Code_IMAGETOOBIG = ImageError_Code "IMAGE_TOO_BIG"

-- | The image data does not match the expected MIME type of the image.
pattern ImageError_Code_WRONGIMAGETYPE :: ImageError_Code
pattern ImageError_Code_WRONGIMAGETYPE = ImageError_Code "WRONG_IMAGE_TYPE"

{-# COMPLETE
  ImageError_Code_CODEUNSPECIFIED,
  ImageError_Code_INVALIDIMAGE,
  ImageError_Code_IMAGETOOBIG,
  ImageError_Code_WRONGIMAGETYPE,
  ImageError_Code #-}

-- | The type of problem found (required).
newtype ObjParseError_Code = ObjParseError_Code { fromObjParseError_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown error code.
pattern ObjParseError_Code_CODEUNSPECIFIED :: ObjParseError_Code
pattern ObjParseError_Code_CODEUNSPECIFIED = ObjParseError_Code "CODE_UNSPECIFIED"

-- | Vertex references are specified in an inconsistent style for a face (e.g. some vertices specify texture vertices but some don\'t).
pattern ObjParseError_Code_INCONSISTENTVERTEXREFS :: ObjParseError_Code
pattern ObjParseError_Code_INCONSISTENTVERTEXREFS = ObjParseError_Code "INCONSISTENT_VERTEX_REFS"

-- | The command is invalid.
pattern ObjParseError_Code_INVALIDCOMMAND :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDCOMMAND = ObjParseError_Code "INVALID_COMMAND"

-- | A invalid number was specified.
pattern ObjParseError_Code_INVALIDNUMBER :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDNUMBER = ObjParseError_Code "INVALID_NUMBER"

-- | An invalid vertex reference was specified.
pattern ObjParseError_Code_INVALIDVERTEXREF :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDVERTEXREF = ObjParseError_Code "INVALID_VERTEX_REF"

-- | A vertex reference does not specify a geometric vertex.
pattern ObjParseError_Code_MISSINGGEOMETRICVERTEX :: ObjParseError_Code
pattern ObjParseError_Code_MISSINGGEOMETRICVERTEX = ObjParseError_Code "MISSING_GEOMETRIC_VERTEX"

-- | An expected token was not found.
pattern ObjParseError_Code_MISSINGTOKEN :: ObjParseError_Code
pattern ObjParseError_Code_MISSINGTOKEN = ObjParseError_Code "MISSING_TOKEN"

-- | The vertex specified too few dimensions for its usage.
pattern ObjParseError_Code_TOOFEWDIMENSIONS :: ObjParseError_Code
pattern ObjParseError_Code_TOOFEWDIMENSIONS = ObjParseError_Code "TOO_FEW_DIMENSIONS"

-- | The face specified too few vertices.
pattern ObjParseError_Code_TOOFEWVERTICES :: ObjParseError_Code
pattern ObjParseError_Code_TOOFEWVERTICES = ObjParseError_Code "TOO_FEW_VERTICES"

-- | The vertex specified too many dimensions for its usage.
pattern ObjParseError_Code_TOOMANYDIMENSIONS :: ObjParseError_Code
pattern ObjParseError_Code_TOOMANYDIMENSIONS = ObjParseError_Code "TOO_MANY_DIMENSIONS"

-- | This command is a valid OBJ command but is not supported. This error is only generated for the first instance of such a command.
pattern ObjParseError_Code_UNSUPPORTEDCOMMAND :: ObjParseError_Code
pattern ObjParseError_Code_UNSUPPORTEDCOMMAND = ObjParseError_Code "UNSUPPORTED_COMMAND"

-- | This line ended with unparsed token characters.
pattern ObjParseError_Code_UNUSEDTOKENS :: ObjParseError_Code
pattern ObjParseError_Code_UNUSEDTOKENS = ObjParseError_Code "UNUSED_TOKENS"

-- | The specified vertex was not found.
pattern ObjParseError_Code_VERTEXNOTFOUND :: ObjParseError_Code
pattern ObjParseError_Code_VERTEXNOTFOUND = ObjParseError_Code "VERTEX_NOT_FOUND"

-- | The specified number was too large or small for its usage.
pattern ObjParseError_Code_NUMBEROUTOFRANGE :: ObjParseError_Code
pattern ObjParseError_Code_NUMBEROUTOFRANGE = ObjParseError_Code "NUMBER_OUT_OF_RANGE"

-- | The specified parameter value was not recognized.
pattern ObjParseError_Code_INVALIDVALUE :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDVALUE = ObjParseError_Code "INVALID_VALUE"

-- | The specified texture option is not valid.
pattern ObjParseError_Code_INVALIDTEXTUREOPTION :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDTEXTUREOPTION = ObjParseError_Code "INVALID_TEXTURE_OPTION"

-- | The maximum number of problems to report was reached. Parsing continues, but further problems will be ignored.
pattern ObjParseError_Code_TOOMANYPROBLEMS :: ObjParseError_Code
pattern ObjParseError_Code_TOOMANYPROBLEMS = ObjParseError_Code "TOO_MANY_PROBLEMS"

-- | An expected file name was not specified.
pattern ObjParseError_Code_MISSINGFILENAME :: ObjParseError_Code
pattern ObjParseError_Code_MISSINGFILENAME = ObjParseError_Code "MISSING_FILE_NAME"

-- | The specified file was not found in the import.
pattern ObjParseError_Code_FILENOTFOUND :: ObjParseError_Code
pattern ObjParseError_Code_FILENOTFOUND = ObjParseError_Code "FILE_NOT_FOUND"

-- | The specified material was not found in any material definition in the import.
pattern ObjParseError_Code_UNKNOWNMATERIAL :: ObjParseError_Code
pattern ObjParseError_Code_UNKNOWNMATERIAL = ObjParseError_Code "UNKNOWN_MATERIAL"

-- | Material parameters were specified before the first material definition.
pattern ObjParseError_Code_NOMATERIALDEFINED :: ObjParseError_Code
pattern ObjParseError_Code_NOMATERIALDEFINED = ObjParseError_Code "NO_MATERIAL_DEFINED"

-- | The smoothing group is not valid.
pattern ObjParseError_Code_INVALIDSMOOTHINGGROUP :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDSMOOTHINGGROUP = ObjParseError_Code "INVALID_SMOOTHING_GROUP"

-- | Vertex colors were specified for only some vertices of a face.
pattern ObjParseError_Code_MISSINGVERTEXCOLORS :: ObjParseError_Code
pattern ObjParseError_Code_MISSINGVERTEXCOLORS = ObjParseError_Code "MISSING_VERTEX_COLORS"

-- | A missing file was found at a different file path.
pattern ObjParseError_Code_FILESUBSTITUTION :: ObjParseError_Code
pattern ObjParseError_Code_FILESUBSTITUTION = ObjParseError_Code "FILE_SUBSTITUTION"

-- | A line in an OBJ or MTL file exceeded the maximum line length.
pattern ObjParseError_Code_LINETOOLONG :: ObjParseError_Code
pattern ObjParseError_Code_LINETOOLONG = ObjParseError_Code "LINE_TOO_LONG"

-- | The file path was invalid. Only relative paths are supported.
pattern ObjParseError_Code_INVALIDFILEPATH :: ObjParseError_Code
pattern ObjParseError_Code_INVALIDFILEPATH = ObjParseError_Code "INVALID_FILE_PATH"

{-# COMPLETE
  ObjParseError_Code_CODEUNSPECIFIED,
  ObjParseError_Code_INCONSISTENTVERTEXREFS,
  ObjParseError_Code_INVALIDCOMMAND,
  ObjParseError_Code_INVALIDNUMBER,
  ObjParseError_Code_INVALIDVERTEXREF,
  ObjParseError_Code_MISSINGGEOMETRICVERTEX,
  ObjParseError_Code_MISSINGTOKEN,
  ObjParseError_Code_TOOFEWDIMENSIONS,
  ObjParseError_Code_TOOFEWVERTICES,
  ObjParseError_Code_TOOMANYDIMENSIONS,
  ObjParseError_Code_UNSUPPORTEDCOMMAND,
  ObjParseError_Code_UNUSEDTOKENS,
  ObjParseError_Code_VERTEXNOTFOUND,
  ObjParseError_Code_NUMBEROUTOFRANGE,
  ObjParseError_Code_INVALIDVALUE,
  ObjParseError_Code_INVALIDTEXTUREOPTION,
  ObjParseError_Code_TOOMANYPROBLEMS,
  ObjParseError_Code_MISSINGFILENAME,
  ObjParseError_Code_FILENOTFOUND,
  ObjParseError_Code_UNKNOWNMATERIAL,
  ObjParseError_Code_NOMATERIALDEFINED,
  ObjParseError_Code_INVALIDSMOOTHINGGROUP,
  ObjParseError_Code_MISSINGVERTEXCOLORS,
  ObjParseError_Code_FILESUBSTITUTION,
  ObjParseError_Code_LINETOOLONG,
  ObjParseError_Code_INVALIDFILEPATH,
  ObjParseError_Code #-}

-- | The materials\' diffuse\/albedo color. This does not apply to vertex colors or texture maps.
newtype PresentationParams_ColorSpace = PresentationParams_ColorSpace { fromPresentationParams_ColorSpace :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Invalid color value.
pattern PresentationParams_ColorSpace_Unknown :: PresentationParams_ColorSpace
pattern PresentationParams_ColorSpace_Unknown = PresentationParams_ColorSpace "UNKNOWN"

-- | Linear color values. Default.
pattern PresentationParams_ColorSpace_Linear :: PresentationParams_ColorSpace
pattern PresentationParams_ColorSpace_Linear = PresentationParams_ColorSpace "LINEAR"

-- | Colors should be converted to linear by assuming gamma = 2.0.
pattern PresentationParams_ColorSpace_Gamma :: PresentationParams_ColorSpace
pattern PresentationParams_ColorSpace_Gamma = PresentationParams_ColorSpace "GAMMA"

{-# COMPLETE
  PresentationParams_ColorSpace_Unknown,
  PresentationParams_ColorSpace_Linear,
  PresentationParams_ColorSpace_Gamma,
  PresentationParams_ColorSpace #-}

-- | Returns assets that are of the specified complexity or less. Defaults to COMPLEX. For example, a request for MEDIUM assets also includes SIMPLE assets.
newtype AssetsListMaxComplexity = AssetsListMaxComplexity { fromAssetsListMaxComplexity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No complexity specified. This is equivalent to omitting the filter.
pattern AssetsListMaxComplexity_COMPLEXITYUNSPECIFIED :: AssetsListMaxComplexity
pattern AssetsListMaxComplexity_COMPLEXITYUNSPECIFIED = AssetsListMaxComplexity "COMPLEXITY_UNSPECIFIED"

-- | Highly-complex.
pattern AssetsListMaxComplexity_Complex :: AssetsListMaxComplexity
pattern AssetsListMaxComplexity_Complex = AssetsListMaxComplexity "COMPLEX"

-- | Averagely-complex.
pattern AssetsListMaxComplexity_Medium :: AssetsListMaxComplexity
pattern AssetsListMaxComplexity_Medium = AssetsListMaxComplexity "MEDIUM"

-- | Simple.
pattern AssetsListMaxComplexity_Simple :: AssetsListMaxComplexity
pattern AssetsListMaxComplexity_Simple = AssetsListMaxComplexity "SIMPLE"

{-# COMPLETE
  AssetsListMaxComplexity_COMPLEXITYUNSPECIFIED,
  AssetsListMaxComplexity_Complex,
  AssetsListMaxComplexity_Medium,
  AssetsListMaxComplexity_Simple,
  AssetsListMaxComplexity #-}

-- | The visibility of the assets to be returned. Defaults to VISIBILITY_UNSPECIFIED which returns all assets.
newtype UsersAssetsListVisibility = UsersAssetsListVisibility { fromUsersAssetsListVisibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No visibility specified. Returns all assets.
pattern UsersAssetsListVisibility_VISIBILITYUNSPECIFIED :: UsersAssetsListVisibility
pattern UsersAssetsListVisibility_VISIBILITYUNSPECIFIED = UsersAssetsListVisibility "VISIBILITY_UNSPECIFIED"

-- | Returns only published assets.
pattern UsersAssetsListVisibility_Published :: UsersAssetsListVisibility
pattern UsersAssetsListVisibility_Published = UsersAssetsListVisibility "PUBLISHED"

-- | Returns only private assets.
pattern UsersAssetsListVisibility_Private :: UsersAssetsListVisibility
pattern UsersAssetsListVisibility_Private = UsersAssetsListVisibility "PRIVATE"

{-# COMPLETE
  UsersAssetsListVisibility_VISIBILITYUNSPECIFIED,
  UsersAssetsListVisibility_Published,
  UsersAssetsListVisibility_Private,
  UsersAssetsListVisibility #-}
