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
-- Module      : Network.Google.Resource.DNS.DNSKeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.dnsKeys.list@.
module Network.Google.Resource.DNS.DNSKeys.List
    (
    -- * REST Resource
      DNSKeysListResource

    -- * Creating a Request
    , dnsKeysList
    , DNSKeysList

    -- * Request Lenses
    , dklProject
    , dklDigestType
    , dklPageToken
    , dklManagedZone
    , dklMaxResults
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.dnsKeys.list@ method which the
-- 'DNSKeysList' request conforms to.
type DNSKeysListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "dnsKeys" :>
                   QueryParam "digestType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DNSKeysListResponse

-- | Enumerate DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ 'dnsKeysList' smart constructor.
data DNSKeysList =
  DNSKeysList'
    { _dklProject     :: !Text
    , _dklDigestType  :: !(Maybe Text)
    , _dklPageToken   :: !(Maybe Text)
    , _dklManagedZone :: !Text
    , _dklMaxResults  :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dklProject'
--
-- * 'dklDigestType'
--
-- * 'dklPageToken'
--
-- * 'dklManagedZone'
--
-- * 'dklMaxResults'
dnsKeysList
    :: Text -- ^ 'dklProject'
    -> Text -- ^ 'dklManagedZone'
    -> DNSKeysList
dnsKeysList pDklProject_ pDklManagedZone_ =
  DNSKeysList'
    { _dklProject = pDklProject_
    , _dklDigestType = Nothing
    , _dklPageToken = Nothing
    , _dklManagedZone = pDklManagedZone_
    , _dklMaxResults = Nothing
    }


-- | Identifies the project addressed by this request.
dklProject :: Lens' DNSKeysList Text
dklProject
  = lens _dklProject (\ s a -> s{_dklProject = a})

-- | An optional comma-separated list of digest types to compute and display
-- for key signing keys. If omitted, the recommended digest type will be
-- computed and displayed.
dklDigestType :: Lens' DNSKeysList (Maybe Text)
dklDigestType
  = lens _dklDigestType
      (\ s a -> s{_dklDigestType = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
dklPageToken :: Lens' DNSKeysList (Maybe Text)
dklPageToken
  = lens _dklPageToken (\ s a -> s{_dklPageToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
dklManagedZone :: Lens' DNSKeysList Text
dklManagedZone
  = lens _dklManagedZone
      (\ s a -> s{_dklManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
dklMaxResults :: Lens' DNSKeysList (Maybe Int32)
dklMaxResults
  = lens _dklMaxResults
      (\ s a -> s{_dklMaxResults = a})
      . mapping _Coerce

instance GoogleRequest DNSKeysList where
        type Rs DNSKeysList = DNSKeysListResponse
        type Scopes DNSKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSKeysList'{..}
          = go _dklProject _dklManagedZone _dklDigestType
              _dklPageToken
              _dklMaxResults
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSKeysListResource)
                      mempty
