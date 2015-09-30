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
    , iQuotaUser
    , iPrettyPrint
    , iProject
    , iUserIp
    , iZone
    , iKey
    , iOauthToken
    , iFields
    , iAlt
    , iInstance
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ 'instancesDelete'' smart constructor.
data InstancesDelete' = InstancesDelete'
    { _iQuotaUser   :: !(Maybe Text)
    , _iPrettyPrint :: !Bool
    , _iProject     :: !Text
    , _iUserIp      :: !(Maybe Text)
    , _iZone        :: !Text
    , _iKey         :: !(Maybe Text)
    , _iOauthToken  :: !(Maybe Text)
    , _iFields      :: !(Maybe Text)
    , _iAlt         :: !Alt
    , _iInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iQuotaUser'
--
-- * 'iPrettyPrint'
--
-- * 'iProject'
--
-- * 'iUserIp'
--
-- * 'iZone'
--
-- * 'iKey'
--
-- * 'iOauthToken'
--
-- * 'iFields'
--
-- * 'iAlt'
--
-- * 'iInstance'
instancesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesDelete'
instancesDelete' pIProject_ pIZone_ pIInstance_ =
    InstancesDelete'
    { _iQuotaUser = Nothing
    , _iPrettyPrint = True
    , _iProject = pIProject_
    , _iUserIp = Nothing
    , _iZone = pIZone_
    , _iKey = Nothing
    , _iOauthToken = Nothing
    , _iFields = Nothing
    , _iAlt = JSON
    , _iInstance = pIInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iQuotaUser :: Lens' InstancesDelete' (Maybe Text)
iQuotaUser
  = lens _iQuotaUser (\ s a -> s{_iQuotaUser = a})

-- | Returns response with indentations and line breaks.
iPrettyPrint :: Lens' InstancesDelete' Bool
iPrettyPrint
  = lens _iPrettyPrint (\ s a -> s{_iPrettyPrint = a})

-- | Project ID for this request.
iProject :: Lens' InstancesDelete' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iUserIp :: Lens' InstancesDelete' (Maybe Text)
iUserIp = lens _iUserIp (\ s a -> s{_iUserIp = a})

-- | The name of the zone for this request.
iZone :: Lens' InstancesDelete' Text
iZone = lens _iZone (\ s a -> s{_iZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iKey :: Lens' InstancesDelete' (Maybe Text)
iKey = lens _iKey (\ s a -> s{_iKey = a})

-- | OAuth 2.0 token for the current user.
iOauthToken :: Lens' InstancesDelete' (Maybe Text)
iOauthToken
  = lens _iOauthToken (\ s a -> s{_iOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iFields :: Lens' InstancesDelete' (Maybe Text)
iFields = lens _iFields (\ s a -> s{_iFields = a})

-- | Data format for the response.
iAlt :: Lens' InstancesDelete' Alt
iAlt = lens _iAlt (\ s a -> s{_iAlt = a})

-- | Name of the instance resource to delete.
iInstance :: Lens' InstancesDelete' Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesDelete'{..}
          = go _iQuotaUser (Just _iPrettyPrint) _iProject
              _iUserIp
              _iZone
              _iKey
              _iOauthToken
              _iFields
              (Just _iAlt)
              _iInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesDeleteResource)
                      r
                      u
