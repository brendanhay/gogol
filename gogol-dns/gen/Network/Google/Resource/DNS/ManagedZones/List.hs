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
    , mzlQuotaUser
    , mzlPrettyPrint
    , mzlProject
    , mzlUserIP
    , mzlKey
    , mzlPageToken
    , mzlOAuthToken
    , mzlDNSName
    , mzlMaxResults
    , mzlFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesList@ which the
-- 'ManagedZonesList'' request conforms to.
type ManagedZonesListResource =
     Capture "project" Text :>
       "managedZones" :>
         QueryParam "pageToken" Text :>
           QueryParam "dnsName" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ManagedZonesListResponse

-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ 'managedZonesList'' smart constructor.
data ManagedZonesList' = ManagedZonesList'
    { _mzlQuotaUser   :: !(Maybe Text)
    , _mzlPrettyPrint :: !Bool
    , _mzlProject     :: !Text
    , _mzlUserIP      :: !(Maybe Text)
    , _mzlKey         :: !(Maybe AuthKey)
    , _mzlPageToken   :: !(Maybe Text)
    , _mzlOAuthToken  :: !(Maybe OAuthToken)
    , _mzlDNSName     :: !(Maybe Text)
    , _mzlMaxResults  :: !(Maybe Int32)
    , _mzlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlQuotaUser'
--
-- * 'mzlPrettyPrint'
--
-- * 'mzlProject'
--
-- * 'mzlUserIP'
--
-- * 'mzlKey'
--
-- * 'mzlPageToken'
--
-- * 'mzlOAuthToken'
--
-- * 'mzlDNSName'
--
-- * 'mzlMaxResults'
--
-- * 'mzlFields'
managedZonesList'
    :: Text -- ^ 'project'
    -> ManagedZonesList'
managedZonesList' pMzlProject_ =
    ManagedZonesList'
    { _mzlQuotaUser = Nothing
    , _mzlPrettyPrint = True
    , _mzlProject = pMzlProject_
    , _mzlUserIP = Nothing
    , _mzlKey = Nothing
    , _mzlPageToken = Nothing
    , _mzlOAuthToken = Nothing
    , _mzlDNSName = Nothing
    , _mzlMaxResults = Nothing
    , _mzlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mzlQuotaUser :: Lens' ManagedZonesList' (Maybe Text)
mzlQuotaUser
  = lens _mzlQuotaUser (\ s a -> s{_mzlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mzlPrettyPrint :: Lens' ManagedZonesList' Bool
mzlPrettyPrint
  = lens _mzlPrettyPrint
      (\ s a -> s{_mzlPrettyPrint = a})

-- | Identifies the project addressed by this request.
mzlProject :: Lens' ManagedZonesList' Text
mzlProject
  = lens _mzlProject (\ s a -> s{_mzlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mzlUserIP :: Lens' ManagedZonesList' (Maybe Text)
mzlUserIP
  = lens _mzlUserIP (\ s a -> s{_mzlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzlKey :: Lens' ManagedZonesList' (Maybe AuthKey)
mzlKey = lens _mzlKey (\ s a -> s{_mzlKey = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
mzlPageToken :: Lens' ManagedZonesList' (Maybe Text)
mzlPageToken
  = lens _mzlPageToken (\ s a -> s{_mzlPageToken = a})

-- | OAuth 2.0 token for the current user.
mzlOAuthToken :: Lens' ManagedZonesList' (Maybe OAuthToken)
mzlOAuthToken
  = lens _mzlOAuthToken
      (\ s a -> s{_mzlOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
mzlFields :: Lens' ManagedZonesList' (Maybe Text)
mzlFields
  = lens _mzlFields (\ s a -> s{_mzlFields = a})

instance GoogleAuth ManagedZonesList' where
        _AuthKey = mzlKey . _Just
        _AuthToken = mzlOAuthToken . _Just

instance GoogleRequest ManagedZonesList' where
        type Rs ManagedZonesList' = ManagedZonesListResponse
        request = requestWith dNSRequest
        requestWith rq ManagedZonesList'{..}
          = go _mzlProject _mzlPageToken _mzlDNSName
              _mzlMaxResults
              _mzlQuotaUser
              (Just _mzlPrettyPrint)
              _mzlUserIP
              _mzlFields
              _mzlKey
              _mzlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagedZonesListResource)
                      rq
