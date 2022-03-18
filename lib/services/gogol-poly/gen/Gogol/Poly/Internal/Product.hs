{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Poly.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Poly.Internal.Product
  ( -- * Asset
    Asset (..),
    newAsset,

    -- * AssetImportMessage
    AssetImportMessage (..),
    newAssetImportMessage,

    -- * File
    File (..),
    newFile,

    -- * Format
    Format (..),
    newFormat,

    -- * FormatComplexity
    FormatComplexity (..),
    newFormatComplexity,

    -- * ImageError
    ImageError (..),
    newImageError,

    -- * ListAssetsResponse
    ListAssetsResponse (..),
    newListAssetsResponse,

    -- * ListLikedAssetsResponse
    ListLikedAssetsResponse (..),
    newListLikedAssetsResponse,

    -- * ListUserAssetsResponse
    ListUserAssetsResponse (..),
    newListUserAssetsResponse,

    -- * ObjParseError
    ObjParseError (..),
    newObjParseError,

    -- * PresentationParams
    PresentationParams (..),
    newPresentationParams,

    -- * Quaternion
    Quaternion (..),
    newQuaternion,

    -- * RemixInfo
    RemixInfo (..),
    newRemixInfo,

    -- * StartAssetImportResponse
    StartAssetImportResponse (..),
    newStartAssetImportResponse,

    -- * UserAsset
    UserAsset (..),
    newUserAsset,
  )
where

import Gogol.Poly.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Represents and describes an asset in the Poly library. An asset is a 3D model or scene created using <//www.tiltbrush.com Tilt Brush>, <//vr.google.com/blocks/ Blocks>, or any 3D program that produces a file that can be upload to Poly.
--
-- /See:/ 'newAsset' smart constructor.
data Asset = Asset
  { -- | The author\'s publicly visible name. Use this name when giving credit to the author. For more information, see </poly/discover/licensing Licensing>.
    authorName :: (Core.Maybe Core.Text),
    -- | For published assets, the time when the asset was published. For unpublished assets, the time when the asset was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The human-readable description, set by the asset\'s author.
    description :: (Core.Maybe Core.Text),
    -- | The human-readable name, set by the asset\'s author.
    displayName :: (Core.Maybe Core.Text),
    -- | A list of Formats where each format describes one representation of the asset.
    formats :: (Core.Maybe [Format]),
    -- | Whether this asset has been curated by the Poly team.
    isCurated :: (Core.Maybe Core.Bool),
    -- | The license under which the author has made the asset available for use, if any.
    license :: (Core.Maybe Asset_License),
    -- | Application-defined opaque metadata for this asset. This field is only returned when querying for the signed-in user\'s own assets, not for public assets. This string is limited to 1K chars. It is up to the creator of the asset to define the format for this string (for example, JSON).
    metadata :: (Core.Maybe Core.Text),
    -- | The unique identifier for the asset in the form: @assets\/{ASSET_ID}@.
    name :: (Core.Maybe Core.Text),
    -- | Hints for displaying the asset. Note that these parameters are not immutable; the author of an asset may change them post-publication.
    presentationParams :: (Core.Maybe PresentationParams),
    -- | The remix info for the asset.
    remixInfo :: (Core.Maybe RemixInfo),
    -- | The thumbnail image for the asset.
    thumbnail :: (Core.Maybe File),
    -- | The time when the asset was last modified. For published assets, whose contents are immutable, the update time changes only when metadata properties, such as visibility, are updated.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | The visibility of the asset and who can access it.
    visibility :: (Core.Maybe Asset_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Asset' with the minimum fields required to make a request.
newAsset ::
  Asset
newAsset =
  Asset
    { authorName = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      formats = Core.Nothing,
      isCurated = Core.Nothing,
      license = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      presentationParams = Core.Nothing,
      remixInfo = Core.Nothing,
      thumbnail = Core.Nothing,
      updateTime = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON Asset where
  parseJSON =
    Core.withObject
      "Asset"
      ( \o ->
          Asset
            Core.<$> (o Core..:? "authorName")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "formats" Core..!= Core.mempty)
            Core.<*> (o Core..:? "isCurated")
            Core.<*> (o Core..:? "license")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "presentationParams")
            Core.<*> (o Core..:? "remixInfo")
            Core.<*> (o Core..:? "thumbnail")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON Asset where
  toJSON Asset {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorName" Core..=) Core.<$> authorName,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("formats" Core..=) Core.<$> formats,
            ("isCurated" Core..=) Core.<$> isCurated,
            ("license" Core..=) Core.<$> license,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("presentationParams" Core..=)
              Core.<$> presentationParams,
            ("remixInfo" Core..=) Core.<$> remixInfo,
            ("thumbnail" Core..=) Core.<$> thumbnail,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | A message generated by the asset import process.
--
-- /See:/ 'newAssetImportMessage' smart constructor.
data AssetImportMessage = AssetImportMessage
  { -- | The code associated with this message.
    code :: (Core.Maybe AssetImportMessage_Code),
    -- | An optional file path. Only present for those error codes that specify it.
    filePath :: (Core.Maybe Core.Text),
    -- | An optional image error. Only present for INVALID/IMAGE/FILE.
    imageError :: (Core.Maybe ImageError),
    -- | An optional OBJ parse error. Only present for OBJ/PARSE/ERROR.
    objParseError :: (Core.Maybe ObjParseError)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AssetImportMessage' with the minimum fields required to make a request.
newAssetImportMessage ::
  AssetImportMessage
newAssetImportMessage =
  AssetImportMessage
    { code = Core.Nothing,
      filePath = Core.Nothing,
      imageError = Core.Nothing,
      objParseError = Core.Nothing
    }

instance Core.FromJSON AssetImportMessage where
  parseJSON =
    Core.withObject
      "AssetImportMessage"
      ( \o ->
          AssetImportMessage
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "filePath")
            Core.<*> (o Core..:? "imageError")
            Core.<*> (o Core..:? "objParseError")
      )

instance Core.ToJSON AssetImportMessage where
  toJSON AssetImportMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("filePath" Core..=) Core.<$> filePath,
            ("imageError" Core..=) Core.<$> imageError,
            ("objParseError" Core..=) Core.<$> objParseError
          ]
      )

-- | Represents a file in Poly, which can be a root, resource, or thumbnail file.
--
-- /See:/ 'newFile' smart constructor.
data File = File
  { -- | The MIME content-type, such as @image\/png@. For more information, see <//developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types MIME types>.
    contentType :: (Core.Maybe Core.Text),
    -- | The path of the resource file relative to the root file. For root or thumbnail files, this is just the filename.
    relativePath :: (Core.Maybe Core.Text),
    -- | The URL where the file data can be retrieved.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile ::
  File
newFile =
  File
    { contentType = Core.Nothing,
      relativePath = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON File where
  parseJSON =
    Core.withObject
      "File"
      ( \o ->
          File
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "relativePath")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON File where
  toJSON File {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("relativePath" Core..=) Core.<$> relativePath,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The same asset can be represented in different formats, for example, a <//en.wikipedia.org/wiki/Wavefront_.obj_file WaveFront .obj> file with its corresponding .mtl file or a <//www.khronos.org/gltf Khronos glTF> file with its corresponding .glb binary data. A format refers to a specific representation of an asset and contains all information needed to retrieve and describe this representation.
--
-- /See:/ 'newFormat' smart constructor.
data Format = Format
  { -- | Complexity stats about this representation of the asset.
    formatComplexity :: (Core.Maybe FormatComplexity),
    -- | A short string that identifies the format type of this representation. Possible values are: @FBX@, @GLTF@, @GLTF2@, @OBJ@, and @TILT@.
    formatType :: (Core.Maybe Core.Text),
    -- | A list of dependencies of the root element. May include, but is not limited to, materials, textures, and shader programs.
    resources :: (Core.Maybe [File]),
    -- | The root of the file hierarchy. This will always be populated. For some format_types - such as @TILT@, which are self-contained - this is all of the data. Other types - such as @OBJ@ - often reference other data elements. These are contained in the resources field.
    root :: (Core.Maybe File)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Format' with the minimum fields required to make a request.
newFormat ::
  Format
newFormat =
  Format
    { formatComplexity = Core.Nothing,
      formatType = Core.Nothing,
      resources = Core.Nothing,
      root = Core.Nothing
    }

instance Core.FromJSON Format where
  parseJSON =
    Core.withObject
      "Format"
      ( \o ->
          Format
            Core.<$> (o Core..:? "formatComplexity")
            Core.<*> (o Core..:? "formatType")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
            Core.<*> (o Core..:? "root")
      )

instance Core.ToJSON Format where
  toJSON Format {..} =
    Core.object
      ( Core.catMaybes
          [ ("formatComplexity" Core..=)
              Core.<$> formatComplexity,
            ("formatType" Core..=) Core.<$> formatType,
            ("resources" Core..=) Core.<$> resources,
            ("root" Core..=) Core.<$> root
          ]
      )

-- | Information on the complexity of this Format.
--
-- /See:/ 'newFormatComplexity' smart constructor.
data FormatComplexity = FormatComplexity
  { -- | A non-negative integer that represents the level of detail (LOD) of this format relative to other formats of the same asset with the same format_type. This hint allows you to sort formats from the most-detailed (0) to least-detailed (integers greater than 0).
    lodHint :: (Core.Maybe Core.Int32),
    -- | The estimated number of triangles.
    triangleCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FormatComplexity' with the minimum fields required to make a request.
newFormatComplexity ::
  FormatComplexity
newFormatComplexity =
  FormatComplexity {lodHint = Core.Nothing, triangleCount = Core.Nothing}

instance Core.FromJSON FormatComplexity where
  parseJSON =
    Core.withObject
      "FormatComplexity"
      ( \o ->
          FormatComplexity
            Core.<$> (o Core..:? "lodHint")
            Core.<*> (o Core..:? "triangleCount")
      )

instance Core.ToJSON FormatComplexity where
  toJSON FormatComplexity {..} =
    Core.object
      ( Core.catMaybes
          [ ("lodHint" Core..=) Core.<$> lodHint,
            ("triangleCount" Core..=) Core.. Core.AsText
              Core.<$> triangleCount
          ]
      )

-- | A message resulting from reading an image file.
--
-- /See:/ 'newImageError' smart constructor.
data ImageError = ImageError
  { -- | The type of image error encountered. Optional for older image errors.
    code :: (Core.Maybe ImageError_Code),
    -- | The file path in the import of the image that was rejected.
    filePath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageError' with the minimum fields required to make a request.
newImageError ::
  ImageError
newImageError = ImageError {code = Core.Nothing, filePath = Core.Nothing}

instance Core.FromJSON ImageError where
  parseJSON =
    Core.withObject
      "ImageError"
      ( \o ->
          ImageError
            Core.<$> (o Core..:? "code") Core.<*> (o Core..:? "filePath")
      )

instance Core.ToJSON ImageError where
  toJSON ImageError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("filePath" Core..=) Core.<$> filePath
          ]
      )

-- | A response message from a request to list.
--
-- /See:/ 'newListAssetsResponse' smart constructor.
data ListAssetsResponse = ListAssetsResponse
  { -- | A list of assets that match the criteria specified in the request.
    assets :: (Core.Maybe [Asset]),
    -- | The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of assets in the list, without pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAssetsResponse' with the minimum fields required to make a request.
newListAssetsResponse ::
  ListAssetsResponse
newListAssetsResponse =
  ListAssetsResponse
    { assets = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListAssetsResponse where
  parseJSON =
    Core.withObject
      "ListAssetsResponse"
      ( \o ->
          ListAssetsResponse
            Core.<$> (o Core..:? "assets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListAssetsResponse where
  toJSON ListAssetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("assets" Core..=) Core.<$> assets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | A response message from a request to list.
--
-- /See:/ 'newListLikedAssetsResponse' smart constructor.
data ListLikedAssetsResponse = ListLikedAssetsResponse
  { -- | A list of assets that match the criteria specified in the request.
    assets :: (Core.Maybe [Asset]),
    -- | The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of assets in the list, without pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLikedAssetsResponse' with the minimum fields required to make a request.
newListLikedAssetsResponse ::
  ListLikedAssetsResponse
newListLikedAssetsResponse =
  ListLikedAssetsResponse
    { assets = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListLikedAssetsResponse where
  parseJSON =
    Core.withObject
      "ListLikedAssetsResponse"
      ( \o ->
          ListLikedAssetsResponse
            Core.<$> (o Core..:? "assets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListLikedAssetsResponse where
  toJSON ListLikedAssetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("assets" Core..=) Core.<$> assets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | A response message from a request to list.
--
-- /See:/ 'newListUserAssetsResponse' smart constructor.
data ListUserAssetsResponse = ListUserAssetsResponse
  { -- | The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of assets in the list, without pagination.
    totalSize :: (Core.Maybe Core.Int32),
    -- | A list of UserAssets matching the request.
    userAssets :: (Core.Maybe [UserAsset])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserAssetsResponse' with the minimum fields required to make a request.
newListUserAssetsResponse ::
  ListUserAssetsResponse
newListUserAssetsResponse =
  ListUserAssetsResponse
    { nextPageToken = Core.Nothing,
      totalSize = Core.Nothing,
      userAssets = Core.Nothing
    }

instance Core.FromJSON ListUserAssetsResponse where
  parseJSON =
    Core.withObject
      "ListUserAssetsResponse"
      ( \o ->
          ListUserAssetsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
            Core.<*> (o Core..:? "userAssets" Core..!= Core.mempty)
      )

instance Core.ToJSON ListUserAssetsResponse where
  toJSON ListUserAssetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize,
            ("userAssets" Core..=) Core.<$> userAssets
          ]
      )

-- | Details of an error resulting from parsing an OBJ file
--
-- /See:/ 'newObjParseError' smart constructor.
data ObjParseError = ObjParseError
  { -- | The type of problem found (required).
    code :: (Core.Maybe ObjParseError_Code),
    -- | The ending character index at which the problem was found.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The file path in which the problem was found.
    filePath :: (Core.Maybe Core.Text),
    -- | The text of the line. Note that this may be truncated if the line was very long. This may not include the error if it occurs after line truncation.
    line :: (Core.Maybe Core.Text),
    -- | Line number at which the problem was found.
    lineNumber :: (Core.Maybe Core.Int32),
    -- | The starting character index at which the problem was found.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjParseError' with the minimum fields required to make a request.
newObjParseError ::
  ObjParseError
newObjParseError =
  ObjParseError
    { code = Core.Nothing,
      endIndex = Core.Nothing,
      filePath = Core.Nothing,
      line = Core.Nothing,
      lineNumber = Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.FromJSON ObjParseError where
  parseJSON =
    Core.withObject
      "ObjParseError"
      ( \o ->
          ObjParseError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "filePath")
            Core.<*> (o Core..:? "line")
            Core.<*> (o Core..:? "lineNumber")
            Core.<*> (o Core..:? "startIndex")
      )

instance Core.ToJSON ObjParseError where
  toJSON ObjParseError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("filePath" Core..=) Core.<$> filePath,
            ("line" Core..=) Core.<$> line,
            ("lineNumber" Core..=) Core.<$> lineNumber,
            ("startIndex" Core..=) Core.<$> startIndex
          ]
      )

-- | Hints for displaying the asset, based on information available when the asset was uploaded.
--
-- /See:/ 'newPresentationParams' smart constructor.
data PresentationParams = PresentationParams
  { -- | A background color which could be used for displaying the 3D asset in a \'thumbnail\' or \'palette\' style view. Authors have the option to set this background color when publishing or editing their asset. This is represented as a six-digit hexademical triplet specifying the RGB components of the background color, e.g. #FF0000 for Red.
    backgroundColor :: (Core.Maybe Core.Text),
    -- | The materials\' diffuse\/albedo color. This does not apply to vertex colors or texture maps.
    colorSpace :: (Core.Maybe PresentationParams_ColorSpace),
    -- | A rotation that should be applied to the object root to make it upright. More precisely, this quaternion transforms from \"object space\" (the space in which the object is defined) to \"presentation space\", a coordinate system where +Y is up, +X is right, -Z is forward. For example, if the object is the Eiffel Tower, in its local coordinate system the object might be laid out such that the base of the tower is on the YZ plane and the tip of the tower is towards positive X. In this case this quaternion would specify a rotation (of 90 degrees about the Z axis) such that in the presentation space the base of the tower is aligned with the XZ plane, and the tip of the tower lies towards +Y. This rotation is unrelated to the object\'s pose in the web preview, which is just a camera position setting and is /not/ reflected in this rotation. Please note: this is applicable only to the gLTF.
    orientingRotation :: (Core.Maybe Quaternion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PresentationParams' with the minimum fields required to make a request.
newPresentationParams ::
  PresentationParams
newPresentationParams =
  PresentationParams
    { backgroundColor = Core.Nothing,
      colorSpace = Core.Nothing,
      orientingRotation = Core.Nothing
    }

instance Core.FromJSON PresentationParams where
  parseJSON =
    Core.withObject
      "PresentationParams"
      ( \o ->
          PresentationParams
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "colorSpace")
            Core.<*> (o Core..:? "orientingRotation")
      )

instance Core.ToJSON PresentationParams where
  toJSON PresentationParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=)
              Core.<$> backgroundColor,
            ("colorSpace" Core..=) Core.<$> colorSpace,
            ("orientingRotation" Core..=)
              Core.<$> orientingRotation
          ]
      )

-- | A <//en.wikipedia.org/wiki/Quaternion Quaternion>. Please note: if in the response you see \"w: 1\" and nothing else this is the default value of [0, 0, 0, 1] where x,y, and z are 0.
--
-- /See:/ 'newQuaternion' smart constructor.
data Quaternion = Quaternion
  { -- | The scalar component.
    w :: (Core.Maybe Core.Double),
    -- | The x component.
    x :: (Core.Maybe Core.Double),
    -- | The y component.
    y :: (Core.Maybe Core.Double),
    -- | The z component.
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Quaternion' with the minimum fields required to make a request.
newQuaternion ::
  Quaternion
newQuaternion =
  Quaternion
    { w = Core.Nothing,
      x = Core.Nothing,
      y = Core.Nothing,
      z = Core.Nothing
    }

instance Core.FromJSON Quaternion where
  parseJSON =
    Core.withObject
      "Quaternion"
      ( \o ->
          Quaternion
            Core.<$> (o Core..:? "w")
            Core.<*> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON Quaternion where
  toJSON Quaternion {..} =
    Core.object
      ( Core.catMaybes
          [ ("w" Core..=) Core.<$> w,
            ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | Info about the sources of this asset (i.e. assets that were remixed to create this asset).
--
-- /See:/ 'newRemixInfo' smart constructor.
newtype RemixInfo = RemixInfo
  { -- | Resource ids for the sources of this remix, of the form: @assets\/{ASSET_ID}@
    sourceAsset :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemixInfo' with the minimum fields required to make a request.
newRemixInfo ::
  RemixInfo
newRemixInfo = RemixInfo {sourceAsset = Core.Nothing}

instance Core.FromJSON RemixInfo where
  parseJSON =
    Core.withObject
      "RemixInfo"
      ( \o ->
          RemixInfo
            Core.<$> (o Core..:? "sourceAsset" Core..!= Core.mempty)
      )

instance Core.ToJSON RemixInfo where
  toJSON RemixInfo {..} =
    Core.object
      ( Core.catMaybes
          [("sourceAsset" Core..=) Core.<$> sourceAsset]
      )

-- | A response message from a request to startImport. This is returned in the response field of the Operation.
--
-- /See:/ 'newStartAssetImportResponse' smart constructor.
data StartAssetImportResponse = StartAssetImportResponse
  { -- | The id of newly created asset. If this is empty when the operation is complete it means the import failed. Please refer to the assetImportMessages field to understand what went wrong.
    assetId :: (Core.Maybe Core.Text),
    -- | The id of the asset import.
    assetImportId :: (Core.Maybe Core.Text),
    -- | The message from the asset import. This will contain any warnings (or - in the case of failure - errors) that occurred during import.
    assetImportMessages :: (Core.Maybe [AssetImportMessage]),
    -- | The publish URL for the asset.
    publishUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartAssetImportResponse' with the minimum fields required to make a request.
newStartAssetImportResponse ::
  StartAssetImportResponse
newStartAssetImportResponse =
  StartAssetImportResponse
    { assetId = Core.Nothing,
      assetImportId = Core.Nothing,
      assetImportMessages = Core.Nothing,
      publishUrl = Core.Nothing
    }

instance Core.FromJSON StartAssetImportResponse where
  parseJSON =
    Core.withObject
      "StartAssetImportResponse"
      ( \o ->
          StartAssetImportResponse
            Core.<$> (o Core..:? "assetId")
            Core.<*> (o Core..:? "assetImportId")
            Core.<*> ( o Core..:? "assetImportMessages"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "publishUrl")
      )

instance Core.ToJSON StartAssetImportResponse where
  toJSON StartAssetImportResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("assetId" Core..=) Core.<$> assetId,
            ("assetImportId" Core..=) Core.<$> assetImportId,
            ("assetImportMessages" Core..=)
              Core.<$> assetImportMessages,
            ("publishUrl" Core..=) Core.<$> publishUrl
          ]
      )

-- | Data about the user\'s asset.
--
-- /See:/ 'newUserAsset' smart constructor.
newtype UserAsset = UserAsset
  { -- | An Asset.
    asset :: (Core.Maybe Asset)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserAsset' with the minimum fields required to make a request.
newUserAsset ::
  UserAsset
newUserAsset = UserAsset {asset = Core.Nothing}

instance Core.FromJSON UserAsset where
  parseJSON =
    Core.withObject
      "UserAsset"
      (\o -> UserAsset Core.<$> (o Core..:? "asset"))

instance Core.ToJSON UserAsset where
  toJSON UserAsset {..} =
    Core.object
      (Core.catMaybes [("asset" Core..=) Core.<$> asset])
