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
-- Module      : Network.Google.Resource.Directory.Domains.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.get@.
module Network.Google.Resource.Directory.Domains.Get
    (
    -- * REST Resource
      DomainsGetResource

    -- * Creating a Request
    , domainsGet
    , DomainsGet

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgAccessToken
    , dgUploadType
    , dgCustomer
    , dgDomainName
    , dgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domains.get@ method which the
-- 'DomainsGet' request conforms to.
type DomainsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domains" :>
                 Capture "domainName" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Domains

-- | Retrieves a domain of the customer.
--
-- /See:/ 'domainsGet' smart constructor.
data DomainsGet =
  DomainsGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgCustomer :: !Text
    , _dgDomainName :: !Text
    , _dgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgCustomer'
--
-- * 'dgDomainName'
--
-- * 'dgCallback'
domainsGet
    :: Text -- ^ 'dgCustomer'
    -> Text -- ^ 'dgDomainName'
    -> DomainsGet
domainsGet pDgCustomer_ pDgDomainName_ =
  DomainsGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgCustomer = pDgCustomer_
    , _dgDomainName = pDgDomainName_
    , _dgCallback = Nothing
    }


-- | V1 error format.
dgXgafv :: Lens' DomainsGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DomainsGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | OAuth access token.
dgAccessToken :: Lens' DomainsGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DomainsGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | Immutable ID of the Google Workspace account.
dgCustomer :: Lens' DomainsGet Text
dgCustomer
  = lens _dgCustomer (\ s a -> s{_dgCustomer = a})

-- | Name of domain to be retrieved
dgDomainName :: Lens' DomainsGet Text
dgDomainName
  = lens _dgDomainName (\ s a -> s{_dgDomainName = a})

-- | JSONP
dgCallback :: Lens' DomainsGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DomainsGet where
        type Rs DomainsGet = Domains
        type Scopes DomainsGet =
             '["https://www.googleapis.com/auth/admin.directory.domain",
               "https://www.googleapis.com/auth/admin.directory.domain.readonly"]
        requestClient DomainsGet'{..}
          = go _dgCustomer _dgDomainName _dgXgafv
              _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsGetResource)
                      mempty
