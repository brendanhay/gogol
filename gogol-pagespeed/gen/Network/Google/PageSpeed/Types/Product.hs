{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Product where

import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem' smart constructor.
data PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem = PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    { _pafsvaisiHeight :: !(Maybe Int32)
    , _pafsvaisiLeft   :: !(Maybe Int32)
    , _pafsvaisiWidth  :: !(Maybe Int32)
    , _pafsvaisiTop    :: !(Maybe Int32)
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
    PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
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

-- | The left coordinate of the rect, in page coordinates.
pafsvaisiLeft :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiLeft
  = lens _pafsvaisiLeft
      (\ s a -> s{_pafsvaisiLeft = a})

-- | The width of the rect.
pafsvaisiWidth :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiWidth
  = lens _pafsvaisiWidth
      (\ s a -> s{_pafsvaisiWidth = a})

-- | The top coordinate of the rect, in page coordinates.
pafsvaisiTop :: Lens' PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem (Maybe Int32)
pafsvaisiTop
  = lens _pafsvaisiTop (\ s a -> s{_pafsvaisiTop = a})

instance FromJSON
         PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
         where
        parseJSON
          = withObject
              "PagespeedAPIFormatStringV2ArgsItemSecondaryRectsItem"
              (\ o ->
                 PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
                   <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON
         PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
         where
        toJSON
          PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pafsvaisiHeight,
                  ("left" .=) <$> _pafsvaisiLeft,
                  ("width" .=) <$> _pafsvaisiWidth,
                  ("top" .=) <$> _pafsvaisiTop])

--
-- /See:/ 'pagespeedAPIImageV2' smart constructor.
data PagespeedAPIImageV2 = PagespeedAPIImageV2
    { _paivHeight   :: !(Maybe Int32)
    , _paivData     :: !(Maybe Word8)
    , _paivMimeType :: !(Maybe Text)
    , _paivWidth    :: !(Maybe Int32)
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
    PagespeedAPIImageV2
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
  = lens _paivHeight (\ s a -> s{_paivHeight = a})

-- | Image data base64 encoded.
paivData :: Lens' PagespeedAPIImageV2 (Maybe Word8)
paivData = lens _paivData (\ s a -> s{_paivData = a})

-- | Mime type of image data (e.g. \"image\/jpeg\").
paivMimeType :: Lens' PagespeedAPIImageV2 (Maybe Text)
paivMimeType
  = lens _paivMimeType (\ s a -> s{_paivMimeType = a})

-- | Width of screenshot in pixels.
paivWidth :: Lens' PagespeedAPIImageV2 (Maybe Int32)
paivWidth
  = lens _paivWidth (\ s a -> s{_paivWidth = a})

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
                 PagespeedAPIImageV2 <$>
                   (o .:? "height") <*> (o .:? "data") <*>
                     (o .:? "mime_type")
                     <*> (o .:? "width")
                     <*> (o .:? "page_rect")
                     <*> (o .:? "key"))

instance ToJSON PagespeedAPIImageV2 where
        toJSON PagespeedAPIImageV2{..}
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
data PagespeedAPIFormatStringV2ArgsItemRectsItem = PagespeedAPIFormatStringV2ArgsItemRectsItem
    { _pafsvairiHeight :: !(Maybe Int32)
    , _pafsvairiLeft   :: !(Maybe Int32)
    , _pafsvairiWidth  :: !(Maybe Int32)
    , _pafsvairiTop    :: !(Maybe Int32)
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
    PagespeedAPIFormatStringV2ArgsItemRectsItem
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

-- | The left coordinate of the rect, in page coordinates.
pafsvairiLeft :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiLeft
  = lens _pafsvairiLeft
      (\ s a -> s{_pafsvairiLeft = a})

-- | The width of the rect.
pafsvairiWidth :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiWidth
  = lens _pafsvairiWidth
      (\ s a -> s{_pafsvairiWidth = a})

-- | The top coordinate of the rect, in page coordinates.
pafsvairiTop :: Lens' PagespeedAPIFormatStringV2ArgsItemRectsItem (Maybe Int32)
pafsvairiTop
  = lens _pafsvairiTop (\ s a -> s{_pafsvairiTop = a})

instance FromJSON
         PagespeedAPIFormatStringV2ArgsItemRectsItem where
        parseJSON
          = withObject
              "PagespeedAPIFormatStringV2ArgsItemRectsItem"
              (\ o ->
                 PagespeedAPIFormatStringV2ArgsItemRectsItem <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON
         PagespeedAPIFormatStringV2ArgsItemRectsItem where
        toJSON
          PagespeedAPIFormatStringV2ArgsItemRectsItem{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pafsvairiHeight,
                  ("left" .=) <$> _pafsvairiLeft,
                  ("width" .=) <$> _pafsvairiWidth,
                  ("top" .=) <$> _pafsvairiTop])

-- | The version of PageSpeed used to generate these results.
--
-- /See:/ 'resultVersion' smart constructor.
data ResultVersion = ResultVersion
    { _rvMinor :: !(Maybe Int32)
    , _rvMajor :: !(Maybe Int32)
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
    ResultVersion
    { _rvMinor = Nothing
    , _rvMajor = Nothing
    }

-- | The minor version number of PageSpeed used to generate these results.
rvMinor :: Lens' ResultVersion (Maybe Int32)
rvMinor = lens _rvMinor (\ s a -> s{_rvMinor = a})

-- | The major version number of PageSpeed used to generate these results.
rvMajor :: Lens' ResultVersion (Maybe Int32)
rvMajor = lens _rvMajor (\ s a -> s{_rvMajor = a})

instance FromJSON ResultVersion where
        parseJSON
          = withObject "ResultVersion"
              (\ o ->
                 ResultVersion <$>
                   (o .:? "minor") <*> (o .:? "major"))

instance ToJSON ResultVersion where
        toJSON ResultVersion{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _rvMinor,
                  ("major" .=) <$> _rvMajor])

-- | Summary statistics for the page, such as number of JavaScript bytes,
-- number of HTML bytes, etc.
--
-- /See:/ 'resultPageStats' smart constructor.
data ResultPageStats = ResultPageStats
    { _rpsHTMLResponseBytes       :: !(Maybe Int64)
    , _rpsTotalRequestBytes       :: !(Maybe Int64)
    , _rpsNumberResources         :: !(Maybe Int32)
    , _rpsNumberStaticResources   :: !(Maybe Int32)
    , _rpsNumberHosts             :: !(Maybe Int32)
    , _rpsNumberJsResources       :: !(Maybe Int32)
    , _rpsNumberCssResources      :: !(Maybe Int32)
    , _rpsTextResponseBytes       :: !(Maybe Int64)
    , _rpsFlashResponseBytes      :: !(Maybe Int64)
    , _rpsImageResponseBytes      :: !(Maybe Int64)
    , _rpsOtherResponseBytes      :: !(Maybe Int64)
    , _rpsJavascriptResponseBytes :: !(Maybe Int64)
    , _rpsCssResponseBytes        :: !(Maybe Int64)
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
    ResultPageStats
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

-- | Total size of all request bytes sent by the page.
rpsTotalRequestBytes :: Lens' ResultPageStats (Maybe Int64)
rpsTotalRequestBytes
  = lens _rpsTotalRequestBytes
      (\ s a -> s{_rpsTotalRequestBytes = a})

-- | Number of HTTP resources loaded by the page.
rpsNumberResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberResources
  = lens _rpsNumberResources
      (\ s a -> s{_rpsNumberResources = a})

-- | Number of static (i.e. cacheable) resources on the page.
rpsNumberStaticResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberStaticResources
  = lens _rpsNumberStaticResources
      (\ s a -> s{_rpsNumberStaticResources = a})

-- | Number of unique hosts referenced by the page.
rpsNumberHosts :: Lens' ResultPageStats (Maybe Int32)
rpsNumberHosts
  = lens _rpsNumberHosts
      (\ s a -> s{_rpsNumberHosts = a})

-- | Number of JavaScript resources referenced by the page.
rpsNumberJsResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberJsResources
  = lens _rpsNumberJsResources
      (\ s a -> s{_rpsNumberJsResources = a})

-- | Number of CSS resources referenced by the page.
rpsNumberCssResources :: Lens' ResultPageStats (Maybe Int32)
rpsNumberCssResources
  = lens _rpsNumberCssResources
      (\ s a -> s{_rpsNumberCssResources = a})

-- | Number of uncompressed response bytes for text resources not covered by
-- other statistics (i.e non-HTML, non-script, non-CSS resources) on the
-- page.
rpsTextResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsTextResponseBytes
  = lens _rpsTextResponseBytes
      (\ s a -> s{_rpsTextResponseBytes = a})

-- | Number of response bytes for flash resources on the page.
rpsFlashResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsFlashResponseBytes
  = lens _rpsFlashResponseBytes
      (\ s a -> s{_rpsFlashResponseBytes = a})

-- | Number of response bytes for image resources on the page.
rpsImageResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsImageResponseBytes
  = lens _rpsImageResponseBytes
      (\ s a -> s{_rpsImageResponseBytes = a})

-- | Number of response bytes for other resources on the page.
rpsOtherResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsOtherResponseBytes
  = lens _rpsOtherResponseBytes
      (\ s a -> s{_rpsOtherResponseBytes = a})

-- | Number of uncompressed response bytes for JS resources on the page.
rpsJavascriptResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsJavascriptResponseBytes
  = lens _rpsJavascriptResponseBytes
      (\ s a -> s{_rpsJavascriptResponseBytes = a})

-- | Number of uncompressed response bytes for CSS resources on the page.
rpsCssResponseBytes :: Lens' ResultPageStats (Maybe Int64)
rpsCssResponseBytes
  = lens _rpsCssResponseBytes
      (\ s a -> s{_rpsCssResponseBytes = a})

instance FromJSON ResultPageStats where
        parseJSON
          = withObject "ResultPageStats"
              (\ o ->
                 ResultPageStats <$>
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
        toJSON ResultPageStats{..}
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
data PagespeedAPIImageV2Page_rect = PagespeedAPIImageV2Page_rect
    { _paivpHeight :: !(Maybe Int32)
    , _paivpLeft   :: !(Maybe Int32)
    , _paivpWidth  :: !(Maybe Int32)
    , _paivpTop    :: !(Maybe Int32)
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
    PagespeedAPIImageV2Page_rect
    { _paivpHeight = Nothing
    , _paivpLeft = Nothing
    , _paivpWidth = Nothing
    , _paivpTop = Nothing
    }

-- | The height of the rect.
paivpHeight :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpHeight
  = lens _paivpHeight (\ s a -> s{_paivpHeight = a})

-- | The left coordinate of the rect, in page coordinates.
paivpLeft :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpLeft
  = lens _paivpLeft (\ s a -> s{_paivpLeft = a})

-- | The width of the rect.
paivpWidth :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpWidth
  = lens _paivpWidth (\ s a -> s{_paivpWidth = a})

-- | The top coordinate of the rect, in page coordinates.
paivpTop :: Lens' PagespeedAPIImageV2Page_rect (Maybe Int32)
paivpTop = lens _paivpTop (\ s a -> s{_paivpTop = a})

instance FromJSON PagespeedAPIImageV2Page_rect where
        parseJSON
          = withObject "PagespeedAPIImageV2PageRect"
              (\ o ->
                 PagespeedAPIImageV2Page_rect <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON PagespeedAPIImageV2Page_rect where
        toJSON PagespeedAPIImageV2Page_rect{..}
          = object
              (catMaybes
                 [("height" .=) <$> _paivpHeight,
                  ("left" .=) <$> _paivpLeft,
                  ("width" .=) <$> _paivpWidth,
                  ("top" .=) <$> _paivpTop])

--
-- /See:/ 'result' smart constructor.
data Result = Result
    { _rScreenshot       :: !(Maybe PagespeedAPIImageV2)
    , _rKind             :: !Text
    , _rResponseCode     :: !(Maybe Int32)
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
    Result
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
                 Result <$>
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
        toJSON Result{..}
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
data PagespeedAPIFormatStringV2ArgsItem = PagespeedAPIFormatStringV2ArgsItem
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
    PagespeedAPIFormatStringV2ArgsItem
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
                 PagespeedAPIFormatStringV2ArgsItem <$>
                   (o .:? "value") <*> (o .:? "rects" .!= mempty) <*>
                     (o .:? "key")
                     <*> (o .:? "type")
                     <*> (o .:? "secondary_rects" .!= mempty))

instance ToJSON PagespeedAPIFormatStringV2ArgsItem
         where
        toJSON PagespeedAPIFormatStringV2ArgsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pafsvaiValue,
                  ("rects" .=) <$> _pafsvaiRects,
                  ("key" .=) <$> _pafsvaiKey,
                  ("type" .=) <$> _pafsvaiType,
                  ("secondary_rects" .=) <$> _pafsvaiSecondaryRects])

-- | Localized PageSpeed results. Contains a ruleResults entry for each
-- PageSpeed rule instantiated and run by the server.
--
-- /See:/ 'resultFormattedResults' smart constructor.
data ResultFormattedResults = ResultFormattedResults
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
    ResultFormattedResults
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
                 ResultFormattedResults <$>
                   (o .:? "locale") <*> (o .:? "ruleResults"))

instance ToJSON ResultFormattedResults where
        toJSON ResultFormattedResults{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _rfrLocale,
                  ("ruleResults" .=) <$> _rfrRuleResults])

-- | A map with one entry for each rule group in these results.
--
-- /See:/ 'resultRuleGroups' smart constructor.
data ResultRuleGroups =
    ResultRuleGroups
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultRuleGroups' with the minimum fields required to make a request.
--
resultRuleGroups
    :: ResultRuleGroups
resultRuleGroups = ResultRuleGroups

instance FromJSON ResultRuleGroups where
        parseJSON
          = withObject "ResultRuleGroups"
              (\ o -> pure ResultRuleGroups)

instance ToJSON ResultRuleGroups where
        toJSON = const (Object mempty)

--
-- /See:/ 'pagespeedAPIFormatStringV2' smart constructor.
data PagespeedAPIFormatStringV2 = PagespeedAPIFormatStringV2
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
    PagespeedAPIFormatStringV2
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
                 PagespeedAPIFormatStringV2 <$>
                   (o .:? "args" .!= mempty) <*> (o .:? "format"))

instance ToJSON PagespeedAPIFormatStringV2 where
        toJSON PagespeedAPIFormatStringV2{..}
          = object
              (catMaybes
                 [("args" .=) <$> _pafsvArgs,
                  ("format" .=) <$> _pafsvFormat])

-- | Dictionary of formatted rule results, with one entry for each PageSpeed
-- rule instantiated and run by the server.
--
-- /See:/ 'resultFormattedResultsRuleResults' smart constructor.
data ResultFormattedResultsRuleResults =
    ResultFormattedResultsRuleResults
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultFormattedResultsRuleResults' with the minimum fields required to make a request.
--
resultFormattedResultsRuleResults
    :: ResultFormattedResultsRuleResults
resultFormattedResultsRuleResults = ResultFormattedResultsRuleResults

instance FromJSON ResultFormattedResultsRuleResults
         where
        parseJSON
          = withObject "ResultFormattedResultsRuleResults"
              (\ o -> pure ResultFormattedResultsRuleResults)

instance ToJSON ResultFormattedResultsRuleResults
         where
        toJSON = const (Object mempty)
