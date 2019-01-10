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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.list@.
module Network.Google.Resource.AndroidEnterprise.WebApps.List
    (
    -- * REST Resource
      WebAppsListResource

    -- * Creating a Request
    , webAppsList
    , WebAppsList

    -- * Request Lenses
    , walEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.list@ method which the
-- 'WebAppsList' request conforms to.
type WebAppsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] WebAppsListResponse

-- | Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ 'webAppsList' smart constructor.
newtype WebAppsList = WebAppsList'
    { _walEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'walEnterpriseId'
webAppsList
    :: Text -- ^ 'walEnterpriseId'
    -> WebAppsList
webAppsList pWalEnterpriseId_ =
    WebAppsList'
    { _walEnterpriseId = pWalEnterpriseId_
    }

-- | The ID of the enterprise.
walEnterpriseId :: Lens' WebAppsList Text
walEnterpriseId
  = lens _walEnterpriseId
      (\ s a -> s{_walEnterpriseId = a})

instance GoogleRequest WebAppsList where
        type Rs WebAppsList = WebAppsListResponse
        type Scopes WebAppsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsList'{..}
          = go _walEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsListResource)
                      mempty
