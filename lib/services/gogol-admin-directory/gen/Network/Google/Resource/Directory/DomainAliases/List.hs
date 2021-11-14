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
-- Module      : Network.Google.Resource.Directory.DomainAliases.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domain aliases of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.list@.
module Network.Google.Resource.Directory.DomainAliases.List
    (
    -- * REST Resource
      DomainAliasesListResource

    -- * Creating a Request
    , domainAliasesList
    , DomainAliasesList

    -- * Request Lenses
    , dalXgafv
    , dalUploadProtocol
    , dalAccessToken
    , dalUploadType
    , dalCustomer
    , dalParentDomainName
    , dalCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domainAliases.list@ method which the
-- 'DomainAliasesList' request conforms to.
type DomainAliasesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domainaliases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "parentDomainName" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DomainAliases

-- | Lists the domain aliases of the customer.
--
-- /See:/ 'domainAliasesList' smart constructor.
data DomainAliasesList =
  DomainAliasesList'
    { _dalXgafv :: !(Maybe Xgafv)
    , _dalUploadProtocol :: !(Maybe Text)
    , _dalAccessToken :: !(Maybe Text)
    , _dalUploadType :: !(Maybe Text)
    , _dalCustomer :: !Text
    , _dalParentDomainName :: !(Maybe Text)
    , _dalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalXgafv'
--
-- * 'dalUploadProtocol'
--
-- * 'dalAccessToken'
--
-- * 'dalUploadType'
--
-- * 'dalCustomer'
--
-- * 'dalParentDomainName'
--
-- * 'dalCallback'
domainAliasesList
    :: Text -- ^ 'dalCustomer'
    -> DomainAliasesList
domainAliasesList pDalCustomer_ =
  DomainAliasesList'
    { _dalXgafv = Nothing
    , _dalUploadProtocol = Nothing
    , _dalAccessToken = Nothing
    , _dalUploadType = Nothing
    , _dalCustomer = pDalCustomer_
    , _dalParentDomainName = Nothing
    , _dalCallback = Nothing
    }


-- | V1 error format.
dalXgafv :: Lens' DomainAliasesList (Maybe Xgafv)
dalXgafv = lens _dalXgafv (\ s a -> s{_dalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dalUploadProtocol :: Lens' DomainAliasesList (Maybe Text)
dalUploadProtocol
  = lens _dalUploadProtocol
      (\ s a -> s{_dalUploadProtocol = a})

-- | OAuth access token.
dalAccessToken :: Lens' DomainAliasesList (Maybe Text)
dalAccessToken
  = lens _dalAccessToken
      (\ s a -> s{_dalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dalUploadType :: Lens' DomainAliasesList (Maybe Text)
dalUploadType
  = lens _dalUploadType
      (\ s a -> s{_dalUploadType = a})

-- | Immutable ID of the Google Workspace account.
dalCustomer :: Lens' DomainAliasesList Text
dalCustomer
  = lens _dalCustomer (\ s a -> s{_dalCustomer = a})

-- | Name of the parent domain for which domain aliases are to be fetched.
dalParentDomainName :: Lens' DomainAliasesList (Maybe Text)
dalParentDomainName
  = lens _dalParentDomainName
      (\ s a -> s{_dalParentDomainName = a})

-- | JSONP
dalCallback :: Lens' DomainAliasesList (Maybe Text)
dalCallback
  = lens _dalCallback (\ s a -> s{_dalCallback = a})

instance GoogleRequest DomainAliasesList where
        type Rs DomainAliasesList = DomainAliases
        type Scopes DomainAliasesList =
             '["https://www.googleapis.com/auth/admin.directory.domain",
               "https://www.googleapis.com/auth/admin.directory.domain.readonly"]
        requestClient DomainAliasesList'{..}
          = go _dalCustomer _dalXgafv _dalUploadProtocol
              _dalAccessToken
              _dalUploadType
              _dalParentDomainName
              _dalCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy DomainAliasesListResource)
                      mempty
