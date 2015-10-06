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
-- Module      : Network.Google.Resource.BigQuery.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all projects to which you have been granted any project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryProjectsList@.
module Network.Google.Resource.BigQuery.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList'
    , ProjectsList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plKey
    , plPageToken
    , plOAuthToken
    , plMaxResults
    , plFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryProjectsList@ which the
-- 'ProjectsList'' request conforms to.
type ProjectsListResource =
     "projects" :>
       QueryParam "pageToken" Text :>
         QueryParam "maxResults" Word32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ProjectList

-- | Lists all projects to which you have been granted any project role.
--
-- /See:/ 'projectsList'' smart constructor.
data ProjectsList' = ProjectsList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plKey         :: !(Maybe AuthKey)
    , _plPageToken   :: !(Maybe Text)
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plMaxResults  :: !(Maybe Word32)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plKey'
--
-- * 'plPageToken'
--
-- * 'plOAuthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
projectsList'
    :: ProjectsList'
projectsList' =
    ProjectsList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plKey = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' ProjectsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' ProjectsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIP :: Lens' ProjectsList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' ProjectsList' (Maybe AuthKey)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
plPageToken :: Lens' ProjectsList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' ProjectsList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | Maximum number of results to return
plMaxResults :: Lens' ProjectsList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' ProjectsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth ProjectsList' where
        authKey = plKey . _Just
        authToken = plOAuthToken . _Just

instance GoogleRequest ProjectsList' where
        type Rs ProjectsList' = ProjectList
        request = requestWith bigQueryRequest
        requestWith rq ProjectsList'{..}
          = go _plPageToken _plMaxResults _plQuotaUser
              (Just _plPrettyPrint)
              _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ProjectsListResource)
                      rq
