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
-- Module      : Network.Google.Resource.Compute.BackendServices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesGet@.
module Network.Google.Resource.Compute.BackendServices.Get
    (
    -- * REST Resource
      BackendServicesGetResource

    -- * Creating a Request
    , backendServicesGet'
    , BackendServicesGet'

    -- * Request Lenses
    , bsgQuotaUser
    , bsgPrettyPrint
    , bsgProject
    , bsgUserIP
    , bsgKey
    , bsgOAuthToken
    , bsgFields
    , bsgBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesGet@ which the
-- 'BackendServicesGet'' request conforms to.
type BackendServicesGetResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] BackendService

-- | Returns the specified BackendService resource.
--
-- /See:/ 'backendServicesGet'' smart constructor.
data BackendServicesGet' = BackendServicesGet'
    { _bsgQuotaUser      :: !(Maybe Text)
    , _bsgPrettyPrint    :: !Bool
    , _bsgProject        :: !Text
    , _bsgUserIP         :: !(Maybe Text)
    , _bsgKey            :: !(Maybe Key)
    , _bsgOAuthToken     :: !(Maybe OAuthToken)
    , _bsgFields         :: !(Maybe Text)
    , _bsgBackendService :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsgQuotaUser'
--
-- * 'bsgPrettyPrint'
--
-- * 'bsgProject'
--
-- * 'bsgUserIP'
--
-- * 'bsgKey'
--
-- * 'bsgOAuthToken'
--
-- * 'bsgFields'
--
-- * 'bsgBackendService'
backendServicesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'backendService'
    -> BackendServicesGet'
backendServicesGet' pBsgProject_ pBsgBackendService_ =
    BackendServicesGet'
    { _bsgQuotaUser = Nothing
    , _bsgPrettyPrint = True
    , _bsgProject = pBsgProject_
    , _bsgUserIP = Nothing
    , _bsgKey = Nothing
    , _bsgOAuthToken = Nothing
    , _bsgFields = Nothing
    , _bsgBackendService = pBsgBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsgQuotaUser :: Lens' BackendServicesGet' (Maybe Text)
bsgQuotaUser
  = lens _bsgQuotaUser (\ s a -> s{_bsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsgPrettyPrint :: Lens' BackendServicesGet' Bool
bsgPrettyPrint
  = lens _bsgPrettyPrint
      (\ s a -> s{_bsgPrettyPrint = a})

-- | Name of the project scoping this request.
bsgProject :: Lens' BackendServicesGet' Text
bsgProject
  = lens _bsgProject (\ s a -> s{_bsgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsgUserIP :: Lens' BackendServicesGet' (Maybe Text)
bsgUserIP
  = lens _bsgUserIP (\ s a -> s{_bsgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsgKey :: Lens' BackendServicesGet' (Maybe Key)
bsgKey = lens _bsgKey (\ s a -> s{_bsgKey = a})

-- | OAuth 2.0 token for the current user.
bsgOAuthToken :: Lens' BackendServicesGet' (Maybe OAuthToken)
bsgOAuthToken
  = lens _bsgOAuthToken
      (\ s a -> s{_bsgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsgFields :: Lens' BackendServicesGet' (Maybe Text)
bsgFields
  = lens _bsgFields (\ s a -> s{_bsgFields = a})

-- | Name of the BackendService resource to return.
bsgBackendService :: Lens' BackendServicesGet' Text
bsgBackendService
  = lens _bsgBackendService
      (\ s a -> s{_bsgBackendService = a})

instance GoogleAuth BackendServicesGet' where
        authKey = bsgKey . _Just
        authToken = bsgOAuthToken . _Just

instance GoogleRequest BackendServicesGet' where
        type Rs BackendServicesGet' = BackendService
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesGet'{..}
          = go _bsgQuotaUser (Just _bsgPrettyPrint) _bsgProject
              _bsgUserIP
              _bsgKey
              _bsgOAuthToken
              _bsgFields
              _bsgBackendService
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesGetResource)
                      r
                      u
