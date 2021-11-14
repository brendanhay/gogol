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
-- Module      : Network.Google.Resource.DNS.DNSKeys.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing DnsKey.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.dnsKeys.get@.
module Network.Google.Resource.DNS.DNSKeys.Get
    (
    -- * REST Resource
      DNSKeysGetResource

    -- * Creating a Request
    , dnsKeysGet
    , DNSKeysGet

    -- * Request Lenses
    , dkgXgafv
    , dkgUploadProtocol
    , dkgProject
    , dkgAccessToken
    , dkgDigestType
    , dkgDNSKeyId
    , dkgUploadType
    , dkgManagedZone
    , dkgClientOperationId
    , dkgCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.dnsKeys.get@ method which the
-- 'DNSKeysGet' request conforms to.
type DNSKeysGetResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "dnsKeys" :>
                   Capture "dnsKeyId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "digestType" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "clientOperationId" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DNSKey

-- | Fetch the representation of an existing DnsKey.
--
-- /See:/ 'dnsKeysGet' smart constructor.
data DNSKeysGet =
  DNSKeysGet'
    { _dkgXgafv :: !(Maybe Xgafv)
    , _dkgUploadProtocol :: !(Maybe Text)
    , _dkgProject :: !Text
    , _dkgAccessToken :: !(Maybe Text)
    , _dkgDigestType :: !(Maybe Text)
    , _dkgDNSKeyId :: !Text
    , _dkgUploadType :: !(Maybe Text)
    , _dkgManagedZone :: !Text
    , _dkgClientOperationId :: !(Maybe Text)
    , _dkgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkgXgafv'
--
-- * 'dkgUploadProtocol'
--
-- * 'dkgProject'
--
-- * 'dkgAccessToken'
--
-- * 'dkgDigestType'
--
-- * 'dkgDNSKeyId'
--
-- * 'dkgUploadType'
--
-- * 'dkgManagedZone'
--
-- * 'dkgClientOperationId'
--
-- * 'dkgCallback'
dnsKeysGet
    :: Text -- ^ 'dkgProject'
    -> Text -- ^ 'dkgDNSKeyId'
    -> Text -- ^ 'dkgManagedZone'
    -> DNSKeysGet
dnsKeysGet pDkgProject_ pDkgDNSKeyId_ pDkgManagedZone_ =
  DNSKeysGet'
    { _dkgXgafv = Nothing
    , _dkgUploadProtocol = Nothing
    , _dkgProject = pDkgProject_
    , _dkgAccessToken = Nothing
    , _dkgDigestType = Nothing
    , _dkgDNSKeyId = pDkgDNSKeyId_
    , _dkgUploadType = Nothing
    , _dkgManagedZone = pDkgManagedZone_
    , _dkgClientOperationId = Nothing
    , _dkgCallback = Nothing
    }


-- | V1 error format.
dkgXgafv :: Lens' DNSKeysGet (Maybe Xgafv)
dkgXgafv = lens _dkgXgafv (\ s a -> s{_dkgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dkgUploadProtocol :: Lens' DNSKeysGet (Maybe Text)
dkgUploadProtocol
  = lens _dkgUploadProtocol
      (\ s a -> s{_dkgUploadProtocol = a})

-- | Identifies the project addressed by this request.
dkgProject :: Lens' DNSKeysGet Text
dkgProject
  = lens _dkgProject (\ s a -> s{_dkgProject = a})

-- | OAuth access token.
dkgAccessToken :: Lens' DNSKeysGet (Maybe Text)
dkgAccessToken
  = lens _dkgAccessToken
      (\ s a -> s{_dkgAccessToken = a})

-- | An optional comma-separated list of digest types to compute and display
-- for key signing keys. If omitted, the recommended digest type will be
-- computed and displayed.
dkgDigestType :: Lens' DNSKeysGet (Maybe Text)
dkgDigestType
  = lens _dkgDigestType
      (\ s a -> s{_dkgDigestType = a})

-- | The identifier of the requested DnsKey.
dkgDNSKeyId :: Lens' DNSKeysGet Text
dkgDNSKeyId
  = lens _dkgDNSKeyId (\ s a -> s{_dkgDNSKeyId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dkgUploadType :: Lens' DNSKeysGet (Maybe Text)
dkgUploadType
  = lens _dkgUploadType
      (\ s a -> s{_dkgUploadType = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
dkgManagedZone :: Lens' DNSKeysGet Text
dkgManagedZone
  = lens _dkgManagedZone
      (\ s a -> s{_dkgManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
dkgClientOperationId :: Lens' DNSKeysGet (Maybe Text)
dkgClientOperationId
  = lens _dkgClientOperationId
      (\ s a -> s{_dkgClientOperationId = a})

-- | JSONP
dkgCallback :: Lens' DNSKeysGet (Maybe Text)
dkgCallback
  = lens _dkgCallback (\ s a -> s{_dkgCallback = a})

instance GoogleRequest DNSKeysGet where
        type Rs DNSKeysGet = DNSKey
        type Scopes DNSKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSKeysGet'{..}
          = go _dkgProject _dkgManagedZone _dkgDNSKeyId
              _dkgXgafv
              _dkgUploadProtocol
              _dkgAccessToken
              _dkgDigestType
              _dkgUploadType
              _dkgClientOperationId
              _dkgCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSKeysGetResource)
                      mempty
