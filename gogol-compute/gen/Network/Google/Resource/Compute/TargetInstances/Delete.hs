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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified TargetInstance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesDelete@.
module Network.Google.Resource.Compute.TargetInstances.Delete
    (
    -- * REST Resource
      TargetInstancesDeleteResource

    -- * Creating a Request
    , targetInstancesDelete'
    , TargetInstancesDelete'

    -- * Request Lenses
    , tidQuotaUser
    , tidPrettyPrint
    , tidProject
    , tidTargetInstance
    , tidUserIp
    , tidZone
    , tidKey
    , tidOauthToken
    , tidFields
    , tidAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesDelete@ which the
-- 'TargetInstancesDelete'' request conforms to.
type TargetInstancesDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             Capture "targetInstance" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified TargetInstance resource.
--
-- /See:/ 'targetInstancesDelete'' smart constructor.
data TargetInstancesDelete' = TargetInstancesDelete'
    { _tidQuotaUser      :: !(Maybe Text)
    , _tidPrettyPrint    :: !Bool
    , _tidProject        :: !Text
    , _tidTargetInstance :: !Text
    , _tidUserIp         :: !(Maybe Text)
    , _tidZone           :: !Text
    , _tidKey            :: !(Maybe Text)
    , _tidOauthToken     :: !(Maybe Text)
    , _tidFields         :: !(Maybe Text)
    , _tidAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tidQuotaUser'
--
-- * 'tidPrettyPrint'
--
-- * 'tidProject'
--
-- * 'tidTargetInstance'
--
-- * 'tidUserIp'
--
-- * 'tidZone'
--
-- * 'tidKey'
--
-- * 'tidOauthToken'
--
-- * 'tidFields'
--
-- * 'tidAlt'
targetInstancesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetInstance'
    -> Text -- ^ 'zone'
    -> TargetInstancesDelete'
targetInstancesDelete' pTidProject_ pTidTargetInstance_ pTidZone_ =
    TargetInstancesDelete'
    { _tidQuotaUser = Nothing
    , _tidPrettyPrint = True
    , _tidProject = pTidProject_
    , _tidTargetInstance = pTidTargetInstance_
    , _tidUserIp = Nothing
    , _tidZone = pTidZone_
    , _tidKey = Nothing
    , _tidOauthToken = Nothing
    , _tidFields = Nothing
    , _tidAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tidQuotaUser :: Lens' TargetInstancesDelete' (Maybe Text)
tidQuotaUser
  = lens _tidQuotaUser (\ s a -> s{_tidQuotaUser = a})

-- | Returns response with indentations and line breaks.
tidPrettyPrint :: Lens' TargetInstancesDelete' Bool
tidPrettyPrint
  = lens _tidPrettyPrint
      (\ s a -> s{_tidPrettyPrint = a})

-- | Name of the project scoping this request.
tidProject :: Lens' TargetInstancesDelete' Text
tidProject
  = lens _tidProject (\ s a -> s{_tidProject = a})

-- | Name of the TargetInstance resource to delete.
tidTargetInstance :: Lens' TargetInstancesDelete' Text
tidTargetInstance
  = lens _tidTargetInstance
      (\ s a -> s{_tidTargetInstance = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tidUserIp :: Lens' TargetInstancesDelete' (Maybe Text)
tidUserIp
  = lens _tidUserIp (\ s a -> s{_tidUserIp = a})

-- | Name of the zone scoping this request.
tidZone :: Lens' TargetInstancesDelete' Text
tidZone = lens _tidZone (\ s a -> s{_tidZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tidKey :: Lens' TargetInstancesDelete' (Maybe Text)
tidKey = lens _tidKey (\ s a -> s{_tidKey = a})

-- | OAuth 2.0 token for the current user.
tidOauthToken :: Lens' TargetInstancesDelete' (Maybe Text)
tidOauthToken
  = lens _tidOauthToken
      (\ s a -> s{_tidOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tidFields :: Lens' TargetInstancesDelete' (Maybe Text)
tidFields
  = lens _tidFields (\ s a -> s{_tidFields = a})

-- | Data format for the response.
tidAlt :: Lens' TargetInstancesDelete' Alt
tidAlt = lens _tidAlt (\ s a -> s{_tidAlt = a})

instance GoogleRequest TargetInstancesDelete' where
        type Rs TargetInstancesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetInstancesDelete'{..}
          = go _tidQuotaUser (Just _tidPrettyPrint) _tidProject
              _tidTargetInstance
              _tidUserIp
              _tidZone
              _tidKey
              _tidOauthToken
              _tidFields
              (Just _tidAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetInstancesDeleteResource)
                      r
                      u
