{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Instances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesInsert@.
module Sql.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertAPI

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiProject
    , iiUserIp
    , iiKey
    , iiOauthToken
    , iiFields
    , iiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesInsert@ which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :> Post '[JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert = InstancesInsert
    { _iiQuotaUser   :: !(Maybe Text)
    , _iiPrettyPrint :: !Bool
    , _iiProject     :: !Text
    , _iiUserIp      :: !(Maybe Text)
    , _iiKey         :: !(Maybe Text)
    , _iiOauthToken  :: !(Maybe Text)
    , _iiFields      :: !(Maybe Text)
    , _iiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiProject'
--
-- * 'iiUserIp'
--
-- * 'iiKey'
--
-- * 'iiOauthToken'
--
-- * 'iiFields'
--
-- * 'iiAlt'
instancesInsert
    :: Text -- ^ 'project'
    -> InstancesInsert
instancesInsert pIiProject_ =
    InstancesInsert
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiProject = pIiProject_
    , _iiUserIp = Nothing
    , _iiKey = Nothing
    , _iiOauthToken = Nothing
    , _iiFields = Nothing
    , _iiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' InstancesInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' InstancesInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
iiProject :: Lens' InstancesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIp :: Lens' InstancesInsert' (Maybe Text)
iiUserIp = lens _iiUserIp (\ s a -> s{_iiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' InstancesInsert' (Maybe Text)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | OAuth 2.0 token for the current user.
iiOauthToken :: Lens' InstancesInsert' (Maybe Text)
iiOauthToken
  = lens _iiOauthToken (\ s a -> s{_iiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' InstancesInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

-- | Data format for the response.
iiAlt :: Lens' InstancesInsert' Text
iiAlt = lens _iiAlt (\ s a -> s{_iiAlt = a})

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesInsert{..}
          = go _iiQuotaUser _iiPrettyPrint _iiProject _iiUserIp
              _iiKey
              _iiOauthToken
              _iiFields
              _iiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesInsertAPI)
                      r
                      u
