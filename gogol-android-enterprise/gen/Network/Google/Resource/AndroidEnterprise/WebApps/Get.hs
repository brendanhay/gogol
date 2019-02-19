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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.get@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Get
    (
    -- * REST Resource
      WebAppsGetResource

    -- * Creating a Request
    , webAppsGet
    , WebAppsGet

    -- * Request Lenses
    , wagWebAppId
    , wagEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.get@ method which the
-- 'WebAppsGet' request conforms to.
type WebAppsGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               Capture "webAppId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] WebApp

-- | Gets an existing web app.
--
-- /See:/ 'webAppsGet' smart constructor.
data WebAppsGet =
  WebAppsGet'
    { _wagWebAppId     :: !Text
    , _wagEnterpriseId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebAppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wagWebAppId'
--
-- * 'wagEnterpriseId'
webAppsGet
    :: Text -- ^ 'wagWebAppId'
    -> Text -- ^ 'wagEnterpriseId'
    -> WebAppsGet
webAppsGet pWagWebAppId_ pWagEnterpriseId_ =
  WebAppsGet'
    {_wagWebAppId = pWagWebAppId_, _wagEnterpriseId = pWagEnterpriseId_}

-- | The ID of the web app.
wagWebAppId :: Lens' WebAppsGet Text
wagWebAppId
  = lens _wagWebAppId (\ s a -> s{_wagWebAppId = a})

-- | The ID of the enterprise.
wagEnterpriseId :: Lens' WebAppsGet Text
wagEnterpriseId
  = lens _wagEnterpriseId
      (\ s a -> s{_wagEnterpriseId = a})

instance GoogleRequest WebAppsGet where
        type Rs WebAppsGet = WebApp
        type Scopes WebAppsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsGet'{..}
          = go _wagEnterpriseId _wagWebAppId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsGetResource)
                      mempty
