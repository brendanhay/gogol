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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of accounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.list@.
module Network.Google.Resource.DFAReporting.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList'
    , AccountsList'

    -- * Request Lenses
    , alSearchString
    , alIds
    , alProFileId
    , alSortOrder
    , alActive
    , alPageToken
    , alSortField
    , alMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.list@ method which the
-- 'AccountsList'' request conforms to.
type AccountsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" AccountsListSortOrder :>
                 QueryParam "active" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" AccountsListSortField :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountsListResponse

-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' = AccountsList'
    { _alSearchString :: !(Maybe Text)
    , _alIds          :: !(Maybe [Int64])
    , _alProFileId    :: !Int64
    , _alSortOrder    :: !(Maybe AccountsListSortOrder)
    , _alActive       :: !(Maybe Bool)
    , _alPageToken    :: !(Maybe Text)
    , _alSortField    :: !(Maybe AccountsListSortField)
    , _alMaxResults   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alSearchString'
--
-- * 'alIds'
--
-- * 'alProFileId'
--
-- * 'alSortOrder'
--
-- * 'alActive'
--
-- * 'alPageToken'
--
-- * 'alSortField'
--
-- * 'alMaxResults'
accountsList'
    :: Int64 -- ^ 'alProFileId'
    -> AccountsList'
accountsList' pAlProFileId_ =
    AccountsList'
    { _alSearchString = Nothing
    , _alIds = Nothing
    , _alProFileId = pAlProFileId_
    , _alSortOrder = Nothing
    , _alActive = Nothing
    , _alPageToken = Nothing
    , _alSortField = Nothing
    , _alMaxResults = Nothing
    }

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"account*2015\" will return objects with names like
-- \"account June 2015\", \"account April 2015\", or simply \"account
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"account\" will match objects with name \"my account\", \"account
-- 2015\", or simply \"account\".
alSearchString :: Lens' AccountsList' (Maybe Text)
alSearchString
  = lens _alSearchString
      (\ s a -> s{_alSearchString = a})

-- | Select only accounts with these IDs.
alIds :: Lens' AccountsList' [Int64]
alIds
  = lens _alIds (\ s a -> s{_alIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
alProFileId :: Lens' AccountsList' Int64
alProFileId
  = lens _alProFileId (\ s a -> s{_alProFileId = a})

-- | Order of sorted results, default is ASCENDING.
alSortOrder :: Lens' AccountsList' (Maybe AccountsListSortOrder)
alSortOrder
  = lens _alSortOrder (\ s a -> s{_alSortOrder = a})

-- | Select only active accounts. Don\'t set this field to select both active
-- and non-active accounts.
alActive :: Lens' AccountsList' (Maybe Bool)
alActive = lens _alActive (\ s a -> s{_alActive = a})

-- | Value of the nextPageToken from the previous result page.
alPageToken :: Lens' AccountsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Field by which to sort the list.
alSortField :: Lens' AccountsList' (Maybe AccountsListSortField)
alSortField
  = lens _alSortField (\ s a -> s{_alSortField = a})

-- | Maximum number of results to return.
alMaxResults :: Lens' AccountsList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = AccountsListResponse
        requestClient AccountsList'{..}
          = go _alProFileId _alSearchString
              (_alIds ^. _Default)
              _alSortOrder
              _alActive
              _alPageToken
              _alSortField
              _alMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
