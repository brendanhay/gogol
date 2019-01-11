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
-- Module      : Network.Google.Resource.Search.CSE.Siterestrict.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results. Uses a small
-- set of url patterns.
--
-- /See:/ <https://developers.google.com/custom-search/v1/using_rest CustomSearch API Reference> for @search.cse.siterestrict.list@.
module Network.Google.Resource.Search.CSE.Siterestrict.List
    (
    -- * REST Resource
      CSESiterestrictListResource

    -- * Creating a Request
    , cSESiterestrictList
    , CSESiterestrictList

    -- * Request Lenses
    , cseslImgDominantColor
    , cseslSiteSearchFilter
    , cseslC2coff
    , cseslOrTerms
    , cseslStart
    , cseslRights
    , cseslExcludeTerms
    , cseslNum
    , cseslFileType
    , cseslSearchType
    , cseslLr
    , cseslQ
    , cseslGooglehost
    , cseslRelatedSite
    , cseslHl
    , cseslSort
    , cseslSiteSearch
    , cseslFilter
    , cseslDateRestrict
    , cseslLinkSite
    , cseslLowRange
    , cseslImgType
    , cseslGl
    , cseslCx
    , cseslImgColorType
    , cseslImgSize
    , cseslExactTerms
    , cseslCr
    , cseslSafe
    , cseslHq
    , cseslHighRange
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @search.cse.siterestrict.list@ method which the
-- 'CSESiterestrictList' request conforms to.
type CSESiterestrictListResource =
     "customsearch" :>
       "v1" :>
         "siterestrict" :>
           QueryParam "q" Text :>
             QueryParam "imgDominantColor"
               CSESiterestrictListImgDominantColor
               :>
               QueryParam "siteSearchFilter"
                 CSESiterestrictListSiteSearchFilter
                 :>
                 QueryParam "c2coff" Text :>
                   QueryParam "orTerms" Text :>
                     QueryParam "start" (Textual Word32) :>
                       QueryParam "rights" Text :>
                         QueryParam "excludeTerms" Text :>
                           QueryParam "num" (Textual Word32) :>
                             QueryParam "fileType" Text :>
                               QueryParam "searchType"
                                 CSESiterestrictListSearchType
                                 :>
                                 QueryParam "lr" CSESiterestrictListLr :>
                                   QueryParam "googlehost" Text :>
                                     QueryParam "relatedSite" Text :>
                                       QueryParam "hl" Text :>
                                         QueryParam "sort" Text :>
                                           QueryParam "siteSearch" Text :>
                                             QueryParam "filter"
                                               CSESiterestrictListFilter
                                               :>
                                               QueryParam "dateRestrict" Text :>
                                                 QueryParam "linkSite" Text :>
                                                   QueryParam "lowRange" Text :>
                                                     QueryParam "imgType"
                                                       CSESiterestrictListImgType
                                                       :>
                                                       QueryParam "gl" Text :>
                                                         QueryParam "cx" Text :>
                                                           QueryParam
                                                             "imgColorType"
                                                             CSESiterestrictListImgColorType
                                                             :>
                                                             QueryParam
                                                               "imgSize"
                                                               CSESiterestrictListImgSize
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
                                                                     CSESiterestrictListSafe
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
-- search engine used for the search, and the search results. Uses a small
-- set of url patterns.
--
-- /See:/ 'cSESiterestrictList' smart constructor.
data CSESiterestrictList = CSESiterestrictList'
    { _cseslImgDominantColor :: !(Maybe CSESiterestrictListImgDominantColor)
    , _cseslSiteSearchFilter :: !(Maybe CSESiterestrictListSiteSearchFilter)
    , _cseslC2coff           :: !(Maybe Text)
    , _cseslOrTerms          :: !(Maybe Text)
    , _cseslStart            :: !(Maybe (Textual Word32))
    , _cseslRights           :: !(Maybe Text)
    , _cseslExcludeTerms     :: !(Maybe Text)
    , _cseslNum              :: !(Textual Word32)
    , _cseslFileType         :: !(Maybe Text)
    , _cseslSearchType       :: !(Maybe CSESiterestrictListSearchType)
    , _cseslLr               :: !(Maybe CSESiterestrictListLr)
    , _cseslQ                :: !Text
    , _cseslGooglehost       :: !(Maybe Text)
    , _cseslRelatedSite      :: !(Maybe Text)
    , _cseslHl               :: !(Maybe Text)
    , _cseslSort             :: !(Maybe Text)
    , _cseslSiteSearch       :: !(Maybe Text)
    , _cseslFilter           :: !(Maybe CSESiterestrictListFilter)
    , _cseslDateRestrict     :: !(Maybe Text)
    , _cseslLinkSite         :: !(Maybe Text)
    , _cseslLowRange         :: !(Maybe Text)
    , _cseslImgType          :: !(Maybe CSESiterestrictListImgType)
    , _cseslGl               :: !(Maybe Text)
    , _cseslCx               :: !(Maybe Text)
    , _cseslImgColorType     :: !(Maybe CSESiterestrictListImgColorType)
    , _cseslImgSize          :: !(Maybe CSESiterestrictListImgSize)
    , _cseslExactTerms       :: !(Maybe Text)
    , _cseslCr               :: !(Maybe Text)
    , _cseslSafe             :: !CSESiterestrictListSafe
    , _cseslHq               :: !(Maybe Text)
    , _cseslHighRange        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CSESiterestrictList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cseslImgDominantColor'
--
-- * 'cseslSiteSearchFilter'
--
-- * 'cseslC2coff'
--
-- * 'cseslOrTerms'
--
-- * 'cseslStart'
--
-- * 'cseslRights'
--
-- * 'cseslExcludeTerms'
--
-- * 'cseslNum'
--
-- * 'cseslFileType'
--
-- * 'cseslSearchType'
--
-- * 'cseslLr'
--
-- * 'cseslQ'
--
-- * 'cseslGooglehost'
--
-- * 'cseslRelatedSite'
--
-- * 'cseslHl'
--
-- * 'cseslSort'
--
-- * 'cseslSiteSearch'
--
-- * 'cseslFilter'
--
-- * 'cseslDateRestrict'
--
-- * 'cseslLinkSite'
--
-- * 'cseslLowRange'
--
-- * 'cseslImgType'
--
-- * 'cseslGl'
--
-- * 'cseslCx'
--
-- * 'cseslImgColorType'
--
-- * 'cseslImgSize'
--
-- * 'cseslExactTerms'
--
-- * 'cseslCr'
--
-- * 'cseslSafe'
--
-- * 'cseslHq'
--
-- * 'cseslHighRange'
cSESiterestrictList
    :: Text -- ^ 'cseslQ'
    -> CSESiterestrictList
cSESiterestrictList pCseslQ_ =
    CSESiterestrictList'
    { _cseslImgDominantColor = Nothing
    , _cseslSiteSearchFilter = Nothing
    , _cseslC2coff = Nothing
    , _cseslOrTerms = Nothing
    , _cseslStart = Nothing
    , _cseslRights = Nothing
    , _cseslExcludeTerms = Nothing
    , _cseslNum = 10
    , _cseslFileType = Nothing
    , _cseslSearchType = Nothing
    , _cseslLr = Nothing
    , _cseslQ = pCseslQ_
    , _cseslGooglehost = Nothing
    , _cseslRelatedSite = Nothing
    , _cseslHl = Nothing
    , _cseslSort = Nothing
    , _cseslSiteSearch = Nothing
    , _cseslFilter = Nothing
    , _cseslDateRestrict = Nothing
    , _cseslLinkSite = Nothing
    , _cseslLowRange = Nothing
    , _cseslImgType = Nothing
    , _cseslGl = Nothing
    , _cseslCx = Nothing
    , _cseslImgColorType = Nothing
    , _cseslImgSize = Nothing
    , _cseslExactTerms = Nothing
    , _cseslCr = Nothing
    , _cseslSafe = CSESLSOff
    , _cseslHq = Nothing
    , _cseslHighRange = Nothing
    }

-- | Returns images of a specific dominant color: red, orange, yellow, green,
-- teal, blue, purple, pink, white, gray, black and brown.
cseslImgDominantColor :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgDominantColor)
cseslImgDominantColor
  = lens _cseslImgDominantColor
      (\ s a -> s{_cseslImgDominantColor = a})

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
cseslSiteSearchFilter :: Lens' CSESiterestrictList (Maybe CSESiterestrictListSiteSearchFilter)
cseslSiteSearchFilter
  = lens _cseslSiteSearchFilter
      (\ s a -> s{_cseslSiteSearchFilter = a})

-- | Turns off the translation between zh-CN and zh-TW.
cseslC2coff :: Lens' CSESiterestrictList (Maybe Text)
cseslC2coff
  = lens _cseslC2coff (\ s a -> s{_cseslC2coff = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms
cseslOrTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslOrTerms
  = lens _cseslOrTerms (\ s a -> s{_cseslOrTerms = a})

-- | The index of the first result to return
cseslStart :: Lens' CSESiterestrictList (Maybe Word32)
cseslStart
  = lens _cseslStart (\ s a -> s{_cseslStart = a}) .
      mapping _Coerce

-- | Filters based on licensing. Supported values include: cc_publicdomain,
-- cc_attribute, cc_sharealike, cc_noncommercial, cc_nonderived and
-- combinations of these.
cseslRights :: Lens' CSESiterestrictList (Maybe Text)
cseslRights
  = lens _cseslRights (\ s a -> s{_cseslRights = a})

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results
cseslExcludeTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslExcludeTerms
  = lens _cseslExcludeTerms
      (\ s a -> s{_cseslExcludeTerms = a})

-- | Number of search results to return
cseslNum :: Lens' CSESiterestrictList Word32
cseslNum
  = lens _cseslNum (\ s a -> s{_cseslNum = a}) .
      _Coerce

-- | Returns images of a specified type. Some of the allowed values are: bmp,
-- gif, png, jpg, svg, pdf, ...
cseslFileType :: Lens' CSESiterestrictList (Maybe Text)
cseslFileType
  = lens _cseslFileType
      (\ s a -> s{_cseslFileType = a})

-- | Specifies the search type: image.
cseslSearchType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListSearchType)
cseslSearchType
  = lens _cseslSearchType
      (\ s a -> s{_cseslSearchType = a})

-- | The language restriction for the search results
cseslLr :: Lens' CSESiterestrictList (Maybe CSESiterestrictListLr)
cseslLr = lens _cseslLr (\ s a -> s{_cseslLr = a})

-- | Query
cseslQ :: Lens' CSESiterestrictList Text
cseslQ = lens _cseslQ (\ s a -> s{_cseslQ = a})

-- | The local Google domain to use to perform the search.
cseslGooglehost :: Lens' CSESiterestrictList (Maybe Text)
cseslGooglehost
  = lens _cseslGooglehost
      (\ s a -> s{_cseslGooglehost = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL
cseslRelatedSite :: Lens' CSESiterestrictList (Maybe Text)
cseslRelatedSite
  = lens _cseslRelatedSite
      (\ s a -> s{_cseslRelatedSite = a})

-- | Sets the user interface language.
cseslHl :: Lens' CSESiterestrictList (Maybe Text)
cseslHl = lens _cseslHl (\ s a -> s{_cseslHl = a})

-- | The sort expression to apply to the results
cseslSort :: Lens' CSESiterestrictList (Maybe Text)
cseslSort
  = lens _cseslSort (\ s a -> s{_cseslSort = a})

-- | Specifies all search results should be pages from a given site
cseslSiteSearch :: Lens' CSESiterestrictList (Maybe Text)
cseslSiteSearch
  = lens _cseslSiteSearch
      (\ s a -> s{_cseslSiteSearch = a})

-- | Controls turning on or off the duplicate content filter.
cseslFilter :: Lens' CSESiterestrictList (Maybe CSESiterestrictListFilter)
cseslFilter
  = lens _cseslFilter (\ s a -> s{_cseslFilter = a})

-- | Specifies all search results are from a time period
cseslDateRestrict :: Lens' CSESiterestrictList (Maybe Text)
cseslDateRestrict
  = lens _cseslDateRestrict
      (\ s a -> s{_cseslDateRestrict = a})

-- | Specifies that all search results should contain a link to a particular
-- URL
cseslLinkSite :: Lens' CSESiterestrictList (Maybe Text)
cseslLinkSite
  = lens _cseslLinkSite
      (\ s a -> s{_cseslLinkSite = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
cseslLowRange :: Lens' CSESiterestrictList (Maybe Text)
cseslLowRange
  = lens _cseslLowRange
      (\ s a -> s{_cseslLowRange = a})

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
cseslImgType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgType)
cseslImgType
  = lens _cseslImgType (\ s a -> s{_cseslImgType = a})

-- | Geolocation of end user.
cseslGl :: Lens' CSESiterestrictList (Maybe Text)
cseslGl = lens _cseslGl (\ s a -> s{_cseslGl = a})

-- | The custom search engine ID to scope this search query
cseslCx :: Lens' CSESiterestrictList (Maybe Text)
cseslCx = lens _cseslCx (\ s a -> s{_cseslCx = a})

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
cseslImgColorType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgColorType)
cseslImgColorType
  = lens _cseslImgColorType
      (\ s a -> s{_cseslImgColorType = a})

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
cseslImgSize :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgSize)
cseslImgSize
  = lens _cseslImgSize (\ s a -> s{_cseslImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain
cseslExactTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslExactTerms
  = lens _cseslExactTerms
      (\ s a -> s{_cseslExactTerms = a})

-- | Country restrict(s).
cseslCr :: Lens' CSESiterestrictList (Maybe Text)
cseslCr = lens _cseslCr (\ s a -> s{_cseslCr = a})

-- | Search safety level
cseslSafe :: Lens' CSESiterestrictList CSESiterestrictListSafe
cseslSafe
  = lens _cseslSafe (\ s a -> s{_cseslSafe = a})

-- | Appends the extra query terms to the query.
cseslHq :: Lens' CSESiterestrictList (Maybe Text)
cseslHq = lens _cseslHq (\ s a -> s{_cseslHq = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
cseslHighRange :: Lens' CSESiterestrictList (Maybe Text)
cseslHighRange
  = lens _cseslHighRange
      (\ s a -> s{_cseslHighRange = a})

instance GoogleRequest CSESiterestrictList where
        type Rs CSESiterestrictList = Search
        type Scopes CSESiterestrictList = '[]
        requestClient CSESiterestrictList'{..}
          = go (Just _cseslQ) _cseslImgDominantColor
              _cseslSiteSearchFilter
              _cseslC2coff
              _cseslOrTerms
              _cseslStart
              _cseslRights
              _cseslExcludeTerms
              (Just _cseslNum)
              _cseslFileType
              _cseslSearchType
              _cseslLr
              _cseslGooglehost
              _cseslRelatedSite
              _cseslHl
              _cseslSort
              _cseslSiteSearch
              _cseslFilter
              _cseslDateRestrict
              _cseslLinkSite
              _cseslLowRange
              _cseslImgType
              _cseslGl
              _cseslCx
              _cseslImgColorType
              _cseslImgSize
              _cseslExactTerms
              _cseslCr
              (Just _cseslSafe)
              _cseslHq
              _cseslHighRange
              (Just AltJSON)
              customSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy CSESiterestrictListResource)
                      mempty
