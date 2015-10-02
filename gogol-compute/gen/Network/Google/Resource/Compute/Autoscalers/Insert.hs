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
    , aiiQuotaUser
    , aiiPrettyPrint
    , aiiProject
    , aiiUserIP
    , aiiZone
    , aiiKey
    , aiiAutoscaler
    , aiiOAuthToken
    , aiiFields
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
    { _aiiQuotaUser   :: !(Maybe Text)
    , _aiiPrettyPrint :: !Bool
    , _aiiProject     :: !Text
    , _aiiUserIP      :: !(Maybe Text)
    , _aiiZone        :: !Text
    , _aiiKey         :: !(Maybe Key)
    , _aiiAutoscaler  :: !Autoscaler
    , _aiiOAuthToken  :: !(Maybe OAuthToken)
    , _aiiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiQuotaUser'
--
-- * 'aiiPrettyPrint'
--
-- * 'aiiProject'
--
-- * 'aiiUserIP'
--
-- * 'aiiZone'
--
-- * 'aiiKey'
--
-- * 'aiiAutoscaler'
--
-- * 'aiiOAuthToken'
--
-- * 'aiiFields'
autoscalersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'Autoscaler'
    -> AutoscalersInsert'
autoscalersInsert' pAiiProject_ pAiiZone_ pAiiAutoscaler_ =
    AutoscalersInsert'
    { _aiiQuotaUser = Nothing
    , _aiiPrettyPrint = True
    , _aiiProject = pAiiProject_
    , _aiiUserIP = Nothing
    , _aiiZone = pAiiZone_
    , _aiiKey = Nothing
    , _aiiAutoscaler = pAiiAutoscaler_
    , _aiiOAuthToken = Nothing
    , _aiiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiiQuotaUser :: Lens' AutoscalersInsert' (Maybe Text)
aiiQuotaUser
  = lens _aiiQuotaUser (\ s a -> s{_aiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiiPrettyPrint :: Lens' AutoscalersInsert' Bool
aiiPrettyPrint
  = lens _aiiPrettyPrint
      (\ s a -> s{_aiiPrettyPrint = a})

-- | Name of the project scoping this request.
aiiProject :: Lens' AutoscalersInsert' Text
aiiProject
  = lens _aiiProject (\ s a -> s{_aiiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiiUserIP :: Lens' AutoscalersInsert' (Maybe Text)
aiiUserIP
  = lens _aiiUserIP (\ s a -> s{_aiiUserIP = a})

-- | Name of the zone scoping this request.
aiiZone :: Lens' AutoscalersInsert' Text
aiiZone = lens _aiiZone (\ s a -> s{_aiiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiiKey :: Lens' AutoscalersInsert' (Maybe Key)
aiiKey = lens _aiiKey (\ s a -> s{_aiiKey = a})

-- | Multipart request metadata.
aiiAutoscaler :: Lens' AutoscalersInsert' Autoscaler
aiiAutoscaler
  = lens _aiiAutoscaler
      (\ s a -> s{_aiiAutoscaler = a})

-- | OAuth 2.0 token for the current user.
aiiOAuthToken :: Lens' AutoscalersInsert' (Maybe OAuthToken)
aiiOAuthToken
  = lens _aiiOAuthToken
      (\ s a -> s{_aiiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiiFields :: Lens' AutoscalersInsert' (Maybe Text)
aiiFields
  = lens _aiiFields (\ s a -> s{_aiiFields = a})

instance GoogleAuth AutoscalersInsert' where
        authKey = aiiKey . _Just
        authToken = aiiOAuthToken . _Just

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersInsert'{..}
          = go _aiiProject _aiiZone _aiiQuotaUser
              (Just _aiiPrettyPrint)
              _aiiUserIP
              _aiiFields
              _aiiKey
              _aiiOAuthToken
              (Just AltJSON)
              _aiiAutoscaler
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersInsertResource)
                      r
                      u
