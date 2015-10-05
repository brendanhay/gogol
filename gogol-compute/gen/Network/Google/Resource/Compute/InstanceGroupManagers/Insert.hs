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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a managed instance group resource in the specified project using
-- the data that is included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersInsert@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Insert
    (
    -- * REST Resource
      InstanceGroupManagersInsertResource

    -- * Creating a Request
    , instanceGroupManagersInsert'
    , InstanceGroupManagersInsert'

    -- * Request Lenses
    , igmiQuotaUser
    , igmiPrettyPrint
    , igmiProject
    , igmiUserIP
    , igmiZone
    , igmiPayload
    , igmiKey
    , igmiOAuthToken
    , igmiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersInsert@ which the
-- 'InstanceGroupManagersInsert'' request conforms to.
type InstanceGroupManagersInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstanceGroupManager :>
                             Post '[JSON] Operation

-- | Creates a managed instance group resource in the specified project using
-- the data that is included in the request.
--
-- /See:/ 'instanceGroupManagersInsert'' smart constructor.
data InstanceGroupManagersInsert' = InstanceGroupManagersInsert'
    { _igmiQuotaUser   :: !(Maybe Text)
    , _igmiPrettyPrint :: !Bool
    , _igmiProject     :: !Text
    , _igmiUserIP      :: !(Maybe Text)
    , _igmiZone        :: !Text
    , _igmiPayload     :: !InstanceGroupManager
    , _igmiKey         :: !(Maybe Key)
    , _igmiOAuthToken  :: !(Maybe OAuthToken)
    , _igmiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmiQuotaUser'
--
-- * 'igmiPrettyPrint'
--
-- * 'igmiProject'
--
-- * 'igmiUserIP'
--
-- * 'igmiZone'
--
-- * 'igmiPayload'
--
-- * 'igmiKey'
--
-- * 'igmiOAuthToken'
--
-- * 'igmiFields'
instanceGroupManagersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManager -- ^ 'payload'
    -> InstanceGroupManagersInsert'
instanceGroupManagersInsert' pIgmiProject_ pIgmiZone_ pIgmiPayload_ =
    InstanceGroupManagersInsert'
    { _igmiQuotaUser = Nothing
    , _igmiPrettyPrint = True
    , _igmiProject = pIgmiProject_
    , _igmiUserIP = Nothing
    , _igmiZone = pIgmiZone_
    , _igmiPayload = pIgmiPayload_
    , _igmiKey = Nothing
    , _igmiOAuthToken = Nothing
    , _igmiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmiQuotaUser :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiQuotaUser
  = lens _igmiQuotaUser
      (\ s a -> s{_igmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmiPrettyPrint :: Lens' InstanceGroupManagersInsert' Bool
igmiPrettyPrint
  = lens _igmiPrettyPrint
      (\ s a -> s{_igmiPrettyPrint = a})

-- | The project ID for this request.
igmiProject :: Lens' InstanceGroupManagersInsert' Text
igmiProject
  = lens _igmiProject (\ s a -> s{_igmiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmiUserIP :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiUserIP
  = lens _igmiUserIP (\ s a -> s{_igmiUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmiZone :: Lens' InstanceGroupManagersInsert' Text
igmiZone = lens _igmiZone (\ s a -> s{_igmiZone = a})

-- | Multipart request metadata.
igmiPayload :: Lens' InstanceGroupManagersInsert' InstanceGroupManager
igmiPayload
  = lens _igmiPayload (\ s a -> s{_igmiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmiKey :: Lens' InstanceGroupManagersInsert' (Maybe Key)
igmiKey = lens _igmiKey (\ s a -> s{_igmiKey = a})

-- | OAuth 2.0 token for the current user.
igmiOAuthToken :: Lens' InstanceGroupManagersInsert' (Maybe OAuthToken)
igmiOAuthToken
  = lens _igmiOAuthToken
      (\ s a -> s{_igmiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmiFields :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiFields
  = lens _igmiFields (\ s a -> s{_igmiFields = a})

instance GoogleAuth InstanceGroupManagersInsert'
         where
        authKey = igmiKey . _Just
        authToken = igmiOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersInsert'
         where
        type Rs InstanceGroupManagersInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupManagersInsert'{..}
          = go _igmiProject _igmiZone _igmiQuotaUser
              (Just _igmiPrettyPrint)
              _igmiUserIP
              _igmiFields
              _igmiKey
              _igmiOAuthToken
              (Just AltJSON)
              _igmiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersInsertResource)
                      r
                      u
