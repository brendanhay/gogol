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
-- Module      : Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all active credentials for the service account associated with
-- this enterprise. Only the ID and key type are returned. The calling
-- service account must have been retrieved by calling
-- Enterprises.GetServiceAccount and must have been set as the enterprise
-- service account by calling Enterprises.SetAccount.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.serviceaccountkeys.list@.
module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List
    (
    -- * REST Resource
      ServiceAccountkeysListResource

    -- * Creating a Request
    , serviceAccountkeysList
    , ServiceAccountkeysList

    -- * Request Lenses
    , salEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.serviceaccountkeys.list@ method which the
-- 'ServiceAccountkeysList' request conforms to.
type ServiceAccountkeysListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccountKeys" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ServiceAccountKeysListResponse

-- | Lists all active credentials for the service account associated with
-- this enterprise. Only the ID and key type are returned. The calling
-- service account must have been retrieved by calling
-- Enterprises.GetServiceAccount and must have been set as the enterprise
-- service account by calling Enterprises.SetAccount.
--
-- /See:/ 'serviceAccountkeysList' smart constructor.
newtype ServiceAccountkeysList =
  ServiceAccountkeysList'
    { _salEnterpriseId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccountkeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salEnterpriseId'
serviceAccountkeysList
    :: Text -- ^ 'salEnterpriseId'
    -> ServiceAccountkeysList
serviceAccountkeysList pSalEnterpriseId_ =
  ServiceAccountkeysList' {_salEnterpriseId = pSalEnterpriseId_}

-- | The ID of the enterprise.
salEnterpriseId :: Lens' ServiceAccountkeysList Text
salEnterpriseId
  = lens _salEnterpriseId
      (\ s a -> s{_salEnterpriseId = a})

instance GoogleRequest ServiceAccountkeysList where
        type Rs ServiceAccountkeysList =
             ServiceAccountKeysListResponse
        type Scopes ServiceAccountkeysList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ServiceAccountkeysList'{..}
          = go _salEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ServiceAccountkeysListResource)
                      mempty
