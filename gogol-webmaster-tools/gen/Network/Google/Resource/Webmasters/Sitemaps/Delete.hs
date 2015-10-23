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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sitemap from this site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @webmasters.sitemaps.delete@.
module Network.Google.Resource.Webmasters.Sitemaps.Delete
    (
    -- * REST Resource
      SitemapsDeleteResource

    -- * Creating a Request
    , sitemapsDelete
    , SitemapsDelete

    -- * Request Lenses
    , sdFeedpath
    , sdSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.delete@ method which the
-- 'SitemapsDelete' request conforms to.
type SitemapsDeleteResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               Capture "feedpath" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete' smart constructor.
data SitemapsDelete = SitemapsDelete
    { _sdFeedpath :: !Text
    , _sdSiteURL  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdFeedpath'
--
-- * 'sdSiteURL'
sitemapsDelete
    :: Text -- ^ 'sdFeedpath'
    -> Text -- ^ 'sdSiteURL'
    -> SitemapsDelete
sitemapsDelete pSdFeedpath_ pSdSiteURL_ =
    SitemapsDelete
    { _sdFeedpath = pSdFeedpath_
    , _sdSiteURL = pSdSiteURL_
    }

-- | The URL of the actual sitemap. For example:
-- http:\/\/www.example.com\/sitemap.xml
sdFeedpath :: Lens' SitemapsDelete Text
sdFeedpath
  = lens _sdFeedpath (\ s a -> s{_sdFeedpath = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sdSiteURL :: Lens' SitemapsDelete Text
sdSiteURL
  = lens _sdSiteURL (\ s a -> s{_sdSiteURL = a})

instance GoogleRequest SitemapsDelete where
        type Rs SitemapsDelete = ()
        requestClient SitemapsDelete{..}
          = go _sdSiteURL _sdFeedpath (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitemapsDeleteResource)
                      mempty
