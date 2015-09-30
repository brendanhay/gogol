{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an autoscaler resource in the specified project using the data
-- included in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersPatch@.
module Compute.Autoscalers.Patch
    (
    -- * REST Resource
      AutoscalersPatchAPI

    -- * Creating a Request
    , autoscalersPatch
    , AutoscalersPatch

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apProject
    , apUserIp
    , apZone
    , apKey
    , apAutoscaler
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersPatch@ which the
-- 'AutoscalersPatch' request conforms to.
type AutoscalersPatchAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "autoscaler" Text :>
               Patch '[JSON] Operation

-- | Updates an autoscaler resource in the specified project using the data
-- included in the request. This method supports patch semantics.
--
-- /See:/ 'autoscalersPatch' smart constructor.
data AutoscalersPatch = AutoscalersPatch
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apProject     :: !Text
    , _apUserIp      :: !(Maybe Text)
    , _apZone        :: !Text
    , _apKey         :: !(Maybe Text)
    , _apAutoscaler  :: !Text
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apProject'
--
-- * 'apUserIp'
--
-- * 'apZone'
--
-- * 'apKey'
--
-- * 'apAutoscaler'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
autoscalersPatch
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersPatch
autoscalersPatch pApProject_ pApZone_ pApAutoscaler_ =
    AutoscalersPatch
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apProject = pApProject_
    , _apUserIp = Nothing
    , _apZone = pApZone_
    , _apKey = Nothing
    , _apAutoscaler = pApAutoscaler_
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AutoscalersPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AutoscalersPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | Name of the project scoping this request.
apProject :: Lens' AutoscalersPatch' Text
apProject
  = lens _apProject (\ s a -> s{_apProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' AutoscalersPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | Name of the zone scoping this request.
apZone :: Lens' AutoscalersPatch' Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AutoscalersPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Name of the autoscaler resource to update.
apAutoscaler :: Lens' AutoscalersPatch' Text
apAutoscaler
  = lens _apAutoscaler (\ s a -> s{_apAutoscaler = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' AutoscalersPatch' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AutoscalersPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' AutoscalersPatch' Text
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest AutoscalersPatch' where
        type Rs AutoscalersPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersPatch{..}
          = go _apQuotaUser _apPrettyPrint _apProject _apUserIp
              _apZone
              _apKey
              (Just _apAutoscaler)
              _apOauthToken
              _apFields
              _apAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersPatchAPI)
                      r
                      u
