{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Instances.Clone
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesClone@.
module Sql.Instances.Clone
    (
    -- * REST Resource
      InstancesCloneAPI

    -- * Creating a Request
    , instancesClone
    , InstancesClone

    -- * Request Lenses
    , icQuotaUser
    , icPrettyPrint
    , icProject
    , icUserIp
    , icKey
    , icOauthToken
    , icFields
    , icAlt
    , icInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesClone@ which the
-- 'InstancesClone' request conforms to.
type InstancesCloneAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "clone" :> Post '[JSON] Operation

-- | Creates a Cloud SQL instance as a clone of the source instance.
--
-- /See:/ 'instancesClone' smart constructor.
data InstancesClone = InstancesClone
    { _icQuotaUser   :: !(Maybe Text)
    , _icPrettyPrint :: !Bool
    , _icProject     :: !Text
    , _icUserIp      :: !(Maybe Text)
    , _icKey         :: !(Maybe Text)
    , _icOauthToken  :: !(Maybe Text)
    , _icFields      :: !(Maybe Text)
    , _icAlt         :: !Text
    , _icInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'icUserIp'
--
-- * 'icKey'
--
-- * 'icOauthToken'
--
-- * 'icFields'
--
-- * 'icAlt'
--
-- * 'icInstance'
instancesClone
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesClone
instancesClone pIcProject_ pIcInstance_ =
    InstancesClone
    { _icQuotaUser = Nothing
    , _icPrettyPrint = True
    , _icProject = pIcProject_
    , _icUserIp = Nothing
    , _icKey = Nothing
    , _icOauthToken = Nothing
    , _icFields = Nothing
    , _icAlt = "json"
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
icUserIp :: Lens' InstancesClone' (Maybe Text)
icUserIp = lens _icUserIp (\ s a -> s{_icUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icKey :: Lens' InstancesClone' (Maybe Text)
icKey = lens _icKey (\ s a -> s{_icKey = a})

-- | OAuth 2.0 token for the current user.
icOauthToken :: Lens' InstancesClone' (Maybe Text)
icOauthToken
  = lens _icOauthToken (\ s a -> s{_icOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
icFields :: Lens' InstancesClone' (Maybe Text)
icFields = lens _icFields (\ s a -> s{_icFields = a})

-- | Data format for the response.
icAlt :: Lens' InstancesClone' Text
icAlt = lens _icAlt (\ s a -> s{_icAlt = a})

-- | The ID of the Cloud SQL instance to be cloned (source). This does not
-- include the project ID.
icInstance :: Lens' InstancesClone' Text
icInstance
  = lens _icInstance (\ s a -> s{_icInstance = a})

instance GoogleRequest InstancesClone' where
        type Rs InstancesClone' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesClone{..}
          = go _icQuotaUser _icPrettyPrint _icProject _icUserIp
              _icKey
              _icOauthToken
              _icFields
              _icAlt
              _icInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesCloneAPI)
                      r
                      u
