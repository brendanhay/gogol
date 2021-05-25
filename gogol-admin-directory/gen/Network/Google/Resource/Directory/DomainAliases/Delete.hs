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
-- Module      : Network.Google.Resource.Directory.DomainAliases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a domain Alias of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domainAliases.delete@.
module Network.Google.Resource.Directory.DomainAliases.Delete
    (
    -- * REST Resource
      DomainAliasesDeleteResource

    -- * Creating a Request
    , domainAliasesDelete
    , DomainAliasesDelete

    -- * Request Lenses
    , dadXgafv
    , dadUploadProtocol
    , dadAccessToken
    , dadUploadType
    , dadDomainAliasName
    , dadCustomer
    , dadCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domainAliases.delete@ method which the
-- 'DomainAliasesDelete' request conforms to.
type DomainAliasesDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a domain Alias of the customer.
--
-- /See:/ 'domainAliasesDelete' smart constructor.
data DomainAliasesDelete =
  DomainAliasesDelete'
    { _dadXgafv :: !(Maybe Xgafv)
    , _dadUploadProtocol :: !(Maybe Text)
    , _dadAccessToken :: !(Maybe Text)
    , _dadUploadType :: !(Maybe Text)
    , _dadDomainAliasName :: !Text
    , _dadCustomer :: !Text
    , _dadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadXgafv'
--
-- * 'dadUploadProtocol'
--
-- * 'dadAccessToken'
--
-- * 'dadUploadType'
--
-- * 'dadDomainAliasName'
--
-- * 'dadCustomer'
--
-- * 'dadCallback'
domainAliasesDelete
    :: Text -- ^ 'dadDomainAliasName'
    -> Text -- ^ 'dadCustomer'
    -> DomainAliasesDelete
domainAliasesDelete pDadDomainAliasName_ pDadCustomer_ =
  DomainAliasesDelete'
    { _dadXgafv = Nothing
    , _dadUploadProtocol = Nothing
    , _dadAccessToken = Nothing
    , _dadUploadType = Nothing
    , _dadDomainAliasName = pDadDomainAliasName_
    , _dadCustomer = pDadCustomer_
    , _dadCallback = Nothing
    }


-- | V1 error format.
dadXgafv :: Lens' DomainAliasesDelete (Maybe Xgafv)
dadXgafv = lens _dadXgafv (\ s a -> s{_dadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dadUploadProtocol :: Lens' DomainAliasesDelete (Maybe Text)
dadUploadProtocol
  = lens _dadUploadProtocol
      (\ s a -> s{_dadUploadProtocol = a})

-- | OAuth access token.
dadAccessToken :: Lens' DomainAliasesDelete (Maybe Text)
dadAccessToken
  = lens _dadAccessToken
      (\ s a -> s{_dadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dadUploadType :: Lens' DomainAliasesDelete (Maybe Text)
dadUploadType
  = lens _dadUploadType
      (\ s a -> s{_dadUploadType = a})

-- | Name of domain alias to be retrieved.
dadDomainAliasName :: Lens' DomainAliasesDelete Text
dadDomainAliasName
  = lens _dadDomainAliasName
      (\ s a -> s{_dadDomainAliasName = a})

-- | Immutable ID of the Google Workspace account.
dadCustomer :: Lens' DomainAliasesDelete Text
dadCustomer
  = lens _dadCustomer (\ s a -> s{_dadCustomer = a})

-- | JSONP
dadCallback :: Lens' DomainAliasesDelete (Maybe Text)
dadCallback
  = lens _dadCallback (\ s a -> s{_dadCallback = a})

instance GoogleRequest DomainAliasesDelete where
        type Rs DomainAliasesDelete = ()
        type Scopes DomainAliasesDelete =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainAliasesDelete'{..}
          = go _dadCustomer _dadDomainAliasName _dadXgafv
              _dadUploadProtocol
              _dadAccessToken
              _dadUploadType
              _dadCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy DomainAliasesDeleteResource)
                      mempty
