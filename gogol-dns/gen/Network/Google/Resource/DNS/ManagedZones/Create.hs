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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSManagedZonesCreate@.
module Network.Google.Resource.DNS.ManagedZones.Create
    (
    -- * REST Resource
      ManagedZonesCreateResource

    -- * Creating a Request
    , managedZonesCreate'
    , ManagedZonesCreate'

    -- * Request Lenses
    , mzcQuotaUser
    , mzcPrettyPrint
    , mzcProject
    , mzcUserIp
    , mzcKey
    , mzcOauthToken
    , mzcFields
    , mzcAlt
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesCreate@ which the
-- 'ManagedZonesCreate'' request conforms to.
type ManagedZonesCreateResource =
     Capture "project" Text :>
       "managedZones" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ManagedZone

-- | Create a new ManagedZone.
--
-- /See:/ 'managedZonesCreate'' smart constructor.
data ManagedZonesCreate' = ManagedZonesCreate'
    { _mzcQuotaUser   :: !(Maybe Text)
    , _mzcPrettyPrint :: !Bool
    , _mzcProject     :: !Text
    , _mzcUserIp      :: !(Maybe Text)
    , _mzcKey         :: !(Maybe Text)
    , _mzcOauthToken  :: !(Maybe Text)
    , _mzcFields      :: !(Maybe Text)
    , _mzcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzcQuotaUser'
--
-- * 'mzcPrettyPrint'
--
-- * 'mzcProject'
--
-- * 'mzcUserIp'
--
-- * 'mzcKey'
--
-- * 'mzcOauthToken'
--
-- * 'mzcFields'
--
-- * 'mzcAlt'
managedZonesCreate'
    :: Text -- ^ 'project'
    -> ManagedZonesCreate'
managedZonesCreate' pMzcProject_ =
    ManagedZonesCreate'
    { _mzcQuotaUser = Nothing
    , _mzcPrettyPrint = True
    , _mzcProject = pMzcProject_
    , _mzcUserIp = Nothing
    , _mzcKey = Nothing
    , _mzcOauthToken = Nothing
    , _mzcFields = Nothing
    , _mzcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mzcQuotaUser :: Lens' ManagedZonesCreate' (Maybe Text)
mzcQuotaUser
  = lens _mzcQuotaUser (\ s a -> s{_mzcQuotaUser = a})

-- | Returns response with indentations and line breaks.
mzcPrettyPrint :: Lens' ManagedZonesCreate' Bool
mzcPrettyPrint
  = lens _mzcPrettyPrint
      (\ s a -> s{_mzcPrettyPrint = a})

-- | Identifies the project addressed by this request.
mzcProject :: Lens' ManagedZonesCreate' Text
mzcProject
  = lens _mzcProject (\ s a -> s{_mzcProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mzcUserIp :: Lens' ManagedZonesCreate' (Maybe Text)
mzcUserIp
  = lens _mzcUserIp (\ s a -> s{_mzcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzcKey :: Lens' ManagedZonesCreate' (Maybe Text)
mzcKey = lens _mzcKey (\ s a -> s{_mzcKey = a})

-- | OAuth 2.0 token for the current user.
mzcOauthToken :: Lens' ManagedZonesCreate' (Maybe Text)
mzcOauthToken
  = lens _mzcOauthToken
      (\ s a -> s{_mzcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mzcFields :: Lens' ManagedZonesCreate' (Maybe Text)
mzcFields
  = lens _mzcFields (\ s a -> s{_mzcFields = a})

-- | Data format for the response.
mzcAlt :: Lens' ManagedZonesCreate' Alt
mzcAlt = lens _mzcAlt (\ s a -> s{_mzcAlt = a})

instance GoogleRequest ManagedZonesCreate' where
        type Rs ManagedZonesCreate' = ManagedZone
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ManagedZonesCreate'{..}
          = go _mzcQuotaUser (Just _mzcPrettyPrint) _mzcProject
              _mzcUserIp
              _mzcKey
              _mzcOauthToken
              _mzcFields
              (Just _mzcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagedZonesCreateResource)
                      r
                      u
