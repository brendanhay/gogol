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
-- Module      : Network.Google.Resource.Directory.Domains.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domains of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.domains.list@.
module Network.Google.Resource.Directory.Domains.List
    (
    -- * REST Resource
      DomainsListResource

    -- * Creating a Request
    , domainsList
    , DomainsList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlAccessToken
    , dlUploadType
    , dlCustomer
    , dlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.domains.list@ method which the
-- 'DomainsList' request conforms to.
type DomainsListResource =
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
                           QueryParam "alt" AltJSON :> Get '[JSON] Domains2

-- | Lists the domains of the customer.
--
-- /See:/ 'domainsList' smart constructor.
data DomainsList =
  DomainsList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlCustomer :: !Text
    , _dlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlCustomer'
--
-- * 'dlCallback'
domainsList
    :: Text -- ^ 'dlCustomer'
    -> DomainsList
domainsList pDlCustomer_ =
  DomainsList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlCustomer = pDlCustomer_
    , _dlCallback = Nothing
    }


-- | V1 error format.
dlXgafv :: Lens' DomainsList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DomainsList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | OAuth access token.
dlAccessToken :: Lens' DomainsList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DomainsList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | Immutable ID of the Google Workspace account.
dlCustomer :: Lens' DomainsList Text
dlCustomer
  = lens _dlCustomer (\ s a -> s{_dlCustomer = a})

-- | JSONP
dlCallback :: Lens' DomainsList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DomainsList where
        type Rs DomainsList = Domains2
        type Scopes DomainsList =
             '["https://www.googleapis.com/auth/admin.directory.domain",
               "https://www.googleapis.com/auth/admin.directory.domain.readonly"]
        requestClient DomainsList'{..}
          = go _dlCustomer _dlXgafv _dlUploadProtocol
              _dlAccessToken
              _dlUploadType
              _dlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsListResource)
                      mempty
