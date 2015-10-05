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
-- Module      : Network.Google.Resource.SQL.Instances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesGet@.
module Network.Google.Resource.SQL.Instances.Get
    (
    -- * REST Resource
      InstancesGetResource

    -- * Creating a Request
    , instancesGet'
    , InstancesGet'

    -- * Request Lenses
    , igQuotaUser
    , igPrettyPrint
    , igProject
    , igUserIP
    , igKey
    , igOAuthToken
    , igFields
    , igInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesGet@ which the
-- 'InstancesGet'' request conforms to.
type InstancesGetResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DatabaseInstance

-- | Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ 'instancesGet'' smart constructor.
data InstancesGet' = InstancesGet'
    { _igQuotaUser   :: !(Maybe Text)
    , _igPrettyPrint :: !Bool
    , _igProject     :: !Text
    , _igUserIP      :: !(Maybe Text)
    , _igKey         :: !(Maybe Key)
    , _igOAuthToken  :: !(Maybe OAuthToken)
    , _igFields      :: !(Maybe Text)
    , _igInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igProject'
--
-- * 'igUserIP'
--
-- * 'igKey'
--
-- * 'igOAuthToken'
--
-- * 'igFields'
--
-- * 'igInstance'
instancesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesGet'
instancesGet' pIgProject_ pIgInstance_ =
    InstancesGet'
    { _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igProject = pIgProject_
    , _igUserIP = Nothing
    , _igKey = Nothing
    , _igOAuthToken = Nothing
    , _igFields = Nothing
    , _igInstance = pIgInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' InstancesGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InstancesGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

-- | Project ID of the project that contains the instance.
igProject :: Lens' InstancesGet' Text
igProject
  = lens _igProject (\ s a -> s{_igProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIP :: Lens' InstancesGet' (Maybe Text)
igUserIP = lens _igUserIP (\ s a -> s{_igUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InstancesGet' (Maybe Key)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | OAuth 2.0 token for the current user.
igOAuthToken :: Lens' InstancesGet' (Maybe OAuthToken)
igOAuthToken
  = lens _igOAuthToken (\ s a -> s{_igOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InstancesGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

-- | Database instance ID. This does not include the project ID.
igInstance :: Lens' InstancesGet' Text
igInstance
  = lens _igInstance (\ s a -> s{_igInstance = a})

instance GoogleAuth InstancesGet' where
        authKey = igKey . _Just
        authToken = igOAuthToken . _Just

instance GoogleRequest InstancesGet' where
        type Rs InstancesGet' = DatabaseInstance
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesGet'{..}
          = go _igProject _igInstance _igQuotaUser
              (Just _igPrettyPrint)
              _igUserIP
              _igFields
              _igKey
              _igOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesGetResource)
                      r
                      u
