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
-- | Deletes a sitemap from this site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitemapsDelete@.
module Network.Google.Resource.Webmasters.Sitemaps.Delete
    (
    -- * REST Resource
      SitemapsDeleteResource

    -- * Creating a Request
    , sitemapsDelete'
    , SitemapsDelete'

    -- * Request Lenses
    , sitFeedpath
    , sitSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsDelete@ method which the
-- 'SitemapsDelete'' request conforms to.
type SitemapsDeleteResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           Capture "feedpath" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete'' smart constructor.
data SitemapsDelete' = SitemapsDelete'
    { _sitFeedpath :: !Text
    , _sitSiteURL  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitFeedpath'
--
-- * 'sitSiteURL'
sitemapsDelete'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsDelete'
sitemapsDelete' pSitFeedpath_ pSitSiteURL_ =
    SitemapsDelete'
    { _sitFeedpath = pSitFeedpath_
    , _sitSiteURL = pSitSiteURL_
    }

-- | The URL of the actual sitemap. For example:
-- http:\/\/www.example.com\/sitemap.xml
sitFeedpath :: Lens' SitemapsDelete' Text
sitFeedpath
  = lens _sitFeedpath (\ s a -> s{_sitFeedpath = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sitSiteURL :: Lens' SitemapsDelete' Text
sitSiteURL
  = lens _sitSiteURL (\ s a -> s{_sitSiteURL = a})

instance GoogleRequest SitemapsDelete' where
        type Rs SitemapsDelete' = ()
        requestClient SitemapsDelete'{..}
          = go _sitSiteURL _sitFeedpath (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitemapsDeleteResource)
                      mempty
