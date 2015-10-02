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
-- Module      : Network.Google.Resource.SQL.Instances.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports data from a Cloud SQL instance to a Google Cloud Storage bucket
-- as a MySQL dump file.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesExport@.
module Network.Google.Resource.SQL.Instances.Export
    (
    -- * REST Resource
      InstancesExportResource

    -- * Creating a Request
    , instancesExport'
    , InstancesExport'

    -- * Request Lenses
    , ieQuotaUser
    , ieInstancesExportRequest
    , iePrettyPrint
    , ieProject
    , ieUserIP
    , ieKey
    , ieOAuthToken
    , ieFields
    , ieInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesExport@ which the
-- 'InstancesExport'' request conforms to.
type InstancesExportResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "export" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesExportRequest :>
                               Post '[JSON] Operation

-- | Exports data from a Cloud SQL instance to a Google Cloud Storage bucket
-- as a MySQL dump file.
--
-- /See:/ 'instancesExport'' smart constructor.
data InstancesExport' = InstancesExport'
    { _ieQuotaUser              :: !(Maybe Text)
    , _ieInstancesExportRequest :: !InstancesExportRequest
    , _iePrettyPrint            :: !Bool
    , _ieProject                :: !Text
    , _ieUserIP                 :: !(Maybe Text)
    , _ieKey                    :: !(Maybe Key)
    , _ieOAuthToken             :: !(Maybe OAuthToken)
    , _ieFields                 :: !(Maybe Text)
    , _ieInstance               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieQuotaUser'
--
-- * 'ieInstancesExportRequest'
--
-- * 'iePrettyPrint'
--
-- * 'ieProject'
--
-- * 'ieUserIP'
--
-- * 'ieKey'
--
-- * 'ieOAuthToken'
--
-- * 'ieFields'
--
-- * 'ieInstance'
instancesExport'
    :: InstancesExportRequest -- ^ 'InstancesExportRequest'
    -> Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesExport'
instancesExport' pIeInstancesExportRequest_ pIeProject_ pIeInstance_ =
    InstancesExport'
    { _ieQuotaUser = Nothing
    , _ieInstancesExportRequest = pIeInstancesExportRequest_
    , _iePrettyPrint = True
    , _ieProject = pIeProject_
    , _ieUserIP = Nothing
    , _ieKey = Nothing
    , _ieOAuthToken = Nothing
    , _ieFields = Nothing
    , _ieInstance = pIeInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ieQuotaUser :: Lens' InstancesExport' (Maybe Text)
ieQuotaUser
  = lens _ieQuotaUser (\ s a -> s{_ieQuotaUser = a})

-- | Multipart request metadata.
ieInstancesExportRequest :: Lens' InstancesExport' InstancesExportRequest
ieInstancesExportRequest
  = lens _ieInstancesExportRequest
      (\ s a -> s{_ieInstancesExportRequest = a})

-- | Returns response with indentations and line breaks.
iePrettyPrint :: Lens' InstancesExport' Bool
iePrettyPrint
  = lens _iePrettyPrint
      (\ s a -> s{_iePrettyPrint = a})

-- | Project ID of the project that contains the instance to be exported.
ieProject :: Lens' InstancesExport' Text
ieProject
  = lens _ieProject (\ s a -> s{_ieProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ieUserIP :: Lens' InstancesExport' (Maybe Text)
ieUserIP = lens _ieUserIP (\ s a -> s{_ieUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ieKey :: Lens' InstancesExport' (Maybe Key)
ieKey = lens _ieKey (\ s a -> s{_ieKey = a})

-- | OAuth 2.0 token for the current user.
ieOAuthToken :: Lens' InstancesExport' (Maybe OAuthToken)
ieOAuthToken
  = lens _ieOAuthToken (\ s a -> s{_ieOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ieFields :: Lens' InstancesExport' (Maybe Text)
ieFields = lens _ieFields (\ s a -> s{_ieFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ieInstance :: Lens' InstancesExport' Text
ieInstance
  = lens _ieInstance (\ s a -> s{_ieInstance = a})

instance GoogleAuth InstancesExport' where
        authKey = ieKey . _Just
        authToken = ieOAuthToken . _Just

instance GoogleRequest InstancesExport' where
        type Rs InstancesExport' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesExport'{..}
          = go _ieQuotaUser (Just _iePrettyPrint) _ieProject
              _ieUserIP
              _ieKey
              _ieOAuthToken
              _ieFields
              _ieInstance
              (Just AltJSON)
              _ieInstancesExportRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesExportResource)
                      r
                      u
