{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds new Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersInsert@.
module Network.Google.Resource.Autoscaler.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertResource

    -- * Creating a Request
    , autoscalersInsert'
    , AutoscalersInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiProject
    , aiUserIP
    , aiZone
    , aiPayload
    , aiKey
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersInsert@ which the
-- 'AutoscalersInsert'' request conforms to.
type AutoscalersInsertResource =
     "projects" :>
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
                             ReqBody '[JSON] Autoscaler :>
                               Post '[JSON] Operation

-- | Adds new Autoscaler resource.
--
-- /See:/ 'autoscalersInsert'' smart constructor.
data AutoscalersInsert' = AutoscalersInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiProject     :: !Text
    , _aiUserIP      :: !(Maybe Text)
    , _aiZone        :: !Text
    , _aiPayload     :: !Autoscaler
    , _aiKey         :: !(Maybe Key)
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiProject'
--
-- * 'aiUserIP'
--
-- * 'aiZone'
--
-- * 'aiPayload'
--
-- * 'aiKey'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
autoscalersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> AutoscalersInsert'
autoscalersInsert' pAiProject_ pAiZone_ pAiPayload_ =
    AutoscalersInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiProject = pAiProject_
    , _aiUserIP = Nothing
    , _aiZone = pAiZone_
    , _aiPayload = pAiPayload_
    , _aiKey = Nothing
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AutoscalersInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AutoscalersInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | Project ID of Autoscaler resource.
aiProject :: Lens' AutoscalersInsert' Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIP :: Lens' AutoscalersInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | Zone name of Autoscaler resource.
aiZone :: Lens' AutoscalersInsert' Text
aiZone = lens _aiZone (\ s a -> s{_aiZone = a})

-- | Multipart request metadata.
aiPayload :: Lens' AutoscalersInsert' Autoscaler
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AutoscalersInsert' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' AutoscalersInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AutoscalersInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth AutoscalersInsert' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        request = requestWithRoute defReq autoscalerURL
        requestWithRoute r u AutoscalersInsert'{..}
          = go _aiProject _aiZone _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersInsertResource)
                      r
                      u
