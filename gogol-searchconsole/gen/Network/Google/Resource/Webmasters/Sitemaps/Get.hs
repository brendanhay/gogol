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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specific sitemap.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.get@.
module Network.Google.Resource.Webmasters.Sitemaps.Get
    (
    -- * REST Resource
      SitemapsGetResource

    -- * Creating a Request
    , sitemapsGet
    , SitemapsGet

    -- * Request Lenses
    , sgXgafv
    , sgFeedpath
    , sgUploadProtocol
    , sgSiteURL
    , sgAccessToken
    , sgUploadType
    , sgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.get@ method which the
-- 'SitemapsGet' request conforms to.
type SitemapsGetResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               Capture "feedpath" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] WmxSitemap

-- | Retrieves information about a specific sitemap.
--
-- /See:/ 'sitemapsGet' smart constructor.
data SitemapsGet =
  SitemapsGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgFeedpath :: !Text
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgSiteURL :: !Text
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitemapsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgFeedpath'
--
-- * 'sgUploadProtocol'
--
-- * 'sgSiteURL'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgCallback'
sitemapsGet
    :: Text -- ^ 'sgFeedpath'
    -> Text -- ^ 'sgSiteURL'
    -> SitemapsGet
sitemapsGet pSgFeedpath_ pSgSiteURL_ =
  SitemapsGet'
    { _sgXgafv = Nothing
    , _sgFeedpath = pSgFeedpath_
    , _sgUploadProtocol = Nothing
    , _sgSiteURL = pSgSiteURL_
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' SitemapsGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | The URL of the actual sitemap. For example:
-- \`http:\/\/www.example.com\/sitemap.xml\`.
sgFeedpath :: Lens' SitemapsGet Text
sgFeedpath
  = lens _sgFeedpath (\ s a -> s{_sgFeedpath = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SitemapsGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | The site\'s URL, including protocol. For example:
-- \`http:\/\/www.example.com\/\`.
sgSiteURL :: Lens' SitemapsGet Text
sgSiteURL
  = lens _sgSiteURL (\ s a -> s{_sgSiteURL = a})

-- | OAuth access token.
sgAccessToken :: Lens' SitemapsGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SitemapsGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | JSONP
sgCallback :: Lens' SitemapsGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SitemapsGet where
        type Rs SitemapsGet = WmxSitemap
        type Scopes SitemapsGet =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SitemapsGet'{..}
          = go _sgSiteURL _sgFeedpath _sgXgafv
              _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitemapsGetResource)
                      mempty
