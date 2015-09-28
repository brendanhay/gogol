{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DNS.ManagedZones.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.list@.
module Network.Google.API.DNS.ManagedZones.List
    (
    -- * REST Resource
      ManagedZonesListAPI

    -- * Creating a Request
    , managedZonesList'
    , ManagedZonesList'

    -- * Request Lenses
    , mzlQuotaUser
    , mzlPrettyPrint
    , mzlProject
    , mzlUserIp
    , mzlKey
    , mzlPageToken
    , mzlOauthToken
    , mzlDnsName
    , mzlMaxResults
    , mzlFields
    , mzlAlt
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for dns.managedZones.list which the
-- 'ManagedZonesList'' request conforms to.
type ManagedZonesListAPI =
     Capture "project" Text :>
       "managedZones" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "dnsName" Text :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ManagedZonesListResponse

-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ 'managedZonesList'' smart constructor.
data ManagedZonesList' = ManagedZonesList'
    { _mzlQuotaUser   :: !(Maybe Text)
    , _mzlPrettyPrint :: !Bool
    , _mzlProject     :: !Text
    , _mzlUserIp      :: !(Maybe Text)
    , _mzlKey         :: !(Maybe Text)
    , _mzlPageToken   :: !(Maybe Text)
    , _mzlOauthToken  :: !(Maybe Text)
    , _mzlDnsName     :: !(Maybe Text)
    , _mzlMaxResults  :: !(Maybe Int32)
    , _mzlFields      :: !(Maybe Text)
    , _mzlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mzlUserIp'
--
-- * 'mzlKey'
--
-- * 'mzlPageToken'
--
-- * 'mzlOauthToken'
--
-- * 'mzlDnsName'
--
-- * 'mzlMaxResults'
--
-- * 'mzlFields'
--
-- * 'mzlAlt'
managedZonesList'
    :: Text -- ^ 'project'
    -> ManagedZonesList'
managedZonesList' pMzlProject_ =
    ManagedZonesList'
    { _mzlQuotaUser = Nothing
    , _mzlPrettyPrint = True
    , _mzlProject = pMzlProject_
    , _mzlUserIp = Nothing
    , _mzlKey = Nothing
    , _mzlPageToken = Nothing
    , _mzlOauthToken = Nothing
    , _mzlDnsName = Nothing
    , _mzlMaxResults = Nothing
    , _mzlFields = Nothing
    , _mzlAlt = JSON
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
mzlUserIp :: Lens' ManagedZonesList' (Maybe Text)
mzlUserIp
  = lens _mzlUserIp (\ s a -> s{_mzlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzlKey :: Lens' ManagedZonesList' (Maybe Text)
mzlKey = lens _mzlKey (\ s a -> s{_mzlKey = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
mzlPageToken :: Lens' ManagedZonesList' (Maybe Text)
mzlPageToken
  = lens _mzlPageToken (\ s a -> s{_mzlPageToken = a})

-- | OAuth 2.0 token for the current user.
mzlOauthToken :: Lens' ManagedZonesList' (Maybe Text)
mzlOauthToken
  = lens _mzlOauthToken
      (\ s a -> s{_mzlOauthToken = a})

-- | Restricts the list to return only zones with this domain name.
mzlDnsName :: Lens' ManagedZonesList' (Maybe Text)
mzlDnsName
  = lens _mzlDnsName (\ s a -> s{_mzlDnsName = a})

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

-- | Data format for the response.
mzlAlt :: Lens' ManagedZonesList' Alt
mzlAlt = lens _mzlAlt (\ s a -> s{_mzlAlt = a})

instance GoogleRequest ManagedZonesList' where
        type Rs ManagedZonesList' = ManagedZonesListResponse
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ManagedZonesList'{..}
          = go _mzlQuotaUser (Just _mzlPrettyPrint) _mzlProject
              _mzlUserIp
              _mzlKey
              _mzlPageToken
              _mzlOauthToken
              _mzlDnsName
              _mzlMaxResults
              _mzlFields
              (Just _mzlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagedZonesListAPI)
                      r
                      u
