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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of groups contained within the specified project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsList@.
module Network.Google.Resource.CloudUserAccounts.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList'
    , GroupsList'

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glOrderBy
    , glProject
    , glUserIP
    , glKey
    , glFilter
    , glPageToken
    , glOAuthToken
    , glMaxResults
    , glFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsList@ which the
-- 'GroupsList'' request conforms to.
type GroupsListResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           QueryParam "orderBy" Text :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] GroupList

-- | Retrieves the list of groups contained within the specified project.
--
-- /See:/ 'groupsList'' smart constructor.
data GroupsList' = GroupsList'
    { _glQuotaUser   :: !(Maybe Text)
    , _glPrettyPrint :: !Bool
    , _glOrderBy     :: !(Maybe Text)
    , _glProject     :: !Text
    , _glUserIP      :: !(Maybe Text)
    , _glKey         :: !(Maybe AuthKey)
    , _glFilter      :: !(Maybe Text)
    , _glPageToken   :: !(Maybe Text)
    , _glOAuthToken  :: !(Maybe OAuthToken)
    , _glMaxResults  :: !Word32
    , _glFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glQuotaUser'
--
-- * 'glPrettyPrint'
--
-- * 'glOrderBy'
--
-- * 'glProject'
--
-- * 'glUserIP'
--
-- * 'glKey'
--
-- * 'glFilter'
--
-- * 'glPageToken'
--
-- * 'glOAuthToken'
--
-- * 'glMaxResults'
--
-- * 'glFields'
groupsList'
    :: Text -- ^ 'project'
    -> GroupsList'
groupsList' pGlProject_ =
    GroupsList'
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glOrderBy = Nothing
    , _glProject = pGlProject_
    , _glUserIP = Nothing
    , _glKey = Nothing
    , _glFilter = Nothing
    , _glPageToken = Nothing
    , _glOAuthToken = Nothing
    , _glMaxResults = 500
    , _glFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
glQuotaUser :: Lens' GroupsList' (Maybe Text)
glQuotaUser
  = lens _glQuotaUser (\ s a -> s{_glQuotaUser = a})

-- | Returns response with indentations and line breaks.
glPrettyPrint :: Lens' GroupsList' Bool
glPrettyPrint
  = lens _glPrettyPrint
      (\ s a -> s{_glPrettyPrint = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
glOrderBy :: Lens' GroupsList' (Maybe Text)
glOrderBy
  = lens _glOrderBy (\ s a -> s{_glOrderBy = a})

-- | Project ID for this request.
glProject :: Lens' GroupsList' Text
glProject
  = lens _glProject (\ s a -> s{_glProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
glUserIP :: Lens' GroupsList' (Maybe Text)
glUserIP = lens _glUserIP (\ s a -> s{_glUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
glKey :: Lens' GroupsList' (Maybe AuthKey)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
glFilter :: Lens' GroupsList' (Maybe Text)
glFilter = lens _glFilter (\ s a -> s{_glFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
glPageToken :: Lens' GroupsList' (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | OAuth 2.0 token for the current user.
glOAuthToken :: Lens' GroupsList' (Maybe OAuthToken)
glOAuthToken
  = lens _glOAuthToken (\ s a -> s{_glOAuthToken = a})

-- | Maximum count of results to be returned.
glMaxResults :: Lens' GroupsList' Word32
glMaxResults
  = lens _glMaxResults (\ s a -> s{_glMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
glFields :: Lens' GroupsList' (Maybe Text)
glFields = lens _glFields (\ s a -> s{_glFields = a})

instance GoogleAuth GroupsList' where
        authKey = glKey . _Just
        authToken = glOAuthToken . _Just

instance GoogleRequest GroupsList' where
        type Rs GroupsList' = GroupList
        request = requestWith userAccountsRequest
        requestWith rq GroupsList'{..}
          = go _glProject _glOrderBy _glFilter _glPageToken
              (Just _glMaxResults)
              _glQuotaUser
              (Just _glPrettyPrint)
              _glUserIP
              _glFields
              _glKey
              _glOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy GroupsListResource) rq
