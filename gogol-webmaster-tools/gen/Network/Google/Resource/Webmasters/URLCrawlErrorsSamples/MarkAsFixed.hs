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
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.urlcrawlerrorssamples.markAsFixed@.
module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed
    (
    -- * REST Resource
      URLCrawlErrorsSamplesMarkAsFixedResource

    -- * Creating a Request
    , urlCrawlErrorsSamplesMarkAsFixed
    , URLCrawlErrorsSamplesMarkAsFixed

    -- * Request Lenses
    , ucesmafPlatform
    , ucesmafCategory
    , ucesmafSiteURL
    , ucesmafURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.urlcrawlerrorssamples.markAsFixed@ method which the
-- 'URLCrawlErrorsSamplesMarkAsFixed' request conforms to.
type URLCrawlErrorsSamplesMarkAsFixedResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "urlCrawlErrorsSamples" :>
               Capture "url" Text :>
                 QueryParam "category"
                   URLCrawlErrorsSamplesMarkAsFixedCategory
                   :>
                   QueryParam "platform"
                     URLCrawlErrorsSamplesMarkAsFixedPlatform
                     :> QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ 'urlCrawlErrorsSamplesMarkAsFixed' smart constructor.
data URLCrawlErrorsSamplesMarkAsFixed = URLCrawlErrorsSamplesMarkAsFixed'
    { _ucesmafPlatform :: !URLCrawlErrorsSamplesMarkAsFixedPlatform
    , _ucesmafCategory :: !URLCrawlErrorsSamplesMarkAsFixedCategory
    , _ucesmafSiteURL  :: !Text
    , _ucesmafURL      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesMarkAsFixed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesmafPlatform'
--
-- * 'ucesmafCategory'
--
-- * 'ucesmafSiteURL'
--
-- * 'ucesmafURL'
urlCrawlErrorsSamplesMarkAsFixed
    :: URLCrawlErrorsSamplesMarkAsFixedPlatform -- ^ 'ucesmafPlatform'
    -> URLCrawlErrorsSamplesMarkAsFixedCategory -- ^ 'ucesmafCategory'
    -> Text -- ^ 'ucesmafSiteURL'
    -> Text -- ^ 'ucesmafURL'
    -> URLCrawlErrorsSamplesMarkAsFixed
urlCrawlErrorsSamplesMarkAsFixed pUcesmafPlatform_ pUcesmafCategory_ pUcesmafSiteURL_ pUcesmafURL_ =
    URLCrawlErrorsSamplesMarkAsFixed'
    { _ucesmafPlatform = pUcesmafPlatform_
    , _ucesmafCategory = pUcesmafCategory_
    , _ucesmafSiteURL = pUcesmafSiteURL_
    , _ucesmafURL = pUcesmafURL_
    }

-- | The user agent type (platform) that made the request. For example: web
ucesmafPlatform :: Lens' URLCrawlErrorsSamplesMarkAsFixed URLCrawlErrorsSamplesMarkAsFixedPlatform
ucesmafPlatform
  = lens _ucesmafPlatform
      (\ s a -> s{_ucesmafPlatform = a})

-- | The crawl error category. For example: authPermissions
ucesmafCategory :: Lens' URLCrawlErrorsSamplesMarkAsFixed URLCrawlErrorsSamplesMarkAsFixedCategory
ucesmafCategory
  = lens _ucesmafCategory
      (\ s a -> s{_ucesmafCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ucesmafSiteURL :: Lens' URLCrawlErrorsSamplesMarkAsFixed Text
ucesmafSiteURL
  = lens _ucesmafSiteURL
      (\ s a -> s{_ucesmafSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ucesmafURL :: Lens' URLCrawlErrorsSamplesMarkAsFixed Text
ucesmafURL
  = lens _ucesmafURL (\ s a -> s{_ucesmafURL = a})

instance GoogleRequest
         URLCrawlErrorsSamplesMarkAsFixed where
        type Rs URLCrawlErrorsSamplesMarkAsFixed = ()
        type Scopes URLCrawlErrorsSamplesMarkAsFixed =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient URLCrawlErrorsSamplesMarkAsFixed'{..}
          = go _ucesmafSiteURL _ucesmafURL
              (Just _ucesmafCategory)
              (Just _ucesmafPlatform)
              (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy URLCrawlErrorsSamplesMarkAsFixedResource)
                      mempty
