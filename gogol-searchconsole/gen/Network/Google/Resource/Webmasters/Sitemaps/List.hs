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
-- Lists the [sitemaps-entries](\/webmaster-tools\/v3\/sitemaps) submitted
-- for this site, or included in the sitemap index file (if
-- \`sitemapIndex\` is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.list@.
module Network.Google.Resource.Webmasters.Sitemaps.List
    (
    -- * REST Resource
      SitemapsListResource

    -- * Creating a Request
    , sitemapsList
    , SitemapsList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slSiteURL
    , slAccessToken
    , slUploadType
    , slSitemapIndex
    , slCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.list@ method which the
-- 'SitemapsList' request conforms to.
type SitemapsListResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "sitemapIndex" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SitemapsListResponse

-- | Lists the [sitemaps-entries](\/webmaster-tools\/v3\/sitemaps) submitted
-- for this site, or included in the sitemap index file (if
-- \`sitemapIndex\` is specified in the request).
--
-- /See:/ 'sitemapsList' smart constructor.
data SitemapsList =
  SitemapsList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slSiteURL :: !Text
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slSitemapIndex :: !(Maybe Text)
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitemapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slSiteURL'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slSitemapIndex'
--
-- * 'slCallback'
sitemapsList
    :: Text -- ^ 'slSiteURL'
    -> SitemapsList
sitemapsList pSlSiteURL_ =
  SitemapsList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slSiteURL = pSlSiteURL_
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slSitemapIndex = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' SitemapsList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SitemapsList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | The site\'s URL, including protocol. For example:
-- \`http:\/\/www.example.com\/\`.
slSiteURL :: Lens' SitemapsList Text
slSiteURL
  = lens _slSiteURL (\ s a -> s{_slSiteURL = a})

-- | OAuth access token.
slAccessToken :: Lens' SitemapsList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SitemapsList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | A URL of a site\'s sitemap index. For example:
-- \`http:\/\/www.example.com\/sitemapindex.xml\`.
slSitemapIndex :: Lens' SitemapsList (Maybe Text)
slSitemapIndex
  = lens _slSitemapIndex
      (\ s a -> s{_slSitemapIndex = a})

-- | JSONP
slCallback :: Lens' SitemapsList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SitemapsList where
        type Rs SitemapsList = SitemapsListResponse
        type Scopes SitemapsList =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SitemapsList'{..}
          = go _slSiteURL _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slSitemapIndex
              _slCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitemapsListResource)
                      mempty
