{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersInsert@.
module Network.Google.Resource.Compute.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertResource

    -- * Creating a Request
    , autoscalersInsert'
    , AutoscalersInsert'

    -- * Request Lenses
    , autQuotaUser
    , autPrettyPrint
    , autProject
    , autUserIP
    , autZone
    , autPayload
    , autKey
    , autOAuthToken
    , autFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersInsert@ which the
-- 'AutoscalersInsert'' request conforms to.
type AutoscalersInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'autoscalersInsert'' smart constructor.
data AutoscalersInsert' = AutoscalersInsert'
    { _autQuotaUser   :: !(Maybe Text)
    , _autPrettyPrint :: !Bool
    , _autProject     :: !Text
    , _autUserIP      :: !(Maybe Text)
    , _autZone        :: !Text
    , _autPayload     :: !Autoscaler
    , _autKey         :: !(Maybe Key)
    , _autOAuthToken  :: !(Maybe OAuthToken)
    , _autFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autQuotaUser'
--
-- * 'autPrettyPrint'
--
-- * 'autProject'
--
-- * 'autUserIP'
--
-- * 'autZone'
--
-- * 'autPayload'
--
-- * 'autKey'
--
-- * 'autOAuthToken'
--
-- * 'autFields'
autoscalersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> AutoscalersInsert'
autoscalersInsert' pAutProject_ pAutZone_ pAutPayload_ =
    AutoscalersInsert'
    { _autQuotaUser = Nothing
    , _autPrettyPrint = True
    , _autProject = pAutProject_
    , _autUserIP = Nothing
    , _autZone = pAutZone_
    , _autPayload = pAutPayload_
    , _autKey = Nothing
    , _autOAuthToken = Nothing
    , _autFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
autQuotaUser :: Lens' AutoscalersInsert' (Maybe Text)
autQuotaUser
  = lens _autQuotaUser (\ s a -> s{_autQuotaUser = a})

-- | Returns response with indentations and line breaks.
autPrettyPrint :: Lens' AutoscalersInsert' Bool
autPrettyPrint
  = lens _autPrettyPrint
      (\ s a -> s{_autPrettyPrint = a})

-- | Name of the project scoping this request.
autProject :: Lens' AutoscalersInsert' Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
autUserIP :: Lens' AutoscalersInsert' (Maybe Text)
autUserIP
  = lens _autUserIP (\ s a -> s{_autUserIP = a})

-- | Name of the zone scoping this request.
autZone :: Lens' AutoscalersInsert' Text
autZone = lens _autZone (\ s a -> s{_autZone = a})

-- | Multipart request metadata.
autPayload :: Lens' AutoscalersInsert' Autoscaler
autPayload
  = lens _autPayload (\ s a -> s{_autPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
autKey :: Lens' AutoscalersInsert' (Maybe Key)
autKey = lens _autKey (\ s a -> s{_autKey = a})

-- | OAuth 2.0 token for the current user.
autOAuthToken :: Lens' AutoscalersInsert' (Maybe OAuthToken)
autOAuthToken
  = lens _autOAuthToken
      (\ s a -> s{_autOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
autFields :: Lens' AutoscalersInsert' (Maybe Text)
autFields
  = lens _autFields (\ s a -> s{_autFields = a})

instance GoogleAuth AutoscalersInsert' where
        authKey = autKey . _Just
        authToken = autOAuthToken . _Just

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersInsert'{..}
          = go _autProject _autZone _autQuotaUser
              (Just _autPrettyPrint)
              _autUserIP
              _autFields
              _autKey
              _autOAuthToken
              (Just AltJSON)
              _autPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersInsertResource)
                      r
                      u
