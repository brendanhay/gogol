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
-- Module      : Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes and invalidates the specified credentials for the service
-- account associated with this enterprise. The calling service account
-- must have been retrieved by calling Enterprises.GetServiceAccount and
-- must have been set as the enterprise service account by calling
-- Enterprises.SetAccount.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.serviceaccountkeys.delete@.
module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Delete
    (
    -- * REST Resource
      ServiceAccountkeysDeleteResource

    -- * Creating a Request
    , serviceAccountkeysDelete
    , ServiceAccountkeysDelete

    -- * Request Lenses
    , sadKeyId
    , sadEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.serviceaccountkeys.delete@ method which the
-- 'ServiceAccountkeysDelete' request conforms to.
type ServiceAccountkeysDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccountKeys" :>
               Capture "keyId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes and invalidates the specified credentials for the service
-- account associated with this enterprise. The calling service account
-- must have been retrieved by calling Enterprises.GetServiceAccount and
-- must have been set as the enterprise service account by calling
-- Enterprises.SetAccount.
--
-- /See:/ 'serviceAccountkeysDelete' smart constructor.
data ServiceAccountkeysDelete =
  ServiceAccountkeysDelete'
    { _sadKeyId        :: !Text
    , _sadEnterpriseId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccountkeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sadKeyId'
--
-- * 'sadEnterpriseId'
serviceAccountkeysDelete
    :: Text -- ^ 'sadKeyId'
    -> Text -- ^ 'sadEnterpriseId'
    -> ServiceAccountkeysDelete
serviceAccountkeysDelete pSadKeyId_ pSadEnterpriseId_ =
  ServiceAccountkeysDelete'
    {_sadKeyId = pSadKeyId_, _sadEnterpriseId = pSadEnterpriseId_}


-- | The ID of the key.
sadKeyId :: Lens' ServiceAccountkeysDelete Text
sadKeyId = lens _sadKeyId (\ s a -> s{_sadKeyId = a})

-- | The ID of the enterprise.
sadEnterpriseId :: Lens' ServiceAccountkeysDelete Text
sadEnterpriseId
  = lens _sadEnterpriseId
      (\ s a -> s{_sadEnterpriseId = a})

instance GoogleRequest ServiceAccountkeysDelete where
        type Rs ServiceAccountkeysDelete = ()
        type Scopes ServiceAccountkeysDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ServiceAccountkeysDelete'{..}
          = go _sadEnterpriseId _sadKeyId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ServiceAccountkeysDeleteResource)
                      mempty
