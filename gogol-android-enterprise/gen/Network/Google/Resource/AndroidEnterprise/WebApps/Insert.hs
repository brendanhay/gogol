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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new web app for the enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.insert@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Insert
    (
    -- * REST Resource
      WebAppsInsertResource

    -- * Creating a Request
    , webAppsInsert
    , WebAppsInsert

    -- * Request Lenses
    , waiEnterpriseId
    , waiPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.insert@ method which the
-- 'WebAppsInsert' request conforms to.
type WebAppsInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] WebApp :> Post '[JSON] WebApp

-- | Creates a new web app for the enterprise.
--
-- /See:/ 'webAppsInsert' smart constructor.
data WebAppsInsert =
  WebAppsInsert'
    { _waiEnterpriseId :: !Text
    , _waiPayload      :: !WebApp
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebAppsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waiEnterpriseId'
--
-- * 'waiPayload'
webAppsInsert
    :: Text -- ^ 'waiEnterpriseId'
    -> WebApp -- ^ 'waiPayload'
    -> WebAppsInsert
webAppsInsert pWaiEnterpriseId_ pWaiPayload_ =
  WebAppsInsert'
    {_waiEnterpriseId = pWaiEnterpriseId_, _waiPayload = pWaiPayload_}

-- | The ID of the enterprise.
waiEnterpriseId :: Lens' WebAppsInsert Text
waiEnterpriseId
  = lens _waiEnterpriseId
      (\ s a -> s{_waiEnterpriseId = a})

-- | Multipart request metadata.
waiPayload :: Lens' WebAppsInsert WebApp
waiPayload
  = lens _waiPayload (\ s a -> s{_waiPayload = a})

instance GoogleRequest WebAppsInsert where
        type Rs WebAppsInsert = WebApp
        type Scopes WebAppsInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsInsert'{..}
          = go _waiEnterpriseId (Just AltJSON) _waiPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsInsertResource)
                      mempty
