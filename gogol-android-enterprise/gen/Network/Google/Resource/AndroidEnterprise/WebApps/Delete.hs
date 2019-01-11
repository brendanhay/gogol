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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.delete@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Delete
    (
    -- * REST Resource
      WebAppsDeleteResource

    -- * Creating a Request
    , webAppsDelete
    , WebAppsDelete

    -- * Request Lenses
    , wadWebAppId
    , wadEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.delete@ method which the
-- 'WebAppsDelete' request conforms to.
type WebAppsDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               Capture "webAppId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing web app.
--
-- /See:/ 'webAppsDelete' smart constructor.
data WebAppsDelete = WebAppsDelete'
    { _wadWebAppId     :: !Text
    , _wadEnterpriseId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebAppsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wadWebAppId'
--
-- * 'wadEnterpriseId'
webAppsDelete
    :: Text -- ^ 'wadWebAppId'
    -> Text -- ^ 'wadEnterpriseId'
    -> WebAppsDelete
webAppsDelete pWadWebAppId_ pWadEnterpriseId_ =
    WebAppsDelete'
    { _wadWebAppId = pWadWebAppId_
    , _wadEnterpriseId = pWadEnterpriseId_
    }

-- | The ID of the web app.
wadWebAppId :: Lens' WebAppsDelete Text
wadWebAppId
  = lens _wadWebAppId (\ s a -> s{_wadWebAppId = a})

-- | The ID of the enterprise.
wadEnterpriseId :: Lens' WebAppsDelete Text
wadEnterpriseId
  = lens _wadEnterpriseId
      (\ s a -> s{_wadEnterpriseId = a})

instance GoogleRequest WebAppsDelete where
        type Rs WebAppsDelete = ()
        type Scopes WebAppsDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsDelete'{..}
          = go _wadEnterpriseId _wadWebAppId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsDeleteResource)
                      mempty
