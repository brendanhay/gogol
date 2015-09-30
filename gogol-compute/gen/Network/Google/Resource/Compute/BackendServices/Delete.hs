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
-- Module      : Network.Google.Resource.Compute.BackendServices.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesDelete@.
module Network.Google.Resource.Compute.BackendServices.Delete
    (
    -- * REST Resource
      BackendServicesDeleteResource

    -- * Creating a Request
    , backendServicesDelete'
    , BackendServicesDelete'

    -- * Request Lenses
    , bsdQuotaUser
    , bsdPrettyPrint
    , bsdProject
    , bsdUserIp
    , bsdKey
    , bsdOauthToken
    , bsdFields
    , bsdAlt
    , bsdBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesDelete@ which the
-- 'BackendServicesDelete'' request conforms to.
type BackendServicesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified BackendService resource.
--
-- /See:/ 'backendServicesDelete'' smart constructor.
data BackendServicesDelete' = BackendServicesDelete'
    { _bsdQuotaUser      :: !(Maybe Text)
    , _bsdPrettyPrint    :: !Bool
    , _bsdProject        :: !Text
    , _bsdUserIp         :: !(Maybe Text)
    , _bsdKey            :: !(Maybe Text)
    , _bsdOauthToken     :: !(Maybe Text)
    , _bsdFields         :: !(Maybe Text)
    , _bsdAlt            :: !Alt
    , _bsdBackendService :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsdQuotaUser'
--
-- * 'bsdPrettyPrint'
--
-- * 'bsdProject'
--
-- * 'bsdUserIp'
--
-- * 'bsdKey'
--
-- * 'bsdOauthToken'
--
-- * 'bsdFields'
--
-- * 'bsdAlt'
--
-- * 'bsdBackendService'
backendServicesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'backendService'
    -> BackendServicesDelete'
backendServicesDelete' pBsdProject_ pBsdBackendService_ =
    BackendServicesDelete'
    { _bsdQuotaUser = Nothing
    , _bsdPrettyPrint = True
    , _bsdProject = pBsdProject_
    , _bsdUserIp = Nothing
    , _bsdKey = Nothing
    , _bsdOauthToken = Nothing
    , _bsdFields = Nothing
    , _bsdAlt = JSON
    , _bsdBackendService = pBsdBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsdQuotaUser :: Lens' BackendServicesDelete' (Maybe Text)
bsdQuotaUser
  = lens _bsdQuotaUser (\ s a -> s{_bsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsdPrettyPrint :: Lens' BackendServicesDelete' Bool
bsdPrettyPrint
  = lens _bsdPrettyPrint
      (\ s a -> s{_bsdPrettyPrint = a})

-- | Name of the project scoping this request.
bsdProject :: Lens' BackendServicesDelete' Text
bsdProject
  = lens _bsdProject (\ s a -> s{_bsdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsdUserIp :: Lens' BackendServicesDelete' (Maybe Text)
bsdUserIp
  = lens _bsdUserIp (\ s a -> s{_bsdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsdKey :: Lens' BackendServicesDelete' (Maybe Text)
bsdKey = lens _bsdKey (\ s a -> s{_bsdKey = a})

-- | OAuth 2.0 token for the current user.
bsdOauthToken :: Lens' BackendServicesDelete' (Maybe Text)
bsdOauthToken
  = lens _bsdOauthToken
      (\ s a -> s{_bsdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsdFields :: Lens' BackendServicesDelete' (Maybe Text)
bsdFields
  = lens _bsdFields (\ s a -> s{_bsdFields = a})

-- | Data format for the response.
bsdAlt :: Lens' BackendServicesDelete' Alt
bsdAlt = lens _bsdAlt (\ s a -> s{_bsdAlt = a})

-- | Name of the BackendService resource to delete.
bsdBackendService :: Lens' BackendServicesDelete' Text
bsdBackendService
  = lens _bsdBackendService
      (\ s a -> s{_bsdBackendService = a})

instance GoogleRequest BackendServicesDelete' where
        type Rs BackendServicesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesDelete'{..}
          = go _bsdQuotaUser (Just _bsdPrettyPrint) _bsdProject
              _bsdUserIp
              _bsdKey
              _bsdOauthToken
              _bsdFields
              (Just _bsdAlt)
              _bsdBackendService
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesDeleteResource)
                      r
                      u
