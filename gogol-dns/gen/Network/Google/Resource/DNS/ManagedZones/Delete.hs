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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a previously created ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSManagedZonesDelete@.
module Network.Google.Resource.DNS.ManagedZones.Delete
    (
    -- * REST Resource
      ManagedZonesDeleteResource

    -- * Creating a Request
    , managedZonesDelete'
    , ManagedZonesDelete'

    -- * Request Lenses
    , mzdQuotaUser
    , mzdPrettyPrint
    , mzdProject
    , mzdUserIp
    , mzdKey
    , mzdOauthToken
    , mzdManagedZone
    , mzdFields
    , mzdAlt
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesDelete@ which the
-- 'ManagedZonesDelete'' request conforms to.
type ManagedZonesDeleteResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a previously created ManagedZone.
--
-- /See:/ 'managedZonesDelete'' smart constructor.
data ManagedZonesDelete' = ManagedZonesDelete'
    { _mzdQuotaUser   :: !(Maybe Text)
    , _mzdPrettyPrint :: !Bool
    , _mzdProject     :: !Text
    , _mzdUserIp      :: !(Maybe Text)
    , _mzdKey         :: !(Maybe Text)
    , _mzdOauthToken  :: !(Maybe Text)
    , _mzdManagedZone :: !Text
    , _mzdFields      :: !(Maybe Text)
    , _mzdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzdQuotaUser'
--
-- * 'mzdPrettyPrint'
--
-- * 'mzdProject'
--
-- * 'mzdUserIp'
--
-- * 'mzdKey'
--
-- * 'mzdOauthToken'
--
-- * 'mzdManagedZone'
--
-- * 'mzdFields'
--
-- * 'mzdAlt'
managedZonesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ManagedZonesDelete'
managedZonesDelete' pMzdProject_ pMzdManagedZone_ =
    ManagedZonesDelete'
    { _mzdQuotaUser = Nothing
    , _mzdPrettyPrint = True
    , _mzdProject = pMzdProject_
    , _mzdUserIp = Nothing
    , _mzdKey = Nothing
    , _mzdOauthToken = Nothing
    , _mzdManagedZone = pMzdManagedZone_
    , _mzdFields = Nothing
    , _mzdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mzdQuotaUser :: Lens' ManagedZonesDelete' (Maybe Text)
mzdQuotaUser
  = lens _mzdQuotaUser (\ s a -> s{_mzdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mzdPrettyPrint :: Lens' ManagedZonesDelete' Bool
mzdPrettyPrint
  = lens _mzdPrettyPrint
      (\ s a -> s{_mzdPrettyPrint = a})

-- | Identifies the project addressed by this request.
mzdProject :: Lens' ManagedZonesDelete' Text
mzdProject
  = lens _mzdProject (\ s a -> s{_mzdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mzdUserIp :: Lens' ManagedZonesDelete' (Maybe Text)
mzdUserIp
  = lens _mzdUserIp (\ s a -> s{_mzdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzdKey :: Lens' ManagedZonesDelete' (Maybe Text)
mzdKey = lens _mzdKey (\ s a -> s{_mzdKey = a})

-- | OAuth 2.0 token for the current user.
mzdOauthToken :: Lens' ManagedZonesDelete' (Maybe Text)
mzdOauthToken
  = lens _mzdOauthToken
      (\ s a -> s{_mzdOauthToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzdManagedZone :: Lens' ManagedZonesDelete' Text
mzdManagedZone
  = lens _mzdManagedZone
      (\ s a -> s{_mzdManagedZone = a})

-- | Selector specifying which fields to include in a partial response.
mzdFields :: Lens' ManagedZonesDelete' (Maybe Text)
mzdFields
  = lens _mzdFields (\ s a -> s{_mzdFields = a})

-- | Data format for the response.
mzdAlt :: Lens' ManagedZonesDelete' Alt
mzdAlt = lens _mzdAlt (\ s a -> s{_mzdAlt = a})

instance GoogleRequest ManagedZonesDelete' where
        type Rs ManagedZonesDelete' = ()
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ManagedZonesDelete'{..}
          = go _mzdQuotaUser (Just _mzdPrettyPrint) _mzdProject
              _mzdUserIp
              _mzdKey
              _mzdOauthToken
              _mzdManagedZone
              _mzdFields
              (Just _mzdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagedZonesDeleteResource)
                      r
                      u
