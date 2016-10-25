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
-- Module      : Network.Google.Resource.DNS.DNSkeys.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing DnsKey.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.dnskeys.get@.
module Network.Google.Resource.DNS.DNSkeys.Get
    (
    -- * REST Resource
      DNSkeysGetResource

    -- * Creating a Request
    , dnskeysGet
    , DNSkeysGet

    -- * Request Lenses
    , dgProject
    , dgDigestType
    , dgDNSKeyId
    , dgManagedZone
    , dgClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.dnskeys.get@ method which the
-- 'DNSkeysGet' request conforms to.
type DNSkeysGetResource =
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
-- /See:/ 'dnskeysGet' smart constructor.
data DNSkeysGet = DNSkeysGet'
    { _dgProject           :: !Text
    , _dgDigestType        :: !(Maybe Text)
    , _dgDNSKeyId          :: !Text
    , _dgManagedZone       :: !Text
    , _dgClientOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DNSkeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgProject'
--
-- * 'dgDigestType'
--
-- * 'dgDNSKeyId'
--
-- * 'dgManagedZone'
--
-- * 'dgClientOperationId'
dnskeysGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDNSKeyId'
    -> Text -- ^ 'dgManagedZone'
    -> DNSkeysGet
dnskeysGet pDgProject_ pDgDNSKeyId_ pDgManagedZone_ =
    DNSkeysGet'
    { _dgProject = pDgProject_
    , _dgDigestType = Nothing
    , _dgDNSKeyId = pDgDNSKeyId_
    , _dgManagedZone = pDgManagedZone_
    , _dgClientOperationId = Nothing
    }

-- | Identifies the project addressed by this request.
dgProject :: Lens' DNSkeysGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | An optional comma-separated list of digest types to compute and display
-- for key signing keys. If omitted, the recommended digest type will be
-- computed and displayed.
dgDigestType :: Lens' DNSkeysGet (Maybe Text)
dgDigestType
  = lens _dgDigestType (\ s a -> s{_dgDigestType = a})

-- | The identifier of the requested DnsKey.
dgDNSKeyId :: Lens' DNSkeysGet Text
dgDNSKeyId
  = lens _dgDNSKeyId (\ s a -> s{_dgDNSKeyId = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
dgManagedZone :: Lens' DNSkeysGet Text
dgManagedZone
  = lens _dgManagedZone
      (\ s a -> s{_dgManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
dgClientOperationId :: Lens' DNSkeysGet (Maybe Text)
dgClientOperationId
  = lens _dgClientOperationId
      (\ s a -> s{_dgClientOperationId = a})

instance GoogleRequest DNSkeysGet where
        type Rs DNSkeysGet = DNSKey
        type Scopes DNSkeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSkeysGet'{..}
          = go _dgProject _dgManagedZone _dgDNSKeyId
              _dgDigestType
              _dgClientOperationId
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSkeysGetResource)
                      mempty
