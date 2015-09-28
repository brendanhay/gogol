{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.get@.
module Network.Google.API.Compute.Instances.Get
    (
    -- * REST Resource
      InstancesGetAPI

    -- * Creating a Request
    , instancesGet'
    , InstancesGet'

    -- * Request Lenses
    , ig1QuotaUser
    , ig1PrettyPrint
    , ig1Project
    , ig1UserIp
    , ig1Zone
    , ig1Key
    , ig1OauthToken
    , ig1Fields
    , ig1Alt
    , ig1Instance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.get which the
-- 'InstancesGet'' request conforms to.
type InstancesGetAPI =
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
                           QueryParam "alt" Alt :> Get '[JSON] Instance

-- | Returns the specified instance resource.
--
-- /See:/ 'instancesGet'' smart constructor.
data InstancesGet' = InstancesGet'
    { _ig1QuotaUser   :: !(Maybe Text)
    , _ig1PrettyPrint :: !Bool
    , _ig1Project     :: !Text
    , _ig1UserIp      :: !(Maybe Text)
    , _ig1Zone        :: !Text
    , _ig1Key         :: !(Maybe Text)
    , _ig1OauthToken  :: !(Maybe Text)
    , _ig1Fields      :: !(Maybe Text)
    , _ig1Alt         :: !Alt
    , _ig1Instance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ig1QuotaUser'
--
-- * 'ig1PrettyPrint'
--
-- * 'ig1Project'
--
-- * 'ig1UserIp'
--
-- * 'ig1Zone'
--
-- * 'ig1Key'
--
-- * 'ig1OauthToken'
--
-- * 'ig1Fields'
--
-- * 'ig1Alt'
--
-- * 'ig1Instance'
instancesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesGet'
instancesGet' pIg1Project_ pIg1Zone_ pIg1Instance_ =
    InstancesGet'
    { _ig1QuotaUser = Nothing
    , _ig1PrettyPrint = True
    , _ig1Project = pIg1Project_
    , _ig1UserIp = Nothing
    , _ig1Zone = pIg1Zone_
    , _ig1Key = Nothing
    , _ig1OauthToken = Nothing
    , _ig1Fields = Nothing
    , _ig1Alt = JSON
    , _ig1Instance = pIg1Instance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ig1QuotaUser :: Lens' InstancesGet' (Maybe Text)
ig1QuotaUser
  = lens _ig1QuotaUser (\ s a -> s{_ig1QuotaUser = a})

-- | Returns response with indentations and line breaks.
ig1PrettyPrint :: Lens' InstancesGet' Bool
ig1PrettyPrint
  = lens _ig1PrettyPrint
      (\ s a -> s{_ig1PrettyPrint = a})

-- | Project ID for this request.
ig1Project :: Lens' InstancesGet' Text
ig1Project
  = lens _ig1Project (\ s a -> s{_ig1Project = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ig1UserIp :: Lens' InstancesGet' (Maybe Text)
ig1UserIp
  = lens _ig1UserIp (\ s a -> s{_ig1UserIp = a})

-- | The name of the zone for this request.
ig1Zone :: Lens' InstancesGet' Text
ig1Zone = lens _ig1Zone (\ s a -> s{_ig1Zone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ig1Key :: Lens' InstancesGet' (Maybe Text)
ig1Key = lens _ig1Key (\ s a -> s{_ig1Key = a})

-- | OAuth 2.0 token for the current user.
ig1OauthToken :: Lens' InstancesGet' (Maybe Text)
ig1OauthToken
  = lens _ig1OauthToken
      (\ s a -> s{_ig1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ig1Fields :: Lens' InstancesGet' (Maybe Text)
ig1Fields
  = lens _ig1Fields (\ s a -> s{_ig1Fields = a})

-- | Data format for the response.
ig1Alt :: Lens' InstancesGet' Alt
ig1Alt = lens _ig1Alt (\ s a -> s{_ig1Alt = a})

-- | Name of the instance resource to return.
ig1Instance :: Lens' InstancesGet' Text
ig1Instance
  = lens _ig1Instance (\ s a -> s{_ig1Instance = a})

instance GoogleRequest InstancesGet' where
        type Rs InstancesGet' = Instance
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesGet'{..}
          = go _ig1QuotaUser (Just _ig1PrettyPrint) _ig1Project
              _ig1UserIp
              _ig1Zone
              _ig1Key
              _ig1OauthToken
              _ig1Fields
              (Just _ig1Alt)
              _ig1Instance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesGetAPI) r
                      u
