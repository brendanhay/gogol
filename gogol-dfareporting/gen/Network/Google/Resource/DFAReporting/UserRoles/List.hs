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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of user roles, possibly filtered. This method supports
-- paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.list@.
module Network.Google.Resource.DFAReporting.UserRoles.List
    (
    -- * REST Resource
      UserRolesListResource

    -- * Creating a Request
    , userRolesList
    , UserRolesList

    -- * Request Lenses
    , urlSearchString
    , urlIds
    , urlProFileId
    , urlSortOrder
    , urlAccountUserRoleOnly
    , urlPageToken
    , urlSortField
    , urlSubAccountId
    , urlMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.list@ method which the
-- 'UserRolesList' request conforms to.
type UserRolesListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder" UserRolesListSortOrder :>
                     QueryParam "accountUserRoleOnly" Bool :>
                       QueryParam "pageToken" Text :>
                         QueryParam "sortField" UserRolesListSortField :>
                           QueryParam "subaccountId" (Textual Int64) :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] UserRolesListResponse

-- | Retrieves a list of user roles, possibly filtered. This method supports
-- paging.
--
-- /See:/ 'userRolesList' smart constructor.
data UserRolesList = UserRolesList'
    { _urlSearchString        :: !(Maybe Text)
    , _urlIds                 :: !(Maybe [Textual Int64])
    , _urlProFileId           :: !(Textual Int64)
    , _urlSortOrder           :: !UserRolesListSortOrder
    , _urlAccountUserRoleOnly :: !(Maybe Bool)
    , _urlPageToken           :: !(Maybe Text)
    , _urlSortField           :: !UserRolesListSortField
    , _urlSubAccountId        :: !(Maybe (Textual Int64))
    , _urlMaxResults          :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlSearchString'
--
-- * 'urlIds'
--
-- * 'urlProFileId'
--
-- * 'urlSortOrder'
--
-- * 'urlAccountUserRoleOnly'
--
-- * 'urlPageToken'
--
-- * 'urlSortField'
--
-- * 'urlSubAccountId'
--
-- * 'urlMaxResults'
userRolesList
    :: Int64 -- ^ 'urlProFileId'
    -> UserRolesList
userRolesList pUrlProFileId_ =
    UserRolesList'
    { _urlSearchString = Nothing
    , _urlIds = Nothing
    , _urlProFileId = _Coerce # pUrlProFileId_
    , _urlSortOrder = URLSOAscending
    , _urlAccountUserRoleOnly = Nothing
    , _urlPageToken = Nothing
    , _urlSortField = URLSFID
    , _urlSubAccountId = Nothing
    , _urlMaxResults = 1000
    }

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"userrole*2015\" will return objects with names like
-- \"userrole June 2015\", \"userrole April 2015\", or simply \"userrole
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"userrole\" will match objects with name \"my userrole\", \"userrole
-- 2015\", or simply \"userrole\".
urlSearchString :: Lens' UserRolesList (Maybe Text)
urlSearchString
  = lens _urlSearchString
      (\ s a -> s{_urlSearchString = a})

-- | Select only user roles with the specified IDs.
urlIds :: Lens' UserRolesList [Int64]
urlIds
  = lens _urlIds (\ s a -> s{_urlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
urlProFileId :: Lens' UserRolesList Int64
urlProFileId
  = lens _urlProFileId (\ s a -> s{_urlProFileId = a})
      . _Coerce

-- | Order of sorted results.
urlSortOrder :: Lens' UserRolesList UserRolesListSortOrder
urlSortOrder
  = lens _urlSortOrder (\ s a -> s{_urlSortOrder = a})

-- | Select only account level user roles not associated with any specific
-- subaccount.
urlAccountUserRoleOnly :: Lens' UserRolesList (Maybe Bool)
urlAccountUserRoleOnly
  = lens _urlAccountUserRoleOnly
      (\ s a -> s{_urlAccountUserRoleOnly = a})

-- | Value of the nextPageToken from the previous result page.
urlPageToken :: Lens' UserRolesList (Maybe Text)
urlPageToken
  = lens _urlPageToken (\ s a -> s{_urlPageToken = a})

-- | Field by which to sort the list.
urlSortField :: Lens' UserRolesList UserRolesListSortField
urlSortField
  = lens _urlSortField (\ s a -> s{_urlSortField = a})

-- | Select only user roles that belong to this subaccount.
urlSubAccountId :: Lens' UserRolesList (Maybe Int64)
urlSubAccountId
  = lens _urlSubAccountId
      (\ s a -> s{_urlSubAccountId = a})
      . mapping _Coerce

-- | Maximum number of results to return.
urlMaxResults :: Lens' UserRolesList Int32
urlMaxResults
  = lens _urlMaxResults
      (\ s a -> s{_urlMaxResults = a})
      . _Coerce

instance GoogleRequest UserRolesList where
        type Rs UserRolesList = UserRolesListResponse
        type Scopes UserRolesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesList'{..}
          = go _urlProFileId _urlSearchString
              (_urlIds ^. _Default)
              (Just _urlSortOrder)
              _urlAccountUserRoleOnly
              _urlPageToken
              (Just _urlSortField)
              _urlSubAccountId
              (Just _urlMaxResults)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy UserRolesListResource)
                      mempty
