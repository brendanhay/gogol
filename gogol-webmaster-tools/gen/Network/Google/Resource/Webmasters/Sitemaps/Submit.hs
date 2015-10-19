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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @webmasters.sitemaps.submit@.
module Network.Google.Resource.Webmasters.Sitemaps.Submit
    (
    -- * REST Resource
      SitemapsSubmitResource

    -- * Creating a Request
    , sitemapsSubmit'
    , SitemapsSubmit'

    -- * Request Lenses
    , ssFeedpath
    , ssSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.submit@ method which the
-- 'SitemapsSubmit'' request conforms to.
type SitemapsSubmitResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           Capture "feedpath" Text :>
             QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'sitemapsSubmit'' smart constructor.
data SitemapsSubmit' = SitemapsSubmit'
    { _ssFeedpath :: !Text
    , _ssSiteURL  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssFeedpath'
--
-- * 'ssSiteURL'
sitemapsSubmit'
    :: Text -- ^ 'ssFeedpath'
    -> Text -- ^ 'ssSiteURL'
    -> SitemapsSubmit'
sitemapsSubmit' pSsFeedpath_ pSsSiteURL_ =
    SitemapsSubmit'
    { _ssFeedpath = pSsFeedpath_
    , _ssSiteURL = pSsSiteURL_
    }

-- | The URL of the sitemap to add. For example:
-- http:\/\/www.example.com\/sitemap.xml
ssFeedpath :: Lens' SitemapsSubmit' Text
ssFeedpath
  = lens _ssFeedpath (\ s a -> s{_ssFeedpath = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ssSiteURL :: Lens' SitemapsSubmit' Text
ssSiteURL
  = lens _ssSiteURL (\ s a -> s{_ssSiteURL = a})

instance GoogleRequest SitemapsSubmit' where
        type Rs SitemapsSubmit' = ()
        requestClient SitemapsSubmit'{..}
          = go _ssSiteURL _ssFeedpath (Just AltJSON)
              webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitemapsSubmitResource)
                      mempty
