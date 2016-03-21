{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Search.CSE.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results.
--
-- /See:/ <https://developers.google.com/custom-search/v1/using_rest CustomSearch API Reference> for @search.cse.list@.
module Network.Google.Resource.Search.CSE.List
    (
    -- * REST Resource
      CSEListResource

    -- * Creating a Request
    , cSEList
    , CSEList

    -- * Request Lenses
    , cselImgDominantColor
    , cselSiteSearchFilter
    , cselC2coff
    , cselOrTerms
    , cselStart
    , cselRights
    , cselExcludeTerms
    , cselNum
    , cselFileType
    , cselSearchType
    , cselLr
    , cselQ
    , cselGooglehost
    , cselRelatedSite
    , cselHl
    , cselCref
    , cselSort
    , cselSiteSearch
    , cselFilter
    , cselDateRestrict
    , cselLinkSite
    , cselLowRange
    , cselImgType
    , cselGl
    , cselCx
    , cselImgColorType
    , cselImgSize
    , cselExactTerms
    , cselCr
    , cselSafe
    , cselHq
    , cselHighRange
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @search.cse.list@ method which the
-- 'CSEList' request conforms to.
type CSEListResource =
     "customsearch" :>
       "v1" :>
         QueryParam "q" Text :>
           QueryParam "imgDominantColor" CSEListImgDominantColor
             :>
             QueryParam "siteSearchFilter" CSEListSiteSearchFilter
               :>
               QueryParam "c2coff" Text :>
                 QueryParam "orTerms" Text :>
                   QueryParam "start" (Textual Word32) :>
                     QueryParam "rights" Text :>
                       QueryParam "excludeTerms" Text :>
                         QueryParam "num" (Textual Word32) :>
                           QueryParam "fileType" Text :>
                             QueryParam "searchType" CSEListSearchType :>
                               QueryParam "lr" CSEListLr :>
                                 QueryParam "googlehost" Text :>
                                   QueryParam "relatedSite" Text :>
                                     QueryParam "hl" Text :>
                                       QueryParam "cref" Text :>
                                         QueryParam "sort" Text :>
                                           QueryParam "siteSearch" Text :>
                                             QueryParam "filter" CSEListFilter
                                               :>
                                               QueryParam "dateRestrict" Text :>
                                                 QueryParam "linkSite" Text :>
                                                   QueryParam "lowRange" Text :>
                                                     QueryParam "imgType"
                                                       CSEListImgType
                                                       :>
                                                       QueryParam "gl" Text :>
                                                         QueryParam "cx" Text :>
                                                           QueryParam
                                                             "imgColorType"
                                                             CSEListImgColorType
                                                             :>
                                                             QueryParam
                                                               "imgSize"
                                                               CSEListImgSize
                                                               :>
                                                               QueryParam
                                                                 "exactTerms"
                                                                 Text
                                                                 :>
                                                                 QueryParam "cr"
                                                                   Text
                                                                   :>
                                                                   QueryParam
                                                                     "safe"
                                                                     CSEListSafe
                                                                     :>
                                                                     QueryParam
                                                                       "hq"
                                                                       Text
                                                                       :>
                                                                       QueryParam
                                                                         "highRange"
                                                                         Text
                                                                         :>
                                                                         QueryParam
                                                                           "alt"
                                                                           AltJSON
                                                                           :>
                                                                           Get
                                                                             '[JSON]
                                                                             Search

-- | Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results.
--
-- /See:/ 'cSEList' smart constructor.
data CSEList = CSEList'
    { _cselImgDominantColor :: !(Maybe CSEListImgDominantColor)
    , _cselSiteSearchFilter :: !(Maybe CSEListSiteSearchFilter)
    , _cselC2coff           :: !(Maybe Text)
    , _cselOrTerms          :: !(Maybe Text)
    , _cselStart            :: !(Maybe (Textual Word32))
    , _cselRights           :: !(Maybe Text)
    , _cselExcludeTerms     :: !(Maybe Text)
    , _cselNum              :: !(Textual Word32)
    , _cselFileType         :: !(Maybe Text)
    , _cselSearchType       :: !(Maybe CSEListSearchType)
    , _cselLr               :: !(Maybe CSEListLr)
    , _cselQ                :: !Text
    , _cselGooglehost       :: !(Maybe Text)
    , _cselRelatedSite      :: !(Maybe Text)
    , _cselHl               :: !(Maybe Text)
    , _cselCref             :: !(Maybe Text)
    , _cselSort             :: !(Maybe Text)
    , _cselSiteSearch       :: !(Maybe Text)
    , _cselFilter           :: !(Maybe CSEListFilter)
    , _cselDateRestrict     :: !(Maybe Text)
    , _cselLinkSite         :: !(Maybe Text)
    , _cselLowRange         :: !(Maybe Text)
    , _cselImgType          :: !(Maybe CSEListImgType)
    , _cselGl               :: !(Maybe Text)
    , _cselCx               :: !(Maybe Text)
    , _cselImgColorType     :: !(Maybe CSEListImgColorType)
    , _cselImgSize          :: !(Maybe CSEListImgSize)
    , _cselExactTerms       :: !(Maybe Text)
    , _cselCr               :: !(Maybe Text)
    , _cselSafe             :: !CSEListSafe
    , _cselHq               :: !(Maybe Text)
    , _cselHighRange        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CSEList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cselImgDominantColor'
--
-- * 'cselSiteSearchFilter'
--
-- * 'cselC2coff'
--
-- * 'cselOrTerms'
--
-- * 'cselStart'
--
-- * 'cselRights'
--
-- * 'cselExcludeTerms'
--
-- * 'cselNum'
--
-- * 'cselFileType'
--
-- * 'cselSearchType'
--
-- * 'cselLr'
--
-- * 'cselQ'
--
-- * 'cselGooglehost'
--
-- * 'cselRelatedSite'
--
-- * 'cselHl'
--
-- * 'cselCref'
--
-- * 'cselSort'
--
-- * 'cselSiteSearch'
--
-- * 'cselFilter'
--
-- * 'cselDateRestrict'
--
-- * 'cselLinkSite'
--
-- * 'cselLowRange'
--
-- * 'cselImgType'
--
-- * 'cselGl'
--
-- * 'cselCx'
--
-- * 'cselImgColorType'
--
-- * 'cselImgSize'
--
-- * 'cselExactTerms'
--
-- * 'cselCr'
--
-- * 'cselSafe'
--
-- * 'cselHq'
--
-- * 'cselHighRange'
cSEList
    :: Text -- ^ 'cselQ'
    -> CSEList
cSEList pCselQ_ =
    CSEList'
    { _cselImgDominantColor = Nothing
    , _cselSiteSearchFilter = Nothing
    , _cselC2coff = Nothing
    , _cselOrTerms = Nothing
    , _cselStart = Nothing
    , _cselRights = Nothing
    , _cselExcludeTerms = Nothing
    , _cselNum = 10
    , _cselFileType = Nothing
    , _cselSearchType = Nothing
    , _cselLr = Nothing
    , _cselQ = pCselQ_
    , _cselGooglehost = Nothing
    , _cselRelatedSite = Nothing
    , _cselHl = Nothing
    , _cselCref = Nothing
    , _cselSort = Nothing
    , _cselSiteSearch = Nothing
    , _cselFilter = Nothing
    , _cselDateRestrict = Nothing
    , _cselLinkSite = Nothing
    , _cselLowRange = Nothing
    , _cselImgType = Nothing
    , _cselGl = Nothing
    , _cselCx = Nothing
    , _cselImgColorType = Nothing
    , _cselImgSize = Nothing
    , _cselExactTerms = Nothing
    , _cselCr = Nothing
    , _cselSafe = Off
    , _cselHq = Nothing
    , _cselHighRange = Nothing
    }

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
cselImgDominantColor :: Lens' CSEList (Maybe CSEListImgDominantColor)
cselImgDominantColor
  = lens _cselImgDominantColor
      (\ s a -> s{_cselImgDominantColor = a})

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
cselSiteSearchFilter :: Lens' CSEList (Maybe CSEListSiteSearchFilter)
cselSiteSearchFilter
  = lens _cselSiteSearchFilter
      (\ s a -> s{_cselSiteSearchFilter = a})

-- | Turns off the translation between zh-CN and zh-TW.
cselC2coff :: Lens' CSEList (Maybe Text)
cselC2coff
  = lens _cselC2coff (\ s a -> s{_cselC2coff = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms
cselOrTerms :: Lens' CSEList (Maybe Text)
cselOrTerms
  = lens _cselOrTerms (\ s a -> s{_cselOrTerms = a})

-- | The index of the first result to return
cselStart :: Lens' CSEList (Maybe Word32)
cselStart
  = lens _cselStart (\ s a -> s{_cselStart = a}) .
      mapping _Coerce

-- | Filters based on licensing. Supported values include: cc_publicdomain,
-- cc_attribute, cc_sharealike, cc_noncommercial, cc_nonderived and
-- combinations of these.
cselRights :: Lens' CSEList (Maybe Text)
cselRights
  = lens _cselRights (\ s a -> s{_cselRights = a})

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results
cselExcludeTerms :: Lens' CSEList (Maybe Text)
cselExcludeTerms
  = lens _cselExcludeTerms
      (\ s a -> s{_cselExcludeTerms = a})

-- | Number of search results to return
cselNum :: Lens' CSEList Word32
cselNum
  = lens _cselNum (\ s a -> s{_cselNum = a}) . _Coerce

-- | Returns images of a specified type. Some of the allowed values are: bmp,
-- gif, png, jpg, svg, pdf, ...
cselFileType :: Lens' CSEList (Maybe Text)
cselFileType
  = lens _cselFileType (\ s a -> s{_cselFileType = a})

-- | Specifies the search type: image.
cselSearchType :: Lens' CSEList (Maybe CSEListSearchType)
cselSearchType
  = lens _cselSearchType
      (\ s a -> s{_cselSearchType = a})

-- | The language restriction for the search results
cselLr :: Lens' CSEList (Maybe CSEListLr)
cselLr = lens _cselLr (\ s a -> s{_cselLr = a})

-- | Query
cselQ :: Lens' CSEList Text
cselQ = lens _cselQ (\ s a -> s{_cselQ = a})

-- | The local Google domain to use to perform the search.
cselGooglehost :: Lens' CSEList (Maybe Text)
cselGooglehost
  = lens _cselGooglehost
      (\ s a -> s{_cselGooglehost = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL
cselRelatedSite :: Lens' CSEList (Maybe Text)
cselRelatedSite
  = lens _cselRelatedSite
      (\ s a -> s{_cselRelatedSite = a})

-- | Sets the user interface language.
cselHl :: Lens' CSEList (Maybe Text)
cselHl = lens _cselHl (\ s a -> s{_cselHl = a})

-- | The URL of a linked custom search engine
cselCref :: Lens' CSEList (Maybe Text)
cselCref = lens _cselCref (\ s a -> s{_cselCref = a})

-- | The sort expression to apply to the results
cselSort :: Lens' CSEList (Maybe Text)
cselSort = lens _cselSort (\ s a -> s{_cselSort = a})

-- | Specifies all search results should be pages from a given site
cselSiteSearch :: Lens' CSEList (Maybe Text)
cselSiteSearch
  = lens _cselSiteSearch
      (\ s a -> s{_cselSiteSearch = a})

-- | Controls turning on or off the duplicate content filter.
cselFilter :: Lens' CSEList (Maybe CSEListFilter)
cselFilter
  = lens _cselFilter (\ s a -> s{_cselFilter = a})

-- | Specifies all search results are from a time period
cselDateRestrict :: Lens' CSEList (Maybe Text)
cselDateRestrict
  = lens _cselDateRestrict
      (\ s a -> s{_cselDateRestrict = a})

-- | Specifies that all search results should contain a link to a particular
-- URL
cselLinkSite :: Lens' CSEList (Maybe Text)
cselLinkSite
  = lens _cselLinkSite (\ s a -> s{_cselLinkSite = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
cselLowRange :: Lens' CSEList (Maybe Text)
cselLowRange
  = lens _cselLowRange (\ s a -> s{_cselLowRange = a})

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
cselImgType :: Lens' CSEList (Maybe CSEListImgType)
cselImgType
  = lens _cselImgType (\ s a -> s{_cselImgType = a})

-- | Geolocation of end user.
cselGl :: Lens' CSEList (Maybe Text)
cselGl = lens _cselGl (\ s a -> s{_cselGl = a})

-- | The custom search engine ID to scope this search query
cselCx :: Lens' CSEList (Maybe Text)
cselCx = lens _cselCx (\ s a -> s{_cselCx = a})

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
cselImgColorType :: Lens' CSEList (Maybe CSEListImgColorType)
cselImgColorType
  = lens _cselImgColorType
      (\ s a -> s{_cselImgColorType = a})

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
cselImgSize :: Lens' CSEList (Maybe CSEListImgSize)
cselImgSize
  = lens _cselImgSize (\ s a -> s{_cselImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain
cselExactTerms :: Lens' CSEList (Maybe Text)
cselExactTerms
  = lens _cselExactTerms
      (\ s a -> s{_cselExactTerms = a})

-- | Country restrict(s).
cselCr :: Lens' CSEList (Maybe Text)
cselCr = lens _cselCr (\ s a -> s{_cselCr = a})

-- | Search safety level
cselSafe :: Lens' CSEList CSEListSafe
cselSafe = lens _cselSafe (\ s a -> s{_cselSafe = a})

-- | Appends the extra query terms to the query.
cselHq :: Lens' CSEList (Maybe Text)
cselHq = lens _cselHq (\ s a -> s{_cselHq = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
cselHighRange :: Lens' CSEList (Maybe Text)
cselHighRange
  = lens _cselHighRange
      (\ s a -> s{_cselHighRange = a})

instance GoogleRequest CSEList where
        type Rs CSEList = Search
        type Scopes CSEList = '[]
        requestClient CSEList'{..}
          = go (Just _cselQ) _cselImgDominantColor
              _cselSiteSearchFilter
              _cselC2coff
              _cselOrTerms
              _cselStart
              _cselRights
              _cselExcludeTerms
              (Just _cselNum)
              _cselFileType
              _cselSearchType
              _cselLr
              _cselGooglehost
              _cselRelatedSite
              _cselHl
              _cselCref
              _cselSort
              _cselSiteSearch
              _cselFilter
              _cselDateRestrict
              _cselLinkSite
              _cselLowRange
              _cselImgType
              _cselGl
              _cselCx
              _cselImgColorType
              _cselImgSize
              _cselExactTerms
              _cselCr
              (Just _cselSafe)
              _cselHq
              _cselHighRange
              (Just AltJSON)
              customSearchService
          where go
                  = buildClient (Proxy :: Proxy CSEListResource) mempty
