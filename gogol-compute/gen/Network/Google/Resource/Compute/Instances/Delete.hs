{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Compute.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteAPI

    -- * Creating a Request
    , instancesDelete
    , InstancesDelete

    -- * Request Lenses
    , id1QuotaUser
    , id1PrettyPrint
    , id1Project
    , id1UserIp
    , id1Zone
    , id1Key
    , id1OauthToken
    , id1Fields
    , id1Alt
    , id1Instance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDelete@ which the
-- 'InstancesDelete' request conforms to.
type InstancesDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ 'instancesDelete' smart constructor.
data InstancesDelete = InstancesDelete
    { _id1QuotaUser   :: !(Maybe Text)
    , _id1PrettyPrint :: !Bool
    , _id1Project     :: !Text
    , _id1UserIp      :: !(Maybe Text)
    , _id1Zone        :: !Text
    , _id1Key         :: !(Maybe Text)
    , _id1OauthToken  :: !(Maybe Text)
    , _id1Fields      :: !(Maybe Text)
    , _id1Alt         :: !Text
    , _id1Instance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'id1QuotaUser'
--
-- * 'id1PrettyPrint'
--
-- * 'id1Project'
--
-- * 'id1UserIp'
--
-- * 'id1Zone'
--
-- * 'id1Key'
--
-- * 'id1OauthToken'
--
-- * 'id1Fields'
--
-- * 'id1Alt'
--
-- * 'id1Instance'
instancesDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesDelete
instancesDelete pId1Project_ pId1Zone_ pId1Instance_ =
    InstancesDelete
    { _id1QuotaUser = Nothing
    , _id1PrettyPrint = True
    , _id1Project = pId1Project_
    , _id1UserIp = Nothing
    , _id1Zone = pId1Zone_
    , _id1Key = Nothing
    , _id1OauthToken = Nothing
    , _id1Fields = Nothing
    , _id1Alt = "json"
    , _id1Instance = pId1Instance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
id1QuotaUser :: Lens' InstancesDelete' (Maybe Text)
id1QuotaUser
  = lens _id1QuotaUser (\ s a -> s{_id1QuotaUser = a})

-- | Returns response with indentations and line breaks.
id1PrettyPrint :: Lens' InstancesDelete' Bool
id1PrettyPrint
  = lens _id1PrettyPrint
      (\ s a -> s{_id1PrettyPrint = a})

-- | Project ID for this request.
id1Project :: Lens' InstancesDelete' Text
id1Project
  = lens _id1Project (\ s a -> s{_id1Project = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
id1UserIp :: Lens' InstancesDelete' (Maybe Text)
id1UserIp
  = lens _id1UserIp (\ s a -> s{_id1UserIp = a})

-- | The name of the zone for this request.
id1Zone :: Lens' InstancesDelete' Text
id1Zone = lens _id1Zone (\ s a -> s{_id1Zone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
id1Key :: Lens' InstancesDelete' (Maybe Text)
id1Key = lens _id1Key (\ s a -> s{_id1Key = a})

-- | OAuth 2.0 token for the current user.
id1OauthToken :: Lens' InstancesDelete' (Maybe Text)
id1OauthToken
  = lens _id1OauthToken
      (\ s a -> s{_id1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
id1Fields :: Lens' InstancesDelete' (Maybe Text)
id1Fields
  = lens _id1Fields (\ s a -> s{_id1Fields = a})

-- | Data format for the response.
id1Alt :: Lens' InstancesDelete' Text
id1Alt = lens _id1Alt (\ s a -> s{_id1Alt = a})

-- | Name of the instance resource to delete.
id1Instance :: Lens' InstancesDelete' Text
id1Instance
  = lens _id1Instance (\ s a -> s{_id1Instance = a})

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesDelete{..}
          = go _id1QuotaUser _id1PrettyPrint _id1Project
              _id1UserIp
              _id1Zone
              _id1Key
              _id1OauthToken
              _id1Fields
              _id1Alt
              _id1Instance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesDeleteAPI)
                      r
                      u
