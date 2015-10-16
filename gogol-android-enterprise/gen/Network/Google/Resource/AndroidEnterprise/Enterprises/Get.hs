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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesGet@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetResource

    -- * Creating a Request
    , enterprisesGet'
    , EnterprisesGet'

    -- * Request Lenses
    , egEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesGet@ method which the
-- 'EnterprisesGet'' request conforms to.
type EnterprisesGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ 'enterprisesGet'' smart constructor.
newtype EnterprisesGet' = EnterprisesGet'
    { _egEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egEnterpriseId'
enterprisesGet'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesGet'
enterprisesGet' pEgEnterpriseId_ =
    EnterprisesGet'
    { _egEnterpriseId = pEgEnterpriseId_
    }

-- | The ID of the enterprise.
egEnterpriseId :: Lens' EnterprisesGet' Text
egEnterpriseId
  = lens _egEnterpriseId
      (\ s a -> s{_egEnterpriseId = a})

instance GoogleRequest EnterprisesGet' where
        type Rs EnterprisesGet' = Enterprise
        requestClient EnterprisesGet'{..}
          = go _egEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy EnterprisesGetResource)
                      mempty
