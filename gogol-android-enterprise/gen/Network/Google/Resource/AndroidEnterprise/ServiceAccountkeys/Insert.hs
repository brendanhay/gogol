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
-- Module      : Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates new credentials for the service account associated with this
-- enterprise. The calling service account must have been retrieved by
-- calling Enterprises.GetServiceAccount and must have been set as the
-- enterprise service account by calling Enterprises.SetAccount. Only the
-- type of the key should be populated in the resource to be inserted.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.serviceaccountkeys.insert@.
module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.Insert
    (
    -- * REST Resource
      ServiceAccountkeysInsertResource

    -- * Creating a Request
    , serviceAccountkeysInsert
    , ServiceAccountkeysInsert

    -- * Request Lenses
    , saiEnterpriseId
    , saiPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.serviceaccountkeys.insert@ method which the
-- 'ServiceAccountkeysInsert' request conforms to.
type ServiceAccountkeysInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccountKeys" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ServiceAccountKey :>
                   Post '[JSON] ServiceAccountKey

-- | Generates new credentials for the service account associated with this
-- enterprise. The calling service account must have been retrieved by
-- calling Enterprises.GetServiceAccount and must have been set as the
-- enterprise service account by calling Enterprises.SetAccount. Only the
-- type of the key should be populated in the resource to be inserted.
--
-- /See:/ 'serviceAccountkeysInsert' smart constructor.
data ServiceAccountkeysInsert =
  ServiceAccountkeysInsert'
    { _saiEnterpriseId :: !Text
    , _saiPayload      :: !ServiceAccountKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccountkeysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saiEnterpriseId'
--
-- * 'saiPayload'
serviceAccountkeysInsert
    :: Text -- ^ 'saiEnterpriseId'
    -> ServiceAccountKey -- ^ 'saiPayload'
    -> ServiceAccountkeysInsert
serviceAccountkeysInsert pSaiEnterpriseId_ pSaiPayload_ =
  ServiceAccountkeysInsert'
    {_saiEnterpriseId = pSaiEnterpriseId_, _saiPayload = pSaiPayload_}

-- | The ID of the enterprise.
saiEnterpriseId :: Lens' ServiceAccountkeysInsert Text
saiEnterpriseId
  = lens _saiEnterpriseId
      (\ s a -> s{_saiEnterpriseId = a})

-- | Multipart request metadata.
saiPayload :: Lens' ServiceAccountkeysInsert ServiceAccountKey
saiPayload
  = lens _saiPayload (\ s a -> s{_saiPayload = a})

instance GoogleRequest ServiceAccountkeysInsert where
        type Rs ServiceAccountkeysInsert = ServiceAccountKey
        type Scopes ServiceAccountkeysInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ServiceAccountkeysInsert'{..}
          = go _saiEnterpriseId (Just AltJSON) _saiPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ServiceAccountkeysInsertResource)
                      mempty
