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
module Network.Google.Resource.Compute.Autoscalers.Delete
    (
    -- * REST Resource
      AutoscalersDeleteResource

    -- * Creating a Request
    , autoscalersDelete'
    , AutoscalersDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adProject
    , adUserIP
    , adZone
    , adKey
    , adAutoscaler
    , adOAuthToken
    , adFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersDelete@ which the
-- 'AutoscalersDelete'' request conforms to.
type AutoscalersDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             Capture "autoscaler" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler resource.
--
-- /See:/ 'autoscalersDelete'' smart constructor.
data AutoscalersDelete' = AutoscalersDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adProject     :: !Text
    , _adUserIP      :: !(Maybe Text)
    , _adZone        :: !Text
    , _adKey         :: !(Maybe Key)
    , _adAutoscaler  :: !Text
    , _adOAuthToken  :: !(Maybe OAuthToken)
    , _adFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adProject'
--
-- * 'adUserIP'
--
-- * 'adZone'
--
-- * 'adKey'
--
-- * 'adAutoscaler'
--
-- * 'adOAuthToken'
--
-- * 'adFields'
autoscalersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersDelete'
autoscalersDelete' pAdProject_ pAdZone_ pAdAutoscaler_ =
    AutoscalersDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adProject = pAdProject_
    , _adUserIP = Nothing
    , _adZone = pAdZone_
    , _adKey = Nothing
    , _adAutoscaler = pAdAutoscaler_
    , _adOAuthToken = Nothing
    , _adFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AutoscalersDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AutoscalersDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | Name of the project scoping this request.
adProject :: Lens' AutoscalersDelete' Text
adProject
  = lens _adProject (\ s a -> s{_adProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIP :: Lens' AutoscalersDelete' (Maybe Text)
adUserIP = lens _adUserIP (\ s a -> s{_adUserIP = a})

-- | Name of the zone scoping this request.
adZone :: Lens' AutoscalersDelete' Text
adZone = lens _adZone (\ s a -> s{_adZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AutoscalersDelete' (Maybe Key)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | Name of the persistent autoscaler resource to delete.
adAutoscaler :: Lens' AutoscalersDelete' Text
adAutoscaler
  = lens _adAutoscaler (\ s a -> s{_adAutoscaler = a})

-- | OAuth 2.0 token for the current user.
adOAuthToken :: Lens' AutoscalersDelete' (Maybe OAuthToken)
adOAuthToken
  = lens _adOAuthToken (\ s a -> s{_adOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AutoscalersDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

instance GoogleAuth AutoscalersDelete' where
        authKey = adKey . _Just
        authToken = adOAuthToken . _Just

instance GoogleRequest AutoscalersDelete' where
        type Rs AutoscalersDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersDelete'{..}
          = go _adProject _adZone _adAutoscaler _adQuotaUser
              (Just _adPrettyPrint)
              _adUserIP
              _adFields
              _adKey
              _adOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersDeleteResource)
                      r
                      u
