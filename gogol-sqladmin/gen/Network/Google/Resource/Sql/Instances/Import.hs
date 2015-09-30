{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Instances.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesImport@.
module Sql.Instances.Import
    (
    -- * REST Resource
      InstancesImportAPI

    -- * Creating a Request
    , instancesImport
    , InstancesImport

    -- * Request Lenses
    , iQuotaUser
    , iPrettyPrint
    , iProject
    , iUserIp
    , iKey
    , iOauthToken
    , iFields
    , iAlt
    , iInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesImport@ which the
-- 'InstancesImport' request conforms to.
type InstancesImportAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "import" :> Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ 'instancesImport' smart constructor.
data InstancesImport = InstancesImport
    { _iQuotaUser   :: !(Maybe Text)
    , _iPrettyPrint :: !Bool
    , _iProject     :: !Text
    , _iUserIp      :: !(Maybe Text)
    , _iKey         :: !(Maybe Text)
    , _iOauthToken  :: !(Maybe Text)
    , _iFields      :: !(Maybe Text)
    , _iAlt         :: !Text
    , _iInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImport'' with the minimum fields required to make a request.
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
-- * 'iKey'
--
-- * 'iOauthToken'
--
-- * 'iFields'
--
-- * 'iAlt'
--
-- * 'iInstance'
instancesImport
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesImport
instancesImport pIProject_ pIInstance_ =
    InstancesImport
    { _iQuotaUser = Nothing
    , _iPrettyPrint = True
    , _iProject = pIProject_
    , _iUserIp = Nothing
    , _iKey = Nothing
    , _iOauthToken = Nothing
    , _iFields = Nothing
    , _iAlt = "json"
    , _iInstance = pIInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iQuotaUser :: Lens' InstancesImport' (Maybe Text)
iQuotaUser
  = lens _iQuotaUser (\ s a -> s{_iQuotaUser = a})

-- | Returns response with indentations and line breaks.
iPrettyPrint :: Lens' InstancesImport' Bool
iPrettyPrint
  = lens _iPrettyPrint (\ s a -> s{_iPrettyPrint = a})

-- | Project ID of the project that contains the instance.
iProject :: Lens' InstancesImport' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iUserIp :: Lens' InstancesImport' (Maybe Text)
iUserIp = lens _iUserIp (\ s a -> s{_iUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iKey :: Lens' InstancesImport' (Maybe Text)
iKey = lens _iKey (\ s a -> s{_iKey = a})

-- | OAuth 2.0 token for the current user.
iOauthToken :: Lens' InstancesImport' (Maybe Text)
iOauthToken
  = lens _iOauthToken (\ s a -> s{_iOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iFields :: Lens' InstancesImport' (Maybe Text)
iFields = lens _iFields (\ s a -> s{_iFields = a})

-- | Data format for the response.
iAlt :: Lens' InstancesImport' Text
iAlt = lens _iAlt (\ s a -> s{_iAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iInstance :: Lens' InstancesImport' Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleRequest InstancesImport' where
        type Rs InstancesImport' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesImport{..}
          = go _iQuotaUser _iPrettyPrint _iProject _iUserIp
              _iKey
              _iOauthToken
              _iFields
              _iAlt
              _iInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesImportAPI)
                      r
                      u
