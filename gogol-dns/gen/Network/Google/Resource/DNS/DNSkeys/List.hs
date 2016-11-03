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
-- Module      : Network.Google.Resource.DNS.DNSkeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.dnskeys.list@.
module Network.Google.Resource.DNS.DNSkeys.List
    (
    -- * REST Resource
      DNSkeysListResource

    -- * Creating a Request
    , dnskeysList
    , DNSkeysList

    -- * Request Lenses
    , dlProject
    , dlDigestType
    , dlPageToken
    , dlManagedZone
    , dlMaxResults
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.dnskeys.list@ method which the
-- 'DNSkeysList' request conforms to.
type DNSkeysListResource =
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
-- /See:/ 'dnskeysList' smart constructor.
data DNSkeysList = DNSkeysList'
    { _dlProject     :: !Text
    , _dlDigestType  :: !(Maybe Text)
    , _dlPageToken   :: !(Maybe Text)
    , _dlManagedZone :: !Text
    , _dlMaxResults  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DNSkeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlProject'
--
-- * 'dlDigestType'
--
-- * 'dlPageToken'
--
-- * 'dlManagedZone'
--
-- * 'dlMaxResults'
dnskeysList
    :: Text -- ^ 'dlProject'
    -> Text -- ^ 'dlManagedZone'
    -> DNSkeysList
dnskeysList pDlProject_ pDlManagedZone_ =
    DNSkeysList'
    { _dlProject = pDlProject_
    , _dlDigestType = Nothing
    , _dlPageToken = Nothing
    , _dlManagedZone = pDlManagedZone_
    , _dlMaxResults = Nothing
    }

-- | Identifies the project addressed by this request.
dlProject :: Lens' DNSkeysList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | An optional comma-separated list of digest types to compute and display
-- for key signing keys. If omitted, the recommended digest type will be
-- computed and displayed.
dlDigestType :: Lens' DNSkeysList (Maybe Text)
dlDigestType
  = lens _dlDigestType (\ s a -> s{_dlDigestType = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
dlPageToken :: Lens' DNSkeysList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
dlManagedZone :: Lens' DNSkeysList Text
dlManagedZone
  = lens _dlManagedZone
      (\ s a -> s{_dlManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
dlMaxResults :: Lens' DNSkeysList (Maybe Int32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest DNSkeysList where
        type Rs DNSkeysList = DNSKeysListResponse
        type Scopes DNSkeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSkeysList'{..}
          = go _dlProject _dlManagedZone _dlDigestType
              _dlPageToken
              _dlMaxResults
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSkeysListResource)
                      mempty
