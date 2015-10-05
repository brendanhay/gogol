{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , mzcUserIP
    , mzcPayload
    , mzcKey
    , mzcOAuthToken
    , mzcFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ManagedZone :>
                         Post '[JSON] ManagedZone

-- | Create a new ManagedZone.
--
-- /See:/ 'managedZonesCreate'' smart constructor.
data ManagedZonesCreate' = ManagedZonesCreate'
    { _mzcQuotaUser   :: !(Maybe Text)
    , _mzcPrettyPrint :: !Bool
    , _mzcProject     :: !Text
    , _mzcUserIP      :: !(Maybe Text)
    , _mzcPayload     :: !ManagedZone
    , _mzcKey         :: !(Maybe Key)
    , _mzcOAuthToken  :: !(Maybe OAuthToken)
    , _mzcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mzcUserIP'
--
-- * 'mzcPayload'
--
-- * 'mzcKey'
--
-- * 'mzcOAuthToken'
--
-- * 'mzcFields'
managedZonesCreate'
    :: Text -- ^ 'project'
    -> ManagedZone -- ^ 'payload'
    -> ManagedZonesCreate'
managedZonesCreate' pMzcProject_ pMzcPayload_ =
    ManagedZonesCreate'
    { _mzcQuotaUser = Nothing
    , _mzcPrettyPrint = True
    , _mzcProject = pMzcProject_
    , _mzcUserIP = Nothing
    , _mzcPayload = pMzcPayload_
    , _mzcKey = Nothing
    , _mzcOAuthToken = Nothing
    , _mzcFields = Nothing
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
mzcUserIP :: Lens' ManagedZonesCreate' (Maybe Text)
mzcUserIP
  = lens _mzcUserIP (\ s a -> s{_mzcUserIP = a})

-- | Multipart request metadata.
mzcPayload :: Lens' ManagedZonesCreate' ManagedZone
mzcPayload
  = lens _mzcPayload (\ s a -> s{_mzcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mzcKey :: Lens' ManagedZonesCreate' (Maybe Key)
mzcKey = lens _mzcKey (\ s a -> s{_mzcKey = a})

-- | OAuth 2.0 token for the current user.
mzcOAuthToken :: Lens' ManagedZonesCreate' (Maybe OAuthToken)
mzcOAuthToken
  = lens _mzcOAuthToken
      (\ s a -> s{_mzcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mzcFields :: Lens' ManagedZonesCreate' (Maybe Text)
mzcFields
  = lens _mzcFields (\ s a -> s{_mzcFields = a})

instance GoogleAuth ManagedZonesCreate' where
        authKey = mzcKey . _Just
        authToken = mzcOAuthToken . _Just

instance GoogleRequest ManagedZonesCreate' where
        type Rs ManagedZonesCreate' = ManagedZone
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ManagedZonesCreate'{..}
          = go _mzcProject _mzcQuotaUser (Just _mzcPrettyPrint)
              _mzcUserIP
              _mzcFields
              _mzcKey
              _mzcOAuthToken
              (Just AltJSON)
              _mzcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagedZonesCreateResource)
                      r
                      u
