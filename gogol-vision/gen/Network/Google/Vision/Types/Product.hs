{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vision.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vision.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Vision.Types.Sum

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges. Example of normalization code
-- in Python: def NormalizeLongitude(longitude): \"\"\"Wraps decimal
-- degrees longitude to [-180.0, 180.0].\"\"\" q, r = divmod(longitude,
-- 360.0) if r > 180.0 or (r == 180.0 and q \<= -1.0): return r - 360.0
-- return r def NormalizeLatLng(latitude, longitude): \"\"\"Wraps decimal
-- degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.0],
-- respectively.\"\"\" r = latitude % 360.0 if r \<= 90.0: return r,
-- NormalizeLongitude(longitude) elif r >= 270.0: return r - 360,
-- NormalizeLongitude(longitude) else: return 180 - r,
-- NormalizeLongitude(longitude + 180.0) assert 180.0 ==
-- NormalizeLongitude(180.0) assert -180.0 == NormalizeLongitude(-180.0)
-- assert -179.0 == NormalizeLongitude(181.0) assert (0.0, 0.0) ==
-- NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-360.0,
-- 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0,
-- -170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(90.0, 10.0) assert (-90.0, -10.0) ==
-- NormalizeLatLng(-90.0, -10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) ==
-- NormalizeLatLng(270.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(-270.0, 10.0)
--
-- /See:/ 'latLng' smart constructor.
data LatLng = LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng =
    LatLng'
    { _llLatitude = Nothing
    , _llLongitude = Nothing
    }

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a}) .
      mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a}) .
      mapping _Coerce

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | The /Feature/ indicates what type of image detection task to perform.
-- Users describe the type of Google Cloud Vision API tasks to perform over
-- images by using /Feature/s. Features encode the Cloud Vision API
-- vertical to operate on and the number of top-scoring results to return.
--
-- /See:/ 'feature' smart constructor.
data Feature = Feature'
    { _fType       :: !(Maybe FeatureType)
    , _fMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Feature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fType'
--
-- * 'fMaxResults'
feature
    :: Feature
feature =
    Feature'
    { _fType = Nothing
    , _fMaxResults = Nothing
    }

-- | The feature type.
fType :: Lens' Feature (Maybe FeatureType)
fType = lens _fType (\ s a -> s{_fType = a})

-- | Maximum number of results of this type.
fMaxResults :: Lens' Feature (Maybe Int32)
fMaxResults
  = lens _fMaxResults (\ s a -> s{_fMaxResults = a}) .
      mapping _Coerce

instance FromJSON Feature where
        parseJSON
          = withObject "Feature"
              (\ o ->
                 Feature' <$> (o .:? "type") <*> (o .:? "maxResults"))

instance ToJSON Feature where
        toJSON Feature'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _fType,
                  ("maxResults" .=) <$> _fMaxResults])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Arbitrary name\/value pair.
--
-- /See:/ 'property' smart constructor.
data Property = Property'
    { _pValue :: !(Maybe Text)
    , _pName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pName'
property
    :: Property
property =
    Property'
    { _pValue = Nothing
    , _pName = Nothing
    }

-- | Value of the property.
pValue :: Lens' Property (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | Name of the property.
pName :: Lens' Property (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Property where
        parseJSON
          = withObject "Property"
              (\ o ->
                 Property' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON Property where
        toJSON Property'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue, ("name" .=) <$> _pName])

-- | Client image to perform Google Cloud Vision API tasks over.
--
-- /See:/ 'image' smart constructor.
data Image = Image'
    { _iContent :: !(Maybe (Textual Word8))
    , _iSource  :: !(Maybe ImageSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iContent'
--
-- * 'iSource'
image
    :: Image
image =
    Image'
    { _iContent = Nothing
    , _iSource = Nothing
    }

-- | Image content, represented as a stream of bytes.
iContent :: Lens' Image (Maybe Word8)
iContent
  = lens _iContent (\ s a -> s{_iContent = a}) .
      mapping _Coerce

-- | Google Cloud Storage image location. If both \'content\' and \'source\'
-- are filled for an image, \'content\' takes precedence and it will be
-- used for performing the image annotation request.
iSource :: Lens' Image (Maybe ImageSource)
iSource = lens _iSource (\ s a -> s{_iSource = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$> (o .:? "content") <*> (o .:? "source"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _iContent,
                  ("source" .=) <$> _iSource])

-- | A face-specific landmark (for example, a face feature). Landmark
-- positions may fall outside the bounds of the image when the face is near
-- one or more edges of the image. Therefore it is NOT guaranteed that 0
-- \<= x \< width or 0 \<= y \< height.
--
-- /See:/ 'landmark' smart constructor.
data Landmark = Landmark'
    { _lType     :: !(Maybe LandmarkType)
    , _lPosition :: !(Maybe Position)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Landmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lType'
--
-- * 'lPosition'
landmark
    :: Landmark
landmark =
    Landmark'
    { _lType = Nothing
    , _lPosition = Nothing
    }

-- | Face landmark type.
lType :: Lens' Landmark (Maybe LandmarkType)
lType = lens _lType (\ s a -> s{_lType = a})

-- | Face landmark position.
lPosition :: Lens' Landmark (Maybe Position)
lPosition
  = lens _lPosition (\ s a -> s{_lPosition = a})

instance FromJSON Landmark where
        parseJSON
          = withObject "Landmark"
              (\ o ->
                 Landmark' <$> (o .:? "type") <*> (o .:? "position"))

instance ToJSON Landmark where
        toJSON Landmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _lType,
                  ("position" .=) <$> _lPosition])

-- | Represents a color in the RGBA color space. This representation is
-- designed for simplicity of conversion to\/from color representations in
-- various languages over compactness; for example, the fields of this
-- representation can be trivially provided to the constructor of
-- \"java.awt.Color\" in Java; it can also be trivially provided to
-- UIColor\'s \"+colorWithRed:green:blue:alpha\" method in iOS; and, with
-- just a little work, it can be easily formatted into a CSS \"rgba()\"
-- string in JavaScript, as well. Here are some examples: Example (Java):
-- import com.google.type.Color; \/\/ ... public static java.awt.Color
-- fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
-- protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
-- protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(),
-- alpha); } public static Color toProto(java.awt.Color color) { float red
-- = (float) color.getRed(); float green = (float) color.getGreen(); float
-- blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder
-- resultBuilder = Color .newBuilder() .setRed(red \/ denominator)
-- .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha
-- = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue
-- .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); }
-- return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/
-- ... static UIColor* fromProto(Color* protocolor) { float red =
-- [protocolor red]; float green = [protocolor green]; float blue =
-- [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float
-- alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value];
-- } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; }
-- static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha;
-- if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return
-- nil; } Color* result = [Color alloc] init]; [result setRed:red]; [result
-- setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result
-- setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return
-- result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor =
-- function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac
-- = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red
-- = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
-- var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb_color)) {
-- return rgbToCssColor_(red, green, blue); } var alphaFrac =
-- rgb_color.alpha.value || 0.0; var rgbParams = [red, green,
-- blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac,
-- \')\'].join(\'\'); }; var rgbToCssColor_ = function(red, green, blue) {
-- var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var
-- hexString = rgbNumber.toString(16); var missingZeros = 6 -
-- hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \<
-- missingZeros; i++) { resultBuilder.push(\'0\'); }
-- resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/
-- ...
--
-- /See:/ 'color' smart constructor.
data Color = Color'
    { _cRed   :: !(Maybe (Textual Double))
    , _cAlpha :: !(Maybe (Textual Double))
    , _cGreen :: !(Maybe (Textual Double))
    , _cBlue  :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRed'
--
-- * 'cAlpha'
--
-- * 'cGreen'
--
-- * 'cBlue'
color
    :: Color
color =
    Color'
    { _cRed = Nothing
    , _cAlpha = Nothing
    , _cGreen = Nothing
    , _cBlue = Nothing
    }

-- | The amount of red in the color as a value in the interval [0, 1].
cRed :: Lens' Color (Maybe Double)
cRed
  = lens _cRed (\ s a -> s{_cRed = a}) .
      mapping _Coerce

-- | The fraction of this color that should be applied to the pixel. That is,
-- the final pixel color is defined by the equation: pixel color = alpha *
-- (this color) + (1.0 - alpha) * (background color) This means that a
-- value of 1.0 corresponds to a solid color, whereas a value of 0.0
-- corresponds to a completely transparent color. This uses a wrapper
-- message rather than a simple float scalar so that it is possible to
-- distinguish between a default value and the value being unset. If
-- omitted, this color object is to be rendered as a solid color (as if the
-- alpha value had been explicitly given with a value of 1.0).
cAlpha :: Lens' Color (Maybe Double)
cAlpha
  = lens _cAlpha (\ s a -> s{_cAlpha = a}) .
      mapping _Coerce

-- | The amount of green in the color as a value in the interval [0, 1].
cGreen :: Lens' Color (Maybe Double)
cGreen
  = lens _cGreen (\ s a -> s{_cGreen = a}) .
      mapping _Coerce

-- | The amount of blue in the color as a value in the interval [0, 1].
cBlue :: Lens' Color (Maybe Double)
cBlue
  = lens _cBlue (\ s a -> s{_cBlue = a}) .
      mapping _Coerce

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o ->
                 Color' <$>
                   (o .:? "red") <*> (o .:? "alpha") <*> (o .:? "green")
                     <*> (o .:? "blue"))

instance ToJSON Color where
        toJSON Color'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _cRed, ("alpha" .=) <$> _cAlpha,
                  ("green" .=) <$> _cGreen, ("blue" .=) <$> _cBlue])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'boundingPoly' smart constructor.
newtype BoundingPoly = BoundingPoly'
    { _bpVertices :: Maybe [Vertex]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpVertices'
boundingPoly
    :: BoundingPoly
boundingPoly =
    BoundingPoly'
    { _bpVertices = Nothing
    }

-- | The bounding polygon vertices.
bpVertices :: Lens' BoundingPoly [Vertex]
bpVertices
  = lens _bpVertices (\ s a -> s{_bpVertices = a}) .
      _Default
      . _Coerce

instance FromJSON BoundingPoly where
        parseJSON
          = withObject "BoundingPoly"
              (\ o ->
                 BoundingPoly' <$> (o .:? "vertices" .!= mempty))

instance ToJSON BoundingPoly where
        toJSON BoundingPoly'{..}
          = object
              (catMaybes [("vertices" .=) <$> _bpVertices])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'vertex' smart constructor.
data Vertex = Vertex'
    { _vX :: !(Maybe (Textual Int32))
    , _vY :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vX'
--
-- * 'vY'
vertex
    :: Vertex
vertex =
    Vertex'
    { _vX = Nothing
    , _vY = Nothing
    }

-- | X coordinate.
vX :: Lens' Vertex (Maybe Int32)
vX = lens _vX (\ s a -> s{_vX = a}) . mapping _Coerce

-- | Y coordinate.
vY :: Lens' Vertex (Maybe Int32)
vY = lens _vY (\ s a -> s{_vY = a}) . mapping _Coerce

instance FromJSON Vertex where
        parseJSON
          = withObject "Vertex"
              (\ o -> Vertex' <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON Vertex where
        toJSON Vertex'{..}
          = object
              (catMaybes [("x" .=) <$> _vX, ("y" .=) <$> _vY])

-- | Detected entity location information.
--
-- /See:/ 'locationInfo' smart constructor.
newtype LocationInfo = LocationInfo'
    { _liLatLng :: Maybe LatLng
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLatLng'
locationInfo
    :: LocationInfo
locationInfo =
    LocationInfo'
    { _liLatLng = Nothing
    }

-- | Lat - long location coordinates.
liLatLng :: Lens' LocationInfo (Maybe LatLng)
liLatLng = lens _liLatLng (\ s a -> s{_liLatLng = a})

instance FromJSON LocationInfo where
        parseJSON
          = withObject "LocationInfo"
              (\ o -> LocationInfo' <$> (o .:? "latLng"))

instance ToJSON LocationInfo where
        toJSON LocationInfo'{..}
          = object (catMaybes [("latLng" .=) <$> _liLatLng])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Multiple image annotation requests are batched into a single service
-- call.
--
-- /See:/ 'batchAnnotateImagesRequest' smart constructor.
newtype BatchAnnotateImagesRequest = BatchAnnotateImagesRequest'
    { _bairRequests :: Maybe [AnnotateImageRequest]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchAnnotateImagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bairRequests'
batchAnnotateImagesRequest
    :: BatchAnnotateImagesRequest
batchAnnotateImagesRequest =
    BatchAnnotateImagesRequest'
    { _bairRequests = Nothing
    }

-- | Individual image annotation requests for this batch.
bairRequests :: Lens' BatchAnnotateImagesRequest [AnnotateImageRequest]
bairRequests
  = lens _bairRequests (\ s a -> s{_bairRequests = a})
      . _Default
      . _Coerce

instance FromJSON BatchAnnotateImagesRequest where
        parseJSON
          = withObject "BatchAnnotateImagesRequest"
              (\ o ->
                 BatchAnnotateImagesRequest' <$>
                   (o .:? "requests" .!= mempty))

instance ToJSON BatchAnnotateImagesRequest where
        toJSON BatchAnnotateImagesRequest'{..}
          = object
              (catMaybes [("requests" .=) <$> _bairRequests])

-- | Color information consists of RGB channels, score and fraction of image
-- the color occupies in the image.
--
-- /See:/ 'colorInfo' smart constructor.
data ColorInfo = ColorInfo'
    { _ciColor         :: !(Maybe Color)
    , _ciScore         :: !(Maybe (Textual Double))
    , _ciPixelFraction :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciColor'
--
-- * 'ciScore'
--
-- * 'ciPixelFraction'
colorInfo
    :: ColorInfo
colorInfo =
    ColorInfo'
    { _ciColor = Nothing
    , _ciScore = Nothing
    , _ciPixelFraction = Nothing
    }

-- | RGB components of the color.
ciColor :: Lens' ColorInfo (Maybe Color)
ciColor = lens _ciColor (\ s a -> s{_ciColor = a})

-- | Image-specific score for this color. Value in range [0, 1].
ciScore :: Lens' ColorInfo (Maybe Double)
ciScore
  = lens _ciScore (\ s a -> s{_ciScore = a}) .
      mapping _Coerce

-- | Stores the fraction of pixels the color occupies in the image. Value in
-- range [0, 1].
ciPixelFraction :: Lens' ColorInfo (Maybe Double)
ciPixelFraction
  = lens _ciPixelFraction
      (\ s a -> s{_ciPixelFraction = a})
      . mapping _Coerce

instance FromJSON ColorInfo where
        parseJSON
          = withObject "ColorInfo"
              (\ o ->
                 ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON ColorInfo where
        toJSON ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _ciColor,
                  ("score" .=) <$> _ciScore,
                  ("pixelFraction" .=) <$> _ciPixelFraction])

-- | Response to an image annotation request.
--
-- /See:/ 'annotateImageResponse' smart constructor.
data AnnotateImageResponse = AnnotateImageResponse'
    { _airLogoAnnotations           :: !(Maybe [EntityAnnotation])
    , _airLabelAnnotations          :: !(Maybe [EntityAnnotation])
    , _airFaceAnnotations           :: !(Maybe [FaceAnnotation])
    , _airError                     :: !(Maybe Status)
    , _airSafeSearchAnnotation      :: !(Maybe SafeSearchAnnotation)
    , _airLandmarkAnnotations       :: !(Maybe [EntityAnnotation])
    , _airTextAnnotations           :: !(Maybe [EntityAnnotation])
    , _airImagePropertiesAnnotation :: !(Maybe ImageProperties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airLogoAnnotations'
--
-- * 'airLabelAnnotations'
--
-- * 'airFaceAnnotations'
--
-- * 'airError'
--
-- * 'airSafeSearchAnnotation'
--
-- * 'airLandmarkAnnotations'
--
-- * 'airTextAnnotations'
--
-- * 'airImagePropertiesAnnotation'
annotateImageResponse
    :: AnnotateImageResponse
annotateImageResponse =
    AnnotateImageResponse'
    { _airLogoAnnotations = Nothing
    , _airLabelAnnotations = Nothing
    , _airFaceAnnotations = Nothing
    , _airError = Nothing
    , _airSafeSearchAnnotation = Nothing
    , _airLandmarkAnnotations = Nothing
    , _airTextAnnotations = Nothing
    , _airImagePropertiesAnnotation = Nothing
    }

-- | If present, logo detection completed successfully.
airLogoAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLogoAnnotations
  = lens _airLogoAnnotations
      (\ s a -> s{_airLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, label detection completed successfully.
airLabelAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLabelAnnotations
  = lens _airLabelAnnotations
      (\ s a -> s{_airLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection completed successfully.
airFaceAnnotations :: Lens' AnnotateImageResponse [FaceAnnotation]
airFaceAnnotations
  = lens _airFaceAnnotations
      (\ s a -> s{_airFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in mage annotations are guaranteed to be correct, even when
-- 'error' is non-empty.
airError :: Lens' AnnotateImageResponse (Maybe Status)
airError = lens _airError (\ s a -> s{_airError = a})

-- | If present, safe-search annotation completed successfully.
airSafeSearchAnnotation :: Lens' AnnotateImageResponse (Maybe SafeSearchAnnotation)
airSafeSearchAnnotation
  = lens _airSafeSearchAnnotation
      (\ s a -> s{_airSafeSearchAnnotation = a})

-- | If present, landmark detection completed successfully.
airLandmarkAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLandmarkAnnotations
  = lens _airLandmarkAnnotations
      (\ s a -> s{_airLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection completed successfully.
airTextAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airTextAnnotations
  = lens _airTextAnnotations
      (\ s a -> s{_airTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, image properties were extracted successfully.
airImagePropertiesAnnotation :: Lens' AnnotateImageResponse (Maybe ImageProperties)
airImagePropertiesAnnotation
  = lens _airImagePropertiesAnnotation
      (\ s a -> s{_airImagePropertiesAnnotation = a})

instance FromJSON AnnotateImageResponse where
        parseJSON
          = withObject "AnnotateImageResponse"
              (\ o ->
                 AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON AnnotateImageResponse where
        toJSON AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _airLogoAnnotations,
                  ("labelAnnotations" .=) <$> _airLabelAnnotations,
                  ("faceAnnotations" .=) <$> _airFaceAnnotations,
                  ("error" .=) <$> _airError,
                  ("safeSearchAnnotation" .=) <$>
                    _airSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$>
                    _airLandmarkAnnotations,
                  ("textAnnotations" .=) <$> _airTextAnnotations,
                  ("imagePropertiesAnnotation" .=) <$>
                    _airImagePropertiesAnnotation])

-- | Stores image properties (e.g. dominant colors).
--
-- /See:/ 'imageProperties' smart constructor.
newtype ImageProperties = ImageProperties'
    { _ipDominantColors :: Maybe DominantColorsAnnotation
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipDominantColors'
imageProperties
    :: ImageProperties
imageProperties =
    ImageProperties'
    { _ipDominantColors = Nothing
    }

-- | If present, dominant colors completed successfully.
ipDominantColors :: Lens' ImageProperties (Maybe DominantColorsAnnotation)
ipDominantColors
  = lens _ipDominantColors
      (\ s a -> s{_ipDominantColors = a})

instance FromJSON ImageProperties where
        parseJSON
          = withObject "ImageProperties"
              (\ o ->
                 ImageProperties' <$> (o .:? "dominantColors"))

instance ToJSON ImageProperties where
        toJSON ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _ipDominantColors])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'faceAnnotation' smart constructor.
data FaceAnnotation = FaceAnnotation'
    { _faTiltAngle              :: !(Maybe (Textual Double))
    , _faBlurredLikelihood      :: !(Maybe FaceAnnotationBlurredLikelihood)
    , _faBoundingPoly           :: !(Maybe BoundingPoly)
    , _faSurpriseLikelihood     :: !(Maybe FaceAnnotationSurpriseLikelihood)
    , _faLandmarkingConfidence  :: !(Maybe (Textual Double))
    , _faPanAngle               :: !(Maybe (Textual Double))
    , _faRollAngle              :: !(Maybe (Textual Double))
    , _faUnderExposedLikelihood :: !(Maybe FaceAnnotationUnderExposedLikelihood)
    , _faFdBoundingPoly         :: !(Maybe BoundingPoly)
    , _faAngerLikelihood        :: !(Maybe FaceAnnotationAngerLikelihood)
    , _faDetectionConfidence    :: !(Maybe (Textual Double))
    , _faHeadwearLikelihood     :: !(Maybe FaceAnnotationHeadwearLikelihood)
    , _faSorrowLikelihood       :: !(Maybe FaceAnnotationSorrowLikelihood)
    , _faJoyLikelihood          :: !(Maybe FaceAnnotationJoyLikelihood)
    , _faLandmarks              :: !(Maybe [Landmark])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faTiltAngle'
--
-- * 'faBlurredLikelihood'
--
-- * 'faBoundingPoly'
--
-- * 'faSurpriseLikelihood'
--
-- * 'faLandmarkingConfidence'
--
-- * 'faPanAngle'
--
-- * 'faRollAngle'
--
-- * 'faUnderExposedLikelihood'
--
-- * 'faFdBoundingPoly'
--
-- * 'faAngerLikelihood'
--
-- * 'faDetectionConfidence'
--
-- * 'faHeadwearLikelihood'
--
-- * 'faSorrowLikelihood'
--
-- * 'faJoyLikelihood'
--
-- * 'faLandmarks'
faceAnnotation
    :: FaceAnnotation
faceAnnotation =
    FaceAnnotation'
    { _faTiltAngle = Nothing
    , _faBlurredLikelihood = Nothing
    , _faBoundingPoly = Nothing
    , _faSurpriseLikelihood = Nothing
    , _faLandmarkingConfidence = Nothing
    , _faPanAngle = Nothing
    , _faRollAngle = Nothing
    , _faUnderExposedLikelihood = Nothing
    , _faFdBoundingPoly = Nothing
    , _faAngerLikelihood = Nothing
    , _faDetectionConfidence = Nothing
    , _faHeadwearLikelihood = Nothing
    , _faSorrowLikelihood = Nothing
    , _faJoyLikelihood = Nothing
    , _faLandmarks = Nothing
    }

-- | Pitch angle. Indicates the upwards\/downwards angle that the face is
-- pointing relative to the image\'s horizontal plane. Range [-180,180].
faTiltAngle :: Lens' FaceAnnotation (Maybe Double)
faTiltAngle
  = lens _faTiltAngle (\ s a -> s{_faTiltAngle = a}) .
      mapping _Coerce

-- | Blurred likelihood.
faBlurredLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationBlurredLikelihood)
faBlurredLikelihood
  = lens _faBlurredLikelihood
      (\ s a -> s{_faBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale, as returned in ImageParams. The
-- bounding box is computed to \"frame\" the face in accordance with human
-- expectations. It is based on the landmarker results. Note that one or
-- more x and\/or y coordinates may not be generated in the BoundingPoly
-- (the polygon will be unbounded) if only a partial face appears in the
-- image to be annotated.
faBoundingPoly :: Lens' FaceAnnotation (Maybe BoundingPoly)
faBoundingPoly
  = lens _faBoundingPoly
      (\ s a -> s{_faBoundingPoly = a})

-- | Surprise likelihood.
faSurpriseLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationSurpriseLikelihood)
faSurpriseLikelihood
  = lens _faSurpriseLikelihood
      (\ s a -> s{_faSurpriseLikelihood = a})

-- | Face landmarking confidence. Range [0, 1].
faLandmarkingConfidence :: Lens' FaceAnnotation (Maybe Double)
faLandmarkingConfidence
  = lens _faLandmarkingConfidence
      (\ s a -> s{_faLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle. Indicates the leftward\/rightward angle that the face is
-- pointing, relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
faPanAngle :: Lens' FaceAnnotation (Maybe Double)
faPanAngle
  = lens _faPanAngle (\ s a -> s{_faPanAngle = a}) .
      mapping _Coerce

-- | Roll angle. Indicates the amount of clockwise\/anti-clockwise rotation
-- of the face relative to the image vertical, about the axis perpendicular
-- to the face. Range [-180,180].
faRollAngle :: Lens' FaceAnnotation (Maybe Double)
faRollAngle
  = lens _faRollAngle (\ s a -> s{_faRollAngle = a}) .
      mapping _Coerce

-- | Under-exposed likelihood.
faUnderExposedLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationUnderExposedLikelihood)
faUnderExposedLikelihood
  = lens _faUnderExposedLikelihood
      (\ s a -> s{_faUnderExposedLikelihood = a})

-- | This bounding polygon is tighter than the previous 'boundingPoly', and
-- encloses only the skin part of the face. Typically, it is used to
-- eliminate the face from any image analysis that detects the \"amount of
-- skin\" visible in an image. It is not based on the landmarker results,
-- only on the initial face detection, hence the 'fd' (face detection)
-- prefix.
faFdBoundingPoly :: Lens' FaceAnnotation (Maybe BoundingPoly)
faFdBoundingPoly
  = lens _faFdBoundingPoly
      (\ s a -> s{_faFdBoundingPoly = a})

-- | Anger likelihood.
faAngerLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationAngerLikelihood)
faAngerLikelihood
  = lens _faAngerLikelihood
      (\ s a -> s{_faAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
faDetectionConfidence :: Lens' FaceAnnotation (Maybe Double)
faDetectionConfidence
  = lens _faDetectionConfidence
      (\ s a -> s{_faDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
faHeadwearLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationHeadwearLikelihood)
faHeadwearLikelihood
  = lens _faHeadwearLikelihood
      (\ s a -> s{_faHeadwearLikelihood = a})

-- | Sorrow likelihood.
faSorrowLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationSorrowLikelihood)
faSorrowLikelihood
  = lens _faSorrowLikelihood
      (\ s a -> s{_faSorrowLikelihood = a})

-- | Joy likelihood.
faJoyLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationJoyLikelihood)
faJoyLikelihood
  = lens _faJoyLikelihood
      (\ s a -> s{_faJoyLikelihood = a})

-- | Detected face landmarks.
faLandmarks :: Lens' FaceAnnotation [Landmark]
faLandmarks
  = lens _faLandmarks (\ s a -> s{_faLandmarks = a}) .
      _Default
      . _Coerce

instance FromJSON FaceAnnotation where
        parseJSON
          = withObject "FaceAnnotation"
              (\ o ->
                 FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON FaceAnnotation where
        toJSON FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _faTiltAngle,
                  ("blurredLikelihood" .=) <$> _faBlurredLikelihood,
                  ("boundingPoly" .=) <$> _faBoundingPoly,
                  ("surpriseLikelihood" .=) <$> _faSurpriseLikelihood,
                  ("landmarkingConfidence" .=) <$>
                    _faLandmarkingConfidence,
                  ("panAngle" .=) <$> _faPanAngle,
                  ("rollAngle" .=) <$> _faRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _faUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _faFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _faAngerLikelihood,
                  ("detectionConfidence" .=) <$>
                    _faDetectionConfidence,
                  ("headwearLikelihood" .=) <$> _faHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _faSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _faJoyLikelihood,
                  ("landmarks" .=) <$> _faLandmarks])

-- | Set of detected entity features.
--
-- /See:/ 'entityAnnotation' smart constructor.
data EntityAnnotation = EntityAnnotation'
    { _eaScore        :: !(Maybe (Textual Double))
    , _eaTopicality   :: !(Maybe (Textual Double))
    , _eaLocale       :: !(Maybe Text)
    , _eaBoundingPoly :: !(Maybe BoundingPoly)
    , _eaConfidence   :: !(Maybe (Textual Double))
    , _eaMid          :: !(Maybe Text)
    , _eaLocations    :: !(Maybe [LocationInfo])
    , _eaDescription  :: !(Maybe Text)
    , _eaProperties   :: !(Maybe [Property])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaScore'
--
-- * 'eaTopicality'
--
-- * 'eaLocale'
--
-- * 'eaBoundingPoly'
--
-- * 'eaConfidence'
--
-- * 'eaMid'
--
-- * 'eaLocations'
--
-- * 'eaDescription'
--
-- * 'eaProperties'
entityAnnotation
    :: EntityAnnotation
entityAnnotation =
    EntityAnnotation'
    { _eaScore = Nothing
    , _eaTopicality = Nothing
    , _eaLocale = Nothing
    , _eaBoundingPoly = Nothing
    , _eaConfidence = Nothing
    , _eaMid = Nothing
    , _eaLocations = Nothing
    , _eaDescription = Nothing
    , _eaProperties = Nothing
    }

-- | Overall score of the result. Range [0, 1].
eaScore :: Lens' EntityAnnotation (Maybe Double)
eaScore
  = lens _eaScore (\ s a -> s{_eaScore = a}) .
      mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \'tower\' to an image containing \'Eiffel
-- Tower\' is likely higher than an image containing a distant towering
-- building, though the confidence that there is a tower may be the same.
-- Range [0, 1].
eaTopicality :: Lens' EntityAnnotation (Maybe Double)
eaTopicality
  = lens _eaTopicality (\ s a -> s{_eaTopicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- 'description' (next field) is expressed.
eaLocale :: Lens' EntityAnnotation (Maybe Text)
eaLocale = lens _eaLocale (\ s a -> s{_eaLocale = a})

-- | Image region to which this entity belongs. Not filled currently for
-- \`LABEL_DETECTION\` features. For \`TEXT_DETECTION\` (OCR),
-- \`boundingPoly\`s are produced for the entire text detected in an image
-- region, followed by \`boundingPoly\`s for each word within the detected
-- text.
eaBoundingPoly :: Lens' EntityAnnotation (Maybe BoundingPoly)
eaBoundingPoly
  = lens _eaBoundingPoly
      (\ s a -> s{_eaBoundingPoly = a})

-- | The accuracy of the entity detection in an image. For example, for an
-- image containing \'Eiffel Tower,\' this field represents the confidence
-- that there is a tower in the query image. Range [0, 1].
eaConfidence :: Lens' EntityAnnotation (Maybe Double)
eaConfidence
  = lens _eaConfidence (\ s a -> s{_eaConfidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs might be available in Knowledge Graph(KG).
-- For more details on KG please see:
-- https:\/\/developers.google.com\/knowledge-graph\/
eaMid :: Lens' EntityAnnotation (Maybe Text)
eaMid = lens _eaMid (\ s a -> s{_eaMid = a})

-- | The location information for the detected entity. Multiple
-- 'LocationInfo' elements can be present since one location may indicate
-- the location of the scene in the query image, and another the location
-- of the place where the query image was taken. Location information is
-- usually present for landmarks.
eaLocations :: Lens' EntityAnnotation [LocationInfo]
eaLocations
  = lens _eaLocations (\ s a -> s{_eaLocations = a}) .
      _Default
      . _Coerce

-- | Entity textual description, expressed in its 'locale' language.
eaDescription :: Lens' EntityAnnotation (Maybe Text)
eaDescription
  = lens _eaDescription
      (\ s a -> s{_eaDescription = a})

-- | Some entities can have additional optional 'Property' fields. For
-- example a different kind of score or string that qualifies the entity.
eaProperties :: Lens' EntityAnnotation [Property]
eaProperties
  = lens _eaProperties (\ s a -> s{_eaProperties = a})
      . _Default
      . _Coerce

instance FromJSON EntityAnnotation where
        parseJSON
          = withObject "EntityAnnotation"
              (\ o ->
                 EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON EntityAnnotation where
        toJSON EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _eaScore,
                  ("topicality" .=) <$> _eaTopicality,
                  ("locale" .=) <$> _eaLocale,
                  ("boundingPoly" .=) <$> _eaBoundingPoly,
                  ("confidence" .=) <$> _eaConfidence,
                  ("mid" .=) <$> _eaMid,
                  ("locations" .=) <$> _eaLocations,
                  ("description" .=) <$> _eaDescription,
                  ("properties" .=) <$> _eaProperties])

-- | Request for performing Google Cloud Vision API tasks over a
-- user-provided image, with user-requested features.
--
-- /See:/ 'annotateImageRequest' smart constructor.
data AnnotateImageRequest = AnnotateImageRequest'
    { _airImage        :: !(Maybe Image)
    , _airFeatures     :: !(Maybe [Feature])
    , _airImageContext :: !(Maybe ImageContext)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotateImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airImage'
--
-- * 'airFeatures'
--
-- * 'airImageContext'
annotateImageRequest
    :: AnnotateImageRequest
annotateImageRequest =
    AnnotateImageRequest'
    { _airImage = Nothing
    , _airFeatures = Nothing
    , _airImageContext = Nothing
    }

-- | The image to be processed.
airImage :: Lens' AnnotateImageRequest (Maybe Image)
airImage = lens _airImage (\ s a -> s{_airImage = a})

-- | Requested features.
airFeatures :: Lens' AnnotateImageRequest [Feature]
airFeatures
  = lens _airFeatures (\ s a -> s{_airFeatures = a}) .
      _Default
      . _Coerce

-- | Additional context that may accompany the image.
airImageContext :: Lens' AnnotateImageRequest (Maybe ImageContext)
airImageContext
  = lens _airImageContext
      (\ s a -> s{_airImageContext = a})

instance FromJSON AnnotateImageRequest where
        parseJSON
          = withObject "AnnotateImageRequest"
              (\ o ->
                 AnnotateImageRequest' <$>
                   (o .:? "image") <*> (o .:? "features" .!= mempty) <*>
                     (o .:? "imageContext"))

instance ToJSON AnnotateImageRequest where
        toJSON AnnotateImageRequest'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _airImage,
                  ("features" .=) <$> _airFeatures,
                  ("imageContext" .=) <$> _airImageContext])

-- | External image source (Google Cloud Storage image location).
--
-- /See:/ 'imageSource' smart constructor.
newtype ImageSource = ImageSource'
    { _isGcsImageURI :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isGcsImageURI'
imageSource
    :: ImageSource
imageSource =
    ImageSource'
    { _isGcsImageURI = Nothing
    }

-- | Google Cloud Storage image URI. It must be in the following form:
-- \`gs:\/\/bucket_name\/object_name\`. For more details, please see:
-- https:\/\/cloud.google.com\/storage\/docs\/reference-uris. NOTE: Cloud
-- Storage object versioning is not supported!
isGcsImageURI :: Lens' ImageSource (Maybe Text)
isGcsImageURI
  = lens _isGcsImageURI
      (\ s a -> s{_isGcsImageURI = a})

instance FromJSON ImageSource where
        parseJSON
          = withObject "ImageSource"
              (\ o -> ImageSource' <$> (o .:? "gcsImageUri"))

instance ToJSON ImageSource where
        toJSON ImageSource'{..}
          = object
              (catMaybes [("gcsImageUri" .=) <$> _isGcsImageURI])

-- | Set of features pertaining to the image, computed by various computer
-- vision methods over safe-search verticals (for example, adult, spoof,
-- medical, violence).
--
-- /See:/ 'safeSearchAnnotation' smart constructor.
data SafeSearchAnnotation = SafeSearchAnnotation'
    { _ssaSpoof    :: !(Maybe SafeSearchAnnotationSpoof)
    , _ssaAdult    :: !(Maybe SafeSearchAnnotationAdult)
    , _ssaMedical  :: !(Maybe SafeSearchAnnotationMedical)
    , _ssaViolence :: !(Maybe SafeSearchAnnotationViolence)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssaSpoof'
--
-- * 'ssaAdult'
--
-- * 'ssaMedical'
--
-- * 'ssaViolence'
safeSearchAnnotation
    :: SafeSearchAnnotation
safeSearchAnnotation =
    SafeSearchAnnotation'
    { _ssaSpoof = Nothing
    , _ssaAdult = Nothing
    , _ssaMedical = Nothing
    , _ssaViolence = Nothing
    }

-- | Spoof likelihood. The likelihood that an obvious modification was made
-- to the image\'s canonical version to make it appear funny or offensive.
ssaSpoof :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationSpoof)
ssaSpoof = lens _ssaSpoof (\ s a -> s{_ssaSpoof = a})

-- | Represents the adult contents likelihood for the image.
ssaAdult :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationAdult)
ssaAdult = lens _ssaAdult (\ s a -> s{_ssaAdult = a})

-- | Likelihood this is a medical image.
ssaMedical :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationMedical)
ssaMedical
  = lens _ssaMedical (\ s a -> s{_ssaMedical = a})

-- | Violence likelihood.
ssaViolence :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationViolence)
ssaViolence
  = lens _ssaViolence (\ s a -> s{_ssaViolence = a})

instance FromJSON SafeSearchAnnotation where
        parseJSON
          = withObject "SafeSearchAnnotation"
              (\ o ->
                 SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "adult") <*>
                     (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON SafeSearchAnnotation where
        toJSON SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _ssaSpoof,
                  ("adult" .=) <$> _ssaAdult,
                  ("medical" .=) <$> _ssaMedical,
                  ("violence" .=) <$> _ssaViolence])

-- | Image context.
--
-- /See:/ 'imageContext' smart constructor.
data ImageContext = ImageContext'
    { _icLanguageHints :: !(Maybe [Text])
    , _icLatLongRect   :: !(Maybe LatLongRect)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icLanguageHints'
--
-- * 'icLatLongRect'
imageContext
    :: ImageContext
imageContext =
    ImageContext'
    { _icLanguageHints = Nothing
    , _icLatLongRect = Nothing
    }

-- | List of languages to use for TEXT_DETECTION. In most cases, an empty
-- value will yield the best results as it will allow text detection to
-- automatically detect the text language. For languages based on the latin
-- alphabet a hint is not needed. In rare cases, when the language of the
-- text in the image is known in advance, setting this hint will help get
-- better results (although it will hurt a great deal if the hint is
-- wrong). Text detection will return an error if one or more of the
-- languages specified here are not supported. The exact list of supported
-- languages are specified here:
-- https:\/\/cloud.google.com\/translate\/v2\/using_rest#language-params
icLanguageHints :: Lens' ImageContext [Text]
icLanguageHints
  = lens _icLanguageHints
      (\ s a -> s{_icLanguageHints = a})
      . _Default
      . _Coerce

-- | Lat\/long rectangle that specifies the location of the image.
icLatLongRect :: Lens' ImageContext (Maybe LatLongRect)
icLatLongRect
  = lens _icLatLongRect
      (\ s a -> s{_icLatLongRect = a})

instance FromJSON ImageContext where
        parseJSON
          = withObject "ImageContext"
              (\ o ->
                 ImageContext' <$>
                   (o .:? "languageHints" .!= mempty) <*>
                     (o .:? "latLongRect"))

instance ToJSON ImageContext where
        toJSON ImageContext'{..}
          = object
              (catMaybes
                 [("languageHints" .=) <$> _icLanguageHints,
                  ("latLongRect" .=) <$> _icLatLongRect])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'dominantColorsAnnotation' smart constructor.
newtype DominantColorsAnnotation = DominantColorsAnnotation'
    { _dcaColors :: Maybe [ColorInfo]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaColors'
dominantColorsAnnotation
    :: DominantColorsAnnotation
dominantColorsAnnotation =
    DominantColorsAnnotation'
    { _dcaColors = Nothing
    }

-- | RGB color values, with their score and pixel fraction.
dcaColors :: Lens' DominantColorsAnnotation [ColorInfo]
dcaColors
  = lens _dcaColors (\ s a -> s{_dcaColors = a}) .
      _Default
      . _Coerce

instance FromJSON DominantColorsAnnotation where
        parseJSON
          = withObject "DominantColorsAnnotation"
              (\ o ->
                 DominantColorsAnnotation' <$>
                   (o .:? "colors" .!= mempty))

instance ToJSON DominantColorsAnnotation where
        toJSON DominantColorsAnnotation'{..}
          = object (catMaybes [("colors" .=) <$> _dcaColors])

-- | Rectangle determined by min and max LatLng pairs.
--
-- /See:/ 'latLongRect' smart constructor.
data LatLongRect = LatLongRect'
    { _llrMaxLatLng :: !(Maybe LatLng)
    , _llrMinLatLng :: !(Maybe LatLng)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LatLongRect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrMaxLatLng'
--
-- * 'llrMinLatLng'
latLongRect
    :: LatLongRect
latLongRect =
    LatLongRect'
    { _llrMaxLatLng = Nothing
    , _llrMinLatLng = Nothing
    }

-- | Max lat\/long pair.
llrMaxLatLng :: Lens' LatLongRect (Maybe LatLng)
llrMaxLatLng
  = lens _llrMaxLatLng (\ s a -> s{_llrMaxLatLng = a})

-- | Min lat\/long pair.
llrMinLatLng :: Lens' LatLongRect (Maybe LatLng)
llrMinLatLng
  = lens _llrMinLatLng (\ s a -> s{_llrMinLatLng = a})

instance FromJSON LatLongRect where
        parseJSON
          = withObject "LatLongRect"
              (\ o ->
                 LatLongRect' <$>
                   (o .:? "maxLatLng") <*> (o .:? "minLatLng"))

instance ToJSON LatLongRect where
        toJSON LatLongRect'{..}
          = object
              (catMaybes
                 [("maxLatLng" .=) <$> _llrMaxLatLng,
                  ("minLatLng" .=) <$> _llrMinLatLng])

-- | Response to a batch image annotation request.
--
-- /See:/ 'batchAnnotateImagesResponse' smart constructor.
newtype BatchAnnotateImagesResponse = BatchAnnotateImagesResponse'
    { _bairResponses :: Maybe [AnnotateImageResponse]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchAnnotateImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bairResponses'
batchAnnotateImagesResponse
    :: BatchAnnotateImagesResponse
batchAnnotateImagesResponse =
    BatchAnnotateImagesResponse'
    { _bairResponses = Nothing
    }

-- | Individual responses to image annotation requests within the batch.
bairResponses :: Lens' BatchAnnotateImagesResponse [AnnotateImageResponse]
bairResponses
  = lens _bairResponses
      (\ s a -> s{_bairResponses = a})
      . _Default
      . _Coerce

instance FromJSON BatchAnnotateImagesResponse where
        parseJSON
          = withObject "BatchAnnotateImagesResponse"
              (\ o ->
                 BatchAnnotateImagesResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON BatchAnnotateImagesResponse where
        toJSON BatchAnnotateImagesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _bairResponses])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'position' smart constructor.
data Position = Position'
    { _pZ :: !(Maybe (Textual Double))
    , _pX :: !(Maybe (Textual Double))
    , _pY :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pZ'
--
-- * 'pX'
--
-- * 'pY'
position
    :: Position
position =
    Position'
    { _pZ = Nothing
    , _pX = Nothing
    , _pY = Nothing
    }

-- | Z coordinate (or depth).
pZ :: Lens' Position (Maybe Double)
pZ = lens _pZ (\ s a -> s{_pZ = a}) . mapping _Coerce

-- | X coordinate.
pX :: Lens' Position (Maybe Double)
pX = lens _pX (\ s a -> s{_pX = a}) . mapping _Coerce

-- | Y coordinate.
pY :: Lens' Position (Maybe Double)
pY = lens _pY (\ s a -> s{_pY = a}) . mapping _Coerce

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON Position where
        toJSON Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _pZ, ("x" .=) <$> _pX,
                  ("y" .=) <$> _pY])
