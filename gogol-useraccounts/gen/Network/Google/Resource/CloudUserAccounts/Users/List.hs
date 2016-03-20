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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of users contained within the specified project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.list@.
module Network.Google.Resource.CloudUserAccounts.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulOrderBy
    , ulProject
    , ulFilter
    , ulPageToken
    , ulMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "users" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] UserList

-- | Retrieves a list of users contained within the specified project.
--
-- /See:/ 'usersList' smart constructor.
data UsersList = UsersList
    { _ulOrderBy    :: !(Maybe Text)
    , _ulProject    :: !Text
    , _ulFilter     :: !(Maybe Text)
    , _ulPageToken  :: !(Maybe Text)
    , _ulMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulOrderBy'
--
-- * 'ulProject'
--
-- * 'ulFilter'
--
-- * 'ulPageToken'
--
-- * 'ulMaxResults'
usersList
    :: Text -- ^ 'ulProject'
    -> UsersList
usersList pUlProject_ =
    UsersList
    { _ulOrderBy = Nothing
    , _ulProject = pUlProject_
    , _ulFilter = Nothing
    , _ulPageToken = Nothing
    , _ulMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
ulOrderBy :: Lens' UsersList (Maybe Text)
ulOrderBy
  = lens _ulOrderBy (\ s a -> s{_ulOrderBy = a})

-- | Project ID for this request.
ulProject :: Lens' UsersList Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
ulFilter :: Lens' UsersList (Maybe Text)
ulFilter = lens _ulFilter (\ s a -> s{_ulFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ulPageToken :: Lens' UsersList (Maybe Text)
ulPageToken
  = lens _ulPageToken (\ s a -> s{_ulPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
ulMaxResults :: Lens' UsersList Word32
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})
      . _Coerce

instance GoogleRequest UsersList where
        type Rs UsersList = UserList
        requestClient UsersList{..}
          = go _ulProject _ulOrderBy _ulFilter _ulPageToken
              (Just _ulMaxResults)
              (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
