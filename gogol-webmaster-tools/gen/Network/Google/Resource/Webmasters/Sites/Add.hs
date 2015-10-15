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
-- Module      : Network.Google.Resource.Webmasters.Sites.Add
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesAdd@.
module Network.Google.Resource.Webmasters.Sites.Add
    (
    -- * REST Resource
      SitesAddResource

    -- * Creating a Request
    , sitesAdd'
    , SitesAdd'

    -- * Request Lenses
    , saSiteURL
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesAdd@ method which the
-- 'SitesAdd'' request conforms to.
type SitesAddResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ 'sitesAdd'' smart constructor.
newtype SitesAdd' = SitesAdd'
    { _saSiteURL :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesAdd'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saSiteURL'
sitesAdd'
    :: Text -- ^ 'siteUrl'
    -> SitesAdd'
sitesAdd' pSaSiteURL_ =
    SitesAdd'
    { _saSiteURL = pSaSiteURL_
    }

-- | The URL of the site to add.
saSiteURL :: Lens' SitesAdd' Text
saSiteURL
  = lens _saSiteURL (\ s a -> s{_saSiteURL = a})

instance GoogleRequest SitesAdd' where
        type Rs SitesAdd' = ()
        requestClient SitesAdd'{..}
          = go _saSiteURL (Just AltJSON) webmasterTools
          where go
                  = buildClient (Proxy :: Proxy SitesAddResource)
                      mempty
