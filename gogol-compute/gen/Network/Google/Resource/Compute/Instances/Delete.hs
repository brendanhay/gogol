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
-- Module      : Network.Google.Resource.Compute.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesDelete@.
module Network.Google.Resource.Compute.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete'
    , InstancesDelete'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIP
    , insZone
    , insKey
    , insOAuthToken
    , insFields
    , insInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDelete@ which the
-- 'InstancesDelete'' request conforms to.
type InstancesDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ 'instancesDelete'' smart constructor.
data InstancesDelete' = InstancesDelete'
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIP      :: !(Maybe Text)
    , _insZone        :: !Text
    , _insKey         :: !(Maybe AuthKey)
    , _insOAuthToken  :: !(Maybe OAuthToken)
    , _insFields      :: !(Maybe Text)
    , _insInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIP'
--
-- * 'insZone'
--
-- * 'insKey'
--
-- * 'insOAuthToken'
--
-- * 'insFields'
--
-- * 'insInstance'
instancesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesDelete'
instancesDelete' pInsProject_ pInsZone_ pInsInstance_ =
    InstancesDelete'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIP = Nothing
    , _insZone = pInsZone_
    , _insKey = Nothing
    , _insOAuthToken = Nothing
    , _insFields = Nothing
    , _insInstance = pInsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesDelete' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesDelete' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID for this request.
insProject :: Lens' InstancesDelete' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIP :: Lens' InstancesDelete' (Maybe Text)
insUserIP
  = lens _insUserIP (\ s a -> s{_insUserIP = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesDelete' Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesDelete' (Maybe AuthKey)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOAuthToken :: Lens' InstancesDelete' (Maybe OAuthToken)
insOAuthToken
  = lens _insOAuthToken
      (\ s a -> s{_insOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesDelete' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Name of the instance resource to delete.
insInstance :: Lens' InstancesDelete' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleAuth InstancesDelete' where
        authKey = insKey . _Just
        authToken = insOAuthToken . _Just

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesDelete'{..}
          = go _insProject _insZone _insInstance _insQuotaUser
              (Just _insPrettyPrint)
              _insUserIP
              _insFields
              _insKey
              _insOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesDeleteResource)
                      r
                      u
