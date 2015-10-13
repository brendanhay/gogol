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
-- Module      : Network.Google.Resource.DNS.ManagedZones.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSManagedZonesList@.
module Network.Google.Resource.DNS.ManagedZones.List
    (
    -- * REST Resource
      ManagedZonesListResource

    -- * Creating a Request
    , managedZonesList'
    , ManagedZonesList'

    -- * Request Lenses
    , mzlProject
    , mzlPageToken
    , mzlDNSName
    , mzlMaxResults
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesList@ method which the
-- 'ManagedZonesList'' request conforms to.
type ManagedZonesListResource =
     Capture "project" Text :>
       "managedZones" :>
         QueryParam "pageToken" Text :>
           QueryParam "dnsName" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ManagedZonesListResponse

-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ 'managedZonesList'' smart constructor.
data ManagedZonesList' = ManagedZonesList'
    { _mzlProject    :: !Text
    , _mzlPageToken  :: !(Maybe Text)
    , _mzlDNSName    :: !(Maybe Text)
    , _mzlMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlProject'
--
-- * 'mzlPageToken'
--
-- * 'mzlDNSName'
--
-- * 'mzlMaxResults'
managedZonesList'
    :: Text -- ^ 'project'
    -> ManagedZonesList'
managedZonesList' pMzlProject_ =
    ManagedZonesList'
    { _mzlProject = pMzlProject_
    , _mzlPageToken = Nothing
    , _mzlDNSName = Nothing
    , _mzlMaxResults = Nothing
    }

-- | Identifies the project addressed by this request.
mzlProject :: Lens' ManagedZonesList' Text
mzlProject
  = lens _mzlProject (\ s a -> s{_mzlProject = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
mzlPageToken :: Lens' ManagedZonesList' (Maybe Text)
mzlPageToken
  = lens _mzlPageToken (\ s a -> s{_mzlPageToken = a})

-- | Restricts the list to return only zones with this domain name.
mzlDNSName :: Lens' ManagedZonesList' (Maybe Text)
mzlDNSName
  = lens _mzlDNSName (\ s a -> s{_mzlDNSName = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
mzlMaxResults :: Lens' ManagedZonesList' (Maybe Int32)
mzlMaxResults
  = lens _mzlMaxResults
      (\ s a -> s{_mzlMaxResults = a})

instance GoogleRequest ManagedZonesList' where
        type Rs ManagedZonesList' = ManagedZonesListResponse
        requestClient ManagedZonesList'{..}
          = go _mzlProject _mzlPageToken _mzlDNSName
              _mzlMaxResults
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesListResource)
                      mempty
