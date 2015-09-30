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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the Autoscaler resource. This method
-- supports patch semantics.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersPatch@.
module Network.Google.Resource.Autoscaler.Autoscalers.Patch
    (
    -- * REST Resource
      AutoscalersPatchResource

    -- * Creating a Request
    , autoscalersPatch'
    , AutoscalersPatch'

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

import           Network.Google.ComputeAutoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersPatch@ which the
-- 'AutoscalersPatch'' request conforms to.
type AutoscalersPatchResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               Capture "autoscaler" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Patch '[JSON] Operation

-- | Update the entire content of the Autoscaler resource. This method
-- supports patch semantics.
--
-- /See:/ 'autoscalersPatch'' smart constructor.
data AutoscalersPatch' = AutoscalersPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apProject     :: !Text
    , _apUserIp      :: !(Maybe Text)
    , _apZone        :: !Text
    , _apKey         :: !(Maybe Text)
    , _apAutoscaler  :: !Text
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Alt
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
autoscalersPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersPatch'
autoscalersPatch' pApProject_ pApZone_ pApAutoscaler_ =
    AutoscalersPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apProject = pApProject_
    , _apUserIp = Nothing
    , _apZone = pApZone_
    , _apKey = Nothing
    , _apAutoscaler = pApAutoscaler_
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = JSON
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

-- | Project ID of Autoscaler resource.
apProject :: Lens' AutoscalersPatch' Text
apProject
  = lens _apProject (\ s a -> s{_apProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' AutoscalersPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | Zone name of Autoscaler resource.
apZone :: Lens' AutoscalersPatch' Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AutoscalersPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Name of the Autoscaler resource.
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
apAlt :: Lens' AutoscalersPatch' Alt
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest AutoscalersPatch' where
        type Rs AutoscalersPatch' = Operation
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u AutoscalersPatch'{..}
          = go _apQuotaUser (Just _apPrettyPrint) _apProject
              _apUserIp
              _apZone
              _apKey
              _apAutoscaler
              _apOauthToken
              _apFields
              (Just _apAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersPatchResource)
                      r
                      u
