{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Search.Cse.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results.
--
-- /See:/ <https://developers.google.com/custom-search/v1/using_rest CustomSearch API Reference> for @SearchCseList@.
module Network.Google.Resource.Search.Cse.List
    (
    -- * REST Resource
      CseListResource

    -- * Creating a Request
    , cseList'
    , CseList'

    -- * Request Lenses
    , clImgDominantColor
    , clQuotaUser
    , clPrettyPrint
    , clSiteSearchFilter
    , clC2coff
    , clOrTerms
    , clUserIp
    , clStart
    , clRights
    , clExcludeTerms
    , clNum
    , clFileType
    , clSearchType
    , clLr
    , clQ
    , clGooglehost
    , clRelatedSite
    , clHl
    , clKey
    , clCref
    , clSort
    , clSiteSearch
    , clFilter
    , clDateRestrict
    , clLinkSite
    , clOauthToken
    , clLowRange
    , clImgType
    , clGl
    , clCx
    , clImgColorType
    , clImgSize
    , clExactTerms
    , clCr
    , clSafe
    , clHq
    , clFields
    , clHighRange
    , clAlt
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @SearchCseList@ which the
-- 'CseList'' request conforms to.
type CseListResource =
     "v1" :>
       QueryParam "imgDominantColor"
         SearchCseListImgDominantColor
         :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "siteSearchFilter"
               SearchCseListSiteSearchFilter
               :>
               QueryParam "c2coff" Text :>
                 QueryParam "orTerms" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "start" Word32 :>
                       QueryParam "rights" Text :>
                         QueryParam "excludeTerms" Text :>
                           QueryParam "num" Word32 :>
                             QueryParam "fileType" Text :>
                               QueryParam "searchType" SearchCseListSearchType
                                 :>
                                 QueryParam "lr" SearchCseListLr :>
                                   QueryParam "q" Text :>
                                     QueryParam "googlehost" Text :>
                                       QueryParam "relatedSite" Text :>
                                         QueryParam "hl" Text :>
                                           QueryParam "key" Text :>
                                             QueryParam "cref" Text :>
                                               QueryParam "sort" Text :>
                                                 QueryParam "siteSearch" Text :>
                                                   QueryParam "filter"
                                                     SearchCseListFilter
                                                     :>
                                                     QueryParam "dateRestrict"
                                                       Text
                                                       :>
                                                       QueryParam "linkSite"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "oauth_token"
                                                           Text
                                                           :>
                                                           QueryParam "lowRange"
                                                             Text
                                                             :>
                                                             QueryParam
                                                               "imgType"
                                                               SearchCseListImgType
                                                               :>
                                                               QueryParam "gl"
                                                                 Text
                                                                 :>
                                                                 QueryParam "cx"
                                                                   Text
                                                                   :>
                                                                   QueryParam
                                                                     "imgColorType"
                                                                     SearchCseListImgColorType
                                                                     :>
                                                                     QueryParam
                                                                       "imgSize"
                                                                       SearchCseListImgSize
                                                                       :>
                                                                       QueryParam
                                                                         "exactTerms"
                                                                         Text
                                                                         :>
                                                                         QueryParam
                                                                           "cr"
                                                                           Text
                                                                           :>
                                                                           QueryParam
                                                                             "safe"
                                                                             SearchCseListSafe
                                                                             :>
                                                                             QueryParam
                                                                               "hq"
                                                                               Text
                                                                               :>
                                                                               QueryParam
                                                                                 "fields"
                                                                                 Text
                                                                                 :>
                                                                                 QueryParam
                                                                                   "highRange"
                                                                                   Text
                                                                                   :>
                                                                                   QueryParam
                                                                                     "alt"
                                                                                     Alt
                                                                                     :>
                                                                                     Get
                                                                                       '[JSON]
                                                                                       Search

-- | Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results.
--
-- /See:/ 'cseList'' smart constructor.
data CseList' = CseList'
    { _clImgDominantColor :: !(Maybe SearchCseListImgDominantColor)
    , _clQuotaUser        :: !(Maybe Text)
    , _clPrettyPrint      :: !Bool
    , _clSiteSearchFilter :: !(Maybe SearchCseListSiteSearchFilter)
    , _clC2coff           :: !(Maybe Text)
    , _clOrTerms          :: !(Maybe Text)
    , _clUserIp           :: !(Maybe Text)
    , _clStart            :: !(Maybe Word32)
    , _clRights           :: !(Maybe Text)
    , _clExcludeTerms     :: !(Maybe Text)
    , _clNum              :: !Word32
    , _clFileType         :: !(Maybe Text)
    , _clSearchType       :: !(Maybe SearchCseListSearchType)
    , _clLr               :: !(Maybe SearchCseListLr)
    , _clQ                :: !Text
    , _clGooglehost       :: !(Maybe Text)
    , _clRelatedSite      :: !(Maybe Text)
    , _clHl               :: !(Maybe Text)
    , _clKey              :: !(Maybe Text)
    , _clCref             :: !(Maybe Text)
    , _clSort             :: !(Maybe Text)
    , _clSiteSearch       :: !(Maybe Text)
    , _clFilter           :: !(Maybe SearchCseListFilter)
    , _clDateRestrict     :: !(Maybe Text)
    , _clLinkSite         :: !(Maybe Text)
    , _clOauthToken       :: !(Maybe Text)
    , _clLowRange         :: !(Maybe Text)
    , _clImgType          :: !(Maybe SearchCseListImgType)
    , _clGl               :: !(Maybe Text)
    , _clCx               :: !(Maybe Text)
    , _clImgColorType     :: !(Maybe SearchCseListImgColorType)
    , _clImgSize          :: !(Maybe SearchCseListImgSize)
    , _clExactTerms       :: !(Maybe Text)
    , _clCr               :: !(Maybe Text)
    , _clSafe             :: !SearchCseListSafe
    , _clHq               :: !(Maybe Text)
    , _clFields           :: !(Maybe Text)
    , _clHighRange        :: !(Maybe Text)
    , _clAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CseList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clImgDominantColor'
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clSiteSearchFilter'
--
-- * 'clC2coff'
--
-- * 'clOrTerms'
--
-- * 'clUserIp'
--
-- * 'clStart'
--
-- * 'clRights'
--
-- * 'clExcludeTerms'
--
-- * 'clNum'
--
-- * 'clFileType'
--
-- * 'clSearchType'
--
-- * 'clLr'
--
-- * 'clQ'
--
-- * 'clGooglehost'
--
-- * 'clRelatedSite'
--
-- * 'clHl'
--
-- * 'clKey'
--
-- * 'clCref'
--
-- * 'clSort'
--
-- * 'clSiteSearch'
--
-- * 'clFilter'
--
-- * 'clDateRestrict'
--
-- * 'clLinkSite'
--
-- * 'clOauthToken'
--
-- * 'clLowRange'
--
-- * 'clImgType'
--
-- * 'clGl'
--
-- * 'clCx'
--
-- * 'clImgColorType'
--
-- * 'clImgSize'
--
-- * 'clExactTerms'
--
-- * 'clCr'
--
-- * 'clSafe'
--
-- * 'clHq'
--
-- * 'clFields'
--
-- * 'clHighRange'
--
-- * 'clAlt'
cseList'
    :: Text -- ^ 'q'
    -> CseList'
cseList' pClQ_ =
    CseList'
    { _clImgDominantColor = Nothing
    , _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clSiteSearchFilter = Nothing
    , _clC2coff = Nothing
    , _clOrTerms = Nothing
    , _clUserIp = Nothing
    , _clStart = Nothing
    , _clRights = Nothing
    , _clExcludeTerms = Nothing
    , _clNum = 10
    , _clFileType = Nothing
    , _clSearchType = Nothing
    , _clLr = Nothing
    , _clQ = pClQ_
    , _clGooglehost = Nothing
    , _clRelatedSite = Nothing
    , _clHl = Nothing
    , _clKey = Nothing
    , _clCref = Nothing
    , _clSort = Nothing
    , _clSiteSearch = Nothing
    , _clFilter = Nothing
    , _clDateRestrict = Nothing
    , _clLinkSite = Nothing
    , _clOauthToken = Nothing
    , _clLowRange = Nothing
    , _clImgType = Nothing
    , _clGl = Nothing
    , _clCx = Nothing
    , _clImgColorType = Nothing
    , _clImgSize = Nothing
    , _clExactTerms = Nothing
    , _clCr = Nothing
    , _clSafe = SCLSOff
    , _clHq = Nothing
    , _clFields = Nothing
    , _clHighRange = Nothing
    , _clAlt = JSON
    }

-- | Returns images of a specific dominant color: yellow, green, teal, blue,
-- purple, pink, white, gray, black and brown.
clImgDominantColor :: Lens' CseList' (Maybe SearchCseListImgDominantColor)
clImgDominantColor
  = lens _clImgDominantColor
      (\ s a -> s{_clImgDominantColor = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CseList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CseList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Controls whether to include or exclude results from the site named in
-- the as_sitesearch parameter
clSiteSearchFilter :: Lens' CseList' (Maybe SearchCseListSiteSearchFilter)
clSiteSearchFilter
  = lens _clSiteSearchFilter
      (\ s a -> s{_clSiteSearchFilter = a})

-- | Turns off the translation between zh-CN and zh-TW.
clC2coff :: Lens' CseList' (Maybe Text)
clC2coff = lens _clC2coff (\ s a -> s{_clC2coff = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms
clOrTerms :: Lens' CseList' (Maybe Text)
clOrTerms
  = lens _clOrTerms (\ s a -> s{_clOrTerms = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CseList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | The index of the first result to return
clStart :: Lens' CseList' (Maybe Word32)
clStart = lens _clStart (\ s a -> s{_clStart = a})

-- | Filters based on licensing. Supported values include: cc_publicdomain,
-- cc_attribute, cc_sharealike, cc_noncommercial, cc_nonderived and
-- combinations of these.
clRights :: Lens' CseList' (Maybe Text)
clRights = lens _clRights (\ s a -> s{_clRights = a})

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results
clExcludeTerms :: Lens' CseList' (Maybe Text)
clExcludeTerms
  = lens _clExcludeTerms
      (\ s a -> s{_clExcludeTerms = a})

-- | Number of search results to return
clNum :: Lens' CseList' Word32
clNum = lens _clNum (\ s a -> s{_clNum = a})

-- | Returns images of a specified type. Some of the allowed values are: bmp,
-- gif, png, jpg, svg, pdf, ...
clFileType :: Lens' CseList' (Maybe Text)
clFileType
  = lens _clFileType (\ s a -> s{_clFileType = a})

-- | Specifies the search type: image.
clSearchType :: Lens' CseList' (Maybe SearchCseListSearchType)
clSearchType
  = lens _clSearchType (\ s a -> s{_clSearchType = a})

-- | The language restriction for the search results
clLr :: Lens' CseList' (Maybe SearchCseListLr)
clLr = lens _clLr (\ s a -> s{_clLr = a})

-- | Query
clQ :: Lens' CseList' Text
clQ = lens _clQ (\ s a -> s{_clQ = a})

-- | The local Google domain to use to perform the search.
clGooglehost :: Lens' CseList' (Maybe Text)
clGooglehost
  = lens _clGooglehost (\ s a -> s{_clGooglehost = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL
clRelatedSite :: Lens' CseList' (Maybe Text)
clRelatedSite
  = lens _clRelatedSite
      (\ s a -> s{_clRelatedSite = a})

-- | Sets the user interface language.
clHl :: Lens' CseList' (Maybe Text)
clHl = lens _clHl (\ s a -> s{_clHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CseList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The URL of a linked custom search engine
clCref :: Lens' CseList' (Maybe Text)
clCref = lens _clCref (\ s a -> s{_clCref = a})

-- | The sort expression to apply to the results
clSort :: Lens' CseList' (Maybe Text)
clSort = lens _clSort (\ s a -> s{_clSort = a})

-- | Specifies all search results should be pages from a given site
clSiteSearch :: Lens' CseList' (Maybe Text)
clSiteSearch
  = lens _clSiteSearch (\ s a -> s{_clSiteSearch = a})

-- | Controls turning on or off the duplicate content filter.
clFilter :: Lens' CseList' (Maybe SearchCseListFilter)
clFilter = lens _clFilter (\ s a -> s{_clFilter = a})

-- | Specifies all search results are from a time period
clDateRestrict :: Lens' CseList' (Maybe Text)
clDateRestrict
  = lens _clDateRestrict
      (\ s a -> s{_clDateRestrict = a})

-- | Specifies that all search results should contain a link to a particular
-- URL
clLinkSite :: Lens' CseList' (Maybe Text)
clLinkSite
  = lens _clLinkSite (\ s a -> s{_clLinkSite = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CseList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
clLowRange :: Lens' CseList' (Maybe Text)
clLowRange
  = lens _clLowRange (\ s a -> s{_clLowRange = a})

-- | Returns images of a type, which can be one of: clipart, face, lineart,
-- news, and photo.
clImgType :: Lens' CseList' (Maybe SearchCseListImgType)
clImgType
  = lens _clImgType (\ s a -> s{_clImgType = a})

-- | Geolocation of end user.
clGl :: Lens' CseList' (Maybe Text)
clGl = lens _clGl (\ s a -> s{_clGl = a})

-- | The custom search engine ID to scope this search query
clCx :: Lens' CseList' (Maybe Text)
clCx = lens _clCx (\ s a -> s{_clCx = a})

-- | Returns black and white, grayscale, or color images: mono, gray, and
-- color.
clImgColorType :: Lens' CseList' (Maybe SearchCseListImgColorType)
clImgColorType
  = lens _clImgColorType
      (\ s a -> s{_clImgColorType = a})

-- | Returns images of a specified size, where size can be one of: icon,
-- small, medium, large, xlarge, xxlarge, and huge.
clImgSize :: Lens' CseList' (Maybe SearchCseListImgSize)
clImgSize
  = lens _clImgSize (\ s a -> s{_clImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain
clExactTerms :: Lens' CseList' (Maybe Text)
clExactTerms
  = lens _clExactTerms (\ s a -> s{_clExactTerms = a})

-- | Country restrict(s).
clCr :: Lens' CseList' (Maybe Text)
clCr = lens _clCr (\ s a -> s{_clCr = a})

-- | Search safety level
clSafe :: Lens' CseList' SearchCseListSafe
clSafe = lens _clSafe (\ s a -> s{_clSafe = a})

-- | Appends the extra query terms to the query.
clHq :: Lens' CseList' (Maybe Text)
clHq = lens _clHq (\ s a -> s{_clHq = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CseList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Creates a range in form as_nlo value..as_nhi value and attempts to
-- append it to query
clHighRange :: Lens' CseList' (Maybe Text)
clHighRange
  = lens _clHighRange (\ s a -> s{_clHighRange = a})

-- | Data format for the response.
clAlt :: Lens' CseList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CseList' where
        type Rs CseList' = Search
        request = requestWithRoute defReq customSearchURL
        requestWithRoute r u CseList'{..}
          = go _clImgDominantColor _clQuotaUser
              (Just _clPrettyPrint)
              _clSiteSearchFilter
              _clC2coff
              _clOrTerms
              _clUserIp
              _clStart
              _clRights
              _clExcludeTerms
              (Just _clNum)
              _clFileType
              _clSearchType
              _clLr
              (Just _clQ)
              _clGooglehost
              _clRelatedSite
              _clHl
              _clKey
              _clCref
              _clSort
              _clSiteSearch
              _clFilter
              _clDateRestrict
              _clLinkSite
              _clOauthToken
              _clLowRange
              _clImgType
              _clGl
              _clCx
              _clImgColorType
              _clImgSize
              _clExactTerms
              _clCr
              (Just _clSafe)
              _clHq
              _clFields
              _clHighRange
              (Just _clAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CseListResource) r
                      u
