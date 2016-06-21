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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the name and domain of an enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.get@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetResource

    -- * Creating a Request
    , enterprisesGet
    , EnterprisesGet

    -- * Request Lenses
    , eEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.get@ method which the
-- 'EnterprisesGet' request conforms to.
type EnterprisesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ 'enterprisesGet' smart constructor.
newtype EnterprisesGet = EnterprisesGet'
    { _eEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eEnterpriseId'
enterprisesGet
    :: Text -- ^ 'eEnterpriseId'
    -> EnterprisesGet
enterprisesGet pEEnterpriseId_ =
    EnterprisesGet'
    { _eEnterpriseId = pEEnterpriseId_
    }

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EnterprisesGet Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

instance GoogleRequest EnterprisesGet where
        type Rs EnterprisesGet = Enterprise
        type Scopes EnterprisesGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGet'{..}
          = go _eEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy EnterprisesGetResource)
                      mempty
