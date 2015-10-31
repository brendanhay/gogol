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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountUserProfiles.list@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.List
    (
    -- * REST Resource
      AccountUserProFilesListResource

    -- * Creating a Request
    , accountUserProFilesList
    , AccountUserProFilesList

    -- * Request Lenses
    , aupflUserRoleId
    , aupflSearchString
    , aupflIds
    , aupflProFileId
    , aupflSortOrder
    , aupflActive
    , aupflPageToken
    , aupflSortField
    , aupflSubAccountId
    , aupflMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.list@ method which the
-- 'AccountUserProFilesList' request conforms to.
type AccountUserProFilesListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               QueryParam "userRoleId" (Textual Int64) :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" (Textual Int64) :>
                     QueryParam "sortOrder"
                       AccountUserProFilesListSortOrder
                       :>
                       QueryParam "active" Bool :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             AccountUserProFilesListSortField
                             :>
                             QueryParam "subaccountId" (Textual Int64) :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] AccountUserProFilesListResponse

-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ 'accountUserProFilesList' smart constructor.
data AccountUserProFilesList = AccountUserProFilesList
    { _aupflUserRoleId   :: !(Maybe (Textual Int64))
    , _aupflSearchString :: !(Maybe Text)
    , _aupflIds          :: !(Maybe [Textual Int64])
    , _aupflProFileId    :: !(Textual Int64)
    , _aupflSortOrder    :: !(Maybe AccountUserProFilesListSortOrder)
    , _aupflActive       :: !(Maybe Bool)
    , _aupflPageToken    :: !(Maybe Text)
    , _aupflSortField    :: !(Maybe AccountUserProFilesListSortField)
    , _aupflSubAccountId :: !(Maybe (Textual Int64))
    , _aupflMaxResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupflUserRoleId'
--
-- * 'aupflSearchString'
--
-- * 'aupflIds'
--
-- * 'aupflProFileId'
--
-- * 'aupflSortOrder'
--
-- * 'aupflActive'
--
-- * 'aupflPageToken'
--
-- * 'aupflSortField'
--
-- * 'aupflSubAccountId'
--
-- * 'aupflMaxResults'
accountUserProFilesList
    :: Int64 -- ^ 'aupflProFileId'
    -> AccountUserProFilesList
accountUserProFilesList pAupflProFileId_ =
    AccountUserProFilesList
    { _aupflUserRoleId = Nothing
    , _aupflSearchString = Nothing
    , _aupflIds = Nothing
    , _aupflProFileId = _Coerce # pAupflProFileId_
    , _aupflSortOrder = Nothing
    , _aupflActive = Nothing
    , _aupflPageToken = Nothing
    , _aupflSortField = Nothing
    , _aupflSubAccountId = Nothing
    , _aupflMaxResults = Nothing
    }

-- | Select only user profiles with the specified user role ID.
aupflUserRoleId :: Lens' AccountUserProFilesList (Maybe Int64)
aupflUserRoleId
  = lens _aupflUserRoleId
      (\ s a -> s{_aupflUserRoleId = a})
      . mapping _Coerce

-- | Allows searching for objects by name, ID or email. Wildcards (*) are
-- allowed. For example, \"user profile*2015\" will return objects with
-- names like \"user profile June 2015\", \"user profile April 2015\", or
-- simply \"user profile 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"user profile\" will match objects with name \"my user
-- profile\", \"user profile 2015\", or simply \"user profile\".
aupflSearchString :: Lens' AccountUserProFilesList (Maybe Text)
aupflSearchString
  = lens _aupflSearchString
      (\ s a -> s{_aupflSearchString = a})

-- | Select only user profiles with these IDs.
aupflIds :: Lens' AccountUserProFilesList [Int64]
aupflIds
  = lens _aupflIds (\ s a -> s{_aupflIds = a}) .
      _Default
      . _Coerce

-- | User profile ID associated with this request.
aupflProFileId :: Lens' AccountUserProFilesList Int64
aupflProFileId
  = lens _aupflProFileId
      (\ s a -> s{_aupflProFileId = a})
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
aupflSortOrder :: Lens' AccountUserProFilesList (Maybe AccountUserProFilesListSortOrder)
aupflSortOrder
  = lens _aupflSortOrder
      (\ s a -> s{_aupflSortOrder = a})

-- | Select only active user profiles.
aupflActive :: Lens' AccountUserProFilesList (Maybe Bool)
aupflActive
  = lens _aupflActive (\ s a -> s{_aupflActive = a})

-- | Value of the nextPageToken from the previous result page.
aupflPageToken :: Lens' AccountUserProFilesList (Maybe Text)
aupflPageToken
  = lens _aupflPageToken
      (\ s a -> s{_aupflPageToken = a})

-- | Field by which to sort the list.
aupflSortField :: Lens' AccountUserProFilesList (Maybe AccountUserProFilesListSortField)
aupflSortField
  = lens _aupflSortField
      (\ s a -> s{_aupflSortField = a})

-- | Select only user profiles with the specified subaccount ID.
aupflSubAccountId :: Lens' AccountUserProFilesList (Maybe Int64)
aupflSubAccountId
  = lens _aupflSubAccountId
      (\ s a -> s{_aupflSubAccountId = a})
      . mapping _Coerce

-- | Maximum number of results to return.
aupflMaxResults :: Lens' AccountUserProFilesList (Maybe Int32)
aupflMaxResults
  = lens _aupflMaxResults
      (\ s a -> s{_aupflMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountUserProFilesList where
        type Rs AccountUserProFilesList =
             AccountUserProFilesListResponse
        type Scopes AccountUserProFilesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesList{..}
          = go _aupflProFileId _aupflUserRoleId
              _aupflSearchString
              (_aupflIds ^. _Default)
              _aupflSortOrder
              _aupflActive
              _aupflPageToken
              _aupflSortField
              _aupflSubAccountId
              _aupflMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesListResource)
                      mempty
