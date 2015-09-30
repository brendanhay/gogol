{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified autoscaler resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersDelete@.
module Compute.Autoscalers.Delete
    (
    -- * REST Resource
      AutoscalersDeleteAPI

    -- * Creating a Request
    , autoscalersDelete
    , AutoscalersDelete

    -- * Request Lenses
    , addQuotaUser
    , addPrettyPrint
    , addProject
    , addUserIp
    , addZone
    , addKey
    , addAutoscaler
    , addOauthToken
    , addFields
    , addAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersDelete@ which the
-- 'AutoscalersDelete' request conforms to.
type AutoscalersDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             Capture "autoscaler" Text :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler resource.
--
-- /See:/ 'autoscalersDelete' smart constructor.
data AutoscalersDelete = AutoscalersDelete
    { _addQuotaUser   :: !(Maybe Text)
    , _addPrettyPrint :: !Bool
    , _addProject     :: !Text
    , _addUserIp      :: !(Maybe Text)
    , _addZone        :: !Text
    , _addKey         :: !(Maybe Text)
    , _addAutoscaler  :: !Text
    , _addOauthToken  :: !(Maybe Text)
    , _addFields      :: !(Maybe Text)
    , _addAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addQuotaUser'
--
-- * 'addPrettyPrint'
--
-- * 'addProject'
--
-- * 'addUserIp'
--
-- * 'addZone'
--
-- * 'addKey'
--
-- * 'addAutoscaler'
--
-- * 'addOauthToken'
--
-- * 'addFields'
--
-- * 'addAlt'
autoscalersDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersDelete
autoscalersDelete pAddProject_ pAddZone_ pAddAutoscaler_ =
    AutoscalersDelete
    { _addQuotaUser = Nothing
    , _addPrettyPrint = True
    , _addProject = pAddProject_
    , _addUserIp = Nothing
    , _addZone = pAddZone_
    , _addKey = Nothing
    , _addAutoscaler = pAddAutoscaler_
    , _addOauthToken = Nothing
    , _addFields = Nothing
    , _addAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
addQuotaUser :: Lens' AutoscalersDelete' (Maybe Text)
addQuotaUser
  = lens _addQuotaUser (\ s a -> s{_addQuotaUser = a})

-- | Returns response with indentations and line breaks.
addPrettyPrint :: Lens' AutoscalersDelete' Bool
addPrettyPrint
  = lens _addPrettyPrint
      (\ s a -> s{_addPrettyPrint = a})

-- | Name of the project scoping this request.
addProject :: Lens' AutoscalersDelete' Text
addProject
  = lens _addProject (\ s a -> s{_addProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
addUserIp :: Lens' AutoscalersDelete' (Maybe Text)
addUserIp
  = lens _addUserIp (\ s a -> s{_addUserIp = a})

-- | Name of the zone scoping this request.
addZone :: Lens' AutoscalersDelete' Text
addZone = lens _addZone (\ s a -> s{_addZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
addKey :: Lens' AutoscalersDelete' (Maybe Text)
addKey = lens _addKey (\ s a -> s{_addKey = a})

-- | Name of the persistent autoscaler resource to delete.
addAutoscaler :: Lens' AutoscalersDelete' Text
addAutoscaler
  = lens _addAutoscaler
      (\ s a -> s{_addAutoscaler = a})

-- | OAuth 2.0 token for the current user.
addOauthToken :: Lens' AutoscalersDelete' (Maybe Text)
addOauthToken
  = lens _addOauthToken
      (\ s a -> s{_addOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
addFields :: Lens' AutoscalersDelete' (Maybe Text)
addFields
  = lens _addFields (\ s a -> s{_addFields = a})

-- | Data format for the response.
addAlt :: Lens' AutoscalersDelete' Text
addAlt = lens _addAlt (\ s a -> s{_addAlt = a})

instance GoogleRequest AutoscalersDelete' where
        type Rs AutoscalersDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersDelete{..}
          = go _addQuotaUser _addPrettyPrint _addProject
              _addUserIp
              _addZone
              _addKey
              _addAutoscaler
              _addOauthToken
              _addFields
              _addAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersDeleteAPI)
                      r
                      u
