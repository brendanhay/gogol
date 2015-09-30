{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified TargetPool resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsDelete@.
module Compute.TargetPools.Delete
    (
    -- * REST Resource
      TargetPoolsDeleteAPI

    -- * Creating a Request
    , targetPoolsDelete
    , TargetPoolsDelete

    -- * Request Lenses
    , tpdQuotaUser
    , tpdPrettyPrint
    , tpdProject
    , tpdTargetPool
    , tpdUserIp
    , tpdKey
    , tpdRegion
    , tpdOauthToken
    , tpdFields
    , tpdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsDelete@ which the
-- 'TargetPoolsDelete' request conforms to.
type TargetPoolsDeleteAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :> Delete '[JSON] Operation

-- | Deletes the specified TargetPool resource.
--
-- /See:/ 'targetPoolsDelete' smart constructor.
data TargetPoolsDelete = TargetPoolsDelete
    { _tpdQuotaUser   :: !(Maybe Text)
    , _tpdPrettyPrint :: !Bool
    , _tpdProject     :: !Text
    , _tpdTargetPool  :: !Text
    , _tpdUserIp      :: !(Maybe Text)
    , _tpdKey         :: !(Maybe Text)
    , _tpdRegion      :: !Text
    , _tpdOauthToken  :: !(Maybe Text)
    , _tpdFields      :: !(Maybe Text)
    , _tpdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpdQuotaUser'
--
-- * 'tpdPrettyPrint'
--
-- * 'tpdProject'
--
-- * 'tpdTargetPool'
--
-- * 'tpdUserIp'
--
-- * 'tpdKey'
--
-- * 'tpdRegion'
--
-- * 'tpdOauthToken'
--
-- * 'tpdFields'
--
-- * 'tpdAlt'
targetPoolsDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsDelete
targetPoolsDelete pTpdProject_ pTpdTargetPool_ pTpdRegion_ =
    TargetPoolsDelete
    { _tpdQuotaUser = Nothing
    , _tpdPrettyPrint = True
    , _tpdProject = pTpdProject_
    , _tpdTargetPool = pTpdTargetPool_
    , _tpdUserIp = Nothing
    , _tpdKey = Nothing
    , _tpdRegion = pTpdRegion_
    , _tpdOauthToken = Nothing
    , _tpdFields = Nothing
    , _tpdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpdQuotaUser :: Lens' TargetPoolsDelete' (Maybe Text)
tpdQuotaUser
  = lens _tpdQuotaUser (\ s a -> s{_tpdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpdPrettyPrint :: Lens' TargetPoolsDelete' Bool
tpdPrettyPrint
  = lens _tpdPrettyPrint
      (\ s a -> s{_tpdPrettyPrint = a})

-- | Name of the project scoping this request.
tpdProject :: Lens' TargetPoolsDelete' Text
tpdProject
  = lens _tpdProject (\ s a -> s{_tpdProject = a})

-- | Name of the TargetPool resource to delete.
tpdTargetPool :: Lens' TargetPoolsDelete' Text
tpdTargetPool
  = lens _tpdTargetPool
      (\ s a -> s{_tpdTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpdUserIp :: Lens' TargetPoolsDelete' (Maybe Text)
tpdUserIp
  = lens _tpdUserIp (\ s a -> s{_tpdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpdKey :: Lens' TargetPoolsDelete' (Maybe Text)
tpdKey = lens _tpdKey (\ s a -> s{_tpdKey = a})

-- | Name of the region scoping this request.
tpdRegion :: Lens' TargetPoolsDelete' Text
tpdRegion
  = lens _tpdRegion (\ s a -> s{_tpdRegion = a})

-- | OAuth 2.0 token for the current user.
tpdOauthToken :: Lens' TargetPoolsDelete' (Maybe Text)
tpdOauthToken
  = lens _tpdOauthToken
      (\ s a -> s{_tpdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpdFields :: Lens' TargetPoolsDelete' (Maybe Text)
tpdFields
  = lens _tpdFields (\ s a -> s{_tpdFields = a})

-- | Data format for the response.
tpdAlt :: Lens' TargetPoolsDelete' Text
tpdAlt = lens _tpdAlt (\ s a -> s{_tpdAlt = a})

instance GoogleRequest TargetPoolsDelete' where
        type Rs TargetPoolsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsDelete{..}
          = go _tpdQuotaUser _tpdPrettyPrint _tpdProject
              _tpdTargetPool
              _tpdUserIp
              _tpdKey
              _tpdRegion
              _tpdOauthToken
              _tpdFields
              _tpdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsDeleteAPI)
                      r
                      u
