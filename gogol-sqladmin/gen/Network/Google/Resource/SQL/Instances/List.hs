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
-- Module      : Network.Google.Resource.SQL.Instances.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists instances under a given project in the alphabetical order of the
-- instance name.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesList@.
module Network.Google.Resource.SQL.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList'
    , InstancesList'

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilProject
    , ilUserIP
    , ilKey
    , ilPageToken
    , ilOAuthToken
    , ilMaxResults
    , ilFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesList@ which the
-- 'InstancesList'' request conforms to.
type InstancesListResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InstancesListResponse

-- | Lists instances under a given project in the alphabetical order of the
-- instance name.
--
-- /See:/ 'instancesList'' smart constructor.
data InstancesList' = InstancesList'
    { _ilQuotaUser   :: !(Maybe Text)
    , _ilPrettyPrint :: !Bool
    , _ilProject     :: !Text
    , _ilUserIP      :: !(Maybe Text)
    , _ilKey         :: !(Maybe AuthKey)
    , _ilPageToken   :: !(Maybe Text)
    , _ilOAuthToken  :: !(Maybe OAuthToken)
    , _ilMaxResults  :: !(Maybe Word32)
    , _ilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ilUserIP'
--
-- * 'ilKey'
--
-- * 'ilPageToken'
--
-- * 'ilOAuthToken'
--
-- * 'ilMaxResults'
--
-- * 'ilFields'
instancesList'
    :: Text -- ^ 'project'
    -> InstancesList'
instancesList' pIlProject_ =
    InstancesList'
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilProject = pIlProject_
    , _ilUserIP = Nothing
    , _ilKey = Nothing
    , _ilPageToken = Nothing
    , _ilOAuthToken = Nothing
    , _ilMaxResults = Nothing
    , _ilFields = Nothing
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
ilUserIP :: Lens' InstancesList' (Maybe Text)
ilUserIP = lens _ilUserIP (\ s a -> s{_ilUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InstancesList' (Maybe AuthKey)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
ilPageToken :: Lens' InstancesList' (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | OAuth 2.0 token for the current user.
ilOAuthToken :: Lens' InstancesList' (Maybe OAuthToken)
ilOAuthToken
  = lens _ilOAuthToken (\ s a -> s{_ilOAuthToken = a})

-- | The maximum number of results to return per response.
ilMaxResults :: Lens' InstancesList' (Maybe Word32)
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InstancesList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

instance GoogleAuth InstancesList' where
        authKey = ilKey . _Just
        authToken = ilOAuthToken . _Just

instance GoogleRequest InstancesList' where
        type Rs InstancesList' = InstancesListResponse
        request = requestWith sQLAdminRequest
        requestWith rq InstancesList'{..}
          = go _ilProject _ilPageToken _ilMaxResults
              _ilQuotaUser
              (Just _ilPrettyPrint)
              _ilUserIP
              _ilFields
              _ilKey
              _ilOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy InstancesListResource)
                      rq
