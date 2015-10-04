{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types.Product where

import           Network.Google.CustomSearch.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'promotionImage' smart constructor.
data PromotionImage = PromotionImage
    { _piHeight :: !(Maybe Int32)
    , _piWidth  :: !(Maybe Int32)
    , _piSource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotionImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piHeight'
--
-- * 'piWidth'
--
-- * 'piSource'
promotionImage
    :: PromotionImage
promotionImage =
    PromotionImage
    { _piHeight = Nothing
    , _piWidth = Nothing
    , _piSource = Nothing
    }

piHeight :: Lens' PromotionImage (Maybe Int32)
piHeight = lens _piHeight (\ s a -> s{_piHeight = a})

piWidth :: Lens' PromotionImage (Maybe Int32)
piWidth = lens _piWidth (\ s a -> s{_piWidth = a})

piSource :: Lens' PromotionImage (Maybe Text)
piSource = lens _piSource (\ s a -> s{_piSource = a})

instance FromJSON PromotionImage where
        parseJSON
          = withObject "PromotionImage"
              (\ o ->
                 PromotionImage <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "source"))

instance ToJSON PromotionImage where
        toJSON PromotionImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _piHeight,
                  ("width" .=) <$> _piWidth,
                  ("source" .=) <$> _piSource])

--
-- /See:/ 'queries' smart constructor.
data Queries =
    Queries
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Queries' with the minimum fields required to make a request.
--
queries
    :: Queries
queries = Queries

instance FromJSON Queries where
        parseJSON
          = withObject "Queries" (\ o -> pure Queries)

instance ToJSON Queries where
        toJSON = const (Object mempty)

--
-- /See:/ 'context' smart constructor.
data Context = Context
    { _cFacets :: !(Maybe [[FacetsItemItem]])
    , _cTitle  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cFacets'
--
-- * 'cTitle'
context
    :: Context
context =
    Context
    { _cFacets = Nothing
    , _cTitle = Nothing
    }

cFacets :: Lens' Context [[FacetsItemItem]]
cFacets
  = lens _cFacets (\ s a -> s{_cFacets = a}) . _Default
      . _Coerce

cTitle :: Lens' Context (Maybe Text)
cTitle = lens _cTitle (\ s a -> s{_cTitle = a})

instance FromJSON Context where
        parseJSON
          = withObject "Context"
              (\ o ->
                 Context <$>
                   (o .:? "facets" .!= mempty) <*> (o .:? "title"))

instance ToJSON Context where
        toJSON Context{..}
          = object
              (catMaybes
                 [("facets" .=) <$> _cFacets,
                  ("title" .=) <$> _cTitle])

--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _iThumbnailLink   :: !(Maybe Text)
    , _iHeight          :: !(Maybe Int32)
    , _iByteSize        :: !(Maybe Int32)
    , _iContextLink     :: !(Maybe Text)
    , _iThumbnailHeight :: !(Maybe Int32)
    , _iWidth           :: !(Maybe Int32)
    , _iThumbnailWidth  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iThumbnailLink'
--
-- * 'iHeight'
--
-- * 'iByteSize'
--
-- * 'iContextLink'
--
-- * 'iThumbnailHeight'
--
-- * 'iWidth'
--
-- * 'iThumbnailWidth'
image
    :: Image
image =
    Image
    { _iThumbnailLink = Nothing
    , _iHeight = Nothing
    , _iByteSize = Nothing
    , _iContextLink = Nothing
    , _iThumbnailHeight = Nothing
    , _iWidth = Nothing
    , _iThumbnailWidth = Nothing
    }

iThumbnailLink :: Lens' Image (Maybe Text)
iThumbnailLink
  = lens _iThumbnailLink
      (\ s a -> s{_iThumbnailLink = a})

iHeight :: Lens' Image (Maybe Int32)
iHeight = lens _iHeight (\ s a -> s{_iHeight = a})

iByteSize :: Lens' Image (Maybe Int32)
iByteSize
  = lens _iByteSize (\ s a -> s{_iByteSize = a})

iContextLink :: Lens' Image (Maybe Text)
iContextLink
  = lens _iContextLink (\ s a -> s{_iContextLink = a})

iThumbnailHeight :: Lens' Image (Maybe Int32)
iThumbnailHeight
  = lens _iThumbnailHeight
      (\ s a -> s{_iThumbnailHeight = a})

iWidth :: Lens' Image (Maybe Int32)
iWidth = lens _iWidth (\ s a -> s{_iWidth = a})

iThumbnailWidth :: Lens' Image (Maybe Int32)
iThumbnailWidth
  = lens _iThumbnailWidth
      (\ s a -> s{_iThumbnailWidth = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image <$>
                   (o .:? "thumbnailLink") <*> (o .:? "height") <*>
                     (o .:? "byteSize")
                     <*> (o .:? "contextLink")
                     <*> (o .:? "thumbnailHeight")
                     <*> (o .:? "width")
                     <*> (o .:? "thumbnailWidth"))

instance ToJSON Image where
        toJSON Image{..}
          = object
              (catMaybes
                 [("thumbnailLink" .=) <$> _iThumbnailLink,
                  ("height" .=) <$> _iHeight,
                  ("byteSize" .=) <$> _iByteSize,
                  ("contextLink" .=) <$> _iContextLink,
                  ("thumbnailHeight" .=) <$> _iThumbnailHeight,
                  ("width" .=) <$> _iWidth,
                  ("thumbnailWidth" .=) <$> _iThumbnailWidth])

--
-- /See:/ 'pagemap' smart constructor.
data Pagemap =
    Pagemap
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Pagemap' with the minimum fields required to make a request.
--
pagemap
    :: Pagemap
pagemap = Pagemap

instance FromJSON Pagemap where
        parseJSON
          = withObject "Pagemap" (\ o -> pure Pagemap)

instance ToJSON Pagemap where
        toJSON = const (Object mempty)

--
-- /See:/ 'searchURL' smart constructor.
data SearchURL = SearchURL
    { _suType     :: !Text
    , _suTemplate :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suType'
--
-- * 'suTemplate'
searchURL
    :: SearchURL
searchURL =
    SearchURL
    { _suType = "application/json"
    , _suTemplate = "https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&cref={cref?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json"
    }

suType :: Lens' SearchURL Text
suType = lens _suType (\ s a -> s{_suType = a})

suTemplate :: Lens' SearchURL Text
suTemplate
  = lens _suTemplate (\ s a -> s{_suTemplate = a})

instance FromJSON SearchURL where
        parseJSON
          = withObject "SearchURL"
              (\ o ->
                 SearchURL <$>
                   (o .:? "type" .!= "application/json") <*>
                     (o .:? "template" .!=
                        "https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&cref={cref?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json"))

instance ToJSON SearchURL where
        toJSON SearchURL{..}
          = object
              (catMaybes
                 [Just ("type" .= _suType),
                  Just ("template" .= _suTemplate)])

--
-- /See:/ 'labelsItem' smart constructor.
data LabelsItem = LabelsItem
    { _liName        :: !(Maybe Text)
    , _liDisplayName :: !(Maybe Text)
    , _liLabelWithOp :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LabelsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liName'
--
-- * 'liDisplayName'
--
-- * 'liLabelWithOp'
labelsItem
    :: LabelsItem
labelsItem =
    LabelsItem
    { _liName = Nothing
    , _liDisplayName = Nothing
    , _liLabelWithOp = Nothing
    }

liName :: Lens' LabelsItem (Maybe Text)
liName = lens _liName (\ s a -> s{_liName = a})

liDisplayName :: Lens' LabelsItem (Maybe Text)
liDisplayName
  = lens _liDisplayName
      (\ s a -> s{_liDisplayName = a})

liLabelWithOp :: Lens' LabelsItem (Maybe Text)
liLabelWithOp
  = lens _liLabelWithOp
      (\ s a -> s{_liLabelWithOp = a})

instance FromJSON LabelsItem where
        parseJSON
          = withObject "LabelsItem"
              (\ o ->
                 LabelsItem <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "label_with_op"))

instance ToJSON LabelsItem where
        toJSON LabelsItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _liName,
                  ("displayName" .=) <$> _liDisplayName,
                  ("label_with_op" .=) <$> _liLabelWithOp])

--
-- /See:/ 'facetsItemItem' smart constructor.
data FacetsItemItem = FacetsItemItem
    { _fiiAnchor      :: !(Maybe Text)
    , _fiiLabelWithOp :: !(Maybe Text)
    , _fiiLabel       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FacetsItemItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiiAnchor'
--
-- * 'fiiLabelWithOp'
--
-- * 'fiiLabel'
facetsItemItem
    :: FacetsItemItem
facetsItemItem =
    FacetsItemItem
    { _fiiAnchor = Nothing
    , _fiiLabelWithOp = Nothing
    , _fiiLabel = Nothing
    }

fiiAnchor :: Lens' FacetsItemItem (Maybe Text)
fiiAnchor
  = lens _fiiAnchor (\ s a -> s{_fiiAnchor = a})

fiiLabelWithOp :: Lens' FacetsItemItem (Maybe Text)
fiiLabelWithOp
  = lens _fiiLabelWithOp
      (\ s a -> s{_fiiLabelWithOp = a})

fiiLabel :: Lens' FacetsItemItem (Maybe Text)
fiiLabel = lens _fiiLabel (\ s a -> s{_fiiLabel = a})

instance FromJSON FacetsItemItem where
        parseJSON
          = withObject "FacetsItemItem"
              (\ o ->
                 FacetsItemItem <$>
                   (o .:? "anchor") <*> (o .:? "label_with_op") <*>
                     (o .:? "label"))

instance ToJSON FacetsItemItem where
        toJSON FacetsItemItem{..}
          = object
              (catMaybes
                 [("anchor" .=) <$> _fiiAnchor,
                  ("label_with_op" .=) <$> _fiiLabelWithOp,
                  ("label" .=) <$> _fiiLabel])

--
-- /See:/ 'result' smart constructor.
data Result = Result
    { _rMime             :: !(Maybe Text)
    , _rImage            :: !(Maybe Image)
    , _rPagemap          :: !(Maybe Pagemap)
    , _rDisplayLink      :: !(Maybe Text)
    , _rFileFormat       :: !(Maybe Text)
    , _rSnippet          :: !(Maybe Text)
    , _rKind             :: !Text
    , _rLink             :: !(Maybe Text)
    , _rHTMLSnippet      :: !(Maybe Text)
    , _rHTMLFormattedURL :: !(Maybe Text)
    , _rCacheId          :: !(Maybe Text)
    , _rFormattedURL     :: !(Maybe Text)
    , _rHTMLTitle        :: !(Maybe Text)
    , _rLabels           :: !(Maybe [LabelsItem])
    , _rTitle            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMime'
--
-- * 'rImage'
--
-- * 'rPagemap'
--
-- * 'rDisplayLink'
--
-- * 'rFileFormat'
--
-- * 'rSnippet'
--
-- * 'rKind'
--
-- * 'rLink'
--
-- * 'rHTMLSnippet'
--
-- * 'rHTMLFormattedURL'
--
-- * 'rCacheId'
--
-- * 'rFormattedURL'
--
-- * 'rHTMLTitle'
--
-- * 'rLabels'
--
-- * 'rTitle'
result
    :: Result
result =
    Result
    { _rMime = Nothing
    , _rImage = Nothing
    , _rPagemap = Nothing
    , _rDisplayLink = Nothing
    , _rFileFormat = Nothing
    , _rSnippet = Nothing
    , _rKind = "customsearch#result"
    , _rLink = Nothing
    , _rHTMLSnippet = Nothing
    , _rHTMLFormattedURL = Nothing
    , _rCacheId = Nothing
    , _rFormattedURL = Nothing
    , _rHTMLTitle = Nothing
    , _rLabels = Nothing
    , _rTitle = Nothing
    }

rMime :: Lens' Result (Maybe Text)
rMime = lens _rMime (\ s a -> s{_rMime = a})

rImage :: Lens' Result (Maybe Image)
rImage = lens _rImage (\ s a -> s{_rImage = a})

rPagemap :: Lens' Result (Maybe Pagemap)
rPagemap = lens _rPagemap (\ s a -> s{_rPagemap = a})

rDisplayLink :: Lens' Result (Maybe Text)
rDisplayLink
  = lens _rDisplayLink (\ s a -> s{_rDisplayLink = a})

rFileFormat :: Lens' Result (Maybe Text)
rFileFormat
  = lens _rFileFormat (\ s a -> s{_rFileFormat = a})

rSnippet :: Lens' Result (Maybe Text)
rSnippet = lens _rSnippet (\ s a -> s{_rSnippet = a})

rKind :: Lens' Result Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

rLink :: Lens' Result (Maybe Text)
rLink = lens _rLink (\ s a -> s{_rLink = a})

rHTMLSnippet :: Lens' Result (Maybe Text)
rHTMLSnippet
  = lens _rHTMLSnippet (\ s a -> s{_rHTMLSnippet = a})

rHTMLFormattedURL :: Lens' Result (Maybe Text)
rHTMLFormattedURL
  = lens _rHTMLFormattedURL
      (\ s a -> s{_rHTMLFormattedURL = a})

rCacheId :: Lens' Result (Maybe Text)
rCacheId = lens _rCacheId (\ s a -> s{_rCacheId = a})

rFormattedURL :: Lens' Result (Maybe Text)
rFormattedURL
  = lens _rFormattedURL
      (\ s a -> s{_rFormattedURL = a})

rHTMLTitle :: Lens' Result (Maybe Text)
rHTMLTitle
  = lens _rHTMLTitle (\ s a -> s{_rHTMLTitle = a})

rLabels :: Lens' Result [LabelsItem]
rLabels
  = lens _rLabels (\ s a -> s{_rLabels = a}) . _Default
      . _Coerce

rTitle :: Lens' Result (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result <$>
                   (o .:? "mime") <*> (o .:? "image") <*>
                     (o .:? "pagemap")
                     <*> (o .:? "displayLink")
                     <*> (o .:? "fileFormat")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "customsearch#result")
                     <*> (o .:? "link")
                     <*> (o .:? "htmlSnippet")
                     <*> (o .:? "htmlFormattedUrl")
                     <*> (o .:? "cacheId")
                     <*> (o .:? "formattedUrl")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON Result where
        toJSON Result{..}
          = object
              (catMaybes
                 [("mime" .=) <$> _rMime, ("image" .=) <$> _rImage,
                  ("pagemap" .=) <$> _rPagemap,
                  ("displayLink" .=) <$> _rDisplayLink,
                  ("fileFormat" .=) <$> _rFileFormat,
                  ("snippet" .=) <$> _rSnippet,
                  Just ("kind" .= _rKind), ("link" .=) <$> _rLink,
                  ("htmlSnippet" .=) <$> _rHTMLSnippet,
                  ("htmlFormattedUrl" .=) <$> _rHTMLFormattedURL,
                  ("cacheId" .=) <$> _rCacheId,
                  ("formattedUrl" .=) <$> _rFormattedURL,
                  ("htmlTitle" .=) <$> _rHTMLTitle,
                  ("labels" .=) <$> _rLabels,
                  ("title" .=) <$> _rTitle])

--
-- /See:/ 'searchInformation' smart constructor.
data SearchInformation = SearchInformation
    { _siSearchTime            :: !(Maybe Double)
    , _siFormattedSearchTime   :: !(Maybe Text)
    , _siTotalResults          :: !(Maybe Int64)
    , _siFormattedTotalResults :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSearchTime'
--
-- * 'siFormattedSearchTime'
--
-- * 'siTotalResults'
--
-- * 'siFormattedTotalResults'
searchInformation
    :: SearchInformation
searchInformation =
    SearchInformation
    { _siSearchTime = Nothing
    , _siFormattedSearchTime = Nothing
    , _siTotalResults = Nothing
    , _siFormattedTotalResults = Nothing
    }

siSearchTime :: Lens' SearchInformation (Maybe Double)
siSearchTime
  = lens _siSearchTime (\ s a -> s{_siSearchTime = a})

siFormattedSearchTime :: Lens' SearchInformation (Maybe Text)
siFormattedSearchTime
  = lens _siFormattedSearchTime
      (\ s a -> s{_siFormattedSearchTime = a})

siTotalResults :: Lens' SearchInformation (Maybe Int64)
siTotalResults
  = lens _siTotalResults
      (\ s a -> s{_siTotalResults = a})

siFormattedTotalResults :: Lens' SearchInformation (Maybe Text)
siFormattedTotalResults
  = lens _siFormattedTotalResults
      (\ s a -> s{_siFormattedTotalResults = a})

instance FromJSON SearchInformation where
        parseJSON
          = withObject "SearchInformation"
              (\ o ->
                 SearchInformation <$>
                   (o .:? "searchTime") <*>
                     (o .:? "formattedSearchTime")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "formattedTotalResults"))

instance ToJSON SearchInformation where
        toJSON SearchInformation{..}
          = object
              (catMaybes
                 [("searchTime" .=) <$> _siSearchTime,
                  ("formattedSearchTime" .=) <$>
                    _siFormattedSearchTime,
                  ("totalResults" .=) <$> _siTotalResults,
                  ("formattedTotalResults" .=) <$>
                    _siFormattedTotalResults])

--
-- /See:/ 'query' smart constructor.
data Query = Query
    { _qImgDominantColor       :: !(Maybe Text)
    , _qOutputEncoding         :: !(Maybe Text)
    , _qSiteSearchFilter       :: !(Maybe Text)
    , _qInputEncoding          :: !(Maybe Text)
    , _qOrTerms                :: !(Maybe Text)
    , _qSearchTerms            :: !(Maybe Text)
    , _qStartPage              :: !(Maybe Int32)
    , _qRights                 :: !(Maybe Text)
    , _qCount                  :: !(Maybe Int32)
    , _qExcludeTerms           :: !(Maybe Text)
    , _qFileType               :: !(Maybe Text)
    , _qSearchType             :: !(Maybe Text)
    , _qGoogleHost             :: !(Maybe Text)
    , _qDisableCnTwTranslation :: !(Maybe Text)
    , _qRelatedSite            :: !(Maybe Text)
    , _qHl                     :: !(Maybe Text)
    , _qCref                   :: !(Maybe Text)
    , _qSort                   :: !(Maybe Text)
    , _qLanguage               :: !(Maybe Text)
    , _qSiteSearch             :: !(Maybe Text)
    , _qFilter                 :: !(Maybe Text)
    , _qTotalResults           :: !(Maybe Int64)
    , _qDateRestrict           :: !(Maybe Text)
    , _qTitle                  :: !(Maybe Text)
    , _qLinkSite               :: !(Maybe Text)
    , _qLowRange               :: !(Maybe Text)
    , _qImgType                :: !(Maybe Text)
    , _qGl                     :: !(Maybe Text)
    , _qCx                     :: !(Maybe Text)
    , _qImgColorType           :: !(Maybe Text)
    , _qImgSize                :: !(Maybe Text)
    , _qExactTerms             :: !(Maybe Text)
    , _qStartIndex             :: !(Maybe Int32)
    , _qCr                     :: !(Maybe Text)
    , _qSafe                   :: !(Maybe Text)
    , _qHq                     :: !(Maybe Text)
    , _qHighRange              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qImgDominantColor'
--
-- * 'qOutputEncoding'
--
-- * 'qSiteSearchFilter'
--
-- * 'qInputEncoding'
--
-- * 'qOrTerms'
--
-- * 'qSearchTerms'
--
-- * 'qStartPage'
--
-- * 'qRights'
--
-- * 'qCount'
--
-- * 'qExcludeTerms'
--
-- * 'qFileType'
--
-- * 'qSearchType'
--
-- * 'qGoogleHost'
--
-- * 'qDisableCnTwTranslation'
--
-- * 'qRelatedSite'
--
-- * 'qHl'
--
-- * 'qCref'
--
-- * 'qSort'
--
-- * 'qLanguage'
--
-- * 'qSiteSearch'
--
-- * 'qFilter'
--
-- * 'qTotalResults'
--
-- * 'qDateRestrict'
--
-- * 'qTitle'
--
-- * 'qLinkSite'
--
-- * 'qLowRange'
--
-- * 'qImgType'
--
-- * 'qGl'
--
-- * 'qCx'
--
-- * 'qImgColorType'
--
-- * 'qImgSize'
--
-- * 'qExactTerms'
--
-- * 'qStartIndex'
--
-- * 'qCr'
--
-- * 'qSafe'
--
-- * 'qHq'
--
-- * 'qHighRange'
query
    :: Query
query =
    Query
    { _qImgDominantColor = Nothing
    , _qOutputEncoding = Nothing
    , _qSiteSearchFilter = Nothing
    , _qInputEncoding = Nothing
    , _qOrTerms = Nothing
    , _qSearchTerms = Nothing
    , _qStartPage = Nothing
    , _qRights = Nothing
    , _qCount = Nothing
    , _qExcludeTerms = Nothing
    , _qFileType = Nothing
    , _qSearchType = Nothing
    , _qGoogleHost = Nothing
    , _qDisableCnTwTranslation = Nothing
    , _qRelatedSite = Nothing
    , _qHl = Nothing
    , _qCref = Nothing
    , _qSort = Nothing
    , _qLanguage = Nothing
    , _qSiteSearch = Nothing
    , _qFilter = Nothing
    , _qTotalResults = Nothing
    , _qDateRestrict = Nothing
    , _qTitle = Nothing
    , _qLinkSite = Nothing
    , _qLowRange = Nothing
    , _qImgType = Nothing
    , _qGl = Nothing
    , _qCx = Nothing
    , _qImgColorType = Nothing
    , _qImgSize = Nothing
    , _qExactTerms = Nothing
    , _qStartIndex = Nothing
    , _qCr = Nothing
    , _qSafe = Nothing
    , _qHq = Nothing
    , _qHighRange = Nothing
    }

qImgDominantColor :: Lens' Query (Maybe Text)
qImgDominantColor
  = lens _qImgDominantColor
      (\ s a -> s{_qImgDominantColor = a})

qOutputEncoding :: Lens' Query (Maybe Text)
qOutputEncoding
  = lens _qOutputEncoding
      (\ s a -> s{_qOutputEncoding = a})

qSiteSearchFilter :: Lens' Query (Maybe Text)
qSiteSearchFilter
  = lens _qSiteSearchFilter
      (\ s a -> s{_qSiteSearchFilter = a})

qInputEncoding :: Lens' Query (Maybe Text)
qInputEncoding
  = lens _qInputEncoding
      (\ s a -> s{_qInputEncoding = a})

qOrTerms :: Lens' Query (Maybe Text)
qOrTerms = lens _qOrTerms (\ s a -> s{_qOrTerms = a})

qSearchTerms :: Lens' Query (Maybe Text)
qSearchTerms
  = lens _qSearchTerms (\ s a -> s{_qSearchTerms = a})

qStartPage :: Lens' Query (Maybe Int32)
qStartPage
  = lens _qStartPage (\ s a -> s{_qStartPage = a})

qRights :: Lens' Query (Maybe Text)
qRights = lens _qRights (\ s a -> s{_qRights = a})

qCount :: Lens' Query (Maybe Int32)
qCount = lens _qCount (\ s a -> s{_qCount = a})

qExcludeTerms :: Lens' Query (Maybe Text)
qExcludeTerms
  = lens _qExcludeTerms
      (\ s a -> s{_qExcludeTerms = a})

qFileType :: Lens' Query (Maybe Text)
qFileType
  = lens _qFileType (\ s a -> s{_qFileType = a})

qSearchType :: Lens' Query (Maybe Text)
qSearchType
  = lens _qSearchType (\ s a -> s{_qSearchType = a})

qGoogleHost :: Lens' Query (Maybe Text)
qGoogleHost
  = lens _qGoogleHost (\ s a -> s{_qGoogleHost = a})

qDisableCnTwTranslation :: Lens' Query (Maybe Text)
qDisableCnTwTranslation
  = lens _qDisableCnTwTranslation
      (\ s a -> s{_qDisableCnTwTranslation = a})

qRelatedSite :: Lens' Query (Maybe Text)
qRelatedSite
  = lens _qRelatedSite (\ s a -> s{_qRelatedSite = a})

qHl :: Lens' Query (Maybe Text)
qHl = lens _qHl (\ s a -> s{_qHl = a})

qCref :: Lens' Query (Maybe Text)
qCref = lens _qCref (\ s a -> s{_qCref = a})

qSort :: Lens' Query (Maybe Text)
qSort = lens _qSort (\ s a -> s{_qSort = a})

qLanguage :: Lens' Query (Maybe Text)
qLanguage
  = lens _qLanguage (\ s a -> s{_qLanguage = a})

qSiteSearch :: Lens' Query (Maybe Text)
qSiteSearch
  = lens _qSiteSearch (\ s a -> s{_qSiteSearch = a})

qFilter :: Lens' Query (Maybe Text)
qFilter = lens _qFilter (\ s a -> s{_qFilter = a})

qTotalResults :: Lens' Query (Maybe Int64)
qTotalResults
  = lens _qTotalResults
      (\ s a -> s{_qTotalResults = a})

qDateRestrict :: Lens' Query (Maybe Text)
qDateRestrict
  = lens _qDateRestrict
      (\ s a -> s{_qDateRestrict = a})

qTitle :: Lens' Query (Maybe Text)
qTitle = lens _qTitle (\ s a -> s{_qTitle = a})

qLinkSite :: Lens' Query (Maybe Text)
qLinkSite
  = lens _qLinkSite (\ s a -> s{_qLinkSite = a})

qLowRange :: Lens' Query (Maybe Text)
qLowRange
  = lens _qLowRange (\ s a -> s{_qLowRange = a})

qImgType :: Lens' Query (Maybe Text)
qImgType = lens _qImgType (\ s a -> s{_qImgType = a})

qGl :: Lens' Query (Maybe Text)
qGl = lens _qGl (\ s a -> s{_qGl = a})

qCx :: Lens' Query (Maybe Text)
qCx = lens _qCx (\ s a -> s{_qCx = a})

qImgColorType :: Lens' Query (Maybe Text)
qImgColorType
  = lens _qImgColorType
      (\ s a -> s{_qImgColorType = a})

qImgSize :: Lens' Query (Maybe Text)
qImgSize = lens _qImgSize (\ s a -> s{_qImgSize = a})

qExactTerms :: Lens' Query (Maybe Text)
qExactTerms
  = lens _qExactTerms (\ s a -> s{_qExactTerms = a})

qStartIndex :: Lens' Query (Maybe Int32)
qStartIndex
  = lens _qStartIndex (\ s a -> s{_qStartIndex = a})

qCr :: Lens' Query (Maybe Text)
qCr = lens _qCr (\ s a -> s{_qCr = a})

qSafe :: Lens' Query (Maybe Text)
qSafe = lens _qSafe (\ s a -> s{_qSafe = a})

qHq :: Lens' Query (Maybe Text)
qHq = lens _qHq (\ s a -> s{_qHq = a})

qHighRange :: Lens' Query (Maybe Text)
qHighRange
  = lens _qHighRange (\ s a -> s{_qHighRange = a})

instance FromJSON Query where
        parseJSON
          = withObject "Query"
              (\ o ->
                 Query <$>
                   (o .:? "imgDominantColor") <*>
                     (o .:? "outputEncoding")
                     <*> (o .:? "siteSearchFilter")
                     <*> (o .:? "inputEncoding")
                     <*> (o .:? "orTerms")
                     <*> (o .:? "searchTerms")
                     <*> (o .:? "startPage")
                     <*> (o .:? "rights")
                     <*> (o .:? "count")
                     <*> (o .:? "excludeTerms")
                     <*> (o .:? "fileType")
                     <*> (o .:? "searchType")
                     <*> (o .:? "googleHost")
                     <*> (o .:? "disableCnTwTranslation")
                     <*> (o .:? "relatedSite")
                     <*> (o .:? "hl")
                     <*> (o .:? "cref")
                     <*> (o .:? "sort")
                     <*> (o .:? "language")
                     <*> (o .:? "siteSearch")
                     <*> (o .:? "filter")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dateRestrict")
                     <*> (o .:? "title")
                     <*> (o .:? "linkSite")
                     <*> (o .:? "lowRange")
                     <*> (o .:? "imgType")
                     <*> (o .:? "gl")
                     <*> (o .:? "cx")
                     <*> (o .:? "imgColorType")
                     <*> (o .:? "imgSize")
                     <*> (o .:? "exactTerms")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "cr")
                     <*> (o .:? "safe")
                     <*> (o .:? "hq")
                     <*> (o .:? "highRange"))

instance ToJSON Query where
        toJSON Query{..}
          = object
              (catMaybes
                 [("imgDominantColor" .=) <$> _qImgDominantColor,
                  ("outputEncoding" .=) <$> _qOutputEncoding,
                  ("siteSearchFilter" .=) <$> _qSiteSearchFilter,
                  ("inputEncoding" .=) <$> _qInputEncoding,
                  ("orTerms" .=) <$> _qOrTerms,
                  ("searchTerms" .=) <$> _qSearchTerms,
                  ("startPage" .=) <$> _qStartPage,
                  ("rights" .=) <$> _qRights, ("count" .=) <$> _qCount,
                  ("excludeTerms" .=) <$> _qExcludeTerms,
                  ("fileType" .=) <$> _qFileType,
                  ("searchType" .=) <$> _qSearchType,
                  ("googleHost" .=) <$> _qGoogleHost,
                  ("disableCnTwTranslation" .=) <$>
                    _qDisableCnTwTranslation,
                  ("relatedSite" .=) <$> _qRelatedSite,
                  ("hl" .=) <$> _qHl, ("cref" .=) <$> _qCref,
                  ("sort" .=) <$> _qSort,
                  ("language" .=) <$> _qLanguage,
                  ("siteSearch" .=) <$> _qSiteSearch,
                  ("filter" .=) <$> _qFilter,
                  ("totalResults" .=) <$> _qTotalResults,
                  ("dateRestrict" .=) <$> _qDateRestrict,
                  ("title" .=) <$> _qTitle,
                  ("linkSite" .=) <$> _qLinkSite,
                  ("lowRange" .=) <$> _qLowRange,
                  ("imgType" .=) <$> _qImgType, ("gl" .=) <$> _qGl,
                  ("cx" .=) <$> _qCx,
                  ("imgColorType" .=) <$> _qImgColorType,
                  ("imgSize" .=) <$> _qImgSize,
                  ("exactTerms" .=) <$> _qExactTerms,
                  ("startIndex" .=) <$> _qStartIndex,
                  ("cr" .=) <$> _qCr, ("safe" .=) <$> _qSafe,
                  ("hq" .=) <$> _qHq,
                  ("highRange" .=) <$> _qHighRange])

--
-- /See:/ 'bodyLinesItem' smart constructor.
data BodyLinesItem = BodyLinesItem
    { _bliLink      :: !(Maybe Text)
    , _bliURL       :: !(Maybe Text)
    , _bliHTMLTitle :: !(Maybe Text)
    , _bliTitle     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BodyLinesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bliLink'
--
-- * 'bliURL'
--
-- * 'bliHTMLTitle'
--
-- * 'bliTitle'
bodyLinesItem
    :: BodyLinesItem
bodyLinesItem =
    BodyLinesItem
    { _bliLink = Nothing
    , _bliURL = Nothing
    , _bliHTMLTitle = Nothing
    , _bliTitle = Nothing
    }

bliLink :: Lens' BodyLinesItem (Maybe Text)
bliLink = lens _bliLink (\ s a -> s{_bliLink = a})

bliURL :: Lens' BodyLinesItem (Maybe Text)
bliURL = lens _bliURL (\ s a -> s{_bliURL = a})

bliHTMLTitle :: Lens' BodyLinesItem (Maybe Text)
bliHTMLTitle
  = lens _bliHTMLTitle (\ s a -> s{_bliHTMLTitle = a})

bliTitle :: Lens' BodyLinesItem (Maybe Text)
bliTitle = lens _bliTitle (\ s a -> s{_bliTitle = a})

instance FromJSON BodyLinesItem where
        parseJSON
          = withObject "BodyLinesItem"
              (\ o ->
                 BodyLinesItem <$>
                   (o .:? "link") <*> (o .:? "url") <*>
                     (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON BodyLinesItem where
        toJSON BodyLinesItem{..}
          = object
              (catMaybes
                 [("link" .=) <$> _bliLink, ("url" .=) <$> _bliURL,
                  ("htmlTitle" .=) <$> _bliHTMLTitle,
                  ("title" .=) <$> _bliTitle])

--
-- /See:/ 'promotion' smart constructor.
data Promotion = Promotion
    { _pImage       :: !(Maybe PromotionImage)
    , _pDisplayLink :: !(Maybe Text)
    , _pBodyLines   :: !(Maybe [BodyLinesItem])
    , _pLink        :: !(Maybe Text)
    , _pHTMLTitle   :: !(Maybe Text)
    , _pTitle       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pImage'
--
-- * 'pDisplayLink'
--
-- * 'pBodyLines'
--
-- * 'pLink'
--
-- * 'pHTMLTitle'
--
-- * 'pTitle'
promotion
    :: Promotion
promotion =
    Promotion
    { _pImage = Nothing
    , _pDisplayLink = Nothing
    , _pBodyLines = Nothing
    , _pLink = Nothing
    , _pHTMLTitle = Nothing
    , _pTitle = Nothing
    }

pImage :: Lens' Promotion (Maybe PromotionImage)
pImage = lens _pImage (\ s a -> s{_pImage = a})

pDisplayLink :: Lens' Promotion (Maybe Text)
pDisplayLink
  = lens _pDisplayLink (\ s a -> s{_pDisplayLink = a})

pBodyLines :: Lens' Promotion [BodyLinesItem]
pBodyLines
  = lens _pBodyLines (\ s a -> s{_pBodyLines = a}) .
      _Default
      . _Coerce

pLink :: Lens' Promotion (Maybe Text)
pLink = lens _pLink (\ s a -> s{_pLink = a})

pHTMLTitle :: Lens' Promotion (Maybe Text)
pHTMLTitle
  = lens _pHTMLTitle (\ s a -> s{_pHTMLTitle = a})

pTitle :: Lens' Promotion (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

instance FromJSON Promotion where
        parseJSON
          = withObject "Promotion"
              (\ o ->
                 Promotion <$>
                   (o .:? "image") <*> (o .:? "displayLink") <*>
                     (o .:? "bodyLines" .!= mempty)
                     <*> (o .:? "link")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON Promotion where
        toJSON Promotion{..}
          = object
              (catMaybes
                 [("image" .=) <$> _pImage,
                  ("displayLink" .=) <$> _pDisplayLink,
                  ("bodyLines" .=) <$> _pBodyLines,
                  ("link" .=) <$> _pLink,
                  ("htmlTitle" .=) <$> _pHTMLTitle,
                  ("title" .=) <$> _pTitle])

--
-- /See:/ 'search' smart constructor.
data Search = Search
    { _sQueries           :: !(Maybe Queries)
    , _sContext           :: !(Maybe Context)
    , _sKind              :: !Text
    , _sURL               :: !(Maybe SearchURL)
    , _sItems             :: !(Maybe [Result])
    , _sSearchInformation :: !(Maybe SearchInformation)
    , _sPromotions        :: !(Maybe [Promotion])
    , _sSpelling          :: !(Maybe Spelling)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Search' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQueries'
--
-- * 'sContext'
--
-- * 'sKind'
--
-- * 'sURL'
--
-- * 'sItems'
--
-- * 'sSearchInformation'
--
-- * 'sPromotions'
--
-- * 'sSpelling'
search
    :: Search
search =
    Search
    { _sQueries = Nothing
    , _sContext = Nothing
    , _sKind = "customsearch#search"
    , _sURL = Nothing
    , _sItems = Nothing
    , _sSearchInformation = Nothing
    , _sPromotions = Nothing
    , _sSpelling = Nothing
    }

sQueries :: Lens' Search (Maybe Queries)
sQueries = lens _sQueries (\ s a -> s{_sQueries = a})

sContext :: Lens' Search (Maybe Context)
sContext = lens _sContext (\ s a -> s{_sContext = a})

sKind :: Lens' Search Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

sURL :: Lens' Search (Maybe SearchURL)
sURL = lens _sURL (\ s a -> s{_sURL = a})

sItems :: Lens' Search [Result]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

sSearchInformation :: Lens' Search (Maybe SearchInformation)
sSearchInformation
  = lens _sSearchInformation
      (\ s a -> s{_sSearchInformation = a})

sPromotions :: Lens' Search [Promotion]
sPromotions
  = lens _sPromotions (\ s a -> s{_sPromotions = a}) .
      _Default
      . _Coerce

sSpelling :: Lens' Search (Maybe Spelling)
sSpelling
  = lens _sSpelling (\ s a -> s{_sSpelling = a})

instance FromJSON Search where
        parseJSON
          = withObject "Search"
              (\ o ->
                 Search <$>
                   (o .:? "queries") <*> (o .:? "context") <*>
                     (o .:? "kind" .!= "customsearch#search")
                     <*> (o .:? "url")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "searchInformation")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "spelling"))

instance ToJSON Search where
        toJSON Search{..}
          = object
              (catMaybes
                 [("queries" .=) <$> _sQueries,
                  ("context" .=) <$> _sContext,
                  Just ("kind" .= _sKind), ("url" .=) <$> _sURL,
                  ("items" .=) <$> _sItems,
                  ("searchInformation" .=) <$> _sSearchInformation,
                  ("promotions" .=) <$> _sPromotions,
                  ("spelling" .=) <$> _sSpelling])

--
-- /See:/ 'spelling' smart constructor.
data Spelling = Spelling
    { _sCorrectedQuery     :: !(Maybe Text)
    , _sHTMLCorrectedQuery :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Spelling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCorrectedQuery'
--
-- * 'sHTMLCorrectedQuery'
spelling
    :: Spelling
spelling =
    Spelling
    { _sCorrectedQuery = Nothing
    , _sHTMLCorrectedQuery = Nothing
    }

sCorrectedQuery :: Lens' Spelling (Maybe Text)
sCorrectedQuery
  = lens _sCorrectedQuery
      (\ s a -> s{_sCorrectedQuery = a})

sHTMLCorrectedQuery :: Lens' Spelling (Maybe Text)
sHTMLCorrectedQuery
  = lens _sHTMLCorrectedQuery
      (\ s a -> s{_sHTMLCorrectedQuery = a})

instance FromJSON Spelling where
        parseJSON
          = withObject "Spelling"
              (\ o ->
                 Spelling <$>
                   (o .:? "correctedQuery") <*>
                     (o .:? "htmlCorrectedQuery"))

instance ToJSON Spelling where
        toJSON Spelling{..}
          = object
              (catMaybes
                 [("correctedQuery" .=) <$> _sCorrectedQuery,
                  ("htmlCorrectedQuery" .=) <$> _sHTMLCorrectedQuery])
