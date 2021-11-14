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
-- Module      : Network.Google.Resource.Directory.Domains.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.insert@.
module Network.Google.Resource.Directory.Domains.Insert
    (
    -- * REST Resource
      DomainsInsertResource

    -- * Creating a Request
    , domainsInsert
    , DomainsInsert

    -- * Request Lenses
    , diXgafv
    , diUploadProtocol
    , diAccessToken
    , diUploadType
    , diPayload
    , diCustomer
    , diCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domains.insert@ method which the
-- 'DomainsInsert' request conforms to.
type DomainsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domains" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Domains :> Post '[JSON] Domains

-- | Inserts a domain of the customer.
--
-- /See:/ 'domainsInsert' smart constructor.
data DomainsInsert =
  DomainsInsert'
    { _diXgafv :: !(Maybe Xgafv)
    , _diUploadProtocol :: !(Maybe Text)
    , _diAccessToken :: !(Maybe Text)
    , _diUploadType :: !(Maybe Text)
    , _diPayload :: !Domains
    , _diCustomer :: !Text
    , _diCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diXgafv'
--
-- * 'diUploadProtocol'
--
-- * 'diAccessToken'
--
-- * 'diUploadType'
--
-- * 'diPayload'
--
-- * 'diCustomer'
--
-- * 'diCallback'
domainsInsert
    :: Domains -- ^ 'diPayload'
    -> Text -- ^ 'diCustomer'
    -> DomainsInsert
domainsInsert pDiPayload_ pDiCustomer_ =
  DomainsInsert'
    { _diXgafv = Nothing
    , _diUploadProtocol = Nothing
    , _diAccessToken = Nothing
    , _diUploadType = Nothing
    , _diPayload = pDiPayload_
    , _diCustomer = pDiCustomer_
    , _diCallback = Nothing
    }


-- | V1 error format.
diXgafv :: Lens' DomainsInsert (Maybe Xgafv)
diXgafv = lens _diXgafv (\ s a -> s{_diXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
diUploadProtocol :: Lens' DomainsInsert (Maybe Text)
diUploadProtocol
  = lens _diUploadProtocol
      (\ s a -> s{_diUploadProtocol = a})

-- | OAuth access token.
diAccessToken :: Lens' DomainsInsert (Maybe Text)
diAccessToken
  = lens _diAccessToken
      (\ s a -> s{_diAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
diUploadType :: Lens' DomainsInsert (Maybe Text)
diUploadType
  = lens _diUploadType (\ s a -> s{_diUploadType = a})

-- | Multipart request metadata.
diPayload :: Lens' DomainsInsert Domains
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | Immutable ID of the Google Workspace account.
diCustomer :: Lens' DomainsInsert Text
diCustomer
  = lens _diCustomer (\ s a -> s{_diCustomer = a})

-- | JSONP
diCallback :: Lens' DomainsInsert (Maybe Text)
diCallback
  = lens _diCallback (\ s a -> s{_diCallback = a})

instance GoogleRequest DomainsInsert where
        type Rs DomainsInsert = Domains
        type Scopes DomainsInsert =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainsInsert'{..}
          = go _diCustomer _diXgafv _diUploadProtocol
              _diAccessToken
              _diUploadType
              _diCallback
              (Just AltJSON)
              _diPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsInsertResource)
                      mempty
