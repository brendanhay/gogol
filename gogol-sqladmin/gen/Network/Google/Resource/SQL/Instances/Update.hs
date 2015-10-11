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
-- Module      : Network.Google.Resource.SQL.Instances.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesUpdate@.
module Network.Google.Resource.SQL.Instances.Update
    (
    -- * REST Resource
      InstancesUpdateResource

    -- * Creating a Request
    , instancesUpdate'
    , InstancesUpdate'

    -- * Request Lenses
    , iuQuotaUser
    , iuPrettyPrint
    , iuProject
    , iuUserIP
    , iuPayload
    , iuKey
    , iuOAuthToken
    , iuFields
    , iuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesUpdate@ method which the
-- 'InstancesUpdate'' request conforms to.
type InstancesUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DatabaseInstance :>
                             Put '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ 'instancesUpdate'' smart constructor.
data InstancesUpdate' = InstancesUpdate'
    { _iuQuotaUser   :: !(Maybe Text)
    , _iuPrettyPrint :: !Bool
    , _iuProject     :: !Text
    , _iuUserIP      :: !(Maybe Text)
    , _iuPayload     :: !DatabaseInstance
    , _iuKey         :: !(Maybe AuthKey)
    , _iuOAuthToken  :: !(Maybe OAuthToken)
    , _iuFields      :: !(Maybe Text)
    , _iuInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuQuotaUser'
--
-- * 'iuPrettyPrint'
--
-- * 'iuProject'
--
-- * 'iuUserIP'
--
-- * 'iuPayload'
--
-- * 'iuKey'
--
-- * 'iuOAuthToken'
--
-- * 'iuFields'
--
-- * 'iuInstance'
instancesUpdate'
    :: Text -- ^ 'project'
    -> DatabaseInstance -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesUpdate'
instancesUpdate' pIuProject_ pIuPayload_ pIuInstance_ =
    InstancesUpdate'
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuProject = pIuProject_
    , _iuUserIP = Nothing
    , _iuPayload = pIuPayload_
    , _iuKey = Nothing
    , _iuOAuthToken = Nothing
    , _iuFields = Nothing
    , _iuInstance = pIuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iuQuotaUser :: Lens' InstancesUpdate' (Maybe Text)
iuQuotaUser
  = lens _iuQuotaUser (\ s a -> s{_iuQuotaUser = a})

-- | Returns response with indentations and line breaks.
iuPrettyPrint :: Lens' InstancesUpdate' Bool
iuPrettyPrint
  = lens _iuPrettyPrint
      (\ s a -> s{_iuPrettyPrint = a})

-- | Project ID of the project that contains the instance.
iuProject :: Lens' InstancesUpdate' Text
iuProject
  = lens _iuProject (\ s a -> s{_iuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iuUserIP :: Lens' InstancesUpdate' (Maybe Text)
iuUserIP = lens _iuUserIP (\ s a -> s{_iuUserIP = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstancesUpdate' DatabaseInstance
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iuKey :: Lens' InstancesUpdate' (Maybe AuthKey)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | OAuth 2.0 token for the current user.
iuOAuthToken :: Lens' InstancesUpdate' (Maybe OAuthToken)
iuOAuthToken
  = lens _iuOAuthToken (\ s a -> s{_iuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InstancesUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iuInstance :: Lens' InstancesUpdate' Text
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance GoogleAuth InstancesUpdate' where
        _AuthKey = iuKey . _Just
        _AuthToken = iuOAuthToken . _Just

instance GoogleRequest InstancesUpdate' where
        type Rs InstancesUpdate' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq InstancesUpdate'{..}
          = go _iuProject _iuInstance _iuQuotaUser
              (Just _iuPrettyPrint)
              _iuUserIP
              _iuFields
              _iuKey
              _iuOAuthToken
              (Just AltJSON)
              _iuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesUpdateResource)
                      rq
