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
-- Module      : Network.Google.Resource.SQL.Instances.Clone
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesClone@.
module Network.Google.Resource.SQL.Instances.Clone
    (
    -- * REST Resource
      InstancesCloneResource

    -- * Creating a Request
    , instancesClone'
    , InstancesClone'

    -- * Request Lenses
    , icQuotaUser
    , icPrettyPrint
    , icProject
    , icUserIP
    , icPayload
    , icKey
    , icOAuthToken
    , icFields
    , icInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesClone@ method which the
-- 'InstancesClone'' request conforms to.
type InstancesCloneResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "clone" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesCloneRequest :>
                               Post '[JSON] Operation

-- | Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ 'instancesClone'' smart constructor.
data InstancesClone' = InstancesClone'
    { _icQuotaUser   :: !(Maybe Text)
    , _icPrettyPrint :: !Bool
    , _icProject     :: !Text
    , _icUserIP      :: !(Maybe Text)
    , _icPayload     :: !InstancesCloneRequest
    , _icKey         :: !(Maybe AuthKey)
    , _icOAuthToken  :: !(Maybe OAuthToken)
    , _icFields      :: !(Maybe Text)
    , _icInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesClone'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icQuotaUser'
--
-- * 'icPrettyPrint'
--
-- * 'icProject'
--
-- * 'icUserIP'
--
-- * 'icPayload'
--
-- * 'icKey'
--
-- * 'icOAuthToken'
--
-- * 'icFields'
--
-- * 'icInstance'
instancesClone'
    :: Text -- ^ 'project'
    -> InstancesCloneRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesClone'
instancesClone' pIcProject_ pIcPayload_ pIcInstance_ =
    InstancesClone'
    { _icQuotaUser = Nothing
    , _icPrettyPrint = True
    , _icProject = pIcProject_
    , _icUserIP = Nothing
    , _icPayload = pIcPayload_
    , _icKey = Nothing
    , _icOAuthToken = Nothing
    , _icFields = Nothing
    , _icInstance = pIcInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
icQuotaUser :: Lens' InstancesClone' (Maybe Text)
icQuotaUser
  = lens _icQuotaUser (\ s a -> s{_icQuotaUser = a})

-- | Returns response with indentations and line breaks.
icPrettyPrint :: Lens' InstancesClone' Bool
icPrettyPrint
  = lens _icPrettyPrint
      (\ s a -> s{_icPrettyPrint = a})

-- | Project ID of the source as well as the clone Cloud SQL instance.
icProject :: Lens' InstancesClone' Text
icProject
  = lens _icProject (\ s a -> s{_icProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
icUserIP :: Lens' InstancesClone' (Maybe Text)
icUserIP = lens _icUserIP (\ s a -> s{_icUserIP = a})

-- | Multipart request metadata.
icPayload :: Lens' InstancesClone' InstancesCloneRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icKey :: Lens' InstancesClone' (Maybe AuthKey)
icKey = lens _icKey (\ s a -> s{_icKey = a})

-- | OAuth 2.0 token for the current user.
icOAuthToken :: Lens' InstancesClone' (Maybe OAuthToken)
icOAuthToken
  = lens _icOAuthToken (\ s a -> s{_icOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
icFields :: Lens' InstancesClone' (Maybe Text)
icFields = lens _icFields (\ s a -> s{_icFields = a})

-- | The ID of the Cloud SQL instance to be cloned (source). This does not
-- include the project ID.
icInstance :: Lens' InstancesClone' Text
icInstance
  = lens _icInstance (\ s a -> s{_icInstance = a})

instance GoogleAuth InstancesClone' where
        _AuthKey = icKey . _Just
        _AuthToken = icOAuthToken . _Just

instance GoogleRequest InstancesClone' where
        type Rs InstancesClone' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq InstancesClone'{..}
          = go _icProject _icInstance _icQuotaUser
              (Just _icPrettyPrint)
              _icUserIP
              _icFields
              _icKey
              _icOAuthToken
              (Just AltJSON)
              _icPayload
          where go
                  = clientBuild (Proxy :: Proxy InstancesCloneResource)
                      rq
