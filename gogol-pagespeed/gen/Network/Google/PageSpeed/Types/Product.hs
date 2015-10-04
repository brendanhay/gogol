{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
-- /See:/ 'pagespeedAPIImageV2' smart constructor.
data PagespeedAPIImageV2 = PagespeedAPIImageV2
    { _paivHeight   :: !(Maybe Int32)
    , _paivData     :: !(Maybe Word8)
    , _paivMimeType :: !(Maybe Text)
    , _paivWidth    :: !(Maybe Int32)
    , _paivPageRect :: !(Maybe Page_rect)
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
paivPageRect :: Lens' PagespeedAPIImageV2 (Maybe Page_rect)
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
-- /See:/ 'rectsItem' smart constructor.
data RectsItem = RectsItem
    { _riHeight :: !(Maybe Int32)
    , _riLeft   :: !(Maybe Int32)
    , _riWidth  :: !(Maybe Int32)
    , _riTop    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riHeight'
--
-- * 'riLeft'
--
-- * 'riWidth'
--
-- * 'riTop'
rectsItem
    :: RectsItem
rectsItem =
    RectsItem
    { _riHeight = Nothing
    , _riLeft = Nothing
    , _riWidth = Nothing
    , _riTop = Nothing
    }

-- | The height of the rect.
riHeight :: Lens' RectsItem (Maybe Int32)
riHeight = lens _riHeight (\ s a -> s{_riHeight = a})

-- | The left coordinate of the rect, in page coordinates.
riLeft :: Lens' RectsItem (Maybe Int32)
riLeft = lens _riLeft (\ s a -> s{_riLeft = a})

-- | The width of the rect.
riWidth :: Lens' RectsItem (Maybe Int32)
riWidth = lens _riWidth (\ s a -> s{_riWidth = a})

-- | The top coordinate of the rect, in page coordinates.
riTop :: Lens' RectsItem (Maybe Int32)
riTop = lens _riTop (\ s a -> s{_riTop = a})

instance FromJSON RectsItem where
        parseJSON
          = withObject "RectsItem"
              (\ o ->
                 RectsItem <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON RectsItem where
        toJSON RectsItem{..}
          = object
              (catMaybes
                 [("height" .=) <$> _riHeight,
                  ("left" .=) <$> _riLeft, ("width" .=) <$> _riWidth,
                  ("top" .=) <$> _riTop])

--
-- /See:/ 'result' smart constructor.
data Result = Result
    { _rScreenshot       :: !(Maybe PagespeedAPIImageV2)
    , _rKind             :: !Text
    , _rResponseCode     :: !(Maybe Int32)
    , _rInvalidRules     :: !(Maybe [Text])
    , _rFormattedResults :: !(Maybe FormattedResults)
    , _rVersion          :: !(Maybe Version)
    , _rRuleGroups       :: !(Maybe RuleGroups)
    , _rPageStats        :: !(Maybe PageStats)
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
rFormattedResults :: Lens' Result (Maybe FormattedResults)
rFormattedResults
  = lens _rFormattedResults
      (\ s a -> s{_rFormattedResults = a})

-- | The version of PageSpeed used to generate these results.
rVersion :: Lens' Result (Maybe Version)
rVersion = lens _rVersion (\ s a -> s{_rVersion = a})

-- | A map with one entry for each rule group in these results.
rRuleGroups :: Lens' Result (Maybe RuleGroups)
rRuleGroups
  = lens _rRuleGroups (\ s a -> s{_rRuleGroups = a})

-- | Summary statistics for the page, such as number of JavaScript bytes,
-- number of HTML bytes, etc.
rPageStats :: Lens' Result (Maybe PageStats)
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

-- | The region of the page that is captured by this image, with dimensions
-- measured in CSS pixels.
--
-- /See:/ 'page_rect' smart constructor.
data Page_rect = Page_rect
    { _pHeight :: !(Maybe Int32)
    , _pLeft   :: !(Maybe Int32)
    , _pWidth  :: !(Maybe Int32)
    , _pTop    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Page_rect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pHeight'
--
-- * 'pLeft'
--
-- * 'pWidth'
--
-- * 'pTop'
page_rect
    :: Page_rect
page_rect =
    Page_rect
    { _pHeight = Nothing
    , _pLeft = Nothing
    , _pWidth = Nothing
    , _pTop = Nothing
    }

-- | The height of the rect.
pHeight :: Lens' Page_rect (Maybe Int32)
pHeight = lens _pHeight (\ s a -> s{_pHeight = a})

-- | The left coordinate of the rect, in page coordinates.
pLeft :: Lens' Page_rect (Maybe Int32)
pLeft = lens _pLeft (\ s a -> s{_pLeft = a})

-- | The width of the rect.
pWidth :: Lens' Page_rect (Maybe Int32)
pWidth = lens _pWidth (\ s a -> s{_pWidth = a})

-- | The top coordinate of the rect, in page coordinates.
pTop :: Lens' Page_rect (Maybe Int32)
pTop = lens _pTop (\ s a -> s{_pTop = a})

instance FromJSON Page_rect where
        parseJSON
          = withObject "PageRect"
              (\ o ->
                 Page_rect <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON Page_rect where
        toJSON Page_rect{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pHeight, ("left" .=) <$> _pLeft,
                  ("width" .=) <$> _pWidth, ("top" .=) <$> _pTop])

-- | Dictionary of formatted rule results, with one entry for each PageSpeed
-- rule instantiated and run by the server.
--
-- /See:/ 'ruleResults' smart constructor.
data RuleResults =
    RuleResults
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RuleResults' with the minimum fields required to make a request.
--
ruleResults
    :: RuleResults
ruleResults = RuleResults

instance FromJSON RuleResults where
        parseJSON
          = withObject "RuleResults" (\ o -> pure RuleResults)

instance ToJSON RuleResults where
        toJSON = const (Object mempty)

-- | Localized PageSpeed results. Contains a ruleResults entry for each
-- PageSpeed rule instantiated and run by the server.
--
-- /See:/ 'formattedResults' smart constructor.
data FormattedResults = FormattedResults
    { _frLocale      :: !(Maybe Text)
    , _frRuleResults :: !(Maybe RuleResults)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FormattedResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frLocale'
--
-- * 'frRuleResults'
formattedResults
    :: FormattedResults
formattedResults =
    FormattedResults
    { _frLocale = Nothing
    , _frRuleResults = Nothing
    }

-- | The locale of the formattedResults, e.g. \"en_US\".
frLocale :: Lens' FormattedResults (Maybe Text)
frLocale = lens _frLocale (\ s a -> s{_frLocale = a})

-- | Dictionary of formatted rule results, with one entry for each PageSpeed
-- rule instantiated and run by the server.
frRuleResults :: Lens' FormattedResults (Maybe RuleResults)
frRuleResults
  = lens _frRuleResults
      (\ s a -> s{_frRuleResults = a})

instance FromJSON FormattedResults where
        parseJSON
          = withObject "FormattedResults"
              (\ o ->
                 FormattedResults <$>
                   (o .:? "locale") <*> (o .:? "ruleResults"))

instance ToJSON FormattedResults where
        toJSON FormattedResults{..}
          = object
              (catMaybes
                 [("locale" .=) <$> _frLocale,
                  ("ruleResults" .=) <$> _frRuleResults])

-- | The version of PageSpeed used to generate these results.
--
-- /See:/ 'version' smart constructor.
data Version = Version
    { _vMinor :: !(Maybe Int32)
    , _vMajor :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vMinor'
--
-- * 'vMajor'
version
    :: Version
version =
    Version
    { _vMinor = Nothing
    , _vMajor = Nothing
    }

-- | The minor version number of PageSpeed used to generate these results.
vMinor :: Lens' Version (Maybe Int32)
vMinor = lens _vMinor (\ s a -> s{_vMinor = a})

-- | The major version number of PageSpeed used to generate these results.
vMajor :: Lens' Version (Maybe Int32)
vMajor = lens _vMajor (\ s a -> s{_vMajor = a})

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version <$> (o .:? "minor") <*> (o .:? "major"))

instance ToJSON Version where
        toJSON Version{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _vMinor, ("major" .=) <$> _vMajor])

-- | A map with one entry for each rule group in these results.
--
-- /See:/ 'ruleGroups' smart constructor.
data RuleGroups =
    RuleGroups
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RuleGroups' with the minimum fields required to make a request.
--
ruleGroups
    :: RuleGroups
ruleGroups = RuleGroups

instance FromJSON RuleGroups where
        parseJSON
          = withObject "RuleGroups" (\ o -> pure RuleGroups)

instance ToJSON RuleGroups where
        toJSON = const (Object mempty)

--
-- /See:/ 'argsItem' smart constructor.
data ArgsItem = ArgsItem
    { _aiValue          :: !(Maybe Text)
    , _aiRects          :: !(Maybe [RectsItem])
    , _aiKey            :: !(Maybe Text)
    , _aiType           :: !(Maybe Text)
    , _aiSecondaryRects :: !(Maybe [Secondary_rectsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ArgsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiValue'
--
-- * 'aiRects'
--
-- * 'aiKey'
--
-- * 'aiType'
--
-- * 'aiSecondaryRects'
argsItem
    :: ArgsItem
argsItem =
    ArgsItem
    { _aiValue = Nothing
    , _aiRects = Nothing
    , _aiKey = Nothing
    , _aiType = Nothing
    , _aiSecondaryRects = Nothing
    }

-- | Argument value, as a localized string.
aiValue :: Lens' ArgsItem (Maybe Text)
aiValue = lens _aiValue (\ s a -> s{_aiValue = a})

-- | The screen rectangles being referred to, with dimensions measured in CSS
-- pixels. This is only ever used for SNAPSHOT_RECT arguments. If this is
-- absent for a SNAPSHOT_RECT argument, it means that that argument refers
-- to the entire snapshot.
aiRects :: Lens' ArgsItem [RectsItem]
aiRects
  = lens _aiRects (\ s a -> s{_aiRects = a}) . _Default
      . _Coerce

-- | The placeholder key for this arg, as a string.
aiKey :: Lens' ArgsItem (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES,
-- DURATION, VERBATIM_STRING, PERCENTAGE, HYPERLINK, or SNAPSHOT_RECT.
aiType :: Lens' ArgsItem (Maybe Text)
aiType = lens _aiType (\ s a -> s{_aiType = a})

-- | Secondary screen rectangles being referred to, with dimensions measured
-- in CSS pixels. This is only ever used for SNAPSHOT_RECT arguments.
aiSecondaryRects :: Lens' ArgsItem [Secondary_rectsItem]
aiSecondaryRects
  = lens _aiSecondaryRects
      (\ s a -> s{_aiSecondaryRects = a})
      . _Default
      . _Coerce

instance FromJSON ArgsItem where
        parseJSON
          = withObject "ArgsItem"
              (\ o ->
                 ArgsItem <$>
                   (o .:? "value") <*> (o .:? "rects" .!= mempty) <*>
                     (o .:? "key")
                     <*> (o .:? "type")
                     <*> (o .:? "secondary_rects" .!= mempty))

instance ToJSON ArgsItem where
        toJSON ArgsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aiValue,
                  ("rects" .=) <$> _aiRects, ("key" .=) <$> _aiKey,
                  ("type" .=) <$> _aiType,
                  ("secondary_rects" .=) <$> _aiSecondaryRects])

-- | Summary statistics for the page, such as number of JavaScript bytes,
-- number of HTML bytes, etc.
--
-- /See:/ 'pageStats' smart constructor.
data PageStats = PageStats
    { _psHTMLResponseBytes       :: !(Maybe Int64)
    , _psTotalRequestBytes       :: !(Maybe Int64)
    , _psNumberResources         :: !(Maybe Int32)
    , _psNumberStaticResources   :: !(Maybe Int32)
    , _psNumberHosts             :: !(Maybe Int32)
    , _psNumberJsResources       :: !(Maybe Int32)
    , _psNumberCssResources      :: !(Maybe Int32)
    , _psTextResponseBytes       :: !(Maybe Int64)
    , _psFlashResponseBytes      :: !(Maybe Int64)
    , _psImageResponseBytes      :: !(Maybe Int64)
    , _psOtherResponseBytes      :: !(Maybe Int64)
    , _psJavascriptResponseBytes :: !(Maybe Int64)
    , _psCssResponseBytes        :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psHTMLResponseBytes'
--
-- * 'psTotalRequestBytes'
--
-- * 'psNumberResources'
--
-- * 'psNumberStaticResources'
--
-- * 'psNumberHosts'
--
-- * 'psNumberJsResources'
--
-- * 'psNumberCssResources'
--
-- * 'psTextResponseBytes'
--
-- * 'psFlashResponseBytes'
--
-- * 'psImageResponseBytes'
--
-- * 'psOtherResponseBytes'
--
-- * 'psJavascriptResponseBytes'
--
-- * 'psCssResponseBytes'
pageStats
    :: PageStats
pageStats =
    PageStats
    { _psHTMLResponseBytes = Nothing
    , _psTotalRequestBytes = Nothing
    , _psNumberResources = Nothing
    , _psNumberStaticResources = Nothing
    , _psNumberHosts = Nothing
    , _psNumberJsResources = Nothing
    , _psNumberCssResources = Nothing
    , _psTextResponseBytes = Nothing
    , _psFlashResponseBytes = Nothing
    , _psImageResponseBytes = Nothing
    , _psOtherResponseBytes = Nothing
    , _psJavascriptResponseBytes = Nothing
    , _psCssResponseBytes = Nothing
    }

-- | Number of uncompressed response bytes for the main HTML document and all
-- iframes on the page.
psHTMLResponseBytes :: Lens' PageStats (Maybe Int64)
psHTMLResponseBytes
  = lens _psHTMLResponseBytes
      (\ s a -> s{_psHTMLResponseBytes = a})

-- | Total size of all request bytes sent by the page.
psTotalRequestBytes :: Lens' PageStats (Maybe Int64)
psTotalRequestBytes
  = lens _psTotalRequestBytes
      (\ s a -> s{_psTotalRequestBytes = a})

-- | Number of HTTP resources loaded by the page.
psNumberResources :: Lens' PageStats (Maybe Int32)
psNumberResources
  = lens _psNumberResources
      (\ s a -> s{_psNumberResources = a})

-- | Number of static (i.e. cacheable) resources on the page.
psNumberStaticResources :: Lens' PageStats (Maybe Int32)
psNumberStaticResources
  = lens _psNumberStaticResources
      (\ s a -> s{_psNumberStaticResources = a})

-- | Number of unique hosts referenced by the page.
psNumberHosts :: Lens' PageStats (Maybe Int32)
psNumberHosts
  = lens _psNumberHosts
      (\ s a -> s{_psNumberHosts = a})

-- | Number of JavaScript resources referenced by the page.
psNumberJsResources :: Lens' PageStats (Maybe Int32)
psNumberJsResources
  = lens _psNumberJsResources
      (\ s a -> s{_psNumberJsResources = a})

-- | Number of CSS resources referenced by the page.
psNumberCssResources :: Lens' PageStats (Maybe Int32)
psNumberCssResources
  = lens _psNumberCssResources
      (\ s a -> s{_psNumberCssResources = a})

-- | Number of uncompressed response bytes for text resources not covered by
-- other statistics (i.e non-HTML, non-script, non-CSS resources) on the
-- page.
psTextResponseBytes :: Lens' PageStats (Maybe Int64)
psTextResponseBytes
  = lens _psTextResponseBytes
      (\ s a -> s{_psTextResponseBytes = a})

-- | Number of response bytes for flash resources on the page.
psFlashResponseBytes :: Lens' PageStats (Maybe Int64)
psFlashResponseBytes
  = lens _psFlashResponseBytes
      (\ s a -> s{_psFlashResponseBytes = a})

-- | Number of response bytes for image resources on the page.
psImageResponseBytes :: Lens' PageStats (Maybe Int64)
psImageResponseBytes
  = lens _psImageResponseBytes
      (\ s a -> s{_psImageResponseBytes = a})

-- | Number of response bytes for other resources on the page.
psOtherResponseBytes :: Lens' PageStats (Maybe Int64)
psOtherResponseBytes
  = lens _psOtherResponseBytes
      (\ s a -> s{_psOtherResponseBytes = a})

-- | Number of uncompressed response bytes for JS resources on the page.
psJavascriptResponseBytes :: Lens' PageStats (Maybe Int64)
psJavascriptResponseBytes
  = lens _psJavascriptResponseBytes
      (\ s a -> s{_psJavascriptResponseBytes = a})

-- | Number of uncompressed response bytes for CSS resources on the page.
psCssResponseBytes :: Lens' PageStats (Maybe Int64)
psCssResponseBytes
  = lens _psCssResponseBytes
      (\ s a -> s{_psCssResponseBytes = a})

instance FromJSON PageStats where
        parseJSON
          = withObject "PageStats"
              (\ o ->
                 PageStats <$>
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

instance ToJSON PageStats where
        toJSON PageStats{..}
          = object
              (catMaybes
                 [("htmlResponseBytes" .=) <$> _psHTMLResponseBytes,
                  ("totalRequestBytes" .=) <$> _psTotalRequestBytes,
                  ("numberResources" .=) <$> _psNumberResources,
                  ("numberStaticResources" .=) <$>
                    _psNumberStaticResources,
                  ("numberHosts" .=) <$> _psNumberHosts,
                  ("numberJsResources" .=) <$> _psNumberJsResources,
                  ("numberCssResources" .=) <$> _psNumberCssResources,
                  ("textResponseBytes" .=) <$> _psTextResponseBytes,
                  ("flashResponseBytes" .=) <$> _psFlashResponseBytes,
                  ("imageResponseBytes" .=) <$> _psImageResponseBytes,
                  ("otherResponseBytes" .=) <$> _psOtherResponseBytes,
                  ("javascriptResponseBytes" .=) <$>
                    _psJavascriptResponseBytes,
                  ("cssResponseBytes" .=) <$> _psCssResponseBytes])

--
-- /See:/ 'secondary_rectsItem' smart constructor.
data Secondary_rectsItem = Secondary_rectsItem
    { _siHeight :: !(Maybe Int32)
    , _siLeft   :: !(Maybe Int32)
    , _siWidth  :: !(Maybe Int32)
    , _siTop    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Secondary_rectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siHeight'
--
-- * 'siLeft'
--
-- * 'siWidth'
--
-- * 'siTop'
secondary_rectsItem
    :: Secondary_rectsItem
secondary_rectsItem =
    Secondary_rectsItem
    { _siHeight = Nothing
    , _siLeft = Nothing
    , _siWidth = Nothing
    , _siTop = Nothing
    }

-- | The height of the rect.
siHeight :: Lens' Secondary_rectsItem (Maybe Int32)
siHeight = lens _siHeight (\ s a -> s{_siHeight = a})

-- | The left coordinate of the rect, in page coordinates.
siLeft :: Lens' Secondary_rectsItem (Maybe Int32)
siLeft = lens _siLeft (\ s a -> s{_siLeft = a})

-- | The width of the rect.
siWidth :: Lens' Secondary_rectsItem (Maybe Int32)
siWidth = lens _siWidth (\ s a -> s{_siWidth = a})

-- | The top coordinate of the rect, in page coordinates.
siTop :: Lens' Secondary_rectsItem (Maybe Int32)
siTop = lens _siTop (\ s a -> s{_siTop = a})

instance FromJSON Secondary_rectsItem where
        parseJSON
          = withObject "SecondaryRectsItem"
              (\ o ->
                 Secondary_rectsItem <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON Secondary_rectsItem where
        toJSON Secondary_rectsItem{..}
          = object
              (catMaybes
                 [("height" .=) <$> _siHeight,
                  ("left" .=) <$> _siLeft, ("width" .=) <$> _siWidth,
                  ("top" .=) <$> _siTop])

--
-- /See:/ 'pagespeedAPIFormatStringV2' smart constructor.
data PagespeedAPIFormatStringV2 = PagespeedAPIFormatStringV2
    { _pafsvArgs   :: !(Maybe [ArgsItem])
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
pafsvArgs :: Lens' PagespeedAPIFormatStringV2 [ArgsItem]
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
