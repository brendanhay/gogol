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
-- Module      : Network.Google.Resource.CloudUserAccounts.Linux.GetLinuxAccountViews
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of user accounts for an instance within a specific
-- project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.linux.getLinuxAccountViews@.
module Network.Google.Resource.CloudUserAccounts.Linux.GetLinuxAccountViews
    (
    -- * REST Resource
      LinuxGetLinuxAccountViewsResource

    -- * Creating a Request
    , linuxGetLinuxAccountViews
    , LinuxGetLinuxAccountViews

    -- * Request Lenses
    , lglavOrderBy
    , lglavProject
    , lglavZone
    , lglavFilter
    , lglavPageToken
    , lglavMaxResults
    , lglavInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.linux.getLinuxAccountViews@ method which the
-- 'LinuxGetLinuxAccountViews' request conforms to.
type LinuxGetLinuxAccountViewsResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "linuxAccountViews" :>
                   QueryParam "instance" Text :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] LinuxGetLinuxAccountViewsResponse

-- | Retrieves a list of user accounts for an instance within a specific
-- project.
--
-- /See:/ 'linuxGetLinuxAccountViews' smart constructor.
data LinuxGetLinuxAccountViews = LinuxGetLinuxAccountViews
    { _lglavOrderBy    :: !(Maybe Text)
    , _lglavProject    :: !Text
    , _lglavZone       :: !Text
    , _lglavFilter     :: !(Maybe Text)
    , _lglavPageToken  :: !(Maybe Text)
    , _lglavMaxResults :: !(Textual Word32)
    , _lglavInstance   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetLinuxAccountViews' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lglavOrderBy'
--
-- * 'lglavProject'
--
-- * 'lglavZone'
--
-- * 'lglavFilter'
--
-- * 'lglavPageToken'
--
-- * 'lglavMaxResults'
--
-- * 'lglavInstance'
linuxGetLinuxAccountViews
    :: Text -- ^ 'lglavProject'
    -> Text -- ^ 'lglavZone'
    -> Text -- ^ 'lglavInstance'
    -> LinuxGetLinuxAccountViews
linuxGetLinuxAccountViews pLglavProject_ pLglavZone_ pLglavInstance_ =
    LinuxGetLinuxAccountViews
    { _lglavOrderBy = Nothing
    , _lglavProject = pLglavProject_
    , _lglavZone = pLglavZone_
    , _lglavFilter = Nothing
    , _lglavPageToken = Nothing
    , _lglavMaxResults = 500
    , _lglavInstance = pLglavInstance_
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
lglavOrderBy :: Lens' LinuxGetLinuxAccountViews (Maybe Text)
lglavOrderBy
  = lens _lglavOrderBy (\ s a -> s{_lglavOrderBy = a})

-- | Project ID for this request.
lglavProject :: Lens' LinuxGetLinuxAccountViews Text
lglavProject
  = lens _lglavProject (\ s a -> s{_lglavProject = a})

-- | Name of the zone for this request.
lglavZone :: Lens' LinuxGetLinuxAccountViews Text
lglavZone
  = lens _lglavZone (\ s a -> s{_lglavZone = a})

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
lglavFilter :: Lens' LinuxGetLinuxAccountViews (Maybe Text)
lglavFilter
  = lens _lglavFilter (\ s a -> s{_lglavFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
lglavPageToken :: Lens' LinuxGetLinuxAccountViews (Maybe Text)
lglavPageToken
  = lens _lglavPageToken
      (\ s a -> s{_lglavPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
lglavMaxResults :: Lens' LinuxGetLinuxAccountViews Word32
lglavMaxResults
  = lens _lglavMaxResults
      (\ s a -> s{_lglavMaxResults = a})
      . _Coerce

-- | The fully-qualified URL of the virtual machine requesting the views.
lglavInstance :: Lens' LinuxGetLinuxAccountViews Text
lglavInstance
  = lens _lglavInstance
      (\ s a -> s{_lglavInstance = a})

instance GoogleRequest LinuxGetLinuxAccountViews
         where
        type Rs LinuxGetLinuxAccountViews =
             LinuxGetLinuxAccountViewsResponse
        type Scopes LinuxGetLinuxAccountViews =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/cloud.useraccounts",
               "https://www.googleapis.com/auth/cloud.useraccounts.readonly"]
        requestClient LinuxGetLinuxAccountViews{..}
          = go _lglavProject _lglavZone (Just _lglavInstance)
              _lglavOrderBy
              _lglavFilter
              _lglavPageToken
              (Just _lglavMaxResults)
              (Just AltJSON)
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy LinuxGetLinuxAccountViewsResource)
                      mempty
