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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sites.delete@.
module Network.Google.Resource.Webmasters.Sites.Delete
    (
    -- * REST Resource
      SitesDeleteResource

    -- * Creating a Request
    , sitesDelete
    , SitesDelete

    -- * Request Lenses
    , sSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.delete@ method which the
-- 'SitesDelete' request conforms to.
type SitesDeleteResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ 'sitesDelete' smart constructor.
newtype SitesDelete =
  SitesDelete'
    { _sSiteURL :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSiteURL'
sitesDelete
    :: Text -- ^ 'sSiteURL'
    -> SitesDelete
sitesDelete pSSiteURL_ = SitesDelete' {_sSiteURL = pSSiteURL_}

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/ Note: for
-- property-sets, use the URI that starts with sc-set: which is used in
-- Search Console URLs.
sSiteURL :: Lens' SitesDelete Text
sSiteURL = lens _sSiteURL (\ s a -> s{_sSiteURL = a})

instance GoogleRequest SitesDelete where
        type Rs SitesDelete = ()
        type Scopes SitesDelete =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient SitesDelete'{..}
          = go _sSiteURL (Just AltJSON) webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitesDeleteResource)
                      mempty
