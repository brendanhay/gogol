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
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.dnsKeys.list@.
module Network.Google.Resource.DNS.DNSKeys.List
    (
    -- * REST Resource
      DNSKeysListResource

    -- * Creating a Request
    , dnsKeysList
    , DNSKeysList

    -- * Request Lenses
    , dklXgafv
    , dklUploadProtocol
    , dklProject
    , dklAccessToken
    , dklDigestType
    , dklUploadType
    , dklPageToken
    , dklManagedZone
    , dklMaxResults
    , dklCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

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
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "digestType" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DNSKeysListResponse

-- | Enumerate DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ 'dnsKeysList' smart constructor.
data DNSKeysList =
  DNSKeysList'
    { _dklXgafv :: !(Maybe Xgafv)
    , _dklUploadProtocol :: !(Maybe Text)
    , _dklProject :: !Text
    , _dklAccessToken :: !(Maybe Text)
    , _dklDigestType :: !(Maybe Text)
    , _dklUploadType :: !(Maybe Text)
    , _dklPageToken :: !(Maybe Text)
    , _dklManagedZone :: !Text
    , _dklMaxResults :: !(Maybe (Textual Int32))
    , _dklCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dklXgafv'
--
-- * 'dklUploadProtocol'
--
-- * 'dklProject'
--
-- * 'dklAccessToken'
--
-- * 'dklDigestType'
--
-- * 'dklUploadType'
--
-- * 'dklPageToken'
--
-- * 'dklManagedZone'
--
-- * 'dklMaxResults'
--
-- * 'dklCallback'
dnsKeysList
    :: Text -- ^ 'dklProject'
    -> Text -- ^ 'dklManagedZone'
    -> DNSKeysList
dnsKeysList pDklProject_ pDklManagedZone_ =
  DNSKeysList'
    { _dklXgafv = Nothing
    , _dklUploadProtocol = Nothing
    , _dklProject = pDklProject_
    , _dklAccessToken = Nothing
    , _dklDigestType = Nothing
    , _dklUploadType = Nothing
    , _dklPageToken = Nothing
    , _dklManagedZone = pDklManagedZone_
    , _dklMaxResults = Nothing
    , _dklCallback = Nothing
    }


-- | V1 error format.
dklXgafv :: Lens' DNSKeysList (Maybe Xgafv)
dklXgafv = lens _dklXgafv (\ s a -> s{_dklXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dklUploadProtocol :: Lens' DNSKeysList (Maybe Text)
dklUploadProtocol
  = lens _dklUploadProtocol
      (\ s a -> s{_dklUploadProtocol = a})

-- | Identifies the project addressed by this request.
dklProject :: Lens' DNSKeysList Text
dklProject
  = lens _dklProject (\ s a -> s{_dklProject = a})

-- | OAuth access token.
dklAccessToken :: Lens' DNSKeysList (Maybe Text)
dklAccessToken
  = lens _dklAccessToken
      (\ s a -> s{_dklAccessToken = a})

-- | An optional comma-separated list of digest types to compute and display
-- for key signing keys. If omitted, the recommended digest type will be
-- computed and displayed.
dklDigestType :: Lens' DNSKeysList (Maybe Text)
dklDigestType
  = lens _dklDigestType
      (\ s a -> s{_dklDigestType = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dklUploadType :: Lens' DNSKeysList (Maybe Text)
dklUploadType
  = lens _dklUploadType
      (\ s a -> s{_dklUploadType = a})

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

-- | JSONP
dklCallback :: Lens' DNSKeysList (Maybe Text)
dklCallback
  = lens _dklCallback (\ s a -> s{_dklCallback = a})

instance GoogleRequest DNSKeysList where
        type Rs DNSKeysList = DNSKeysListResponse
        type Scopes DNSKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient DNSKeysList'{..}
          = go _dklProject _dklManagedZone _dklXgafv
              _dklUploadProtocol
              _dklAccessToken
              _dklDigestType
              _dklUploadType
              _dklPageToken
              _dklMaxResults
              _dklCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy DNSKeysListResource)
                      mempty
