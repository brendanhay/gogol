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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sitemap from this site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.delete@.
module Network.Google.Resource.Webmasters.Sitemaps.Delete
    (
    -- * REST Resource
      SitemapsDeleteResource

    -- * Creating a Request
    , sitemapsDelete
    , SitemapsDelete

    -- * Request Lenses
    , sdXgafv
    , sdFeedpath
    , sdUploadProtocol
    , sdSiteURL
    , sdAccessToken
    , sdUploadType
    , sdCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.delete@ method which the
-- 'SitemapsDelete' request conforms to.
type SitemapsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete' smart constructor.
data SitemapsDelete =
  SitemapsDelete'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdFeedpath :: !Text
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdSiteURL :: !Text
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitemapsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdFeedpath'
--
-- * 'sdUploadProtocol'
--
-- * 'sdSiteURL'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdCallback'
sitemapsDelete
    :: Text -- ^ 'sdFeedpath'
    -> Text -- ^ 'sdSiteURL'
    -> SitemapsDelete
sitemapsDelete pSdFeedpath_ pSdSiteURL_ =
  SitemapsDelete'
    { _sdXgafv = Nothing
    , _sdFeedpath = pSdFeedpath_
    , _sdUploadProtocol = Nothing
    , _sdSiteURL = pSdSiteURL_
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' SitemapsDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | The URL of the actual sitemap. For example:
-- \`http:\/\/www.example.com\/sitemap.xml\`.
sdFeedpath :: Lens' SitemapsDelete Text
sdFeedpath
  = lens _sdFeedpath (\ s a -> s{_sdFeedpath = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' SitemapsDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | The site\'s URL, including protocol. For example:
-- \`http:\/\/www.example.com\/\`.
sdSiteURL :: Lens' SitemapsDelete Text
sdSiteURL
  = lens _sdSiteURL (\ s a -> s{_sdSiteURL = a})

-- | OAuth access token.
sdAccessToken :: Lens' SitemapsDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' SitemapsDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | JSONP
sdCallback :: Lens' SitemapsDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest SitemapsDelete where
        type Rs SitemapsDelete = ()
        type Scopes SitemapsDelete =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient SitemapsDelete'{..}
          = go _sdSiteURL _sdFeedpath _sdXgafv
              _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitemapsDeleteResource)
                      mempty
