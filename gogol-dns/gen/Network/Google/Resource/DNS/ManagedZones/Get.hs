{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DNS.ManagedZones.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetch the representation of an existing ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSManagedZonesGet@.
module Network.Google.Resource.DNS.ManagedZones.Get
    (
    -- * REST Resource
      ManagedZonesGetResource

    -- * Creating a Request
    , managedZonesGet'
    , ManagedZonesGet'

    -- * Request Lenses
    , mzgQuotaUser
    , mzgPrettyPrint
    , mzgProject
    , mzgUserIp
    , mzgKey
    , mzgOauthToken
    , mzgManagedZone
    , mzgFields
    , mzgAlt
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesGet@ which the
-- 'ManagedZonesGet'' request conforms to.
type ManagedZonesGetResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] ManagedZone

-- | Fetch the representation of an existing ManagedZone.
--
-- /See:/ 'managedZonesGet'' smart constructor.
data ManagedZonesGet' = ManagedZonesGet'
    { _mzgQuotaUser   :: !(Maybe Text)
    , _mzgPrettyPrint :: !Bool
    , _mzgProject     :: !Text
    , _mzgUserIp      :: !(Maybe Text)
    , _mzgKey         :: !(Maybe Text)
    , _mzgOauthToken  :: !(Maybe Text)
    , _mzgManagedZone :: !Text
    , _mzgFields      :: !(Maybe Text)
    , _mzgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzgQuotaUser'
--
-- * 'mzgPrettyPrint'
--
-- * 'mzgProject'
--
-- * 'mzgUserIp'
--
-- * 'mzgKey'
--
-- * 'mzgOauthToken'
--
-- * 'mzgManagedZone'
--
-- * 'mzgFields'
--
-- * 'mzgAlt'
managedZonesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ManagedZonesGet'
managedZonesGet' pMzgProject_ pMzgManagedZone_ =
    ManagedZonesGet'
    { _mzgQuotaUser = Nothing
    , _mzgPrettyPrint = True
    , _mzgProject = pMzgProject_
    , _mzgUserIp = Nothing
    , _mzgKey = Nothing
    , _mzgOauthToken = Nothing
    , _mzgManagedZone = pMzgManagedZone_
    , _mzgFields = Nothing
    , _mzgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mzgQuotaUser :: Lens' ManagedZonesGet' (Maybe Text)
mzgQuotaUser
  = lens _mzgQuotaUser (\ s a -> s{_mzgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mzgPrettyPrint :: Lens' ManagedZonesGet' Bool
mzgPrettyPrint
  = lens _mzgPrettyPrint
      (\ s a -> s{_mzgPrettyPrint = a})

-- | Identifies the project addressed by this request.
mzgProject :: Lens' ManagedZonesGet' Text
mzgProject
  = lens _mzgProject (\ s a -> s{_mzgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mzgUserIp :: Lens' ManagedZonesGet' (Maybe Text)
mzgUserIp
  = lens _mzgUserIp (\ s a -> s{_mzgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzgKey :: Lens' ManagedZonesGet' (Maybe Text)
mzgKey = lens _mzgKey (\ s a -> s{_mzgKey = a})

-- | OAuth 2.0 token for the current user.
mzgOauthToken :: Lens' ManagedZonesGet' (Maybe Text)
mzgOauthToken
  = lens _mzgOauthToken
      (\ s a -> s{_mzgOauthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzgManagedZone :: Lens' ManagedZonesGet' Text
mzgManagedZone
  = lens _mzgManagedZone
      (\ s a -> s{_mzgManagedZone = a})

-- | Selector specifying which fields to include in a partial response.
mzgFields :: Lens' ManagedZonesGet' (Maybe Text)
mzgFields
  = lens _mzgFields (\ s a -> s{_mzgFields = a})

-- | Data format for the response.
mzgAlt :: Lens' ManagedZonesGet' Alt
mzgAlt = lens _mzgAlt (\ s a -> s{_mzgAlt = a})

instance GoogleRequest ManagedZonesGet' where
        type Rs ManagedZonesGet' = ManagedZone
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ManagedZonesGet'{..}
          = go _mzgQuotaUser (Just _mzgPrettyPrint) _mzgProject
              _mzgUserIp
              _mzgKey
              _mzgOauthToken
              _mzgManagedZone
              _mzgFields
              (Just _mzgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagedZonesGetResource)
                      r
                      u
