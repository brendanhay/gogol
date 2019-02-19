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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a unique token to access an embeddable UI. To generate a web UI,
-- pass the generated token into the managed Google Play javascript API.
-- Each token may only be used to start one UI session. See the javascript
-- API documentation for further information.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.createWebToken@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken
    (
    -- * REST Resource
      EnterprisesCreateWebTokenResource

    -- * Creating a Request
    , enterprisesCreateWebToken
    , EnterprisesCreateWebToken

    -- * Request Lenses
    , ecwtEnterpriseId
    , ecwtPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.createWebToken@ method which the
-- 'EnterprisesCreateWebToken' request conforms to.
type EnterprisesCreateWebTokenResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "createWebToken" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] AdministratorWebTokenSpec :>
                   Post '[JSON] AdministratorWebToken

-- | Returns a unique token to access an embeddable UI. To generate a web UI,
-- pass the generated token into the managed Google Play javascript API.
-- Each token may only be used to start one UI session. See the javascript
-- API documentation for further information.
--
-- /See:/ 'enterprisesCreateWebToken' smart constructor.
data EnterprisesCreateWebToken =
  EnterprisesCreateWebToken'
    { _ecwtEnterpriseId :: !Text
    , _ecwtPayload      :: !AdministratorWebTokenSpec
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesCreateWebToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecwtEnterpriseId'
--
-- * 'ecwtPayload'
enterprisesCreateWebToken
    :: Text -- ^ 'ecwtEnterpriseId'
    -> AdministratorWebTokenSpec -- ^ 'ecwtPayload'
    -> EnterprisesCreateWebToken
enterprisesCreateWebToken pEcwtEnterpriseId_ pEcwtPayload_ =
  EnterprisesCreateWebToken'
    {_ecwtEnterpriseId = pEcwtEnterpriseId_, _ecwtPayload = pEcwtPayload_}

-- | The ID of the enterprise.
ecwtEnterpriseId :: Lens' EnterprisesCreateWebToken Text
ecwtEnterpriseId
  = lens _ecwtEnterpriseId
      (\ s a -> s{_ecwtEnterpriseId = a})

-- | Multipart request metadata.
ecwtPayload :: Lens' EnterprisesCreateWebToken AdministratorWebTokenSpec
ecwtPayload
  = lens _ecwtPayload (\ s a -> s{_ecwtPayload = a})

instance GoogleRequest EnterprisesCreateWebToken
         where
        type Rs EnterprisesCreateWebToken =
             AdministratorWebToken
        type Scopes EnterprisesCreateWebToken =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesCreateWebToken'{..}
          = go _ecwtEnterpriseId (Just AltJSON) _ecwtPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesCreateWebTokenResource)
                      mempty
