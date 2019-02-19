{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Slides.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Slides.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Slides.Types.Sum

-- | A TextElement kind that represents the beginning of a new paragraph.
--
-- /See:/ 'paragraphMarker' smart constructor.
data ParagraphMarker =
  ParagraphMarker'
    { _pmStyle  :: !(Maybe ParagraphStyle)
    , _pmBullet :: !(Maybe Bullet)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParagraphMarker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmStyle'
--
-- * 'pmBullet'
paragraphMarker
    :: ParagraphMarker
paragraphMarker = ParagraphMarker' {_pmStyle = Nothing, _pmBullet = Nothing}

-- | The paragraph\'s style
pmStyle :: Lens' ParagraphMarker (Maybe ParagraphStyle)
pmStyle = lens _pmStyle (\ s a -> s{_pmStyle = a})

-- | The bullet for this paragraph. If not present, the paragraph does not
-- belong to a list.
pmBullet :: Lens' ParagraphMarker (Maybe Bullet)
pmBullet = lens _pmBullet (\ s a -> s{_pmBullet = a})

instance FromJSON ParagraphMarker where
        parseJSON
          = withObject "ParagraphMarker"
              (\ o ->
                 ParagraphMarker' <$>
                   (o .:? "style") <*> (o .:? "bullet"))

instance ToJSON ParagraphMarker where
        toJSON ParagraphMarker'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _pmStyle,
                  ("bullet" .=) <$> _pmBullet])

-- | Deletes a row from a table.
--
-- /See:/ 'deleteTableRowRequest' smart constructor.
data DeleteTableRowRequest =
  DeleteTableRowRequest'
    { _dtrrCellLocation  :: !(Maybe TableCellLocation)
    , _dtrrTableObjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTableRowRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrCellLocation'
--
-- * 'dtrrTableObjectId'
deleteTableRowRequest
    :: DeleteTableRowRequest
deleteTableRowRequest =
  DeleteTableRowRequest'
    {_dtrrCellLocation = Nothing, _dtrrTableObjectId = Nothing}

-- | The reference table cell location from which a row will be deleted. The
-- row this cell spans will be deleted. If this is a merged cell, multiple
-- rows will be deleted. If no rows remain in the table after this
-- deletion, the whole table is deleted.
dtrrCellLocation :: Lens' DeleteTableRowRequest (Maybe TableCellLocation)
dtrrCellLocation
  = lens _dtrrCellLocation
      (\ s a -> s{_dtrrCellLocation = a})

-- | The table to delete rows from.
dtrrTableObjectId :: Lens' DeleteTableRowRequest (Maybe Text)
dtrrTableObjectId
  = lens _dtrrTableObjectId
      (\ s a -> s{_dtrrTableObjectId = a})

instance FromJSON DeleteTableRowRequest where
        parseJSON
          = withObject "DeleteTableRowRequest"
              (\ o ->
                 DeleteTableRowRequest' <$>
                   (o .:? "cellLocation") <*> (o .:? "tableObjectId"))

instance ToJSON DeleteTableRowRequest where
        toJSON DeleteTableRowRequest'{..}
          = object
              (catMaybes
                 [("cellLocation" .=) <$> _dtrrCellLocation,
                  ("tableObjectId" .=) <$> _dtrrTableObjectId])

-- | The thumbnail of a page.
--
-- /See:/ 'thumbnail' smart constructor.
data Thumbnail =
  Thumbnail'
    { _tHeight     :: !(Maybe (Textual Int32))
    , _tWidth      :: !(Maybe (Textual Int32))
    , _tContentURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tHeight'
--
-- * 'tWidth'
--
-- * 'tContentURL'
thumbnail
    :: Thumbnail
thumbnail =
  Thumbnail' {_tHeight = Nothing, _tWidth = Nothing, _tContentURL = Nothing}

-- | The positive height in pixels of the thumbnail image.
tHeight :: Lens' Thumbnail (Maybe Int32)
tHeight
  = lens _tHeight (\ s a -> s{_tHeight = a}) .
      mapping _Coerce

-- | The positive width in pixels of the thumbnail image.
tWidth :: Lens' Thumbnail (Maybe Int32)
tWidth
  = lens _tWidth (\ s a -> s{_tWidth = a}) .
      mapping _Coerce

-- | The content URL of the thumbnail image. The URL to the image has a
-- default lifetime of 30 minutes. This URL is tagged with the account of
-- the requester. Anyone with the URL effectively accesses the image as the
-- original requester. Access to the image may be lost if the
-- presentation\'s sharing settings change. The mime type of the thumbnail
-- image is the same as specified in the \`GetPageThumbnailRequest\`.
tContentURL :: Lens' Thumbnail (Maybe Text)
tContentURL
  = lens _tContentURL (\ s a -> s{_tContentURL = a})

instance FromJSON Thumbnail where
        parseJSON
          = withObject "Thumbnail"
              (\ o ->
                 Thumbnail' <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "contentUrl"))

instance ToJSON Thumbnail where
        toJSON Thumbnail'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tHeight,
                  ("width" .=) <$> _tWidth,
                  ("contentUrl" .=) <$> _tContentURL])

-- | The properties of each border cell.
--
-- /See:/ 'tableBOrderCell' smart constructor.
data TableBOrderCell =
  TableBOrderCell'
    { _tbocLocation              :: !(Maybe TableCellLocation)
    , _tbocTableBOrderProperties :: !(Maybe TableBOrderProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableBOrderCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbocLocation'
--
-- * 'tbocTableBOrderProperties'
tableBOrderCell
    :: TableBOrderCell
tableBOrderCell =
  TableBOrderCell'
    {_tbocLocation = Nothing, _tbocTableBOrderProperties = Nothing}

-- | The location of the border within the border table.
tbocLocation :: Lens' TableBOrderCell (Maybe TableCellLocation)
tbocLocation
  = lens _tbocLocation (\ s a -> s{_tbocLocation = a})

-- | The border properties.
tbocTableBOrderProperties :: Lens' TableBOrderCell (Maybe TableBOrderProperties)
tbocTableBOrderProperties
  = lens _tbocTableBOrderProperties
      (\ s a -> s{_tbocTableBOrderProperties = a})

instance FromJSON TableBOrderCell where
        parseJSON
          = withObject "TableBOrderCell"
              (\ o ->
                 TableBOrderCell' <$>
                   (o .:? "location") <*>
                     (o .:? "tableBorderProperties"))

instance ToJSON TableBOrderCell where
        toJSON TableBOrderCell'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _tbocLocation,
                  ("tableBorderProperties" .=) <$>
                    _tbocTableBOrderProperties])

-- | Common properties for a page element. Note: When you initially create a
-- PageElement, the API may modify the values of both \`size\` and
-- \`transform\`, but the visual size will be unchanged.
--
-- /See:/ 'pageElementProperties' smart constructor.
data PageElementProperties =
  PageElementProperties'
    { _pepTransform    :: !(Maybe AffineTransform)
    , _pepSize         :: !(Maybe Size)
    , _pepPageObjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PageElementProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pepTransform'
--
-- * 'pepSize'
--
-- * 'pepPageObjectId'
pageElementProperties
    :: PageElementProperties
pageElementProperties =
  PageElementProperties'
    {_pepTransform = Nothing, _pepSize = Nothing, _pepPageObjectId = Nothing}

-- | The transform for the element.
pepTransform :: Lens' PageElementProperties (Maybe AffineTransform)
pepTransform
  = lens _pepTransform (\ s a -> s{_pepTransform = a})

-- | The size of the element.
pepSize :: Lens' PageElementProperties (Maybe Size)
pepSize = lens _pepSize (\ s a -> s{_pepSize = a})

-- | The object ID of the page where the element is located.
pepPageObjectId :: Lens' PageElementProperties (Maybe Text)
pepPageObjectId
  = lens _pepPageObjectId
      (\ s a -> s{_pepPageObjectId = a})

instance FromJSON PageElementProperties where
        parseJSON
          = withObject "PageElementProperties"
              (\ o ->
                 PageElementProperties' <$>
                   (o .:? "transform") <*> (o .:? "size") <*>
                     (o .:? "pageObjectId"))

instance ToJSON PageElementProperties where
        toJSON PageElementProperties'{..}
          = object
              (catMaybes
                 [("transform" .=) <$> _pepTransform,
                  ("size" .=) <$> _pepSize,
                  ("pageObjectId" .=) <$> _pepPageObjectId])

-- | The result of replacing shapes with an image.
--
-- /See:/ 'replaceAllShapesWithImageResponse' smart constructor.
newtype ReplaceAllShapesWithImageResponse =
  ReplaceAllShapesWithImageResponse'
    { _raswirOccurrencesChanged :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllShapesWithImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raswirOccurrencesChanged'
replaceAllShapesWithImageResponse
    :: ReplaceAllShapesWithImageResponse
replaceAllShapesWithImageResponse =
  ReplaceAllShapesWithImageResponse' {_raswirOccurrencesChanged = Nothing}

-- | The number of shapes replaced with images.
raswirOccurrencesChanged :: Lens' ReplaceAllShapesWithImageResponse (Maybe Int32)
raswirOccurrencesChanged
  = lens _raswirOccurrencesChanged
      (\ s a -> s{_raswirOccurrencesChanged = a})
      . mapping _Coerce

instance FromJSON ReplaceAllShapesWithImageResponse
         where
        parseJSON
          = withObject "ReplaceAllShapesWithImageResponse"
              (\ o ->
                 ReplaceAllShapesWithImageResponse' <$>
                   (o .:? "occurrencesChanged"))

instance ToJSON ReplaceAllShapesWithImageResponse
         where
        toJSON ReplaceAllShapesWithImageResponse'{..}
          = object
              (catMaybes
                 [("occurrencesChanged" .=) <$>
                    _raswirOccurrencesChanged])

-- | The fill of the outline.
--
-- /See:/ 'outlineFill' smart constructor.
newtype OutlineFill =
  OutlineFill'
    { _ofSolidFill :: Maybe SolidFill
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutlineFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ofSolidFill'
outlineFill
    :: OutlineFill
outlineFill = OutlineFill' {_ofSolidFill = Nothing}

-- | Solid color fill.
ofSolidFill :: Lens' OutlineFill (Maybe SolidFill)
ofSolidFill
  = lens _ofSolidFill (\ s a -> s{_ofSolidFill = a})

instance FromJSON OutlineFill where
        parseJSON
          = withObject "OutlineFill"
              (\ o -> OutlineFill' <$> (o .:? "solidFill"))

instance ToJSON OutlineFill where
        toJSON OutlineFill'{..}
          = object
              (catMaybes [("solidFill" .=) <$> _ofSolidFill])

-- | A PageElement kind representing an image.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iImageProperties :: !(Maybe ImageProperties)
    , _iContentURL      :: !(Maybe Text)
    , _iSourceURL       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iImageProperties'
--
-- * 'iContentURL'
--
-- * 'iSourceURL'
image
    :: Image
image =
  Image'
    {_iImageProperties = Nothing, _iContentURL = Nothing, _iSourceURL = Nothing}

-- | The properties of the image.
iImageProperties :: Lens' Image (Maybe ImageProperties)
iImageProperties
  = lens _iImageProperties
      (\ s a -> s{_iImageProperties = a})

-- | An URL to an image with a default lifetime of 30 minutes. This URL is
-- tagged with the account of the requester. Anyone with the URL
-- effectively accesses the image as the original requester. Access to the
-- image may be lost if the presentation\'s sharing settings change.
iContentURL :: Lens' Image (Maybe Text)
iContentURL
  = lens _iContentURL (\ s a -> s{_iContentURL = a})

-- | The source URL is the URL used to insert the image. The source URL can
-- be empty.
iSourceURL :: Lens' Image (Maybe Text)
iSourceURL
  = lens _iSourceURL (\ s a -> s{_iSourceURL = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "imageProperties") <*> (o .:? "contentUrl")
                     <*> (o .:? "sourceUrl"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("imageProperties" .=) <$> _iImageProperties,
                  ("contentUrl" .=) <$> _iContentURL,
                  ("sourceUrl" .=) <$> _iSourceURL])

-- | Updates the properties of a Line.
--
-- /See:/ 'updateLinePropertiesRequest' smart constructor.
data UpdateLinePropertiesRequest =
  UpdateLinePropertiesRequest'
    { _ulprLineProperties :: !(Maybe LineProperties)
    , _ulprObjectId       :: !(Maybe Text)
    , _ulprFields         :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateLinePropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulprLineProperties'
--
-- * 'ulprObjectId'
--
-- * 'ulprFields'
updateLinePropertiesRequest
    :: UpdateLinePropertiesRequest
updateLinePropertiesRequest =
  UpdateLinePropertiesRequest'
    { _ulprLineProperties = Nothing
    , _ulprObjectId = Nothing
    , _ulprFields = Nothing
    }

-- | The line properties to update.
ulprLineProperties :: Lens' UpdateLinePropertiesRequest (Maybe LineProperties)
ulprLineProperties
  = lens _ulprLineProperties
      (\ s a -> s{_ulprLineProperties = a})

-- | The object ID of the line the update is applied to.
ulprObjectId :: Lens' UpdateLinePropertiesRequest (Maybe Text)
ulprObjectId
  = lens _ulprObjectId (\ s a -> s{_ulprObjectId = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`lineProperties\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the line solid fill color, set \`fields\` to
-- \`\"lineFill.solidFill.color\"\`. To reset a property to its default
-- value, include its field name in the field mask but leave the field
-- itself unset.
ulprFields :: Lens' UpdateLinePropertiesRequest (Maybe GFieldMask)
ulprFields
  = lens _ulprFields (\ s a -> s{_ulprFields = a})

instance FromJSON UpdateLinePropertiesRequest where
        parseJSON
          = withObject "UpdateLinePropertiesRequest"
              (\ o ->
                 UpdateLinePropertiesRequest' <$>
                   (o .:? "lineProperties") <*> (o .:? "objectId") <*>
                     (o .:? "fields"))

instance ToJSON UpdateLinePropertiesRequest where
        toJSON UpdateLinePropertiesRequest'{..}
          = object
              (catMaybes
                 [("lineProperties" .=) <$> _ulprLineProperties,
                  ("objectId" .=) <$> _ulprObjectId,
                  ("fields" .=) <$> _ulprFields])

-- | The crop properties of an object enclosed in a container. For example,
-- an Image. The crop properties is represented by the offsets of four
-- edges which define a crop rectangle. The offsets are measured in
-- percentage from the corresponding edges of the object\'s original
-- bounding rectangle towards inside, relative to the object\'s original
-- dimensions. - If the offset is in the interval (0, 1), the corresponding
-- edge of crop rectangle is positioned inside of the object\'s original
-- bounding rectangle. - If the offset is negative or greater than 1, the
-- corresponding edge of crop rectangle is positioned outside of the
-- object\'s original bounding rectangle. - If the left edge of the crop
-- rectangle is on the right side of its right edge, the object will be
-- flipped horizontally. - If the top edge of the crop rectangle is below
-- its bottom edge, the object will be flipped vertically. - If all offsets
-- and rotation angle is 0, the object is not cropped. After cropping, the
-- content in the crop rectangle will be stretched to fit its container.
--
-- /See:/ 'cropProperties' smart constructor.
data CropProperties =
  CropProperties'
    { _cpBottomOffSet :: !(Maybe (Textual Double))
    , _cpTopOffSet    :: !(Maybe (Textual Double))
    , _cpAngle        :: !(Maybe (Textual Double))
    , _cpRightOffSet  :: !(Maybe (Textual Double))
    , _cpLeftOffSet   :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CropProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpBottomOffSet'
--
-- * 'cpTopOffSet'
--
-- * 'cpAngle'
--
-- * 'cpRightOffSet'
--
-- * 'cpLeftOffSet'
cropProperties
    :: CropProperties
cropProperties =
  CropProperties'
    { _cpBottomOffSet = Nothing
    , _cpTopOffSet = Nothing
    , _cpAngle = Nothing
    , _cpRightOffSet = Nothing
    , _cpLeftOffSet = Nothing
    }

-- | The offset specifies the bottom edge of the crop rectangle that is
-- located above the original bounding rectangle bottom edge, relative to
-- the object\'s original height.
cpBottomOffSet :: Lens' CropProperties (Maybe Double)
cpBottomOffSet
  = lens _cpBottomOffSet
      (\ s a -> s{_cpBottomOffSet = a})
      . mapping _Coerce

-- | The offset specifies the top edge of the crop rectangle that is located
-- below the original bounding rectangle top edge, relative to the
-- object\'s original height.
cpTopOffSet :: Lens' CropProperties (Maybe Double)
cpTopOffSet
  = lens _cpTopOffSet (\ s a -> s{_cpTopOffSet = a}) .
      mapping _Coerce

-- | The rotation angle of the crop window around its center, in radians.
-- Rotation angle is applied after the offset.
cpAngle :: Lens' CropProperties (Maybe Double)
cpAngle
  = lens _cpAngle (\ s a -> s{_cpAngle = a}) .
      mapping _Coerce

-- | The offset specifies the right edge of the crop rectangle that is
-- located to the left of the original bounding rectangle right edge,
-- relative to the object\'s original width.
cpRightOffSet :: Lens' CropProperties (Maybe Double)
cpRightOffSet
  = lens _cpRightOffSet
      (\ s a -> s{_cpRightOffSet = a})
      . mapping _Coerce

-- | The offset specifies the left edge of the crop rectangle that is located
-- to the right of the original bounding rectangle left edge, relative to
-- the object\'s original width.
cpLeftOffSet :: Lens' CropProperties (Maybe Double)
cpLeftOffSet
  = lens _cpLeftOffSet (\ s a -> s{_cpLeftOffSet = a})
      . mapping _Coerce

instance FromJSON CropProperties where
        parseJSON
          = withObject "CropProperties"
              (\ o ->
                 CropProperties' <$>
                   (o .:? "bottomOffset") <*> (o .:? "topOffset") <*>
                     (o .:? "angle")
                     <*> (o .:? "rightOffset")
                     <*> (o .:? "leftOffset"))

instance ToJSON CropProperties where
        toJSON CropProperties'{..}
          = object
              (catMaybes
                 [("bottomOffset" .=) <$> _cpBottomOffSet,
                  ("topOffset" .=) <$> _cpTopOffSet,
                  ("angle" .=) <$> _cpAngle,
                  ("rightOffset" .=) <$> _cpRightOffSet,
                  ("leftOffset" .=) <$> _cpLeftOffSet])

-- | The properties of the Line. When unset, these fields default to values
-- that match the appearance of new lines created in the Slides editor.
--
-- /See:/ 'lineProperties' smart constructor.
data LineProperties =
  LineProperties'
    { _lpWeight          :: !(Maybe Dimension)
    , _lpLink            :: !(Maybe Link)
    , _lpStartConnection :: !(Maybe LineConnection)
    , _lpDashStyle       :: !(Maybe LinePropertiesDashStyle)
    , _lpStartArrow      :: !(Maybe LinePropertiesStartArrow)
    , _lpLineFill        :: !(Maybe LineFill)
    , _lpEndConnection   :: !(Maybe LineConnection)
    , _lpEndArrow        :: !(Maybe LinePropertiesEndArrow)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LineProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpWeight'
--
-- * 'lpLink'
--
-- * 'lpStartConnection'
--
-- * 'lpDashStyle'
--
-- * 'lpStartArrow'
--
-- * 'lpLineFill'
--
-- * 'lpEndConnection'
--
-- * 'lpEndArrow'
lineProperties
    :: LineProperties
lineProperties =
  LineProperties'
    { _lpWeight = Nothing
    , _lpLink = Nothing
    , _lpStartConnection = Nothing
    , _lpDashStyle = Nothing
    , _lpStartArrow = Nothing
    , _lpLineFill = Nothing
    , _lpEndConnection = Nothing
    , _lpEndArrow = Nothing
    }

-- | The thickness of the line.
lpWeight :: Lens' LineProperties (Maybe Dimension)
lpWeight = lens _lpWeight (\ s a -> s{_lpWeight = a})

-- | The hyperlink destination of the line. If unset, there is no link.
lpLink :: Lens' LineProperties (Maybe Link)
lpLink = lens _lpLink (\ s a -> s{_lpLink = a})

-- | The connection at the beginning of the line. If unset, there is no
-- connection. Only lines with a Type indicating it is a \"connector\" can
-- have a \`start_connection\`.
lpStartConnection :: Lens' LineProperties (Maybe LineConnection)
lpStartConnection
  = lens _lpStartConnection
      (\ s a -> s{_lpStartConnection = a})

-- | The dash style of the line.
lpDashStyle :: Lens' LineProperties (Maybe LinePropertiesDashStyle)
lpDashStyle
  = lens _lpDashStyle (\ s a -> s{_lpDashStyle = a})

-- | The style of the arrow at the beginning of the line.
lpStartArrow :: Lens' LineProperties (Maybe LinePropertiesStartArrow)
lpStartArrow
  = lens _lpStartArrow (\ s a -> s{_lpStartArrow = a})

-- | The fill of the line. The default line fill matches the defaults for new
-- lines created in the Slides editor.
lpLineFill :: Lens' LineProperties (Maybe LineFill)
lpLineFill
  = lens _lpLineFill (\ s a -> s{_lpLineFill = a})

-- | The connection at the end of the line. If unset, there is no connection.
-- Only lines with a Type indicating it is a \"connector\" can have an
-- \`end_connection\`.
lpEndConnection :: Lens' LineProperties (Maybe LineConnection)
lpEndConnection
  = lens _lpEndConnection
      (\ s a -> s{_lpEndConnection = a})

-- | The style of the arrow at the end of the line.
lpEndArrow :: Lens' LineProperties (Maybe LinePropertiesEndArrow)
lpEndArrow
  = lens _lpEndArrow (\ s a -> s{_lpEndArrow = a})

instance FromJSON LineProperties where
        parseJSON
          = withObject "LineProperties"
              (\ o ->
                 LineProperties' <$>
                   (o .:? "weight") <*> (o .:? "link") <*>
                     (o .:? "startConnection")
                     <*> (o .:? "dashStyle")
                     <*> (o .:? "startArrow")
                     <*> (o .:? "lineFill")
                     <*> (o .:? "endConnection")
                     <*> (o .:? "endArrow"))

instance ToJSON LineProperties where
        toJSON LineProperties'{..}
          = object
              (catMaybes
                 [("weight" .=) <$> _lpWeight,
                  ("link" .=) <$> _lpLink,
                  ("startConnection" .=) <$> _lpStartConnection,
                  ("dashStyle" .=) <$> _lpDashStyle,
                  ("startArrow" .=) <$> _lpStartArrow,
                  ("lineFill" .=) <$> _lpLineFill,
                  ("endConnection" .=) <$> _lpEndConnection,
                  ("endArrow" .=) <$> _lpEndArrow])

-- | A PageElement kind representing a joined collection of PageElements.
--
-- /See:/ 'group'' smart constructor.
newtype Group =
  Group'
    { _gChildren :: Maybe [PageElement]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gChildren'
group'
    :: Group
group' = Group' {_gChildren = Nothing}

-- | The collection of elements in the group. The minimum size of a group is
-- 2.
gChildren :: Lens' Group [PageElement]
gChildren
  = lens _gChildren (\ s a -> s{_gChildren = a}) .
      _Default
      . _Coerce

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o -> Group' <$> (o .:? "children" .!= mempty))

instance ToJSON Group where
        toJSON Group'{..}
          = object (catMaybes [("children" .=) <$> _gChildren])

-- | Replaces an existing image with a new image. Replacing an image removes
-- some image effects from the existing image.
--
-- /See:/ 'replaceImageRequest' smart constructor.
data ReplaceImageRequest =
  ReplaceImageRequest'
    { _rirImageReplaceMethod :: !(Maybe ReplaceImageRequestImageReplaceMethod)
    , _rirImageObjectId      :: !(Maybe Text)
    , _rirURL                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirImageReplaceMethod'
--
-- * 'rirImageObjectId'
--
-- * 'rirURL'
replaceImageRequest
    :: ReplaceImageRequest
replaceImageRequest =
  ReplaceImageRequest'
    { _rirImageReplaceMethod = Nothing
    , _rirImageObjectId = Nothing
    , _rirURL = Nothing
    }

-- | The replacement method.
rirImageReplaceMethod :: Lens' ReplaceImageRequest (Maybe ReplaceImageRequestImageReplaceMethod)
rirImageReplaceMethod
  = lens _rirImageReplaceMethod
      (\ s a -> s{_rirImageReplaceMethod = a})

-- | The ID of the existing image that will be replaced.
rirImageObjectId :: Lens' ReplaceImageRequest (Maybe Text)
rirImageObjectId
  = lens _rirImageObjectId
      (\ s a -> s{_rirImageObjectId = a})

-- | The URL of the new image. The image is fetched once at insertion time
-- and a copy is stored for display inside the presentation. Images must be
-- less than 50MB in size, cannot exceed 25 megapixels, and must be in one
-- of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in
-- length. The URL itself is saved with the image, and exposed via the
-- Image.source_url field.
rirURL :: Lens' ReplaceImageRequest (Maybe Text)
rirURL = lens _rirURL (\ s a -> s{_rirURL = a})

instance FromJSON ReplaceImageRequest where
        parseJSON
          = withObject "ReplaceImageRequest"
              (\ o ->
                 ReplaceImageRequest' <$>
                   (o .:? "imageReplaceMethod") <*>
                     (o .:? "imageObjectId")
                     <*> (o .:? "url"))

instance ToJSON ReplaceImageRequest where
        toJSON ReplaceImageRequest'{..}
          = object
              (catMaybes
                 [("imageReplaceMethod" .=) <$>
                    _rirImageReplaceMethod,
                  ("imageObjectId" .=) <$> _rirImageObjectId,
                  ("url" .=) <$> _rirURL])

-- | Request message for PresentationsService.BatchUpdatePresentation.
--
-- /See:/ 'batchUpdatePresentationRequest' smart constructor.
data BatchUpdatePresentationRequest =
  BatchUpdatePresentationRequest'
    { _buprRequests     :: !(Maybe [Request'])
    , _buprWriteControl :: !(Maybe WriteControl)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchUpdatePresentationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buprRequests'
--
-- * 'buprWriteControl'
batchUpdatePresentationRequest
    :: BatchUpdatePresentationRequest
batchUpdatePresentationRequest =
  BatchUpdatePresentationRequest'
    {_buprRequests = Nothing, _buprWriteControl = Nothing}

-- | A list of updates to apply to the presentation.
buprRequests :: Lens' BatchUpdatePresentationRequest [Request']
buprRequests
  = lens _buprRequests (\ s a -> s{_buprRequests = a})
      . _Default
      . _Coerce

-- | Provides control over how write requests are executed.
buprWriteControl :: Lens' BatchUpdatePresentationRequest (Maybe WriteControl)
buprWriteControl
  = lens _buprWriteControl
      (\ s a -> s{_buprWriteControl = a})

instance FromJSON BatchUpdatePresentationRequest
         where
        parseJSON
          = withObject "BatchUpdatePresentationRequest"
              (\ o ->
                 BatchUpdatePresentationRequest' <$>
                   (o .:? "requests" .!= mempty) <*>
                     (o .:? "writeControl"))

instance ToJSON BatchUpdatePresentationRequest where
        toJSON BatchUpdatePresentationRequest'{..}
          = object
              (catMaybes
                 [("requests" .=) <$> _buprRequests,
                  ("writeControl" .=) <$> _buprWriteControl])

-- | Updates the Z-order of page elements. Z-order is an ordering of the
-- elements on the page from back to front. The page element in the front
-- may cover the elements that are behind it.
--
-- /See:/ 'updatePageElementsZOrderRequest' smart constructor.
data UpdatePageElementsZOrderRequest =
  UpdatePageElementsZOrderRequest'
    { _upezorOperation            :: !(Maybe UpdatePageElementsZOrderRequestOperation)
    , _upezorPageElementObjectIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePageElementsZOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upezorOperation'
--
-- * 'upezorPageElementObjectIds'
updatePageElementsZOrderRequest
    :: UpdatePageElementsZOrderRequest
updatePageElementsZOrderRequest =
  UpdatePageElementsZOrderRequest'
    {_upezorOperation = Nothing, _upezorPageElementObjectIds = Nothing}

-- | The Z-order operation to apply on the page elements. When applying the
-- operation on multiple page elements, the relative Z-orders within these
-- page elements before the operation is maintained.
upezorOperation :: Lens' UpdatePageElementsZOrderRequest (Maybe UpdatePageElementsZOrderRequestOperation)
upezorOperation
  = lens _upezorOperation
      (\ s a -> s{_upezorOperation = a})

-- | The object IDs of the page elements to update. All the page elements
-- must be on the same page and must not be grouped.
upezorPageElementObjectIds :: Lens' UpdatePageElementsZOrderRequest [Text]
upezorPageElementObjectIds
  = lens _upezorPageElementObjectIds
      (\ s a -> s{_upezorPageElementObjectIds = a})
      . _Default
      . _Coerce

instance FromJSON UpdatePageElementsZOrderRequest
         where
        parseJSON
          = withObject "UpdatePageElementsZOrderRequest"
              (\ o ->
                 UpdatePageElementsZOrderRequest' <$>
                   (o .:? "operation") <*>
                     (o .:? "pageElementObjectIds" .!= mempty))

instance ToJSON UpdatePageElementsZOrderRequest where
        toJSON UpdatePageElementsZOrderRequest'{..}
          = object
              (catMaybes
                 [("operation" .=) <$> _upezorOperation,
                  ("pageElementObjectIds" .=) <$>
                    _upezorPageElementObjectIds])

-- | Creates a new shape.
--
-- /See:/ 'createShapeRequest' smart constructor.
data CreateShapeRequest =
  CreateShapeRequest'
    { _csrShapeType         :: !(Maybe CreateShapeRequestShapeType)
    , _csrObjectId          :: !(Maybe Text)
    , _csrElementProperties :: !(Maybe PageElementProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateShapeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrShapeType'
--
-- * 'csrObjectId'
--
-- * 'csrElementProperties'
createShapeRequest
    :: CreateShapeRequest
createShapeRequest =
  CreateShapeRequest'
    { _csrShapeType = Nothing
    , _csrObjectId = Nothing
    , _csrElementProperties = Nothing
    }

-- | The shape type.
csrShapeType :: Lens' CreateShapeRequest (Maybe CreateShapeRequestShapeType)
csrShapeType
  = lens _csrShapeType (\ s a -> s{_csrShapeType = a})

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If empty, a unique
-- identifier will be generated.
csrObjectId :: Lens' CreateShapeRequest (Maybe Text)
csrObjectId
  = lens _csrObjectId (\ s a -> s{_csrObjectId = a})

-- | The element properties for the shape.
csrElementProperties :: Lens' CreateShapeRequest (Maybe PageElementProperties)
csrElementProperties
  = lens _csrElementProperties
      (\ s a -> s{_csrElementProperties = a})

instance FromJSON CreateShapeRequest where
        parseJSON
          = withObject "CreateShapeRequest"
              (\ o ->
                 CreateShapeRequest' <$>
                   (o .:? "shapeType") <*> (o .:? "objectId") <*>
                     (o .:? "elementProperties"))

instance ToJSON CreateShapeRequest where
        toJSON CreateShapeRequest'{..}
          = object
              (catMaybes
                 [("shapeType" .=) <$> _csrShapeType,
                  ("objectId" .=) <$> _csrObjectId,
                  ("elementProperties" .=) <$> _csrElementProperties])

-- | A TextElement kind that represents auto text.
--
-- /See:/ 'autoText' smart constructor.
data AutoText =
  AutoText'
    { _atStyle   :: !(Maybe TextStyle)
    , _atContent :: !(Maybe Text)
    , _atType    :: !(Maybe AutoTextType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atStyle'
--
-- * 'atContent'
--
-- * 'atType'
autoText
    :: AutoText
autoText =
  AutoText' {_atStyle = Nothing, _atContent = Nothing, _atType = Nothing}

-- | The styling applied to this auto text.
atStyle :: Lens' AutoText (Maybe TextStyle)
atStyle = lens _atStyle (\ s a -> s{_atStyle = a})

-- | The rendered content of this auto text, if available.
atContent :: Lens' AutoText (Maybe Text)
atContent
  = lens _atContent (\ s a -> s{_atContent = a})

-- | The type of this auto text.
atType :: Lens' AutoText (Maybe AutoTextType)
atType = lens _atType (\ s a -> s{_atType = a})

instance FromJSON AutoText where
        parseJSON
          = withObject "AutoText"
              (\ o ->
                 AutoText' <$>
                   (o .:? "style") <*> (o .:? "content") <*>
                     (o .:? "type"))

instance ToJSON AutoText where
        toJSON AutoText'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _atStyle,
                  ("content" .=) <$> _atContent,
                  ("type" .=) <$> _atType])

-- | Replaces all shapes that match the given criteria with the provided
-- Google Sheets chart. The chart will be scaled and centered to fit within
-- the bounds of the original shape. NOTE: Replacing shapes with a chart
-- requires at least one of the spreadsheets.readonly, spreadsheets,
-- drive.readonly, or drive OAuth scopes.
--
-- /See:/ 'replaceAllShapesWithSheetsChartRequest' smart constructor.
data ReplaceAllShapesWithSheetsChartRequest =
  ReplaceAllShapesWithSheetsChartRequest'
    { _raswscrPageObjectIds :: !(Maybe [Text])
    , _raswscrSpreadsheetId :: !(Maybe Text)
    , _raswscrLinkingMode   :: !(Maybe ReplaceAllShapesWithSheetsChartRequestLinkingMode)
    , _raswscrContainsText  :: !(Maybe SubstringMatchCriteria)
    , _raswscrChartId       :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllShapesWithSheetsChartRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raswscrPageObjectIds'
--
-- * 'raswscrSpreadsheetId'
--
-- * 'raswscrLinkingMode'
--
-- * 'raswscrContainsText'
--
-- * 'raswscrChartId'
replaceAllShapesWithSheetsChartRequest
    :: ReplaceAllShapesWithSheetsChartRequest
replaceAllShapesWithSheetsChartRequest =
  ReplaceAllShapesWithSheetsChartRequest'
    { _raswscrPageObjectIds = Nothing
    , _raswscrSpreadsheetId = Nothing
    , _raswscrLinkingMode = Nothing
    , _raswscrContainsText = Nothing
    , _raswscrChartId = Nothing
    }

-- | If non-empty, limits the matches to page elements only on the given
-- pages. Returns a 400 bad request error if given the page object ID of a
-- notes page or a notes master, or if a page with that object ID doesn\'t
-- exist in the presentation.
raswscrPageObjectIds :: Lens' ReplaceAllShapesWithSheetsChartRequest [Text]
raswscrPageObjectIds
  = lens _raswscrPageObjectIds
      (\ s a -> s{_raswscrPageObjectIds = a})
      . _Default
      . _Coerce

-- | The ID of the Google Sheets spreadsheet that contains the chart.
raswscrSpreadsheetId :: Lens' ReplaceAllShapesWithSheetsChartRequest (Maybe Text)
raswscrSpreadsheetId
  = lens _raswscrSpreadsheetId
      (\ s a -> s{_raswscrSpreadsheetId = a})

-- | The mode with which the chart is linked to the source spreadsheet. When
-- not specified, the chart will be an image that is not linked.
raswscrLinkingMode :: Lens' ReplaceAllShapesWithSheetsChartRequest (Maybe ReplaceAllShapesWithSheetsChartRequestLinkingMode)
raswscrLinkingMode
  = lens _raswscrLinkingMode
      (\ s a -> s{_raswscrLinkingMode = a})

-- | The criteria that the shapes must match in order to be replaced. The
-- request will replace all of the shapes that contain the given text.
raswscrContainsText :: Lens' ReplaceAllShapesWithSheetsChartRequest (Maybe SubstringMatchCriteria)
raswscrContainsText
  = lens _raswscrContainsText
      (\ s a -> s{_raswscrContainsText = a})

-- | The ID of the specific chart in the Google Sheets spreadsheet.
raswscrChartId :: Lens' ReplaceAllShapesWithSheetsChartRequest (Maybe Int32)
raswscrChartId
  = lens _raswscrChartId
      (\ s a -> s{_raswscrChartId = a})
      . mapping _Coerce

instance FromJSON
           ReplaceAllShapesWithSheetsChartRequest
         where
        parseJSON
          = withObject "ReplaceAllShapesWithSheetsChartRequest"
              (\ o ->
                 ReplaceAllShapesWithSheetsChartRequest' <$>
                   (o .:? "pageObjectIds" .!= mempty) <*>
                     (o .:? "spreadsheetId")
                     <*> (o .:? "linkingMode")
                     <*> (o .:? "containsText")
                     <*> (o .:? "chartId"))

instance ToJSON
           ReplaceAllShapesWithSheetsChartRequest
         where
        toJSON ReplaceAllShapesWithSheetsChartRequest'{..}
          = object
              (catMaybes
                 [("pageObjectIds" .=) <$> _raswscrPageObjectIds,
                  ("spreadsheetId" .=) <$> _raswscrSpreadsheetId,
                  ("linkingMode" .=) <$> _raswscrLinkingMode,
                  ("containsText" .=) <$> _raswscrContainsText,
                  ("chartId" .=) <$> _raswscrChartId])

-- | A List describes the look and feel of bullets belonging to paragraphs
-- associated with a list. A paragraph that is part of a list has an
-- implicit reference to that list\'s ID.
--
-- /See:/ 'list' smart constructor.
data List =
  List'
    { _lListId       :: !(Maybe Text)
    , _lNestingLevel :: !(Maybe ListNestingLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'List' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lListId'
--
-- * 'lNestingLevel'
list
    :: List
list = List' {_lListId = Nothing, _lNestingLevel = Nothing}

-- | The ID of the list.
lListId :: Lens' List (Maybe Text)
lListId = lens _lListId (\ s a -> s{_lListId = a})

-- | A map of nesting levels to the properties of bullets at the associated
-- level. A list has at most nine levels of nesting, so the possible values
-- for the keys of this map are 0 through 8, inclusive.
lNestingLevel :: Lens' List (Maybe ListNestingLevel)
lNestingLevel
  = lens _lNestingLevel
      (\ s a -> s{_lNestingLevel = a})

instance FromJSON List where
        parseJSON
          = withObject "List"
              (\ o ->
                 List' <$>
                   (o .:? "listId") <*> (o .:? "nestingLevel"))

instance ToJSON List where
        toJSON List'{..}
          = object
              (catMaybes
                 [("listId" .=) <$> _lListId,
                  ("nestingLevel" .=) <$> _lNestingLevel])

-- | The properties of Page that are only relevant for pages with page_type
-- NOTES.
--
-- /See:/ 'notesProperties' smart constructor.
newtype NotesProperties =
  NotesProperties'
    { _npSpeakerNotesObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotesProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npSpeakerNotesObjectId'
notesProperties
    :: NotesProperties
notesProperties = NotesProperties' {_npSpeakerNotesObjectId = Nothing}

-- | The object ID of the shape on this notes page that contains the speaker
-- notes for the corresponding slide. The actual shape may not always exist
-- on the notes page. Inserting text using this object ID will
-- automatically create the shape. In this case, the actual shape may have
-- different object ID. The \`GetPresentation\` or \`GetPage\` action will
-- always return the latest object ID.
npSpeakerNotesObjectId :: Lens' NotesProperties (Maybe Text)
npSpeakerNotesObjectId
  = lens _npSpeakerNotesObjectId
      (\ s a -> s{_npSpeakerNotesObjectId = a})

instance FromJSON NotesProperties where
        parseJSON
          = withObject "NotesProperties"
              (\ o ->
                 NotesProperties' <$> (o .:? "speakerNotesObjectId"))

instance ToJSON NotesProperties where
        toJSON NotesProperties'{..}
          = object
              (catMaybes
                 [("speakerNotesObjectId" .=) <$>
                    _npSpeakerNotesObjectId])

-- | The result of grouping objects.
--
-- /See:/ 'groupObjectsResponse' smart constructor.
newtype GroupObjectsResponse =
  GroupObjectsResponse'
    { _gorObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupObjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorObjectId'
groupObjectsResponse
    :: GroupObjectsResponse
groupObjectsResponse = GroupObjectsResponse' {_gorObjectId = Nothing}

-- | The object ID of the created group.
gorObjectId :: Lens' GroupObjectsResponse (Maybe Text)
gorObjectId
  = lens _gorObjectId (\ s a -> s{_gorObjectId = a})

instance FromJSON GroupObjectsResponse where
        parseJSON
          = withObject "GroupObjectsResponse"
              (\ o -> GroupObjectsResponse' <$> (o .:? "objectId"))

instance ToJSON GroupObjectsResponse where
        toJSON GroupObjectsResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _gorObjectId])

-- | An RGB color.
--
-- /See:/ 'rgbColor' smart constructor.
data RgbColor =
  RgbColor'
    { _rcRed   :: !(Maybe (Textual Double))
    , _rcGreen :: !(Maybe (Textual Double))
    , _rcBlue  :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RgbColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRed'
--
-- * 'rcGreen'
--
-- * 'rcBlue'
rgbColor
    :: RgbColor
rgbColor = RgbColor' {_rcRed = Nothing, _rcGreen = Nothing, _rcBlue = Nothing}

-- | The red component of the color, from 0.0 to 1.0.
rcRed :: Lens' RgbColor (Maybe Double)
rcRed
  = lens _rcRed (\ s a -> s{_rcRed = a}) .
      mapping _Coerce

-- | The green component of the color, from 0.0 to 1.0.
rcGreen :: Lens' RgbColor (Maybe Double)
rcGreen
  = lens _rcGreen (\ s a -> s{_rcGreen = a}) .
      mapping _Coerce

-- | The blue component of the color, from 0.0 to 1.0.
rcBlue :: Lens' RgbColor (Maybe Double)
rcBlue
  = lens _rcBlue (\ s a -> s{_rcBlue = a}) .
      mapping _Coerce

instance FromJSON RgbColor where
        parseJSON
          = withObject "RgbColor"
              (\ o ->
                 RgbColor' <$>
                   (o .:? "red") <*> (o .:? "green") <*> (o .:? "blue"))

instance ToJSON RgbColor where
        toJSON RgbColor'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _rcRed, ("green" .=) <$> _rcGreen,
                  ("blue" .=) <$> _rcBlue])

-- | Updates the properties of a Page.
--
-- /See:/ 'updatePagePropertiesRequest' smart constructor.
data UpdatePagePropertiesRequest =
  UpdatePagePropertiesRequest'
    { _upprObjectId       :: !(Maybe Text)
    , _upprPageProperties :: !(Maybe PageProperties)
    , _upprFields         :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePagePropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upprObjectId'
--
-- * 'upprPageProperties'
--
-- * 'upprFields'
updatePagePropertiesRequest
    :: UpdatePagePropertiesRequest
updatePagePropertiesRequest =
  UpdatePagePropertiesRequest'
    { _upprObjectId = Nothing
    , _upprPageProperties = Nothing
    , _upprFields = Nothing
    }

-- | The object ID of the page the update is applied to.
upprObjectId :: Lens' UpdatePagePropertiesRequest (Maybe Text)
upprObjectId
  = lens _upprObjectId (\ s a -> s{_upprObjectId = a})

-- | The page properties to update.
upprPageProperties :: Lens' UpdatePagePropertiesRequest (Maybe PageProperties)
upprPageProperties
  = lens _upprPageProperties
      (\ s a -> s{_upprPageProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`pageProperties\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the page background solid fill color, set \`fields\`
-- to \`\"pageBackgroundFill.solidFill.color\"\`. To reset a property to
-- its default value, include its field name in the field mask but leave
-- the field itself unset.
upprFields :: Lens' UpdatePagePropertiesRequest (Maybe GFieldMask)
upprFields
  = lens _upprFields (\ s a -> s{_upprFields = a})

instance FromJSON UpdatePagePropertiesRequest where
        parseJSON
          = withObject "UpdatePagePropertiesRequest"
              (\ o ->
                 UpdatePagePropertiesRequest' <$>
                   (o .:? "objectId") <*> (o .:? "pageProperties") <*>
                     (o .:? "fields"))

instance ToJSON UpdatePagePropertiesRequest where
        toJSON UpdatePagePropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _upprObjectId,
                  ("pageProperties" .=) <$> _upprPageProperties,
                  ("fields" .=) <$> _upprFields])

-- | Creates an embedded Google Sheets chart. NOTE: Chart creation requires
-- at least one of the spreadsheets.readonly, spreadsheets, drive.readonly,
-- drive.file, or drive OAuth scopes.
--
-- /See:/ 'createSheetsChartRequest' smart constructor.
data CreateSheetsChartRequest =
  CreateSheetsChartRequest'
    { _cscrObjectId          :: !(Maybe Text)
    , _cscrSpreadsheetId     :: !(Maybe Text)
    , _cscrLinkingMode       :: !(Maybe CreateSheetsChartRequestLinkingMode)
    , _cscrElementProperties :: !(Maybe PageElementProperties)
    , _cscrChartId           :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSheetsChartRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscrObjectId'
--
-- * 'cscrSpreadsheetId'
--
-- * 'cscrLinkingMode'
--
-- * 'cscrElementProperties'
--
-- * 'cscrChartId'
createSheetsChartRequest
    :: CreateSheetsChartRequest
createSheetsChartRequest =
  CreateSheetsChartRequest'
    { _cscrObjectId = Nothing
    , _cscrSpreadsheetId = Nothing
    , _cscrLinkingMode = Nothing
    , _cscrElementProperties = Nothing
    , _cscrChartId = Nothing
    }

-- | A user-supplied object ID. If specified, the ID must be unique among all
-- pages and page elements in the presentation. The ID should start with a
-- word character [a-zA-Z0-9_] and then followed by any number of the
-- following characters [a-zA-Z0-9_-:]. The length of the ID should not be
-- less than 5 or greater than 50. If empty, a unique identifier will be
-- generated.
cscrObjectId :: Lens' CreateSheetsChartRequest (Maybe Text)
cscrObjectId
  = lens _cscrObjectId (\ s a -> s{_cscrObjectId = a})

-- | The ID of the Google Sheets spreadsheet that contains the chart.
cscrSpreadsheetId :: Lens' CreateSheetsChartRequest (Maybe Text)
cscrSpreadsheetId
  = lens _cscrSpreadsheetId
      (\ s a -> s{_cscrSpreadsheetId = a})

-- | The mode with which the chart is linked to the source spreadsheet. When
-- not specified, the chart will be an image that is not linked.
cscrLinkingMode :: Lens' CreateSheetsChartRequest (Maybe CreateSheetsChartRequestLinkingMode)
cscrLinkingMode
  = lens _cscrLinkingMode
      (\ s a -> s{_cscrLinkingMode = a})

-- | The element properties for the chart. When the aspect ratio of the
-- provided size does not match the chart aspect ratio, the chart is scaled
-- and centered with respect to the size in order to maintain aspect ratio.
-- The provided transform is applied after this operation.
cscrElementProperties :: Lens' CreateSheetsChartRequest (Maybe PageElementProperties)
cscrElementProperties
  = lens _cscrElementProperties
      (\ s a -> s{_cscrElementProperties = a})

-- | The ID of the specific chart in the Google Sheets spreadsheet.
cscrChartId :: Lens' CreateSheetsChartRequest (Maybe Int32)
cscrChartId
  = lens _cscrChartId (\ s a -> s{_cscrChartId = a}) .
      mapping _Coerce

instance FromJSON CreateSheetsChartRequest where
        parseJSON
          = withObject "CreateSheetsChartRequest"
              (\ o ->
                 CreateSheetsChartRequest' <$>
                   (o .:? "objectId") <*> (o .:? "spreadsheetId") <*>
                     (o .:? "linkingMode")
                     <*> (o .:? "elementProperties")
                     <*> (o .:? "chartId"))

instance ToJSON CreateSheetsChartRequest where
        toJSON CreateSheetsChartRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _cscrObjectId,
                  ("spreadsheetId" .=) <$> _cscrSpreadsheetId,
                  ("linkingMode" .=) <$> _cscrLinkingMode,
                  ("elementProperties" .=) <$> _cscrElementProperties,
                  ("chartId" .=) <$> _cscrChartId])

-- | Properties of each row in a table.
--
-- /See:/ 'tableRowProperties' smart constructor.
newtype TableRowProperties =
  TableRowProperties'
    { _trpMinRowHeight :: Maybe Dimension
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableRowProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trpMinRowHeight'
tableRowProperties
    :: TableRowProperties
tableRowProperties = TableRowProperties' {_trpMinRowHeight = Nothing}

-- | Minimum height of the row. The row will be rendered in the Slides editor
-- at a height equal to or greater than this value in order to show all the
-- text in the row\'s cell(s).
trpMinRowHeight :: Lens' TableRowProperties (Maybe Dimension)
trpMinRowHeight
  = lens _trpMinRowHeight
      (\ s a -> s{_trpMinRowHeight = a})

instance FromJSON TableRowProperties where
        parseJSON
          = withObject "TableRowProperties"
              (\ o ->
                 TableRowProperties' <$> (o .:? "minRowHeight"))

instance ToJSON TableRowProperties where
        toJSON TableRowProperties'{..}
          = object
              (catMaybes
                 [("minRowHeight" .=) <$> _trpMinRowHeight])

-- | Updates the properties of a Table row.
--
-- /See:/ 'updateTableRowPropertiesRequest' smart constructor.
data UpdateTableRowPropertiesRequest =
  UpdateTableRowPropertiesRequest'
    { _utrprTableRowProperties :: !(Maybe TableRowProperties)
    , _utrprRowIndices         :: !(Maybe [Textual Int32])
    , _utrprObjectId           :: !(Maybe Text)
    , _utrprFields             :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTableRowPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrprTableRowProperties'
--
-- * 'utrprRowIndices'
--
-- * 'utrprObjectId'
--
-- * 'utrprFields'
updateTableRowPropertiesRequest
    :: UpdateTableRowPropertiesRequest
updateTableRowPropertiesRequest =
  UpdateTableRowPropertiesRequest'
    { _utrprTableRowProperties = Nothing
    , _utrprRowIndices = Nothing
    , _utrprObjectId = Nothing
    , _utrprFields = Nothing
    }

-- | The table row properties to update.
utrprTableRowProperties :: Lens' UpdateTableRowPropertiesRequest (Maybe TableRowProperties)
utrprTableRowProperties
  = lens _utrprTableRowProperties
      (\ s a -> s{_utrprTableRowProperties = a})

-- | The list of zero-based indices specifying which rows to update. If no
-- indices are provided, all rows in the table will be updated.
utrprRowIndices :: Lens' UpdateTableRowPropertiesRequest [Int32]
utrprRowIndices
  = lens _utrprRowIndices
      (\ s a -> s{_utrprRowIndices = a})
      . _Default
      . _Coerce

-- | The object ID of the table.
utrprObjectId :: Lens' UpdateTableRowPropertiesRequest (Maybe Text)
utrprObjectId
  = lens _utrprObjectId
      (\ s a -> s{_utrprObjectId = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableRowProperties\` is implied and should not be specified.
-- A single \`\"*\"\` can be used as short-hand for listing every field.
-- For example to update the minimum row height, set \`fields\` to
-- \`\"min_row_height\"\`. If \'\"min_row_height\"\' is included in the
-- field mask but the property is left unset, the minimum row height will
-- default to 0.
utrprFields :: Lens' UpdateTableRowPropertiesRequest (Maybe GFieldMask)
utrprFields
  = lens _utrprFields (\ s a -> s{_utrprFields = a})

instance FromJSON UpdateTableRowPropertiesRequest
         where
        parseJSON
          = withObject "UpdateTableRowPropertiesRequest"
              (\ o ->
                 UpdateTableRowPropertiesRequest' <$>
                   (o .:? "tableRowProperties") <*>
                     (o .:? "rowIndices" .!= mempty)
                     <*> (o .:? "objectId")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTableRowPropertiesRequest where
        toJSON UpdateTableRowPropertiesRequest'{..}
          = object
              (catMaybes
                 [("tableRowProperties" .=) <$>
                    _utrprTableRowProperties,
                  ("rowIndices" .=) <$> _utrprRowIndices,
                  ("objectId" .=) <$> _utrprObjectId,
                  ("fields" .=) <$> _utrprFields])

-- | The properties of Page that are only relevant for pages with page_type
-- MASTER.
--
-- /See:/ 'masterProperties' smart constructor.
newtype MasterProperties =
  MasterProperties'
    { _mpDisplayName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MasterProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpDisplayName'
masterProperties
    :: MasterProperties
masterProperties = MasterProperties' {_mpDisplayName = Nothing}

-- | The human-readable name of the master.
mpDisplayName :: Lens' MasterProperties (Maybe Text)
mpDisplayName
  = lens _mpDisplayName
      (\ s a -> s{_mpDisplayName = a})

instance FromJSON MasterProperties where
        parseJSON
          = withObject "MasterProperties"
              (\ o -> MasterProperties' <$> (o .:? "displayName"))

instance ToJSON MasterProperties where
        toJSON MasterProperties'{..}
          = object
              (catMaybes [("displayName" .=) <$> _mpDisplayName])

-- | Deletes text from a shape or a table cell.
--
-- /See:/ 'deleteTextRequest' smart constructor.
data DeleteTextRequest =
  DeleteTextRequest'
    { _dtrTextRange    :: !(Maybe Range)
    , _dtrObjectId     :: !(Maybe Text)
    , _dtrCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrTextRange'
--
-- * 'dtrObjectId'
--
-- * 'dtrCellLocation'
deleteTextRequest
    :: DeleteTextRequest
deleteTextRequest =
  DeleteTextRequest'
    { _dtrTextRange = Nothing
    , _dtrObjectId = Nothing
    , _dtrCellLocation = Nothing
    }

-- | The range of text to delete, based on TextElement indexes. There is
-- always an implicit newline character at the end of a shape\'s or table
-- cell\'s text that cannot be deleted. \`Range.Type.ALL\` will use the
-- correct bounds, but care must be taken when specifying explicit bounds
-- for range types \`FROM_START_INDEX\` and \`FIXED_RANGE\`. For example,
-- if the text is \"ABC\", followed by an implicit newline, then the
-- maximum value is 2 for \`text_range.start_index\` and 3 for
-- \`text_range.end_index\`. Deleting text that crosses a paragraph
-- boundary may result in changes to paragraph styles and lists as the two
-- paragraphs are merged. Ranges that include only one code unit of a
-- surrogate pair are expanded to include both code units.
dtrTextRange :: Lens' DeleteTextRequest (Maybe Range)
dtrTextRange
  = lens _dtrTextRange (\ s a -> s{_dtrTextRange = a})

-- | The object ID of the shape or table from which the text will be deleted.
dtrObjectId :: Lens' DeleteTextRequest (Maybe Text)
dtrObjectId
  = lens _dtrObjectId (\ s a -> s{_dtrObjectId = a})

-- | The optional table cell location if the text is to be deleted from a
-- table cell. If present, the object_id must refer to a table.
dtrCellLocation :: Lens' DeleteTextRequest (Maybe TableCellLocation)
dtrCellLocation
  = lens _dtrCellLocation
      (\ s a -> s{_dtrCellLocation = a})

instance FromJSON DeleteTextRequest where
        parseJSON
          = withObject "DeleteTextRequest"
              (\ o ->
                 DeleteTextRequest' <$>
                   (o .:? "textRange") <*> (o .:? "objectId") <*>
                     (o .:? "cellLocation"))

instance ToJSON DeleteTextRequest where
        toJSON DeleteTextRequest'{..}
          = object
              (catMaybes
                 [("textRange" .=) <$> _dtrTextRange,
                  ("objectId" .=) <$> _dtrObjectId,
                  ("cellLocation" .=) <$> _dtrCellLocation])

-- | Inserts columns into a table. Other columns in the table will be resized
-- to fit the new column.
--
-- /See:/ 'insertTableColumnsRequest' smart constructor.
data InsertTableColumnsRequest =
  InsertTableColumnsRequest'
    { _itcrInsertRight   :: !(Maybe Bool)
    , _itcrNumber        :: !(Maybe (Textual Int32))
    , _itcrCellLocation  :: !(Maybe TableCellLocation)
    , _itcrTableObjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsertTableColumnsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itcrInsertRight'
--
-- * 'itcrNumber'
--
-- * 'itcrCellLocation'
--
-- * 'itcrTableObjectId'
insertTableColumnsRequest
    :: InsertTableColumnsRequest
insertTableColumnsRequest =
  InsertTableColumnsRequest'
    { _itcrInsertRight = Nothing
    , _itcrNumber = Nothing
    , _itcrCellLocation = Nothing
    , _itcrTableObjectId = Nothing
    }

-- | Whether to insert new columns to the right of the reference cell
-- location. - \`True\`: insert to the right. - \`False\`: insert to the
-- left.
itcrInsertRight :: Lens' InsertTableColumnsRequest (Maybe Bool)
itcrInsertRight
  = lens _itcrInsertRight
      (\ s a -> s{_itcrInsertRight = a})

-- | The number of columns to be inserted. Maximum 20 per request.
itcrNumber :: Lens' InsertTableColumnsRequest (Maybe Int32)
itcrNumber
  = lens _itcrNumber (\ s a -> s{_itcrNumber = a}) .
      mapping _Coerce

-- | The reference table cell location from which columns will be inserted. A
-- new column will be inserted to the left (or right) of the column where
-- the reference cell is. If the reference cell is a merged cell, a new
-- column will be inserted to the left (or right) of the merged cell.
itcrCellLocation :: Lens' InsertTableColumnsRequest (Maybe TableCellLocation)
itcrCellLocation
  = lens _itcrCellLocation
      (\ s a -> s{_itcrCellLocation = a})

-- | The table to insert columns into.
itcrTableObjectId :: Lens' InsertTableColumnsRequest (Maybe Text)
itcrTableObjectId
  = lens _itcrTableObjectId
      (\ s a -> s{_itcrTableObjectId = a})

instance FromJSON InsertTableColumnsRequest where
        parseJSON
          = withObject "InsertTableColumnsRequest"
              (\ o ->
                 InsertTableColumnsRequest' <$>
                   (o .:? "insertRight") <*> (o .:? "number") <*>
                     (o .:? "cellLocation")
                     <*> (o .:? "tableObjectId"))

instance ToJSON InsertTableColumnsRequest where
        toJSON InsertTableColumnsRequest'{..}
          = object
              (catMaybes
                 [("insertRight" .=) <$> _itcrInsertRight,
                  ("number" .=) <$> _itcrNumber,
                  ("cellLocation" .=) <$> _itcrCellLocation,
                  ("tableObjectId" .=) <$> _itcrTableObjectId])

-- | The bulleted lists contained in this text, keyed by list ID.
--
-- /See:/ 'textContentLists' smart constructor.
newtype TextContentLists =
  TextContentLists'
    { _tclAddtional :: HashMap Text List
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextContentLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tclAddtional'
textContentLists
    :: HashMap Text List -- ^ 'tclAddtional'
    -> TextContentLists
textContentLists pTclAddtional_ =
  TextContentLists' {_tclAddtional = _Coerce # pTclAddtional_}

tclAddtional :: Lens' TextContentLists (HashMap Text List)
tclAddtional
  = lens _tclAddtional (\ s a -> s{_tclAddtional = a})
      . _Coerce

instance FromJSON TextContentLists where
        parseJSON
          = withObject "TextContentLists"
              (\ o -> TextContentLists' <$> (parseJSONObject o))

instance ToJSON TextContentLists where
        toJSON = toJSON . _tclAddtional

-- | A width and height.
--
-- /See:/ 'size' smart constructor.
data Size =
  Size'
    { _sHeight :: !(Maybe Dimension)
    , _sWidth  :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sHeight'
--
-- * 'sWidth'
size
    :: Size
size = Size' {_sHeight = Nothing, _sWidth = Nothing}

-- | The height of the object.
sHeight :: Lens' Size (Maybe Dimension)
sHeight = lens _sHeight (\ s a -> s{_sHeight = a})

-- | The width of the object.
sWidth :: Lens' Size (Maybe Dimension)
sWidth = lens _sWidth (\ s a -> s{_sWidth = a})

instance FromJSON Size where
        parseJSON
          = withObject "Size"
              (\ o ->
                 Size' <$> (o .:? "height") <*> (o .:? "width"))

instance ToJSON Size where
        toJSON Size'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _sHeight,
                  ("width" .=) <$> _sWidth])

-- | The stretched picture fill. The page or page element is filled entirely
-- with the specified picture. The picture is stretched to fit its
-- container.
--
-- /See:/ 'stretchedPictureFill' smart constructor.
data StretchedPictureFill =
  StretchedPictureFill'
    { _spfSize       :: !(Maybe Size)
    , _spfContentURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StretchedPictureFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spfSize'
--
-- * 'spfContentURL'
stretchedPictureFill
    :: StretchedPictureFill
stretchedPictureFill =
  StretchedPictureFill' {_spfSize = Nothing, _spfContentURL = Nothing}

-- | The original size of the picture fill. This field is read-only.
spfSize :: Lens' StretchedPictureFill (Maybe Size)
spfSize = lens _spfSize (\ s a -> s{_spfSize = a})

-- | Reading the content_url: An URL to a picture with a default lifetime of
-- 30 minutes. This URL is tagged with the account of the requester. Anyone
-- with the URL effectively accesses the picture as the original requester.
-- Access to the picture may be lost if the presentation\'s sharing
-- settings change. Writing the content_url: The picture is fetched once at
-- insertion time and a copy is stored for display inside the presentation.
-- Pictures must be less than 50MB in size, cannot exceed 25 megapixels,
-- and must be in one of PNG, JPEG, or GIF format. The provided URL can be
-- at most 2 kB in length.
spfContentURL :: Lens' StretchedPictureFill (Maybe Text)
spfContentURL
  = lens _spfContentURL
      (\ s a -> s{_spfContentURL = a})

instance FromJSON StretchedPictureFill where
        parseJSON
          = withObject "StretchedPictureFill"
              (\ o ->
                 StretchedPictureFill' <$>
                   (o .:? "size") <*> (o .:? "contentUrl"))

instance ToJSON StretchedPictureFill where
        toJSON StretchedPictureFill'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _spfSize,
                  ("contentUrl" .=) <$> _spfContentURL])

-- | The fill of the border.
--
-- /See:/ 'tableBOrderFill' smart constructor.
newtype TableBOrderFill =
  TableBOrderFill'
    { _tbofSolidFill :: Maybe SolidFill
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableBOrderFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbofSolidFill'
tableBOrderFill
    :: TableBOrderFill
tableBOrderFill = TableBOrderFill' {_tbofSolidFill = Nothing}

-- | Solid fill.
tbofSolidFill :: Lens' TableBOrderFill (Maybe SolidFill)
tbofSolidFill
  = lens _tbofSolidFill
      (\ s a -> s{_tbofSolidFill = a})

instance FromJSON TableBOrderFill where
        parseJSON
          = withObject "TableBOrderFill"
              (\ o -> TableBOrderFill' <$> (o .:? "solidFill"))

instance ToJSON TableBOrderFill where
        toJSON TableBOrderFill'{..}
          = object
              (catMaybes [("solidFill" .=) <$> _tbofSolidFill])

-- | A PageElement kind representing a linked chart embedded from Google
-- Sheets.
--
-- /See:/ 'sheetsChart' smart constructor.
data SheetsChart =
  SheetsChart'
    { _scSpreadsheetId         :: !(Maybe Text)
    , _scContentURL            :: !(Maybe Text)
    , _scSheetsChartProperties :: !(Maybe SheetsChartProperties)
    , _scChartId               :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SheetsChart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scSpreadsheetId'
--
-- * 'scContentURL'
--
-- * 'scSheetsChartProperties'
--
-- * 'scChartId'
sheetsChart
    :: SheetsChart
sheetsChart =
  SheetsChart'
    { _scSpreadsheetId = Nothing
    , _scContentURL = Nothing
    , _scSheetsChartProperties = Nothing
    , _scChartId = Nothing
    }

-- | The ID of the Google Sheets spreadsheet that contains the source chart.
scSpreadsheetId :: Lens' SheetsChart (Maybe Text)
scSpreadsheetId
  = lens _scSpreadsheetId
      (\ s a -> s{_scSpreadsheetId = a})

-- | The URL of an image of the embedded chart, with a default lifetime of 30
-- minutes. This URL is tagged with the account of the requester. Anyone
-- with the URL effectively accesses the image as the original requester.
-- Access to the image may be lost if the presentation\'s sharing settings
-- change.
scContentURL :: Lens' SheetsChart (Maybe Text)
scContentURL
  = lens _scContentURL (\ s a -> s{_scContentURL = a})

-- | The properties of the Sheets chart.
scSheetsChartProperties :: Lens' SheetsChart (Maybe SheetsChartProperties)
scSheetsChartProperties
  = lens _scSheetsChartProperties
      (\ s a -> s{_scSheetsChartProperties = a})

-- | The ID of the specific chart in the Google Sheets spreadsheet that is
-- embedded.
scChartId :: Lens' SheetsChart (Maybe Int32)
scChartId
  = lens _scChartId (\ s a -> s{_scChartId = a}) .
      mapping _Coerce

instance FromJSON SheetsChart where
        parseJSON
          = withObject "SheetsChart"
              (\ o ->
                 SheetsChart' <$>
                   (o .:? "spreadsheetId") <*> (o .:? "contentUrl") <*>
                     (o .:? "sheetsChartProperties")
                     <*> (o .:? "chartId"))

instance ToJSON SheetsChart where
        toJSON SheetsChart'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _scSpreadsheetId,
                  ("contentUrl" .=) <$> _scContentURL,
                  ("sheetsChartProperties" .=) <$>
                    _scSheetsChartProperties,
                  ("chartId" .=) <$> _scChartId])

-- | The result of creating a shape.
--
-- /See:/ 'createShapeResponse' smart constructor.
newtype CreateShapeResponse =
  CreateShapeResponse'
    { _cObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateShapeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cObjectId'
createShapeResponse
    :: CreateShapeResponse
createShapeResponse = CreateShapeResponse' {_cObjectId = Nothing}

-- | The object ID of the created shape.
cObjectId :: Lens' CreateShapeResponse (Maybe Text)
cObjectId
  = lens _cObjectId (\ s a -> s{_cObjectId = a})

instance FromJSON CreateShapeResponse where
        parseJSON
          = withObject "CreateShapeResponse"
              (\ o -> CreateShapeResponse' <$> (o .:? "objectId"))

instance ToJSON CreateShapeResponse where
        toJSON CreateShapeResponse'{..}
          = object (catMaybes [("objectId" .=) <$> _cObjectId])

-- | Deletes a column from a table.
--
-- /See:/ 'deleteTableColumnRequest' smart constructor.
data DeleteTableColumnRequest =
  DeleteTableColumnRequest'
    { _dtcrCellLocation  :: !(Maybe TableCellLocation)
    , _dtcrTableObjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTableColumnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtcrCellLocation'
--
-- * 'dtcrTableObjectId'
deleteTableColumnRequest
    :: DeleteTableColumnRequest
deleteTableColumnRequest =
  DeleteTableColumnRequest'
    {_dtcrCellLocation = Nothing, _dtcrTableObjectId = Nothing}

-- | The reference table cell location from which a column will be deleted.
-- The column this cell spans will be deleted. If this is a merged cell,
-- multiple columns will be deleted. If no columns remain in the table
-- after this deletion, the whole table is deleted.
dtcrCellLocation :: Lens' DeleteTableColumnRequest (Maybe TableCellLocation)
dtcrCellLocation
  = lens _dtcrCellLocation
      (\ s a -> s{_dtcrCellLocation = a})

-- | The table to delete columns from.
dtcrTableObjectId :: Lens' DeleteTableColumnRequest (Maybe Text)
dtcrTableObjectId
  = lens _dtcrTableObjectId
      (\ s a -> s{_dtcrTableObjectId = a})

instance FromJSON DeleteTableColumnRequest where
        parseJSON
          = withObject "DeleteTableColumnRequest"
              (\ o ->
                 DeleteTableColumnRequest' <$>
                   (o .:? "cellLocation") <*> (o .:? "tableObjectId"))

instance ToJSON DeleteTableColumnRequest where
        toJSON DeleteTableColumnRequest'{..}
          = object
              (catMaybes
                 [("cellLocation" .=) <$> _dtcrCellLocation,
                  ("tableObjectId" .=) <$> _dtcrTableObjectId])

-- | Contents of each border row in a table.
--
-- /See:/ 'tableBOrderRow' smart constructor.
newtype TableBOrderRow =
  TableBOrderRow'
    { _tborTableBOrderCells :: Maybe [TableBOrderCell]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableBOrderRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tborTableBOrderCells'
tableBOrderRow
    :: TableBOrderRow
tableBOrderRow = TableBOrderRow' {_tborTableBOrderCells = Nothing}

-- | Properties of each border cell. When a border\'s adjacent table cells
-- are merged, it is not included in the response.
tborTableBOrderCells :: Lens' TableBOrderRow [TableBOrderCell]
tborTableBOrderCells
  = lens _tborTableBOrderCells
      (\ s a -> s{_tborTableBOrderCells = a})
      . _Default
      . _Coerce

instance FromJSON TableBOrderRow where
        parseJSON
          = withObject "TableBOrderRow"
              (\ o ->
                 TableBOrderRow' <$>
                   (o .:? "tableBorderCells" .!= mempty))

instance ToJSON TableBOrderRow where
        toJSON TableBOrderRow'{..}
          = object
              (catMaybes
                 [("tableBorderCells" .=) <$> _tborTableBOrderCells])

-- | The properties for one end of a Line connection.
--
-- /See:/ 'lineConnection' smart constructor.
data LineConnection =
  LineConnection'
    { _lcConnectedObjectId   :: !(Maybe Text)
    , _lcConnectionSiteIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LineConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcConnectedObjectId'
--
-- * 'lcConnectionSiteIndex'
lineConnection
    :: LineConnection
lineConnection =
  LineConnection'
    {_lcConnectedObjectId = Nothing, _lcConnectionSiteIndex = Nothing}

-- | The object ID of the connected page element. Some page elements, such as
-- groups, tables, and lines do not have connection sites and therefore
-- cannot be connected to a connector line.
lcConnectedObjectId :: Lens' LineConnection (Maybe Text)
lcConnectedObjectId
  = lens _lcConnectedObjectId
      (\ s a -> s{_lcConnectedObjectId = a})

-- | The index of the connection site on the connected page element. In most
-- cases, it corresponds to the predefined connection site index from the
-- ECMA-376 standard. More information on those connection sites can be
-- found in the description of the \"cnx\" attribute in section 20.1.9.9
-- and Annex H. \"Predefined DrawingML Shape and Text Geometries\" of
-- \"Office Open XML File Formats-Fundamentals and Markup Language
-- Reference\", part 1 of [ECMA-376 5th edition]
-- (http:\/\/www.ecma-international.org\/publications\/standards\/Ecma-376.htm).
-- The position of each connection site can also be viewed from Slides
-- editor.
lcConnectionSiteIndex :: Lens' LineConnection (Maybe Int32)
lcConnectionSiteIndex
  = lens _lcConnectionSiteIndex
      (\ s a -> s{_lcConnectionSiteIndex = a})
      . mapping _Coerce

instance FromJSON LineConnection where
        parseJSON
          = withObject "LineConnection"
              (\ o ->
                 LineConnection' <$>
                   (o .:? "connectedObjectId") <*>
                     (o .:? "connectionSiteIndex"))

instance ToJSON LineConnection where
        toJSON LineConnection'{..}
          = object
              (catMaybes
                 [("connectedObjectId" .=) <$> _lcConnectedObjectId,
                  ("connectionSiteIndex" .=) <$>
                    _lcConnectionSiteIndex])

-- | A hypertext link.
--
-- /See:/ 'link' smart constructor.
data Link =
  Link'
    { _lURL          :: !(Maybe Text)
    , _lPageObjectId :: !(Maybe Text)
    , _lRelativeLink :: !(Maybe LinkRelativeLink)
    , _lSlideIndex   :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lURL'
--
-- * 'lPageObjectId'
--
-- * 'lRelativeLink'
--
-- * 'lSlideIndex'
link
    :: Link
link =
  Link'
    { _lURL = Nothing
    , _lPageObjectId = Nothing
    , _lRelativeLink = Nothing
    , _lSlideIndex = Nothing
    }

-- | If set, indicates this is a link to the external web page at this URL.
lURL :: Lens' Link (Maybe Text)
lURL = lens _lURL (\ s a -> s{_lURL = a})

-- | If set, indicates this is a link to the specific page in this
-- presentation with this ID. A page with this ID may not exist.
lPageObjectId :: Lens' Link (Maybe Text)
lPageObjectId
  = lens _lPageObjectId
      (\ s a -> s{_lPageObjectId = a})

-- | If set, indicates this is a link to a slide in this presentation,
-- addressed by its position.
lRelativeLink :: Lens' Link (Maybe LinkRelativeLink)
lRelativeLink
  = lens _lRelativeLink
      (\ s a -> s{_lRelativeLink = a})

-- | If set, indicates this is a link to the slide at this zero-based index
-- in the presentation. There may not be a slide at this index.
lSlideIndex :: Lens' Link (Maybe Int32)
lSlideIndex
  = lens _lSlideIndex (\ s a -> s{_lSlideIndex = a}) .
      mapping _Coerce

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link' <$>
                   (o .:? "url") <*> (o .:? "pageObjectId") <*>
                     (o .:? "relativeLink")
                     <*> (o .:? "slideIndex"))

instance ToJSON Link where
        toJSON Link'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _lURL,
                  ("pageObjectId" .=) <$> _lPageObjectId,
                  ("relativeLink" .=) <$> _lRelativeLink,
                  ("slideIndex" .=) <$> _lSlideIndex])

-- | Groups objects to create an object group. For example, groups
-- PageElements to create a Group on the same page as all the children.
--
-- /See:/ 'groupObjectsRequest' smart constructor.
data GroupObjectsRequest =
  GroupObjectsRequest'
    { _gorGroupObjectId     :: !(Maybe Text)
    , _gorChildrenObjectIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupObjectsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorGroupObjectId'
--
-- * 'gorChildrenObjectIds'
groupObjectsRequest
    :: GroupObjectsRequest
groupObjectsRequest =
  GroupObjectsRequest'
    {_gorGroupObjectId = Nothing, _gorChildrenObjectIds = Nothing}

-- | A user-supplied object ID for the group to be created. If you specify an
-- ID, it must be unique among all pages and page elements in the
-- presentation. The ID must start with an alphanumeric character or an
-- underscore (matches regex \`[a-zA-Z0-9_]\`); remaining characters may
-- include those as well as a hyphen or colon (matches regex
-- \`[a-zA-Z0-9_-:]\`). The length of the ID must not be less than 5 or
-- greater than 50. If you don\'t specify an ID, a unique one is generated.
gorGroupObjectId :: Lens' GroupObjectsRequest (Maybe Text)
gorGroupObjectId
  = lens _gorGroupObjectId
      (\ s a -> s{_gorGroupObjectId = a})

-- | The object IDs of the objects to group. Only page elements can be
-- grouped. There should be at least two page elements on the same page
-- that are not already in another group. Some page elements, such as
-- videos, tables and placeholder shapes cannot be grouped.
gorChildrenObjectIds :: Lens' GroupObjectsRequest [Text]
gorChildrenObjectIds
  = lens _gorChildrenObjectIds
      (\ s a -> s{_gorChildrenObjectIds = a})
      . _Default
      . _Coerce

instance FromJSON GroupObjectsRequest where
        parseJSON
          = withObject "GroupObjectsRequest"
              (\ o ->
                 GroupObjectsRequest' <$>
                   (o .:? "groupObjectId") <*>
                     (o .:? "childrenObjectIds" .!= mempty))

instance ToJSON GroupObjectsRequest where
        toJSON GroupObjectsRequest'{..}
          = object
              (catMaybes
                 [("groupObjectId" .=) <$> _gorGroupObjectId,
                  ("childrenObjectIds" .=) <$> _gorChildrenObjectIds])

-- | A magnitude in a single direction in the specified units.
--
-- /See:/ 'dimension' smart constructor.
data Dimension =
  Dimension'
    { _dMagnitude :: !(Maybe (Textual Double))
    , _dUnit      :: !(Maybe DimensionUnit)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMagnitude'
--
-- * 'dUnit'
dimension
    :: Dimension
dimension = Dimension' {_dMagnitude = Nothing, _dUnit = Nothing}

-- | The magnitude.
dMagnitude :: Lens' Dimension (Maybe Double)
dMagnitude
  = lens _dMagnitude (\ s a -> s{_dMagnitude = a}) .
      mapping _Coerce

-- | The units for magnitude.
dUnit :: Lens' Dimension (Maybe DimensionUnit)
dUnit = lens _dUnit (\ s a -> s{_dUnit = a})

instance FromJSON Dimension where
        parseJSON
          = withObject "Dimension"
              (\ o ->
                 Dimension' <$>
                   (o .:? "magnitude") <*> (o .:? "unit"))

instance ToJSON Dimension where
        toJSON Dimension'{..}
          = object
              (catMaybes
                 [("magnitude" .=) <$> _dMagnitude,
                  ("unit" .=) <$> _dUnit])

-- | Response message from a batch update.
--
-- /See:/ 'batchUpdatePresentationResponse' smart constructor.
data BatchUpdatePresentationResponse =
  BatchUpdatePresentationResponse'
    { _bPresentationId :: !(Maybe Text)
    , _bReplies        :: !(Maybe [Response])
    , _bWriteControl   :: !(Maybe WriteControl)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchUpdatePresentationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bPresentationId'
--
-- * 'bReplies'
--
-- * 'bWriteControl'
batchUpdatePresentationResponse
    :: BatchUpdatePresentationResponse
batchUpdatePresentationResponse =
  BatchUpdatePresentationResponse'
    {_bPresentationId = Nothing, _bReplies = Nothing, _bWriteControl = Nothing}

-- | The presentation the updates were applied to.
bPresentationId :: Lens' BatchUpdatePresentationResponse (Maybe Text)
bPresentationId
  = lens _bPresentationId
      (\ s a -> s{_bPresentationId = a})

-- | The reply of the updates. This maps 1:1 with the updates, although
-- replies to some requests may be empty.
bReplies :: Lens' BatchUpdatePresentationResponse [Response]
bReplies
  = lens _bReplies (\ s a -> s{_bReplies = a}) .
      _Default
      . _Coerce

-- | The updated write control after applying the request.
bWriteControl :: Lens' BatchUpdatePresentationResponse (Maybe WriteControl)
bWriteControl
  = lens _bWriteControl
      (\ s a -> s{_bWriteControl = a})

instance FromJSON BatchUpdatePresentationResponse
         where
        parseJSON
          = withObject "BatchUpdatePresentationResponse"
              (\ o ->
                 BatchUpdatePresentationResponse' <$>
                   (o .:? "presentationId") <*>
                     (o .:? "replies" .!= mempty)
                     <*> (o .:? "writeControl"))

instance ToJSON BatchUpdatePresentationResponse where
        toJSON BatchUpdatePresentationResponse'{..}
          = object
              (catMaybes
                 [("presentationId" .=) <$> _bPresentationId,
                  ("replies" .=) <$> _bReplies,
                  ("writeControl" .=) <$> _bWriteControl])

-- | The object being duplicated may contain other objects, for example when
-- duplicating a slide or a group page element. This map defines how the
-- IDs of duplicated objects are generated: the keys are the IDs of the
-- original objects and its values are the IDs that will be assigned to the
-- corresponding duplicate object. The ID of the source object\'s duplicate
-- may be specified in this map as well, using the same value of the
-- \`object_id\` field as a key and the newly desired ID as the value. All
-- keys must correspond to existing IDs in the presentation. All values
-- must be unique in the presentation and must start with an alphanumeric
-- character or an underscore (matches regex \`[a-zA-Z0-9_]\`); remaining
-- characters may include those as well as a hyphen or colon (matches regex
-- \`[a-zA-Z0-9_-:]\`). The length of the new ID must not be less than 5 or
-- greater than 50. If any IDs of source objects are omitted from the map,
-- a new random ID will be assigned. If the map is empty or unset, all
-- duplicate objects will receive a new random ID.
--
-- /See:/ 'duplicateObjectRequestObjectIds' smart constructor.
newtype DuplicateObjectRequestObjectIds =
  DuplicateObjectRequestObjectIds'
    { _doroiAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DuplicateObjectRequestObjectIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doroiAddtional'
duplicateObjectRequestObjectIds
    :: HashMap Text Text -- ^ 'doroiAddtional'
    -> DuplicateObjectRequestObjectIds
duplicateObjectRequestObjectIds pDoroiAddtional_ =
  DuplicateObjectRequestObjectIds'
    {_doroiAddtional = _Coerce # pDoroiAddtional_}

doroiAddtional :: Lens' DuplicateObjectRequestObjectIds (HashMap Text Text)
doroiAddtional
  = lens _doroiAddtional
      (\ s a -> s{_doroiAddtional = a})
      . _Coerce

instance FromJSON DuplicateObjectRequestObjectIds
         where
        parseJSON
          = withObject "DuplicateObjectRequestObjectIds"
              (\ o ->
                 DuplicateObjectRequestObjectIds' <$>
                   (parseJSONObject o))

instance ToJSON DuplicateObjectRequestObjectIds where
        toJSON = toJSON . _doroiAddtional

-- | The result of replacing shapes with a Google Sheets chart.
--
-- /See:/ 'replaceAllShapesWithSheetsChartResponse' smart constructor.
newtype ReplaceAllShapesWithSheetsChartResponse =
  ReplaceAllShapesWithSheetsChartResponse'
    { _raswscrOccurrencesChanged :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllShapesWithSheetsChartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raswscrOccurrencesChanged'
replaceAllShapesWithSheetsChartResponse
    :: ReplaceAllShapesWithSheetsChartResponse
replaceAllShapesWithSheetsChartResponse =
  ReplaceAllShapesWithSheetsChartResponse'
    {_raswscrOccurrencesChanged = Nothing}

-- | The number of shapes replaced with charts.
raswscrOccurrencesChanged :: Lens' ReplaceAllShapesWithSheetsChartResponse (Maybe Int32)
raswscrOccurrencesChanged
  = lens _raswscrOccurrencesChanged
      (\ s a -> s{_raswscrOccurrencesChanged = a})
      . mapping _Coerce

instance FromJSON
           ReplaceAllShapesWithSheetsChartResponse
         where
        parseJSON
          = withObject
              "ReplaceAllShapesWithSheetsChartResponse"
              (\ o ->
                 ReplaceAllShapesWithSheetsChartResponse' <$>
                   (o .:? "occurrencesChanged"))

instance ToJSON
           ReplaceAllShapesWithSheetsChartResponse
         where
        toJSON ReplaceAllShapesWithSheetsChartResponse'{..}
          = object
              (catMaybes
                 [("occurrencesChanged" .=) <$>
                    _raswscrOccurrencesChanged])

-- | Creates a new table.
--
-- /See:/ 'createTableRequest' smart constructor.
data CreateTableRequest =
  CreateTableRequest'
    { _ctrObjectId          :: !(Maybe Text)
    , _ctrRows              :: !(Maybe (Textual Int32))
    , _ctrElementProperties :: !(Maybe PageElementProperties)
    , _ctrColumns           :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTableRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrObjectId'
--
-- * 'ctrRows'
--
-- * 'ctrElementProperties'
--
-- * 'ctrColumns'
createTableRequest
    :: CreateTableRequest
createTableRequest =
  CreateTableRequest'
    { _ctrObjectId = Nothing
    , _ctrRows = Nothing
    , _ctrElementProperties = Nothing
    , _ctrColumns = Nothing
    }

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
ctrObjectId :: Lens' CreateTableRequest (Maybe Text)
ctrObjectId
  = lens _ctrObjectId (\ s a -> s{_ctrObjectId = a})

-- | Number of rows in the table.
ctrRows :: Lens' CreateTableRequest (Maybe Int32)
ctrRows
  = lens _ctrRows (\ s a -> s{_ctrRows = a}) .
      mapping _Coerce

-- | The element properties for the table. The table will be created at the
-- provided size, subject to a minimum size. If no size is provided, the
-- table will be automatically sized. Table transforms must have a scale of
-- 1 and no shear components. If no transform is provided, the table will
-- be centered on the page.
ctrElementProperties :: Lens' CreateTableRequest (Maybe PageElementProperties)
ctrElementProperties
  = lens _ctrElementProperties
      (\ s a -> s{_ctrElementProperties = a})

-- | Number of columns in the table.
ctrColumns :: Lens' CreateTableRequest (Maybe Int32)
ctrColumns
  = lens _ctrColumns (\ s a -> s{_ctrColumns = a}) .
      mapping _Coerce

instance FromJSON CreateTableRequest where
        parseJSON
          = withObject "CreateTableRequest"
              (\ o ->
                 CreateTableRequest' <$>
                   (o .:? "objectId") <*> (o .:? "rows") <*>
                     (o .:? "elementProperties")
                     <*> (o .:? "columns"))

instance ToJSON CreateTableRequest where
        toJSON CreateTableRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _ctrObjectId,
                  ("rows" .=) <$> _ctrRows,
                  ("elementProperties" .=) <$> _ctrElementProperties,
                  ("columns" .=) <$> _ctrColumns])

-- | The border styling properties of the TableBorderCell.
--
-- /See:/ 'tableBOrderProperties' smart constructor.
data TableBOrderProperties =
  TableBOrderProperties'
    { _tbopTableBOrderFill :: !(Maybe TableBOrderFill)
    , _tbopWeight          :: !(Maybe Dimension)
    , _tbopDashStyle       :: !(Maybe TableBOrderPropertiesDashStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableBOrderProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbopTableBOrderFill'
--
-- * 'tbopWeight'
--
-- * 'tbopDashStyle'
tableBOrderProperties
    :: TableBOrderProperties
tableBOrderProperties =
  TableBOrderProperties'
    { _tbopTableBOrderFill = Nothing
    , _tbopWeight = Nothing
    , _tbopDashStyle = Nothing
    }

-- | The fill of the table border.
tbopTableBOrderFill :: Lens' TableBOrderProperties (Maybe TableBOrderFill)
tbopTableBOrderFill
  = lens _tbopTableBOrderFill
      (\ s a -> s{_tbopTableBOrderFill = a})

-- | The thickness of the border.
tbopWeight :: Lens' TableBOrderProperties (Maybe Dimension)
tbopWeight
  = lens _tbopWeight (\ s a -> s{_tbopWeight = a})

-- | The dash style of the border.
tbopDashStyle :: Lens' TableBOrderProperties (Maybe TableBOrderPropertiesDashStyle)
tbopDashStyle
  = lens _tbopDashStyle
      (\ s a -> s{_tbopDashStyle = a})

instance FromJSON TableBOrderProperties where
        parseJSON
          = withObject "TableBOrderProperties"
              (\ o ->
                 TableBOrderProperties' <$>
                   (o .:? "tableBorderFill") <*> (o .:? "weight") <*>
                     (o .:? "dashStyle"))

instance ToJSON TableBOrderProperties where
        toJSON TableBOrderProperties'{..}
          = object
              (catMaybes
                 [("tableBorderFill" .=) <$> _tbopTableBOrderFill,
                  ("weight" .=) <$> _tbopWeight,
                  ("dashStyle" .=) <$> _tbopDashStyle])

-- | A single response from an update.
--
-- /See:/ 'response' smart constructor.
data Response =
  Response'
    { _rReplaceAllShapesWithImage       :: !(Maybe ReplaceAllShapesWithImageResponse)
    , _rCreateLine                      :: !(Maybe CreateLineResponse)
    , _rReplaceAllText                  :: !(Maybe ReplaceAllTextResponse)
    , _rReplaceAllShapesWithSheetsChart :: !(Maybe ReplaceAllShapesWithSheetsChartResponse)
    , _rCreateShape                     :: !(Maybe CreateShapeResponse)
    , _rGroupObjects                    :: !(Maybe GroupObjectsResponse)
    , _rCreateSheetsChart               :: !(Maybe CreateSheetsChartResponse)
    , _rDuplicateObject                 :: !(Maybe DuplicateObjectResponse)
    , _rCreateTable                     :: !(Maybe CreateTableResponse)
    , _rCreateVideo                     :: !(Maybe CreateVideoResponse)
    , _rCreateImage                     :: !(Maybe CreateImageResponse)
    , _rCreateSlide                     :: !(Maybe CreateSlideResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReplaceAllShapesWithImage'
--
-- * 'rCreateLine'
--
-- * 'rReplaceAllText'
--
-- * 'rReplaceAllShapesWithSheetsChart'
--
-- * 'rCreateShape'
--
-- * 'rGroupObjects'
--
-- * 'rCreateSheetsChart'
--
-- * 'rDuplicateObject'
--
-- * 'rCreateTable'
--
-- * 'rCreateVideo'
--
-- * 'rCreateImage'
--
-- * 'rCreateSlide'
response
    :: Response
response =
  Response'
    { _rReplaceAllShapesWithImage = Nothing
    , _rCreateLine = Nothing
    , _rReplaceAllText = Nothing
    , _rReplaceAllShapesWithSheetsChart = Nothing
    , _rCreateShape = Nothing
    , _rGroupObjects = Nothing
    , _rCreateSheetsChart = Nothing
    , _rDuplicateObject = Nothing
    , _rCreateTable = Nothing
    , _rCreateVideo = Nothing
    , _rCreateImage = Nothing
    , _rCreateSlide = Nothing
    }

-- | The result of replacing all shapes matching some criteria with an image.
rReplaceAllShapesWithImage :: Lens' Response (Maybe ReplaceAllShapesWithImageResponse)
rReplaceAllShapesWithImage
  = lens _rReplaceAllShapesWithImage
      (\ s a -> s{_rReplaceAllShapesWithImage = a})

-- | The result of creating a line.
rCreateLine :: Lens' Response (Maybe CreateLineResponse)
rCreateLine
  = lens _rCreateLine (\ s a -> s{_rCreateLine = a})

-- | The result of replacing text.
rReplaceAllText :: Lens' Response (Maybe ReplaceAllTextResponse)
rReplaceAllText
  = lens _rReplaceAllText
      (\ s a -> s{_rReplaceAllText = a})

-- | The result of replacing all shapes matching some criteria with a Google
-- Sheets chart.
rReplaceAllShapesWithSheetsChart :: Lens' Response (Maybe ReplaceAllShapesWithSheetsChartResponse)
rReplaceAllShapesWithSheetsChart
  = lens _rReplaceAllShapesWithSheetsChart
      (\ s a -> s{_rReplaceAllShapesWithSheetsChart = a})

-- | The result of creating a shape.
rCreateShape :: Lens' Response (Maybe CreateShapeResponse)
rCreateShape
  = lens _rCreateShape (\ s a -> s{_rCreateShape = a})

-- | The result of grouping objects.
rGroupObjects :: Lens' Response (Maybe GroupObjectsResponse)
rGroupObjects
  = lens _rGroupObjects
      (\ s a -> s{_rGroupObjects = a})

-- | The result of creating a Google Sheets chart.
rCreateSheetsChart :: Lens' Response (Maybe CreateSheetsChartResponse)
rCreateSheetsChart
  = lens _rCreateSheetsChart
      (\ s a -> s{_rCreateSheetsChart = a})

-- | The result of duplicating an object.
rDuplicateObject :: Lens' Response (Maybe DuplicateObjectResponse)
rDuplicateObject
  = lens _rDuplicateObject
      (\ s a -> s{_rDuplicateObject = a})

-- | The result of creating a table.
rCreateTable :: Lens' Response (Maybe CreateTableResponse)
rCreateTable
  = lens _rCreateTable (\ s a -> s{_rCreateTable = a})

-- | The result of creating a video.
rCreateVideo :: Lens' Response (Maybe CreateVideoResponse)
rCreateVideo
  = lens _rCreateVideo (\ s a -> s{_rCreateVideo = a})

-- | The result of creating an image.
rCreateImage :: Lens' Response (Maybe CreateImageResponse)
rCreateImage
  = lens _rCreateImage (\ s a -> s{_rCreateImage = a})

-- | The result of creating a slide.
rCreateSlide :: Lens' Response (Maybe CreateSlideResponse)
rCreateSlide
  = lens _rCreateSlide (\ s a -> s{_rCreateSlide = a})

instance FromJSON Response where
        parseJSON
          = withObject "Response"
              (\ o ->
                 Response' <$>
                   (o .:? "replaceAllShapesWithImage") <*>
                     (o .:? "createLine")
                     <*> (o .:? "replaceAllText")
                     <*> (o .:? "replaceAllShapesWithSheetsChart")
                     <*> (o .:? "createShape")
                     <*> (o .:? "groupObjects")
                     <*> (o .:? "createSheetsChart")
                     <*> (o .:? "duplicateObject")
                     <*> (o .:? "createTable")
                     <*> (o .:? "createVideo")
                     <*> (o .:? "createImage")
                     <*> (o .:? "createSlide"))

instance ToJSON Response where
        toJSON Response'{..}
          = object
              (catMaybes
                 [("replaceAllShapesWithImage" .=) <$>
                    _rReplaceAllShapesWithImage,
                  ("createLine" .=) <$> _rCreateLine,
                  ("replaceAllText" .=) <$> _rReplaceAllText,
                  ("replaceAllShapesWithSheetsChart" .=) <$>
                    _rReplaceAllShapesWithSheetsChart,
                  ("createShape" .=) <$> _rCreateShape,
                  ("groupObjects" .=) <$> _rGroupObjects,
                  ("createSheetsChart" .=) <$> _rCreateSheetsChart,
                  ("duplicateObject" .=) <$> _rDuplicateObject,
                  ("createTable" .=) <$> _rCreateTable,
                  ("createVideo" .=) <$> _rCreateVideo,
                  ("createImage" .=) <$> _rCreateImage,
                  ("createSlide" .=) <$> _rCreateSlide])

-- | A color that can either be fully opaque or fully transparent.
--
-- /See:/ 'optionalColor' smart constructor.
newtype OptionalColor =
  OptionalColor'
    { _ocOpaqueColor :: Maybe OpaqueColor
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OptionalColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocOpaqueColor'
optionalColor
    :: OptionalColor
optionalColor = OptionalColor' {_ocOpaqueColor = Nothing}

-- | If set, this will be used as an opaque color. If unset, this represents
-- a transparent color.
ocOpaqueColor :: Lens' OptionalColor (Maybe OpaqueColor)
ocOpaqueColor
  = lens _ocOpaqueColor
      (\ s a -> s{_ocOpaqueColor = a})

instance FromJSON OptionalColor where
        parseJSON
          = withObject "OptionalColor"
              (\ o -> OptionalColor' <$> (o .:? "opaqueColor"))

instance ToJSON OptionalColor where
        toJSON OptionalColor'{..}
          = object
              (catMaybes [("opaqueColor" .=) <$> _ocOpaqueColor])

-- | Duplicates a slide or page element. When duplicating a slide, the
-- duplicate slide will be created immediately following the specified
-- slide. When duplicating a page element, the duplicate will be placed on
-- the same page at the same position as the original.
--
-- /See:/ 'duplicateObjectRequest' smart constructor.
data DuplicateObjectRequest =
  DuplicateObjectRequest'
    { _dorObjectId  :: !(Maybe Text)
    , _dorObjectIds :: !(Maybe DuplicateObjectRequestObjectIds)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DuplicateObjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorObjectId'
--
-- * 'dorObjectIds'
duplicateObjectRequest
    :: DuplicateObjectRequest
duplicateObjectRequest =
  DuplicateObjectRequest' {_dorObjectId = Nothing, _dorObjectIds = Nothing}

-- | The ID of the object to duplicate.
dorObjectId :: Lens' DuplicateObjectRequest (Maybe Text)
dorObjectId
  = lens _dorObjectId (\ s a -> s{_dorObjectId = a})

-- | The object being duplicated may contain other objects, for example when
-- duplicating a slide or a group page element. This map defines how the
-- IDs of duplicated objects are generated: the keys are the IDs of the
-- original objects and its values are the IDs that will be assigned to the
-- corresponding duplicate object. The ID of the source object\'s duplicate
-- may be specified in this map as well, using the same value of the
-- \`object_id\` field as a key and the newly desired ID as the value. All
-- keys must correspond to existing IDs in the presentation. All values
-- must be unique in the presentation and must start with an alphanumeric
-- character or an underscore (matches regex \`[a-zA-Z0-9_]\`); remaining
-- characters may include those as well as a hyphen or colon (matches regex
-- \`[a-zA-Z0-9_-:]\`). The length of the new ID must not be less than 5 or
-- greater than 50. If any IDs of source objects are omitted from the map,
-- a new random ID will be assigned. If the map is empty or unset, all
-- duplicate objects will receive a new random ID.
dorObjectIds :: Lens' DuplicateObjectRequest (Maybe DuplicateObjectRequestObjectIds)
dorObjectIds
  = lens _dorObjectIds (\ s a -> s{_dorObjectIds = a})

instance FromJSON DuplicateObjectRequest where
        parseJSON
          = withObject "DuplicateObjectRequest"
              (\ o ->
                 DuplicateObjectRequest' <$>
                   (o .:? "objectId") <*> (o .:? "objectIds"))

instance ToJSON DuplicateObjectRequest where
        toJSON DuplicateObjectRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _dorObjectId,
                  ("objectIds" .=) <$> _dorObjectIds])

-- | Ungroups objects, such as groups.
--
-- /See:/ 'unGroupObjectsRequest' smart constructor.
newtype UnGroupObjectsRequest =
  UnGroupObjectsRequest'
    { _ugorObjectIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnGroupObjectsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugorObjectIds'
unGroupObjectsRequest
    :: UnGroupObjectsRequest
unGroupObjectsRequest = UnGroupObjectsRequest' {_ugorObjectIds = Nothing}

-- | The object IDs of the objects to ungroup. Only groups that are not
-- inside other groups can be ungrouped. All the groups should be on the
-- same page. The group itself is deleted. The visual sizes and positions
-- of all the children are preserved.
ugorObjectIds :: Lens' UnGroupObjectsRequest [Text]
ugorObjectIds
  = lens _ugorObjectIds
      (\ s a -> s{_ugorObjectIds = a})
      . _Default
      . _Coerce

instance FromJSON UnGroupObjectsRequest where
        parseJSON
          = withObject "UnGroupObjectsRequest"
              (\ o ->
                 UnGroupObjectsRequest' <$>
                   (o .:? "objectIds" .!= mempty))

instance ToJSON UnGroupObjectsRequest where
        toJSON UnGroupObjectsRequest'{..}
          = object
              (catMaybes [("objectIds" .=) <$> _ugorObjectIds])

-- | A page in a presentation.
--
-- /See:/ 'page' smart constructor.
data Page =
  Page'
    { _pNotesProperties  :: !(Maybe NotesProperties)
    , _pMasterProperties :: !(Maybe MasterProperties)
    , _pObjectId         :: !(Maybe Text)
    , _pPageElements     :: !(Maybe [PageElement])
    , _pSlideProperties  :: !(Maybe SlideProperties)
    , _pPageProperties   :: !(Maybe PageProperties)
    , _pLayoutProperties :: !(Maybe LayoutProperties)
    , _pPageType         :: !(Maybe PagePageType)
    , _pRevisionId       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pNotesProperties'
--
-- * 'pMasterProperties'
--
-- * 'pObjectId'
--
-- * 'pPageElements'
--
-- * 'pSlideProperties'
--
-- * 'pPageProperties'
--
-- * 'pLayoutProperties'
--
-- * 'pPageType'
--
-- * 'pRevisionId'
page
    :: Page
page =
  Page'
    { _pNotesProperties = Nothing
    , _pMasterProperties = Nothing
    , _pObjectId = Nothing
    , _pPageElements = Nothing
    , _pSlideProperties = Nothing
    , _pPageProperties = Nothing
    , _pLayoutProperties = Nothing
    , _pPageType = Nothing
    , _pRevisionId = Nothing
    }

-- | Notes specific properties. Only set if page_type = NOTES.
pNotesProperties :: Lens' Page (Maybe NotesProperties)
pNotesProperties
  = lens _pNotesProperties
      (\ s a -> s{_pNotesProperties = a})

-- | Master specific properties. Only set if page_type = MASTER.
pMasterProperties :: Lens' Page (Maybe MasterProperties)
pMasterProperties
  = lens _pMasterProperties
      (\ s a -> s{_pMasterProperties = a})

-- | The object ID for this page. Object IDs used by Page and PageElement
-- share the same namespace.
pObjectId :: Lens' Page (Maybe Text)
pObjectId
  = lens _pObjectId (\ s a -> s{_pObjectId = a})

-- | The page elements rendered on the page.
pPageElements :: Lens' Page [PageElement]
pPageElements
  = lens _pPageElements
      (\ s a -> s{_pPageElements = a})
      . _Default
      . _Coerce

-- | Slide specific properties. Only set if page_type = SLIDE.
pSlideProperties :: Lens' Page (Maybe SlideProperties)
pSlideProperties
  = lens _pSlideProperties
      (\ s a -> s{_pSlideProperties = a})

-- | The properties of the page.
pPageProperties :: Lens' Page (Maybe PageProperties)
pPageProperties
  = lens _pPageProperties
      (\ s a -> s{_pPageProperties = a})

-- | Layout specific properties. Only set if page_type = LAYOUT.
pLayoutProperties :: Lens' Page (Maybe LayoutProperties)
pLayoutProperties
  = lens _pLayoutProperties
      (\ s a -> s{_pLayoutProperties = a})

-- | The type of the page.
pPageType :: Lens' Page (Maybe PagePageType)
pPageType
  = lens _pPageType (\ s a -> s{_pPageType = a})

-- | The revision ID of the presentation containing this page. Can be used in
-- update requests to assert that the presentation revision hasn\'t changed
-- since the last read operation. Only populated if the user has edit
-- access to the presentation. The format of the revision ID may change
-- over time, so it should be treated opaquely. A returned revision ID is
-- only guaranteed to be valid for 24 hours after it has been returned and
-- cannot be shared across users. If the revision ID is unchanged between
-- calls, then the presentation has not changed. Conversely, a changed ID
-- (for the same presentation and user) usually means the presentation has
-- been updated; however, a changed ID can also be due to internal factors
-- such as ID format changes.
pRevisionId :: Lens' Page (Maybe Text)
pRevisionId
  = lens _pRevisionId (\ s a -> s{_pRevisionId = a})

instance FromJSON Page where
        parseJSON
          = withObject "Page"
              (\ o ->
                 Page' <$>
                   (o .:? "notesProperties") <*>
                     (o .:? "masterProperties")
                     <*> (o .:? "objectId")
                     <*> (o .:? "pageElements" .!= mempty)
                     <*> (o .:? "slideProperties")
                     <*> (o .:? "pageProperties")
                     <*> (o .:? "layoutProperties")
                     <*> (o .:? "pageType")
                     <*> (o .:? "revisionId"))

instance ToJSON Page where
        toJSON Page'{..}
          = object
              (catMaybes
                 [("notesProperties" .=) <$> _pNotesProperties,
                  ("masterProperties" .=) <$> _pMasterProperties,
                  ("objectId" .=) <$> _pObjectId,
                  ("pageElements" .=) <$> _pPageElements,
                  ("slideProperties" .=) <$> _pSlideProperties,
                  ("pageProperties" .=) <$> _pPageProperties,
                  ("layoutProperties" .=) <$> _pLayoutProperties,
                  ("pageType" .=) <$> _pPageType,
                  ("revisionId" .=) <$> _pRevisionId])

-- | The result of replacing text.
--
-- /See:/ 'replaceAllTextResponse' smart constructor.
newtype ReplaceAllTextResponse =
  ReplaceAllTextResponse'
    { _ratrOccurrencesChanged :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ratrOccurrencesChanged'
replaceAllTextResponse
    :: ReplaceAllTextResponse
replaceAllTextResponse =
  ReplaceAllTextResponse' {_ratrOccurrencesChanged = Nothing}

-- | The number of occurrences changed by replacing all text.
ratrOccurrencesChanged :: Lens' ReplaceAllTextResponse (Maybe Int32)
ratrOccurrencesChanged
  = lens _ratrOccurrencesChanged
      (\ s a -> s{_ratrOccurrencesChanged = a})
      . mapping _Coerce

instance FromJSON ReplaceAllTextResponse where
        parseJSON
          = withObject "ReplaceAllTextResponse"
              (\ o ->
                 ReplaceAllTextResponse' <$>
                   (o .:? "occurrencesChanged"))

instance ToJSON ReplaceAllTextResponse where
        toJSON ReplaceAllTextResponse'{..}
          = object
              (catMaybes
                 [("occurrencesChanged" .=) <$>
                    _ratrOccurrencesChanged])

-- | Describes the bullet of a paragraph.
--
-- /See:/ 'bullet' smart constructor.
data Bullet =
  Bullet'
    { _bGlyph        :: !(Maybe Text)
    , _bListId       :: !(Maybe Text)
    , _bNestingLevel :: !(Maybe (Textual Int32))
    , _bBulletStyle  :: !(Maybe TextStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Bullet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bGlyph'
--
-- * 'bListId'
--
-- * 'bNestingLevel'
--
-- * 'bBulletStyle'
bullet
    :: Bullet
bullet =
  Bullet'
    { _bGlyph = Nothing
    , _bListId = Nothing
    , _bNestingLevel = Nothing
    , _bBulletStyle = Nothing
    }

-- | The rendered bullet glyph for this paragraph.
bGlyph :: Lens' Bullet (Maybe Text)
bGlyph = lens _bGlyph (\ s a -> s{_bGlyph = a})

-- | The ID of the list this paragraph belongs to.
bListId :: Lens' Bullet (Maybe Text)
bListId = lens _bListId (\ s a -> s{_bListId = a})

-- | The nesting level of this paragraph in the list.
bNestingLevel :: Lens' Bullet (Maybe Int32)
bNestingLevel
  = lens _bNestingLevel
      (\ s a -> s{_bNestingLevel = a})
      . mapping _Coerce

-- | The paragraph specific text style applied to this bullet.
bBulletStyle :: Lens' Bullet (Maybe TextStyle)
bBulletStyle
  = lens _bBulletStyle (\ s a -> s{_bBulletStyle = a})

instance FromJSON Bullet where
        parseJSON
          = withObject "Bullet"
              (\ o ->
                 Bullet' <$>
                   (o .:? "glyph") <*> (o .:? "listId") <*>
                     (o .:? "nestingLevel")
                     <*> (o .:? "bulletStyle"))

instance ToJSON Bullet where
        toJSON Bullet'{..}
          = object
              (catMaybes
                 [("glyph" .=) <$> _bGlyph,
                  ("listId" .=) <$> _bListId,
                  ("nestingLevel" .=) <$> _bNestingLevel,
                  ("bulletStyle" .=) <$> _bBulletStyle])

-- | Update the properties of an Image.
--
-- /See:/ 'updateImagePropertiesRequest' smart constructor.
data UpdateImagePropertiesRequest =
  UpdateImagePropertiesRequest'
    { _uiprObjectId        :: !(Maybe Text)
    , _uiprImageProperties :: !(Maybe ImageProperties)
    , _uiprFields          :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateImagePropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiprObjectId'
--
-- * 'uiprImageProperties'
--
-- * 'uiprFields'
updateImagePropertiesRequest
    :: UpdateImagePropertiesRequest
updateImagePropertiesRequest =
  UpdateImagePropertiesRequest'
    { _uiprObjectId = Nothing
    , _uiprImageProperties = Nothing
    , _uiprFields = Nothing
    }

-- | The object ID of the image the updates are applied to.
uiprObjectId :: Lens' UpdateImagePropertiesRequest (Maybe Text)
uiprObjectId
  = lens _uiprObjectId (\ s a -> s{_uiprObjectId = a})

-- | The image properties to update.
uiprImageProperties :: Lens' UpdateImagePropertiesRequest (Maybe ImageProperties)
uiprImageProperties
  = lens _uiprImageProperties
      (\ s a -> s{_uiprImageProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`imageProperties\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the image outline color, set \`fields\` to
-- \`\"outline.outlineFill.solidFill.color\"\`. To reset a property to its
-- default value, include its field name in the field mask but leave the
-- field itself unset.
uiprFields :: Lens' UpdateImagePropertiesRequest (Maybe GFieldMask)
uiprFields
  = lens _uiprFields (\ s a -> s{_uiprFields = a})

instance FromJSON UpdateImagePropertiesRequest where
        parseJSON
          = withObject "UpdateImagePropertiesRequest"
              (\ o ->
                 UpdateImagePropertiesRequest' <$>
                   (o .:? "objectId") <*> (o .:? "imageProperties") <*>
                     (o .:? "fields"))

instance ToJSON UpdateImagePropertiesRequest where
        toJSON UpdateImagePropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _uiprObjectId,
                  ("imageProperties" .=) <$> _uiprImageProperties,
                  ("fields" .=) <$> _uiprFields])

-- | The properties of Page that are only relevant for pages with page_type
-- SLIDE.
--
-- /See:/ 'slideProperties' smart constructor.
data SlideProperties =
  SlideProperties'
    { _spLayoutObjectId :: !(Maybe Text)
    , _spMasterObjectId :: !(Maybe Text)
    , _spNotesPage      :: !(Maybe Page)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SlideProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spLayoutObjectId'
--
-- * 'spMasterObjectId'
--
-- * 'spNotesPage'
slideProperties
    :: SlideProperties
slideProperties =
  SlideProperties'
    { _spLayoutObjectId = Nothing
    , _spMasterObjectId = Nothing
    , _spNotesPage = Nothing
    }

-- | The object ID of the layout that this slide is based on. This property
-- is read-only.
spLayoutObjectId :: Lens' SlideProperties (Maybe Text)
spLayoutObjectId
  = lens _spLayoutObjectId
      (\ s a -> s{_spLayoutObjectId = a})

-- | The object ID of the master that this slide is based on. This property
-- is read-only.
spMasterObjectId :: Lens' SlideProperties (Maybe Text)
spMasterObjectId
  = lens _spMasterObjectId
      (\ s a -> s{_spMasterObjectId = a})

-- | The notes page that this slide is associated with. It defines the visual
-- appearance of a notes page when printing or exporting slides with
-- speaker notes. A notes page inherits properties from the notes master.
-- The placeholder shape with type BODY on the notes page contains the
-- speaker notes for this slide. The ID of this shape is identified by the
-- speakerNotesObjectId field. The notes page is read-only except for the
-- text content and styles of the speaker notes shape. This property is
-- read-only.
spNotesPage :: Lens' SlideProperties (Maybe Page)
spNotesPage
  = lens _spNotesPage (\ s a -> s{_spNotesPage = a})

instance FromJSON SlideProperties where
        parseJSON
          = withObject "SlideProperties"
              (\ o ->
                 SlideProperties' <$>
                   (o .:? "layoutObjectId") <*> (o .:? "masterObjectId")
                     <*> (o .:? "notesPage"))

instance ToJSON SlideProperties where
        toJSON SlideProperties'{..}
          = object
              (catMaybes
                 [("layoutObjectId" .=) <$> _spLayoutObjectId,
                  ("masterObjectId" .=) <$> _spMasterObjectId,
                  ("notesPage" .=) <$> _spNotesPage])

-- | A Google Slides presentation.
--
-- /See:/ 'presentation' smart constructor.
data Presentation =
  Presentation'
    { _preSlides         :: !(Maybe [Page])
    , _preNotesMaster    :: !(Maybe Page)
    , _preMasters        :: !(Maybe [Page])
    , _preLocale         :: !(Maybe Text)
    , _prePresentationId :: !(Maybe Text)
    , _preTitle          :: !(Maybe Text)
    , _preRevisionId     :: !(Maybe Text)
    , _prePageSize       :: !(Maybe Size)
    , _preLayouts        :: !(Maybe [Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Presentation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'preSlides'
--
-- * 'preNotesMaster'
--
-- * 'preMasters'
--
-- * 'preLocale'
--
-- * 'prePresentationId'
--
-- * 'preTitle'
--
-- * 'preRevisionId'
--
-- * 'prePageSize'
--
-- * 'preLayouts'
presentation
    :: Presentation
presentation =
  Presentation'
    { _preSlides = Nothing
    , _preNotesMaster = Nothing
    , _preMasters = Nothing
    , _preLocale = Nothing
    , _prePresentationId = Nothing
    , _preTitle = Nothing
    , _preRevisionId = Nothing
    , _prePageSize = Nothing
    , _preLayouts = Nothing
    }

-- | The slides in the presentation. A slide inherits properties from a slide
-- layout.
preSlides :: Lens' Presentation [Page]
preSlides
  = lens _preSlides (\ s a -> s{_preSlides = a}) .
      _Default
      . _Coerce

-- | The notes master in the presentation. It serves three purposes: -
-- Placeholder shapes on a notes master contain the default text styles and
-- shape properties of all placeholder shapes on notes pages. Specifically,
-- a \`SLIDE_IMAGE\` placeholder shape contains the slide thumbnail, and a
-- \`BODY\` placeholder shape contains the speaker notes. - The notes
-- master page properties define the common page properties inherited by
-- all notes pages. - Any other shapes on the notes master will appear on
-- all notes pages. The notes master is read-only.
preNotesMaster :: Lens' Presentation (Maybe Page)
preNotesMaster
  = lens _preNotesMaster
      (\ s a -> s{_preNotesMaster = a})

-- | The slide masters in the presentation. A slide master contains all
-- common page elements and the common properties for a set of layouts.
-- They serve three purposes: - Placeholder shapes on a master contain the
-- default text styles and shape properties of all placeholder shapes on
-- pages that use that master. - The master page properties define the
-- common page properties inherited by its layouts. - Any other shapes on
-- the master slide will appear on all slides using that master, regardless
-- of their layout.
preMasters :: Lens' Presentation [Page]
preMasters
  = lens _preMasters (\ s a -> s{_preMasters = a}) .
      _Default
      . _Coerce

-- | The locale of the presentation, as an IETF BCP 47 language tag.
preLocale :: Lens' Presentation (Maybe Text)
preLocale
  = lens _preLocale (\ s a -> s{_preLocale = a})

-- | The ID of the presentation.
prePresentationId :: Lens' Presentation (Maybe Text)
prePresentationId
  = lens _prePresentationId
      (\ s a -> s{_prePresentationId = a})

-- | The title of the presentation.
preTitle :: Lens' Presentation (Maybe Text)
preTitle = lens _preTitle (\ s a -> s{_preTitle = a})

-- | The revision ID of the presentation. Can be used in update requests to
-- assert that the presentation revision hasn\'t changed since the last
-- read operation. Only populated if the user has edit access to the
-- presentation. The format of the revision ID may change over time, so it
-- should be treated opaquely. A returned revision ID is only guaranteed to
-- be valid for 24 hours after it has been returned and cannot be shared
-- across users. If the revision ID is unchanged between calls, then the
-- presentation has not changed. Conversely, a changed ID (for the same
-- presentation and user) usually means the presentation has been updated;
-- however, a changed ID can also be due to internal factors such as ID
-- format changes.
preRevisionId :: Lens' Presentation (Maybe Text)
preRevisionId
  = lens _preRevisionId
      (\ s a -> s{_preRevisionId = a})

-- | The size of pages in the presentation.
prePageSize :: Lens' Presentation (Maybe Size)
prePageSize
  = lens _prePageSize (\ s a -> s{_prePageSize = a})

-- | The layouts in the presentation. A layout is a template that determines
-- how content is arranged and styled on the slides that inherit from that
-- layout.
preLayouts :: Lens' Presentation [Page]
preLayouts
  = lens _preLayouts (\ s a -> s{_preLayouts = a}) .
      _Default
      . _Coerce

instance FromJSON Presentation where
        parseJSON
          = withObject "Presentation"
              (\ o ->
                 Presentation' <$>
                   (o .:? "slides" .!= mempty) <*> (o .:? "notesMaster")
                     <*> (o .:? "masters" .!= mempty)
                     <*> (o .:? "locale")
                     <*> (o .:? "presentationId")
                     <*> (o .:? "title")
                     <*> (o .:? "revisionId")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "layouts" .!= mempty))

instance ToJSON Presentation where
        toJSON Presentation'{..}
          = object
              (catMaybes
                 [("slides" .=) <$> _preSlides,
                  ("notesMaster" .=) <$> _preNotesMaster,
                  ("masters" .=) <$> _preMasters,
                  ("locale" .=) <$> _preLocale,
                  ("presentationId" .=) <$> _prePresentationId,
                  ("title" .=) <$> _preTitle,
                  ("revisionId" .=) <$> _preRevisionId,
                  ("pageSize" .=) <$> _prePageSize,
                  ("layouts" .=) <$> _preLayouts])

-- | A pair mapping a theme color type to the concrete color it represents.
--
-- /See:/ 'themeColorPair' smart constructor.
data ThemeColorPair =
  ThemeColorPair'
    { _tcpColor :: !(Maybe RgbColor)
    , _tcpType  :: !(Maybe ThemeColorPairType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThemeColorPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpColor'
--
-- * 'tcpType'
themeColorPair
    :: ThemeColorPair
themeColorPair = ThemeColorPair' {_tcpColor = Nothing, _tcpType = Nothing}

-- | The concrete color corresponding to the theme color type above.
tcpColor :: Lens' ThemeColorPair (Maybe RgbColor)
tcpColor = lens _tcpColor (\ s a -> s{_tcpColor = a})

-- | The type of the theme color.
tcpType :: Lens' ThemeColorPair (Maybe ThemeColorPairType)
tcpType = lens _tcpType (\ s a -> s{_tcpType = a})

instance FromJSON ThemeColorPair where
        parseJSON
          = withObject "ThemeColorPair"
              (\ o ->
                 ThemeColorPair' <$>
                   (o .:? "color") <*> (o .:? "type"))

instance ToJSON ThemeColorPair where
        toJSON ThemeColorPair'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _tcpColor,
                  ("type" .=) <$> _tcpType])

-- | The shadow properties of a page element. If these fields are unset, they
-- may be inherited from a parent placeholder if it exists. If there is no
-- parent, the fields will default to the value used for new page elements
-- created in the Slides editor, which may depend on the page element kind.
--
-- /See:/ 'shadow' smart constructor.
data Shadow =
  Shadow'
    { _sTransform       :: !(Maybe AffineTransform)
    , _sColor           :: !(Maybe OpaqueColor)
    , _sBlurRadius      :: !(Maybe Dimension)
    , _sRotateWithShape :: !(Maybe Bool)
    , _sAlpha           :: !(Maybe (Textual Double))
    , _sAlignment       :: !(Maybe ShadowAlignment)
    , _sPropertyState   :: !(Maybe ShadowPropertyState)
    , _sType            :: !(Maybe ShadowType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Shadow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTransform'
--
-- * 'sColor'
--
-- * 'sBlurRadius'
--
-- * 'sRotateWithShape'
--
-- * 'sAlpha'
--
-- * 'sAlignment'
--
-- * 'sPropertyState'
--
-- * 'sType'
shadow
    :: Shadow
shadow =
  Shadow'
    { _sTransform = Nothing
    , _sColor = Nothing
    , _sBlurRadius = Nothing
    , _sRotateWithShape = Nothing
    , _sAlpha = Nothing
    , _sAlignment = Nothing
    , _sPropertyState = Nothing
    , _sType = Nothing
    }

-- | Transform that encodes the translate, scale, and skew of the shadow,
-- relative to the alignment position.
sTransform :: Lens' Shadow (Maybe AffineTransform)
sTransform
  = lens _sTransform (\ s a -> s{_sTransform = a})

-- | The shadow color value.
sColor :: Lens' Shadow (Maybe OpaqueColor)
sColor = lens _sColor (\ s a -> s{_sColor = a})

-- | The radius of the shadow blur. The larger the radius, the more diffuse
-- the shadow becomes.
sBlurRadius :: Lens' Shadow (Maybe Dimension)
sBlurRadius
  = lens _sBlurRadius (\ s a -> s{_sBlurRadius = a})

-- | Whether the shadow should rotate with the shape. This property is
-- read-only.
sRotateWithShape :: Lens' Shadow (Maybe Bool)
sRotateWithShape
  = lens _sRotateWithShape
      (\ s a -> s{_sRotateWithShape = a})

-- | The alpha of the shadow\'s color, from 0.0 to 1.0.
sAlpha :: Lens' Shadow (Maybe Double)
sAlpha
  = lens _sAlpha (\ s a -> s{_sAlpha = a}) .
      mapping _Coerce

-- | The alignment point of the shadow, that sets the origin for translate,
-- scale and skew of the shadow. This property is read-only.
sAlignment :: Lens' Shadow (Maybe ShadowAlignment)
sAlignment
  = lens _sAlignment (\ s a -> s{_sAlignment = a})

-- | The shadow property state. Updating the shadow on a page element will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no shadow on a page element, set
-- this field to \`NOT_RENDERED\`. In this case, any other shadow fields
-- set in the same request will be ignored.
sPropertyState :: Lens' Shadow (Maybe ShadowPropertyState)
sPropertyState
  = lens _sPropertyState
      (\ s a -> s{_sPropertyState = a})

-- | The type of the shadow. This property is read-only.
sType :: Lens' Shadow (Maybe ShadowType)
sType = lens _sType (\ s a -> s{_sType = a})

instance FromJSON Shadow where
        parseJSON
          = withObject "Shadow"
              (\ o ->
                 Shadow' <$>
                   (o .:? "transform") <*> (o .:? "color") <*>
                     (o .:? "blurRadius")
                     <*> (o .:? "rotateWithShape")
                     <*> (o .:? "alpha")
                     <*> (o .:? "alignment")
                     <*> (o .:? "propertyState")
                     <*> (o .:? "type"))

instance ToJSON Shadow where
        toJSON Shadow'{..}
          = object
              (catMaybes
                 [("transform" .=) <$> _sTransform,
                  ("color" .=) <$> _sColor,
                  ("blurRadius" .=) <$> _sBlurRadius,
                  ("rotateWithShape" .=) <$> _sRotateWithShape,
                  ("alpha" .=) <$> _sAlpha,
                  ("alignment" .=) <$> _sAlignment,
                  ("propertyState" .=) <$> _sPropertyState,
                  ("type" .=) <$> _sType])

-- | The properties of the Image.
--
-- /See:/ 'imageProperties' smart constructor.
data ImageProperties =
  ImageProperties'
    { _ipCropProperties :: !(Maybe CropProperties)
    , _ipLink           :: !(Maybe Link)
    , _ipTransparency   :: !(Maybe (Textual Double))
    , _ipShadow         :: !(Maybe Shadow)
    , _ipContrast       :: !(Maybe (Textual Double))
    , _ipRecolor        :: !(Maybe Recolor)
    , _ipOutline        :: !(Maybe Outline)
    , _ipBrightness     :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipCropProperties'
--
-- * 'ipLink'
--
-- * 'ipTransparency'
--
-- * 'ipShadow'
--
-- * 'ipContrast'
--
-- * 'ipRecolor'
--
-- * 'ipOutline'
--
-- * 'ipBrightness'
imageProperties
    :: ImageProperties
imageProperties =
  ImageProperties'
    { _ipCropProperties = Nothing
    , _ipLink = Nothing
    , _ipTransparency = Nothing
    , _ipShadow = Nothing
    , _ipContrast = Nothing
    , _ipRecolor = Nothing
    , _ipOutline = Nothing
    , _ipBrightness = Nothing
    }

-- | The crop properties of the image. If not set, the image is not cropped.
-- This property is read-only.
ipCropProperties :: Lens' ImageProperties (Maybe CropProperties)
ipCropProperties
  = lens _ipCropProperties
      (\ s a -> s{_ipCropProperties = a})

-- | The hyperlink destination of the image. If unset, there is no link.
ipLink :: Lens' ImageProperties (Maybe Link)
ipLink = lens _ipLink (\ s a -> s{_ipLink = a})

-- | The transparency effect of the image. The value should be in the
-- interval [0.0, 1.0], where 0 means no effect and 1 means completely
-- transparent. This property is read-only.
ipTransparency :: Lens' ImageProperties (Maybe Double)
ipTransparency
  = lens _ipTransparency
      (\ s a -> s{_ipTransparency = a})
      . mapping _Coerce

-- | The shadow of the image. If not set, the image has no shadow. This
-- property is read-only.
ipShadow :: Lens' ImageProperties (Maybe Shadow)
ipShadow = lens _ipShadow (\ s a -> s{_ipShadow = a})

-- | The contrast effect of the image. The value should be in the interval
-- [-1.0, 1.0], where 0 means no effect. This property is read-only.
ipContrast :: Lens' ImageProperties (Maybe Double)
ipContrast
  = lens _ipContrast (\ s a -> s{_ipContrast = a}) .
      mapping _Coerce

-- | The recolor effect of the image. If not set, the image is not recolored.
-- This property is read-only.
ipRecolor :: Lens' ImageProperties (Maybe Recolor)
ipRecolor
  = lens _ipRecolor (\ s a -> s{_ipRecolor = a})

-- | The outline of the image. If not set, the image has no outline.
ipOutline :: Lens' ImageProperties (Maybe Outline)
ipOutline
  = lens _ipOutline (\ s a -> s{_ipOutline = a})

-- | The brightness effect of the image. The value should be in the interval
-- [-1.0, 1.0], where 0 means no effect. This property is read-only.
ipBrightness :: Lens' ImageProperties (Maybe Double)
ipBrightness
  = lens _ipBrightness (\ s a -> s{_ipBrightness = a})
      . mapping _Coerce

instance FromJSON ImageProperties where
        parseJSON
          = withObject "ImageProperties"
              (\ o ->
                 ImageProperties' <$>
                   (o .:? "cropProperties") <*> (o .:? "link") <*>
                     (o .:? "transparency")
                     <*> (o .:? "shadow")
                     <*> (o .:? "contrast")
                     <*> (o .:? "recolor")
                     <*> (o .:? "outline")
                     <*> (o .:? "brightness"))

instance ToJSON ImageProperties where
        toJSON ImageProperties'{..}
          = object
              (catMaybes
                 [("cropProperties" .=) <$> _ipCropProperties,
                  ("link" .=) <$> _ipLink,
                  ("transparency" .=) <$> _ipTransparency,
                  ("shadow" .=) <$> _ipShadow,
                  ("contrast" .=) <$> _ipContrast,
                  ("recolor" .=) <$> _ipRecolor,
                  ("outline" .=) <$> _ipOutline,
                  ("brightness" .=) <$> _ipBrightness])

-- | A PageElement kind representing a non-connector line, straight
-- connector, curved connector, or bent connector.
--
-- /See:/ 'line' smart constructor.
data Line =
  Line'
    { _lLineProperties :: !(Maybe LineProperties)
    , _lLineCategory   :: !(Maybe LineLineCategory)
    , _lLineType       :: !(Maybe LineLineType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Line' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLineProperties'
--
-- * 'lLineCategory'
--
-- * 'lLineType'
line
    :: Line
line =
  Line'
    {_lLineProperties = Nothing, _lLineCategory = Nothing, _lLineType = Nothing}

-- | The properties of the line.
lLineProperties :: Lens' Line (Maybe LineProperties)
lLineProperties
  = lens _lLineProperties
      (\ s a -> s{_lLineProperties = a})

-- | The category of the line. It matches the \`category\` specified in
-- CreateLineRequest, and can be updated with UpdateLineCategoryRequest.
lLineCategory :: Lens' Line (Maybe LineLineCategory)
lLineCategory
  = lens _lLineCategory
      (\ s a -> s{_lLineCategory = a})

-- | The type of the line.
lLineType :: Lens' Line (Maybe LineLineType)
lLineType
  = lens _lLineType (\ s a -> s{_lLineType = a})

instance FromJSON Line where
        parseJSON
          = withObject "Line"
              (\ o ->
                 Line' <$>
                   (o .:? "lineProperties") <*> (o .:? "lineCategory")
                     <*> (o .:? "lineType"))

instance ToJSON Line where
        toJSON Line'{..}
          = object
              (catMaybes
                 [("lineProperties" .=) <$> _lLineProperties,
                  ("lineCategory" .=) <$> _lLineCategory,
                  ("lineType" .=) <$> _lLineType])

-- | The result of creating a video.
--
-- /See:/ 'createVideoResponse' smart constructor.
newtype CreateVideoResponse =
  CreateVideoResponse'
    { _cvrObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvrObjectId'
createVideoResponse
    :: CreateVideoResponse
createVideoResponse = CreateVideoResponse' {_cvrObjectId = Nothing}

-- | The object ID of the created video.
cvrObjectId :: Lens' CreateVideoResponse (Maybe Text)
cvrObjectId
  = lens _cvrObjectId (\ s a -> s{_cvrObjectId = a})

instance FromJSON CreateVideoResponse where
        parseJSON
          = withObject "CreateVideoResponse"
              (\ o -> CreateVideoResponse' <$> (o .:? "objectId"))

instance ToJSON CreateVideoResponse where
        toJSON CreateVideoResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _cvrObjectId])

-- | Slide layout reference. This may reference either: - A predefined layout
-- - One of the layouts in the presentation.
--
-- /See:/ 'layoutReference' smart constructor.
data LayoutReference =
  LayoutReference'
    { _lrPredefinedLayout :: !(Maybe LayoutReferencePredefinedLayout)
    , _lrLayoutId         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LayoutReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrPredefinedLayout'
--
-- * 'lrLayoutId'
layoutReference
    :: LayoutReference
layoutReference =
  LayoutReference' {_lrPredefinedLayout = Nothing, _lrLayoutId = Nothing}

-- | Predefined layout.
lrPredefinedLayout :: Lens' LayoutReference (Maybe LayoutReferencePredefinedLayout)
lrPredefinedLayout
  = lens _lrPredefinedLayout
      (\ s a -> s{_lrPredefinedLayout = a})

-- | Layout ID: the object ID of one of the layouts in the presentation.
lrLayoutId :: Lens' LayoutReference (Maybe Text)
lrLayoutId
  = lens _lrLayoutId (\ s a -> s{_lrLayoutId = a})

instance FromJSON LayoutReference where
        parseJSON
          = withObject "LayoutReference"
              (\ o ->
                 LayoutReference' <$>
                   (o .:? "predefinedLayout") <*> (o .:? "layoutId"))

instance ToJSON LayoutReference where
        toJSON LayoutReference'{..}
          = object
              (catMaybes
                 [("predefinedLayout" .=) <$> _lrPredefinedLayout,
                  ("layoutId" .=) <$> _lrLayoutId])

-- | The fill of the line.
--
-- /See:/ 'lineFill' smart constructor.
newtype LineFill =
  LineFill'
    { _lfSolidFill :: Maybe SolidFill
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LineFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfSolidFill'
lineFill
    :: LineFill
lineFill = LineFill' {_lfSolidFill = Nothing}

-- | Solid color fill.
lfSolidFill :: Lens' LineFill (Maybe SolidFill)
lfSolidFill
  = lens _lfSolidFill (\ s a -> s{_lfSolidFill = a})

instance FromJSON LineFill where
        parseJSON
          = withObject "LineFill"
              (\ o -> LineFill' <$> (o .:? "solidFill"))

instance ToJSON LineFill where
        toJSON LineFill'{..}
          = object
              (catMaybes [("solidFill" .=) <$> _lfSolidFill])

-- | Updates the transform of a page element. Updating the transform of a
-- group will change the absolute transform of the page elements in that
-- group, which can change their visual appearance. See the documentation
-- for PageElement.transform for more details.
--
-- /See:/ 'updatePageElementTransformRequest' smart constructor.
data UpdatePageElementTransformRequest =
  UpdatePageElementTransformRequest'
    { _upetrTransform :: !(Maybe AffineTransform)
    , _upetrObjectId  :: !(Maybe Text)
    , _upetrApplyMode :: !(Maybe UpdatePageElementTransformRequestApplyMode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePageElementTransformRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upetrTransform'
--
-- * 'upetrObjectId'
--
-- * 'upetrApplyMode'
updatePageElementTransformRequest
    :: UpdatePageElementTransformRequest
updatePageElementTransformRequest =
  UpdatePageElementTransformRequest'
    { _upetrTransform = Nothing
    , _upetrObjectId = Nothing
    , _upetrApplyMode = Nothing
    }

-- | The input transform matrix used to update the page element.
upetrTransform :: Lens' UpdatePageElementTransformRequest (Maybe AffineTransform)
upetrTransform
  = lens _upetrTransform
      (\ s a -> s{_upetrTransform = a})

-- | The object ID of the page element to update.
upetrObjectId :: Lens' UpdatePageElementTransformRequest (Maybe Text)
upetrObjectId
  = lens _upetrObjectId
      (\ s a -> s{_upetrObjectId = a})

-- | The apply mode of the transform update.
upetrApplyMode :: Lens' UpdatePageElementTransformRequest (Maybe UpdatePageElementTransformRequestApplyMode)
upetrApplyMode
  = lens _upetrApplyMode
      (\ s a -> s{_upetrApplyMode = a})

instance FromJSON UpdatePageElementTransformRequest
         where
        parseJSON
          = withObject "UpdatePageElementTransformRequest"
              (\ o ->
                 UpdatePageElementTransformRequest' <$>
                   (o .:? "transform") <*> (o .:? "objectId") <*>
                     (o .:? "applyMode"))

instance ToJSON UpdatePageElementTransformRequest
         where
        toJSON UpdatePageElementTransformRequest'{..}
          = object
              (catMaybes
                 [("transform" .=) <$> _upetrTransform,
                  ("objectId" .=) <$> _upetrObjectId,
                  ("applyMode" .=) <$> _upetrApplyMode])

-- | Inserts rows into a table.
--
-- /See:/ 'insertTableRowsRequest' smart constructor.
data InsertTableRowsRequest =
  InsertTableRowsRequest'
    { _itrrInsertBelow   :: !(Maybe Bool)
    , _itrrNumber        :: !(Maybe (Textual Int32))
    , _itrrCellLocation  :: !(Maybe TableCellLocation)
    , _itrrTableObjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsertTableRowsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itrrInsertBelow'
--
-- * 'itrrNumber'
--
-- * 'itrrCellLocation'
--
-- * 'itrrTableObjectId'
insertTableRowsRequest
    :: InsertTableRowsRequest
insertTableRowsRequest =
  InsertTableRowsRequest'
    { _itrrInsertBelow = Nothing
    , _itrrNumber = Nothing
    , _itrrCellLocation = Nothing
    , _itrrTableObjectId = Nothing
    }

-- | Whether to insert new rows below the reference cell location. -
-- \`True\`: insert below the cell. - \`False\`: insert above the cell.
itrrInsertBelow :: Lens' InsertTableRowsRequest (Maybe Bool)
itrrInsertBelow
  = lens _itrrInsertBelow
      (\ s a -> s{_itrrInsertBelow = a})

-- | The number of rows to be inserted. Maximum 20 per request.
itrrNumber :: Lens' InsertTableRowsRequest (Maybe Int32)
itrrNumber
  = lens _itrrNumber (\ s a -> s{_itrrNumber = a}) .
      mapping _Coerce

-- | The reference table cell location from which rows will be inserted. A
-- new row will be inserted above (or below) the row where the reference
-- cell is. If the reference cell is a merged cell, a new row will be
-- inserted above (or below) the merged cell.
itrrCellLocation :: Lens' InsertTableRowsRequest (Maybe TableCellLocation)
itrrCellLocation
  = lens _itrrCellLocation
      (\ s a -> s{_itrrCellLocation = a})

-- | The table to insert rows into.
itrrTableObjectId :: Lens' InsertTableRowsRequest (Maybe Text)
itrrTableObjectId
  = lens _itrrTableObjectId
      (\ s a -> s{_itrrTableObjectId = a})

instance FromJSON InsertTableRowsRequest where
        parseJSON
          = withObject "InsertTableRowsRequest"
              (\ o ->
                 InsertTableRowsRequest' <$>
                   (o .:? "insertBelow") <*> (o .:? "number") <*>
                     (o .:? "cellLocation")
                     <*> (o .:? "tableObjectId"))

instance ToJSON InsertTableRowsRequest where
        toJSON InsertTableRowsRequest'{..}
          = object
              (catMaybes
                 [("insertBelow" .=) <$> _itrrInsertBelow,
                  ("number" .=) <$> _itrrNumber,
                  ("cellLocation" .=) <$> _itrrCellLocation,
                  ("tableObjectId" .=) <$> _itrrTableObjectId])

-- | Unmerges cells in a Table.
--
-- /See:/ 'unmergeTableCellsRequest' smart constructor.
data UnmergeTableCellsRequest =
  UnmergeTableCellsRequest'
    { _utcrObjectId   :: !(Maybe Text)
    , _utcrTableRange :: !(Maybe TableRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnmergeTableCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcrObjectId'
--
-- * 'utcrTableRange'
unmergeTableCellsRequest
    :: UnmergeTableCellsRequest
unmergeTableCellsRequest =
  UnmergeTableCellsRequest' {_utcrObjectId = Nothing, _utcrTableRange = Nothing}

-- | The object ID of the table.
utcrObjectId :: Lens' UnmergeTableCellsRequest (Maybe Text)
utcrObjectId
  = lens _utcrObjectId (\ s a -> s{_utcrObjectId = a})

-- | The table range specifying which cells of the table to unmerge. All
-- merged cells in this range will be unmerged, and cells that are already
-- unmerged will not be affected. If the range has no merged cells, the
-- request will do nothing. If there is text in any of the merged cells,
-- the text will remain in the upper-left (\"head\") cell of the resulting
-- block of unmerged cells.
utcrTableRange :: Lens' UnmergeTableCellsRequest (Maybe TableRange)
utcrTableRange
  = lens _utcrTableRange
      (\ s a -> s{_utcrTableRange = a})

instance FromJSON UnmergeTableCellsRequest where
        parseJSON
          = withObject "UnmergeTableCellsRequest"
              (\ o ->
                 UnmergeTableCellsRequest' <$>
                   (o .:? "objectId") <*> (o .:? "tableRange"))

instance ToJSON UnmergeTableCellsRequest where
        toJSON UnmergeTableCellsRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _utcrObjectId,
                  ("tableRange" .=) <$> _utcrTableRange])

-- | A PageElement kind representing a video.
--
-- /See:/ 'video' smart constructor.
data Video =
  Video'
    { _vURL             :: !(Maybe Text)
    , _vSource          :: !(Maybe VideoSource)
    , _vId              :: !(Maybe Text)
    , _vVideoProperties :: !(Maybe VideoProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vURL'
--
-- * 'vSource'
--
-- * 'vId'
--
-- * 'vVideoProperties'
video
    :: Video
video =
  Video'
    { _vURL = Nothing
    , _vSource = Nothing
    , _vId = Nothing
    , _vVideoProperties = Nothing
    }

-- | An URL to a video. The URL is valid as long as the source video exists
-- and sharing settings do not change.
vURL :: Lens' Video (Maybe Text)
vURL = lens _vURL (\ s a -> s{_vURL = a})

-- | The video source.
vSource :: Lens' Video (Maybe VideoSource)
vSource = lens _vSource (\ s a -> s{_vSource = a})

-- | The video source\'s unique identifier for this video.
vId :: Lens' Video (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | The properties of the video.
vVideoProperties :: Lens' Video (Maybe VideoProperties)
vVideoProperties
  = lens _vVideoProperties
      (\ s a -> s{_vVideoProperties = a})

instance FromJSON Video where
        parseJSON
          = withObject "Video"
              (\ o ->
                 Video' <$>
                   (o .:? "url") <*> (o .:? "source") <*> (o .:? "id")
                     <*> (o .:? "videoProperties"))

instance ToJSON Video where
        toJSON Video'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _vURL, ("source" .=) <$> _vSource,
                  ("id" .=) <$> _vId,
                  ("videoProperties" .=) <$> _vVideoProperties])

-- | Updates the properties of a Table column.
--
-- /See:/ 'updateTableColumnPropertiesRequest' smart constructor.
data UpdateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest'
    { _utcprObjectId              :: !(Maybe Text)
    , _utcprTableColumnProperties :: !(Maybe TableColumnProperties)
    , _utcprFields                :: !(Maybe GFieldMask)
    , _utcprColumnIndices         :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTableColumnPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcprObjectId'
--
-- * 'utcprTableColumnProperties'
--
-- * 'utcprFields'
--
-- * 'utcprColumnIndices'
updateTableColumnPropertiesRequest
    :: UpdateTableColumnPropertiesRequest
updateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest'
    { _utcprObjectId = Nothing
    , _utcprTableColumnProperties = Nothing
    , _utcprFields = Nothing
    , _utcprColumnIndices = Nothing
    }

-- | The object ID of the table.
utcprObjectId :: Lens' UpdateTableColumnPropertiesRequest (Maybe Text)
utcprObjectId
  = lens _utcprObjectId
      (\ s a -> s{_utcprObjectId = a})

-- | The table column properties to update. If the value of
-- \`table_column_properties#column_width\` in the request is less than
-- 406,400 EMU (32 points), a 400 bad request error is returned.
utcprTableColumnProperties :: Lens' UpdateTableColumnPropertiesRequest (Maybe TableColumnProperties)
utcprTableColumnProperties
  = lens _utcprTableColumnProperties
      (\ s a -> s{_utcprTableColumnProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableColumnProperties\` is implied and should not be
-- specified. A single \`\"*\"\` can be used as short-hand for listing
-- every field. For example to update the column width, set \`fields\` to
-- \`\"column_width\"\`. If \'\"column_width\"\' is included in the field
-- mask but the property is left unset, the column width will default to
-- 406,400 EMU (32 points).
utcprFields :: Lens' UpdateTableColumnPropertiesRequest (Maybe GFieldMask)
utcprFields
  = lens _utcprFields (\ s a -> s{_utcprFields = a})

-- | The list of zero-based indices specifying which columns to update. If no
-- indices are provided, all columns in the table will be updated.
utcprColumnIndices :: Lens' UpdateTableColumnPropertiesRequest [Int32]
utcprColumnIndices
  = lens _utcprColumnIndices
      (\ s a -> s{_utcprColumnIndices = a})
      . _Default
      . _Coerce

instance FromJSON UpdateTableColumnPropertiesRequest
         where
        parseJSON
          = withObject "UpdateTableColumnPropertiesRequest"
              (\ o ->
                 UpdateTableColumnPropertiesRequest' <$>
                   (o .:? "objectId") <*>
                     (o .:? "tableColumnProperties")
                     <*> (o .:? "fields")
                     <*> (o .:? "columnIndices" .!= mempty))

instance ToJSON UpdateTableColumnPropertiesRequest
         where
        toJSON UpdateTableColumnPropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _utcprObjectId,
                  ("tableColumnProperties" .=) <$>
                    _utcprTableColumnProperties,
                  ("fields" .=) <$> _utcprFields,
                  ("columnIndices" .=) <$> _utcprColumnIndices])

-- | The properties of the TableCell.
--
-- /See:/ 'tableCellProperties' smart constructor.
data TableCellProperties =
  TableCellProperties'
    { _tcpTableCellBackgRoundFill :: !(Maybe TableCellBackgRoundFill)
    , _tcpContentAlignment        :: !(Maybe TableCellPropertiesContentAlignment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableCellProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpTableCellBackgRoundFill'
--
-- * 'tcpContentAlignment'
tableCellProperties
    :: TableCellProperties
tableCellProperties =
  TableCellProperties'
    {_tcpTableCellBackgRoundFill = Nothing, _tcpContentAlignment = Nothing}

-- | The background fill of the table cell. The default fill matches the fill
-- for newly created table cells in the Slides editor.
tcpTableCellBackgRoundFill :: Lens' TableCellProperties (Maybe TableCellBackgRoundFill)
tcpTableCellBackgRoundFill
  = lens _tcpTableCellBackgRoundFill
      (\ s a -> s{_tcpTableCellBackgRoundFill = a})

-- | The alignment of the content in the table cell. The default alignment
-- matches the alignment for newly created table cells in the Slides
-- editor.
tcpContentAlignment :: Lens' TableCellProperties (Maybe TableCellPropertiesContentAlignment)
tcpContentAlignment
  = lens _tcpContentAlignment
      (\ s a -> s{_tcpContentAlignment = a})

instance FromJSON TableCellProperties where
        parseJSON
          = withObject "TableCellProperties"
              (\ o ->
                 TableCellProperties' <$>
                   (o .:? "tableCellBackgroundFill") <*>
                     (o .:? "contentAlignment"))

instance ToJSON TableCellProperties where
        toJSON TableCellProperties'{..}
          = object
              (catMaybes
                 [("tableCellBackgroundFill" .=) <$>
                    _tcpTableCellBackgRoundFill,
                  ("contentAlignment" .=) <$> _tcpContentAlignment])

-- | The result of creating a line.
--
-- /See:/ 'createLineResponse' smart constructor.
newtype CreateLineResponse =
  CreateLineResponse'
    { _clrObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrObjectId'
createLineResponse
    :: CreateLineResponse
createLineResponse = CreateLineResponse' {_clrObjectId = Nothing}

-- | The object ID of the created line.
clrObjectId :: Lens' CreateLineResponse (Maybe Text)
clrObjectId
  = lens _clrObjectId (\ s a -> s{_clrObjectId = a})

instance FromJSON CreateLineResponse where
        parseJSON
          = withObject "CreateLineResponse"
              (\ o -> CreateLineResponse' <$> (o .:? "objectId"))

instance ToJSON CreateLineResponse where
        toJSON CreateLineResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _clrObjectId])

-- | A PageElement kind representing word art.
--
-- /See:/ 'wordArt' smart constructor.
newtype WordArt =
  WordArt'
    { _waRenderedText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WordArt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waRenderedText'
wordArt
    :: WordArt
wordArt = WordArt' {_waRenderedText = Nothing}

-- | The text rendered as word art.
waRenderedText :: Lens' WordArt (Maybe Text)
waRenderedText
  = lens _waRenderedText
      (\ s a -> s{_waRenderedText = a})

instance FromJSON WordArt where
        parseJSON
          = withObject "WordArt"
              (\ o -> WordArt' <$> (o .:? "renderedText"))

instance ToJSON WordArt where
        toJSON WordArt'{..}
          = object
              (catMaybes [("renderedText" .=) <$> _waRenderedText])

-- | The table cell background fill.
--
-- /See:/ 'tableCellBackgRoundFill' smart constructor.
data TableCellBackgRoundFill =
  TableCellBackgRoundFill'
    { _tcbrfSolidFill     :: !(Maybe SolidFill)
    , _tcbrfPropertyState :: !(Maybe TableCellBackgRoundFillPropertyState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableCellBackgRoundFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcbrfSolidFill'
--
-- * 'tcbrfPropertyState'
tableCellBackgRoundFill
    :: TableCellBackgRoundFill
tableCellBackgRoundFill =
  TableCellBackgRoundFill'
    {_tcbrfSolidFill = Nothing, _tcbrfPropertyState = Nothing}

-- | Solid color fill.
tcbrfSolidFill :: Lens' TableCellBackgRoundFill (Maybe SolidFill)
tcbrfSolidFill
  = lens _tcbrfSolidFill
      (\ s a -> s{_tcbrfSolidFill = a})

-- | The background fill property state. Updating the fill on a table cell
-- will implicitly update this field to \`RENDERED\`, unless another value
-- is specified in the same request. To have no fill on a table cell, set
-- this field to \`NOT_RENDERED\`. In this case, any other fill fields set
-- in the same request will be ignored.
tcbrfPropertyState :: Lens' TableCellBackgRoundFill (Maybe TableCellBackgRoundFillPropertyState)
tcbrfPropertyState
  = lens _tcbrfPropertyState
      (\ s a -> s{_tcbrfPropertyState = a})

instance FromJSON TableCellBackgRoundFill where
        parseJSON
          = withObject "TableCellBackgRoundFill"
              (\ o ->
                 TableCellBackgRoundFill' <$>
                   (o .:? "solidFill") <*> (o .:? "propertyState"))

instance ToJSON TableCellBackgRoundFill where
        toJSON TableCellBackgRoundFill'{..}
          = object
              (catMaybes
                 [("solidFill" .=) <$> _tcbrfSolidFill,
                  ("propertyState" .=) <$> _tcbrfPropertyState])

-- | A TextElement kind that represents a run of text that all has the same
-- styling.
--
-- /See:/ 'textRun' smart constructor.
data TextRun =
  TextRun'
    { _trStyle   :: !(Maybe TextStyle)
    , _trContent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trStyle'
--
-- * 'trContent'
textRun
    :: TextRun
textRun = TextRun' {_trStyle = Nothing, _trContent = Nothing}

-- | The styling applied to this run.
trStyle :: Lens' TextRun (Maybe TextStyle)
trStyle = lens _trStyle (\ s a -> s{_trStyle = a})

-- | The text of this run.
trContent :: Lens' TextRun (Maybe Text)
trContent
  = lens _trContent (\ s a -> s{_trContent = a})

instance FromJSON TextRun where
        parseJSON
          = withObject "TextRun"
              (\ o ->
                 TextRun' <$> (o .:? "style") <*> (o .:? "content"))

instance ToJSON TextRun where
        toJSON TextRun'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _trStyle,
                  ("content" .=) <$> _trContent])

-- | Refreshes an embedded Google Sheets chart by replacing it with the
-- latest version of the chart from Google Sheets. NOTE: Refreshing charts
-- requires at least one of the spreadsheets.readonly, spreadsheets,
-- drive.readonly, or drive OAuth scopes.
--
-- /See:/ 'refreshSheetsChartRequest' smart constructor.
newtype RefreshSheetsChartRequest =
  RefreshSheetsChartRequest'
    { _rscrObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RefreshSheetsChartRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rscrObjectId'
refreshSheetsChartRequest
    :: RefreshSheetsChartRequest
refreshSheetsChartRequest = RefreshSheetsChartRequest' {_rscrObjectId = Nothing}

-- | The object ID of the chart to refresh.
rscrObjectId :: Lens' RefreshSheetsChartRequest (Maybe Text)
rscrObjectId
  = lens _rscrObjectId (\ s a -> s{_rscrObjectId = a})

instance FromJSON RefreshSheetsChartRequest where
        parseJSON
          = withObject "RefreshSheetsChartRequest"
              (\ o ->
                 RefreshSheetsChartRequest' <$> (o .:? "objectId"))

instance ToJSON RefreshSheetsChartRequest where
        toJSON RefreshSheetsChartRequest'{..}
          = object
              (catMaybes [("objectId" .=) <$> _rscrObjectId])

-- | Properties and contents of each row in a table.
--
-- /See:/ 'tableRow' smart constructor.
data TableRow =
  TableRow'
    { _trTableRowProperties :: !(Maybe TableRowProperties)
    , _trTableCells         :: !(Maybe [TableCell])
    , _trRowHeight          :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trTableRowProperties'
--
-- * 'trTableCells'
--
-- * 'trRowHeight'
tableRow
    :: TableRow
tableRow =
  TableRow'
    { _trTableRowProperties = Nothing
    , _trTableCells = Nothing
    , _trRowHeight = Nothing
    }

-- | Properties of the row.
trTableRowProperties :: Lens' TableRow (Maybe TableRowProperties)
trTableRowProperties
  = lens _trTableRowProperties
      (\ s a -> s{_trTableRowProperties = a})

-- | Properties and contents of each cell. Cells that span multiple columns
-- are represented only once with a column_span greater than 1. As a
-- result, the length of this collection does not always match the number
-- of columns of the entire table.
trTableCells :: Lens' TableRow [TableCell]
trTableCells
  = lens _trTableCells (\ s a -> s{_trTableCells = a})
      . _Default
      . _Coerce

-- | Height of a row.
trRowHeight :: Lens' TableRow (Maybe Dimension)
trRowHeight
  = lens _trRowHeight (\ s a -> s{_trRowHeight = a})

instance FromJSON TableRow where
        parseJSON
          = withObject "TableRow"
              (\ o ->
                 TableRow' <$>
                   (o .:? "tableRowProperties") <*>
                     (o .:? "tableCells" .!= mempty)
                     <*> (o .:? "rowHeight"))

instance ToJSON TableRow where
        toJSON TableRow'{..}
          = object
              (catMaybes
                 [("tableRowProperties" .=) <$> _trTableRowProperties,
                  ("tableCells" .=) <$> _trTableCells,
                  ("rowHeight" .=) <$> _trRowHeight])

-- | Represents a font family and weight used to style a TextRun.
--
-- /See:/ 'weightedFontFamily' smart constructor.
data WeightedFontFamily =
  WeightedFontFamily'
    { _wffFontFamily :: !(Maybe Text)
    , _wffWeight     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WeightedFontFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wffFontFamily'
--
-- * 'wffWeight'
weightedFontFamily
    :: WeightedFontFamily
weightedFontFamily =
  WeightedFontFamily' {_wffFontFamily = Nothing, _wffWeight = Nothing}

-- | The font family of the text. The font family can be any font from the
-- Font menu in Slides or from [Google Fonts]
-- (https:\/\/fonts.google.com\/). If the font name is unrecognized, the
-- text is rendered in \`Arial\`.
wffFontFamily :: Lens' WeightedFontFamily (Maybe Text)
wffFontFamily
  = lens _wffFontFamily
      (\ s a -> s{_wffFontFamily = a})

-- | The rendered weight of the text. This field can have any value that is a
-- multiple of \`100\` between \`100\` and \`900\`, inclusive. This range
-- corresponds to the numerical values described in the CSS 2.1
-- Specification, [section
-- 15.6](https:\/\/www.w3.org\/TR\/CSS21\/fonts.html#font-boldness), with
-- non-numerical values disallowed. Weights greater than or equal to
-- \`700\` are considered bold, and weights less than \`700\`are not bold.
-- The default value is \`400\` (\"normal\").
wffWeight :: Lens' WeightedFontFamily (Maybe Int32)
wffWeight
  = lens _wffWeight (\ s a -> s{_wffWeight = a}) .
      mapping _Coerce

instance FromJSON WeightedFontFamily where
        parseJSON
          = withObject "WeightedFontFamily"
              (\ o ->
                 WeightedFontFamily' <$>
                   (o .:? "fontFamily") <*> (o .:? "weight"))

instance ToJSON WeightedFontFamily where
        toJSON WeightedFontFamily'{..}
          = object
              (catMaybes
                 [("fontFamily" .=) <$> _wffFontFamily,
                  ("weight" .=) <$> _wffWeight])

-- | Creates a video. NOTE: Creating a video from Google Drive requires that
-- the requesting app have at least one of the drive, drive.readonly, or
-- drive.file OAuth scopes.
--
-- /See:/ 'createVideoRequest' smart constructor.
data CreateVideoRequest =
  CreateVideoRequest'
    { _creObjectId          :: !(Maybe Text)
    , _creElementProperties :: !(Maybe PageElementProperties)
    , _creSource            :: !(Maybe CreateVideoRequestSource)
    , _creId                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVideoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creObjectId'
--
-- * 'creElementProperties'
--
-- * 'creSource'
--
-- * 'creId'
createVideoRequest
    :: CreateVideoRequest
createVideoRequest =
  CreateVideoRequest'
    { _creObjectId = Nothing
    , _creElementProperties = Nothing
    , _creSource = Nothing
    , _creId = Nothing
    }

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
creObjectId :: Lens' CreateVideoRequest (Maybe Text)
creObjectId
  = lens _creObjectId (\ s a -> s{_creObjectId = a})

-- | The element properties for the video. The PageElementProperties.size
-- property is optional. If you don\'t specify a size, a default size is
-- chosen by the server. The PageElementProperties.transform property is
-- optional. The transform must not have shear components. If you don\'t
-- specify a transform, the video will be placed at the top left corner of
-- the page.
creElementProperties :: Lens' CreateVideoRequest (Maybe PageElementProperties)
creElementProperties
  = lens _creElementProperties
      (\ s a -> s{_creElementProperties = a})

-- | The video source.
creSource :: Lens' CreateVideoRequest (Maybe CreateVideoRequestSource)
creSource
  = lens _creSource (\ s a -> s{_creSource = a})

-- | The video source\'s unique identifier for this video. e.g. For YouTube
-- video https:\/\/www.youtube.com\/watch?v=7U3axjORYZ0, the ID is
-- 7U3axjORYZ0. For a Google Drive video
-- https:\/\/drive.google.com\/file\/d\/1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q
-- the ID is 1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q.
creId :: Lens' CreateVideoRequest (Maybe Text)
creId = lens _creId (\ s a -> s{_creId = a})

instance FromJSON CreateVideoRequest where
        parseJSON
          = withObject "CreateVideoRequest"
              (\ o ->
                 CreateVideoRequest' <$>
                   (o .:? "objectId") <*> (o .:? "elementProperties")
                     <*> (o .:? "source")
                     <*> (o .:? "id"))

instance ToJSON CreateVideoRequest where
        toJSON CreateVideoRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _creObjectId,
                  ("elementProperties" .=) <$> _creElementProperties,
                  ("source" .=) <$> _creSource, ("id" .=) <$> _creId])

-- | The general text content. The text must reside in a compatible shape
-- (e.g. text box or rectangle) or a table cell in a page.
--
-- /See:/ 'textContent' smart constructor.
data TextContent =
  TextContent'
    { _tcTextElements :: !(Maybe [TextElement])
    , _tcLists        :: !(Maybe TextContentLists)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcTextElements'
--
-- * 'tcLists'
textContent
    :: TextContent
textContent = TextContent' {_tcTextElements = Nothing, _tcLists = Nothing}

-- | The text contents broken down into its component parts, including
-- styling information. This property is read-only.
tcTextElements :: Lens' TextContent [TextElement]
tcTextElements
  = lens _tcTextElements
      (\ s a -> s{_tcTextElements = a})
      . _Default
      . _Coerce

-- | The bulleted lists contained in this text, keyed by list ID.
tcLists :: Lens' TextContent (Maybe TextContentLists)
tcLists = lens _tcLists (\ s a -> s{_tcLists = a})

instance FromJSON TextContent where
        parseJSON
          = withObject "TextContent"
              (\ o ->
                 TextContent' <$>
                   (o .:? "textElements" .!= mempty) <*>
                     (o .:? "lists"))

instance ToJSON TextContent where
        toJSON TextContent'{..}
          = object
              (catMaybes
                 [("textElements" .=) <$> _tcTextElements,
                  ("lists" .=) <$> _tcLists])

-- | A PageElement kind representing a generic shape that does not have a
-- more specific classification.
--
-- /See:/ 'shape' smart constructor.
data Shape =
  Shape'
    { _sShapeType       :: !(Maybe ShapeShapeType)
    , _sText            :: !(Maybe TextContent)
    , _sPlaceholder     :: !(Maybe Placeholder)
    , _sShapeProperties :: !(Maybe ShapeProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Shape' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sShapeType'
--
-- * 'sText'
--
-- * 'sPlaceholder'
--
-- * 'sShapeProperties'
shape
    :: Shape
shape =
  Shape'
    { _sShapeType = Nothing
    , _sText = Nothing
    , _sPlaceholder = Nothing
    , _sShapeProperties = Nothing
    }

-- | The type of the shape.
sShapeType :: Lens' Shape (Maybe ShapeShapeType)
sShapeType
  = lens _sShapeType (\ s a -> s{_sShapeType = a})

-- | The text content of the shape.
sText :: Lens' Shape (Maybe TextContent)
sText = lens _sText (\ s a -> s{_sText = a})

-- | Placeholders are shapes that are inherit from corresponding placeholders
-- on layouts and masters. If set, the shape is a placeholder shape and any
-- inherited properties can be resolved by looking at the parent
-- placeholder identified by the Placeholder.parent_object_id field.
sPlaceholder :: Lens' Shape (Maybe Placeholder)
sPlaceholder
  = lens _sPlaceholder (\ s a -> s{_sPlaceholder = a})

-- | The properties of the shape.
sShapeProperties :: Lens' Shape (Maybe ShapeProperties)
sShapeProperties
  = lens _sShapeProperties
      (\ s a -> s{_sShapeProperties = a})

instance FromJSON Shape where
        parseJSON
          = withObject "Shape"
              (\ o ->
                 Shape' <$>
                   (o .:? "shapeType") <*> (o .:? "text") <*>
                     (o .:? "placeholder")
                     <*> (o .:? "shapeProperties"))

instance ToJSON Shape where
        toJSON Shape'{..}
          = object
              (catMaybes
                 [("shapeType" .=) <$> _sShapeType,
                  ("text" .=) <$> _sText,
                  ("placeholder" .=) <$> _sPlaceholder,
                  ("shapeProperties" .=) <$> _sShapeProperties])

-- | AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
-- to transform source coordinates (x,y) into destination coordinates (x\',
-- y\') according to: x\' x = shear_y scale_y translate_y 1 [ 1 ] After
-- transformation, x\' = scale_x * x + shear_x * y + translate_x; y\' =
-- scale_y * y + shear_y * x + translate_y; This message is therefore
-- composed of these six matrix elements.
--
-- /See:/ 'affineTransform' smart constructor.
data AffineTransform =
  AffineTransform'
    { _atTranslateX :: !(Maybe (Textual Double))
    , _atShearY     :: !(Maybe (Textual Double))
    , _atTranslateY :: !(Maybe (Textual Double))
    , _atShearX     :: !(Maybe (Textual Double))
    , _atScaleX     :: !(Maybe (Textual Double))
    , _atUnit       :: !(Maybe AffineTransformUnit)
    , _atScaleY     :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AffineTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atTranslateX'
--
-- * 'atShearY'
--
-- * 'atTranslateY'
--
-- * 'atShearX'
--
-- * 'atScaleX'
--
-- * 'atUnit'
--
-- * 'atScaleY'
affineTransform
    :: AffineTransform
affineTransform =
  AffineTransform'
    { _atTranslateX = Nothing
    , _atShearY = Nothing
    , _atTranslateY = Nothing
    , _atShearX = Nothing
    , _atScaleX = Nothing
    , _atUnit = Nothing
    , _atScaleY = Nothing
    }

-- | The X coordinate translation element.
atTranslateX :: Lens' AffineTransform (Maybe Double)
atTranslateX
  = lens _atTranslateX (\ s a -> s{_atTranslateX = a})
      . mapping _Coerce

-- | The Y coordinate shearing element.
atShearY :: Lens' AffineTransform (Maybe Double)
atShearY
  = lens _atShearY (\ s a -> s{_atShearY = a}) .
      mapping _Coerce

-- | The Y coordinate translation element.
atTranslateY :: Lens' AffineTransform (Maybe Double)
atTranslateY
  = lens _atTranslateY (\ s a -> s{_atTranslateY = a})
      . mapping _Coerce

-- | The X coordinate shearing element.
atShearX :: Lens' AffineTransform (Maybe Double)
atShearX
  = lens _atShearX (\ s a -> s{_atShearX = a}) .
      mapping _Coerce

-- | The X coordinate scaling element.
atScaleX :: Lens' AffineTransform (Maybe Double)
atScaleX
  = lens _atScaleX (\ s a -> s{_atScaleX = a}) .
      mapping _Coerce

-- | The units for translate elements.
atUnit :: Lens' AffineTransform (Maybe AffineTransformUnit)
atUnit = lens _atUnit (\ s a -> s{_atUnit = a})

-- | The Y coordinate scaling element.
atScaleY :: Lens' AffineTransform (Maybe Double)
atScaleY
  = lens _atScaleY (\ s a -> s{_atScaleY = a}) .
      mapping _Coerce

instance FromJSON AffineTransform where
        parseJSON
          = withObject "AffineTransform"
              (\ o ->
                 AffineTransform' <$>
                   (o .:? "translateX") <*> (o .:? "shearY") <*>
                     (o .:? "translateY")
                     <*> (o .:? "shearX")
                     <*> (o .:? "scaleX")
                     <*> (o .:? "unit")
                     <*> (o .:? "scaleY"))

instance ToJSON AffineTransform where
        toJSON AffineTransform'{..}
          = object
              (catMaybes
                 [("translateX" .=) <$> _atTranslateX,
                  ("shearY" .=) <$> _atShearY,
                  ("translateY" .=) <$> _atTranslateY,
                  ("shearX" .=) <$> _atShearX,
                  ("scaleX" .=) <$> _atScaleX, ("unit" .=) <$> _atUnit,
                  ("scaleY" .=) <$> _atScaleY])

-- | The result of creating an embedded Google Sheets chart.
--
-- /See:/ 'createSheetsChartResponse' smart constructor.
newtype CreateSheetsChartResponse =
  CreateSheetsChartResponse'
    { _cscrsObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSheetsChartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscrsObjectId'
createSheetsChartResponse
    :: CreateSheetsChartResponse
createSheetsChartResponse =
  CreateSheetsChartResponse' {_cscrsObjectId = Nothing}

-- | The object ID of the created chart.
cscrsObjectId :: Lens' CreateSheetsChartResponse (Maybe Text)
cscrsObjectId
  = lens _cscrsObjectId
      (\ s a -> s{_cscrsObjectId = a})

instance FromJSON CreateSheetsChartResponse where
        parseJSON
          = withObject "CreateSheetsChartResponse"
              (\ o ->
                 CreateSheetsChartResponse' <$> (o .:? "objectId"))

instance ToJSON CreateSheetsChartResponse where
        toJSON CreateSheetsChartResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _cscrsObjectId])

-- | Specifies a contiguous range of an indexed collection, such as
-- characters in text.
--
-- /See:/ 'range' smart constructor.
data Range =
  Range'
    { _rEndIndex   :: !(Maybe (Textual Int32))
    , _rType       :: !(Maybe RangeType)
    , _rStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEndIndex'
--
-- * 'rType'
--
-- * 'rStartIndex'
range
    :: Range
range = Range' {_rEndIndex = Nothing, _rType = Nothing, _rStartIndex = Nothing}

-- | The optional zero-based index of the end of the collection. Required for
-- \`FIXED_RANGE\` ranges.
rEndIndex :: Lens' Range (Maybe Int32)
rEndIndex
  = lens _rEndIndex (\ s a -> s{_rEndIndex = a}) .
      mapping _Coerce

-- | The type of range.
rType :: Lens' Range (Maybe RangeType)
rType = lens _rType (\ s a -> s{_rType = a})

-- | The optional zero-based index of the beginning of the collection.
-- Required for \`FIXED_RANGE\` and \`FROM_START_INDEX\` ranges.
rStartIndex :: Lens' Range (Maybe Int32)
rStartIndex
  = lens _rStartIndex (\ s a -> s{_rStartIndex = a}) .
      mapping _Coerce

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o ->
                 Range' <$>
                   (o .:? "endIndex") <*> (o .:? "type") <*>
                     (o .:? "startIndex"))

instance ToJSON Range where
        toJSON Range'{..}
          = object
              (catMaybes
                 [("endIndex" .=) <$> _rEndIndex,
                  ("type" .=) <$> _rType,
                  ("startIndex" .=) <$> _rStartIndex])

-- | Creates an image.
--
-- /See:/ 'createImageRequest' smart constructor.
data CreateImageRequest =
  CreateImageRequest'
    { _cirObjectId          :: !(Maybe Text)
    , _cirURL               :: !(Maybe Text)
    , _cirElementProperties :: !(Maybe PageElementProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirObjectId'
--
-- * 'cirURL'
--
-- * 'cirElementProperties'
createImageRequest
    :: CreateImageRequest
createImageRequest =
  CreateImageRequest'
    {_cirObjectId = Nothing, _cirURL = Nothing, _cirElementProperties = Nothing}

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
cirObjectId :: Lens' CreateImageRequest (Maybe Text)
cirObjectId
  = lens _cirObjectId (\ s a -> s{_cirObjectId = a})

-- | The image URL. The image is fetched once at insertion time and a copy is
-- stored for display inside the presentation. Images must be less than
-- 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG,
-- JPEG, or GIF format. The provided URL can be at most 2 kB in length. The
-- URL itself is saved with the image, and exposed via the Image.source_url
-- field.
cirURL :: Lens' CreateImageRequest (Maybe Text)
cirURL = lens _cirURL (\ s a -> s{_cirURL = a})

-- | The element properties for the image. When the aspect ratio of the
-- provided size does not match the image aspect ratio, the image is scaled
-- and centered with respect to the size in order to maintain aspect ratio.
-- The provided transform is applied after this operation. The
-- PageElementProperties.size property is optional. If you don\'t specify
-- the size, the default size of the image is used. The
-- PageElementProperties.transform property is optional. If you don\'t
-- specify a transform, the image will be placed at the top left corner of
-- the page.
cirElementProperties :: Lens' CreateImageRequest (Maybe PageElementProperties)
cirElementProperties
  = lens _cirElementProperties
      (\ s a -> s{_cirElementProperties = a})

instance FromJSON CreateImageRequest where
        parseJSON
          = withObject "CreateImageRequest"
              (\ o ->
                 CreateImageRequest' <$>
                   (o .:? "objectId") <*> (o .:? "url") <*>
                     (o .:? "elementProperties"))

instance ToJSON CreateImageRequest where
        toJSON CreateImageRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _cirObjectId,
                  ("url" .=) <$> _cirURL,
                  ("elementProperties" .=) <$> _cirElementProperties])

-- | Merges cells in a Table.
--
-- /See:/ 'mergeTableCellsRequest' smart constructor.
data MergeTableCellsRequest =
  MergeTableCellsRequest'
    { _mtcrObjectId   :: !(Maybe Text)
    , _mtcrTableRange :: !(Maybe TableRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MergeTableCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtcrObjectId'
--
-- * 'mtcrTableRange'
mergeTableCellsRequest
    :: MergeTableCellsRequest
mergeTableCellsRequest =
  MergeTableCellsRequest' {_mtcrObjectId = Nothing, _mtcrTableRange = Nothing}

-- | The object ID of the table.
mtcrObjectId :: Lens' MergeTableCellsRequest (Maybe Text)
mtcrObjectId
  = lens _mtcrObjectId (\ s a -> s{_mtcrObjectId = a})

-- | The table range specifying which cells of the table to merge. Any text
-- in the cells being merged will be concatenated and stored in the
-- upper-left (\"head\") cell of the range. If the range is non-rectangular
-- (which can occur in some cases where the range covers cells that are
-- already merged), a 400 bad request error is returned.
mtcrTableRange :: Lens' MergeTableCellsRequest (Maybe TableRange)
mtcrTableRange
  = lens _mtcrTableRange
      (\ s a -> s{_mtcrTableRange = a})

instance FromJSON MergeTableCellsRequest where
        parseJSON
          = withObject "MergeTableCellsRequest"
              (\ o ->
                 MergeTableCellsRequest' <$>
                   (o .:? "objectId") <*> (o .:? "tableRange"))

instance ToJSON MergeTableCellsRequest where
        toJSON MergeTableCellsRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _mtcrObjectId,
                  ("tableRange" .=) <$> _mtcrTableRange])

-- | Provides control over how write requests are executed.
--
-- /See:/ 'writeControl' smart constructor.
newtype WriteControl =
  WriteControl'
    { _wcRequiredRevisionId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcRequiredRevisionId'
writeControl
    :: WriteControl
writeControl = WriteControl' {_wcRequiredRevisionId = Nothing}

-- | The revision ID of the presentation required for the write request. If
-- specified and the \`required_revision_id\` doesn\'t exactly match the
-- presentation\'s current \`revision_id\`, the request will not be
-- processed and will return a 400 bad request error.
wcRequiredRevisionId :: Lens' WriteControl (Maybe Text)
wcRequiredRevisionId
  = lens _wcRequiredRevisionId
      (\ s a -> s{_wcRequiredRevisionId = a})

instance FromJSON WriteControl where
        parseJSON
          = withObject "WriteControl"
              (\ o ->
                 WriteControl' <$> (o .:? "requiredRevisionId"))

instance ToJSON WriteControl where
        toJSON WriteControl'{..}
          = object
              (catMaybes
                 [("requiredRevisionId" .=) <$>
                    _wcRequiredRevisionId])

-- | Represents the styling that can be applied to a TextRun. If this text is
-- contained in a shape with a parent placeholder, then these text styles
-- may be inherited from the parent. Which text styles are inherited depend
-- on the nesting level of lists: * A text run in a paragraph that is not
-- in a list will inherit its text style from the the newline character in
-- the paragraph at the 0 nesting level of the list inside the parent
-- placeholder. * A text run in a paragraph that is in a list will inherit
-- its text style from the newline character in the paragraph at its
-- corresponding nesting level of the list inside the parent placeholder.
-- Inherited text styles are represented as unset fields in this message.
-- If text is contained in a shape without a parent placeholder, unsetting
-- these fields will revert the style to a value matching the defaults in
-- the Slides editor.
--
-- /See:/ 'textStyle' smart constructor.
data TextStyle =
  TextStyle'
    { _tsFontFamily         :: !(Maybe Text)
    , _tsLink               :: !(Maybe Link)
    , _tsBackgRoundColor    :: !(Maybe OptionalColor)
    , _tsBaselineOffSet     :: !(Maybe TextStyleBaselineOffSet)
    , _tsForegRoundColor    :: !(Maybe OptionalColor)
    , _tsFontSize           :: !(Maybe Dimension)
    , _tsSmallCaps          :: !(Maybe Bool)
    , _tsUnderline          :: !(Maybe Bool)
    , _tsWeightedFontFamily :: !(Maybe WeightedFontFamily)
    , _tsItalic             :: !(Maybe Bool)
    , _tsBold               :: !(Maybe Bool)
    , _tsStrikethrough      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsFontFamily'
--
-- * 'tsLink'
--
-- * 'tsBackgRoundColor'
--
-- * 'tsBaselineOffSet'
--
-- * 'tsForegRoundColor'
--
-- * 'tsFontSize'
--
-- * 'tsSmallCaps'
--
-- * 'tsUnderline'
--
-- * 'tsWeightedFontFamily'
--
-- * 'tsItalic'
--
-- * 'tsBold'
--
-- * 'tsStrikethrough'
textStyle
    :: TextStyle
textStyle =
  TextStyle'
    { _tsFontFamily = Nothing
    , _tsLink = Nothing
    , _tsBackgRoundColor = Nothing
    , _tsBaselineOffSet = Nothing
    , _tsForegRoundColor = Nothing
    , _tsFontSize = Nothing
    , _tsSmallCaps = Nothing
    , _tsUnderline = Nothing
    , _tsWeightedFontFamily = Nothing
    , _tsItalic = Nothing
    , _tsBold = Nothing
    , _tsStrikethrough = Nothing
    }

-- | The font family of the text. The font family can be any font from the
-- Font menu in Slides or from [Google Fonts]
-- (https:\/\/fonts.google.com\/). If the font name is unrecognized, the
-- text is rendered in \`Arial\`. Some fonts can affect the weight of the
-- text. If an update request specifies values for both \`font_family\` and
-- \`bold\`, the explicitly-set \`bold\` value is used.
tsFontFamily :: Lens' TextStyle (Maybe Text)
tsFontFamily
  = lens _tsFontFamily (\ s a -> s{_tsFontFamily = a})

-- | The hyperlink destination of the text. If unset, there is no link. Links
-- are not inherited from parent text. Changing the link in an update
-- request causes some other changes to the text style of the range: * When
-- setting a link, the text foreground color will be set to
-- ThemeColorType.HYPERLINK and the text will be underlined. If these
-- fields are modified in the same request, those values will be used
-- instead of the link defaults. * Setting a link on a text range that
-- overlaps with an existing link will also update the existing link to
-- point to the new URL. * Links are not settable on newline characters. As
-- a result, setting a link on a text range that crosses a paragraph
-- boundary, such as \`\"ABC\\n123\"\`, will separate the newline
-- character(s) into their own text runs. The link will be applied
-- separately to the runs before and after the newline. * Removing a link
-- will update the text style of the range to match the style of the
-- preceding text (or the default text styles if the preceding text is
-- another link) unless different styles are being set in the same request.
tsLink :: Lens' TextStyle (Maybe Link)
tsLink = lens _tsLink (\ s a -> s{_tsLink = a})

-- | The background color of the text. If set, the color is either opaque or
-- transparent, depending on if the \`opaque_color\` field in it is set.
tsBackgRoundColor :: Lens' TextStyle (Maybe OptionalColor)
tsBackgRoundColor
  = lens _tsBackgRoundColor
      (\ s a -> s{_tsBackgRoundColor = a})

-- | The text\'s vertical offset from its normal position. Text with
-- \`SUPERSCRIPT\` or \`SUBSCRIPT\` baseline offsets is automatically
-- rendered in a smaller font size, computed based on the \`font_size\`
-- field. The \`font_size\` itself is not affected by changes in this
-- field.
tsBaselineOffSet :: Lens' TextStyle (Maybe TextStyleBaselineOffSet)
tsBaselineOffSet
  = lens _tsBaselineOffSet
      (\ s a -> s{_tsBaselineOffSet = a})

-- | The color of the text itself. If set, the color is either opaque or
-- transparent, depending on if the \`opaque_color\` field in it is set.
tsForegRoundColor :: Lens' TextStyle (Maybe OptionalColor)
tsForegRoundColor
  = lens _tsForegRoundColor
      (\ s a -> s{_tsForegRoundColor = a})

-- | The size of the text\'s font. When read, the \`font_size\` will
-- specified in points.
tsFontSize :: Lens' TextStyle (Maybe Dimension)
tsFontSize
  = lens _tsFontSize (\ s a -> s{_tsFontSize = a})

-- | Whether or not the text is in small capital letters.
tsSmallCaps :: Lens' TextStyle (Maybe Bool)
tsSmallCaps
  = lens _tsSmallCaps (\ s a -> s{_tsSmallCaps = a})

-- | Whether or not the text is underlined.
tsUnderline :: Lens' TextStyle (Maybe Bool)
tsUnderline
  = lens _tsUnderline (\ s a -> s{_tsUnderline = a})

-- | The font family and rendered weight of the text. This field is an
-- extension of \`font_family\` meant to support explicit font weights
-- without breaking backwards compatibility. As such, when reading the
-- style of a range of text, the value of
-- \`weighted_font_family#font_family\` will always be equal to that of
-- \`font_family\`. However, when writing, if both fields are included in
-- the field mask (either explicitly or through the wildcard \`\"*\"\`),
-- their values are reconciled as follows: * If \`font_family\` is set and
-- \`weighted_font_family\` is not, the value of \`font_family\` is applied
-- with weight \`400\` (\"normal\"). * If both fields are set, the value of
-- \`font_family\` must match that of \`weighted_font_family#font_family\`.
-- If so, the font family and weight of \`weighted_font_family\` is
-- applied. Otherwise, a 400 bad request error is returned. * If
-- \`weighted_font_family\` is set and \`font_family\` is not, the font
-- family and weight of \`weighted_font_family\` is applied. * If neither
-- field is set, the font family and weight of the text inherit from the
-- parent. Note that these properties cannot inherit separately from each
-- other. If an update request specifies values for both
-- \`weighted_font_family\` and \`bold\`, the \`weighted_font_family\` is
-- applied first, then \`bold\`. If \`weighted_font_family#weight\` is not
-- set, it defaults to \`400\`. If \`weighted_font_family\` is set, then
-- \`weighted_font_family#font_family\` must also be set with a non-empty
-- value. Otherwise, a 400 bad request error is returned.
tsWeightedFontFamily :: Lens' TextStyle (Maybe WeightedFontFamily)
tsWeightedFontFamily
  = lens _tsWeightedFontFamily
      (\ s a -> s{_tsWeightedFontFamily = a})

-- | Whether or not the text is italicized.
tsItalic :: Lens' TextStyle (Maybe Bool)
tsItalic = lens _tsItalic (\ s a -> s{_tsItalic = a})

-- | Whether or not the text is rendered as bold.
tsBold :: Lens' TextStyle (Maybe Bool)
tsBold = lens _tsBold (\ s a -> s{_tsBold = a})

-- | Whether or not the text is struck through.
tsStrikethrough :: Lens' TextStyle (Maybe Bool)
tsStrikethrough
  = lens _tsStrikethrough
      (\ s a -> s{_tsStrikethrough = a})

instance FromJSON TextStyle where
        parseJSON
          = withObject "TextStyle"
              (\ o ->
                 TextStyle' <$>
                   (o .:? "fontFamily") <*> (o .:? "link") <*>
                     (o .:? "backgroundColor")
                     <*> (o .:? "baselineOffset")
                     <*> (o .:? "foregroundColor")
                     <*> (o .:? "fontSize")
                     <*> (o .:? "smallCaps")
                     <*> (o .:? "underline")
                     <*> (o .:? "weightedFontFamily")
                     <*> (o .:? "italic")
                     <*> (o .:? "bold")
                     <*> (o .:? "strikethrough"))

instance ToJSON TextStyle where
        toJSON TextStyle'{..}
          = object
              (catMaybes
                 [("fontFamily" .=) <$> _tsFontFamily,
                  ("link" .=) <$> _tsLink,
                  ("backgroundColor" .=) <$> _tsBackgRoundColor,
                  ("baselineOffset" .=) <$> _tsBaselineOffSet,
                  ("foregroundColor" .=) <$> _tsForegRoundColor,
                  ("fontSize" .=) <$> _tsFontSize,
                  ("smallCaps" .=) <$> _tsSmallCaps,
                  ("underline" .=) <$> _tsUnderline,
                  ("weightedFontFamily" .=) <$> _tsWeightedFontFamily,
                  ("italic" .=) <$> _tsItalic, ("bold" .=) <$> _tsBold,
                  ("strikethrough" .=) <$> _tsStrikethrough])

-- | A solid color fill. The page or page element is filled entirely with the
-- specified color value. If any field is unset, its value may be inherited
-- from a parent placeholder if it exists.
--
-- /See:/ 'solidFill' smart constructor.
data SolidFill =
  SolidFill'
    { _sfColor :: !(Maybe OpaqueColor)
    , _sfAlpha :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SolidFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfColor'
--
-- * 'sfAlpha'
solidFill
    :: SolidFill
solidFill = SolidFill' {_sfColor = Nothing, _sfAlpha = Nothing}

-- | The color value of the solid fill.
sfColor :: Lens' SolidFill (Maybe OpaqueColor)
sfColor = lens _sfColor (\ s a -> s{_sfColor = a})

-- | The fraction of this \`color\` that should be applied to the pixel. That
-- is, the final pixel color is defined by the equation: pixel color =
-- alpha * (color) + (1.0 - alpha) * (background color) This means that a
-- value of 1.0 corresponds to a solid color, whereas a value of 0.0
-- corresponds to a completely transparent color.
sfAlpha :: Lens' SolidFill (Maybe Double)
sfAlpha
  = lens _sfAlpha (\ s a -> s{_sfAlpha = a}) .
      mapping _Coerce

instance FromJSON SolidFill where
        parseJSON
          = withObject "SolidFill"
              (\ o ->
                 SolidFill' <$> (o .:? "color") <*> (o .:? "alpha"))

instance ToJSON SolidFill where
        toJSON SolidFill'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _sfColor,
                  ("alpha" .=) <$> _sfAlpha])

-- | Update the styling of text in a Shape or Table.
--
-- /See:/ 'updateTextStyleRequest' smart constructor.
data UpdateTextStyleRequest =
  UpdateTextStyleRequest'
    { _utsrStyle        :: !(Maybe TextStyle)
    , _utsrTextRange    :: !(Maybe Range)
    , _utsrObjectId     :: !(Maybe Text)
    , _utsrCellLocation :: !(Maybe TableCellLocation)
    , _utsrFields       :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTextStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utsrStyle'
--
-- * 'utsrTextRange'
--
-- * 'utsrObjectId'
--
-- * 'utsrCellLocation'
--
-- * 'utsrFields'
updateTextStyleRequest
    :: UpdateTextStyleRequest
updateTextStyleRequest =
  UpdateTextStyleRequest'
    { _utsrStyle = Nothing
    , _utsrTextRange = Nothing
    , _utsrObjectId = Nothing
    , _utsrCellLocation = Nothing
    , _utsrFields = Nothing
    }

-- | The style(s) to set on the text. If the value for a particular style
-- matches that of the parent, that style will be set to inherit. Certain
-- text style changes may cause other changes meant to mirror the behavior
-- of the Slides editor. See the documentation of TextStyle for more
-- information.
utsrStyle :: Lens' UpdateTextStyleRequest (Maybe TextStyle)
utsrStyle
  = lens _utsrStyle (\ s a -> s{_utsrStyle = a})

-- | The range of text to style. The range may be extended to include
-- adjacent newlines. If the range fully contains a paragraph belonging to
-- a list, the paragraph\'s bullet is also updated with the matching text
-- style.
utsrTextRange :: Lens' UpdateTextStyleRequest (Maybe Range)
utsrTextRange
  = lens _utsrTextRange
      (\ s a -> s{_utsrTextRange = a})

-- | The object ID of the shape or table with the text to be styled.
utsrObjectId :: Lens' UpdateTextStyleRequest (Maybe Text)
utsrObjectId
  = lens _utsrObjectId (\ s a -> s{_utsrObjectId = a})

-- | The location of the cell in the table containing the text to style. If
-- \`object_id\` refers to a table, \`cell_location\` must have a value.
-- Otherwise, it must not.
utsrCellLocation :: Lens' UpdateTextStyleRequest (Maybe TableCellLocation)
utsrCellLocation
  = lens _utsrCellLocation
      (\ s a -> s{_utsrCellLocation = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`style\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field. For
-- example, to update the text style to bold, set \`fields\` to
-- \`\"bold\"\`. To reset a property to its default value, include its
-- field name in the field mask but leave the field itself unset.
utsrFields :: Lens' UpdateTextStyleRequest (Maybe GFieldMask)
utsrFields
  = lens _utsrFields (\ s a -> s{_utsrFields = a})

instance FromJSON UpdateTextStyleRequest where
        parseJSON
          = withObject "UpdateTextStyleRequest"
              (\ o ->
                 UpdateTextStyleRequest' <$>
                   (o .:? "style") <*> (o .:? "textRange") <*>
                     (o .:? "objectId")
                     <*> (o .:? "cellLocation")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTextStyleRequest where
        toJSON UpdateTextStyleRequest'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _utsrStyle,
                  ("textRange" .=) <$> _utsrTextRange,
                  ("objectId" .=) <$> _utsrObjectId,
                  ("cellLocation" .=) <$> _utsrCellLocation,
                  ("fields" .=) <$> _utsrFields])

-- | A recolor effect applied on an image.
--
-- /See:/ 'recolor' smart constructor.
data Recolor =
  Recolor'
    { _rName         :: !(Maybe RecolorName)
    , _rRecolorStops :: !(Maybe [ColorStop])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Recolor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rName'
--
-- * 'rRecolorStops'
recolor
    :: Recolor
recolor = Recolor' {_rName = Nothing, _rRecolorStops = Nothing}

-- | The name of the recolor effect. The name is determined from the
-- \`recolor_stops\` by matching the gradient against the colors in the
-- page\'s current color scheme. This property is read-only.
rName :: Lens' Recolor (Maybe RecolorName)
rName = lens _rName (\ s a -> s{_rName = a})

-- | The recolor effect is represented by a gradient, which is a list of
-- color stops. The colors in the gradient will replace the corresponding
-- colors at the same position in the color palette and apply to the image.
-- This property is read-only.
rRecolorStops :: Lens' Recolor [ColorStop]
rRecolorStops
  = lens _rRecolorStops
      (\ s a -> s{_rRecolorStops = a})
      . _Default
      . _Coerce

instance FromJSON Recolor where
        parseJSON
          = withObject "Recolor"
              (\ o ->
                 Recolor' <$>
                   (o .:? "name") <*> (o .:? "recolorStops" .!= mempty))

instance ToJSON Recolor where
        toJSON Recolor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rName,
                  ("recolorStops" .=) <$> _rRecolorStops])

-- | The properties of the Page. The page will inherit properties from the
-- parent page. Depending on the page type the hierarchy is defined in
-- either SlideProperties or LayoutProperties.
--
-- /See:/ 'pageProperties' smart constructor.
data PageProperties =
  PageProperties'
    { _ppPageBackgRoundFill :: !(Maybe PageBackgRoundFill)
    , _ppColorScheme        :: !(Maybe ColorScheme)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPageBackgRoundFill'
--
-- * 'ppColorScheme'
pageProperties
    :: PageProperties
pageProperties =
  PageProperties' {_ppPageBackgRoundFill = Nothing, _ppColorScheme = Nothing}

-- | The background fill of the page. If unset, the background fill is
-- inherited from a parent page if it exists. If the page has no parent,
-- then the background fill defaults to the corresponding fill in the
-- Slides editor.
ppPageBackgRoundFill :: Lens' PageProperties (Maybe PageBackgRoundFill)
ppPageBackgRoundFill
  = lens _ppPageBackgRoundFill
      (\ s a -> s{_ppPageBackgRoundFill = a})

-- | The color scheme of the page. If unset, the color scheme is inherited
-- from a parent page. If the page has no parent, the color scheme uses a
-- default Slides color scheme. This field is read-only.
ppColorScheme :: Lens' PageProperties (Maybe ColorScheme)
ppColorScheme
  = lens _ppColorScheme
      (\ s a -> s{_ppColorScheme = a})

instance FromJSON PageProperties where
        parseJSON
          = withObject "PageProperties"
              (\ o ->
                 PageProperties' <$>
                   (o .:? "pageBackgroundFill") <*>
                     (o .:? "colorScheme"))

instance ToJSON PageProperties where
        toJSON PageProperties'{..}
          = object
              (catMaybes
                 [("pageBackgroundFill" .=) <$> _ppPageBackgRoundFill,
                  ("colorScheme" .=) <$> _ppColorScheme])

-- | The page background fill.
--
-- /See:/ 'pageBackgRoundFill' smart constructor.
data PageBackgRoundFill =
  PageBackgRoundFill'
    { _pbrfStretchedPictureFill :: !(Maybe StretchedPictureFill)
    , _pbrfSolidFill            :: !(Maybe SolidFill)
    , _pbrfPropertyState        :: !(Maybe PageBackgRoundFillPropertyState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PageBackgRoundFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbrfStretchedPictureFill'
--
-- * 'pbrfSolidFill'
--
-- * 'pbrfPropertyState'
pageBackgRoundFill
    :: PageBackgRoundFill
pageBackgRoundFill =
  PageBackgRoundFill'
    { _pbrfStretchedPictureFill = Nothing
    , _pbrfSolidFill = Nothing
    , _pbrfPropertyState = Nothing
    }

-- | Stretched picture fill.
pbrfStretchedPictureFill :: Lens' PageBackgRoundFill (Maybe StretchedPictureFill)
pbrfStretchedPictureFill
  = lens _pbrfStretchedPictureFill
      (\ s a -> s{_pbrfStretchedPictureFill = a})

-- | Solid color fill.
pbrfSolidFill :: Lens' PageBackgRoundFill (Maybe SolidFill)
pbrfSolidFill
  = lens _pbrfSolidFill
      (\ s a -> s{_pbrfSolidFill = a})

-- | The background fill property state. Updating the fill on a page will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no fill on a page, set this field
-- to \`NOT_RENDERED\`. In this case, any other fill fields set in the same
-- request will be ignored.
pbrfPropertyState :: Lens' PageBackgRoundFill (Maybe PageBackgRoundFillPropertyState)
pbrfPropertyState
  = lens _pbrfPropertyState
      (\ s a -> s{_pbrfPropertyState = a})

instance FromJSON PageBackgRoundFill where
        parseJSON
          = withObject "PageBackgRoundFill"
              (\ o ->
                 PageBackgRoundFill' <$>
                   (o .:? "stretchedPictureFill") <*>
                     (o .:? "solidFill")
                     <*> (o .:? "propertyState"))

instance ToJSON PageBackgRoundFill where
        toJSON PageBackgRoundFill'{..}
          = object
              (catMaybes
                 [("stretchedPictureFill" .=) <$>
                    _pbrfStretchedPictureFill,
                  ("solidFill" .=) <$> _pbrfSolidFill,
                  ("propertyState" .=) <$> _pbrfPropertyState])

-- | Contains properties describing the look and feel of a list bullet at a
-- given level of nesting.
--
-- /See:/ 'nestingLevel' smart constructor.
newtype NestingLevel =
  NestingLevel'
    { _nlBulletStyle :: Maybe TextStyle
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NestingLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlBulletStyle'
nestingLevel
    :: NestingLevel
nestingLevel = NestingLevel' {_nlBulletStyle = Nothing}

-- | The style of a bullet at this level of nesting.
nlBulletStyle :: Lens' NestingLevel (Maybe TextStyle)
nlBulletStyle
  = lens _nlBulletStyle
      (\ s a -> s{_nlBulletStyle = a})

instance FromJSON NestingLevel where
        parseJSON
          = withObject "NestingLevel"
              (\ o -> NestingLevel' <$> (o .:? "bulletStyle"))

instance ToJSON NestingLevel where
        toJSON NestingLevel'{..}
          = object
              (catMaybes [("bulletStyle" .=) <$> _nlBulletStyle])

-- | A themeable solid color value.
--
-- /See:/ 'opaqueColor' smart constructor.
data OpaqueColor =
  OpaqueColor'
    { _ocThemeColor :: !(Maybe OpaqueColorThemeColor)
    , _ocRgbColor   :: !(Maybe RgbColor)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpaqueColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocThemeColor'
--
-- * 'ocRgbColor'
opaqueColor
    :: OpaqueColor
opaqueColor = OpaqueColor' {_ocThemeColor = Nothing, _ocRgbColor = Nothing}

-- | An opaque theme color.
ocThemeColor :: Lens' OpaqueColor (Maybe OpaqueColorThemeColor)
ocThemeColor
  = lens _ocThemeColor (\ s a -> s{_ocThemeColor = a})

-- | An opaque RGB color.
ocRgbColor :: Lens' OpaqueColor (Maybe RgbColor)
ocRgbColor
  = lens _ocRgbColor (\ s a -> s{_ocRgbColor = a})

instance FromJSON OpaqueColor where
        parseJSON
          = withObject "OpaqueColor"
              (\ o ->
                 OpaqueColor' <$>
                   (o .:? "themeColor") <*> (o .:? "rgbColor"))

instance ToJSON OpaqueColor where
        toJSON OpaqueColor'{..}
          = object
              (catMaybes
                 [("themeColor" .=) <$> _ocThemeColor,
                  ("rgbColor" .=) <$> _ocRgbColor])

-- | Creates a new slide.
--
-- /See:/ 'createSlideRequest' smart constructor.
data CreateSlideRequest =
  CreateSlideRequest'
    { _csrsObjectId              :: !(Maybe Text)
    , _csrsSlideLayoutReference  :: !(Maybe LayoutReference)
    , _csrsInsertionIndex        :: !(Maybe (Textual Int32))
    , _csrsPlaceholderIdMAppings :: !(Maybe [LayoutPlaceholderIdMApping])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSlideRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrsObjectId'
--
-- * 'csrsSlideLayoutReference'
--
-- * 'csrsInsertionIndex'
--
-- * 'csrsPlaceholderIdMAppings'
createSlideRequest
    :: CreateSlideRequest
createSlideRequest =
  CreateSlideRequest'
    { _csrsObjectId = Nothing
    , _csrsSlideLayoutReference = Nothing
    , _csrsInsertionIndex = Nothing
    , _csrsPlaceholderIdMAppings = Nothing
    }

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
csrsObjectId :: Lens' CreateSlideRequest (Maybe Text)
csrsObjectId
  = lens _csrsObjectId (\ s a -> s{_csrsObjectId = a})

-- | Layout reference of the slide to be inserted, based on the *current
-- master*, which is one of the following: - The master of the previous
-- slide index. - The master of the first slide, if the insertion_index is
-- zero. - The first master in the presentation, if there are no slides. If
-- the LayoutReference is not found in the current master, a 400 bad
-- request error is returned. If you don\'t specify a layout reference,
-- then the new slide will use the predefined layout \`BLANK\`.
csrsSlideLayoutReference :: Lens' CreateSlideRequest (Maybe LayoutReference)
csrsSlideLayoutReference
  = lens _csrsSlideLayoutReference
      (\ s a -> s{_csrsSlideLayoutReference = a})

-- | The optional zero-based index indicating where to insert the slides. If
-- you don\'t specify an index, the new slide is created at the end.
csrsInsertionIndex :: Lens' CreateSlideRequest (Maybe Int32)
csrsInsertionIndex
  = lens _csrsInsertionIndex
      (\ s a -> s{_csrsInsertionIndex = a})
      . mapping _Coerce

-- | An optional list of object ID mappings from the placeholder(s) on the
-- layout to the placeholder(s) that will be created on the new slide from
-- that specified layout. Can only be used when \`slide_layout_reference\`
-- is specified.
csrsPlaceholderIdMAppings :: Lens' CreateSlideRequest [LayoutPlaceholderIdMApping]
csrsPlaceholderIdMAppings
  = lens _csrsPlaceholderIdMAppings
      (\ s a -> s{_csrsPlaceholderIdMAppings = a})
      . _Default
      . _Coerce

instance FromJSON CreateSlideRequest where
        parseJSON
          = withObject "CreateSlideRequest"
              (\ o ->
                 CreateSlideRequest' <$>
                   (o .:? "objectId") <*> (o .:? "slideLayoutReference")
                     <*> (o .:? "insertionIndex")
                     <*> (o .:? "placeholderIdMappings" .!= mempty))

instance ToJSON CreateSlideRequest where
        toJSON CreateSlideRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _csrsObjectId,
                  ("slideLayoutReference" .=) <$>
                    _csrsSlideLayoutReference,
                  ("insertionIndex" .=) <$> _csrsInsertionIndex,
                  ("placeholderIdMappings" .=) <$>
                    _csrsPlaceholderIdMAppings])

-- | A location of a single table cell within a table.
--
-- /See:/ 'tableCellLocation' smart constructor.
data TableCellLocation =
  TableCellLocation'
    { _tclColumnIndex :: !(Maybe (Textual Int32))
    , _tclRowIndex    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableCellLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tclColumnIndex'
--
-- * 'tclRowIndex'
tableCellLocation
    :: TableCellLocation
tableCellLocation =
  TableCellLocation' {_tclColumnIndex = Nothing, _tclRowIndex = Nothing}

-- | The 0-based column index.
tclColumnIndex :: Lens' TableCellLocation (Maybe Int32)
tclColumnIndex
  = lens _tclColumnIndex
      (\ s a -> s{_tclColumnIndex = a})
      . mapping _Coerce

-- | The 0-based row index.
tclRowIndex :: Lens' TableCellLocation (Maybe Int32)
tclRowIndex
  = lens _tclRowIndex (\ s a -> s{_tclRowIndex = a}) .
      mapping _Coerce

instance FromJSON TableCellLocation where
        parseJSON
          = withObject "TableCellLocation"
              (\ o ->
                 TableCellLocation' <$>
                   (o .:? "columnIndex") <*> (o .:? "rowIndex"))

instance ToJSON TableCellLocation where
        toJSON TableCellLocation'{..}
          = object
              (catMaybes
                 [("columnIndex" .=) <$> _tclColumnIndex,
                  ("rowIndex" .=) <$> _tclRowIndex])

-- | Updates the position of slides in the presentation.
--
-- /See:/ 'updateSlidesPositionRequest' smart constructor.
data UpdateSlidesPositionRequest =
  UpdateSlidesPositionRequest'
    { _usprSlideObjectIds :: !(Maybe [Text])
    , _usprInsertionIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateSlidesPositionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usprSlideObjectIds'
--
-- * 'usprInsertionIndex'
updateSlidesPositionRequest
    :: UpdateSlidesPositionRequest
updateSlidesPositionRequest =
  UpdateSlidesPositionRequest'
    {_usprSlideObjectIds = Nothing, _usprInsertionIndex = Nothing}

-- | The IDs of the slides in the presentation that should be moved. The
-- slides in this list must be in existing presentation order, without
-- duplicates.
usprSlideObjectIds :: Lens' UpdateSlidesPositionRequest [Text]
usprSlideObjectIds
  = lens _usprSlideObjectIds
      (\ s a -> s{_usprSlideObjectIds = a})
      . _Default
      . _Coerce

-- | The index where the slides should be inserted, based on the slide
-- arrangement before the move takes place. Must be between zero and the
-- number of slides in the presentation, inclusive.
usprInsertionIndex :: Lens' UpdateSlidesPositionRequest (Maybe Int32)
usprInsertionIndex
  = lens _usprInsertionIndex
      (\ s a -> s{_usprInsertionIndex = a})
      . mapping _Coerce

instance FromJSON UpdateSlidesPositionRequest where
        parseJSON
          = withObject "UpdateSlidesPositionRequest"
              (\ o ->
                 UpdateSlidesPositionRequest' <$>
                   (o .:? "slideObjectIds" .!= mempty) <*>
                     (o .:? "insertionIndex"))

instance ToJSON UpdateSlidesPositionRequest where
        toJSON UpdateSlidesPositionRequest'{..}
          = object
              (catMaybes
                 [("slideObjectIds" .=) <$> _usprSlideObjectIds,
                  ("insertionIndex" .=) <$> _usprInsertionIndex])

-- | Replaces all shapes that match the given criteria with the provided
-- image. The images replacing the shapes are rectangular after being
-- inserted into the presentation and do not take on the forms of the
-- shapes.
--
-- /See:/ 'replaceAllShapesWithImageRequest' smart constructor.
data ReplaceAllShapesWithImageRequest =
  ReplaceAllShapesWithImageRequest'
    { _raswirImageReplaceMethod :: !(Maybe ReplaceAllShapesWithImageRequestImageReplaceMethod)
    , _raswirPageObjectIds      :: !(Maybe [Text])
    , _raswirContainsText       :: !(Maybe SubstringMatchCriteria)
    , _raswirImageURL           :: !(Maybe Text)
    , _raswirReplaceMethod      :: !(Maybe ReplaceAllShapesWithImageRequestReplaceMethod)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllShapesWithImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raswirImageReplaceMethod'
--
-- * 'raswirPageObjectIds'
--
-- * 'raswirContainsText'
--
-- * 'raswirImageURL'
--
-- * 'raswirReplaceMethod'
replaceAllShapesWithImageRequest
    :: ReplaceAllShapesWithImageRequest
replaceAllShapesWithImageRequest =
  ReplaceAllShapesWithImageRequest'
    { _raswirImageReplaceMethod = Nothing
    , _raswirPageObjectIds = Nothing
    , _raswirContainsText = Nothing
    , _raswirImageURL = Nothing
    , _raswirReplaceMethod = Nothing
    }

-- | The image replace method. If you specify both a \`replace_method\` and
-- an \`image_replace_method\`, the \`image_replace_method\` takes
-- precedence. If you do not specify a value for \`image_replace_method\`,
-- but specify a value for \`replace_method\`, then the specified
-- \`replace_method\` value is used. If you do not specify either, then
-- CENTER_INSIDE is used.
raswirImageReplaceMethod :: Lens' ReplaceAllShapesWithImageRequest (Maybe ReplaceAllShapesWithImageRequestImageReplaceMethod)
raswirImageReplaceMethod
  = lens _raswirImageReplaceMethod
      (\ s a -> s{_raswirImageReplaceMethod = a})

-- | If non-empty, limits the matches to page elements only on the given
-- pages. Returns a 400 bad request error if given the page object ID of a
-- notes page or a notes master, or if a page with that object ID doesn\'t
-- exist in the presentation.
raswirPageObjectIds :: Lens' ReplaceAllShapesWithImageRequest [Text]
raswirPageObjectIds
  = lens _raswirPageObjectIds
      (\ s a -> s{_raswirPageObjectIds = a})
      . _Default
      . _Coerce

-- | If set, this request will replace all of the shapes that contain the
-- given text.
raswirContainsText :: Lens' ReplaceAllShapesWithImageRequest (Maybe SubstringMatchCriteria)
raswirContainsText
  = lens _raswirContainsText
      (\ s a -> s{_raswirContainsText = a})

-- | The image URL. The image is fetched once at insertion time and a copy is
-- stored for display inside the presentation. Images must be less than
-- 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG,
-- JPEG, or GIF format. The provided URL can be at most 2 kB in length. The
-- URL itself is saved with the image, and exposed via the Image.source_url
-- field.
raswirImageURL :: Lens' ReplaceAllShapesWithImageRequest (Maybe Text)
raswirImageURL
  = lens _raswirImageURL
      (\ s a -> s{_raswirImageURL = a})

-- | The replace method. __Deprecated__: use \`image_replace_method\`
-- instead. If you specify both a \`replace_method\` and an
-- \`image_replace_method\`, the \`image_replace_method\` takes precedence.
raswirReplaceMethod :: Lens' ReplaceAllShapesWithImageRequest (Maybe ReplaceAllShapesWithImageRequestReplaceMethod)
raswirReplaceMethod
  = lens _raswirReplaceMethod
      (\ s a -> s{_raswirReplaceMethod = a})

instance FromJSON ReplaceAllShapesWithImageRequest
         where
        parseJSON
          = withObject "ReplaceAllShapesWithImageRequest"
              (\ o ->
                 ReplaceAllShapesWithImageRequest' <$>
                   (o .:? "imageReplaceMethod") <*>
                     (o .:? "pageObjectIds" .!= mempty)
                     <*> (o .:? "containsText")
                     <*> (o .:? "imageUrl")
                     <*> (o .:? "replaceMethod"))

instance ToJSON ReplaceAllShapesWithImageRequest
         where
        toJSON ReplaceAllShapesWithImageRequest'{..}
          = object
              (catMaybes
                 [("imageReplaceMethod" .=) <$>
                    _raswirImageReplaceMethod,
                  ("pageObjectIds" .=) <$> _raswirPageObjectIds,
                  ("containsText" .=) <$> _raswirContainsText,
                  ("imageUrl" .=) <$> _raswirImageURL,
                  ("replaceMethod" .=) <$> _raswirReplaceMethod])

-- | A visual element rendered on a page.
--
-- /See:/ 'pageElement' smart constructor.
data PageElement =
  PageElement'
    { _peTransform    :: !(Maybe AffineTransform)
    , _peImage        :: !(Maybe Image)
    , _peSize         :: !(Maybe Size)
    , _peSheetsChart  :: !(Maybe SheetsChart)
    , _peObjectId     :: !(Maybe Text)
    , _peLine         :: !(Maybe Line)
    , _peElementGroup :: !(Maybe Group)
    , _peVideo        :: !(Maybe Video)
    , _peWordArt      :: !(Maybe WordArt)
    , _peShape        :: !(Maybe Shape)
    , _peTitle        :: !(Maybe Text)
    , _peTable        :: !(Maybe Table)
    , _peDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PageElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peTransform'
--
-- * 'peImage'
--
-- * 'peSize'
--
-- * 'peSheetsChart'
--
-- * 'peObjectId'
--
-- * 'peLine'
--
-- * 'peElementGroup'
--
-- * 'peVideo'
--
-- * 'peWordArt'
--
-- * 'peShape'
--
-- * 'peTitle'
--
-- * 'peTable'
--
-- * 'peDescription'
pageElement
    :: PageElement
pageElement =
  PageElement'
    { _peTransform = Nothing
    , _peImage = Nothing
    , _peSize = Nothing
    , _peSheetsChart = Nothing
    , _peObjectId = Nothing
    , _peLine = Nothing
    , _peElementGroup = Nothing
    , _peVideo = Nothing
    , _peWordArt = Nothing
    , _peShape = Nothing
    , _peTitle = Nothing
    , _peTable = Nothing
    , _peDescription = Nothing
    }

-- | The transform of the page element. The visual appearance of the page
-- element is determined by its absolute transform. To compute the absolute
-- transform, preconcatenate a page element\'s transform with the
-- transforms of all of its parent groups. If the page element is not in a
-- group, its absolute transform is the same as the value in this field.
-- The initial transform for the newly created Group is always the identity
-- transform.
peTransform :: Lens' PageElement (Maybe AffineTransform)
peTransform
  = lens _peTransform (\ s a -> s{_peTransform = a})

-- | An image page element.
peImage :: Lens' PageElement (Maybe Image)
peImage = lens _peImage (\ s a -> s{_peImage = a})

-- | The size of the page element.
peSize :: Lens' PageElement (Maybe Size)
peSize = lens _peSize (\ s a -> s{_peSize = a})

-- | A linked chart embedded from Google Sheets. Unlinked charts are
-- represented as images.
peSheetsChart :: Lens' PageElement (Maybe SheetsChart)
peSheetsChart
  = lens _peSheetsChart
      (\ s a -> s{_peSheetsChart = a})

-- | The object ID for this page element. Object IDs used by
-- google.apps.slides.v1.Page and google.apps.slides.v1.PageElement share
-- the same namespace.
peObjectId :: Lens' PageElement (Maybe Text)
peObjectId
  = lens _peObjectId (\ s a -> s{_peObjectId = a})

-- | A line page element.
peLine :: Lens' PageElement (Maybe Line)
peLine = lens _peLine (\ s a -> s{_peLine = a})

-- | A collection of page elements joined as a single unit.
peElementGroup :: Lens' PageElement (Maybe Group)
peElementGroup
  = lens _peElementGroup
      (\ s a -> s{_peElementGroup = a})

-- | A video page element.
peVideo :: Lens' PageElement (Maybe Video)
peVideo = lens _peVideo (\ s a -> s{_peVideo = a})

-- | A word art page element.
peWordArt :: Lens' PageElement (Maybe WordArt)
peWordArt
  = lens _peWordArt (\ s a -> s{_peWordArt = a})

-- | A generic shape.
peShape :: Lens' PageElement (Maybe Shape)
peShape = lens _peShape (\ s a -> s{_peShape = a})

-- | The title of the page element. Combined with description to display alt
-- text.
peTitle :: Lens' PageElement (Maybe Text)
peTitle = lens _peTitle (\ s a -> s{_peTitle = a})

-- | A table page element.
peTable :: Lens' PageElement (Maybe Table)
peTable = lens _peTable (\ s a -> s{_peTable = a})

-- | The description of the page element. Combined with title to display alt
-- text.
peDescription :: Lens' PageElement (Maybe Text)
peDescription
  = lens _peDescription
      (\ s a -> s{_peDescription = a})

instance FromJSON PageElement where
        parseJSON
          = withObject "PageElement"
              (\ o ->
                 PageElement' <$>
                   (o .:? "transform") <*> (o .:? "image") <*>
                     (o .:? "size")
                     <*> (o .:? "sheetsChart")
                     <*> (o .:? "objectId")
                     <*> (o .:? "line")
                     <*> (o .:? "elementGroup")
                     <*> (o .:? "video")
                     <*> (o .:? "wordArt")
                     <*> (o .:? "shape")
                     <*> (o .:? "title")
                     <*> (o .:? "table")
                     <*> (o .:? "description"))

instance ToJSON PageElement where
        toJSON PageElement'{..}
          = object
              (catMaybes
                 [("transform" .=) <$> _peTransform,
                  ("image" .=) <$> _peImage, ("size" .=) <$> _peSize,
                  ("sheetsChart" .=) <$> _peSheetsChart,
                  ("objectId" .=) <$> _peObjectId,
                  ("line" .=) <$> _peLine,
                  ("elementGroup" .=) <$> _peElementGroup,
                  ("video" .=) <$> _peVideo,
                  ("wordArt" .=) <$> _peWordArt,
                  ("shape" .=) <$> _peShape, ("title" .=) <$> _peTitle,
                  ("table" .=) <$> _peTable,
                  ("description" .=) <$> _peDescription])

-- | A color and position in a gradient band.
--
-- /See:/ 'colorStop' smart constructor.
data ColorStop =
  ColorStop'
    { _csColor    :: !(Maybe OpaqueColor)
    , _csAlpha    :: !(Maybe (Textual Double))
    , _csPosition :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColorStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csColor'
--
-- * 'csAlpha'
--
-- * 'csPosition'
colorStop
    :: ColorStop
colorStop =
  ColorStop' {_csColor = Nothing, _csAlpha = Nothing, _csPosition = Nothing}

-- | The color of the gradient stop.
csColor :: Lens' ColorStop (Maybe OpaqueColor)
csColor = lens _csColor (\ s a -> s{_csColor = a})

-- | The alpha value of this color in the gradient band. Defaults to 1.0,
-- fully opaque.
csAlpha :: Lens' ColorStop (Maybe Double)
csAlpha
  = lens _csAlpha (\ s a -> s{_csAlpha = a}) .
      mapping _Coerce

-- | The relative position of the color stop in the gradient band measured in
-- percentage. The value should be in the interval [0.0, 1.0].
csPosition :: Lens' ColorStop (Maybe Double)
csPosition
  = lens _csPosition (\ s a -> s{_csPosition = a}) .
      mapping _Coerce

instance FromJSON ColorStop where
        parseJSON
          = withObject "ColorStop"
              (\ o ->
                 ColorStop' <$>
                   (o .:? "color") <*> (o .:? "alpha") <*>
                     (o .:? "position"))

instance ToJSON ColorStop where
        toJSON ColorStop'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _csColor,
                  ("alpha" .=) <$> _csAlpha,
                  ("position" .=) <$> _csPosition])

-- | Deletes an object, either pages or page elements, from the presentation.
--
-- /See:/ 'deleteObjectRequest' smart constructor.
newtype DeleteObjectRequest =
  DeleteObjectRequest'
    { _dObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteObjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dObjectId'
deleteObjectRequest
    :: DeleteObjectRequest
deleteObjectRequest = DeleteObjectRequest' {_dObjectId = Nothing}

-- | The object ID of the page or page element to delete. If after a delete
-- operation a group contains only 1 or no page elements, the group is also
-- deleted. If a placeholder is deleted on a layout, any empty inheriting
-- shapes are also deleted.
dObjectId :: Lens' DeleteObjectRequest (Maybe Text)
dObjectId
  = lens _dObjectId (\ s a -> s{_dObjectId = a})

instance FromJSON DeleteObjectRequest where
        parseJSON
          = withObject "DeleteObjectRequest"
              (\ o -> DeleteObjectRequest' <$> (o .:? "objectId"))

instance ToJSON DeleteObjectRequest where
        toJSON DeleteObjectRequest'{..}
          = object (catMaybes [("objectId" .=) <$> _dObjectId])

-- | The result of creating a slide.
--
-- /See:/ 'createSlideResponse' smart constructor.
newtype CreateSlideResponse =
  CreateSlideResponse'
    { _ccObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSlideResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccObjectId'
createSlideResponse
    :: CreateSlideResponse
createSlideResponse = CreateSlideResponse' {_ccObjectId = Nothing}

-- | The object ID of the created slide.
ccObjectId :: Lens' CreateSlideResponse (Maybe Text)
ccObjectId
  = lens _ccObjectId (\ s a -> s{_ccObjectId = a})

instance FromJSON CreateSlideResponse where
        parseJSON
          = withObject "CreateSlideResponse"
              (\ o -> CreateSlideResponse' <$> (o .:? "objectId"))

instance ToJSON CreateSlideResponse where
        toJSON CreateSlideResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _ccObjectId])

-- | The palette of predefined colors for a page.
--
-- /See:/ 'colorScheme' smart constructor.
newtype ColorScheme =
  ColorScheme'
    { _csColors :: Maybe [ThemeColorPair]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColorScheme' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csColors'
colorScheme
    :: ColorScheme
colorScheme = ColorScheme' {_csColors = Nothing}

-- | The ThemeColorType and corresponding concrete color pairs.
csColors :: Lens' ColorScheme [ThemeColorPair]
csColors
  = lens _csColors (\ s a -> s{_csColors = a}) .
      _Default
      . _Coerce

instance FromJSON ColorScheme where
        parseJSON
          = withObject "ColorScheme"
              (\ o -> ColorScheme' <$> (o .:? "colors" .!= mempty))

instance ToJSON ColorScheme where
        toJSON ColorScheme'{..}
          = object (catMaybes [("colors" .=) <$> _csColors])

-- | Properties and contents of each table cell.
--
-- /See:/ 'tableCell' smart constructor.
data TableCell =
  TableCell'
    { _tcColumnSpan          :: !(Maybe (Textual Int32))
    , _tcLocation            :: !(Maybe TableCellLocation)
    , _tcText                :: !(Maybe TextContent)
    , _tcRowSpan             :: !(Maybe (Textual Int32))
    , _tcTableCellProperties :: !(Maybe TableCellProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcColumnSpan'
--
-- * 'tcLocation'
--
-- * 'tcText'
--
-- * 'tcRowSpan'
--
-- * 'tcTableCellProperties'
tableCell
    :: TableCell
tableCell =
  TableCell'
    { _tcColumnSpan = Nothing
    , _tcLocation = Nothing
    , _tcText = Nothing
    , _tcRowSpan = Nothing
    , _tcTableCellProperties = Nothing
    }

-- | Column span of the cell.
tcColumnSpan :: Lens' TableCell (Maybe Int32)
tcColumnSpan
  = lens _tcColumnSpan (\ s a -> s{_tcColumnSpan = a})
      . mapping _Coerce

-- | The location of the cell within the table.
tcLocation :: Lens' TableCell (Maybe TableCellLocation)
tcLocation
  = lens _tcLocation (\ s a -> s{_tcLocation = a})

-- | The text content of the cell.
tcText :: Lens' TableCell (Maybe TextContent)
tcText = lens _tcText (\ s a -> s{_tcText = a})

-- | Row span of the cell.
tcRowSpan :: Lens' TableCell (Maybe Int32)
tcRowSpan
  = lens _tcRowSpan (\ s a -> s{_tcRowSpan = a}) .
      mapping _Coerce

-- | The properties of the table cell.
tcTableCellProperties :: Lens' TableCell (Maybe TableCellProperties)
tcTableCellProperties
  = lens _tcTableCellProperties
      (\ s a -> s{_tcTableCellProperties = a})

instance FromJSON TableCell where
        parseJSON
          = withObject "TableCell"
              (\ o ->
                 TableCell' <$>
                   (o .:? "columnSpan") <*> (o .:? "location") <*>
                     (o .:? "text")
                     <*> (o .:? "rowSpan")
                     <*> (o .:? "tableCellProperties"))

instance ToJSON TableCell where
        toJSON TableCell'{..}
          = object
              (catMaybes
                 [("columnSpan" .=) <$> _tcColumnSpan,
                  ("location" .=) <$> _tcLocation,
                  ("text" .=) <$> _tcText,
                  ("rowSpan" .=) <$> _tcRowSpan,
                  ("tableCellProperties" .=) <$>
                    _tcTableCellProperties])

-- | A map of nesting levels to the properties of bullets at the associated
-- level. A list has at most nine levels of nesting, so the possible values
-- for the keys of this map are 0 through 8, inclusive.
--
-- /See:/ 'listNestingLevel' smart constructor.
newtype ListNestingLevel =
  ListNestingLevel'
    { _lnlAddtional :: HashMap Text NestingLevel
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListNestingLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnlAddtional'
listNestingLevel
    :: HashMap Text NestingLevel -- ^ 'lnlAddtional'
    -> ListNestingLevel
listNestingLevel pLnlAddtional_ =
  ListNestingLevel' {_lnlAddtional = _Coerce # pLnlAddtional_}

lnlAddtional :: Lens' ListNestingLevel (HashMap Text NestingLevel)
lnlAddtional
  = lens _lnlAddtional (\ s a -> s{_lnlAddtional = a})
      . _Coerce

instance FromJSON ListNestingLevel where
        parseJSON
          = withObject "ListNestingLevel"
              (\ o -> ListNestingLevel' <$> (parseJSONObject o))

instance ToJSON ListNestingLevel where
        toJSON = toJSON . _lnlAddtional

-- | The outline of a PageElement. If these fields are unset, they may be
-- inherited from a parent placeholder if it exists. If there is no parent,
-- the fields will default to the value used for new page elements created
-- in the Slides editor, which may depend on the page element kind.
--
-- /See:/ 'outline' smart constructor.
data Outline =
  Outline'
    { _oOutlineFill   :: !(Maybe OutlineFill)
    , _oWeight        :: !(Maybe Dimension)
    , _oDashStyle     :: !(Maybe OutlineDashStyle)
    , _oPropertyState :: !(Maybe OutlinePropertyState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Outline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOutlineFill'
--
-- * 'oWeight'
--
-- * 'oDashStyle'
--
-- * 'oPropertyState'
outline
    :: Outline
outline =
  Outline'
    { _oOutlineFill = Nothing
    , _oWeight = Nothing
    , _oDashStyle = Nothing
    , _oPropertyState = Nothing
    }

-- | The fill of the outline.
oOutlineFill :: Lens' Outline (Maybe OutlineFill)
oOutlineFill
  = lens _oOutlineFill (\ s a -> s{_oOutlineFill = a})

-- | The thickness of the outline.
oWeight :: Lens' Outline (Maybe Dimension)
oWeight = lens _oWeight (\ s a -> s{_oWeight = a})

-- | The dash style of the outline.
oDashStyle :: Lens' Outline (Maybe OutlineDashStyle)
oDashStyle
  = lens _oDashStyle (\ s a -> s{_oDashStyle = a})

-- | The outline property state. Updating the outline on a page element will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no outline on a page element, set
-- this field to \`NOT_RENDERED\`. In this case, any other outline fields
-- set in the same request will be ignored.
oPropertyState :: Lens' Outline (Maybe OutlinePropertyState)
oPropertyState
  = lens _oPropertyState
      (\ s a -> s{_oPropertyState = a})

instance FromJSON Outline where
        parseJSON
          = withObject "Outline"
              (\ o ->
                 Outline' <$>
                   (o .:? "outlineFill") <*> (o .:? "weight") <*>
                     (o .:? "dashStyle")
                     <*> (o .:? "propertyState"))

instance ToJSON Outline where
        toJSON Outline'{..}
          = object
              (catMaybes
                 [("outlineFill" .=) <$> _oOutlineFill,
                  ("weight" .=) <$> _oWeight,
                  ("dashStyle" .=) <$> _oDashStyle,
                  ("propertyState" .=) <$> _oPropertyState])

-- | Update the properties of a Video.
--
-- /See:/ 'updateVideoPropertiesRequest' smart constructor.
data UpdateVideoPropertiesRequest =
  UpdateVideoPropertiesRequest'
    { _uvprObjectId        :: !(Maybe Text)
    , _uvprVideoProperties :: !(Maybe VideoProperties)
    , _uvprFields          :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateVideoPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvprObjectId'
--
-- * 'uvprVideoProperties'
--
-- * 'uvprFields'
updateVideoPropertiesRequest
    :: UpdateVideoPropertiesRequest
updateVideoPropertiesRequest =
  UpdateVideoPropertiesRequest'
    { _uvprObjectId = Nothing
    , _uvprVideoProperties = Nothing
    , _uvprFields = Nothing
    }

-- | The object ID of the video the updates are applied to.
uvprObjectId :: Lens' UpdateVideoPropertiesRequest (Maybe Text)
uvprObjectId
  = lens _uvprObjectId (\ s a -> s{_uvprObjectId = a})

-- | The video properties to update.
uvprVideoProperties :: Lens' UpdateVideoPropertiesRequest (Maybe VideoProperties)
uvprVideoProperties
  = lens _uvprVideoProperties
      (\ s a -> s{_uvprVideoProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`videoProperties\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the video outline color, set \`fields\` to
-- \`\"outline.outlineFill.solidFill.color\"\`. To reset a property to its
-- default value, include its field name in the field mask but leave the
-- field itself unset.
uvprFields :: Lens' UpdateVideoPropertiesRequest (Maybe GFieldMask)
uvprFields
  = lens _uvprFields (\ s a -> s{_uvprFields = a})

instance FromJSON UpdateVideoPropertiesRequest where
        parseJSON
          = withObject "UpdateVideoPropertiesRequest"
              (\ o ->
                 UpdateVideoPropertiesRequest' <$>
                   (o .:? "objectId") <*> (o .:? "videoProperties") <*>
                     (o .:? "fields"))

instance ToJSON UpdateVideoPropertiesRequest where
        toJSON UpdateVideoPropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _uvprObjectId,
                  ("videoProperties" .=) <$> _uvprVideoProperties,
                  ("fields" .=) <$> _uvprFields])

-- | The properties of the Video.
--
-- /See:/ 'videoProperties' smart constructor.
data VideoProperties =
  VideoProperties'
    { _vpStart    :: !(Maybe (Textual Word32))
    , _vpAutoPlay :: !(Maybe Bool)
    , _vpMute     :: !(Maybe Bool)
    , _vpEnd      :: !(Maybe (Textual Word32))
    , _vpOutline  :: !(Maybe Outline)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpStart'
--
-- * 'vpAutoPlay'
--
-- * 'vpMute'
--
-- * 'vpEnd'
--
-- * 'vpOutline'
videoProperties
    :: VideoProperties
videoProperties =
  VideoProperties'
    { _vpStart = Nothing
    , _vpAutoPlay = Nothing
    , _vpMute = Nothing
    , _vpEnd = Nothing
    , _vpOutline = Nothing
    }

-- | The time at which to start playback, measured in seconds from the
-- beginning of the video. If set, the start time should be before the end
-- time. If you set this to a value that exceeds the video\'s length in
-- seconds, the video will be played from the last second. If not set, the
-- video will be played from the beginning.
vpStart :: Lens' VideoProperties (Maybe Word32)
vpStart
  = lens _vpStart (\ s a -> s{_vpStart = a}) .
      mapping _Coerce

-- | Whether to enable video autoplay when the page is displayed in present
-- mode. Defaults to false.
vpAutoPlay :: Lens' VideoProperties (Maybe Bool)
vpAutoPlay
  = lens _vpAutoPlay (\ s a -> s{_vpAutoPlay = a})

-- | Whether to mute the audio during video playback. Defaults to false.
vpMute :: Lens' VideoProperties (Maybe Bool)
vpMute = lens _vpMute (\ s a -> s{_vpMute = a})

-- | The time at which to end playback, measured in seconds from the
-- beginning of the video. If set, the end time should be after the start
-- time. If not set or if you set this to a value that exceeds the video\'s
-- length, the video will be played until its end.
vpEnd :: Lens' VideoProperties (Maybe Word32)
vpEnd
  = lens _vpEnd (\ s a -> s{_vpEnd = a}) .
      mapping _Coerce

-- | The outline of the video. The default outline matches the defaults for
-- new videos created in the Slides editor.
vpOutline :: Lens' VideoProperties (Maybe Outline)
vpOutline
  = lens _vpOutline (\ s a -> s{_vpOutline = a})

instance FromJSON VideoProperties where
        parseJSON
          = withObject "VideoProperties"
              (\ o ->
                 VideoProperties' <$>
                   (o .:? "start") <*> (o .:? "autoPlay") <*>
                     (o .:? "mute")
                     <*> (o .:? "end")
                     <*> (o .:? "outline"))

instance ToJSON VideoProperties where
        toJSON VideoProperties'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _vpStart,
                  ("autoPlay" .=) <$> _vpAutoPlay,
                  ("mute" .=) <$> _vpMute, ("end" .=) <$> _vpEnd,
                  ("outline" .=) <$> _vpOutline])

-- | The user-specified ID mapping for a placeholder that will be created on
-- a slide from a specified layout.
--
-- /See:/ 'layoutPlaceholderIdMApping' smart constructor.
data LayoutPlaceholderIdMApping =
  LayoutPlaceholderIdMApping'
    { _lpimaObjectId                  :: !(Maybe Text)
    , _lpimaLayoutPlaceholderObjectId :: !(Maybe Text)
    , _lpimaLayoutPlaceholder         :: !(Maybe Placeholder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LayoutPlaceholderIdMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpimaObjectId'
--
-- * 'lpimaLayoutPlaceholderObjectId'
--
-- * 'lpimaLayoutPlaceholder'
layoutPlaceholderIdMApping
    :: LayoutPlaceholderIdMApping
layoutPlaceholderIdMApping =
  LayoutPlaceholderIdMApping'
    { _lpimaObjectId = Nothing
    , _lpimaLayoutPlaceholderObjectId = Nothing
    , _lpimaLayoutPlaceholder = Nothing
    }

-- | A user-supplied object ID for the placeholder identified above that to
-- be created onto a slide. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
lpimaObjectId :: Lens' LayoutPlaceholderIdMApping (Maybe Text)
lpimaObjectId
  = lens _lpimaObjectId
      (\ s a -> s{_lpimaObjectId = a})

-- | The object ID of the placeholder on a layout that will be applied to a
-- slide.
lpimaLayoutPlaceholderObjectId :: Lens' LayoutPlaceholderIdMApping (Maybe Text)
lpimaLayoutPlaceholderObjectId
  = lens _lpimaLayoutPlaceholderObjectId
      (\ s a -> s{_lpimaLayoutPlaceholderObjectId = a})

-- | The placeholder on a layout that will be applied to a slide. Only type
-- and index are needed. For example, a predefined \`TITLE_AND_BODY\`
-- layout may usually have a TITLE placeholder with index 0 and a BODY
-- placeholder with index 0.
lpimaLayoutPlaceholder :: Lens' LayoutPlaceholderIdMApping (Maybe Placeholder)
lpimaLayoutPlaceholder
  = lens _lpimaLayoutPlaceholder
      (\ s a -> s{_lpimaLayoutPlaceholder = a})

instance FromJSON LayoutPlaceholderIdMApping where
        parseJSON
          = withObject "LayoutPlaceholderIdMApping"
              (\ o ->
                 LayoutPlaceholderIdMApping' <$>
                   (o .:? "objectId") <*>
                     (o .:? "layoutPlaceholderObjectId")
                     <*> (o .:? "layoutPlaceholder"))

instance ToJSON LayoutPlaceholderIdMApping where
        toJSON LayoutPlaceholderIdMApping'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _lpimaObjectId,
                  ("layoutPlaceholderObjectId" .=) <$>
                    _lpimaLayoutPlaceholderObjectId,
                  ("layoutPlaceholder" .=) <$>
                    _lpimaLayoutPlaceholder])

-- | The result of creating an image.
--
-- /See:/ 'createImageResponse' smart constructor.
newtype CreateImageResponse =
  CreateImageResponse'
    { _ciriObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciriObjectId'
createImageResponse
    :: CreateImageResponse
createImageResponse = CreateImageResponse' {_ciriObjectId = Nothing}

-- | The object ID of the created image.
ciriObjectId :: Lens' CreateImageResponse (Maybe Text)
ciriObjectId
  = lens _ciriObjectId (\ s a -> s{_ciriObjectId = a})

instance FromJSON CreateImageResponse where
        parseJSON
          = withObject "CreateImageResponse"
              (\ o -> CreateImageResponse' <$> (o .:? "objectId"))

instance ToJSON CreateImageResponse where
        toJSON CreateImageResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _ciriObjectId])

-- | A TextElement describes the content of a range of indices in the text
-- content of a Shape or TableCell.
--
-- /See:/ 'textElement' smart constructor.
data TextElement =
  TextElement'
    { _teParagraphMarker :: !(Maybe ParagraphMarker)
    , _teAutoText        :: !(Maybe AutoText)
    , _teEndIndex        :: !(Maybe (Textual Int32))
    , _teTextRun         :: !(Maybe TextRun)
    , _teStartIndex      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teParagraphMarker'
--
-- * 'teAutoText'
--
-- * 'teEndIndex'
--
-- * 'teTextRun'
--
-- * 'teStartIndex'
textElement
    :: TextElement
textElement =
  TextElement'
    { _teParagraphMarker = Nothing
    , _teAutoText = Nothing
    , _teEndIndex = Nothing
    , _teTextRun = Nothing
    , _teStartIndex = Nothing
    }

-- | A marker representing the beginning of a new paragraph. The
-- \`start_index\` and \`end_index\` of this TextElement represent the
-- range of the paragraph. Other TextElements with an index range contained
-- inside this paragraph\'s range are considered to be part of this
-- paragraph. The range of indices of two separate paragraphs will never
-- overlap.
teParagraphMarker :: Lens' TextElement (Maybe ParagraphMarker)
teParagraphMarker
  = lens _teParagraphMarker
      (\ s a -> s{_teParagraphMarker = a})

-- | A TextElement representing a spot in the text that is dynamically
-- replaced with content that can change over time.
teAutoText :: Lens' TextElement (Maybe AutoText)
teAutoText
  = lens _teAutoText (\ s a -> s{_teAutoText = a})

-- | The zero-based end index of this text element, exclusive, in Unicode
-- code units.
teEndIndex :: Lens' TextElement (Maybe Int32)
teEndIndex
  = lens _teEndIndex (\ s a -> s{_teEndIndex = a}) .
      mapping _Coerce

-- | A TextElement representing a run of text where all of the characters in
-- the run have the same TextStyle. The \`start_index\` and \`end_index\`
-- of TextRuns will always be fully contained in the index range of a
-- single \`paragraph_marker\` TextElement. In other words, a TextRun will
-- never span multiple paragraphs.
teTextRun :: Lens' TextElement (Maybe TextRun)
teTextRun
  = lens _teTextRun (\ s a -> s{_teTextRun = a})

-- | The zero-based start index of this text element, in Unicode code units.
teStartIndex :: Lens' TextElement (Maybe Int32)
teStartIndex
  = lens _teStartIndex (\ s a -> s{_teStartIndex = a})
      . mapping _Coerce

instance FromJSON TextElement where
        parseJSON
          = withObject "TextElement"
              (\ o ->
                 TextElement' <$>
                   (o .:? "paragraphMarker") <*> (o .:? "autoText") <*>
                     (o .:? "endIndex")
                     <*> (o .:? "textRun")
                     <*> (o .:? "startIndex"))

instance ToJSON TextElement where
        toJSON TextElement'{..}
          = object
              (catMaybes
                 [("paragraphMarker" .=) <$> _teParagraphMarker,
                  ("autoText" .=) <$> _teAutoText,
                  ("endIndex" .=) <$> _teEndIndex,
                  ("textRun" .=) <$> _teTextRun,
                  ("startIndex" .=) <$> _teStartIndex])

-- | Deletes bullets from all of the paragraphs that overlap with the given
-- text index range. The nesting level of each paragraph will be visually
-- preserved by adding indent to the start of the corresponding paragraph.
--
-- /See:/ 'deleteParagraphBulletsRequest' smart constructor.
data DeleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest'
    { _dpbrTextRange    :: !(Maybe Range)
    , _dpbrObjectId     :: !(Maybe Text)
    , _dpbrCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteParagraphBulletsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbrTextRange'
--
-- * 'dpbrObjectId'
--
-- * 'dpbrCellLocation'
deleteParagraphBulletsRequest
    :: DeleteParagraphBulletsRequest
deleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest'
    { _dpbrTextRange = Nothing
    , _dpbrObjectId = Nothing
    , _dpbrCellLocation = Nothing
    }

-- | The range of text to delete bullets from, based on TextElement indexes.
dpbrTextRange :: Lens' DeleteParagraphBulletsRequest (Maybe Range)
dpbrTextRange
  = lens _dpbrTextRange
      (\ s a -> s{_dpbrTextRange = a})

-- | The object ID of the shape or table containing the text to delete
-- bullets from.
dpbrObjectId :: Lens' DeleteParagraphBulletsRequest (Maybe Text)
dpbrObjectId
  = lens _dpbrObjectId (\ s a -> s{_dpbrObjectId = a})

-- | The optional table cell location if the text to be modified is in a
-- table cell. If present, the object_id must refer to a table.
dpbrCellLocation :: Lens' DeleteParagraphBulletsRequest (Maybe TableCellLocation)
dpbrCellLocation
  = lens _dpbrCellLocation
      (\ s a -> s{_dpbrCellLocation = a})

instance FromJSON DeleteParagraphBulletsRequest where
        parseJSON
          = withObject "DeleteParagraphBulletsRequest"
              (\ o ->
                 DeleteParagraphBulletsRequest' <$>
                   (o .:? "textRange") <*> (o .:? "objectId") <*>
                     (o .:? "cellLocation"))

instance ToJSON DeleteParagraphBulletsRequest where
        toJSON DeleteParagraphBulletsRequest'{..}
          = object
              (catMaybes
                 [("textRange" .=) <$> _dpbrTextRange,
                  ("objectId" .=) <$> _dpbrObjectId,
                  ("cellLocation" .=) <$> _dpbrCellLocation])

-- | Inserts text into a shape or a table cell.
--
-- /See:/ 'insertTextRequest' smart constructor.
data InsertTextRequest =
  InsertTextRequest'
    { _itrText           :: !(Maybe Text)
    , _itrObjectId       :: !(Maybe Text)
    , _itrInsertionIndex :: !(Maybe (Textual Int32))
    , _itrCellLocation   :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsertTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itrText'
--
-- * 'itrObjectId'
--
-- * 'itrInsertionIndex'
--
-- * 'itrCellLocation'
insertTextRequest
    :: InsertTextRequest
insertTextRequest =
  InsertTextRequest'
    { _itrText = Nothing
    , _itrObjectId = Nothing
    , _itrInsertionIndex = Nothing
    , _itrCellLocation = Nothing
    }

-- | The text to be inserted. Inserting a newline character will implicitly
-- create a new ParagraphMarker at that index. The paragraph style of the
-- new paragraph will be copied from the paragraph at the current insertion
-- index, including lists and bullets. Text styles for inserted text will
-- be determined automatically, generally preserving the styling of
-- neighboring text. In most cases, the text will be added to the TextRun
-- that exists at the insertion index. Some control characters
-- (U+0000-U+0008, U+000C-U+001F) and characters from the Unicode Basic
-- Multilingual Plane Private Use Area (U+E000-U+F8FF) will be stripped out
-- of the inserted text.
itrText :: Lens' InsertTextRequest (Maybe Text)
itrText = lens _itrText (\ s a -> s{_itrText = a})

-- | The object ID of the shape or table where the text will be inserted.
itrObjectId :: Lens' InsertTextRequest (Maybe Text)
itrObjectId
  = lens _itrObjectId (\ s a -> s{_itrObjectId = a})

-- | The index where the text will be inserted, in Unicode code units, based
-- on TextElement indexes. The index is zero-based and is computed from the
-- start of the string. The index may be adjusted to prevent insertions
-- inside Unicode grapheme clusters. In these cases, the text will be
-- inserted immediately after the grapheme cluster.
itrInsertionIndex :: Lens' InsertTextRequest (Maybe Int32)
itrInsertionIndex
  = lens _itrInsertionIndex
      (\ s a -> s{_itrInsertionIndex = a})
      . mapping _Coerce

-- | The optional table cell location if the text is to be inserted into a
-- table cell. If present, the object_id must refer to a table.
itrCellLocation :: Lens' InsertTextRequest (Maybe TableCellLocation)
itrCellLocation
  = lens _itrCellLocation
      (\ s a -> s{_itrCellLocation = a})

instance FromJSON InsertTextRequest where
        parseJSON
          = withObject "InsertTextRequest"
              (\ o ->
                 InsertTextRequest' <$>
                   (o .:? "text") <*> (o .:? "objectId") <*>
                     (o .:? "insertionIndex")
                     <*> (o .:? "cellLocation"))

instance ToJSON InsertTextRequest where
        toJSON InsertTextRequest'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _itrText,
                  ("objectId" .=) <$> _itrObjectId,
                  ("insertionIndex" .=) <$> _itrInsertionIndex,
                  ("cellLocation" .=) <$> _itrCellLocation])

-- | Updates the properties of the table borders in a Table.
--
-- /See:/ 'updateTableBOrderPropertiesRequest' smart constructor.
data UpdateTableBOrderPropertiesRequest =
  UpdateTableBOrderPropertiesRequest'
    { _utboprBOrderPosition        :: !(Maybe UpdateTableBOrderPropertiesRequestBOrderPosition)
    , _utboprObjectId              :: !(Maybe Text)
    , _utboprTableBOrderProperties :: !(Maybe TableBOrderProperties)
    , _utboprTableRange            :: !(Maybe TableRange)
    , _utboprFields                :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTableBOrderPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utboprBOrderPosition'
--
-- * 'utboprObjectId'
--
-- * 'utboprTableBOrderProperties'
--
-- * 'utboprTableRange'
--
-- * 'utboprFields'
updateTableBOrderPropertiesRequest
    :: UpdateTableBOrderPropertiesRequest
updateTableBOrderPropertiesRequest =
  UpdateTableBOrderPropertiesRequest'
    { _utboprBOrderPosition = Nothing
    , _utboprObjectId = Nothing
    , _utboprTableBOrderProperties = Nothing
    , _utboprTableRange = Nothing
    , _utboprFields = Nothing
    }

-- | The border position in the table range the updates should apply to. If a
-- border position is not specified, the updates will apply to all borders
-- in the table range.
utboprBOrderPosition :: Lens' UpdateTableBOrderPropertiesRequest (Maybe UpdateTableBOrderPropertiesRequestBOrderPosition)
utboprBOrderPosition
  = lens _utboprBOrderPosition
      (\ s a -> s{_utboprBOrderPosition = a})

-- | The object ID of the table.
utboprObjectId :: Lens' UpdateTableBOrderPropertiesRequest (Maybe Text)
utboprObjectId
  = lens _utboprObjectId
      (\ s a -> s{_utboprObjectId = a})

-- | The table border properties to update.
utboprTableBOrderProperties :: Lens' UpdateTableBOrderPropertiesRequest (Maybe TableBOrderProperties)
utboprTableBOrderProperties
  = lens _utboprTableBOrderProperties
      (\ s a -> s{_utboprTableBOrderProperties = a})

-- | The table range representing the subset of the table to which the
-- updates are applied. If a table range is not specified, the updates will
-- apply to the entire table.
utboprTableRange :: Lens' UpdateTableBOrderPropertiesRequest (Maybe TableRange)
utboprTableRange
  = lens _utboprTableRange
      (\ s a -> s{_utboprTableRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableBorderProperties\` is implied and should not be
-- specified. A single \`\"*\"\` can be used as short-hand for listing
-- every field. For example to update the table border solid fill color,
-- set \`fields\` to \`\"tableBorderFill.solidFill.color\"\`. To reset a
-- property to its default value, include its field name in the field mask
-- but leave the field itself unset.
utboprFields :: Lens' UpdateTableBOrderPropertiesRequest (Maybe GFieldMask)
utboprFields
  = lens _utboprFields (\ s a -> s{_utboprFields = a})

instance FromJSON UpdateTableBOrderPropertiesRequest
         where
        parseJSON
          = withObject "UpdateTableBOrderPropertiesRequest"
              (\ o ->
                 UpdateTableBOrderPropertiesRequest' <$>
                   (o .:? "borderPosition") <*> (o .:? "objectId") <*>
                     (o .:? "tableBorderProperties")
                     <*> (o .:? "tableRange")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTableBOrderPropertiesRequest
         where
        toJSON UpdateTableBOrderPropertiesRequest'{..}
          = object
              (catMaybes
                 [("borderPosition" .=) <$> _utboprBOrderPosition,
                  ("objectId" .=) <$> _utboprObjectId,
                  ("tableBorderProperties" .=) <$>
                    _utboprTableBOrderProperties,
                  ("tableRange" .=) <$> _utboprTableRange,
                  ("fields" .=) <$> _utboprFields])

-- | Creates a line.
--
-- /See:/ 'createLineRequest' smart constructor.
data CreateLineRequest =
  CreateLineRequest'
    { _clrlCategory          :: !(Maybe CreateLineRequestCategory)
    , _clrlObjectId          :: !(Maybe Text)
    , _clrlLineCategory      :: !(Maybe CreateLineRequestLineCategory)
    , _clrlElementProperties :: !(Maybe PageElementProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLineRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrlCategory'
--
-- * 'clrlObjectId'
--
-- * 'clrlLineCategory'
--
-- * 'clrlElementProperties'
createLineRequest
    :: CreateLineRequest
createLineRequest =
  CreateLineRequest'
    { _clrlCategory = Nothing
    , _clrlObjectId = Nothing
    , _clrlLineCategory = Nothing
    , _clrlElementProperties = Nothing
    }

-- | The category of the line to be created. The exact line type created is
-- determined based on the category and how it\'s routed to connect to
-- other page elements. If you specify both a \`category\` and a
-- \`line_category\`, the \`category\` takes precedence. If you do not
-- specify a value for \`category\`, but specify a value for
-- \`line_category\`, then the specified \`line_category\` value is used.
-- If you do not specify either, then STRAIGHT is used.
clrlCategory :: Lens' CreateLineRequest (Maybe CreateLineRequestCategory)
clrlCategory
  = lens _clrlCategory (\ s a -> s{_clrlCategory = a})

-- | A user-supplied object ID. If you specify an ID, it must be unique among
-- all pages and page elements in the presentation. The ID must start with
-- an alphanumeric character or an underscore (matches regex
-- \`[a-zA-Z0-9_]\`); remaining characters may include those as well as a
-- hyphen or colon (matches regex \`[a-zA-Z0-9_-:]\`). The length of the ID
-- must not be less than 5 or greater than 50. If you don\'t specify an ID,
-- a unique one is generated.
clrlObjectId :: Lens' CreateLineRequest (Maybe Text)
clrlObjectId
  = lens _clrlObjectId (\ s a -> s{_clrlObjectId = a})

-- | The category of the line to be created. __Deprecated__: use \`category\`
-- instead. The exact line type created is determined based on the category
-- and how it\'s routed to connect to other page elements. If you specify
-- both a \`category\` and a \`line_category\`, the \`category\` takes
-- precedence.
clrlLineCategory :: Lens' CreateLineRequest (Maybe CreateLineRequestLineCategory)
clrlLineCategory
  = lens _clrlLineCategory
      (\ s a -> s{_clrlLineCategory = a})

-- | The element properties for the line.
clrlElementProperties :: Lens' CreateLineRequest (Maybe PageElementProperties)
clrlElementProperties
  = lens _clrlElementProperties
      (\ s a -> s{_clrlElementProperties = a})

instance FromJSON CreateLineRequest where
        parseJSON
          = withObject "CreateLineRequest"
              (\ o ->
                 CreateLineRequest' <$>
                   (o .:? "category") <*> (o .:? "objectId") <*>
                     (o .:? "lineCategory")
                     <*> (o .:? "elementProperties"))

instance ToJSON CreateLineRequest where
        toJSON CreateLineRequest'{..}
          = object
              (catMaybes
                 [("category" .=) <$> _clrlCategory,
                  ("objectId" .=) <$> _clrlObjectId,
                  ("lineCategory" .=) <$> _clrlLineCategory,
                  ("elementProperties" .=) <$> _clrlElementProperties])

-- | The placeholder information that uniquely identifies a placeholder
-- shape.
--
-- /See:/ 'placeholder' smart constructor.
data Placeholder =
  Placeholder'
    { _pParentObjectId :: !(Maybe Text)
    , _pType           :: !(Maybe PlaceholderType)
    , _pIndex          :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Placeholder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParentObjectId'
--
-- * 'pType'
--
-- * 'pIndex'
placeholder
    :: Placeholder
placeholder =
  Placeholder' {_pParentObjectId = Nothing, _pType = Nothing, _pIndex = Nothing}

-- | The object ID of this shape\'s parent placeholder. If unset, the parent
-- placeholder shape does not exist, so the shape does not inherit
-- properties from any other shape.
pParentObjectId :: Lens' Placeholder (Maybe Text)
pParentObjectId
  = lens _pParentObjectId
      (\ s a -> s{_pParentObjectId = a})

-- | The type of the placeholder.
pType :: Lens' Placeholder (Maybe PlaceholderType)
pType = lens _pType (\ s a -> s{_pType = a})

-- | The index of the placeholder. If the same placeholder types are present
-- in the same page, they would have different index values.
pIndex :: Lens' Placeholder (Maybe Int32)
pIndex
  = lens _pIndex (\ s a -> s{_pIndex = a}) .
      mapping _Coerce

instance FromJSON Placeholder where
        parseJSON
          = withObject "Placeholder"
              (\ o ->
                 Placeholder' <$>
                   (o .:? "parentObjectId") <*> (o .:? "type") <*>
                     (o .:? "index"))

instance ToJSON Placeholder where
        toJSON Placeholder'{..}
          = object
              (catMaybes
                 [("parentObjectId" .=) <$> _pParentObjectId,
                  ("type" .=) <$> _pType, ("index" .=) <$> _pIndex])

-- | The properties of Page are only relevant for pages with page_type
-- LAYOUT.
--
-- /See:/ 'layoutProperties' smart constructor.
data LayoutProperties =
  LayoutProperties'
    { _lpMasterObjectId :: !(Maybe Text)
    , _lpName           :: !(Maybe Text)
    , _lpDisplayName    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LayoutProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpMasterObjectId'
--
-- * 'lpName'
--
-- * 'lpDisplayName'
layoutProperties
    :: LayoutProperties
layoutProperties =
  LayoutProperties'
    {_lpMasterObjectId = Nothing, _lpName = Nothing, _lpDisplayName = Nothing}

-- | The object ID of the master that this layout is based on.
lpMasterObjectId :: Lens' LayoutProperties (Maybe Text)
lpMasterObjectId
  = lens _lpMasterObjectId
      (\ s a -> s{_lpMasterObjectId = a})

-- | The name of the layout.
lpName :: Lens' LayoutProperties (Maybe Text)
lpName = lens _lpName (\ s a -> s{_lpName = a})

-- | The human-readable name of the layout.
lpDisplayName :: Lens' LayoutProperties (Maybe Text)
lpDisplayName
  = lens _lpDisplayName
      (\ s a -> s{_lpDisplayName = a})

instance FromJSON LayoutProperties where
        parseJSON
          = withObject "LayoutProperties"
              (\ o ->
                 LayoutProperties' <$>
                   (o .:? "masterObjectId") <*> (o .:? "name") <*>
                     (o .:? "displayName"))

instance ToJSON LayoutProperties where
        toJSON LayoutProperties'{..}
          = object
              (catMaybes
                 [("masterObjectId" .=) <$> _lpMasterObjectId,
                  ("name" .=) <$> _lpName,
                  ("displayName" .=) <$> _lpDisplayName])

-- | Update the properties of a Shape.
--
-- /See:/ 'updateShapePropertiesRequest' smart constructor.
data UpdateShapePropertiesRequest =
  UpdateShapePropertiesRequest'
    { _usprObjectId        :: !(Maybe Text)
    , _usprShapeProperties :: !(Maybe ShapeProperties)
    , _usprFields          :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateShapePropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usprObjectId'
--
-- * 'usprShapeProperties'
--
-- * 'usprFields'
updateShapePropertiesRequest
    :: UpdateShapePropertiesRequest
updateShapePropertiesRequest =
  UpdateShapePropertiesRequest'
    { _usprObjectId = Nothing
    , _usprShapeProperties = Nothing
    , _usprFields = Nothing
    }

-- | The object ID of the shape the updates are applied to.
usprObjectId :: Lens' UpdateShapePropertiesRequest (Maybe Text)
usprObjectId
  = lens _usprObjectId (\ s a -> s{_usprObjectId = a})

-- | The shape properties to update.
usprShapeProperties :: Lens' UpdateShapePropertiesRequest (Maybe ShapeProperties)
usprShapeProperties
  = lens _usprShapeProperties
      (\ s a -> s{_usprShapeProperties = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`shapeProperties\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field. For
-- example to update the shape background solid fill color, set \`fields\`
-- to \`\"shapeBackgroundFill.solidFill.color\"\`. To reset a property to
-- its default value, include its field name in the field mask but leave
-- the field itself unset.
usprFields :: Lens' UpdateShapePropertiesRequest (Maybe GFieldMask)
usprFields
  = lens _usprFields (\ s a -> s{_usprFields = a})

instance FromJSON UpdateShapePropertiesRequest where
        parseJSON
          = withObject "UpdateShapePropertiesRequest"
              (\ o ->
                 UpdateShapePropertiesRequest' <$>
                   (o .:? "objectId") <*> (o .:? "shapeProperties") <*>
                     (o .:? "fields"))

instance ToJSON UpdateShapePropertiesRequest where
        toJSON UpdateShapePropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _usprObjectId,
                  ("shapeProperties" .=) <$> _usprShapeProperties,
                  ("fields" .=) <$> _usprFields])

-- | A PageElement kind representing a table.
--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tTableRows            :: !(Maybe [TableRow])
    , _tVerticalBOrderRows   :: !(Maybe [TableBOrderRow])
    , _tRows                 :: !(Maybe (Textual Int32))
    , _tColumns              :: !(Maybe (Textual Int32))
    , _tHorizontalBOrderRows :: !(Maybe [TableBOrderRow])
    , _tTableColumns         :: !(Maybe [TableColumnProperties])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTableRows'
--
-- * 'tVerticalBOrderRows'
--
-- * 'tRows'
--
-- * 'tColumns'
--
-- * 'tHorizontalBOrderRows'
--
-- * 'tTableColumns'
table
    :: Table
table =
  Table'
    { _tTableRows = Nothing
    , _tVerticalBOrderRows = Nothing
    , _tRows = Nothing
    , _tColumns = Nothing
    , _tHorizontalBOrderRows = Nothing
    , _tTableColumns = Nothing
    }

-- | Properties and contents of each row. Cells that span multiple rows are
-- contained in only one of these rows and have a row_span greater than 1.
tTableRows :: Lens' Table [TableRow]
tTableRows
  = lens _tTableRows (\ s a -> s{_tTableRows = a}) .
      _Default
      . _Coerce

-- | Properties of vertical cell borders. A table\'s vertical cell borders
-- are represented as a grid. The grid has the same number of rows as the
-- table and one more column than the number of columns in the table. For
-- example, if the table is 3 x 3, its vertical borders will be represented
-- as a grid with 3 rows and 4 columns.
tVerticalBOrderRows :: Lens' Table [TableBOrderRow]
tVerticalBOrderRows
  = lens _tVerticalBOrderRows
      (\ s a -> s{_tVerticalBOrderRows = a})
      . _Default
      . _Coerce

-- | Number of rows in the table.
tRows :: Lens' Table (Maybe Int32)
tRows
  = lens _tRows (\ s a -> s{_tRows = a}) .
      mapping _Coerce

-- | Number of columns in the table.
tColumns :: Lens' Table (Maybe Int32)
tColumns
  = lens _tColumns (\ s a -> s{_tColumns = a}) .
      mapping _Coerce

-- | Properties of horizontal cell borders. A table\'s horizontal cell
-- borders are represented as a grid. The grid has one more row than the
-- number of rows in the table and the same number of columns as the table.
-- For example, if the table is 3 x 3, its horizontal borders will be
-- represented as a grid with 4 rows and 3 columns.
tHorizontalBOrderRows :: Lens' Table [TableBOrderRow]
tHorizontalBOrderRows
  = lens _tHorizontalBOrderRows
      (\ s a -> s{_tHorizontalBOrderRows = a})
      . _Default
      . _Coerce

-- | Properties of each column.
tTableColumns :: Lens' Table [TableColumnProperties]
tTableColumns
  = lens _tTableColumns
      (\ s a -> s{_tTableColumns = a})
      . _Default
      . _Coerce

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "tableRows" .!= mempty) <*>
                     (o .:? "verticalBorderRows" .!= mempty)
                     <*> (o .:? "rows")
                     <*> (o .:? "columns")
                     <*> (o .:? "horizontalBorderRows" .!= mempty)
                     <*> (o .:? "tableColumns" .!= mempty))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("tableRows" .=) <$> _tTableRows,
                  ("verticalBorderRows" .=) <$> _tVerticalBOrderRows,
                  ("rows" .=) <$> _tRows, ("columns" .=) <$> _tColumns,
                  ("horizontalBorderRows" .=) <$>
                    _tHorizontalBOrderRows,
                  ("tableColumns" .=) <$> _tTableColumns])

-- | Updates the category of a line.
--
-- /See:/ 'updateLineCategoryRequest' smart constructor.
data UpdateLineCategoryRequest =
  UpdateLineCategoryRequest'
    { _ulcrObjectId     :: !(Maybe Text)
    , _ulcrLineCategory :: !(Maybe UpdateLineCategoryRequestLineCategory)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateLineCategoryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulcrObjectId'
--
-- * 'ulcrLineCategory'
updateLineCategoryRequest
    :: UpdateLineCategoryRequest
updateLineCategoryRequest =
  UpdateLineCategoryRequest'
    {_ulcrObjectId = Nothing, _ulcrLineCategory = Nothing}

-- | The object ID of the line the update is applied to. Only a line with a
-- category indicating it is a \"connector\" can be updated. The line may
-- be rerouted after updating its category.
ulcrObjectId :: Lens' UpdateLineCategoryRequest (Maybe Text)
ulcrObjectId
  = lens _ulcrObjectId (\ s a -> s{_ulcrObjectId = a})

-- | The line category to update to. The exact line type is determined based
-- on the category to update to and how it\'s routed to connect to other
-- page elements.
ulcrLineCategory :: Lens' UpdateLineCategoryRequest (Maybe UpdateLineCategoryRequestLineCategory)
ulcrLineCategory
  = lens _ulcrLineCategory
      (\ s a -> s{_ulcrLineCategory = a})

instance FromJSON UpdateLineCategoryRequest where
        parseJSON
          = withObject "UpdateLineCategoryRequest"
              (\ o ->
                 UpdateLineCategoryRequest' <$>
                   (o .:? "objectId") <*> (o .:? "lineCategory"))

instance ToJSON UpdateLineCategoryRequest where
        toJSON UpdateLineCategoryRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _ulcrObjectId,
                  ("lineCategory" .=) <$> _ulcrLineCategory])

-- | The properties of a Shape. If the shape is a placeholder shape as
-- determined by the placeholder field, then these properties may be
-- inherited from a parent placeholder shape. Determining the rendered
-- value of the property depends on the corresponding property_state field
-- value.
--
-- /See:/ 'shapeProperties' smart constructor.
data ShapeProperties =
  ShapeProperties'
    { _spLink                :: !(Maybe Link)
    , _spShadow              :: !(Maybe Shadow)
    , _spOutline             :: !(Maybe Outline)
    , _spContentAlignment    :: !(Maybe ShapePropertiesContentAlignment)
    , _spShapeBackgRoundFill :: !(Maybe ShapeBackgRoundFill)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShapeProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spLink'
--
-- * 'spShadow'
--
-- * 'spOutline'
--
-- * 'spContentAlignment'
--
-- * 'spShapeBackgRoundFill'
shapeProperties
    :: ShapeProperties
shapeProperties =
  ShapeProperties'
    { _spLink = Nothing
    , _spShadow = Nothing
    , _spOutline = Nothing
    , _spContentAlignment = Nothing
    , _spShapeBackgRoundFill = Nothing
    }

-- | The hyperlink destination of the shape. If unset, there is no link.
-- Links are not inherited from parent placeholders.
spLink :: Lens' ShapeProperties (Maybe Link)
spLink = lens _spLink (\ s a -> s{_spLink = a})

-- | The shadow properties of the shape. If unset, the shadow is inherited
-- from a parent placeholder if it exists. If the shape has no parent, then
-- the default shadow matches the defaults for new shapes created in the
-- Slides editor. This property is read-only.
spShadow :: Lens' ShapeProperties (Maybe Shadow)
spShadow = lens _spShadow (\ s a -> s{_spShadow = a})

-- | The outline of the shape. If unset, the outline is inherited from a
-- parent placeholder if it exists. If the shape has no parent, then the
-- default outline depends on the shape type, matching the defaults for new
-- shapes created in the Slides editor.
spOutline :: Lens' ShapeProperties (Maybe Outline)
spOutline
  = lens _spOutline (\ s a -> s{_spOutline = a})

-- | The alignment of the content in the shape. If unspecified, the alignment
-- is inherited from a parent placeholder if it exists. If the shape has no
-- parent, the default alignment matches the alignment for new shapes
-- created in the Slides editor.
spContentAlignment :: Lens' ShapeProperties (Maybe ShapePropertiesContentAlignment)
spContentAlignment
  = lens _spContentAlignment
      (\ s a -> s{_spContentAlignment = a})

-- | The background fill of the shape. If unset, the background fill is
-- inherited from a parent placeholder if it exists. If the shape has no
-- parent, then the default background fill depends on the shape type,
-- matching the defaults for new shapes created in the Slides editor.
spShapeBackgRoundFill :: Lens' ShapeProperties (Maybe ShapeBackgRoundFill)
spShapeBackgRoundFill
  = lens _spShapeBackgRoundFill
      (\ s a -> s{_spShapeBackgRoundFill = a})

instance FromJSON ShapeProperties where
        parseJSON
          = withObject "ShapeProperties"
              (\ o ->
                 ShapeProperties' <$>
                   (o .:? "link") <*> (o .:? "shadow") <*>
                     (o .:? "outline")
                     <*> (o .:? "contentAlignment")
                     <*> (o .:? "shapeBackgroundFill"))

instance ToJSON ShapeProperties where
        toJSON ShapeProperties'{..}
          = object
              (catMaybes
                 [("link" .=) <$> _spLink,
                  ("shadow" .=) <$> _spShadow,
                  ("outline" .=) <$> _spOutline,
                  ("contentAlignment" .=) <$> _spContentAlignment,
                  ("shapeBackgroundFill" .=) <$>
                    _spShapeBackgRoundFill])

-- | The shape background fill.
--
-- /See:/ 'shapeBackgRoundFill' smart constructor.
data ShapeBackgRoundFill =
  ShapeBackgRoundFill'
    { _sbrfSolidFill     :: !(Maybe SolidFill)
    , _sbrfPropertyState :: !(Maybe ShapeBackgRoundFillPropertyState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShapeBackgRoundFill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrfSolidFill'
--
-- * 'sbrfPropertyState'
shapeBackgRoundFill
    :: ShapeBackgRoundFill
shapeBackgRoundFill =
  ShapeBackgRoundFill' {_sbrfSolidFill = Nothing, _sbrfPropertyState = Nothing}

-- | Solid color fill.
sbrfSolidFill :: Lens' ShapeBackgRoundFill (Maybe SolidFill)
sbrfSolidFill
  = lens _sbrfSolidFill
      (\ s a -> s{_sbrfSolidFill = a})

-- | The background fill property state. Updating the fill on a shape will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no fill on a shape, set this
-- field to \`NOT_RENDERED\`. In this case, any other fill fields set in
-- the same request will be ignored.
sbrfPropertyState :: Lens' ShapeBackgRoundFill (Maybe ShapeBackgRoundFillPropertyState)
sbrfPropertyState
  = lens _sbrfPropertyState
      (\ s a -> s{_sbrfPropertyState = a})

instance FromJSON ShapeBackgRoundFill where
        parseJSON
          = withObject "ShapeBackgRoundFill"
              (\ o ->
                 ShapeBackgRoundFill' <$>
                   (o .:? "solidFill") <*> (o .:? "propertyState"))

instance ToJSON ShapeBackgRoundFill where
        toJSON ShapeBackgRoundFill'{..}
          = object
              (catMaybes
                 [("solidFill" .=) <$> _sbrfSolidFill,
                  ("propertyState" .=) <$> _sbrfPropertyState])

-- | Creates bullets for all of the paragraphs that overlap with the given
-- text index range. The nesting level of each paragraph will be determined
-- by counting leading tabs in front of each paragraph. To avoid excess
-- space between the bullet and the corresponding paragraph, these leading
-- tabs are removed by this request. This may change the indices of parts
-- of the text. If the paragraph immediately before paragraphs being
-- updated is in a list with a matching preset, the paragraphs being
-- updated are added to that preceding list.
--
-- /See:/ 'createParagraphBulletsRequest' smart constructor.
data CreateParagraphBulletsRequest =
  CreateParagraphBulletsRequest'
    { _cpbrTextRange    :: !(Maybe Range)
    , _cpbrObjectId     :: !(Maybe Text)
    , _cpbrBulletPreset :: !(Maybe CreateParagraphBulletsRequestBulletPreset)
    , _cpbrCellLocation :: !(Maybe TableCellLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateParagraphBulletsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpbrTextRange'
--
-- * 'cpbrObjectId'
--
-- * 'cpbrBulletPreset'
--
-- * 'cpbrCellLocation'
createParagraphBulletsRequest
    :: CreateParagraphBulletsRequest
createParagraphBulletsRequest =
  CreateParagraphBulletsRequest'
    { _cpbrTextRange = Nothing
    , _cpbrObjectId = Nothing
    , _cpbrBulletPreset = Nothing
    , _cpbrCellLocation = Nothing
    }

-- | The range of text to apply the bullet presets to, based on TextElement
-- indexes.
cpbrTextRange :: Lens' CreateParagraphBulletsRequest (Maybe Range)
cpbrTextRange
  = lens _cpbrTextRange
      (\ s a -> s{_cpbrTextRange = a})

-- | The object ID of the shape or table containing the text to add bullets
-- to.
cpbrObjectId :: Lens' CreateParagraphBulletsRequest (Maybe Text)
cpbrObjectId
  = lens _cpbrObjectId (\ s a -> s{_cpbrObjectId = a})

-- | The kinds of bullet glyphs to be used. Defaults to the
-- \`BULLET_DISC_CIRCLE_SQUARE\` preset.
cpbrBulletPreset :: Lens' CreateParagraphBulletsRequest (Maybe CreateParagraphBulletsRequestBulletPreset)
cpbrBulletPreset
  = lens _cpbrBulletPreset
      (\ s a -> s{_cpbrBulletPreset = a})

-- | The optional table cell location if the text to be modified is in a
-- table cell. If present, the object_id must refer to a table.
cpbrCellLocation :: Lens' CreateParagraphBulletsRequest (Maybe TableCellLocation)
cpbrCellLocation
  = lens _cpbrCellLocation
      (\ s a -> s{_cpbrCellLocation = a})

instance FromJSON CreateParagraphBulletsRequest where
        parseJSON
          = withObject "CreateParagraphBulletsRequest"
              (\ o ->
                 CreateParagraphBulletsRequest' <$>
                   (o .:? "textRange") <*> (o .:? "objectId") <*>
                     (o .:? "bulletPreset")
                     <*> (o .:? "cellLocation"))

instance ToJSON CreateParagraphBulletsRequest where
        toJSON CreateParagraphBulletsRequest'{..}
          = object
              (catMaybes
                 [("textRange" .=) <$> _cpbrTextRange,
                  ("objectId" .=) <$> _cpbrObjectId,
                  ("bulletPreset" .=) <$> _cpbrBulletPreset,
                  ("cellLocation" .=) <$> _cpbrCellLocation])

-- | Updates the alt text title and\/or description of a page element.
--
-- /See:/ 'updatePageElementAltTextRequest' smart constructor.
data UpdatePageElementAltTextRequest =
  UpdatePageElementAltTextRequest'
    { _upeatrObjectId    :: !(Maybe Text)
    , _upeatrTitle       :: !(Maybe Text)
    , _upeatrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePageElementAltTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upeatrObjectId'
--
-- * 'upeatrTitle'
--
-- * 'upeatrDescription'
updatePageElementAltTextRequest
    :: UpdatePageElementAltTextRequest
updatePageElementAltTextRequest =
  UpdatePageElementAltTextRequest'
    { _upeatrObjectId = Nothing
    , _upeatrTitle = Nothing
    , _upeatrDescription = Nothing
    }

-- | The object ID of the page element the updates are applied to.
upeatrObjectId :: Lens' UpdatePageElementAltTextRequest (Maybe Text)
upeatrObjectId
  = lens _upeatrObjectId
      (\ s a -> s{_upeatrObjectId = a})

-- | The updated alt text title of the page element. If unset the existing
-- value will be maintained. The title is exposed to screen readers and
-- other accessibility interfaces. Only use human readable values related
-- to the content of the page element.
upeatrTitle :: Lens' UpdatePageElementAltTextRequest (Maybe Text)
upeatrTitle
  = lens _upeatrTitle (\ s a -> s{_upeatrTitle = a})

-- | The updated alt text description of the page element. If unset the
-- existing value will be maintained. The description is exposed to screen
-- readers and other accessibility interfaces. Only use human readable
-- values related to the content of the page element.
upeatrDescription :: Lens' UpdatePageElementAltTextRequest (Maybe Text)
upeatrDescription
  = lens _upeatrDescription
      (\ s a -> s{_upeatrDescription = a})

instance FromJSON UpdatePageElementAltTextRequest
         where
        parseJSON
          = withObject "UpdatePageElementAltTextRequest"
              (\ o ->
                 UpdatePageElementAltTextRequest' <$>
                   (o .:? "objectId") <*> (o .:? "title") <*>
                     (o .:? "description"))

instance ToJSON UpdatePageElementAltTextRequest where
        toJSON UpdatePageElementAltTextRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _upeatrObjectId,
                  ("title" .=) <$> _upeatrTitle,
                  ("description" .=) <$> _upeatrDescription])

-- | Update the properties of a TableCell.
--
-- /See:/ 'updateTableCellPropertiesRequest' smart constructor.
data UpdateTableCellPropertiesRequest =
  UpdateTableCellPropertiesRequest'
    { _uObjectId            :: !(Maybe Text)
    , _uTableCellProperties :: !(Maybe TableCellProperties)
    , _uTableRange          :: !(Maybe TableRange)
    , _uFields              :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTableCellPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uObjectId'
--
-- * 'uTableCellProperties'
--
-- * 'uTableRange'
--
-- * 'uFields'
updateTableCellPropertiesRequest
    :: UpdateTableCellPropertiesRequest
updateTableCellPropertiesRequest =
  UpdateTableCellPropertiesRequest'
    { _uObjectId = Nothing
    , _uTableCellProperties = Nothing
    , _uTableRange = Nothing
    , _uFields = Nothing
    }

-- | The object ID of the table.
uObjectId :: Lens' UpdateTableCellPropertiesRequest (Maybe Text)
uObjectId
  = lens _uObjectId (\ s a -> s{_uObjectId = a})

-- | The table cell properties to update.
uTableCellProperties :: Lens' UpdateTableCellPropertiesRequest (Maybe TableCellProperties)
uTableCellProperties
  = lens _uTableCellProperties
      (\ s a -> s{_uTableCellProperties = a})

-- | The table range representing the subset of the table to which the
-- updates are applied. If a table range is not specified, the updates will
-- apply to the entire table.
uTableRange :: Lens' UpdateTableCellPropertiesRequest (Maybe TableRange)
uTableRange
  = lens _uTableRange (\ s a -> s{_uTableRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`tableCellProperties\` is implied and should not be specified.
-- A single \`\"*\"\` can be used as short-hand for listing every field.
-- For example to update the table cell background solid fill color, set
-- \`fields\` to \`\"tableCellBackgroundFill.solidFill.color\"\`. To reset
-- a property to its default value, include its field name in the field
-- mask but leave the field itself unset.
uFields :: Lens' UpdateTableCellPropertiesRequest (Maybe GFieldMask)
uFields = lens _uFields (\ s a -> s{_uFields = a})

instance FromJSON UpdateTableCellPropertiesRequest
         where
        parseJSON
          = withObject "UpdateTableCellPropertiesRequest"
              (\ o ->
                 UpdateTableCellPropertiesRequest' <$>
                   (o .:? "objectId") <*> (o .:? "tableCellProperties")
                     <*> (o .:? "tableRange")
                     <*> (o .:? "fields"))

instance ToJSON UpdateTableCellPropertiesRequest
         where
        toJSON UpdateTableCellPropertiesRequest'{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _uObjectId,
                  ("tableCellProperties" .=) <$> _uTableCellProperties,
                  ("tableRange" .=) <$> _uTableRange,
                  ("fields" .=) <$> _uFields])

-- | The properties of the SheetsChart.
--
-- /See:/ 'sheetsChartProperties' smart constructor.
newtype SheetsChartProperties =
  SheetsChartProperties'
    { _scpChartImageProperties :: Maybe ImageProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SheetsChartProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpChartImageProperties'
sheetsChartProperties
    :: SheetsChartProperties
sheetsChartProperties =
  SheetsChartProperties' {_scpChartImageProperties = Nothing}

-- | The properties of the embedded chart image.
scpChartImageProperties :: Lens' SheetsChartProperties (Maybe ImageProperties)
scpChartImageProperties
  = lens _scpChartImageProperties
      (\ s a -> s{_scpChartImageProperties = a})

instance FromJSON SheetsChartProperties where
        parseJSON
          = withObject "SheetsChartProperties"
              (\ o ->
                 SheetsChartProperties' <$>
                   (o .:? "chartImageProperties"))

instance ToJSON SheetsChartProperties where
        toJSON SheetsChartProperties'{..}
          = object
              (catMaybes
                 [("chartImageProperties" .=) <$>
                    _scpChartImageProperties])

-- | Styles that apply to a whole paragraph. If this text is contained in a
-- shape with a parent placeholder, then these paragraph styles may be
-- inherited from the parent. Which paragraph styles are inherited depend
-- on the nesting level of lists: * A paragraph not in a list will inherit
-- its paragraph style from the paragraph at the 0 nesting level of the
-- list inside the parent placeholder. * A paragraph in a list will inherit
-- its paragraph style from the paragraph at its corresponding nesting
-- level of the list inside the parent placeholder. Inherited paragraph
-- styles are represented as unset fields in this message.
--
-- /See:/ 'paragraphStyle' smart constructor.
data ParagraphStyle =
  ParagraphStyle'
    { _psLineSpacing     :: !(Maybe (Textual Double))
    , _psDirection       :: !(Maybe ParagraphStyleDirection)
    , _psIndentFirstLine :: !(Maybe Dimension)
    , _psIndentEnd       :: !(Maybe Dimension)
    , _psIndentStart     :: !(Maybe Dimension)
    , _psAlignment       :: !(Maybe ParagraphStyleAlignment)
    , _psSpaceBelow      :: !(Maybe Dimension)
    , _psSpacingMode     :: !(Maybe ParagraphStyleSpacingMode)
    , _psSpaceAbove      :: !(Maybe Dimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParagraphStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psLineSpacing'
--
-- * 'psDirection'
--
-- * 'psIndentFirstLine'
--
-- * 'psIndentEnd'
--
-- * 'psIndentStart'
--
-- * 'psAlignment'
--
-- * 'psSpaceBelow'
--
-- * 'psSpacingMode'
--
-- * 'psSpaceAbove'
paragraphStyle
    :: ParagraphStyle
paragraphStyle =
  ParagraphStyle'
    { _psLineSpacing = Nothing
    , _psDirection = Nothing
    , _psIndentFirstLine = Nothing
    , _psIndentEnd = Nothing
    , _psIndentStart = Nothing
    , _psAlignment = Nothing
    , _psSpaceBelow = Nothing
    , _psSpacingMode = Nothing
    , _psSpaceAbove = Nothing
    }

-- | The amount of space between lines, as a percentage of normal, where
-- normal is represented as 100.0. If unset, the value is inherited from
-- the parent.
psLineSpacing :: Lens' ParagraphStyle (Maybe Double)
psLineSpacing
  = lens _psLineSpacing
      (\ s a -> s{_psLineSpacing = a})
      . mapping _Coerce

-- | The text direction of this paragraph. If unset, the value defaults to
-- LEFT_TO_RIGHT since text direction is not inherited.
psDirection :: Lens' ParagraphStyle (Maybe ParagraphStyleDirection)
psDirection
  = lens _psDirection (\ s a -> s{_psDirection = a})

-- | The amount of indentation for the start of the first line of the
-- paragraph. If unset, the value is inherited from the parent.
psIndentFirstLine :: Lens' ParagraphStyle (Maybe Dimension)
psIndentFirstLine
  = lens _psIndentFirstLine
      (\ s a -> s{_psIndentFirstLine = a})

-- | The amount indentation for the paragraph on the side that corresponds to
-- the end of the text, based on the current text direction. If unset, the
-- value is inherited from the parent.
psIndentEnd :: Lens' ParagraphStyle (Maybe Dimension)
psIndentEnd
  = lens _psIndentEnd (\ s a -> s{_psIndentEnd = a})

-- | The amount indentation for the paragraph on the side that corresponds to
-- the start of the text, based on the current text direction. If unset,
-- the value is inherited from the parent.
psIndentStart :: Lens' ParagraphStyle (Maybe Dimension)
psIndentStart
  = lens _psIndentStart
      (\ s a -> s{_psIndentStart = a})

-- | The text alignment for this paragraph.
psAlignment :: Lens' ParagraphStyle (Maybe ParagraphStyleAlignment)
psAlignment
  = lens _psAlignment (\ s a -> s{_psAlignment = a})

-- | The amount of extra space below the paragraph. If unset, the value is
-- inherited from the parent.
psSpaceBelow :: Lens' ParagraphStyle (Maybe Dimension)
psSpaceBelow
  = lens _psSpaceBelow (\ s a -> s{_psSpaceBelow = a})

-- | The spacing mode for the paragraph.
psSpacingMode :: Lens' ParagraphStyle (Maybe ParagraphStyleSpacingMode)
psSpacingMode
  = lens _psSpacingMode
      (\ s a -> s{_psSpacingMode = a})

-- | The amount of extra space above the paragraph. If unset, the value is
-- inherited from the parent.
psSpaceAbove :: Lens' ParagraphStyle (Maybe Dimension)
psSpaceAbove
  = lens _psSpaceAbove (\ s a -> s{_psSpaceAbove = a})

instance FromJSON ParagraphStyle where
        parseJSON
          = withObject "ParagraphStyle"
              (\ o ->
                 ParagraphStyle' <$>
                   (o .:? "lineSpacing") <*> (o .:? "direction") <*>
                     (o .:? "indentFirstLine")
                     <*> (o .:? "indentEnd")
                     <*> (o .:? "indentStart")
                     <*> (o .:? "alignment")
                     <*> (o .:? "spaceBelow")
                     <*> (o .:? "spacingMode")
                     <*> (o .:? "spaceAbove"))

instance ToJSON ParagraphStyle where
        toJSON ParagraphStyle'{..}
          = object
              (catMaybes
                 [("lineSpacing" .=) <$> _psLineSpacing,
                  ("direction" .=) <$> _psDirection,
                  ("indentFirstLine" .=) <$> _psIndentFirstLine,
                  ("indentEnd" .=) <$> _psIndentEnd,
                  ("indentStart" .=) <$> _psIndentStart,
                  ("alignment" .=) <$> _psAlignment,
                  ("spaceBelow" .=) <$> _psSpaceBelow,
                  ("spacingMode" .=) <$> _psSpacingMode,
                  ("spaceAbove" .=) <$> _psSpaceAbove])

-- | The result of creating a table.
--
-- /See:/ 'createTableResponse' smart constructor.
newtype CreateTableResponse =
  CreateTableResponse'
    { _ctrtObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrtObjectId'
createTableResponse
    :: CreateTableResponse
createTableResponse = CreateTableResponse' {_ctrtObjectId = Nothing}

-- | The object ID of the created table.
ctrtObjectId :: Lens' CreateTableResponse (Maybe Text)
ctrtObjectId
  = lens _ctrtObjectId (\ s a -> s{_ctrtObjectId = a})

instance FromJSON CreateTableResponse where
        parseJSON
          = withObject "CreateTableResponse"
              (\ o -> CreateTableResponse' <$> (o .:? "objectId"))

instance ToJSON CreateTableResponse where
        toJSON CreateTableResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _ctrtObjectId])

-- | Reroutes a line such that it\'s connected at the two closest connection
-- sites on the connected page elements.
--
-- /See:/ 'rerouteLineRequest' smart constructor.
newtype RerouteLineRequest =
  RerouteLineRequest'
    { _rlrObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RerouteLineRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrObjectId'
rerouteLineRequest
    :: RerouteLineRequest
rerouteLineRequest = RerouteLineRequest' {_rlrObjectId = Nothing}

-- | The object ID of the line to reroute. Only a line with a category
-- indicating it is a \"connector\" can be rerouted. The start and end
-- connections of the line must be on different page elements.
rlrObjectId :: Lens' RerouteLineRequest (Maybe Text)
rlrObjectId
  = lens _rlrObjectId (\ s a -> s{_rlrObjectId = a})

instance FromJSON RerouteLineRequest where
        parseJSON
          = withObject "RerouteLineRequest"
              (\ o -> RerouteLineRequest' <$> (o .:? "objectId"))

instance ToJSON RerouteLineRequest where
        toJSON RerouteLineRequest'{..}
          = object
              (catMaybes [("objectId" .=) <$> _rlrObjectId])

-- | Properties of each column in a table.
--
-- /See:/ 'tableColumnProperties' smart constructor.
newtype TableColumnProperties =
  TableColumnProperties'
    { _tcpColumnWidth :: Maybe Dimension
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableColumnProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpColumnWidth'
tableColumnProperties
    :: TableColumnProperties
tableColumnProperties = TableColumnProperties' {_tcpColumnWidth = Nothing}

-- | Width of a column.
tcpColumnWidth :: Lens' TableColumnProperties (Maybe Dimension)
tcpColumnWidth
  = lens _tcpColumnWidth
      (\ s a -> s{_tcpColumnWidth = a})

instance FromJSON TableColumnProperties where
        parseJSON
          = withObject "TableColumnProperties"
              (\ o ->
                 TableColumnProperties' <$> (o .:? "columnWidth"))

instance ToJSON TableColumnProperties where
        toJSON TableColumnProperties'{..}
          = object
              (catMaybes [("columnWidth" .=) <$> _tcpColumnWidth])

-- | The response of duplicating an object.
--
-- /See:/ 'duplicateObjectResponse' smart constructor.
newtype DuplicateObjectResponse =
  DuplicateObjectResponse'
    { _dupObjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DuplicateObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dupObjectId'
duplicateObjectResponse
    :: DuplicateObjectResponse
duplicateObjectResponse = DuplicateObjectResponse' {_dupObjectId = Nothing}

-- | The ID of the new duplicate object.
dupObjectId :: Lens' DuplicateObjectResponse (Maybe Text)
dupObjectId
  = lens _dupObjectId (\ s a -> s{_dupObjectId = a})

instance FromJSON DuplicateObjectResponse where
        parseJSON
          = withObject "DuplicateObjectResponse"
              (\ o ->
                 DuplicateObjectResponse' <$> (o .:? "objectId"))

instance ToJSON DuplicateObjectResponse where
        toJSON DuplicateObjectResponse'{..}
          = object
              (catMaybes [("objectId" .=) <$> _dupObjectId])

-- | Updates the styling for all of the paragraphs within a Shape or Table
-- that overlap with the given text index range.
--
-- /See:/ 'updateParagraphStyleRequest' smart constructor.
data UpdateParagraphStyleRequest =
  UpdateParagraphStyleRequest'
    { _upsrStyle        :: !(Maybe ParagraphStyle)
    , _upsrTextRange    :: !(Maybe Range)
    , _upsrObjectId     :: !(Maybe Text)
    , _upsrCellLocation :: !(Maybe TableCellLocation)
    , _upsrFields       :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateParagraphStyleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upsrStyle'
--
-- * 'upsrTextRange'
--
-- * 'upsrObjectId'
--
-- * 'upsrCellLocation'
--
-- * 'upsrFields'
updateParagraphStyleRequest
    :: UpdateParagraphStyleRequest
updateParagraphStyleRequest =
  UpdateParagraphStyleRequest'
    { _upsrStyle = Nothing
    , _upsrTextRange = Nothing
    , _upsrObjectId = Nothing
    , _upsrCellLocation = Nothing
    , _upsrFields = Nothing
    }

-- | The paragraph\'s style.
upsrStyle :: Lens' UpdateParagraphStyleRequest (Maybe ParagraphStyle)
upsrStyle
  = lens _upsrStyle (\ s a -> s{_upsrStyle = a})

-- | The range of text containing the paragraph(s) to style.
upsrTextRange :: Lens' UpdateParagraphStyleRequest (Maybe Range)
upsrTextRange
  = lens _upsrTextRange
      (\ s a -> s{_upsrTextRange = a})

-- | The object ID of the shape or table with the text to be styled.
upsrObjectId :: Lens' UpdateParagraphStyleRequest (Maybe Text)
upsrObjectId
  = lens _upsrObjectId (\ s a -> s{_upsrObjectId = a})

-- | The location of the cell in the table containing the paragraph(s) to
-- style. If \`object_id\` refers to a table, \`cell_location\` must have a
-- value. Otherwise, it must not.
upsrCellLocation :: Lens' UpdateParagraphStyleRequest (Maybe TableCellLocation)
upsrCellLocation
  = lens _upsrCellLocation
      (\ s a -> s{_upsrCellLocation = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`style\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field. For
-- example, to update the paragraph alignment, set \`fields\` to
-- \`\"alignment\"\`. To reset a property to its default value, include its
-- field name in the field mask but leave the field itself unset.
upsrFields :: Lens' UpdateParagraphStyleRequest (Maybe GFieldMask)
upsrFields
  = lens _upsrFields (\ s a -> s{_upsrFields = a})

instance FromJSON UpdateParagraphStyleRequest where
        parseJSON
          = withObject "UpdateParagraphStyleRequest"
              (\ o ->
                 UpdateParagraphStyleRequest' <$>
                   (o .:? "style") <*> (o .:? "textRange") <*>
                     (o .:? "objectId")
                     <*> (o .:? "cellLocation")
                     <*> (o .:? "fields"))

instance ToJSON UpdateParagraphStyleRequest where
        toJSON UpdateParagraphStyleRequest'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _upsrStyle,
                  ("textRange" .=) <$> _upsrTextRange,
                  ("objectId" .=) <$> _upsrObjectId,
                  ("cellLocation" .=) <$> _upsrCellLocation,
                  ("fields" .=) <$> _upsrFields])

-- | Replaces all instances of text matching a criteria with replace text.
--
-- /See:/ 'replaceAllTextRequest' smart constructor.
data ReplaceAllTextRequest =
  ReplaceAllTextRequest'
    { _ratrPageObjectIds :: !(Maybe [Text])
    , _ratrContainsText  :: !(Maybe SubstringMatchCriteria)
    , _ratrReplaceText   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceAllTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ratrPageObjectIds'
--
-- * 'ratrContainsText'
--
-- * 'ratrReplaceText'
replaceAllTextRequest
    :: ReplaceAllTextRequest
replaceAllTextRequest =
  ReplaceAllTextRequest'
    { _ratrPageObjectIds = Nothing
    , _ratrContainsText = Nothing
    , _ratrReplaceText = Nothing
    }

-- | If non-empty, limits the matches to page elements only on the given
-- pages. Returns a 400 bad request error if given the page object ID of a
-- notes master, or if a page with that object ID doesn\'t exist in the
-- presentation.
ratrPageObjectIds :: Lens' ReplaceAllTextRequest [Text]
ratrPageObjectIds
  = lens _ratrPageObjectIds
      (\ s a -> s{_ratrPageObjectIds = a})
      . _Default
      . _Coerce

-- | Finds text in a shape matching this substring.
ratrContainsText :: Lens' ReplaceAllTextRequest (Maybe SubstringMatchCriteria)
ratrContainsText
  = lens _ratrContainsText
      (\ s a -> s{_ratrContainsText = a})

-- | The text that will replace the matched text.
ratrReplaceText :: Lens' ReplaceAllTextRequest (Maybe Text)
ratrReplaceText
  = lens _ratrReplaceText
      (\ s a -> s{_ratrReplaceText = a})

instance FromJSON ReplaceAllTextRequest where
        parseJSON
          = withObject "ReplaceAllTextRequest"
              (\ o ->
                 ReplaceAllTextRequest' <$>
                   (o .:? "pageObjectIds" .!= mempty) <*>
                     (o .:? "containsText")
                     <*> (o .:? "replaceText"))

instance ToJSON ReplaceAllTextRequest where
        toJSON ReplaceAllTextRequest'{..}
          = object
              (catMaybes
                 [("pageObjectIds" .=) <$> _ratrPageObjectIds,
                  ("containsText" .=) <$> _ratrContainsText,
                  ("replaceText" .=) <$> _ratrReplaceText])

-- | A table range represents a reference to a subset of a table. It\'s
-- important to note that the cells specified by a table range do not
-- necessarily form a rectangle. For example, let\'s say we have a 3 x 3
-- table where all the cells of the last row are merged together. The table
-- looks like this: [ ] A table range with location = (0, 0), row span = 3
-- and column span = 2 specifies the following cells: x x [ x ]
--
-- /See:/ 'tableRange' smart constructor.
data TableRange =
  TableRange'
    { _trColumnSpan :: !(Maybe (Textual Int32))
    , _trLocation   :: !(Maybe TableCellLocation)
    , _trRowSpan    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trColumnSpan'
--
-- * 'trLocation'
--
-- * 'trRowSpan'
tableRange
    :: TableRange
tableRange =
  TableRange'
    {_trColumnSpan = Nothing, _trLocation = Nothing, _trRowSpan = Nothing}

-- | The column span of the table range.
trColumnSpan :: Lens' TableRange (Maybe Int32)
trColumnSpan
  = lens _trColumnSpan (\ s a -> s{_trColumnSpan = a})
      . mapping _Coerce

-- | The starting location of the table range.
trLocation :: Lens' TableRange (Maybe TableCellLocation)
trLocation
  = lens _trLocation (\ s a -> s{_trLocation = a})

-- | The row span of the table range.
trRowSpan :: Lens' TableRange (Maybe Int32)
trRowSpan
  = lens _trRowSpan (\ s a -> s{_trRowSpan = a}) .
      mapping _Coerce

instance FromJSON TableRange where
        parseJSON
          = withObject "TableRange"
              (\ o ->
                 TableRange' <$>
                   (o .:? "columnSpan") <*> (o .:? "location") <*>
                     (o .:? "rowSpan"))

instance ToJSON TableRange where
        toJSON TableRange'{..}
          = object
              (catMaybes
                 [("columnSpan" .=) <$> _trColumnSpan,
                  ("location" .=) <$> _trLocation,
                  ("rowSpan" .=) <$> _trRowSpan])

-- | A single kind of update to apply to a presentation.
--
-- /See:/ 'request'' smart constructor.
data Request' =
  Request''
    { _reqReplaceAllShapesWithImage       :: !(Maybe ReplaceAllShapesWithImageRequest)
    , _reqDeleteObject                    :: !(Maybe DeleteObjectRequest)
    , _reqUpdateSlidesPosition            :: !(Maybe UpdateSlidesPositionRequest)
    , _reqUpdateShapeProperties           :: !(Maybe UpdateShapePropertiesRequest)
    , _reqCreateParagraphBullets          :: !(Maybe CreateParagraphBulletsRequest)
    , _reqUpdateLineCategory              :: !(Maybe UpdateLineCategoryRequest)
    , _reqCreateLine                      :: !(Maybe CreateLineRequest)
    , _reqInsertText                      :: !(Maybe InsertTextRequest)
    , _reqUpdateTableBOrderProperties     :: !(Maybe UpdateTableBOrderPropertiesRequest)
    , _reqDeleteParagraphBullets          :: !(Maybe DeleteParagraphBulletsRequest)
    , _reqDeleteTableRow                  :: !(Maybe DeleteTableRowRequest)
    , _reqUpdateTableCellProperties       :: !(Maybe UpdateTableCellPropertiesRequest)
    , _reqReplaceAllText                  :: !(Maybe ReplaceAllTextRequest)
    , _reqUpdatePageElementAltText        :: !(Maybe UpdatePageElementAltTextRequest)
    , _reqUpdateParagraphStyle            :: !(Maybe UpdateParagraphStyleRequest)
    , _reqRerouteLine                     :: !(Maybe RerouteLineRequest)
    , _reqReplaceImage                    :: !(Maybe ReplaceImageRequest)
    , _reqReplaceAllShapesWithSheetsChart :: !(Maybe ReplaceAllShapesWithSheetsChartRequest)
    , _reqCreateShape                     :: !(Maybe CreateShapeRequest)
    , _reqUpdatePageElementsZOrder        :: !(Maybe UpdatePageElementsZOrderRequest)
    , _reqUpdatePageProperties            :: !(Maybe UpdatePagePropertiesRequest)
    , _reqUpdateLineProperties            :: !(Maybe UpdateLinePropertiesRequest)
    , _reqDeleteTableColumn               :: !(Maybe DeleteTableColumnRequest)
    , _reqGroupObjects                    :: !(Maybe GroupObjectsRequest)
    , _reqDeleteText                      :: !(Maybe DeleteTextRequest)
    , _reqUpdateTableRowProperties        :: !(Maybe UpdateTableRowPropertiesRequest)
    , _reqCreateSheetsChart               :: !(Maybe CreateSheetsChartRequest)
    , _reqInsertTableColumns              :: !(Maybe InsertTableColumnsRequest)
    , _reqUpdateImageProperties           :: !(Maybe UpdateImagePropertiesRequest)
    , _reqUnGroupObjects                  :: !(Maybe UnGroupObjectsRequest)
    , _reqDuplicateObject                 :: !(Maybe DuplicateObjectRequest)
    , _reqCreateTable                     :: !(Maybe CreateTableRequest)
    , _reqCreateVideo                     :: !(Maybe CreateVideoRequest)
    , _reqRefreshSheetsChart              :: !(Maybe RefreshSheetsChartRequest)
    , _reqUpdateTableColumnProperties     :: !(Maybe UpdateTableColumnPropertiesRequest)
    , _reqUnmergeTableCells               :: !(Maybe UnmergeTableCellsRequest)
    , _reqUpdatePageElementTransform      :: !(Maybe UpdatePageElementTransformRequest)
    , _reqInsertTableRows                 :: !(Maybe InsertTableRowsRequest)
    , _reqCreateImage                     :: !(Maybe CreateImageRequest)
    , _reqMergeTableCells                 :: !(Maybe MergeTableCellsRequest)
    , _reqCreateSlide                     :: !(Maybe CreateSlideRequest)
    , _reqUpdateTextStyle                 :: !(Maybe UpdateTextStyleRequest)
    , _reqUpdateVideoProperties           :: !(Maybe UpdateVideoPropertiesRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reqReplaceAllShapesWithImage'
--
-- * 'reqDeleteObject'
--
-- * 'reqUpdateSlidesPosition'
--
-- * 'reqUpdateShapeProperties'
--
-- * 'reqCreateParagraphBullets'
--
-- * 'reqUpdateLineCategory'
--
-- * 'reqCreateLine'
--
-- * 'reqInsertText'
--
-- * 'reqUpdateTableBOrderProperties'
--
-- * 'reqDeleteParagraphBullets'
--
-- * 'reqDeleteTableRow'
--
-- * 'reqUpdateTableCellProperties'
--
-- * 'reqReplaceAllText'
--
-- * 'reqUpdatePageElementAltText'
--
-- * 'reqUpdateParagraphStyle'
--
-- * 'reqRerouteLine'
--
-- * 'reqReplaceImage'
--
-- * 'reqReplaceAllShapesWithSheetsChart'
--
-- * 'reqCreateShape'
--
-- * 'reqUpdatePageElementsZOrder'
--
-- * 'reqUpdatePageProperties'
--
-- * 'reqUpdateLineProperties'
--
-- * 'reqDeleteTableColumn'
--
-- * 'reqGroupObjects'
--
-- * 'reqDeleteText'
--
-- * 'reqUpdateTableRowProperties'
--
-- * 'reqCreateSheetsChart'
--
-- * 'reqInsertTableColumns'
--
-- * 'reqUpdateImageProperties'
--
-- * 'reqUnGroupObjects'
--
-- * 'reqDuplicateObject'
--
-- * 'reqCreateTable'
--
-- * 'reqCreateVideo'
--
-- * 'reqRefreshSheetsChart'
--
-- * 'reqUpdateTableColumnProperties'
--
-- * 'reqUnmergeTableCells'
--
-- * 'reqUpdatePageElementTransform'
--
-- * 'reqInsertTableRows'
--
-- * 'reqCreateImage'
--
-- * 'reqMergeTableCells'
--
-- * 'reqCreateSlide'
--
-- * 'reqUpdateTextStyle'
--
-- * 'reqUpdateVideoProperties'
request'
    :: Request'
request' =
  Request''
    { _reqReplaceAllShapesWithImage = Nothing
    , _reqDeleteObject = Nothing
    , _reqUpdateSlidesPosition = Nothing
    , _reqUpdateShapeProperties = Nothing
    , _reqCreateParagraphBullets = Nothing
    , _reqUpdateLineCategory = Nothing
    , _reqCreateLine = Nothing
    , _reqInsertText = Nothing
    , _reqUpdateTableBOrderProperties = Nothing
    , _reqDeleteParagraphBullets = Nothing
    , _reqDeleteTableRow = Nothing
    , _reqUpdateTableCellProperties = Nothing
    , _reqReplaceAllText = Nothing
    , _reqUpdatePageElementAltText = Nothing
    , _reqUpdateParagraphStyle = Nothing
    , _reqRerouteLine = Nothing
    , _reqReplaceImage = Nothing
    , _reqReplaceAllShapesWithSheetsChart = Nothing
    , _reqCreateShape = Nothing
    , _reqUpdatePageElementsZOrder = Nothing
    , _reqUpdatePageProperties = Nothing
    , _reqUpdateLineProperties = Nothing
    , _reqDeleteTableColumn = Nothing
    , _reqGroupObjects = Nothing
    , _reqDeleteText = Nothing
    , _reqUpdateTableRowProperties = Nothing
    , _reqCreateSheetsChart = Nothing
    , _reqInsertTableColumns = Nothing
    , _reqUpdateImageProperties = Nothing
    , _reqUnGroupObjects = Nothing
    , _reqDuplicateObject = Nothing
    , _reqCreateTable = Nothing
    , _reqCreateVideo = Nothing
    , _reqRefreshSheetsChart = Nothing
    , _reqUpdateTableColumnProperties = Nothing
    , _reqUnmergeTableCells = Nothing
    , _reqUpdatePageElementTransform = Nothing
    , _reqInsertTableRows = Nothing
    , _reqCreateImage = Nothing
    , _reqMergeTableCells = Nothing
    , _reqCreateSlide = Nothing
    , _reqUpdateTextStyle = Nothing
    , _reqUpdateVideoProperties = Nothing
    }

-- | Replaces all shapes matching some criteria with an image.
reqReplaceAllShapesWithImage :: Lens' Request' (Maybe ReplaceAllShapesWithImageRequest)
reqReplaceAllShapesWithImage
  = lens _reqReplaceAllShapesWithImage
      (\ s a -> s{_reqReplaceAllShapesWithImage = a})

-- | Deletes a page or page element from the presentation.
reqDeleteObject :: Lens' Request' (Maybe DeleteObjectRequest)
reqDeleteObject
  = lens _reqDeleteObject
      (\ s a -> s{_reqDeleteObject = a})

-- | Updates the position of a set of slides in the presentation.
reqUpdateSlidesPosition :: Lens' Request' (Maybe UpdateSlidesPositionRequest)
reqUpdateSlidesPosition
  = lens _reqUpdateSlidesPosition
      (\ s a -> s{_reqUpdateSlidesPosition = a})

-- | Updates the properties of a Shape.
reqUpdateShapeProperties :: Lens' Request' (Maybe UpdateShapePropertiesRequest)
reqUpdateShapeProperties
  = lens _reqUpdateShapeProperties
      (\ s a -> s{_reqUpdateShapeProperties = a})

-- | Creates bullets for paragraphs.
reqCreateParagraphBullets :: Lens' Request' (Maybe CreateParagraphBulletsRequest)
reqCreateParagraphBullets
  = lens _reqCreateParagraphBullets
      (\ s a -> s{_reqCreateParagraphBullets = a})

-- | Updates the category of a line.
reqUpdateLineCategory :: Lens' Request' (Maybe UpdateLineCategoryRequest)
reqUpdateLineCategory
  = lens _reqUpdateLineCategory
      (\ s a -> s{_reqUpdateLineCategory = a})

-- | Creates a line.
reqCreateLine :: Lens' Request' (Maybe CreateLineRequest)
reqCreateLine
  = lens _reqCreateLine
      (\ s a -> s{_reqCreateLine = a})

-- | Inserts text into a shape or table cell.
reqInsertText :: Lens' Request' (Maybe InsertTextRequest)
reqInsertText
  = lens _reqInsertText
      (\ s a -> s{_reqInsertText = a})

-- | Updates the properties of the table borders in a Table.
reqUpdateTableBOrderProperties :: Lens' Request' (Maybe UpdateTableBOrderPropertiesRequest)
reqUpdateTableBOrderProperties
  = lens _reqUpdateTableBOrderProperties
      (\ s a -> s{_reqUpdateTableBOrderProperties = a})

-- | Deletes bullets from paragraphs.
reqDeleteParagraphBullets :: Lens' Request' (Maybe DeleteParagraphBulletsRequest)
reqDeleteParagraphBullets
  = lens _reqDeleteParagraphBullets
      (\ s a -> s{_reqDeleteParagraphBullets = a})

-- | Deletes a row from a table.
reqDeleteTableRow :: Lens' Request' (Maybe DeleteTableRowRequest)
reqDeleteTableRow
  = lens _reqDeleteTableRow
      (\ s a -> s{_reqDeleteTableRow = a})

-- | Updates the properties of a TableCell.
reqUpdateTableCellProperties :: Lens' Request' (Maybe UpdateTableCellPropertiesRequest)
reqUpdateTableCellProperties
  = lens _reqUpdateTableCellProperties
      (\ s a -> s{_reqUpdateTableCellProperties = a})

-- | Replaces all instances of specified text.
reqReplaceAllText :: Lens' Request' (Maybe ReplaceAllTextRequest)
reqReplaceAllText
  = lens _reqReplaceAllText
      (\ s a -> s{_reqReplaceAllText = a})

-- | Updates the alt text title and\/or description of a page element.
reqUpdatePageElementAltText :: Lens' Request' (Maybe UpdatePageElementAltTextRequest)
reqUpdatePageElementAltText
  = lens _reqUpdatePageElementAltText
      (\ s a -> s{_reqUpdatePageElementAltText = a})

-- | Updates the styling of paragraphs within a Shape or Table.
reqUpdateParagraphStyle :: Lens' Request' (Maybe UpdateParagraphStyleRequest)
reqUpdateParagraphStyle
  = lens _reqUpdateParagraphStyle
      (\ s a -> s{_reqUpdateParagraphStyle = a})

-- | Reroutes a line such that it\'s connected at the two closest connection
-- sites on the connected page elements.
reqRerouteLine :: Lens' Request' (Maybe RerouteLineRequest)
reqRerouteLine
  = lens _reqRerouteLine
      (\ s a -> s{_reqRerouteLine = a})

-- | Replaces an existing image with a new image.
reqReplaceImage :: Lens' Request' (Maybe ReplaceImageRequest)
reqReplaceImage
  = lens _reqReplaceImage
      (\ s a -> s{_reqReplaceImage = a})

-- | Replaces all shapes matching some criteria with a Google Sheets chart.
reqReplaceAllShapesWithSheetsChart :: Lens' Request' (Maybe ReplaceAllShapesWithSheetsChartRequest)
reqReplaceAllShapesWithSheetsChart
  = lens _reqReplaceAllShapesWithSheetsChart
      (\ s a -> s{_reqReplaceAllShapesWithSheetsChart = a})

-- | Creates a new shape.
reqCreateShape :: Lens' Request' (Maybe CreateShapeRequest)
reqCreateShape
  = lens _reqCreateShape
      (\ s a -> s{_reqCreateShape = a})

-- | Updates the Z-order of page elements.
reqUpdatePageElementsZOrder :: Lens' Request' (Maybe UpdatePageElementsZOrderRequest)
reqUpdatePageElementsZOrder
  = lens _reqUpdatePageElementsZOrder
      (\ s a -> s{_reqUpdatePageElementsZOrder = a})

-- | Updates the properties of a Page.
reqUpdatePageProperties :: Lens' Request' (Maybe UpdatePagePropertiesRequest)
reqUpdatePageProperties
  = lens _reqUpdatePageProperties
      (\ s a -> s{_reqUpdatePageProperties = a})

-- | Updates the properties of a Line.
reqUpdateLineProperties :: Lens' Request' (Maybe UpdateLinePropertiesRequest)
reqUpdateLineProperties
  = lens _reqUpdateLineProperties
      (\ s a -> s{_reqUpdateLineProperties = a})

-- | Deletes a column from a table.
reqDeleteTableColumn :: Lens' Request' (Maybe DeleteTableColumnRequest)
reqDeleteTableColumn
  = lens _reqDeleteTableColumn
      (\ s a -> s{_reqDeleteTableColumn = a})

-- | Groups objects, such as page elements.
reqGroupObjects :: Lens' Request' (Maybe GroupObjectsRequest)
reqGroupObjects
  = lens _reqGroupObjects
      (\ s a -> s{_reqGroupObjects = a})

-- | Deletes text from a shape or a table cell.
reqDeleteText :: Lens' Request' (Maybe DeleteTextRequest)
reqDeleteText
  = lens _reqDeleteText
      (\ s a -> s{_reqDeleteText = a})

-- | Updates the properties of a Table row.
reqUpdateTableRowProperties :: Lens' Request' (Maybe UpdateTableRowPropertiesRequest)
reqUpdateTableRowProperties
  = lens _reqUpdateTableRowProperties
      (\ s a -> s{_reqUpdateTableRowProperties = a})

-- | Creates an embedded Google Sheets chart.
reqCreateSheetsChart :: Lens' Request' (Maybe CreateSheetsChartRequest)
reqCreateSheetsChart
  = lens _reqCreateSheetsChart
      (\ s a -> s{_reqCreateSheetsChart = a})

-- | Inserts columns into a table.
reqInsertTableColumns :: Lens' Request' (Maybe InsertTableColumnsRequest)
reqInsertTableColumns
  = lens _reqInsertTableColumns
      (\ s a -> s{_reqInsertTableColumns = a})

-- | Updates the properties of an Image.
reqUpdateImageProperties :: Lens' Request' (Maybe UpdateImagePropertiesRequest)
reqUpdateImageProperties
  = lens _reqUpdateImageProperties
      (\ s a -> s{_reqUpdateImageProperties = a})

-- | Ungroups objects, such as groups.
reqUnGroupObjects :: Lens' Request' (Maybe UnGroupObjectsRequest)
reqUnGroupObjects
  = lens _reqUnGroupObjects
      (\ s a -> s{_reqUnGroupObjects = a})

-- | Duplicates a slide or page element.
reqDuplicateObject :: Lens' Request' (Maybe DuplicateObjectRequest)
reqDuplicateObject
  = lens _reqDuplicateObject
      (\ s a -> s{_reqDuplicateObject = a})

-- | Creates a new table.
reqCreateTable :: Lens' Request' (Maybe CreateTableRequest)
reqCreateTable
  = lens _reqCreateTable
      (\ s a -> s{_reqCreateTable = a})

-- | Creates a video.
reqCreateVideo :: Lens' Request' (Maybe CreateVideoRequest)
reqCreateVideo
  = lens _reqCreateVideo
      (\ s a -> s{_reqCreateVideo = a})

-- | Refreshes a Google Sheets chart.
reqRefreshSheetsChart :: Lens' Request' (Maybe RefreshSheetsChartRequest)
reqRefreshSheetsChart
  = lens _reqRefreshSheetsChart
      (\ s a -> s{_reqRefreshSheetsChart = a})

-- | Updates the properties of a Table column.
reqUpdateTableColumnProperties :: Lens' Request' (Maybe UpdateTableColumnPropertiesRequest)
reqUpdateTableColumnProperties
  = lens _reqUpdateTableColumnProperties
      (\ s a -> s{_reqUpdateTableColumnProperties = a})

-- | Unmerges cells in a Table.
reqUnmergeTableCells :: Lens' Request' (Maybe UnmergeTableCellsRequest)
reqUnmergeTableCells
  = lens _reqUnmergeTableCells
      (\ s a -> s{_reqUnmergeTableCells = a})

-- | Updates the transform of a page element.
reqUpdatePageElementTransform :: Lens' Request' (Maybe UpdatePageElementTransformRequest)
reqUpdatePageElementTransform
  = lens _reqUpdatePageElementTransform
      (\ s a -> s{_reqUpdatePageElementTransform = a})

-- | Inserts rows into a table.
reqInsertTableRows :: Lens' Request' (Maybe InsertTableRowsRequest)
reqInsertTableRows
  = lens _reqInsertTableRows
      (\ s a -> s{_reqInsertTableRows = a})

-- | Creates an image.
reqCreateImage :: Lens' Request' (Maybe CreateImageRequest)
reqCreateImage
  = lens _reqCreateImage
      (\ s a -> s{_reqCreateImage = a})

-- | Merges cells in a Table.
reqMergeTableCells :: Lens' Request' (Maybe MergeTableCellsRequest)
reqMergeTableCells
  = lens _reqMergeTableCells
      (\ s a -> s{_reqMergeTableCells = a})

-- | Creates a new slide.
reqCreateSlide :: Lens' Request' (Maybe CreateSlideRequest)
reqCreateSlide
  = lens _reqCreateSlide
      (\ s a -> s{_reqCreateSlide = a})

-- | Updates the styling of text within a Shape or Table.
reqUpdateTextStyle :: Lens' Request' (Maybe UpdateTextStyleRequest)
reqUpdateTextStyle
  = lens _reqUpdateTextStyle
      (\ s a -> s{_reqUpdateTextStyle = a})

-- | Updates the properties of a Video.
reqUpdateVideoProperties :: Lens' Request' (Maybe UpdateVideoPropertiesRequest)
reqUpdateVideoProperties
  = lens _reqUpdateVideoProperties
      (\ s a -> s{_reqUpdateVideoProperties = a})

instance FromJSON Request' where
        parseJSON
          = withObject "Request"
              (\ o ->
                 Request'' <$>
                   (o .:? "replaceAllShapesWithImage") <*>
                     (o .:? "deleteObject")
                     <*> (o .:? "updateSlidesPosition")
                     <*> (o .:? "updateShapeProperties")
                     <*> (o .:? "createParagraphBullets")
                     <*> (o .:? "updateLineCategory")
                     <*> (o .:? "createLine")
                     <*> (o .:? "insertText")
                     <*> (o .:? "updateTableBorderProperties")
                     <*> (o .:? "deleteParagraphBullets")
                     <*> (o .:? "deleteTableRow")
                     <*> (o .:? "updateTableCellProperties")
                     <*> (o .:? "replaceAllText")
                     <*> (o .:? "updatePageElementAltText")
                     <*> (o .:? "updateParagraphStyle")
                     <*> (o .:? "rerouteLine")
                     <*> (o .:? "replaceImage")
                     <*> (o .:? "replaceAllShapesWithSheetsChart")
                     <*> (o .:? "createShape")
                     <*> (o .:? "updatePageElementsZOrder")
                     <*> (o .:? "updatePageProperties")
                     <*> (o .:? "updateLineProperties")
                     <*> (o .:? "deleteTableColumn")
                     <*> (o .:? "groupObjects")
                     <*> (o .:? "deleteText")
                     <*> (o .:? "updateTableRowProperties")
                     <*> (o .:? "createSheetsChart")
                     <*> (o .:? "insertTableColumns")
                     <*> (o .:? "updateImageProperties")
                     <*> (o .:? "ungroupObjects")
                     <*> (o .:? "duplicateObject")
                     <*> (o .:? "createTable")
                     <*> (o .:? "createVideo")
                     <*> (o .:? "refreshSheetsChart")
                     <*> (o .:? "updateTableColumnProperties")
                     <*> (o .:? "unmergeTableCells")
                     <*> (o .:? "updatePageElementTransform")
                     <*> (o .:? "insertTableRows")
                     <*> (o .:? "createImage")
                     <*> (o .:? "mergeTableCells")
                     <*> (o .:? "createSlide")
                     <*> (o .:? "updateTextStyle")
                     <*> (o .:? "updateVideoProperties"))

instance ToJSON Request' where
        toJSON Request''{..}
          = object
              (catMaybes
                 [("replaceAllShapesWithImage" .=) <$>
                    _reqReplaceAllShapesWithImage,
                  ("deleteObject" .=) <$> _reqDeleteObject,
                  ("updateSlidesPosition" .=) <$>
                    _reqUpdateSlidesPosition,
                  ("updateShapeProperties" .=) <$>
                    _reqUpdateShapeProperties,
                  ("createParagraphBullets" .=) <$>
                    _reqCreateParagraphBullets,
                  ("updateLineCategory" .=) <$> _reqUpdateLineCategory,
                  ("createLine" .=) <$> _reqCreateLine,
                  ("insertText" .=) <$> _reqInsertText,
                  ("updateTableBorderProperties" .=) <$>
                    _reqUpdateTableBOrderProperties,
                  ("deleteParagraphBullets" .=) <$>
                    _reqDeleteParagraphBullets,
                  ("deleteTableRow" .=) <$> _reqDeleteTableRow,
                  ("updateTableCellProperties" .=) <$>
                    _reqUpdateTableCellProperties,
                  ("replaceAllText" .=) <$> _reqReplaceAllText,
                  ("updatePageElementAltText" .=) <$>
                    _reqUpdatePageElementAltText,
                  ("updateParagraphStyle" .=) <$>
                    _reqUpdateParagraphStyle,
                  ("rerouteLine" .=) <$> _reqRerouteLine,
                  ("replaceImage" .=) <$> _reqReplaceImage,
                  ("replaceAllShapesWithSheetsChart" .=) <$>
                    _reqReplaceAllShapesWithSheetsChart,
                  ("createShape" .=) <$> _reqCreateShape,
                  ("updatePageElementsZOrder" .=) <$>
                    _reqUpdatePageElementsZOrder,
                  ("updatePageProperties" .=) <$>
                    _reqUpdatePageProperties,
                  ("updateLineProperties" .=) <$>
                    _reqUpdateLineProperties,
                  ("deleteTableColumn" .=) <$> _reqDeleteTableColumn,
                  ("groupObjects" .=) <$> _reqGroupObjects,
                  ("deleteText" .=) <$> _reqDeleteText,
                  ("updateTableRowProperties" .=) <$>
                    _reqUpdateTableRowProperties,
                  ("createSheetsChart" .=) <$> _reqCreateSheetsChart,
                  ("insertTableColumns" .=) <$> _reqInsertTableColumns,
                  ("updateImageProperties" .=) <$>
                    _reqUpdateImageProperties,
                  ("ungroupObjects" .=) <$> _reqUnGroupObjects,
                  ("duplicateObject" .=) <$> _reqDuplicateObject,
                  ("createTable" .=) <$> _reqCreateTable,
                  ("createVideo" .=) <$> _reqCreateVideo,
                  ("refreshSheetsChart" .=) <$> _reqRefreshSheetsChart,
                  ("updateTableColumnProperties" .=) <$>
                    _reqUpdateTableColumnProperties,
                  ("unmergeTableCells" .=) <$> _reqUnmergeTableCells,
                  ("updatePageElementTransform" .=) <$>
                    _reqUpdatePageElementTransform,
                  ("insertTableRows" .=) <$> _reqInsertTableRows,
                  ("createImage" .=) <$> _reqCreateImage,
                  ("mergeTableCells" .=) <$> _reqMergeTableCells,
                  ("createSlide" .=) <$> _reqCreateSlide,
                  ("updateTextStyle" .=) <$> _reqUpdateTextStyle,
                  ("updateVideoProperties" .=) <$>
                    _reqUpdateVideoProperties])

-- | A criteria that matches a specific string of text in a shape or table.
--
-- /See:/ 'substringMatchCriteria' smart constructor.
data SubstringMatchCriteria =
  SubstringMatchCriteria'
    { _smcMatchCase :: !(Maybe Bool)
    , _smcText      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubstringMatchCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smcMatchCase'
--
-- * 'smcText'
substringMatchCriteria
    :: SubstringMatchCriteria
substringMatchCriteria =
  SubstringMatchCriteria' {_smcMatchCase = Nothing, _smcText = Nothing}

-- | Indicates whether the search should respect case: - \`True\`: the search
-- is case sensitive. - \`False\`: the search is case insensitive.
smcMatchCase :: Lens' SubstringMatchCriteria (Maybe Bool)
smcMatchCase
  = lens _smcMatchCase (\ s a -> s{_smcMatchCase = a})

-- | The text to search for in the shape or table.
smcText :: Lens' SubstringMatchCriteria (Maybe Text)
smcText = lens _smcText (\ s a -> s{_smcText = a})

instance FromJSON SubstringMatchCriteria where
        parseJSON
          = withObject "SubstringMatchCriteria"
              (\ o ->
                 SubstringMatchCriteria' <$>
                   (o .:? "matchCase") <*> (o .:? "text"))

instance ToJSON SubstringMatchCriteria where
        toJSON SubstringMatchCriteria'{..}
          = object
              (catMaybes
                 [("matchCase" .=) <$> _smcMatchCase,
                  ("text" .=) <$> _smcText])
