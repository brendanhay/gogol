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
-- Module      : Network.Google.Resource.Webmasters.Sites.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the user\'s Webmaster Tools sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesList@.
module Network.Google.Resource.Webmasters.Sites.List
    (
    -- * REST Resource
      SitesListResource

    -- * Creating a Request
    , sitesList'
    , SitesList'

    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesList@ method which the
-- 'SitesList'' request conforms to.
type SitesListResource =
     "sites" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] SitesListResponse

-- | Lists the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesList'' smart constructor.
data SitesList' =
    SitesList'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
sitesList'
    :: SitesList'
sitesList' = SitesList'

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        requestClient SitesList'{..}
          = go (Just AltJSON) webmasterToolsService
          where go
                  = buildClient (Proxy :: Proxy SitesListResource)
                      mempty
