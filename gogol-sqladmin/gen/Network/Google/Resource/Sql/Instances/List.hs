{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Instances.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists instances under a given project in the alphabetical order of the
-- instance name.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesList@.
module Sql.Instances.List
    (
    -- * REST Resource
      InstancesListAPI

    -- * Creating a Request
    , instancesList
    , InstancesList

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilProject
    , ilUserIp
    , ilKey
    , ilPageToken
    , ilOauthToken
    , ilMaxResults
    , ilFields
    , ilAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesList@ which the
-- 'InstancesList' request conforms to.
type InstancesListAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] InstancesListResponse

-- | Lists instances under a given project in the alphabetical order of the
-- instance name.
--
-- /See:/ 'instancesList' smart constructor.
data InstancesList = InstancesList
    { _ilQuotaUser   :: !(Maybe Text)
    , _ilPrettyPrint :: !Bool
    , _ilProject     :: !Text
    , _ilUserIp      :: !(Maybe Text)
    , _ilKey         :: !(Maybe Text)
    , _ilPageToken   :: !(Maybe Text)
    , _ilOauthToken  :: !(Maybe Text)
    , _ilMaxResults  :: !(Maybe Word32)
    , _ilFields      :: !(Maybe Text)
    , _ilAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilQuotaUser'
--
-- * 'ilPrettyPrint'
--
-- * 'ilProject'
--
-- * 'ilUserIp'
--
-- * 'ilKey'
--
-- * 'ilPageToken'
--
-- * 'ilOauthToken'
--
-- * 'ilMaxResults'
--
-- * 'ilFields'
--
-- * 'ilAlt'
instancesList
    :: Text -- ^ 'project'
    -> InstancesList
instancesList pIlProject_ =
    InstancesList
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilProject = pIlProject_
    , _ilUserIp = Nothing
    , _ilKey = Nothing
    , _ilPageToken = Nothing
    , _ilOauthToken = Nothing
    , _ilMaxResults = Nothing
    , _ilFields = Nothing
    , _ilAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ilQuotaUser :: Lens' InstancesList' (Maybe Text)
ilQuotaUser
  = lens _ilQuotaUser (\ s a -> s{_ilQuotaUser = a})

-- | Returns response with indentations and line breaks.
ilPrettyPrint :: Lens' InstancesList' Bool
ilPrettyPrint
  = lens _ilPrettyPrint
      (\ s a -> s{_ilPrettyPrint = a})

-- | Project ID of the project for which to list Cloud SQL instances.
ilProject :: Lens' InstancesList' Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ilUserIp :: Lens' InstancesList' (Maybe Text)
ilUserIp = lens _ilUserIp (\ s a -> s{_ilUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InstancesList' (Maybe Text)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
ilPageToken :: Lens' InstancesList' (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | OAuth 2.0 token for the current user.
ilOauthToken :: Lens' InstancesList' (Maybe Text)
ilOauthToken
  = lens _ilOauthToken (\ s a -> s{_ilOauthToken = a})

-- | The maximum number of results to return per response.
ilMaxResults :: Lens' InstancesList' (Maybe Word32)
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InstancesList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

-- | Data format for the response.
ilAlt :: Lens' InstancesList' Text
ilAlt = lens _ilAlt (\ s a -> s{_ilAlt = a})

instance GoogleRequest InstancesList' where
        type Rs InstancesList' = InstancesListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesList{..}
          = go _ilQuotaUser _ilPrettyPrint _ilProject _ilUserIp
              _ilKey
              _ilPageToken
              _ilOauthToken
              _ilMaxResults
              _ilFields
              _ilAlt
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesListAPI) r
                      u
