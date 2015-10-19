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
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorsSamplesGet@.
module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get
    (
    -- * REST Resource
      URLCrawlErrorsSamplesGetResource

    -- * Creating a Request
    , urlCrawlErrorsSamplesGet'
    , URLCrawlErrorsSamplesGet'

    -- * Request Lenses
    , ucesgPlatform
    , ucesgCategory
    , ucesgSiteURL
    , ucesgURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorsSamplesGet@ method which the
-- 'URLCrawlErrorsSamplesGet'' request conforms to.
type URLCrawlErrorsSamplesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "category"
               URLCrawlErrorsSamplesGetCategory
               :>
               QueryParam "platform"
                 URLCrawlErrorsSamplesGetPlatform
                 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] URLCrawlErrorsSample

-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ 'urlCrawlErrorsSamplesGet'' smart constructor.
data URLCrawlErrorsSamplesGet' = URLCrawlErrorsSamplesGet'
    { _ucesgPlatform :: !URLCrawlErrorsSamplesGetPlatform
    , _ucesgCategory :: !URLCrawlErrorsSamplesGetCategory
    , _ucesgSiteURL  :: !Text
    , _ucesgURL      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesgPlatform'
--
-- * 'ucesgCategory'
--
-- * 'ucesgSiteURL'
--
-- * 'ucesgURL'
urlCrawlErrorsSamplesGet'
    :: URLCrawlErrorsSamplesGetPlatform -- ^ 'platform'
    -> URLCrawlErrorsSamplesGetCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLCrawlErrorsSamplesGet'
urlCrawlErrorsSamplesGet' pUcesgPlatform_ pUcesgCategory_ pUcesgSiteURL_ pUcesgURL_ =
    URLCrawlErrorsSamplesGet'
    { _ucesgPlatform = pUcesgPlatform_
    , _ucesgCategory = pUcesgCategory_
    , _ucesgSiteURL = pUcesgSiteURL_
    , _ucesgURL = pUcesgURL_
    }

-- | The user agent type (platform) that made the request. For example: web
ucesgPlatform :: Lens' URLCrawlErrorsSamplesGet' URLCrawlErrorsSamplesGetPlatform
ucesgPlatform
  = lens _ucesgPlatform
      (\ s a -> s{_ucesgPlatform = a})

-- | The crawl error category. For example: authPermissions
ucesgCategory :: Lens' URLCrawlErrorsSamplesGet' URLCrawlErrorsSamplesGetCategory
ucesgCategory
  = lens _ucesgCategory
      (\ s a -> s{_ucesgCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ucesgSiteURL :: Lens' URLCrawlErrorsSamplesGet' Text
ucesgSiteURL
  = lens _ucesgSiteURL (\ s a -> s{_ucesgSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ucesgURL :: Lens' URLCrawlErrorsSamplesGet' Text
ucesgURL = lens _ucesgURL (\ s a -> s{_ucesgURL = a})

instance GoogleRequest URLCrawlErrorsSamplesGet'
         where
        type Rs URLCrawlErrorsSamplesGet' =
             URLCrawlErrorsSample
        requestClient URLCrawlErrorsSamplesGet'{..}
          = go _ucesgSiteURL _ucesgURL (Just _ucesgCategory)
              (Just _ucesgPlatform)
              (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient
                      (Proxy :: Proxy URLCrawlErrorsSamplesGetResource)
                      mempty
