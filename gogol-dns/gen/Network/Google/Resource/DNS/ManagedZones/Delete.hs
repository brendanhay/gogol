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
    , mzdUserIP
    , mzdKey
    , mzdOAuthToken
    , mzdManagedZone
    , mzdFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSManagedZonesDelete@ method which the
-- 'ManagedZonesDelete'' request conforms to.
type ManagedZonesDeleteResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a previously created ManagedZone.
--
-- /See:/ 'managedZonesDelete'' smart constructor.
data ManagedZonesDelete' = ManagedZonesDelete'
    { _mzdQuotaUser   :: !(Maybe Text)
    , _mzdPrettyPrint :: !Bool
    , _mzdProject     :: !Text
    , _mzdUserIP      :: !(Maybe Text)
    , _mzdKey         :: !(Maybe AuthKey)
    , _mzdOAuthToken  :: !(Maybe OAuthToken)
    , _mzdManagedZone :: !Text
    , _mzdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mzdUserIP'
--
-- * 'mzdKey'
--
-- * 'mzdOAuthToken'
--
-- * 'mzdManagedZone'
--
-- * 'mzdFields'
managedZonesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'managedZone'
    -> ManagedZonesDelete'
managedZonesDelete' pMzdProject_ pMzdManagedZone_ =
    ManagedZonesDelete'
    { _mzdQuotaUser = Nothing
    , _mzdPrettyPrint = True
    , _mzdProject = pMzdProject_
    , _mzdUserIP = Nothing
    , _mzdKey = Nothing
    , _mzdOAuthToken = Nothing
    , _mzdManagedZone = pMzdManagedZone_
    , _mzdFields = Nothing
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
mzdUserIP :: Lens' ManagedZonesDelete' (Maybe Text)
mzdUserIP
  = lens _mzdUserIP (\ s a -> s{_mzdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzdKey :: Lens' ManagedZonesDelete' (Maybe AuthKey)
mzdKey = lens _mzdKey (\ s a -> s{_mzdKey = a})

-- | OAuth 2.0 token for the current user.
mzdOAuthToken :: Lens' ManagedZonesDelete' (Maybe OAuthToken)
mzdOAuthToken
  = lens _mzdOAuthToken
      (\ s a -> s{_mzdOAuthToken = a})

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

instance GoogleAuth ManagedZonesDelete' where
        _AuthKey = mzdKey . _Just
        _AuthToken = mzdOAuthToken . _Just

instance GoogleRequest ManagedZonesDelete' where
        type Rs ManagedZonesDelete' = ()
        request = requestWith dNSRequest
        requestWith rq ManagedZonesDelete'{..}
          = go _mzdProject _mzdManagedZone _mzdQuotaUser
              (Just _mzdPrettyPrint)
              _mzdUserIP
              _mzdFields
              _mzdKey
              _mzdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagedZonesDeleteResource)
                      rq
