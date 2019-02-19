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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing DnsKey.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.dnsKeys.get@.
module Network.Google.Resource.DNS.DNSKeys.Get
    (
    -- * REST Resource
      DNSKeysGetResource

    -- * Creating a Request
    , dnsKeysGet
    , DNSKeysGet

    -- * Request Lenses
    , dkgProject
    , dkgDigestType
    , dkgDNSKeyId
    , dkgManagedZone
    , dkgClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

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
                     QueryParam "digestType" Text :>
                       QueryParam "clientOperationId" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DNSKey

-- | Fetch the representation of an existing DnsKey.
--
-- /See:/ 'dnsKeysGet' smart constructor.
data DNSKeysGet =
  DNSKeysGet'
    { _dkgProject           :: !Text
    , _dkgDigestType        :: !(Maybe Text)
    , _dkgDNSKeyId          :: !Text
    , _dkgManagedZone       :: !Text
    , _dkgClientOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DNSKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkgProject'
--
-- * 'dkgDigestType'
--
-- * 'dkgDNSKeyId'
--
-- * 'dkgManagedZone'
--
-- * 'dkgClientOperationId'
dnsKeysGet
    :: Text -- ^ 'dkgProject'
    -> Text -- ^ 'dkgDNSKeyId'
    -> Text -- ^ 'dkgManagedZone'
    -> DNSKeysGet
dnsKeysGet pDkgProject_ pDkgDNSKeyId_ pDkgManagedZone_ =
  DNSKeysGet'
    { _dkgProject = pDkgProject_
    , _dkgDigestType = Nothing
    , _dkgDNSKeyId = pDkgDNSKeyId_
    , _dkgManagedZone = pDkgManagedZone_
    , _dkgClientOperationId = Nothing
    }

-- | Identifies the project addressed by this request.
dkgProject :: Lens' DNSKeysGet Text
dkgProject
  = lens _dkgProject (\ s a -> s{_dkgProject = a})

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

instance GoogleRequest DNSKeysGet where
        type Rs DNSKeysGet = DNSKey
        type Scopes DNSKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSKeysGet'{..}
          = go _dkgProject _dkgManagedZone _dkgDNSKeyId
              _dkgDigestType
              _dkgClientOperationId
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSKeysGetResource)
                      mempty
