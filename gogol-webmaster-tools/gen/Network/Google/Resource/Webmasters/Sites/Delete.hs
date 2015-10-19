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
-- Module      : Network.Google.Resource.Webmasters.Sites.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @webmasters.sites.delete@.
module Network.Google.Resource.Webmasters.Sites.Delete
    (
    -- * REST Resource
      SitesDeleteResource

    -- * Creating a Request
    , sitesDelete'
    , SitesDelete'

    -- * Request Lenses
    , sdSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.delete@ method which the
-- 'SitesDelete'' request conforms to.
type SitesDeleteResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesDelete'' smart constructor.
newtype SitesDelete' = SitesDelete'
    { _sdSiteURL :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSiteURL'
sitesDelete'
    :: Text -- ^ 'sdSiteURL'
    -> SitesDelete'
sitesDelete' pSdSiteURL_ =
    SitesDelete'
    { _sdSiteURL = pSdSiteURL_
    }

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sdSiteURL :: Lens' SitesDelete' Text
sdSiteURL
  = lens _sdSiteURL (\ s a -> s{_sdSiteURL = a})

instance GoogleRequest SitesDelete' where
        type Rs SitesDelete' = ()
        requestClient SitesDelete'{..}
          = go _sdSiteURL (Just AltJSON) webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitesDeleteResource)
                      mempty
