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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the store layout for the enterprise. If the store layout has not
-- been set, returns \"basic\" as the store layout type and no homepage.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.getStoreLayout@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.GetStoreLayout
    (
    -- * REST Resource
      EnterprisesGetStoreLayoutResource

    -- * Creating a Request
    , enterprisesGetStoreLayout
    , EnterprisesGetStoreLayout

    -- * Request Lenses
    , egslEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.getStoreLayout@ method which the
-- 'EnterprisesGetStoreLayout' request conforms to.
type EnterprisesGetStoreLayoutResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               QueryParam "alt" AltJSON :> Get '[JSON] StoreLayout

-- | Returns the store layout for the enterprise. If the store layout has not
-- been set, returns \"basic\" as the store layout type and no homepage.
--
-- /See:/ 'enterprisesGetStoreLayout' smart constructor.
newtype EnterprisesGetStoreLayout =
  EnterprisesGetStoreLayout'
    { _egslEnterpriseId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesGetStoreLayout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egslEnterpriseId'
enterprisesGetStoreLayout
    :: Text -- ^ 'egslEnterpriseId'
    -> EnterprisesGetStoreLayout
enterprisesGetStoreLayout pEgslEnterpriseId_ =
  EnterprisesGetStoreLayout' {_egslEnterpriseId = pEgslEnterpriseId_}


-- | The ID of the enterprise.
egslEnterpriseId :: Lens' EnterprisesGetStoreLayout Text
egslEnterpriseId
  = lens _egslEnterpriseId
      (\ s a -> s{_egslEnterpriseId = a})

instance GoogleRequest EnterprisesGetStoreLayout
         where
        type Rs EnterprisesGetStoreLayout = StoreLayout
        type Scopes EnterprisesGetStoreLayout =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGetStoreLayout'{..}
          = go _egslEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesGetStoreLayoutResource)
                      mempty
