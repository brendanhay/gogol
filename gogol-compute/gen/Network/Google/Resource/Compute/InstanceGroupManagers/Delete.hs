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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified managed instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersDelete@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Delete
    (
    -- * REST Resource
      InstanceGroupManagersDeleteResource

    -- * Creating a Request
    , instanceGroupManagersDelete'
    , InstanceGroupManagersDelete'

    -- * Request Lenses
    , igmdQuotaUser
    , igmdPrettyPrint
    , igmdProject
    , igmdInstanceGroupManager
    , igmdUserIP
    , igmdZone
    , igmdKey
    , igmdOAuthToken
    , igmdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersDelete@ method which the
-- 'InstanceGroupManagersDelete'' request conforms to.
type InstanceGroupManagersDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified managed instance group resource.
--
-- /See:/ 'instanceGroupManagersDelete'' smart constructor.
data InstanceGroupManagersDelete' = InstanceGroupManagersDelete'
    { _igmdQuotaUser            :: !(Maybe Text)
    , _igmdPrettyPrint          :: !Bool
    , _igmdProject              :: !Text
    , _igmdInstanceGroupManager :: !Text
    , _igmdUserIP               :: !(Maybe Text)
    , _igmdZone                 :: !Text
    , _igmdKey                  :: !(Maybe AuthKey)
    , _igmdOAuthToken           :: !(Maybe OAuthToken)
    , _igmdFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdQuotaUser'
--
-- * 'igmdPrettyPrint'
--
-- * 'igmdProject'
--
-- * 'igmdInstanceGroupManager'
--
-- * 'igmdUserIP'
--
-- * 'igmdZone'
--
-- * 'igmdKey'
--
-- * 'igmdOAuthToken'
--
-- * 'igmdFields'
instanceGroupManagersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersDelete'
instanceGroupManagersDelete' pIgmdProject_ pIgmdInstanceGroupManager_ pIgmdZone_ =
    InstanceGroupManagersDelete'
    { _igmdQuotaUser = Nothing
    , _igmdPrettyPrint = True
    , _igmdProject = pIgmdProject_
    , _igmdInstanceGroupManager = pIgmdInstanceGroupManager_
    , _igmdUserIP = Nothing
    , _igmdZone = pIgmdZone_
    , _igmdKey = Nothing
    , _igmdOAuthToken = Nothing
    , _igmdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmdQuotaUser :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdQuotaUser
  = lens _igmdQuotaUser
      (\ s a -> s{_igmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmdPrettyPrint :: Lens' InstanceGroupManagersDelete' Bool
igmdPrettyPrint
  = lens _igmdPrettyPrint
      (\ s a -> s{_igmdPrettyPrint = a})

-- | The project ID for this request.
igmdProject :: Lens' InstanceGroupManagersDelete' Text
igmdProject
  = lens _igmdProject (\ s a -> s{_igmdProject = a})

-- | The name of the instance group manager to delete.
igmdInstanceGroupManager :: Lens' InstanceGroupManagersDelete' Text
igmdInstanceGroupManager
  = lens _igmdInstanceGroupManager
      (\ s a -> s{_igmdInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmdUserIP :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdUserIP
  = lens _igmdUserIP (\ s a -> s{_igmdUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmdZone :: Lens' InstanceGroupManagersDelete' Text
igmdZone = lens _igmdZone (\ s a -> s{_igmdZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmdKey :: Lens' InstanceGroupManagersDelete' (Maybe AuthKey)
igmdKey = lens _igmdKey (\ s a -> s{_igmdKey = a})

-- | OAuth 2.0 token for the current user.
igmdOAuthToken :: Lens' InstanceGroupManagersDelete' (Maybe OAuthToken)
igmdOAuthToken
  = lens _igmdOAuthToken
      (\ s a -> s{_igmdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmdFields :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdFields
  = lens _igmdFields (\ s a -> s{_igmdFields = a})

instance GoogleAuth InstanceGroupManagersDelete'
         where
        _AuthKey = igmdKey . _Just
        _AuthToken = igmdOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersDelete'
         where
        type Rs InstanceGroupManagersDelete' = Operation
        request = requestWith computeRequest
        requestWith rq InstanceGroupManagersDelete'{..}
          = go _igmdProject _igmdZone _igmdInstanceGroupManager
              _igmdQuotaUser
              (Just _igmdPrettyPrint)
              _igmdUserIP
              _igmdFields
              _igmdKey
              _igmdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InstanceGroupManagersDeleteResource)
                      rq
