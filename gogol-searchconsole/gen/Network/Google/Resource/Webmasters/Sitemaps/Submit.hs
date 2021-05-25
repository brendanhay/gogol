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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Submit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.submit@.
module Network.Google.Resource.Webmasters.Sitemaps.Submit
    (
    -- * REST Resource
      SitemapsSubmitResource

    -- * Creating a Request
    , sitemapsSubmit
    , SitemapsSubmit

    -- * Request Lenses
    , ssXgafv
    , ssFeedpath
    , ssUploadProtocol
    , ssSiteURL
    , ssAccessToken
    , ssUploadType
    , ssCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.submit@ method which the
-- 'SitemapsSubmit' request conforms to.
type SitemapsSubmitResource =
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
                           QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'sitemapsSubmit' smart constructor.
data SitemapsSubmit =
  SitemapsSubmit'
    { _ssXgafv :: !(Maybe Xgafv)
    , _ssFeedpath :: !Text
    , _ssUploadProtocol :: !(Maybe Text)
    , _ssSiteURL :: !Text
    , _ssAccessToken :: !(Maybe Text)
    , _ssUploadType :: !(Maybe Text)
    , _ssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitemapsSubmit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssXgafv'
--
-- * 'ssFeedpath'
--
-- * 'ssUploadProtocol'
--
-- * 'ssSiteURL'
--
-- * 'ssAccessToken'
--
-- * 'ssUploadType'
--
-- * 'ssCallback'
sitemapsSubmit
    :: Text -- ^ 'ssFeedpath'
    -> Text -- ^ 'ssSiteURL'
    -> SitemapsSubmit
sitemapsSubmit pSsFeedpath_ pSsSiteURL_ =
  SitemapsSubmit'
    { _ssXgafv = Nothing
    , _ssFeedpath = pSsFeedpath_
    , _ssUploadProtocol = Nothing
    , _ssSiteURL = pSsSiteURL_
    , _ssAccessToken = Nothing
    , _ssUploadType = Nothing
    , _ssCallback = Nothing
    }


-- | V1 error format.
ssXgafv :: Lens' SitemapsSubmit (Maybe Xgafv)
ssXgafv = lens _ssXgafv (\ s a -> s{_ssXgafv = a})

-- | The URL of the actual sitemap. For example:
-- \`http:\/\/www.example.com\/sitemap.xml\`.
ssFeedpath :: Lens' SitemapsSubmit Text
ssFeedpath
  = lens _ssFeedpath (\ s a -> s{_ssFeedpath = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssUploadProtocol :: Lens' SitemapsSubmit (Maybe Text)
ssUploadProtocol
  = lens _ssUploadProtocol
      (\ s a -> s{_ssUploadProtocol = a})

-- | The site\'s URL, including protocol. For example:
-- \`http:\/\/www.example.com\/\`.
ssSiteURL :: Lens' SitemapsSubmit Text
ssSiteURL
  = lens _ssSiteURL (\ s a -> s{_ssSiteURL = a})

-- | OAuth access token.
ssAccessToken :: Lens' SitemapsSubmit (Maybe Text)
ssAccessToken
  = lens _ssAccessToken
      (\ s a -> s{_ssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssUploadType :: Lens' SitemapsSubmit (Maybe Text)
ssUploadType
  = lens _ssUploadType (\ s a -> s{_ssUploadType = a})

-- | JSONP
ssCallback :: Lens' SitemapsSubmit (Maybe Text)
ssCallback
  = lens _ssCallback (\ s a -> s{_ssCallback = a})

instance GoogleRequest SitemapsSubmit where
        type Rs SitemapsSubmit = ()
        type Scopes SitemapsSubmit =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient SitemapsSubmit'{..}
          = go _ssSiteURL _ssFeedpath _ssXgafv
              _ssUploadProtocol
              _ssAccessToken
              _ssUploadType
              _ssCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitemapsSubmitResource)
                      mempty
