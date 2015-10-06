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
-- Module      : Network.Google.Resource.Compute.Instances.SetTags
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetTags@.
module Network.Google.Resource.Compute.Instances.SetTags
    (
    -- * REST Resource
      InstancesSetTagsResource

    -- * Creating a Request
    , instancesSetTags'
    , InstancesSetTags'

    -- * Request Lenses
    , istQuotaUser
    , istPrettyPrint
    , istProject
    , istUserIP
    , istZone
    , istPayload
    , istKey
    , istOAuthToken
    , istFields
    , istInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetTags@ which the
-- 'InstancesSetTags'' request conforms to.
type InstancesSetTagsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setTags" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Tags :> Post '[JSON] Operation

-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetTags'' smart constructor.
data InstancesSetTags' = InstancesSetTags'
    { _istQuotaUser   :: !(Maybe Text)
    , _istPrettyPrint :: !Bool
    , _istProject     :: !Text
    , _istUserIP      :: !(Maybe Text)
    , _istZone        :: !Text
    , _istPayload     :: !Tags
    , _istKey         :: !(Maybe AuthKey)
    , _istOAuthToken  :: !(Maybe OAuthToken)
    , _istFields      :: !(Maybe Text)
    , _istInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetTags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istQuotaUser'
--
-- * 'istPrettyPrint'
--
-- * 'istProject'
--
-- * 'istUserIP'
--
-- * 'istZone'
--
-- * 'istPayload'
--
-- * 'istKey'
--
-- * 'istOAuthToken'
--
-- * 'istFields'
--
-- * 'istInstance'
instancesSetTags'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Tags -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesSetTags'
instancesSetTags' pIstProject_ pIstZone_ pIstPayload_ pIstInstance_ =
    InstancesSetTags'
    { _istQuotaUser = Nothing
    , _istPrettyPrint = True
    , _istProject = pIstProject_
    , _istUserIP = Nothing
    , _istZone = pIstZone_
    , _istPayload = pIstPayload_
    , _istKey = Nothing
    , _istOAuthToken = Nothing
    , _istFields = Nothing
    , _istInstance = pIstInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
istQuotaUser :: Lens' InstancesSetTags' (Maybe Text)
istQuotaUser
  = lens _istQuotaUser (\ s a -> s{_istQuotaUser = a})

-- | Returns response with indentations and line breaks.
istPrettyPrint :: Lens' InstancesSetTags' Bool
istPrettyPrint
  = lens _istPrettyPrint
      (\ s a -> s{_istPrettyPrint = a})

-- | Project ID for this request.
istProject :: Lens' InstancesSetTags' Text
istProject
  = lens _istProject (\ s a -> s{_istProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
istUserIP :: Lens' InstancesSetTags' (Maybe Text)
istUserIP
  = lens _istUserIP (\ s a -> s{_istUserIP = a})

-- | The name of the zone for this request.
istZone :: Lens' InstancesSetTags' Text
istZone = lens _istZone (\ s a -> s{_istZone = a})

-- | Multipart request metadata.
istPayload :: Lens' InstancesSetTags' Tags
istPayload
  = lens _istPayload (\ s a -> s{_istPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
istKey :: Lens' InstancesSetTags' (Maybe AuthKey)
istKey = lens _istKey (\ s a -> s{_istKey = a})

-- | OAuth 2.0 token for the current user.
istOAuthToken :: Lens' InstancesSetTags' (Maybe OAuthToken)
istOAuthToken
  = lens _istOAuthToken
      (\ s a -> s{_istOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
istFields :: Lens' InstancesSetTags' (Maybe Text)
istFields
  = lens _istFields (\ s a -> s{_istFields = a})

-- | Name of the instance scoping this request.
istInstance :: Lens' InstancesSetTags' Text
istInstance
  = lens _istInstance (\ s a -> s{_istInstance = a})

instance GoogleAuth InstancesSetTags' where
        _AuthKey = istKey . _Just
        _AuthToken = istOAuthToken . _Just

instance GoogleRequest InstancesSetTags' where
        type Rs InstancesSetTags' = Operation
        request = requestWith computeRequest
        requestWith rq InstancesSetTags'{..}
          = go _istProject _istZone _istInstance _istQuotaUser
              (Just _istPrettyPrint)
              _istUserIP
              _istFields
              _istKey
              _istOAuthToken
              (Just AltJSON)
              _istPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesSetTagsResource)
                      rq
