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
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorscountsQuery@.
module Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query
    (
    -- * REST Resource
      URLCrawlErrorscountsQueryResource

    -- * Creating a Request
    , urlCrawlErrorscountsQuery'
    , URLCrawlErrorscountsQuery'

    -- * Request Lenses
    , uceqPlatform
    , uceqCategory
    , uceqSiteURL
    , uceqLatestCountsOnly
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorscountsQuery@ method which the
-- 'URLCrawlErrorscountsQuery'' request conforms to.
type URLCrawlErrorscountsQueryResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsCounts" :>
           "query" :>
             QueryParam "platform"
               URLCrawlErrorscountsQueryPlatform
               :>
               QueryParam "category"
                 URLCrawlErrorscountsQueryCategory
                 :>
                 QueryParam "latestCountsOnly" Bool :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] URLCrawlErrorsCountsQueryResponse

-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ 'urlCrawlErrorscountsQuery'' smart constructor.
data URLCrawlErrorscountsQuery' = URLCrawlErrorscountsQuery'
    { _uceqPlatform         :: !(Maybe URLCrawlErrorscountsQueryPlatform)
    , _uceqCategory         :: !(Maybe URLCrawlErrorscountsQueryCategory)
    , _uceqSiteURL          :: !Text
    , _uceqLatestCountsOnly :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorscountsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceqPlatform'
--
-- * 'uceqCategory'
--
-- * 'uceqSiteURL'
--
-- * 'uceqLatestCountsOnly'
urlCrawlErrorscountsQuery'
    :: Text -- ^ 'siteUrl'
    -> URLCrawlErrorscountsQuery'
urlCrawlErrorscountsQuery' pUceqSiteURL_ =
    URLCrawlErrorscountsQuery'
    { _uceqPlatform = Nothing
    , _uceqCategory = Nothing
    , _uceqSiteURL = pUceqSiteURL_
    , _uceqLatestCountsOnly = True
    }

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
uceqPlatform :: Lens' URLCrawlErrorscountsQuery' (Maybe URLCrawlErrorscountsQueryPlatform)
uceqPlatform
  = lens _uceqPlatform (\ s a -> s{_uceqPlatform = a})

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
uceqCategory :: Lens' URLCrawlErrorscountsQuery' (Maybe URLCrawlErrorscountsQueryCategory)
uceqCategory
  = lens _uceqCategory (\ s a -> s{_uceqCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
uceqSiteURL :: Lens' URLCrawlErrorscountsQuery' Text
uceqSiteURL
  = lens _uceqSiteURL (\ s a -> s{_uceqSiteURL = a})

-- | If true, returns only the latest crawl error counts.
uceqLatestCountsOnly :: Lens' URLCrawlErrorscountsQuery' Bool
uceqLatestCountsOnly
  = lens _uceqLatestCountsOnly
      (\ s a -> s{_uceqLatestCountsOnly = a})

instance GoogleRequest URLCrawlErrorscountsQuery'
         where
        type Rs URLCrawlErrorscountsQuery' =
             URLCrawlErrorsCountsQueryResponse
        requestClient URLCrawlErrorscountsQuery'{..}
          = go _uceqSiteURL _uceqPlatform _uceqCategory
              (Just _uceqLatestCountsOnly)
              (Just AltJSON)
              webmasterTools
          where go
                  = buildClient
                      (Proxy :: Proxy URLCrawlErrorscountsQueryResource)
                      mempty
