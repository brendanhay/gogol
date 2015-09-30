{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.BackendServices.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the BackendService resource. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesPatch@.
module Compute.BackendServices.Patch
    (
    -- * REST Resource
      BackendServicesPatchAPI

    -- * Creating a Request
    , backendServicesPatch
    , BackendServicesPatch

    -- * Request Lenses
    , bspQuotaUser
    , bspPrettyPrint
    , bspProject
    , bspUserIp
    , bspKey
    , bspOauthToken
    , bspFields
    , bspAlt
    , bspBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesPatch@ which the
-- 'BackendServicesPatch' request conforms to.
type BackendServicesPatchAPI =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             Patch '[JSON] Operation

-- | Update the entire content of the BackendService resource. This method
-- supports patch semantics.
--
-- /See:/ 'backendServicesPatch' smart constructor.
data BackendServicesPatch = BackendServicesPatch
    { _bspQuotaUser      :: !(Maybe Text)
    , _bspPrettyPrint    :: !Bool
    , _bspProject        :: !Text
    , _bspUserIp         :: !(Maybe Text)
    , _bspKey            :: !(Maybe Text)
    , _bspOauthToken     :: !(Maybe Text)
    , _bspFields         :: !(Maybe Text)
    , _bspAlt            :: !Text
    , _bspBackendService :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bspQuotaUser'
--
-- * 'bspPrettyPrint'
--
-- * 'bspProject'
--
-- * 'bspUserIp'
--
-- * 'bspKey'
--
-- * 'bspOauthToken'
--
-- * 'bspFields'
--
-- * 'bspAlt'
--
-- * 'bspBackendService'
backendServicesPatch
    :: Text -- ^ 'project'
    -> Text -- ^ 'backendService'
    -> BackendServicesPatch
backendServicesPatch pBspProject_ pBspBackendService_ =
    BackendServicesPatch
    { _bspQuotaUser = Nothing
    , _bspPrettyPrint = True
    , _bspProject = pBspProject_
    , _bspUserIp = Nothing
    , _bspKey = Nothing
    , _bspOauthToken = Nothing
    , _bspFields = Nothing
    , _bspAlt = "json"
    , _bspBackendService = pBspBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bspQuotaUser :: Lens' BackendServicesPatch' (Maybe Text)
bspQuotaUser
  = lens _bspQuotaUser (\ s a -> s{_bspQuotaUser = a})

-- | Returns response with indentations and line breaks.
bspPrettyPrint :: Lens' BackendServicesPatch' Bool
bspPrettyPrint
  = lens _bspPrettyPrint
      (\ s a -> s{_bspPrettyPrint = a})

-- | Name of the project scoping this request.
bspProject :: Lens' BackendServicesPatch' Text
bspProject
  = lens _bspProject (\ s a -> s{_bspProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bspUserIp :: Lens' BackendServicesPatch' (Maybe Text)
bspUserIp
  = lens _bspUserIp (\ s a -> s{_bspUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bspKey :: Lens' BackendServicesPatch' (Maybe Text)
bspKey = lens _bspKey (\ s a -> s{_bspKey = a})

-- | OAuth 2.0 token for the current user.
bspOauthToken :: Lens' BackendServicesPatch' (Maybe Text)
bspOauthToken
  = lens _bspOauthToken
      (\ s a -> s{_bspOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bspFields :: Lens' BackendServicesPatch' (Maybe Text)
bspFields
  = lens _bspFields (\ s a -> s{_bspFields = a})

-- | Data format for the response.
bspAlt :: Lens' BackendServicesPatch' Text
bspAlt = lens _bspAlt (\ s a -> s{_bspAlt = a})

-- | Name of the BackendService resource to update.
bspBackendService :: Lens' BackendServicesPatch' Text
bspBackendService
  = lens _bspBackendService
      (\ s a -> s{_bspBackendService = a})

instance GoogleRequest BackendServicesPatch' where
        type Rs BackendServicesPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesPatch{..}
          = go _bspQuotaUser _bspPrettyPrint _bspProject
              _bspUserIp
              _bspKey
              _bspOauthToken
              _bspFields
              _bspAlt
              _bspBackendService
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesPatchAPI)
                      r
                      u
