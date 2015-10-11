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
-- Module      : Network.Google.Resource.SQL.Instances.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesImport@.
module Network.Google.Resource.SQL.Instances.Import
    (
    -- * REST Resource
      InstancesImportResource

    -- * Creating a Request
    , instancesImport'
    , InstancesImport'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIP
    , insPayload
    , insKey
    , insOAuthToken
    , insFields
    , insInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesImport@ method which the
-- 'InstancesImport'' request conforms to.
type InstancesImportResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "import" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesImportRequest :>
                               Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ 'instancesImport'' smart constructor.
data InstancesImport' = InstancesImport'
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIP      :: !(Maybe Text)
    , _insPayload     :: !InstancesImportRequest
    , _insKey         :: !(Maybe AuthKey)
    , _insOAuthToken  :: !(Maybe OAuthToken)
    , _insFields      :: !(Maybe Text)
    , _insInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImport'' with the minimum fields required to make a request.
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
-- * 'insPayload'
--
-- * 'insKey'
--
-- * 'insOAuthToken'
--
-- * 'insFields'
--
-- * 'insInstance'
instancesImport'
    :: Text -- ^ 'project'
    -> InstancesImportRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesImport'
instancesImport' pInsProject_ pInsPayload_ pInsInstance_ =
    InstancesImport'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIP = Nothing
    , _insPayload = pInsPayload_
    , _insKey = Nothing
    , _insOAuthToken = Nothing
    , _insFields = Nothing
    , _insInstance = pInsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesImport' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesImport' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID of the project that contains the instance.
insProject :: Lens' InstancesImport' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIP :: Lens' InstancesImport' (Maybe Text)
insUserIP
  = lens _insUserIP (\ s a -> s{_insUserIP = a})

-- | Multipart request metadata.
insPayload :: Lens' InstancesImport' InstancesImportRequest
insPayload
  = lens _insPayload (\ s a -> s{_insPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesImport' (Maybe AuthKey)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOAuthToken :: Lens' InstancesImport' (Maybe OAuthToken)
insOAuthToken
  = lens _insOAuthToken
      (\ s a -> s{_insOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesImport' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
insInstance :: Lens' InstancesImport' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleAuth InstancesImport' where
        _AuthKey = insKey . _Just
        _AuthToken = insOAuthToken . _Just

instance GoogleRequest InstancesImport' where
        type Rs InstancesImport' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq InstancesImport'{..}
          = go _insProject _insInstance _insQuotaUser
              (Just _insPrettyPrint)
              _insUserIP
              _insFields
              _insKey
              _insOAuthToken
              (Just AltJSON)
              _insPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesImportResource)
                      rq
