{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.Compute.Autoscalers.Patch
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
    , apUserIP
    , apZone
    , apPayload
    , apKey
    , apAutoscaler
    , apOAuthToken
    , apFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersPatch@ which the
-- 'AutoscalersPatch'' request conforms to.
type AutoscalersPatchResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "autoscaler" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Autoscaler :>
                               Patch '[JSON] Operation

-- | Updates an autoscaler resource in the specified project using the data
-- included in the request. This method supports patch semantics.
--
-- /See:/ 'autoscalersPatch'' smart constructor.
data AutoscalersPatch' = AutoscalersPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apProject     :: !Text
    , _apUserIP      :: !(Maybe Text)
    , _apZone        :: !Text
    , _apPayload     :: !Autoscaler
    , _apKey         :: !(Maybe AuthKey)
    , _apAutoscaler  :: !Text
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'apUserIP'
--
-- * 'apZone'
--
-- * 'apPayload'
--
-- * 'apKey'
--
-- * 'apAutoscaler'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
autoscalersPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersPatch'
autoscalersPatch' pApProject_ pApZone_ pApPayload_ pApAutoscaler_ =
    AutoscalersPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apProject = pApProject_
    , _apUserIP = Nothing
    , _apZone = pApZone_
    , _apPayload = pApPayload_
    , _apKey = Nothing
    , _apAutoscaler = pApAutoscaler_
    , _apOAuthToken = Nothing
    , _apFields = Nothing
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
apUserIP :: Lens' AutoscalersPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | Name of the zone scoping this request.
apZone :: Lens' AutoscalersPatch' Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | Multipart request metadata.
apPayload :: Lens' AutoscalersPatch' Autoscaler
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AutoscalersPatch' (Maybe AuthKey)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Name of the autoscaler resource to update.
apAutoscaler :: Lens' AutoscalersPatch' Text
apAutoscaler
  = lens _apAutoscaler (\ s a -> s{_apAutoscaler = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' AutoscalersPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AutoscalersPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth AutoscalersPatch' where
        authKey = apKey . _Just
        authToken = apOAuthToken . _Just

instance GoogleRequest AutoscalersPatch' where
        type Rs AutoscalersPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersPatch'{..}
          = go _apProject _apZone (Just _apAutoscaler)
              _apQuotaUser
              (Just _apPrettyPrint)
              _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
              _apPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersPatchResource)
                      r
                      u
