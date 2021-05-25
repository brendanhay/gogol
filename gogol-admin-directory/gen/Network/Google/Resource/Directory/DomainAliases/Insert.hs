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
-- Module      : Network.Google.Resource.Directory.DomainAliases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a domain alias of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.insert@.
module Network.Google.Resource.Directory.DomainAliases.Insert
    (
    -- * REST Resource
      DomainAliasesInsertResource

    -- * Creating a Request
    , domainAliasesInsert
    , DomainAliasesInsert

    -- * Request Lenses
    , daiXgafv
    , daiUploadProtocol
    , daiAccessToken
    , daiUploadType
    , daiPayload
    , daiCustomer
    , daiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domainAliases.insert@ method which the
-- 'DomainAliasesInsert' request conforms to.
type DomainAliasesInsertResource =
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
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DomainAlias :>
                               Post '[JSON] DomainAlias

-- | Inserts a domain alias of the customer.
--
-- /See:/ 'domainAliasesInsert' smart constructor.
data DomainAliasesInsert =
  DomainAliasesInsert'
    { _daiXgafv :: !(Maybe Xgafv)
    , _daiUploadProtocol :: !(Maybe Text)
    , _daiAccessToken :: !(Maybe Text)
    , _daiUploadType :: !(Maybe Text)
    , _daiPayload :: !DomainAlias
    , _daiCustomer :: !Text
    , _daiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiXgafv'
--
-- * 'daiUploadProtocol'
--
-- * 'daiAccessToken'
--
-- * 'daiUploadType'
--
-- * 'daiPayload'
--
-- * 'daiCustomer'
--
-- * 'daiCallback'
domainAliasesInsert
    :: DomainAlias -- ^ 'daiPayload'
    -> Text -- ^ 'daiCustomer'
    -> DomainAliasesInsert
domainAliasesInsert pDaiPayload_ pDaiCustomer_ =
  DomainAliasesInsert'
    { _daiXgafv = Nothing
    , _daiUploadProtocol = Nothing
    , _daiAccessToken = Nothing
    , _daiUploadType = Nothing
    , _daiPayload = pDaiPayload_
    , _daiCustomer = pDaiCustomer_
    , _daiCallback = Nothing
    }


-- | V1 error format.
daiXgafv :: Lens' DomainAliasesInsert (Maybe Xgafv)
daiXgafv = lens _daiXgafv (\ s a -> s{_daiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
daiUploadProtocol :: Lens' DomainAliasesInsert (Maybe Text)
daiUploadProtocol
  = lens _daiUploadProtocol
      (\ s a -> s{_daiUploadProtocol = a})

-- | OAuth access token.
daiAccessToken :: Lens' DomainAliasesInsert (Maybe Text)
daiAccessToken
  = lens _daiAccessToken
      (\ s a -> s{_daiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
daiUploadType :: Lens' DomainAliasesInsert (Maybe Text)
daiUploadType
  = lens _daiUploadType
      (\ s a -> s{_daiUploadType = a})

-- | Multipart request metadata.
daiPayload :: Lens' DomainAliasesInsert DomainAlias
daiPayload
  = lens _daiPayload (\ s a -> s{_daiPayload = a})

-- | Immutable ID of the Google Workspace account.
daiCustomer :: Lens' DomainAliasesInsert Text
daiCustomer
  = lens _daiCustomer (\ s a -> s{_daiCustomer = a})

-- | JSONP
daiCallback :: Lens' DomainAliasesInsert (Maybe Text)
daiCallback
  = lens _daiCallback (\ s a -> s{_daiCallback = a})

instance GoogleRequest DomainAliasesInsert where
        type Rs DomainAliasesInsert = DomainAlias
        type Scopes DomainAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainAliasesInsert'{..}
          = go _daiCustomer _daiXgafv _daiUploadProtocol
              _daiAccessToken
              _daiUploadType
              _daiCallback
              (Just AltJSON)
              _daiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy DomainAliasesInsertResource)
                      mempty
