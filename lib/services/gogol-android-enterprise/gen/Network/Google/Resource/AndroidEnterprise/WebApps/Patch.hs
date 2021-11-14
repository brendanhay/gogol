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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web app. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.patch@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Patch
    (
    -- * REST Resource
      WebAppsPatchResource

    -- * Creating a Request
    , webAppsPatch
    , WebAppsPatch

    -- * Request Lenses
    , wapWebAppId
    , wapEnterpriseId
    , wapPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.patch@ method which the
-- 'WebAppsPatch' request conforms to.
type WebAppsPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               Capture "webAppId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] WebApp :> Patch '[JSON] WebApp

-- | Updates an existing web app. This method supports patch semantics.
--
-- /See:/ 'webAppsPatch' smart constructor.
data WebAppsPatch =
  WebAppsPatch'
    { _wapWebAppId     :: !Text
    , _wapEnterpriseId :: !Text
    , _wapPayload      :: !WebApp
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wapWebAppId'
--
-- * 'wapEnterpriseId'
--
-- * 'wapPayload'
webAppsPatch
    :: Text -- ^ 'wapWebAppId'
    -> Text -- ^ 'wapEnterpriseId'
    -> WebApp -- ^ 'wapPayload'
    -> WebAppsPatch
webAppsPatch pWapWebAppId_ pWapEnterpriseId_ pWapPayload_ =
  WebAppsPatch'
    { _wapWebAppId = pWapWebAppId_
    , _wapEnterpriseId = pWapEnterpriseId_
    , _wapPayload = pWapPayload_
    }


-- | The ID of the web app.
wapWebAppId :: Lens' WebAppsPatch Text
wapWebAppId
  = lens _wapWebAppId (\ s a -> s{_wapWebAppId = a})

-- | The ID of the enterprise.
wapEnterpriseId :: Lens' WebAppsPatch Text
wapEnterpriseId
  = lens _wapEnterpriseId
      (\ s a -> s{_wapEnterpriseId = a})

-- | Multipart request metadata.
wapPayload :: Lens' WebAppsPatch WebApp
wapPayload
  = lens _wapPayload (\ s a -> s{_wapPayload = a})

instance GoogleRequest WebAppsPatch where
        type Rs WebAppsPatch = WebApp
        type Scopes WebAppsPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsPatch'{..}
          = go _wapEnterpriseId _wapWebAppId (Just AltJSON)
              _wapPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsPatchResource)
                      mempty
