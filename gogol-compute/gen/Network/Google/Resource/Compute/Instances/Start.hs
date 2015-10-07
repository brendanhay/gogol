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
-- Module      : Network.Google.Resource.Compute.Instances.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesStart@.
module Network.Google.Resource.Compute.Instances.Start
    (
    -- * REST Resource
      InstancesStartResource

    -- * Creating a Request
    , instancesStart'
    , InstancesStart'

    -- * Request Lenses
    , insnQuotaUser
    , insnPrettyPrint
    , insnProject
    , insnUserIP
    , insnZone
    , insnKey
    , insnOAuthToken
    , insnFields
    , insnInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesStart@ method which the
-- 'InstancesStart'' request conforms to.
type InstancesStartResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "start" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ 'instancesStart'' smart constructor.
data InstancesStart' = InstancesStart'
    { _insnQuotaUser   :: !(Maybe Text)
    , _insnPrettyPrint :: !Bool
    , _insnProject     :: !Text
    , _insnUserIP      :: !(Maybe Text)
    , _insnZone        :: !Text
    , _insnKey         :: !(Maybe AuthKey)
    , _insnOAuthToken  :: !(Maybe OAuthToken)
    , _insnFields      :: !(Maybe Text)
    , _insnInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insnQuotaUser'
--
-- * 'insnPrettyPrint'
--
-- * 'insnProject'
--
-- * 'insnUserIP'
--
-- * 'insnZone'
--
-- * 'insnKey'
--
-- * 'insnOAuthToken'
--
-- * 'insnFields'
--
-- * 'insnInstance'
instancesStart'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesStart'
instancesStart' pInsnProject_ pInsnZone_ pInsnInstance_ =
    InstancesStart'
    { _insnQuotaUser = Nothing
    , _insnPrettyPrint = True
    , _insnProject = pInsnProject_
    , _insnUserIP = Nothing
    , _insnZone = pInsnZone_
    , _insnKey = Nothing
    , _insnOAuthToken = Nothing
    , _insnFields = Nothing
    , _insnInstance = pInsnInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insnQuotaUser :: Lens' InstancesStart' (Maybe Text)
insnQuotaUser
  = lens _insnQuotaUser
      (\ s a -> s{_insnQuotaUser = a})

-- | Returns response with indentations and line breaks.
insnPrettyPrint :: Lens' InstancesStart' Bool
insnPrettyPrint
  = lens _insnPrettyPrint
      (\ s a -> s{_insnPrettyPrint = a})

-- | Project ID for this request.
insnProject :: Lens' InstancesStart' Text
insnProject
  = lens _insnProject (\ s a -> s{_insnProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insnUserIP :: Lens' InstancesStart' (Maybe Text)
insnUserIP
  = lens _insnUserIP (\ s a -> s{_insnUserIP = a})

-- | The name of the zone for this request.
insnZone :: Lens' InstancesStart' Text
insnZone = lens _insnZone (\ s a -> s{_insnZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insnKey :: Lens' InstancesStart' (Maybe AuthKey)
insnKey = lens _insnKey (\ s a -> s{_insnKey = a})

-- | OAuth 2.0 token for the current user.
insnOAuthToken :: Lens' InstancesStart' (Maybe OAuthToken)
insnOAuthToken
  = lens _insnOAuthToken
      (\ s a -> s{_insnOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
insnFields :: Lens' InstancesStart' (Maybe Text)
insnFields
  = lens _insnFields (\ s a -> s{_insnFields = a})

-- | Name of the instance resource to start.
insnInstance :: Lens' InstancesStart' Text
insnInstance
  = lens _insnInstance (\ s a -> s{_insnInstance = a})

instance GoogleAuth InstancesStart' where
        _AuthKey = insnKey . _Just
        _AuthToken = insnOAuthToken . _Just

instance GoogleRequest InstancesStart' where
        type Rs InstancesStart' = Operation
        request = requestWith computeRequest
        requestWith rq InstancesStart'{..}
          = go _insnProject _insnZone _insnInstance
              _insnQuotaUser
              (Just _insnPrettyPrint)
              _insnUserIP
              _insnFields
              _insnKey
              _insnOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy InstancesStartResource)
                      rq
