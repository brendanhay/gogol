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
-- Module      : Network.Google.Resource.Webmasters.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesGet@.
module Network.Google.Resource.Webmasters.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet'
    , SitesGet'

    -- * Request Lenses
    , sSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesGet@ method which the
-- 'SitesGet'' request conforms to.
type SitesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'sitesGet'' smart constructor.
newtype SitesGet' = SitesGet'
    { _sSiteURL :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSiteURL'
sitesGet'
    :: Text -- ^ 'siteUrl'
    -> SitesGet'
sitesGet' pSSiteURL_ =
    SitesGet'
    { _sSiteURL = pSSiteURL_
    }

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sSiteURL :: Lens' SitesGet' Text
sSiteURL = lens _sSiteURL (\ s a -> s{_sSiteURL = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = WmxSite
        requestClient SitesGet'{..}
          = go _sSiteURL (Just AltJSON) webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
