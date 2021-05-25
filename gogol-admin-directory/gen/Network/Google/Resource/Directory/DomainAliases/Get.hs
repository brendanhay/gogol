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
-- Module      : Network.Google.Resource.Directory.DomainAliases.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a domain alias of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.get@.
module Network.Google.Resource.Directory.DomainAliases.Get
    (
    -- * REST Resource
      DomainAliasesGetResource

    -- * Creating a Request
    , domainAliasesGet
    , DomainAliasesGet

    -- * Request Lenses
    , dagXgafv
    , dagUploadProtocol
    , dagAccessToken
    , dagUploadType
    , dagDomainAliasName
    , dagCustomer
    , dagCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domainAliases.get@ method which the
-- 'DomainAliasesGet' request conforms to.
type DomainAliasesGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domainaliases" :>
                 Capture "domainAliasName" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] DomainAlias

-- | Retrieves a domain alias of the customer.
--
-- /See:/ 'domainAliasesGet' smart constructor.
data DomainAliasesGet =
  DomainAliasesGet'
    { _dagXgafv :: !(Maybe Xgafv)
    , _dagUploadProtocol :: !(Maybe Text)
    , _dagAccessToken :: !(Maybe Text)
    , _dagUploadType :: !(Maybe Text)
    , _dagDomainAliasName :: !Text
    , _dagCustomer :: !Text
    , _dagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dagXgafv'
--
-- * 'dagUploadProtocol'
--
-- * 'dagAccessToken'
--
-- * 'dagUploadType'
--
-- * 'dagDomainAliasName'
--
-- * 'dagCustomer'
--
-- * 'dagCallback'
domainAliasesGet
    :: Text -- ^ 'dagDomainAliasName'
    -> Text -- ^ 'dagCustomer'
    -> DomainAliasesGet
domainAliasesGet pDagDomainAliasName_ pDagCustomer_ =
  DomainAliasesGet'
    { _dagXgafv = Nothing
    , _dagUploadProtocol = Nothing
    , _dagAccessToken = Nothing
    , _dagUploadType = Nothing
    , _dagDomainAliasName = pDagDomainAliasName_
    , _dagCustomer = pDagCustomer_
    , _dagCallback = Nothing
    }


-- | V1 error format.
dagXgafv :: Lens' DomainAliasesGet (Maybe Xgafv)
dagXgafv = lens _dagXgafv (\ s a -> s{_dagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dagUploadProtocol :: Lens' DomainAliasesGet (Maybe Text)
dagUploadProtocol
  = lens _dagUploadProtocol
      (\ s a -> s{_dagUploadProtocol = a})

-- | OAuth access token.
dagAccessToken :: Lens' DomainAliasesGet (Maybe Text)
dagAccessToken
  = lens _dagAccessToken
      (\ s a -> s{_dagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dagUploadType :: Lens' DomainAliasesGet (Maybe Text)
dagUploadType
  = lens _dagUploadType
      (\ s a -> s{_dagUploadType = a})

-- | Name of domain alias to be retrieved.
dagDomainAliasName :: Lens' DomainAliasesGet Text
dagDomainAliasName
  = lens _dagDomainAliasName
      (\ s a -> s{_dagDomainAliasName = a})

-- | Immutable ID of the Google Workspace account.
dagCustomer :: Lens' DomainAliasesGet Text
dagCustomer
  = lens _dagCustomer (\ s a -> s{_dagCustomer = a})

-- | JSONP
dagCallback :: Lens' DomainAliasesGet (Maybe Text)
dagCallback
  = lens _dagCallback (\ s a -> s{_dagCallback = a})

instance GoogleRequest DomainAliasesGet where
        type Rs DomainAliasesGet = DomainAlias
        type Scopes DomainAliasesGet =
             '["https://www.googleapis.com/auth/admin.directory.domain",
               "https://www.googleapis.com/auth/admin.directory.domain.readonly"]
        requestClient DomainAliasesGet'{..}
          = go _dagCustomer _dagDomainAliasName _dagXgafv
              _dagUploadProtocol
              _dagAccessToken
              _dagUploadType
              _dagCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy DomainAliasesGetResource)
                      mempty
