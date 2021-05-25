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
-- Module      : Network.Google.Resource.Directory.Domains.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.delete@.
module Network.Google.Resource.Directory.Domains.Delete
    (
    -- * REST Resource
      DomainsDeleteResource

    -- * Creating a Request
    , domainsDelete
    , DomainsDelete

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddAccessToken
    , ddUploadType
    , ddCustomer
    , ddDomainName
    , ddCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domains.delete@ method which the
-- 'DomainsDelete' request conforms to.
type DomainsDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a domain of the customer.
--
-- /See:/ 'domainsDelete' smart constructor.
data DomainsDelete =
  DomainsDelete'
    { _ddXgafv :: !(Maybe Xgafv)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddAccessToken :: !(Maybe Text)
    , _ddUploadType :: !(Maybe Text)
    , _ddCustomer :: !Text
    , _ddDomainName :: !Text
    , _ddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddCustomer'
--
-- * 'ddDomainName'
--
-- * 'ddCallback'
domainsDelete
    :: Text -- ^ 'ddCustomer'
    -> Text -- ^ 'ddDomainName'
    -> DomainsDelete
domainsDelete pDdCustomer_ pDdDomainName_ =
  DomainsDelete'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddCustomer = pDdCustomer_
    , _ddDomainName = pDdDomainName_
    , _ddCallback = Nothing
    }


-- | V1 error format.
ddXgafv :: Lens' DomainsDelete (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DomainsDelete (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | OAuth access token.
ddAccessToken :: Lens' DomainsDelete (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DomainsDelete (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | Immutable ID of the Google Workspace account.
ddCustomer :: Lens' DomainsDelete Text
ddCustomer
  = lens _ddCustomer (\ s a -> s{_ddCustomer = a})

-- | Name of domain to be deleted
ddDomainName :: Lens' DomainsDelete Text
ddDomainName
  = lens _ddDomainName (\ s a -> s{_ddDomainName = a})

-- | JSONP
ddCallback :: Lens' DomainsDelete (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleRequest DomainsDelete where
        type Rs DomainsDelete = ()
        type Scopes DomainsDelete =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainsDelete'{..}
          = go _ddCustomer _ddDomainName _ddXgafv
              _ddUploadProtocol
              _ddAccessToken
              _ddUploadType
              _ddCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsDeleteResource)
                      mempty
