{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Product where

import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'resultFormattedResultsRuleResultsAdditionalURLBlocksItem' smart constructor.
data ResultFormattedResultsRuleResultsAdditionalURLBlocksItem = ResultFormattedResultsRuleResultsAdditionalURLBlocksItem'
    { _rfrrraubiURLs   :: !(Maybe [ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem])
    , _rfrrraubiHeader :: !(Maybe PagespeedAPIFormatStringV2)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResultsRuleResultsAdditionalURLBlocksItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrrraubiURLs'
--
-- * 'rfrrraubiHeader'
resultFormattedResultsRuleResultsAdditionalURLBlocksItem
    :: ResultFormattedResultsRuleResultsAdditionalURLBlocksItem
resultFormattedResultsRuleResultsAdditionalURLBlocksItem =
    ResultFormattedResultsRuleResultsAdditionalURLBlocksItem'
    { _rfrrraubiURLs = Nothing
    , _rfrrraubiHeader = Nothing
    }

-- | List of entries that provide information about URLs in the url block.
-- Optional.
rfrrraubiURLs :: Lens' ResultFormattedResultsRuleResultsAdditionalURLBlocksItem [ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem]
rfrrraubiURLs
  = lens _rfrrraubiURLs
      (\ s a -> s{_rfrrraubiURLs = a})
      . _Default
      . _Coerce

-- | Heading to be displayed with the list of URLs.
rfrrraubiHeader :: Lens' ResultFormattedResultsRuleResultsAdditionalURLBlocksItem (Maybe PagespeedAPIFormatStringV2)
rfrrraubiHeader
  = lens _rfrrraubiHeader
      (\ s a -> s{_rfrrraubiHeader = a})

instance FromJSON
         ResultFormattedResultsRuleResultsAdditionalURLBlocksItem
         where
        parseJSON
          = withObject
              "ResultFormattedResultsRuleResultsAdditionalURLBlocksItem"
              (\ o ->
                 ResultFormattedResultsRuleResultsAdditionalURLBlocksItem'
                   <$> (o .:? "urls" .!= mempty) <*> (o .:? "header"))

instance ToJSON
         ResultFormattedResultsRuleResultsAdditionalURLBlocksItem
         where
        toJSON
          ResultFormattedResultsRuleResultsAdditionalURLBlocksItem'{..}
          = object
              (catMaybes
                 [("urls" .=) <$> _rfrrraubiURLs,
                  ("header" .=) <$> _rfrrraubiHeader])

--
-- /See:/ 'pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem' smart constructor.
data PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem = PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem'
    { _pafsvaisiHeight :: !(Maybe (Textual Int32))
    , _pafsvaisiLeft   :: !(Maybe (Textual Int32))
    , _pafsvaisiWidth  :: !(Maybe (Textual Int32))
    , _pafsvaisiTop    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pafsvaisiHeight'
--
-- * 'pafsvaisiLeft'
--
-- * 'pafsvaisiWidth'
--
-- * 'pafsvaisiTop'
pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    :: PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem =
    PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem'
    { _pafsvaisiHeight = Nothing
    , _pafsvaisiLeft = Nothing
    , _pafsvaisiWidth = Nothing
    , _pafsvaisiTop = Nothing
    }

-- | The height of the rect.
pafsvaisiHeight :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiHeight
  = lens _pafsvaisiHeight
      (\ s a -> s{_pafsvaisiHeight = a})
      . mapping _Coerce

-- | The left coordinate of the rect, in page coordinates.
pafsvaisiLeft :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiLeft
  = lens _pafsvaisiLeft
      (\ s a -> s{_pafsvaisiLeft = a})
      . mapping _Coerce

-- | The width of the rect.
pafsvaisiWidth :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiWidth
  = lens _pafsvaisiWidth
      (\ s a -> s{_pafsvaisiWidth = a})
      . mapping _Coerce

-- | The top coordinate of the rect, in page coordinates.
pafsvaisiTop :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiTop
  = lens _pafsvaisiTop (\ s a -> s{_pafsvaisiTop = a})
      . mapping _Coerce

instance FromJSON
         PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
         where
        parseJSON
          = withObject
              "PagespeedAPIFormatStringV2ArgsItemSecondaryRectsItem"
              (\ o ->
                 PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem'
                   <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON
         PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
         where
        toJSON
          PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pafsvaisiHeight,
                  ("left" .=) <$> _pafsvaisiLeft,
                  ("width" .=) <$> _pafsvaisiWidth,
                  ("top" .=) <$> _pafsvaisiTop])

--
-- /See:/ 'pagespeedAPIImageV2' smart constructor.
data PagespeedAPIImageV2 = PagespeedAPIImageV2'
    { _paivHeight   :: !(Maybe (Textual Int32))
    , _paivData     :: !(Maybe Bytes)
    , _paivMimeType :: !(Maybe Text)
    , _paivWidth    :: !(Maybe (Textual Int32))
    , _paivPageRect :: !(Maybe PagespeedAPIImageV2Page_rect)
    , _paivKey      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIImageV2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paivHeight'
--
-- * 'paivData'
--
-- * 'paivMimeType'
--
-- * 'paivWidth'
--
-- * 'paivPageRect'
--
-- * 'paivKey'
pagespeedAPIImageV2
    :: PagespeedAPIImageV2
pagespeedAPIImageV2 =
    PagespeedAPIImageV2'
    { _paivHeight = Nothing
    , _paivData = Nothing
    , _paivMimeType = Nothing
    , _paivWidth = Nothing
    , _paivPageRect = Nothing
    , _paivKey = Nothing
    }

-- | Height of screenshot in pixels.
paivHeight :: Lens' PagespeedAPIImageV2 (Maybe Int32)
paivHeight
  = lens _paivHeight (\ s a -> s{_paivHeight = a}) .
      mapping _Coerce

-- | Image data base64 encoded.
paivData :: Lens' PagespeedAPIImageV2 (Maybe ByteString)
paivData
  = lens _paivData (\ s a -> s{_paivData = a}) .
      mapping _Bytes

-- | Mime type of image data (e.g. \"image\/jpeg\").
paivMimeType :: Lens' PagespeedAPIImageV2 (Maybe Text)
paivMimeType
  = lens _paivMimeType (\ s a -> s{_paivMimeType = a})

-- | Width of screenshot in pixels.
paivWidth :: Lens' PagespeedAPIImageV2 (Maybe Int32)
paivWidth
  = lens _paivWidth (\ s a -> s{_paivWidth = a}) .
      mapping _Coerce

-- | The region of the page that is captured by this image, with dimensions
-- measured in CSS pixels.
paivPageRect :: Lens' PagespeedAPIImageV2 (Maybe PagespeedAPIImageV2Page_rect)
paivPageRect
  = lens _paivPageRect (\ s a -> s{_paivPageRect = a})

-- | Unique string key, if any, identifying this image.
paivKey :: Lens' PagespeedAPIImageV2 (Maybe Text)
paivKey = lens _paivKey (\ s a -> s{_paivKey = a})

instance FromJSON PagespeedAPIImageV2 where
        parseJSON
          = withObject "PagespeedAPIImageV2"
              (\ o ->
                 PagespeedAPIImageV2' <$>
                   (o .:? "height") <*> (o .:? "data") <*>
                     (o .:? "mime_type")
                     <*> (o .:? "width")
                     <*> (o .:? "page_rect")
                     <*> (o .:? "key"))

instance ToJSON PagespeedAPIImageV2 where
        toJSON PagespeedAPIImageV2'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _paivHeight,
                  ("data" .=) <$> _paivData,
                  ("mime_type" .=) <$> _paivMimeType,
                  ("width" .=) <$> _paivWidth,
                  ("page_rect" .=) <$> _paivPageRect,
                  ("key" .=) <$> _paivKey])

--
-- /See:/ 'pagespeedAPIFormatStringV2ArgsItemRectsItem' smart constructor.
data PagespeedAPIFormatStringV2ArgsItemRectsItem = PagespeedAPIFormatStringV2ArgsItemRectsItem'
    { _pafsvairiHeight :: !(Maybe (Textual Int32))
    , _pafsvairiLeft   :: !(Maybe (Textual Int32))
    , _pafsvairiWidth  :: !(Maybe (Textual Int32))
    , _pafsvairiTop    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIFormatStringV2ArgsItemRectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pafsvairiHeight'
--
-- * 'pafsvairiLeft'
--
-- * 'pafsvairiWidth'
--
-- * 'pafsvairiTop'
pagespeedAPIFormatStringV2ArgsItemRectsItem
    :: PagespeedAPIFormatStringV2ArgsItemRectsItem
pagespeedAPIFormatStringV2ArgsItemRectsItem =
    PagespeedAPIFormatStringV2ArgsItemRectsItem'
    { _pafsvairiHeight = Nothing
    , _pafsvairiLeft = Nothing
    , _pafsvairiWidth = Nothing
    , _pafsvairiTop = Nothing
    }

-- | The height of the rect.
pafsvairiHeight :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiHeight
  = lens _pafsvairiHeight
      (\ s a -> s{_pafsvairiHeight = a})
      . mapping _Coerce

-- | The left coordinate of the rect, in page coordinates.
pafsvairiLeft :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiLeft
  = lens _pafsvairiLeft
      (\ s a -> s{_pafsvairiLeft = a})
      . mapping _Coerce

-- | The width of the rect.
pafsvairiWidth :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiWidth
  = lens _pafsvairiWidth
      (\ s a -> s{_pafsvairiWidth = a})
      . mapping _Coerce

-- | The top coordinate of the rect, in page coordinates.
pafsvairiTop :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiTop
  = lens _pafsvairiTop (\ s a -> s{_pafsvairiTop = a})
      . mapping _Coerce

instance FromJSON
         PagespeedAPIFormatStringV2ArgsItemRectsItem where
        parseJSON
          = withObject
              "PagespeedAPIFormatStringV2ArgsItemRectsItem"
              (\ o ->
                 PagespeedAPIFormatStringV2ArgsItemRectsItem' <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON
         PagespeedAPIFormatStringV2ArgsItemRectsItem where
        toJSON
          PagespeedAPIFormatStringV2ArgsItemRectsItem'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pafsvairiHeight,
                  ("left" .=) <$> _pafsvairiLeft,
                  ("width" .=) <$> _pafsvairiWidth,
                  ("top" .=) <$> _pafsvairiTop])

-- | The version of PageSpeed used to generate these results.
--
-- /See:/ 'resultVersion' smart constructor.
data ResultVersion = ResultVersion'
    { _rvMinor :: !(Maybe (Textual Int32))
    , _rvMajor :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvMinor'
--
-- * 'rvMajor'
resultVersion
    :: ResultVersion
resultVersion =
    ResultVersion'
    { _rvMinor = Nothing
    , _rvMajor = Nothing
    }

-- | The minor version number of PageSpeed used to generate these results.
rvMinor :: Lens' ResultVersion (Maybe Int32)
rvMinor
  = lens _rvMinor (\ s a -> s{_rvMinor = a}) .
      mapping _Coerce

-- | The major version number of PageSpeed used to generate these results.
rvMajor :: Lens' ResultVersion (Maybe Int32)
rvMajor
  = lens _rvMajor (\ s a -> s{_rvMajor = a}) .
      mapping _Coerce

instance FromJSON ResultVersion where
        parseJSON
          = withObject "ResultVersion"
              (\ o ->
                 ResultVersion' <$>
                   (o .:? "minor") <*> (o .:? "major"))

instance ToJSON ResultVersion where
        toJSON ResultVersion'{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _rvMinor,
                  ("major" .=) <$> _rvMajor])

-- | Summary statistics for the page, such as number of JavaScript bytes,
-- number of HTML bytes, etc.
--
-- /See:/ 'resultPageStats' smart constructor.
data ResultPageStats = ResultPageStats'
    { _rpsHTMLResponseBytes       :: !(Maybe (Textual Int64))
    , _rpsTotalRequestBytes       :: !(Maybe (Textual Int64))
    , _rpsNumberResources         :: !(Maybe (Textual Int32))
    , _rpsNumberStaticResources   :: !(Maybe (Textual Int32))
    , _rpsNumberHosts             :: !(Maybe (Textual Int32))
    , _rpsNumberJsResources       :: !(Maybe (Textual Int32))
    , _rpsNumberCssResources      :: !(Maybe (Textual Int32))
    , _rpsTextResponseBytes       :: !(Maybe (Textual Int64))
    , _rpsFlashResponseBytes      :: !(Maybe (Textual Int64))
    , _rpsImageResponseBytes      :: !(Maybe (Textual Int64))
    , _rpsOtherResponseBytes      :: !(Maybe (Textual Int64))
    , _rpsJavascriptResponseBytes :: !(Maybe (Textual Int64))
    , _rpsCssResponseBytes        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultPageStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsHTMLResponseBytes'
--
-- * 'rpsTotalRequestBytes'
--
-- * 'rpsNumberResources'
--
-- * 'rpsNumberStaticResources'
--
-- * 'rpsNumberHosts'
--
-- * 'rpsNumberJsResources'
--
-- * 'rpsNumberCssResources'
--
-- * 'rpsTextResponseBytes'
--
-- * 'rpsFlashResponseBytes'
--
-- * 'rpsImageResponseBytes'
--
-- * 'rpsOtherResponseBytes'
--
-- * 'rpsJavascriptResponseBytes'
--
-- * 'rpsCssResponseBytes'
resultPageStats
    :: ResultPageStats
resultPageStats =
    ResultPageStats'
    { _rpsHTMLResponseBytes = Nothing
    , _rpsTotalRequestBytes = Nothing
    , _rpsNumberResources = Nothing
    , _rpsNumberStaticResources = Nothing
    , _rpsNumberHosts = Nothing
    , _rpsNumberJsResources = Nothing
    , _rpsNumberCssResources = Nothing
    , _rpsTextResponseBytes = Nothing
    , _rpsFlashResponseBytes = Nothing
    , _rpsImageResponseBytes = Nothing
    , _rpsOtherResponseBytes = Nothing
    , _rpsJavascriptResponseBytes = Nothing
    , _rpsCssResponseBytes = Nothing
    }

-- | Number of uncompressed response bytes for the main HTML document and all
-- iframes on the page.
rpsHTMLResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsHTMLResponseBytes
  = lens _rpsHTMLResponseBytes
      (\ s a -> s{_rpsHTMLResponseBytes = a})
      . mapping _Coerce

-- | Total size of all request bytes sent by the page.
rpsTotalRequestBytes :: Lens' ResultPageStats (Maybe Int64)
rpsTotalRequestBytes
  = lens _rpsTotalRequestBytes
      (\ s a -> s{_rpsTotalRequestBytes = a})
      . mapping _Coerce

-- | Number of HTTP resources loaded by the page.
rpsNumberResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberResources
  = lens _rpsNumberResources
      (\ s a -> s{_rpsNumberResources = a})
      . mapping _Coerce

-- | Number of static (i.e. cacheable) resources on the page.
rpsNumberStaticResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberStaticResources
  = lens _rpsNumberStaticResources
      (\ s a -> s{_rpsNumberStaticResources = a})
      . mapping _Coerce

-- | Number of unique hosts referenced by the page.
rpsNumberHosts :: Lens' ResultPageStats (Maybe Int32)
rpsNumberHosts
  = lens _rpsNumberHosts
      (\ s a -> s{_rpsNumberHosts = a})
      . mapping _Coerce

-- | Number of JavaScript resources referenced by the page.
rpsNumberJsResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberJsResources
  = lens _rpsNumberJsResources
      (\ s a -> s{_rpsNumberJsResources = a})
      . mapping _Coerce

-- | Number of CSS resources referenced by the page.
rpsNumberCssResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberCssResources
  = lens _rpsNumberCssResources
      (\ s a -> s{_rpsNumberCssResources = a})
      . mapping _Coerce

-- | Number of uncompressed response bytes for text resources not covered by
-- other statistics (i.e non-HTML, non-script, non-CSS resources) on the
-- page.
rpsTextResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsTextResponseBytes
  = lens _rpsTextResponseBytes
      (\ s a -> s{_rpsTextResponseBytes = a})
      . mapping _Coerce

-- | Number of response bytes for flash resources on the page.
rpsFlashResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsFlashResponseBytes
  = lens _rpsFlashResponseBytes
      (\ s a -> s{_rpsFlashResponseBytes = a})
      . mapping _Coerce

-- | Number of response bytes for image resources on the page.
rpsImageResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsImageResponseBytes
  = lens _rpsImageResponseBytes
      (\ s a -> s{_rpsImageResponseBytes = a})
      . mapping _Coerce

-- | Number of response bytes for other resources on the page.
rpsOtherResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsOtherResponseBytes
  = lens _rpsOtherResponseBytes
      (\ s a -> s{_rpsOtherResponseBytes = a})
      . mapping _Coerce

-- | Number of uncompressed response bytes for JS resources on the page.
rpsJavascriptResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsJavascriptResponseBytes
  = lens _rpsJavascriptResponseBytes
      (\ s a -> s{_rpsJavascriptResponseBytes = a})
      . mapping _Coerce

-- | Number of uncompressed response bytes for CSS resources on the page.
rpsCssResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsCssResponseBytes
  = lens _rpsCssResponseBytes
      (\ s a -> s{_rpsCssResponseBytes = a})
      . mapping _Coerce

instance FromJSON ResultPageStats where
        parseJSON
          = withObject "ResultPageStats"
              (\ o ->
                 ResultPageStats' <$>
                   (o .:? "htmlResponseBytes") <*>
                     (o .:? "totalRequestBytes")
                     <*> (o .:? "numberResources")
                     <*> (o .:? "numberStaticResources")
                     <*> (o .:? "numberHosts")
                     <*> (o .:? "numberJsResources")
                     <*> (o .:? "numberCssResources")
                     <*> (o .:? "textResponseBytes")
                     <*> (o .:? "flashResponseBytes")
                     <*> (o .:? "imageResponseBytes")
                     <*> (o .:? "otherResponseBytes")
                     <*> (o .:? "javascriptResponseBytes")
                     <*> (o .:? "cssResponseBytes"))

instance ToJSON ResultPageStats where
        toJSON ResultPageStats'{..}
          = object
              (catMaybes
                 [("htmlResponseBytes" .=) <$> _rpsHTMLResponseBytes,
                  ("totalRequestBytes" .=) <$> _rpsTotalRequestBytes,
                  ("numberResources" .=) <$> _rpsNumberResources,
                  ("numberStaticResources" .=) <$>
                    _rpsNumberStaticResources,
                  ("numberHosts" .=) <$> _rpsNumberHosts,
                  ("numberJsResources" .=) <$> _rpsNumberJsResources,
                  ("numberCssResources" .=) <$> _rpsNumberCssResources,
                  ("textResponseBytes" .=) <$> _rpsTextResponseBytes,
                  ("flashResponseBytes" .=) <$> _rpsFlashResponseBytes,
                  ("imageResponseBytes" .=) <$> _rpsImageResponseBytes,
                  ("otherResponseBytes" .=) <$> _rpsOtherResponseBytes,
                  ("javascriptResponseBytes" .=) <$>
                    _rpsJavascriptResponseBytes,
                  ("cssResponseBytes" .=) <$> _rpsCssResponseBytes])

-- | The region of the page that is captured by this image, with dimensions
-- measured in CSS pixels.
--
-- /See:/ 'pagespeedAPIImageV2Page_rect' smart constructor.
data PagespeedAPIImageV2Page_rect = PagespeedAPIImageV2Page_rect'
    { _paivpHeight :: !(Maybe (Textual Int32))
    , _paivpLeft   :: !(Maybe (Textual Int32))
    , _paivpWidth  :: !(Maybe (Textual Int32))
    , _paivpTop    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIImageV2Page_rect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paivpHeight'
--
-- * 'paivpLeft'
--
-- * 'paivpWidth'
--
-- * 'paivpTop'
pagespeedAPIImageV2Page_rect
    :: PagespeedAPIImageV2Page_rect
pagespeedAPIImageV2Page_rect =
    PagespeedAPIImageV2Page_rect'
    { _paivpHeight = Nothing
    , _paivpLeft = Nothing
    , _paivpWidth = Nothing
    , _paivpTop = Nothing
    }

-- | The height of the rect.
paivpHeight :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpHeight
  = lens _paivpHeight (\ s a -> s{_paivpHeight = a}) .
      mapping _Coerce

-- | The left coordinate of the rect, in page coordinates.
paivpLeft :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpLeft
  = lens _paivpLeft (\ s a -> s{_paivpLeft = a}) .
      mapping _Coerce

-- | The width of the rect.
paivpWidth :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpWidth
  = lens _paivpWidth (\ s a -> s{_paivpWidth = a}) .
      mapping _Coerce

-- | The top coordinate of the rect, in page coordinates.
paivpTop :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpTop
  = lens _paivpTop (\ s a -> s{_paivpTop = a}) .
      mapping _Coerce

instance FromJSON PagespeedAPIImageV2Page_rect where
        parseJSON
          = withObject "PagespeedAPIImageV2PageRect"
              (\ o ->
                 PagespeedAPIImageV2Page_rect' <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON PagespeedAPIImageV2Page_rect where
        toJSON PagespeedAPIImageV2Page_rect'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _paivpHeight,
                  ("left" .=) <$> _paivpLeft,
                  ("width" .=) <$> _paivpWidth,
                  ("top" .=) <$> _paivpTop])

--
-- /See:/ 'result' smart constructor.
data Result = Result'
    { _rScreenshot       :: !(Maybe PagespeedAPIImageV2)
    , _rKind             :: !Text
    , _rResponseCode     :: !(Maybe (Textual Int32))
    , _rInvalidRules     :: !(Maybe [Text])
    , _rFormattedResults :: !(Maybe ResultFormattedResults)
    , _rVersion          :: !(Maybe ResultVersion)
    , _rRuleGroups       :: !(Maybe ResultRuleGroups)
    , _rPageStats        :: !(Maybe ResultPageStats)
    , _rId               :: !(Maybe Text)
    , _rTitle            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rScreenshot'
--
-- * 'rKind'
--
-- * 'rResponseCode'
--
-- * 'rInvalidRules'
--
-- * 'rFormattedResults'
--
-- * 'rVersion'
--
-- * 'rRuleGroups'
--
-- * 'rPageStats'
--
-- * 'rId'
--
-- * 'rTitle'
result
    :: Result
result =
    Result'
    { _rScreenshot = Nothing
    , _rKind = "pagespeedonline#result"
    , _rResponseCode = Nothing
    , _rInvalidRules = Nothing
    , _rFormattedResults = Nothing
    , _rVersion = Nothing
    , _rRuleGroups = Nothing
    , _rPageStats = Nothing
    , _rId = Nothing
    , _rTitle = Nothing
    }

-- | Base64-encoded screenshot of the page that was analyzed.
rScreenshot :: Lens' Result (Maybe PagespeedAPIImageV2)
rScreenshot
  = lens _rScreenshot (\ s a -> s{_rScreenshot = a})

-- | Kind of result.
rKind :: Lens' Result Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Response code for the document. 200 indicates a normal page load.
-- 4xx\/5xx indicates an error.
rResponseCode :: Lens' Result (Maybe Int32)
rResponseCode
  = lens _rResponseCode
      (\ s a -> s{_rResponseCode = a})
      . mapping _Coerce

-- | List of rules that were specified in the request, but which the server
-- did not know how to instantiate.
rInvalidRules :: Lens' Result [Text]
rInvalidRules
  = lens _rInvalidRules
      (\ s a -> s{_rInvalidRules = a})
      . _Default
      . _Coerce

-- | Localized PageSpeed results. Contains a ruleResults entry for each
-- PageSpeed rule instantiated and run by the server.
rFormattedResults :: Lens' Result (Maybe ResultFormattedResults)
rFormattedResults
  = lens _rFormattedResults
      (\ s a -> s{_rFormattedResults = a})

-- | The version of PageSpeed used to generate these results.
rVersion :: Lens' Result (Maybe ResultVersion)
rVersion = lens _rVersion (\ s a -> s{_rVersion = a})

-- | A map with one entry for each rule group in these results.
rRuleGroups :: Lens' Result (Maybe ResultRuleGroups)
rRuleGroups
  = lens _rRuleGroups (\ s a -> s{_rRuleGroups = a})

-- | Summary statistics for the page, such as number of JavaScript bytes,
-- number of HTML bytes, etc.
rPageStats :: Lens' Result (Maybe ResultPageStats)
rPageStats
  = lens _rPageStats (\ s a -> s{_rPageStats = a})

-- | Canonicalized and final URL for the document, after following page
-- redirects (if any).
rId :: Lens' Result (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | Title of the page, as displayed in the browser\'s title bar.
rTitle :: Lens' Result (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result' <$>
                   (o .:? "screenshot") <*>
                     (o .:? "kind" .!= "pagespeedonline#result")
                     <*> (o .:? "responseCode")
                     <*> (o .:? "invalidRules" .!= mempty)
                     <*> (o .:? "formattedResults")
                     <*> (o .:? "version")
                     <*> (o .:? "ruleGroups")
                     <*> (o .:? "pageStats")
                     <*> (o .:? "id")
                     <*> (o .:? "title"))

instance ToJSON Result where
        toJSON Result'{..}
          = object
              (catMaybes
                 [("screenshot" .=) <$> _rScreenshot,
                  Just ("kind" .= _rKind),
                  ("responseCode" .=) <$> _rResponseCode,
                  ("invalidRules" .=) <$> _rInvalidRules,
                  ("formattedResults" .=) <$> _rFormattedResults,
                  ("version" .=) <$> _rVersion,
                  ("ruleGroups" .=) <$> _rRuleGroups,
                  ("pageStats" .=) <$> _rPageStats, ("id" .=) <$> _rId,
                  ("title" .=) <$> _rTitle])

--
-- /See:/ 'pagespeedAPIFormatStringV2ArgsItem' smart constructor.
data PagespeedAPIFormatStringV2ArgsItem = PagespeedAPIFormatStringV2ArgsItem'
    { _pafsvaiValue          :: !(Maybe Text)
    , _pafsvaiRects          :: !(Maybe [PagespeedAPIFormatStringV2ArgsItemRectsItem])
    , _pafsvaiKey            :: !(Maybe Text)
    , _pafsvaiType           :: !(Maybe Text)
    , _pafsvaiSecondaryRects :: !(Maybe [PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIFormatStringV2ArgsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pafsvaiValue'
--
-- * 'pafsvaiRects'
--
-- * 'pafsvaiKey'
--
-- * 'pafsvaiType'
--
-- * 'pafsvaiSecondaryRects'
pagespeedAPIFormatStringV2ArgsItem
    :: PagespeedAPIFormatStringV2ArgsItem
pagespeedAPIFormatStringV2ArgsItem =
    PagespeedAPIFormatStringV2ArgsItem'
    { _pafsvaiValue = Nothing
    , _pafsvaiRects = Nothing
    , _pafsvaiKey = Nothing
    , _pafsvaiType = Nothing
    , _pafsvaiSecondaryRects = Nothing
    }

-- | Argument value, as a localized string.
pafsvaiValue :: Lens' PagespeedAPIFormatStringV2ArgsItem (Maybe Text)
pafsvaiValue
  = lens _pafsvaiValue (\ s a -> s{_pafsvaiValue = a})

-- | The screen rectangles being referred to, with dimensions measured in CSS
-- pixels. This is only ever used for SNAPSHOT_RECT arguments. If this is
-- absent for a SNAPSHOT_RECT argument, it means that that argument refers
-- to the entire snapshot.
pafsvaiRects :: Lens' PagespeedAPIFormatStringV2ArgsItem [PagespeedAPIFormatStringV2ArgsItemRectsItem]
pafsvaiRects
  = lens _pafsvaiRects (\ s a -> s{_pafsvaiRects = a})
      . _Default
      . _Coerce

-- | The placeholder key for this arg, as a string.
pafsvaiKey :: Lens' PagespeedAPIFormatStringV2ArgsItem (Maybe Text)
pafsvaiKey
  = lens _pafsvaiKey (\ s a -> s{_pafsvaiKey = a})

-- | Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES,
-- DURATION, VERBATIM_STRING, PERCENTAGE, HYPERLINK, or SNAPSHOT_RECT.
pafsvaiType :: Lens' PagespeedAPIFormatStringV2ArgsItem (Maybe Text)
pafsvaiType
  = lens _pafsvaiType (\ s a -> s{_pafsvaiType = a})

-- | Secondary screen rectangles being referred to, with dimensions measured
-- in CSS pixels. This is only ever used for SNAPSHOT_RECT arguments.
pafsvaiSecondaryRects :: Lens' PagespeedAPIFormatStringV2ArgsItem [PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem]
pafsvaiSecondaryRects
  = lens _pafsvaiSecondaryRects
      (\ s a -> s{_pafsvaiSecondaryRects = a})
      . _Default
      . _Coerce

instance FromJSON PagespeedAPIFormatStringV2ArgsItem
         where
        parseJSON
          = withObject "PagespeedAPIFormatStringV2ArgsItem"
              (\ o ->
                 PagespeedAPIFormatStringV2ArgsItem' <$>
                   (o .:? "value") <*> (o .:? "rects" .!= mempty) <*>
                     (o .:? "key")
                     <*> (o .:? "type")
                     <*> (o .:? "secondary_rects" .!= mempty))

instance ToJSON PagespeedAPIFormatStringV2ArgsItem
         where
        toJSON PagespeedAPIFormatStringV2ArgsItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pafsvaiValue,
                  ("rects" .=) <$> _pafsvaiRects,
                  ("key" .=) <$> _pafsvaiKey,
                  ("type" .=) <$> _pafsvaiType,
                  ("secondary_rects" .=) <$> _pafsvaiSecondaryRects])

-- | The name of this rule group: one of \"SPEED\" or \"USABILITY\".
--
-- /See:/ 'resultRuleGroupsAdditional' smart constructor.
newtype ResultRuleGroupsAdditional = ResultRuleGroupsAdditional'
    { _rrgaScore :: Maybe (Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultRuleGroupsAdditional' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrgaScore'
resultRuleGroupsAdditional
    :: ResultRuleGroupsAdditional
resultRuleGroupsAdditional =
    ResultRuleGroupsAdditional'
    { _rrgaScore = Nothing
    }

-- | The score (0-100) for this rule group, which indicates how much better a
-- page could be in that category (e.g. how much faster, or how much more
-- usable). A high score indicates little room for improvement, while a
-- lower score indicates more room for improvement.
rrgaScore :: Lens' ResultRuleGroupsAdditional (Maybe Int32)
rrgaScore
  = lens _rrgaScore (\ s a -> s{_rrgaScore = a}) .
      mapping _Coerce

instance FromJSON ResultRuleGroupsAdditional where
        parseJSON
          = withObject "ResultRuleGroupsAdditional"
              (\ o ->
                 ResultRuleGroupsAdditional' <$> (o .:? "score"))

instance ToJSON ResultRuleGroupsAdditional where
        toJSON ResultRuleGroupsAdditional'{..}
          = object (catMaybes [("score" .=) <$> _rrgaScore])

-- | Localized PageSpeed results. Contains a ruleResults entry for each
-- PageSpeed rule instantiated and run by the server.
--
-- /See:/ 'resultFormattedResults' smart constructor.
data ResultFormattedResults = ResultFormattedResults'
    { _rfrLocale      :: !(Maybe Text)
    , _rfrRuleResults :: !(Maybe ResultFormattedResultsRuleResults)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrLocale'
--
-- * 'rfrRuleResults'
resultFormattedResults
    :: ResultFormattedResults
resultFormattedResults =
    ResultFormattedResults'
    { _rfrLocale = Nothing
    , _rfrRuleResults = Nothing
    }

-- | The locale of the formattedResults, e.g. \"en_US\".
rfrLocale :: Lens' ResultFormattedResults (Maybe Text)
rfrLocale
  = lens _rfrLocale (\ s a -> s{_rfrLocale = a})

-- | Dictionary of formatted rule results, with one entry for each PageSpeed
-- rule instantiated and run by the server.
rfrRuleResults :: Lens' ResultFormattedResults (Maybe ResultFormattedResultsRuleResults)
rfrRuleResults
  = lens _rfrRuleResults
      (\ s a -> s{_rfrRuleResults = a})

instance FromJSON ResultFormattedResults where
        parseJSON
          = withObject "ResultFormattedResults"
              (\ o ->
                 ResultFormattedResults' <$>
                   (o .:? "locale") <*> (o .:? "ruleResults"))

instance ToJSON ResultFormattedResults where
        toJSON ResultFormattedResults'{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _rfrLocale,
                  ("ruleResults" .=) <$> _rfrRuleResults])

-- | The enum-like identifier for this rule. For instance \"EnableKeepAlive\"
-- or \"AvoidCssImport\". Not localized.
--
-- /See:/ 'resultFormattedResultsRuleResultsAdditional' smart constructor.
data ResultFormattedResultsRuleResultsAdditional = ResultFormattedResultsRuleResultsAdditional'
    { _rfrrraSummary           :: !(Maybe PagespeedAPIFormatStringV2)
    , _rfrrraRuleImpact        :: !(Maybe (Textual Double))
    , _rfrrraGroups            :: !(Maybe [Text])
    , _rfrrraLocalizedRuleName :: !(Maybe Text)
    , _rfrrraURLBlocks         :: !(Maybe [ResultFormattedResultsRuleResultsAdditionalURLBlocksItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResultsRuleResultsAdditional' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrrraSummary'
--
-- * 'rfrrraRuleImpact'
--
-- * 'rfrrraGroups'
--
-- * 'rfrrraLocalizedRuleName'
--
-- * 'rfrrraURLBlocks'
resultFormattedResultsRuleResultsAdditional
    :: ResultFormattedResultsRuleResultsAdditional
resultFormattedResultsRuleResultsAdditional =
    ResultFormattedResultsRuleResultsAdditional'
    { _rfrrraSummary = Nothing
    , _rfrrraRuleImpact = Nothing
    , _rfrrraGroups = Nothing
    , _rfrrraLocalizedRuleName = Nothing
    , _rfrrraURLBlocks = Nothing
    }

-- | A brief summary description for the rule, indicating at a high level
-- what should be done to follow the rule and what benefit can be gained by
-- doing so.
rfrrraSummary :: Lens' ResultFormattedResultsRuleResultsAdditional (Maybe PagespeedAPIFormatStringV2)
rfrrraSummary
  = lens _rfrrraSummary
      (\ s a -> s{_rfrrraSummary = a})

-- | The impact (unbounded floating point value) that implementing the
-- suggestions for this rule would have on making the page faster. Impact
-- is comparable between rules to determine which rule\'s suggestions would
-- have a higher or lower impact on making a page faster. For instance, if
-- enabling compression would save 1MB, while optimizing images would save
-- 500kB, the enable compression rule would have 2x the impact of the image
-- optimization rule, all other things being equal.
rfrrraRuleImpact :: Lens' ResultFormattedResultsRuleResultsAdditional (Maybe Double)
rfrrraRuleImpact
  = lens _rfrrraRuleImpact
      (\ s a -> s{_rfrrraRuleImpact = a})
      . mapping _Coerce

-- | List of rule groups that this rule belongs to. Each entry in the list is
-- one of \"SPEED\" or \"USABILITY\".
rfrrraGroups :: Lens' ResultFormattedResultsRuleResultsAdditional [Text]
rfrrraGroups
  = lens _rfrrraGroups (\ s a -> s{_rfrrraGroups = a})
      . _Default
      . _Coerce

-- | Localized name of the rule, intended for presentation to a user.
rfrrraLocalizedRuleName :: Lens' ResultFormattedResultsRuleResultsAdditional (Maybe Text)
rfrrraLocalizedRuleName
  = lens _rfrrraLocalizedRuleName
      (\ s a -> s{_rfrrraLocalizedRuleName = a})

-- | List of blocks of URLs. Each block may contain a heading and a list of
-- URLs. Each URL may optionally include additional details.
rfrrraURLBlocks :: Lens' ResultFormattedResultsRuleResultsAdditional [ResultFormattedResultsRuleResultsAdditionalURLBlocksItem]
rfrrraURLBlocks
  = lens _rfrrraURLBlocks
      (\ s a -> s{_rfrrraURLBlocks = a})
      . _Default
      . _Coerce

instance FromJSON
         ResultFormattedResultsRuleResultsAdditional where
        parseJSON
          = withObject
              "ResultFormattedResultsRuleResultsAdditional"
              (\ o ->
                 ResultFormattedResultsRuleResultsAdditional' <$>
                   (o .:? "summary") <*> (o .:? "ruleImpact") <*>
                     (o .:? "groups" .!= mempty)
                     <*> (o .:? "localizedRuleName")
                     <*> (o .:? "urlBlocks" .!= mempty))

instance ToJSON
         ResultFormattedResultsRuleResultsAdditional where
        toJSON
          ResultFormattedResultsRuleResultsAdditional'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _rfrrraSummary,
                  ("ruleImpact" .=) <$> _rfrrraRuleImpact,
                  ("groups" .=) <$> _rfrrraGroups,
                  ("localizedRuleName" .=) <$>
                    _rfrrraLocalizedRuleName,
                  ("urlBlocks" .=) <$> _rfrrraURLBlocks])

-- | A map with one entry for each rule group in these results.
--
-- /See:/ 'resultRuleGroups' smart constructor.
newtype ResultRuleGroups = ResultRuleGroups'
    { _rrgAddtional :: HashMap Text ResultRuleGroupsAdditional
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultRuleGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrgAddtional'
resultRuleGroups
    :: HashMap Text ResultRuleGroupsAdditional -- ^ 'rrgAddtional'
    -> ResultRuleGroups
resultRuleGroups pRrgAddtional_ =
    ResultRuleGroups'
    { _rrgAddtional = _Coerce # pRrgAddtional_
    }

-- | The name of this rule group: one of \"SPEED\" or \"USABILITY\".
rrgAddtional :: Lens' ResultRuleGroups (HashMap Text ResultRuleGroupsAdditional)
rrgAddtional
  = lens _rrgAddtional (\ s a -> s{_rrgAddtional = a})
      . _Coerce

instance FromJSON ResultRuleGroups where
        parseJSON
          = withObject "ResultRuleGroups"
              (\ o -> ResultRuleGroups' <$> (parseJSONObject o))

instance ToJSON ResultRuleGroups where
        toJSON = toJSON . _rrgAddtional

--
-- /See:/ 'pagespeedAPIFormatStringV2' smart constructor.
data PagespeedAPIFormatStringV2 = PagespeedAPIFormatStringV2'
    { _pafsvArgs   :: !(Maybe [PagespeedAPIFormatStringV2ArgsItem])
    , _pafsvFormat :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIFormatStringV2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pafsvArgs'
--
-- * 'pafsvFormat'
pagespeedAPIFormatStringV2
    :: PagespeedAPIFormatStringV2
pagespeedAPIFormatStringV2 =
    PagespeedAPIFormatStringV2'
    { _pafsvArgs = Nothing
    , _pafsvFormat = Nothing
    }

-- | List of arguments for the format string.
pafsvArgs :: Lens' PagespeedAPIFormatStringV2 [PagespeedAPIFormatStringV2ArgsItem]
pafsvArgs
  = lens _pafsvArgs (\ s a -> s{_pafsvArgs = a}) .
      _Default
      . _Coerce

-- | A localized format string with {{FOO}} placeholders, where \'FOO\' is
-- the key of the argument whose value should be substituted. For HYPERLINK
-- arguments, the format string will instead contain {{BEGIN_FOO}} and
-- {{END_FOO}} for the argument with key \'FOO\'.
pafsvFormat :: Lens' PagespeedAPIFormatStringV2 (Maybe Text)
pafsvFormat
  = lens _pafsvFormat (\ s a -> s{_pafsvFormat = a})

instance FromJSON PagespeedAPIFormatStringV2 where
        parseJSON
          = withObject "PagespeedAPIFormatStringV2"
              (\ o ->
                 PagespeedAPIFormatStringV2' <$>
                   (o .:? "args" .!= mempty) <*> (o .:? "format"))

instance ToJSON PagespeedAPIFormatStringV2 where
        toJSON PagespeedAPIFormatStringV2'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _pafsvArgs,
                  ("format" .=) <$> _pafsvFormat])

-- | Dictionary of formatted rule results, with one entry for each PageSpeed
-- rule instantiated and run by the server.
--
-- /See:/ 'resultFormattedResultsRuleResults' smart constructor.
newtype ResultFormattedResultsRuleResults = ResultFormattedResultsRuleResults'
    { _rfrrrAddtional :: HashMap Text ResultFormattedResultsRuleResultsAdditional
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResultsRuleResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrrrAddtional'
resultFormattedResultsRuleResults
    :: HashMap Text ResultFormattedResultsRuleResultsAdditional -- ^ 'rfrrrAddtional'
    -> ResultFormattedResultsRuleResults
resultFormattedResultsRuleResults pRfrrrAddtional_ =
    ResultFormattedResultsRuleResults'
    { _rfrrrAddtional = _Coerce # pRfrrrAddtional_
    }

-- | The enum-like identifier for this rule. For instance \"EnableKeepAlive\"
-- or \"AvoidCssImport\". Not localized.
rfrrrAddtional :: Lens' ResultFormattedResultsRuleResults (HashMap Text ResultFormattedResultsRuleResultsAdditional)
rfrrrAddtional
  = lens _rfrrrAddtional
      (\ s a -> s{_rfrrrAddtional = a})
      . _Coerce

instance FromJSON ResultFormattedResultsRuleResults
         where
        parseJSON
          = withObject "ResultFormattedResultsRuleResults"
              (\ o ->
                 ResultFormattedResultsRuleResults' <$>
                   (parseJSONObject o))

instance ToJSON ResultFormattedResultsRuleResults
         where
        toJSON = toJSON . _rfrrrAddtional

--
-- /See:/ 'resultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem' smart constructor.
data ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem = ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem'
    { _rfrrraubiuiResult  :: !(Maybe PagespeedAPIFormatStringV2)
    , _rfrrraubiuiDetails :: !(Maybe [PagespeedAPIFormatStringV2])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrrraubiuiResult'
--
-- * 'rfrrraubiuiDetails'
resultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
    :: ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
resultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem =
    ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem'
    { _rfrrraubiuiResult = Nothing
    , _rfrrraubiuiDetails = Nothing
    }

-- | A format string that gives information about the URL, and a list of
-- arguments for that format string.
rfrrraubiuiResult :: Lens' ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem (Maybe PagespeedAPIFormatStringV2)
rfrrraubiuiResult
  = lens _rfrrraubiuiResult
      (\ s a -> s{_rfrrraubiuiResult = a})

-- | List of entries that provide additional details about a single URL.
-- Optional.
rfrrraubiuiDetails :: Lens' ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem [PagespeedAPIFormatStringV2]
rfrrraubiuiDetails
  = lens _rfrrraubiuiDetails
      (\ s a -> s{_rfrrraubiuiDetails = a})
      . _Default
      . _Coerce

instance FromJSON
         ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
         where
        parseJSON
          = withObject
              "ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem"
              (\ o ->
                 ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem'
                   <$>
                   (o .:? "result") <*> (o .:? "details" .!= mempty))

instance ToJSON
         ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
         where
        toJSON
          ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem'{..}
          = object
              (catMaybes
                 [("result" .=) <$> _rfrrraubiuiResult,
                  ("details" .=) <$> _rfrrraubiuiDetails])
