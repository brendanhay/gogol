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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.update@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Update
    (
    -- * REST Resource
      WebAppsUpdateResource

    -- * Creating a Request
    , webAppsUpdate
    , WebAppsUpdate

    -- * Request Lenses
    , wauWebAppId
    , wauEnterpriseId
    , wauPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.update@ method which the
-- 'WebAppsUpdate' request conforms to.
type WebAppsUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               Capture "webAppId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] WebApp :> Put '[JSON] WebApp

-- | Updates an existing web app.
--
-- /See:/ 'webAppsUpdate' smart constructor.
data WebAppsUpdate = WebAppsUpdate'
    { _wauWebAppId     :: !Text
    , _wauEnterpriseId :: !Text
    , _wauPayload      :: !WebApp
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebAppsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wauWebAppId'
--
-- * 'wauEnterpriseId'
--
-- * 'wauPayload'
webAppsUpdate
    :: Text -- ^ 'wauWebAppId'
    -> Text -- ^ 'wauEnterpriseId'
    -> WebApp -- ^ 'wauPayload'
    -> WebAppsUpdate
webAppsUpdate pWauWebAppId_ pWauEnterpriseId_ pWauPayload_ =
    WebAppsUpdate'
    { _wauWebAppId = pWauWebAppId_
    , _wauEnterpriseId = pWauEnterpriseId_
    , _wauPayload = pWauPayload_
    }

-- | The ID of the web app.
wauWebAppId :: Lens' WebAppsUpdate Text
wauWebAppId
  = lens _wauWebAppId (\ s a -> s{_wauWebAppId = a})

-- | The ID of the enterprise.
wauEnterpriseId :: Lens' WebAppsUpdate Text
wauEnterpriseId
  = lens _wauEnterpriseId
      (\ s a -> s{_wauEnterpriseId = a})

-- | Multipart request metadata.
wauPayload :: Lens' WebAppsUpdate WebApp
wauPayload
  = lens _wauPayload (\ s a -> s{_wauPayload = a})

instance GoogleRequest WebAppsUpdate where
        type Rs WebAppsUpdate = WebApp
        type Scopes WebAppsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsUpdate'{..}
          = go _wauEnterpriseId _wauWebAppId (Just AltJSON)
              _wauPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsUpdateResource)
                      mempty
