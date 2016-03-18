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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up an enterprise by domain name.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.list@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListResource

    -- * Creating a Request
    , enterprisesList
    , EnterprisesList

    -- * Request Lenses
    , elDomain
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.list@ method which the
-- 'EnterprisesList' request conforms to.
type EnterprisesListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           QueryParam "domain" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name.
--
-- /See:/ 'enterprisesList' smart constructor.
newtype EnterprisesList = EnterprisesList
    { _elDomain :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elDomain'
enterprisesList
    :: Text -- ^ 'elDomain'
    -> EnterprisesList
enterprisesList pElDomain_ =
    EnterprisesList
    { _elDomain = pElDomain_
    }

-- | The exact primary domain name of the enterprise to look up.
elDomain :: Lens' EnterprisesList Text
elDomain = lens _elDomain (\ s a -> s{_elDomain = a})

instance GoogleRequest EnterprisesList where
        type Rs EnterprisesList = EnterprisesListResponse
        requestClient EnterprisesList{..}
          = go (Just _elDomain) (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesListResource)
                      mempty
