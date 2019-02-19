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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sitemaps.list@.
module Network.Google.Resource.Webmasters.Sitemaps.List
    (
    -- * REST Resource
      SitemapsListResource

    -- * Creating a Request
    , sitemapsList
    , SitemapsList

    -- * Request Lenses
    , slSiteURL
    , slSitemapIndex
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.list@ method which the
-- 'SitemapsList' request conforms to.
type SitemapsListResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               QueryParam "sitemapIndex" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] SitemapsListResponse

-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ 'sitemapsList' smart constructor.
data SitemapsList =
  SitemapsList'
    { _slSiteURL      :: !Text
    , _slSitemapIndex :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitemapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slSiteURL'
--
-- * 'slSitemapIndex'
sitemapsList
    :: Text -- ^ 'slSiteURL'
    -> SitemapsList
sitemapsList pSlSiteURL_ =
  SitemapsList' {_slSiteURL = pSlSiteURL_, _slSitemapIndex = Nothing}

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
slSiteURL :: Lens' SitemapsList Text
slSiteURL
  = lens _slSiteURL (\ s a -> s{_slSiteURL = a})

-- | A URL of a site\'s sitemap index. For example:
-- http:\/\/www.example.com\/sitemapindex.xml
slSitemapIndex :: Lens' SitemapsList (Maybe Text)
slSitemapIndex
  = lens _slSitemapIndex
      (\ s a -> s{_slSitemapIndex = a})

instance GoogleRequest SitemapsList where
        type Rs SitemapsList = SitemapsListResponse
        type Scopes SitemapsList =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SitemapsList'{..}
          = go _slSiteURL _slSitemapIndex (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitemapsListResource)
                      mempty
