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
-- Retrieves the list of groups contained within the specified project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.list@.
module Network.Google.Resource.CloudUserAccounts.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glOrderBy
    , glProject
    , glFilter
    , glPageToken
    , glMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "groups" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] GroupList

-- | Retrieves the list of groups contained within the specified project.
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList = GroupsList
    { _glOrderBy    :: !(Maybe Text)
    , _glProject    :: !Text
    , _glFilter     :: !(Maybe Text)
    , _glPageToken  :: !(Maybe Text)
    , _glMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glOrderBy'
--
-- * 'glProject'
--
-- * 'glFilter'
--
-- * 'glPageToken'
--
-- * 'glMaxResults'
groupsList
    :: Text -- ^ 'glProject'
    -> GroupsList
groupsList pGlProject_ =
    GroupsList
    { _glOrderBy = Nothing
    , _glProject = pGlProject_
    , _glFilter = Nothing
    , _glPageToken = Nothing
    , _glMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
glOrderBy :: Lens' GroupsList (Maybe Text)
glOrderBy
  = lens _glOrderBy (\ s a -> s{_glOrderBy = a})

-- | Project ID for this request.
glProject :: Lens' GroupsList Text
glProject
  = lens _glProject (\ s a -> s{_glProject = a})

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
glFilter :: Lens' GroupsList (Maybe Text)
glFilter = lens _glFilter (\ s a -> s{_glFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
glPageToken :: Lens' GroupsList (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
glMaxResults :: Lens' GroupsList Word32
glMaxResults
  = lens _glMaxResults (\ s a -> s{_glMaxResults = a})
      . _Coerce

instance GoogleRequest GroupsList where
        type Rs GroupsList = GroupList
        requestClient GroupsList{..}
          = go _glProject _glOrderBy _glFilter _glPageToken
              (Just _glMaxResults)
              (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
