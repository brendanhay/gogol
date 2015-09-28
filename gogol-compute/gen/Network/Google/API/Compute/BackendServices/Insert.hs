{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.BackendServices.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.insert@.
module Network.Google.API.Compute.BackendServices.Insert
    (
    -- * REST Resource
      BackendServicesInsertAPI

    -- * Creating a Request
    , backendServicesInsert'
    , BackendServicesInsert'

    -- * Request Lenses
    , bsiQuotaUser
    , bsiPrettyPrint
    , bsiProject
    , bsiUserIp
    , bsiKey
    , bsiOauthToken
    , bsiFields
    , bsiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.backendServices.insert which the
-- 'BackendServicesInsert'' request conforms to.
type BackendServicesInsertAPI =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'backendServicesInsert'' smart constructor.
data BackendServicesInsert' = BackendServicesInsert'
    { _bsiQuotaUser   :: !(Maybe Text)
    , _bsiPrettyPrint :: !Bool
    , _bsiProject     :: !Text
    , _bsiUserIp      :: !(Maybe Text)
    , _bsiKey         :: !(Maybe Text)
    , _bsiOauthToken  :: !(Maybe Text)
    , _bsiFields      :: !(Maybe Text)
    , _bsiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsiQuotaUser'
--
-- * 'bsiPrettyPrint'
--
-- * 'bsiProject'
--
-- * 'bsiUserIp'
--
-- * 'bsiKey'
--
-- * 'bsiOauthToken'
--
-- * 'bsiFields'
--
-- * 'bsiAlt'
backendServicesInsert'
    :: Text -- ^ 'project'
    -> BackendServicesInsert'
backendServicesInsert' pBsiProject_ =
    BackendServicesInsert'
    { _bsiQuotaUser = Nothing
    , _bsiPrettyPrint = True
    , _bsiProject = pBsiProject_
    , _bsiUserIp = Nothing
    , _bsiKey = Nothing
    , _bsiOauthToken = Nothing
    , _bsiFields = Nothing
    , _bsiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsiQuotaUser :: Lens' BackendServicesInsert' (Maybe Text)
bsiQuotaUser
  = lens _bsiQuotaUser (\ s a -> s{_bsiQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsiPrettyPrint :: Lens' BackendServicesInsert' Bool
bsiPrettyPrint
  = lens _bsiPrettyPrint
      (\ s a -> s{_bsiPrettyPrint = a})

-- | Name of the project scoping this request.
bsiProject :: Lens' BackendServicesInsert' Text
bsiProject
  = lens _bsiProject (\ s a -> s{_bsiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsiUserIp :: Lens' BackendServicesInsert' (Maybe Text)
bsiUserIp
  = lens _bsiUserIp (\ s a -> s{_bsiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsiKey :: Lens' BackendServicesInsert' (Maybe Text)
bsiKey = lens _bsiKey (\ s a -> s{_bsiKey = a})

-- | OAuth 2.0 token for the current user.
bsiOauthToken :: Lens' BackendServicesInsert' (Maybe Text)
bsiOauthToken
  = lens _bsiOauthToken
      (\ s a -> s{_bsiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsiFields :: Lens' BackendServicesInsert' (Maybe Text)
bsiFields
  = lens _bsiFields (\ s a -> s{_bsiFields = a})

-- | Data format for the response.
bsiAlt :: Lens' BackendServicesInsert' Alt
bsiAlt = lens _bsiAlt (\ s a -> s{_bsiAlt = a})

instance GoogleRequest BackendServicesInsert' where
        type Rs BackendServicesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesInsert'{..}
          = go _bsiQuotaUser (Just _bsiPrettyPrint) _bsiProject
              _bsiUserIp
              _bsiKey
              _bsiOauthToken
              _bsiFields
              (Just _bsiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesInsertAPI)
                      r
                      u
